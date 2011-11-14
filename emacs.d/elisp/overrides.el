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

(provide 'overrides)
