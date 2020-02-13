if executable('pandoc')
    if executable('pdflatex')
        set makeprg=pandoc\ %\ -o\ %:r.pdf
    elseif executable('pdfroff')
        set makeprg=pandoc\ %\ -t\ ms\ -o\ %:r.pdf
    endif
endif
