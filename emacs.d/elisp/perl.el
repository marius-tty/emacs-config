;; Perl settings & tools
(eval-after-load "cperl-mode"
  '(progn
     (substitute-key-definition 'cperl-indent-command 'cperl-indent-line-or-region cperl-mode-map)
     (setq-default cperl-hairy nil) ; First thing to do so overrides work
     (setq-default cperl-indent-level 4)
     (setq-default cperl-break-one-line-blocks-when-indent nil)
     (setq-default cperl-clobber-lisp-bindings t)
     (setq-default cperl-close-paren-offset -4)
     (setq-default cperl-font-lock t)
     (setq-default cperl-electric-linefeed nil)
     (setq-default cperl-indent-parens-as-block t)
     (setq-default cperl-indent-wrt-brace nil)
     (setq-default cperl-lazy-help-time 2)
     (setq-default cperl-lineup-step 4)
     (setq-default cperl-under-as-char t)
     (setq-default cperl-electric-parens nil)
     (setq cperl-auto-newline nil)
     (setq-default perl-indent-level 4)))

(defalias 'perl-mode 'cperl-mode)

(defun perl-sub-list () "Display links to all sub's in a buffer."
  (interactive)
  (list-matching-lines "^[[:blank:]]*sub[[:blank:]]"))

(defun cperl-indent-line-or-region (&optional arg) "If a region is marked, indent region in CPerl mode, else indent current line as Perl code."
   (interactive "P")
   (if (and (not arg) mark-active)
       (cperl-indent-region (mark) (point))
     (cperl-indent-command arg)))

(provide 'perl)

