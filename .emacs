(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(indent-tabs-mode nil)
 '(confirm-kill-emacs (quote yes-or-no-p))
 '(cperl-break-one-line-blocks-when-indent nil)
 '(cperl-clobber-lisp-bindings t)
 '(cperl-close-paren-offset -4)
 '(cperl-electric-linefeed t)
 '(cperl-font-lock t)
 '(cperl-hairy nil)
 '(cperl-indent-level 4)
 '(cperl-indent-parens-as-block t)
 '(cperl-indent-wrt-brace nil)
 '(cperl-lazy-help-time 2)
 '(cperl-lineup-step 4)
 '(cperl-under-as-char t)
 '(perl-indent-level 4)
 '(ps-font-size (quote (10 . 10)))
 '(ps-header-font-size (quote (8 . 10)))
 '(ps-header-title-font-size (quote (10 . 12)))
 '(ps-left-footer (quote (ps-get-buffer-name)))
 '(ps-left-header (quote (ps-get-buffer-name)))
 '(ps-line-number t)
 '(ps-line-number-start 1)
 '(ps-line-number-step 1)
 '(ps-paper-type (quote a4))
 '(ps-print-header-frame nil)
 '(ps-lpr-command "kprinter")
 '(tab-width 8)
 '(tool-bar-mode nil)
 '(transient-mark-mode t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(diff-added ((t (:inherit diff-changed :foreground "darkgreen"))))
 '(diff-changed ((nil (:foreground "darkblue"))))
 '(diff-indicator-added ((t (:inherit diff-added :foreground "darkgreen"))))
 '(diff-indicator-changed ((t (:inherit diff-changed :foreground "blue"))))
 '(diff-indicator-removed ((t (:inherit diff-removed :foreground "darkred"))))
 '(diff-removed ((t (:inherit diff-changed :foreground "darkred")))))
(setq-default truncate-partial-width-windows nil)
(set-default-font '"-adobe-courier-medium-r-normal--18-*-*-*-*-*-*-*")

(which-function-mode t)

(global-set-key "\C-l" 'compile)
(global-set-key "\C-q"  'viper-intercept-ESC-key)
(global-set-key [C-S-l] 'recompile)
(global-set-key [C-S-e] 'next-error)
;; Viper mode stuff
(setq viper-mode t)
(require 'viper)
(define-key viper-vi-intercept-map "e" 'next-error)

(defalias 'perl-mode 'cperl-mode)
(require 'inf-haskell)
(load-file ".emacs.d/nvb.el")
