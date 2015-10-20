    " Extra vi-compatibility
    " set extra vi-compatible options
"= 20 Content
"== 20 Text Objects
    " When changing a line, don't redisplay
    " Instead put a '$' at the end during the change
        set cpoptions+=$
    " Don't start new lines w/ comment leader on pressing 'o'
        set formatoptions-=o
        " Already default so uncommenting for now
        " Somehow, during vim filetype detection, this gets set for vim files, 
        " So explicitly unset it again
            " au filetype vim set formatoptions-=o
"= 20 Abreviations
    " Not sure if functional, to uncomment for the time being
        " source $INDPATH/abbreviations/abbreviations_french.vim
"= 20 Dictionary
"== 20 Define dictionary.
"=== 60 System Tools
"==== 60 LanguageTool
    " For getting languagetool going
        let
            \ g:languagetool_jar='$HOME/20_Content/1_Language/LanguageTool-3.0/languagetool-commandline.jar'
"==== 60 NeoComplete
        " let g:neocomplete#sources#dictionary#dictionaries = {
        " Uncommented out two lines below for debugging
            " \ 'default' : '',
            " \ 'vimshell' : $HOME. '/.vimshell/int-history',
            "\ 'scheme' : $HOME. '/.gosh_completions', "TODO Work out gosh
            " \}
    " Define keyword
    if !exists('g:neocomplete#keyword_patterns')
        let g:neocomplete#keyword_patterns = {}
    endif
        let g:neocomplete#keyword_patterns['default'] = '\h\w*'
"== 40 Movement
"=== 40 Transfer
"==== 60 System
"====== 60 Hosts
    "Commented out for debugging
            " let g:dict_hosts = {
            "       \[["dict.org", []]
            "       \["dict.mova.org", []]]
            "   \}
            set dictionary=/usr/share/dict/words
