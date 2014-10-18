;; Turn off mouse interface early in startup to avoid momentary display
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; No splash screen please ... jeez
(setq inhibit-startup-message t)
;;;
(let ((default-directory "~/.emacs.d/vendor/"))
  (normal-top-level-add-to-load-path '("evil" )))
;;;
;;; init
(add-to-list 'load-path (expand-file-name "~/.emacs.d/config"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/elisp"))
;
(add-to-list 'load-path (expand-file-name "config" user-emacs-directory))
(require 'init-packages)
(require 'init-evil)
(require 'init-keychord)

(evil-leader/set-key
  "," 'evil-normal-state)
;(mapc 'require '(init-packages init-evil))

;;(let ((default-directory "~/.emacs.d/vendor"))
 ;;   (normal-top-level-add-to-load-path '("evil")))


;;(add-to-list 'load-path (expand-file-name "elisp" user-emacs-directory))
