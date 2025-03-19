let s:comment_map = { 
    \   "c": '\/\/',
    \   "cpp": '\/\/',
    \   "go": '\/\/',
    \   "java": '\/\/',
    \   "javascript": '\/\/',
    \   "lua": '--',
    \   "scala": '\/\/',
    \   "php": '\/\/',
    \   "python": '#',
    \   "ruby": '#',
    \   "hcl": '#',
    \   "terraform": '#',
    \   "rust": '\/\/',
    \   "sh": '#',
    \   "desktop": '#',
    \   "fstab": '#',
    \   "conf": '#',
    \   "profile": '#',
    \   "bashrc": '#',
    \   "bash_profile": '#',
    \   "lilypond": '%',
    \   "mail": '>',
    \   "eml": '>',
    \   "bat": 'REM',
    \   "ahk": ';',
    \   "vim": '"',
    \   "tex": '%',
    \   "sql": '--',
    \   "icinga2": '\/\/',
    \   "yaml": '#',
    \   "zig": '\/\/',
    \ }

function ToggleComment( multiline )
  if has_key(s:comment_map, &filetype)
    let l:com_char = s:comment_map[&filetype]
    if a:multiline == 1
      " get list of line numbers
      let l:line_lb = line("'<")
      let l:line_ub = line("'>")
      
      " get number of whitespace characters (which are true over whole block)
      let l:ws_num = 100000
      let l:idx = l:line_lb - 1
      while l:idx < (l:line_ub)
        let l:idx += 1
        let l:ws_num = min([ l:ws_num, len(matchstr(getline(l:idx),"^\\s*")) ])
      endwhile
      
      " check if the whole block is currently commented out
      let l:has_comment = 1
      let l:idx = l:line_lb - 1
      while l:idx < (l:line_ub)
        let l:idx += 1
        let l:has_comment = l:has_comment && (match(
          \   getline(l:idx),
          \   "^\\s\\{" . l:ws_num . "\\}" . l:com_char . "\\s\\?"
          \ )>-1)
      endwhile
      
      if l:has_comment == 1
        " remove comments from all lines
        let l:regex = "s/^\\(\\s*\\)" . l:com_char . " \\?/\\1/"
      else
        " add comment to all lines
        let l:regex = "s/^\\(\\s\\{" . l:ws_num . "\\}\\)/\\1" . l:com_char . " /" 
      endif

      run regex
      let l:idx = l:line_lb - 1
      while l:idx < (l:line_ub)
        let l:idx += 1
        execute "silent :" . l:idx . l:regex
      endwhile
    
    else
      let l:line = line(".")
      " apply appropriate replacements for the singular line:
      if getline(l:line) =~ "^\\s*" . l:com_char . "\\s\\?"
        execute "silent " . l:line . "s/^\\(\\s*\\)" . l:com_char . "\\s\\?/\\1/"
      else
        execute "silent " . l:line . "s/^\\(\\s*\\)/\\1" . l:com_char ." /"
      endif
    endif
  else
    echo "No comment leader found for filetype"
  endif
endfunction

