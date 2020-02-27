if executable('pandoc')
    if executable('pdflatex')
        setlocal makeprg=pandoc\ %\ -o\ %:r.pdf
    elseif executable('pdfroff')
        setlocal makeprg=pandoc\ %\ -t\ ms\ -o\ %:r.pdf
    endif
endif
