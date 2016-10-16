function nvimOrLs {
    folder=$1
    sufix=$2
    possible_file=$folder/$3$sufix

    if [ -e $possible_file ]
    then
	nvim $possible_file
    else
	echo "File not found. Listing possible files:"
	ls $folder
    fi
}

