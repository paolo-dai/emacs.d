(require 'init-frame-hooks)

(global-set-key [mouse-4] (lambda () (interactive) (scroll-down 1)))
(global-set-key [mouse-5] (lambda () (interactive) (scroll-up 1)))

(autoload 'mwheel-install "mwheel")

(defun sanityinc/console-frame-setup ()
  (xterm-mouse-mode 1) ; Mouse in a terminal (Use shift to paste with middle button)
  (mwheel-install))



(add-hook 'after-make-console-frame-hooks 'sanityinc/console-frame-setup)

;;----------------------------------------------------------------------------
;; disable-touchpad
;;----------------------------------------------------------------------------
(defun disable-touchpad (&optional frame)
  "disable touchpad."
  (interactive)
  (shell-command "xinput --disable \"SynPS/2 Synaptics TouchPad\""))

(defun enable-touchpad (&optional frame)
  "enable touchpad."
  (interactive)
  (shell-command "xinput --enable \"SynPS/2 Synaptics TouchPad\""))

(add-hook 'focus-in-hook #'disable-touchpad)
(add-hook 'focus-out-hook #'enable-touchpad)
(add-hook 'delete-frame-functions #'enable-touchpad)

(provide 'init-xterm)
