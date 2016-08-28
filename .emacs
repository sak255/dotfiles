(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.

 '(default-frame-alist (append (list '(width . 82) '(height . 40)))) ;; Set screen size.
 '(inhibit-startup-screen t) ;; Don't display welcome screen.
 '(column-number-mode t) ;; Show column number.
 '(global-hl-line-mode t) ;; Highlight on cursor line.
 '(tool-bar-mode nil) ;; Hide toolbar.

 '(c-backspace-function (quote backward-delete-char)) ;; Use backspace instead of delete.
 '(c-default-style (quote ((c-mode . "k&r") (c++-mode . "k&r") (java-mode . "java")))) ;; Coding style.
 '(pc-selection-mode t) ;; Use arrow key on selection.
 '(transient-mark-mode t) ;; Use region.
 '(auto-mode-alist (append (list '("\\.cs\\'". c++-mode)))) ;; Set extention.

 '(c-basic-offset 4) ;; Set indent width.
 '(indent-tabs-mode nil) ;; Use space instead of tabs.
 '(tab-width 4) ;; Set tab width.

 '(iswitchb-mode t) ;; Use completion on change buffer.

  ;; Show tabs and spaces.
 '(global-whitespace-mode t)
 '(whitespace-style '(face trailing tabs spaces space-mark tab-mark))
 '(whitespace-display-mappings
      '((space-mark ?\u3000 [?\u25a1])
        ;; WARNING: the mapping below has a problem.
        ;; When a TAB occupies exactly one column, it will display the
        ;; character ?\xBB at that column followed by a TAB which goes to
        ;; the next TAB column.
        ;; If this is a problem for you, please, comment the line below.
        (tab-mark ?\t [?\u00BB ?\t] [?\\ ?\t])))
 '(whitespace-space-regexp "\\(\u3000+\\)") ;; Only two bytes space.
)

;; Customize window color and fonts.
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:stipple nil :background "black" :foreground "white"
                :inverse-video nil :box nil :strike-through nil :overline nil :underline nil
                :slant normal :weight normal :height 90 :width normal
                :family "Source Han Code JP"))))
)
