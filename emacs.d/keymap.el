;; Key mappings

;; Navigation
(define-key viper-vi-intercept-map "e" 'next-error-select)
(define-key viper-vi-intercept-map "E" 'previous-error-select)

;; viper
(global-set-key "\C-q"  'viper-intercept-ESC-key)
(global-set-key (kbd "<f12>") 'toggle-viper-mode)

;; Perl stuff
(global-set-key "\C-c\C-l" 'perl-sub-list)

;; TWH keybindings
(global-set-key "\C-cv" 'twh-extract-method)
(global-set-key "\C-cg" 'twh-grep)
(global-set-key "\C-c\S-g" 'twh-igrep)
(global-set-key "\C-c\C-c" 'twh-compile)
(global-set-key "\C-c\C-r" 'twh-restart)
(global-set-key "\C-c\C-b" 'twh-rebuild-js-and-css)
(global-set-key "\C-c\C-s" 'twh-tidy-and-statler)

; other
(define-key global-map "\C-cr" 'org-remember)

;; git stuff
(global-set-key "\C-cv" 'magit-status)

