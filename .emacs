
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(gud-gdb-command-name "gdb --annotate=1")
 '(inhibit-startup-screen t)
 '(large-file-warning-threshold nil)
 '(package-selected-packages '(auctex))
 '(safe-local-variable-values '((ispell-local-dictionary . american) (TeX-master . t))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Making AUCTeX work
(add-to-list 'load-path "/usr/local/share/emacs/site-lisp/auctex")
(load "auctex")
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)
(add-hook 'LaTeX-mode-hook 'visual-line-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(setq reftex-plug-into-AUCTeX t)

(setq-default fill-column 100)
(put 'narrow-to-region 'disabled nil)

;; Make input work on Mac
(setq default-input-method "MacOSX")
(setq mac-command-modifier 'meta
      mac-option-modifier nil
      mac-allow-anti-aliasing t
      mac-command-key-is-meta t)

;;
(add-to-list 'default-frame-alist '(height . 75))
(add-to-list 'default-frame-alist '(width . 150))


;; Markdown mode
(add-to-list 'load-path "/usr/local/share/emacs/site-lisp/markdown-mode")
(load "markdown-mode")

;; My old key bindings for moving forwards and backwards over paragraphs.
(global-set-key (kbd "M-n") 'forward-paragraph)
(global-set-key (kbd "M-p") 'backward-paragraph)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
