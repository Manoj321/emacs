(let ((default-directory  "~/.emacs.d/"))
  (normal-top-level-add-to-load-path '("org-journal"
				       "workgroups.el"
				       "Fill-Column-Indicator")
				     )
  )

(require 'org)
;; Program to generate pdf files
(setq latex-run-command "pdflatex")

;;syntax highlight code blocks
(setq org-src-fontify-natively t)

; Some langauges we want org-babel to support
(org-babel-do-load-languages
 'org-babel-load-languages
 '(
   (sh . t)
   (python . t)
   (R . t)
   (ruby . t)
   (octave . t)
   (sqlite . t)
   (perl . t)
   ))

(require 'org-journal)

(require 'fill-column-indicator)

(require 'workgroups )
; Disable animation
(setq wg-morph-on nil )
; Enable
(workgroups-mode 1)

;; Enable auto-fill-mode. wraps line at fill-column
(setq auto-fill-mode 1 )

;; Save all the backup files here
(setq backup-directory-alist `(("." . "~/.saves")))

;Dont show menu bar
(menu-bar-mode nil)

; Don't show the scroll bar
(scroll-bar-mode nil)
