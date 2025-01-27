# shellcheck shell=bash

_renameFoldersHelp() {
    echo "script usage: renameContents -i somevalue -o somevalue [-r]" >&2
    echo "Script takes a original name and resolution name and swaps that in files"
    echo "  Required: -i STRING original text" >&2
    echo "  Required: -o STRING replacement text" >&2
    echo "  Optional: -d replace directories as well" >&2
    echo "  Optional: --depth INTEGER depth to recurse, default recurses all" >&2
    echo "  Optional: -e execute, default is dry run" >&2
}

_printReplaceResults() {
    input=$1
    output=$2
    directoryReplace=$3
    depth=$4

    # Find all files to replace, if depth is positive, use that, otherwise recurse all
    if (( depth > 0 )); then
        /usr/bin/find . -type f -name "*$input*" -maxdepth $depth -execdir echo rename -v "s/$input/$output/g" {} \;
    else
        /usr/bin/find . -type f -name "*$input*" -execdir echo rename -v "s/$input/$output/g" {} \;
    fi

    if $directoryReplace; then
        if (( depth > 0 )); then
            /usr/bin/find . -type d -name "*$input*" -maxdepth $depth -execdir echo rename -v "s/$input/$output/g" {} \;
        else
            /usr/bin/find . -type d -name "*$input*" -execdir echo rename -v "s/$input/$output/g" {} \;
        fi
    fi
}

_replaceResults() {
    input=$1
    output=$2
    directoryReplace=$3
    depth=$4

    # Find all files to replace, if depth is positive, use that, otherwise recurse all
    if (( depth > 0 )); then
        /usr/bin/find . -type f -name "*$input*" -maxdepth $depth -execdir rename -v "s/$input/$output/g" {} \;
    else
        /usr/bin/find . -type f -name "*$input*" -execdir rename -v "s/$input/$output/g" {} \;
    fi

    if $directoryReplace; then
        if (( depth > 0 )); then
            /usr/bin/find . -type d -name "*$input*" -maxdepth $depth -execdir rename -v "s/$input/$output/g" {} \;
        else
            /usr/bin/find . -type d -name "*$input*" -execdir rename -v "s/$input/$output/g" {} \;
        fi
    fi
}

_rename() {
    # Iterate over input arguments and process them
    local input
    local output
    local directoryReplace=false
    local execute=false
    local depth=-1

    # Read the options and set stuff
    while [[ $# -gt 0 ]]; do
        case "$1" in
            -i)
                shift
                input="$1"
                ;;
            -o)
                shift
                output="$1"
                ;;
            -d)
                directoryReplace=true
                ;;
            --depth)
                shift
                depth="$1"
                ;;
            -e)
                execute=true
                ;;
            *)
                echo "Unknown option: $1" >&2
                _renameFoldersHelp
                return 1
                ;;
        esac
        shift
    done


    # if no input or output were passed, print help
    # print help if no arguments were passed
    if [ -z "$input" ] || [ -z "$output" ]; then
        _renameFoldersHelp
        return
    fi

    #if not execute, just print the input and output
    if ! $execute; then
        echo "input: $input"
        echo "output: $output"
        echo "directoryReplace: $directoryReplace"
        echo "depth: $depth"
        echo "execute: $execute"
        _printReplaceResults "$input" "$output" "$directoryReplace" "$depth"
    fi

    if $execute; then
        echo "input: $input"
        echo "output: $output"
        echo "directoryReplace: $directoryReplace"
        echo "depth: $depth"
        _printReplaceResults "$input" "$output" "$directoryReplace" "$depth"
        _replaceResults "$input" "$output" "$directoryReplace" "$depth"
    fi
}
