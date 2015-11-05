;; Yasnippet
(use-package yasnippet
  :ensure t
  :defer 20
  :config
  (progn
	(setq yas-snippet-dirs
      '("~/Dropbox/emacs/snippets"
        "~/.emacs.d/elpa/yasnippet-20151101.1535/snippets"
        ))))
(yas-global-mode 1)

(use-package swiper
  :ensure t
  :bind ("C-s" . swiper)
  ("C-c C-s" . isearch-forward)
  ("s-r" . ivy-recentf)
  ("C-c C-r" . ivy-resume)
  :config
  (setq ivy-display-style 'fancy
        ivy-use-virtual-buffers t
        ivy-re-builders-alist)
  (use-package smex
   :ensure t
   :config (smex-initialize))
  (use-package hydra
	:ensure t)
  (ivy-mode))

(use-package counsel
  :ensure t
  :bind ("M-x" . counsel-M-x)
  ("C-x C-f" . counsel-find-file)
  ("s-o" . counsel-find-file)
  :config
  (setq counsel-find-file-at-point t))


;; avy
(use-package avy
  :ensure t
  :bind (("M-g l" . avy-goto-line)
		 ("M-g w" . avy-goto-word-1)
		 ("M-g M-g" . avy-goto-char-2)))


(use-package  ace-window
  :ensure
  :bind ("s-w" . ace-window)
  :config
  ;; (setq aw-leading-char-style 'path)
  (setq aw-background nil)
  (setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l)))

(use-package smex
  :ensure t
  :bind (([remap execute-extended-command] . smex)
         ("s-P" . smex))
  :config
  (smex-initialize)
  (setq smex-save-file (expand-file-name ".smex-items" user-emacs-directory)))

(use-package undo-tree
  :ensure t
  :config (global-undo-tree-mode)
  :bind (("s-z" . undo-tree-undo)
         ("s-Z" . undo-tree-redo)))

(use-package use-package-chords
  :ensure t)

(use-package dash
  :ensure t
  :config (dash-enable-font-lock))

(use-package expand-region
  :ensure t
  :commands (er/mark-symbol)
  :bind* ("C-=" . er/expand-region))

;; == magit ==
(use-package magit
  :ensure t
  :defer t
  :bind ("C-x g" . magit-status))

(use-package evil-nerd-commenter
  :ensure t
  :config (evilnc-default-hotkeys))

(use-package shrink-whitespace
  :ensure t
  :bind ("M-=" . shrink-whitespace))

(use-package easy-kill
  :ensure t
  :bind ([remap kill-ring-save] . easy-kill))

(use-package zop-to-char
  :ensure t
  :bind ([remap zap-to-char] . zop-to-char))

(use-package projectile
  :ensure t
  :config (projectile-global-mode))

(use-package ag
  :ensure t)

(use-package company
  :ensure t
  :diminish company-mode
  :config
  (progn
    (setq company-tooltip-limit 20)
    (global-company-mode 1)))