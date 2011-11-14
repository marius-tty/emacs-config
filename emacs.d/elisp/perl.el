;; Perl settings & tools

(setq-default cperl-indent-level 4)
(setq-default cperl-break-one-line-blocks-when-indent nil)
(setq-default cperl-clobber-lisp-bindings t)
(setq-default cperl-close-paren-offset -4)
(setq-default cperl-electric-linefeed t)
(setq-default cperl-font-lock t)
(setq-default cperl-hairy nil)
(setq-default cperl-indent-parens-as-block t)
(setq-default cperl-indent-wrt-brace nil)
(setq-default cperl-lazy-help-time 2)
(setq-default cperl-lineup-step 4)
(setq-default cperl-under-as-char t)
(setq-default cperl-electric-parens nil)
(setq cperl-auto-newline nil)

(setq-default perl-indent-level 4)

(defalias 'perl-mode 'cperl-mode)

(defun perl-sub-list () "Display links to all sub's in a buffer."
  (interactive)
  (list-matching-lines "^[[:blank:]]*sub[[:blank:]]")
)

(provide 'perl)

