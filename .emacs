(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(auto-save-default nil)
 '(backup-by-copying nil)
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
 '(indent-tabs-mode nil)
 '(make-backup-files nil)
 '(menu-bar-mode nil)
 '(perl-indent-level 4)
 '(ps-font-size (quote (10 . 10)))
 '(ps-header-font-size (quote (8 . 10)))
 '(ps-header-title-font-size (quote (10 . 12)))
 '(ps-left-footer (quote (ps-get-buffer-name)))
 '(ps-line-number t)
 '(ps-line-number-start 1)
 '(ps-line-number-step 1)
 '(ps-lpr-command "xpp")
 '(ps-print-header-frame nil)
 '(scroll-bar-mode nil)
 '(tab-width 8)
 '(tool-bar-mode nil)
 '(transient-mark-mode t)
 )
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
(defalias 'yes-or-no-p 'y-or-n-p)

;; Viper mode stuff
(setq viper-mode t)
(require 'viper)

(defalias 'perl-mode 'cperl-mode)
(setq compilation-scroll-output t)
(require 'inf-haskell)

;; js2-mode
;;(load-file ".emacs.d/js2-20090723b.el")
(autoload 'js2-mode "js2" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

;; remember mode
(org-remember-insinuate)
(setq org-directory "~/orgfiles/")
(setq org-default-notes-file (concat org-directory "/notes.org"))

;; yasnippet
(require 'yasnippet)

(setq next-error-highlight 5)

(defun next-error-select () "Visit next 'next-error' message and corresponding source code. + highlight the line"
  (interactive)
  (next-error-no-select)
  (hl-line-mode t)
  (other-window 1)
  )

(defun previous-error-select () "Visit previous 'next-error' message and corresponding source code. + highlight the line"
  (interactive)
  (previous-error-no-select)
  (hl-line-mode t)
  (other-window 1)
  )

(put 'upcase-region 'disabled nil)

(defun load-nvb ()
  "Load the nvb environment"
  (interactive)
  (load-file "/home/marius/git/emacs-config/emacs.d/nvb.el")
  )

(defun load-twh ()
  "Load the twh environment"
  (interactive)
  (load-file "/home/marius/git/twh/setup/devenv/marius/twh.el")
  )

(setq load-path
      (cons "/home/marius/git/tt-mode/" load-path))
(autoload 'tt-mode "tt-mode")
(setq auto-mode-alist
      (append '(("\\.tt$" . tt-mode))  auto-mode-alist ))

(put 'narrow-to-region 'disabled nil)

(require 'uniquify)
(setq uniquify-buffer-name-style 'reverse)

(load-file "/home/marius/git/emacs-config/emacs.d/misc.el")
(load-file "/home/marius/git/emacs-config/emacs.d/keymap.el")

