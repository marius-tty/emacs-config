(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(auto-save-default nil)
 '(backup-by-copying nil)
 '(confirm-kill-emacs (quote yes-or-no-p))
 '(indent-tabs-mode nil)
 '(make-backup-files nil)
 '(menu-bar-mode nil)
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

(setq-default truncate-partial-width-windows nil)
(set-default-font '"-adobe-courier-medium-r-normal--18-*-*-*-*-*-*-*")

(which-function-mode t)
(defalias 'yes-or-no-p 'y-or-n-p)

;; Viper mode stuff
(setq viper-mode t)
(require 'viper)

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
(setq inhibit-startup-message t)

(require 'uniquify)
(setq uniquify-buffer-name-style 'reverse)

;; Always split vertically
;(setq-default split-height-threshold nil)
;(setq-default split-width-threshold 0)

(load-file "/home/marius/git/emacs-config/emacs.d/perl.el")
(load-file "/home/marius/git/emacs-config/emacs.d/misc.el")
(load-file "/home/marius/git/emacs-config/emacs.d/keymap.el")
(load-file "/home/marius/git/emacs-config/emacs.d/overrides.el")

(require 'linum)
(global-linum-mode 1)                       ; line numbers everywhere
