;; uniquify
(require 'uniquify)
(setq uniquify-buffer-name-style 'reverse)

;; ido-mode
(ido-mode 1)
(remove-hook 'minibuffer-setup-hook 'viper-minibuffer-setup-sentinel)

;; Use alt-arrows to navigate between windows (alternative to C-x o)
(windmove-default-keybindings 'meta)

;; end
(provide 'navigation)
