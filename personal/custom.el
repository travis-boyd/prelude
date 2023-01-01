(org-babel-do-load-languages
 'org-babel-load-languages '((C . t) (python . t)))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-capture-templates
   '(("tt" "Todo template" entry
      (file "~/org/notes.org")
      "* TODO %?\\n:PROPERTIES:\\n:Via:\\n:Note:\\n:END:\\n:LOGBOOK:\\n- State \\\"TODO\\\"\\tfrom \\\"\\\"\\t%U\\n:END:")
     ("t" "Thought for the drafts folder" entry
      (file "~/org/thoughts.org")
      "")))


 '(package-selected-packages
   '(circe use-package org-roam yaml-mode web-mode company-anaconda anaconda-mode lsp-ui lsp-mode json-mode js2-mode rainbow-mode elisp-slime-nav rainbow-delimiters company helm-ag helm-descbinds helm-projectile helm counsel swiper ivy exec-path-from-shell zop-to-char zenburn-theme which-key volatile-highlights undo-tree super-save smartrep smartparens operate-on-number nlinum move-text projectile imenu-anywhere hl-todo guru-mode git-modes git-timemachine gist flycheck expand-region epl editorconfig easy-kill diminish diff-hl discover-my-major crux browse-kill-ring anzu ag ace-window)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
