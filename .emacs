(defalias 'yes-or-no-p 'y-or-n-p) ; y or n is enough
;;(defalias 'list-buffers 'ibuffer) ; always use ibuffer

(add-to-list 'default-frame-alist '(font . "DejaVu Sans Mono-10"))
                                        ; elisp
(defalias 'eb 'eval-buffer)
(defalias 'er 'eval-region)
;;(defalias 'ed ;;     lobal-set-key (kbd "M-m") 'er/expand-region)

;;'eval-defun)
;;(global-visual-line-mode 1) 
                                        ; minor modes
(defalias 'wsm 'whitespace-mode)

(tool-bar-mode -1)
(toggle-scroll-bar -1) 

(require 'package)
(add-to-list 'package-archives
 '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

;;(mapc 'load (directory-files "~/.emacs.d/custom" t ".*\.el"))

(require 'evil)
(evil-mode 1)

(add-to-list 'load-path "~/.emacs.d/")
(add-to-list 'load-path "~/.emacs.d/elpa/")

;; add your modules path
(add-to-list 'load-path "~/.emacs.d/custom/")

;; load your modules
(require 'setup-applications) 
(require 'setup-communication)
(require 'setup-convenience)
(require 'setup-data)
(require 'setup-development)
(require 'setup-editing)
(require 'setup-environment)
(require 'setup-external)
(require 'setup-faces-and-ui)
;;(require 'setup-files)
;;(require 'setup-help)
;;(require 'setup-programming)
;;(require 'setup-text)


;;;;;;;;;;;;;;;;;;;;;
;; PACKAGE: ztree  ;;
;;                 ;;
;; GROUP: No group ;;
;;;;;;;;;;;;;;;;;;;;;
;; since ztree works with files and directories, let's consider it in
;; group Files
(require 'ztree)
;;(require 'ztree-dir)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 '(custom-enabled-themes (quote (base16-summerfruit-dark)))
 '(custom-safe-themes (quote ("aded4ec996e438a5e002439d58f09610b330bbc18f580c83ebaba026bbef6c82" "3380a2766cf0590d50d6366c5a91e976bdc3c413df963a0ab9952314b4577299" default)))
 '(delete-selection-mode nil)
 '(inhibit-startup-screen t)
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "DejaVu Sans Mono" :foundry "unknown" :slant normal :weight bold :height 98 :width normal)))))
