function nvimOrLs {
	folder=$1
	sufix=$2
	possible_file=$folder/$3$sufix
	force=$4

	if [ -e $possible_file ] || [ $force == '-f' ]
	then
		nvim $possible_file
	else
		echo "File not found. Listing possible files:"
		ls $folder
	fi
}
