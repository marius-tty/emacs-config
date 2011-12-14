(set-default-font '"-unknown-Inconsolata-normal-normal-normal-*-18-*-*-*-m-0-iso10646-1")

;; https://github.com/sellout/emacs-color-theme-solarized.git
(setq load-path
      (cons "/home/marius/git/emacs-color-theme-solarized/" load-path))
(require 'color-theme-solarized)
(color-theme-solarized-light)

(require 'linum)
;(global-linum-mode 1)                       ; line numbers everywhere
(global-linum-mode 0)                       ; line numbers everywhere

(provide 'appearance)
