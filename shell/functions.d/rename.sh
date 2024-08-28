# shellcheck shell=bash

renameContents() {
#    while getopts 'iohr:' OPTION; do
#        case "$OPTION" in
#            i)
#                declare input="$OPTARG"
#                ;;
#            o)
#                declare output="$OPTARG"
#                ;;
#            r) declare recursive="true"
#                ;;
#            ?)
#                echo "script usage: renameContents -i somevalue -o somevalue [-r]" >&2
#                echo "Script takes a original name and resolution name and swaps that in files"
#                echo "-i STRING original text" >&2
#                echo "-o STRING replacement text" >&2
#                echo "-r BOOL replace recursively" >&2
#                ;;
#        ease
#    done
#    shift "$(($OPTIND -1))"
#


    # rename directories first
    #for d in ./*/; do
    #    mv -v "$d" "${d/Edition/Volume}"
    #done

    # now rename files
    #for f in ./*/*; do
    #    mv -v "$f" "${f/Edition/Volume}"
    #done
}
