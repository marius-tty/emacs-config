;(set-default-font '"-adobe-courier-medium-r-normal--18-*-*-*-*-*-*-*")
;(set-default-font '"-unknown-Anonymous Pro-normal-normal-normal-*-18-*-*-*-m-0-iso10646-1")
(set-default-font '"-unknown-Inconsolata-normal-normal-normal-*-18-*-*-*-m-0-iso10646-1")

;; https://github.com/sellout/emacs-color-theme-solarized.git
(setq load-path
      (cons "/home/marius/git/emacs-color-theme-solarized/" load-path))
(require 'color-theme-solarized)
(color-theme-solarized-light)

(provide 'appearance)
