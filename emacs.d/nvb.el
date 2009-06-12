(message "Loading nvb utilities...")
(defun nvb-base () 
  "/home/marius/git/nvb")

(defun project-file-switch-file (relfilename)
  (let* ((is-test (string-match "^Lib/Test/" relfilename))
         (is-template (string-match "^Templates/Controller/URI/" relfilename))
         (is-controller (string-match "^Lib/NVB/Controller/URI/" relfilename))
         (is-module (string-match "^Lib/" relfilename))
         )
    (cond
     (is-test
      (concat "Lib/" (substring relfilename (length "Lib/Test/"))))
     (is-controller
      (let ((f (substring relfilename (length "Lib/NVB/Controller/URI/")))
            (case-fold-search nil)
            )
        (while (string-match "\\(\\w\\)\\([A-Z]\\)" f)
          (setq f (replace-match "\\1-\\2" t nil f)))
        (concat "Templates/Controller/URI/" (substring (downcase f) 0 -2) "tt")
        ))
     (is-template
      (let ((f (substring relfilename (length "Templates/Controller/URI/")))
            (case-fold-search nil)
            )
        (while (string-match "\\(\\w\\)-\\(\\w\\)" f)
          (setq f (replace-match (concat "\\1" (upcase (match-string 2 f))) t nil f)))
        (while (string-match "\\(/\\|^\\)\\([a-z]\\)" f)
          (setq f (replace-match (concat "\\1" (upcase (match-string 2 f))) t nil f)))
        
        (concat "Lib/NVB/Controller/URI/" (substring f 0 -2) "pm")
        ))
     (is-module
      (concat "Lib/Test/" (substring relfilename (length "Lib/")))))
     )
    )

(assert (equal (project-file-switch-file "Lib/Test/foo") "Lib/foo"))
(assert (equal (project-file-switch-file "Lib/Foo/bar") "Lib/Test/Foo/bar"))
(assert (equal (project-file-switch-file "Lib/NVB/Controller/URI/Foo/bar.pm") "Templates/Controller/URI/foo/bar.tt"))
(assert (equal (project-file-switch-file "Lib/NVB/Controller/URI/FooBar.pm") "Templates/Controller/URI/foo-bar.tt"))
(assert (equal (project-file-switch-file "Templates/Controller/URI/foo-bar.tt") "Lib/NVB/Controller/URI/FooBar.pm"))

(defun project-switch-file-with-test () "Switch perl module with its test or visa versa"
  (interactive "")
  (let* ((relfilename (substring (buffer-file-name) (1+ (length (nvb-base))) ))
         (switched-filename (project-file-switch-file relfilename)))
    (find-file (concat (nvb-base) "/" switched-filename))
    ))

(defun project-grep (s) "Grep int project."
  (interactive "s")
  (grep (concat "cd " (nvb-base) " && . ./export_env && ./grep-nvb '" s "'" )))

(defun project-test () "Test project."
  (interactive "")
  (compile (concat "cd " (nvb-base) " && . ./export_env && prove -v lib-nvb-*.t")))

;; autoload mason.
; (add-to-list 'auto-mode-alist '( (concat "\\`" (nvb-base) "/Www/") . html-mode))
; (mmm-add-mode-ext-class 'html-mode nil 'mason)

(global-set-key "\C-cg" 'project-grep)
(global-set-key "\C-ct" 'project-test)
(global-set-key "\C-cw" 'project-switch-file-with-test)
