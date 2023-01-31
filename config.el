(require 'package)
(add-to-list 'package-archives
'("melpa" . "https://melpa.org/packages/"))
;; (package-refresh-contents)
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

;; (use-package dashboard
;;   :ensure t
;;   :init
;;   (setq dashboard-set-heading-icons t)
;;   (setq dashboard-set-file-icons t)

;;   (setq dashboard-banner-logo-title "Hii")

;;   ;; set later on
;;   ;; (setq dashboard-startup-banner ".")

;;   (setq dashboard-center-content nil)
;;   (setq dashboard-items '((recent . 5)
;; 				(agenda . 5)
;; 				(bookmarks . 5)
;; 				(project . 5)
;; 				(reqisters . 5)))

;;   :config
;;   (dashboard-setup-startup-hook)
;;   (dashboard-modify-heading-icons '((recents . "file-text") (bookmarks . "book"))))

(use-package projectile
      :ensure t
:config (projectile-global-mode 1))

(use-package evil ;; 
   :ensure t ;; install evil if not installed
   :init ;; tweak evil's configurations before loading it
   (setq evil-want-integration t)
   (setq evil-want-keybinding nil)
   (setq evil-vsplit-window-right t)
   (setq evil-split-window-below t)
   (evil-mode))

;; collection of programs ibuffer, dired mode to use 
  (use-package evil-collection 
  :after evil
  :ensure t
  :config
  (evil-collection-init))

(use-package which-key
:ensure t)
(which-key-mode)

(use-package doom-themes
:ensure t)
(setq doom-themes-enable-bold t
doom-themes-enable-italic t)
(load-theme 'doom-one t)
;; modeline
(use-package doom-modeline
:ensure t)
(doom-modeline-mode 1)

;; (set-face-attribute 'default nil
;;   :font "SauceCodePro Nerd Font 11"
;;   :weight 'medium)
;; (set-face-attribute 'variable-pitch nil
;; :font "Ubuntu Nerd Font 11"
;; :weight 'medium)
;; (set-face-attribute 'fixed-pitch nil
;; :font "SauceCodePro Nerd Font 11"
;; :weight 'medium)

;; (setq-default line-spacing 0.10)

;; (add-to-list 'default-frame-alist '(font . "SauceCodePro Nerd Font 11"))

;;  (global-set-key (kbd "C-=") 'text-scale-increase)

;; (global-set-key (kbd "C-=") 'text-scale-increase)

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(setq inhibit-startup-message t)
(setq initial-scratch-message nil)

(global-display-line-numbers-mode 1)
(global-visual-line-mode t)

(server-start)

(use-package treemacs
:ensure t)
(treemacs)

(use-package ob-js)
(add-to-list 'org-babel-load-languages '(js t))
(org-babel-do-load-languages 'org-babel-load-languages org-babel-load-languages)
(add-to-list 'org-babel-tangle-lang-exts '("js" . "js"))


