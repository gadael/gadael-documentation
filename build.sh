#!/bin/bash


# Create a link in markdown to a file in same folder
# $1 - link label
# $2 - full path to file
mdlink()
{
    filename=$(basename "$2")
    file="${filename%.*}.html"
    echo "* [${1}](${file})"
}

# add new line
# $1 - all lines string
# $2 - the line to add
embed_newline()
{
   local p="$1"
   shift
   for i in "$@"
   do
      p="$p\r\n$i"         # Append
   done
   echo -e "$p"          # Use -e
}

# Build one index file
# $1 - language code
# $2 - path to index
buildIndex()
{
    mdlinks=""
    for file in docs/"${1}"/*
    do
        if [[ -f $file ]]
        then
            label=$(head -n 1 "${file}" | grep title | cut -d ':' -f 2)
            label=${label%% }
            label=${label%%\"}
            label=${label## }
            label=${label##\"}

            if [[ $label ]]
            then
                newlink=$(mdlink "${label}" "$file")
                mdlinks=$(embed_newline "${mdlinks}" "${newlink}")
            fi
        fi
    done

    echo "title: Documentation"
    echo "layout: docindex"
    echo ""
    echo "---"
    echo ""
    echo "$mdlinks"
}


# build screenshots in gadael project and copy to documentation
# $1 - language code
getScreenshots()
{
    cd ../gadael || exit
    node doc/create_screenshots/build.js ${1}
    cd ../gadael-documentation || exit
    cp ../gadael/doc/screenshots/${1}/* docs/${1}/images/
}

# Process one language
# $1 - language code
buildLanguage()
{
    buildIndex ${1} > "docs/${1}/index.md"
    getScreenshots ${1}
}


for ldir in docs/*
do
    if [[ -d ${ldir} ]]
    then
        ldir=$(basename "${ldir}")
        buildLanguage ${ldir}
    fi
done
