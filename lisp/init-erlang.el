(when (maybe-require-package 'erlang)
  (require 'erlang-start))

(add-hook 'erlang-mode-hook
          (lambda ()
            (when (derived-mode-p 'erlang-mode)
              (ggtags-mode 1))))

(provide 'init-erlang)
