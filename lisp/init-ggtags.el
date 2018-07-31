(maybe-require-package 'ggtags)

(setenv "GTAGSCONF" "/usr/local/share/gtags/gtags.conf")
(setenv "GTAGSLABEL" "pygments")

(add-hook 'c-mode-common-hook
          (lambda ()
            (when (derived-mode-p 'c-mode 'c++-mode 'java-mode)
              (ggtags-mode 1))))

(provide 'init-ggtags)
