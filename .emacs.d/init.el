;;line numbers
(add-hook 'prog-mode-hook 'linum-mode)

;;hide toolbar
(tool-bar-mode -1)

;;cycle buffers (later use emacs helm)
(global-set-key (kbd "<C-tab>") 'bury-buffer)

;;hide start message
(setq inhibit-startup-message t)

;;melpa config
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   t)
  (package-initialize))

;;C file indent
(setq c-default-style "linux"
      c-basic-offset 4)

;;theme
(load-theme 'zenburn t)

;;highlight current line
(global-hl-line-mode +1)
(set-face-foreground 'highlight nil)

;;Char & paren matching
(show-paren-mode 1)
(setq show-paren-delay 0)
;;(require 'paren)
;;  (set-face-background 'show-paren-match (face-background 'default))
;;    (set-face-foreground 'show-paren-match "#def")
;;    (set-face-attribute 'show-paren-match nil :weight 'extra-bold)

;;(add-hook 'c-mode-common-hook #'(lambda () (autopair-mode)))


;;semantic mode
(semantic-mode 1)

;;window navigation
(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))
;;line numbers
(add-hook 'prog-mode-hook 'linum-mode)

;;hide toolbar
(tool-bar-mode -1)

;;cycle buffers (later use emacs helm)
(global-set-key (kbd "<C-tab>") 'bury-buffer)

;;hide start message
(setq inhibit-startup-message t)

;;melpa config
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   t)
  (package-initialize))

;;C file indent
(setq c-default-style "linux"
      c-basic-offset 4)

;;theme
(load-theme 'zenburn t)

;;highlight current line
(global-hl-line-mode +1)
(set-face-foreground 'highlight nil)

;;Char & paren matching
(show-paren-mode 1)
(setq show-paren-delay 0)
;;(require 'paren)
;;  (set-face-background 'show-paren-match (face-background 'default))
;;    (set-face-foreground 'show-paren-match "#def")
;;    (set-face-attribute 'show-paren-match nil :weight 'extra-bold)

;;(add-hook 'c-mode-common-hook #'(lambda () (autopair-mode)))


;;semantic mode
(semantic-mode 1)

;;window navigation
(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))


;;autopair
(add-hook 'prog-mode-hook #'(lambda () (autopair-mode)))
(define-globalized-minor-mode global-highlight-parentheses-mode
  highlight-parentheses-mode
  (lambda ()
    (highlight-parentheses-mode t)))
(global-highlight-parentheses-mode t)
(add-hook 'highlight-parentheses-mode-hook
          '(lambda ()
             (setq autopair-handle-action-fns
                   (append
					(if autopair-handle-action-fns
						autopair-handle-action-fns
					  '(autopair-default-handle-action))
					'((lambda (action pair pos-before)
						(hl-paren-color-update)))))))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (zenburn-theme rust-mode rtags python-mode multi-web-mode kooten-theme highlight-parentheses frame-tag flycheck company cmake-ide autopair auto-complete-clang ac-php))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
