;;; ORG-ROAM
(use-package org-roam
  :ensure t
  :custom
  (org-roam-directory (file-truename "~/org-roam/"))
  (org-roam-db-location (expand-file-name (concat "org-roam." "macbook" ".db") org-roam-directory))
  :bind (("C-c m l" . org-roam-buffer-toggle)
         ("C-c m f" . org-roam-node-find)
         ("C-c m g" . org-roam-graph)
         ("C-c m i" . org-roam-node-insert)
         ("C-c m c" . org-roam-capture)
         ;; Dailies
         ("C-c m j" . org-roam-dailies-capture-today))
  :config
  ;; If you're using a vertical completion framework, you might want a more informative completion interface
  (setq org-roam-node-display-template (concat "${title:*} " (propertize "${tags:10}" 'face 'org-tag)))
  (org-roam-db-autosync-mode)
  ;; If using org-roam-protocol
  (require 'org-roam-protocol))
(setq org-roam-capture-templates
      '(("d" "default" plain "%?"
         :if-new
         (file+head "${slug}.org"
                    "#+title: ${title}\n#+date: %u\n#+lastmod: \n\n")
         ))
      time-stamp-start "#\\+lastmod: [\t]*")
