;; uniquify
(require 'uniquify)
(setq uniquify-buffer-name-style 'reverse)

;; ido-mode
(ido-mode 1)
(remove-hook 'minibuffer-setup-hook 'viper-minibuffer-setup-sentinel)

;; end
(provide 'navigation)
