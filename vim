on run {input, parameters}

    set targetPath to POSIX path of input
    set theFolder to characters 1 thru -((offset of "/" in (reverse of items of targetPath as string)) + 1) of targetPath as string
    set cmd to "cd " & quote & theFolder & quote & " && /usr/bin/vim " & quote & targetPath & quote & "; exit"

    tell application "Terminal"
        do script cmd
        activate
    end tell

end run

