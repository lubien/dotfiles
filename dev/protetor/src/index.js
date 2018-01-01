import path from 'path'
import views from 'koa-views'
import serve from 'koa-static';
import Koa from 'koa'
import mysql from 'mysql2/promise'

const production = process.env.NODE_ENV === 'production'

require('dotenv').config({
  silent: production
})

const {env} = process

const dbConfig = {
  host: env.DB_HOST,
  user: env.DB_USER,
  password: env.DB_PASS,
  database: env.DB_NAME
}

const app = new Koa()

app.use(serve(production ? path.join(__dirname, '../src/static') : './src/static'))
app.use(views(path.join(__dirname, '/views'), { extension: 'ejs' }))

const urlMatcher = /^\/link\/(.*)/

app.use(async function handler(ctx) {
  const match = urlMatcher.exec(ctx.path)

  ctx.assert(match, 404)

  const [, encoded] = match
  const data = Buffer.from(encoded, 'base64').toString("ascii") // 'episode/quality/index'

  const separatedData = data.split('/') // ['episode', 'quality', 'index']

  ctx.assert(separatedData.length === 4, 400)

  const [episodeIdStr, quality, indexStr] = separatedData
  const episodeId = +episodeIdStr
  const index = +indexStr;

  ctx.assert(['mp4', '720p', '1080p'].includes(quality), 400)

  const [[episode]] = await ctx.db.query(
    'SELECT * FROM `wp_posts` WHERE `post_type` = "episodio" AND `id` = ?',
    [episodeId]
  )

  ctx.assert(episode, 404)

  const [metaArray] = await ctx.db.query(
    'SELECT * FROM `wp_postmeta` WHERE `post_id` = ?',
    [episodeId]
  )

  ctx.assert(metaArray, 500)

  const meta = metaArray
    .reduce((acc, row) => {
      acc[row.meta_key] = row.meta_value
      return acc
    }, {})

  const category = meta['wpcf-tipo-epi']

  ctx.assert(category, 500)

  const relationShipKey = category === 'Filme'
    ? '_wpfc_belongs_filmes_id'
    : '_wpcf_belongs_animes_id'

  const belongsToId = meta[relationShipKey]

  const [[thumbnailRow]] = await ctx.db.query(
    `
    SELECT    p.guid
    FROM      wp_postmeta   m
    LEFT JOIN wp_posts      p
    ON        m.meta_value = p.id
    WHERE     m.meta_key = "_thumbnail_id"
    AND       m.post_id= ?
    `,
    [belongsToId]
  )

  const thumbnail = thumbnailRow && thumbnailRow['guid']

  const linksMeta = meta[`wpcf-${quality}-links`]
  ctx.assert(linksMeta, 404)

  const links = linksMeta
    .split('http')
    .map(link => 'http' + link)

  ctx.assert(links[index], 404)

  const link = links[index]

  await ctx.render('app', {episode, thumbnail, link})
})

async function main() {
  const db = await mysql.createConnection(dbConfig)
    .catch((err) => {
      console.log('Failed to connect to database')
      console.log(err.message);
      process.exit(1)
    })

  app.context.db = db

  app.listen(env.PORT || 0, '0.0.0.0', () => {
    console.log('Started server')
  })
}

main()
