;; My init file

;(package-initialize)
; start package.el with emacs
;(require 'package)
; add MELPA to repository list
;(add-to-list 'package-archives '("melpa-stable"."http://stable.melpa.org/packages/"))
; initialize package.el
;(package-refresh-contents)
;(package-initialize)
(ac-config-default)

;;------------------------------------------------
;; Auto revert files when they change
  (global-auto-revert-mode t)
;; Also auto refresh dired, but be quiet about it
(setq global-auto-revert-non-file-buffers t)
(setq auto-revert-verbose nil)
;;------------------------------------------------

;; nyan mode activation simplified
(require 'nyan-mode)
(nyan-mode)

;; Disable making multiple files for back-up
(setq make-backup-files nil) ; stop creating ~ files

;; No startup message
(setq inhibit-startup-message t)
;; have your emacs window to always show your system-name and full path
;; of the buffer your currently editing :
(setq frame-title-format
      (list (format "%s %%S: %%j " (system-name))
	    '(buffer-file-name "%f" (dired-directory dired-directory "%b"))))
(electric-pair-mode)
;; My display setup 
(setq default-frame-alist
      '((top . 200) (left . 400)
        (width . 80) (height . 40)
        (cursor-color . "white")
        (cursor-type . box)
        (foreground-color . "yellow")
        (background-color . "black")
       (font . "-*-Courier-normal-r-*-*-15-*-*-*-c-*-iso8859-1")))
(setq initial-frame-alist '((top . 10) (left . 30)))

;;(Package-initialize)
(require 'package)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#e090d7" "#8cc4ff" "#eeeeec"])
 '(custom-enabled-themes '(deeper-blue))
 '(ispell-dictionary nil)
 '(package-archives
   '(("gnu" . "https://elpa.gnu.org/packages/")
     ("Melpa-stable" . "https://stable.melpa.org/packages/")))
 '(package-selected-packages
   '(rjsx-mode react-snippets yasnippet-classic-snippetsospore yasnippet-snippets yasnippet-snippetside dracula-theme prettier web-mode markdown-preview-mode markdown-mode emmet-mode js2-mode ob-ada-spark ac-c-headers nyan-mode yasnippet xpm auto-complete auto-compile)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;; allow use of emmet mode on HTML or css buffer

;;--------------------------------------------------------
;; For web development
;; (require 'web-mode)
;; (add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
;; (add-to-list 'auto-mode-alist '("\\.css?\\'" . web-mode))
;; (add-to-list 'auto-mode-alist '("\\.js?\\'" . web-mode))
;; (add-to-list 'auto-mode-alist '("\\.php?\\'" . web-mode))
;; (defun my-web-mode-hook ()
;;   "Hooks for Web mode."
;;   (setq web-mode-markup-indent-offset 2)
;; )
;; (add-hook 'web-mode-hook  'my-web-mode-hook)

;;--------------------------------------------------------
;; yas
(require 'yasnippet)
(yas-global-mode 1)
