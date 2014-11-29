;; Turn off mouse interface early in startup to avoid momentary display
;(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
;(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
;(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; No splash screen please ... jeez
(setq inhibit-startup-message t)

;;;
;(let ((default-directory "~/.emacs.d/vendor/"))
;  (normal-top-level-add-to-load-path '("evil" )))
;;;
;;; init

(add-to-list 'load-path (expand-file-name "~/.emacs.d/config"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/elisp"))
;
(add-to-list 'load-path (expand-file-name "config" user-emacs-directory))
(require 'init-packages)
(require 'init-evil)



(require 'pophint)
(require 'pophint-config)

(setq pophint:popup-max-tips 1000)
(setq pophint:switch-direction-p nil)
(setq pophint:select-source-method 'use-popup-char)
(setq pophint:select-source-chars "tregdbvc")
(setq pophint:popup-chars "aklimnservu")
(setq pophint:switch-source-selectors '(("Quoted"   . "q")
                                                                                ("Url/Path" . "u")
                                                                                                                        ("Cmt"      . "c")
                                                                                                                                                                ("Line"     . "l")
                                                                                                                                                                                                        ("Sym"      . "s")))

(pophint:set-allwindow-command pophint:do-flexibly)

(pophint-config:set-automatically-when-marking t)
(pophint-config:set-yank-immediately-when-marking nil)
(pophint-config:set-automatically-when-isearch nil)
(pophint-config:set-do-when-other-window t)
(pophint-config:set-relayout-when-rangeyank-start nil)
;(pophint-config:set-w3m-use-new-tab t)
;(pophint-config:set-goto-immediately-when-e2wm-array t)
;(pophint-config:set-automatically-when-e2wm-array t)
(pophint-config:set-kill-region-kill-ring-save nil)
(pophint-config:set-mark-direction 'forward)
(pophint-config:set-tag-jump-command find-tag)
(pophint-config:set-tag-jump-command find-function)
(pophint-config:set-tag-jump-command find-variable)
(pophint-config:set-isearch-yank-region-command isearch-yank-line)
(pophint-config:set-isearch-yank-region-command migemo-isearch-yank-line)

(global-set-key (kbd "C-;")   'pophint:do)
(global-set-key (kbd "C-+")   'pophint:do-interactively)
(global-set-key (kbd "M-;")   'pophint:do-flexibly)
(global-set-key (kbd "C-M-;") 'pophint:redo)
(global-set-key (kbd "M-y")   'pophint:do-flexibly-yank)
(global-set-key (kbd "C-H-y") 'pophint:do-rangeyank)
(global-set-key (kbd "M-s S") 'pophint:do-flexibly-search)
(global-set-key (kbd "M-s i") 'pophint:do-flexibly-isearch)
(global-set-key (kbd "M-s ;") 'pophint-config:isearch-forward)
(global-set-key (kbd "C-H-h") 'pophint-config:backward-region)
(global-set-key (kbd "C-H-l") 'pophint-config:forward-region)
(global-set-key (kbd "H-f")   'pophint-config:kill-region)
(global-set-key (kbd "H-d")   'pophint-config:backward-kill-region)

;(define-key dired-mode-map (kbd ";") 'pophint:do-dired-node;)
;(global-set-key (kbd "f")   'pophint:do-eww-anchor)

(define-key evil-normal-state-map (kbd "f") 'pophint:do-eww-anchor)

(define-key evil-normal-state-map (kbd "b") 'eww-back-url)
;(global-set-key (kbd "f")   'pophint:do-eww-anchor)

(add-hook 'Info-mode-hook
                    '(lambda () (local-set-key (kbd ";") 'pophint:do-info-ref))
                              t)

(add-hook 'help-mode-hook
                    '(lambda () (local-set-key (kbd ";") 'pophint:do-help-btn))
                              t)

(add-hook 'Custom-mode-hook
                    '(lambda () (local-set-key (kbd ";") 'pophint:do-widget))
                              t)

;(require 'init-keychord)
;k
;
;
;

(evil-leader/set-key
  "," 'evil-normal-state)
(mapc 'require '(init-packages init-evil))

;;(let ((default-directory "~/.emacs.d/vendor"))
 ;;   (normal-top-level-add-to-load-path '("evil")))


;;(add-to-list 'load-path (expand-file-name "elisp" user-emacs-directory))
