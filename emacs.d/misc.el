;; helper functions
(defun revert-all-buffers () "Replace text of all open buffers with the text of the corresponding visited file on disk."
  (interactive)
  (when (y-or-n-p "Revert all buffers? ")
    (let* ((list (buffer-list)) (buffer (car list)))
      (while buffer
        (when (and (buffer-file-name buffer)
                   (file-exists-p (buffer-file-name buffer)))
          (set-buffer buffer)
          (revert-buffer t t t)
        )
        (setq list (cdr list))
        (setq buffer (car list))
      )
    )
  )
)

