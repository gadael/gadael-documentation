#!/bin/bash



mdlink()
{
    echo "[${1}](${2})"
}


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


buildIndex()
{
    mdlinks=""
    for file in docs/"${1}"/*
    do
        if [[ -f $file ]]
        then
            label=$(head -n 1 "${file}" | grep title | cut -d ':' -f 2)
            if [[ $label ]]
            then
                newlink=$(mdlink "${label}" "$file")
                mdlinks=$(embed_newline "${mdlinks}" "${newlink}")
            fi
        fi
    done

    echo "title: Documentation"
    echo "layout: doc"
    echo ""
    echo "---"
    echo ""
    echo $mdlinks
}


buildIndex 'fr' > docs/fr/index.md
