if exists("b:current_syntax")
    unlet b:current_syntax
endif
syn include @XML syntax/xml.vim
syn region XMLEmbedded matchgroup=XMLCommand
            \ start=+\\begin{verbatim}\n\+<?xml+rs=s+16
            \ skip=+\\$+
            \ end=+\\end{verbatim}+ contains=@XML
syn cluster texZone add=XMLEmbedded
hi def link XMLCommand texZone

func! TexXML(lnum)
    let name = tolower(synIDattr(synID(a:lnum, 1, 1), "name"))
    if  name =~ 'xml'
        return XmlIndentGet(a:lnum, 1)
    endif
    return -1
endfunc
runtime indent/xml.vim
set indentexpr=TexXML(v:lnum)
