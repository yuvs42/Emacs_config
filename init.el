;;
(setq inhibit-splash-screen t)
(setq initial-scratch-message "Hello Yuval, and welcome.")
(setq global-visual-line-mode -1)

;; Change yes-or-no-p answers to y-or-n-p
(fset 'yes-or-no-p 'y-or-n-p)

;; Removes *messages* from the buffer.
(setq-default message-log-max nil)
(kill-buffer "*Messages*")

;; Adding Packages form MPLA
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/")
	     '("melpa". "https://stable.melpa.org/packages/"))


;; Org mode configuration
;; Evaluate org mode without loading it 
(with-eval-after-load 'org
(setq org-hide-emphasis-markers t)
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-adgenda)
(setq org-startup-indented t)
(add-hook 'org-mode-hook #'visual-line-mode))


;; Adding org-superstar
;;Evaluate org-superstar mode without loading it 
(with-eval-after-load 'org-superstar)
(add-hook 'org-mode-hook (lambda () (org-superstar-mode 1)))
(setq org-indent-mode-turns-on-hiding-stars nil)
(setq org-superstar-leading-bullet ?\s)
(setq org-superstar-special-todo-items t)
(setq visual-line-mode -1)

;; Removing tool-bar menu
(tool-bar-mode -1)

;; Adding numbers on the left side of each buffer
(global-display-line-numbers-mode 1)

;; Global theme
(load-theme 'deeper-blue' t)

;; Setting up treemacs
(use-package treemacs
	    :ensure t
	    :defer t
	    :init
	    :config
	    (progn
	      (setq treemacs-show-hidden-files t)))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(web-mode use-package  treemacs org-superstar  elpy)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
