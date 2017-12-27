#!/bin/sh

# Fuzzy start $EDITOR

feditor() {
	local file=$(
		fzf \
			--reverse \
			--ansi \
			--preview ' \
				cat {}
			'
	)

	if [[ $file ]]; then
		# Save command in history as sometimes I want
		# to easily re-edit some files
		history -s ${EDITOR:-nvim} $file
		${EDITOR:-nvim} $file
	fi
}

# Directory movement

find-dirs() {
	find ${1:-.} \
		-type d \
		-not -path "*/node_modules/*" \
		-not -path "*/_deps/*" \
		-not -path "*/.nuxt/*" \
		2> /dev/null
}

fuzzy-dir() {
	find-dirs | \
	fzf +m \
		--reverse \
  	--ansi \
  	--preview ' \
			find {} -type f -printf "%f\n" -maxdepth 1
		'
}

fd() {
	cd $(fuzzy-dir)
}

# Process Kill

fkill() {
  local pid
  pid=$(ps -ef | sed 1d | fzf -m | awk '{print $2}')

  if [ "x$pid" != "x" ]
  then
    echo $pid | xargs kill -${1:-9}
  fi
}

# Git Checkout Branch

git-fcheckout() {
  local tags branches target
  tags=$(
    git tag | awk '{print "\x1b[31;1mtag\x1b[m\t" $1}') || return
  branches=$(
    git branch --all | grep -v HEAD             |
    sed "s/.* //"    | sed "s#remotes/[^/]*/##" |
    sort -u          | awk '{print "\x1b[34;1mbranch\x1b[m\t" $1}') || return
  target=$(
    (echo "$tags"; echo "$branches") |
    fzf-tmux -- --no-hscroll --ansi +m -d "\t" -n 2) || return
  git checkout $(echo "$target" | awk '{print $2}')
}

# Git Commit SHA

git-fsha() {
  local commits commit
  commits=$(git log --color=always --pretty=oneline --abbrev-commit --reverse) &&
  commit=$(echo "$commits" | fzf --tac +s +m -e --ansi --reverse) &&
  echo -n $(echo "$commit" | sed "s/ .*//")
}

# Attach or create tmux session

ftmux() {
  [[ -n "$TMUX" ]] && change="switch-client" || change="attach-session"
  if [ $1 ]; then
    tmux $change -t "$1" 2>/dev/null || (tmux new-session -d -s $1 && tmux $change -t "$1"); return
  fi
  session=$(tmux list-sessions -F "#{session_name}" 2>/dev/null | fzf --exit-0) &&  tmux $change -t "$session" || echo "No sessions found."
}

# pacman and yaourt

fpac() {
	local pack=$(
		pacman -Ssq | \
		fzf +m \
			--reverse \
  		--ansi \
  		--preview ' \
				pacman -Si {} --color always
			'
	)

	if [[ $pack ]]; then
		sudo pacman -S $pack
	fi
}

faur() {
	local pack=$(
		yaourt -Ssq | \
		fzf +m \
			--reverse \
  		--ansi \
  		--preview ' \
				yaourt -Si {} --color
			'
	)

	if [[ $pack ]]; then
		yaourt -S $pack
	fi
}

ffonts() {
	fc-list \
		: family \
	| \
	fzf +m \
		--reverse \
		--ansi
}
