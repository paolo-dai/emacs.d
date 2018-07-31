(when (maybe-require-package 'markdown-mode)
  (add-auto-mode 'markdown-mode "\\.md\\.html\\'")
  (after-load 'whitespace-cleanup-mode
    (push 'markdown-mode whitespace-cleanup-mode-ignore-modes)))

(setq markdown-command
      (concat
       "/home/paolo/anaconda3/bin/pandoc"
       " --from=markdown --to=html"
                                        ;" --standalone --css=/home/paolo/.emacs.d/markdown-css/github-pandoc.css --self-contained --mathjax=/home/paolo/.emacs.d/markdown-css/MathJax.js?config=TeX-AMS_CHTML-full --highlight-style=pygments"
       " --standalone --css=/home/paolo/.emacs.d/markdown-css/github-pandoc.css --self-contained --webtex --highlight-style=pygments"
       ))

(provide 'init-markdown)
