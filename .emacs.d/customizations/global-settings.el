(global-linum-mode 1)
(setq linum-format "%4d \u2502 ")

;; When you visit a file, point goes to the last place where it
;; was when you previously visited the same file.
;; http://www.emacswiki.org/emacs/SavePlace
(require 'saveplace)
(setq-default save-place t)
;; keep track of saved places in ~/.emacs.d/places
(setq save-place-file (concat user-emacs-directory "places"))

;; Emacs can automatically create backup files. This tells Emacs to
;; put all backups in ~/.emacs.d/backups. More info:
;; http://www.gnu.org/software/emacs/manual/html_node/elisp/Backup-Files.html
(setq backup-directory-alist `(("." . ,(concat user-emacs-directory
                                               "backups"))))
(setq auto-save-default nil)

;; (setq
;; backup-by-copying t                    ; don't clobber symlinks
;; backup-directory-alist
;;  '(("." . "~/.saves"))                ; don't litter my fs tree
;;  delete-old-versions t
;;  kept-new-versions 6
;;  kept-old-versions 2
;; version-control t)                     ; use versioned backups
;; 
;; (setq auto-save-file-name-transforms
;; ;;       `((".*" "~/.saves" t)))

;; Autoindent open-*-lines
(defvar newline-and-indent t
"Modify the behavior of the open-*-line functions to cause them to autoindent.")

(require 'evil)
(evil-mode 1)
(setq-default tab-width 4)
(setq evil-default-state 'emacs)
