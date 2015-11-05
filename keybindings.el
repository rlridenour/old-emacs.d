;;;;;;;;;;;;;;;;;
;; Keybindings ;;
;;;;;;;;;;;;;;;;;

;; Unbind print function, it just crashes emacs on my mac.
(global-unset-key (kbd "s-p"))
(global-set-key (kbd "s-0") 'delete-window) 
(global-set-key (kbd "s-1") 'delete-other-windows) 
(global-set-key (kbd "s-3") 'split-window-right)
(global-set-key (kbd "s-5") 'delete-frame)
(global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-<down>") 'shrink-window)
(global-set-key (kbd "S-C-<up>") 'enlarge-window)

;; Hydras

;; Hydra-toggle
(defhydra hydra-toggle (:color blue) 
  "toggle"
  ("a" abbrev-mode "abbrev")
  ("c" column-number-mode "column")
  ("d" toggle-debug-on-error "debug")
  ;; ("e" evil-mode "evil")
  ("f" auto-fill-mode "fill")
  ;; ("g" god-mode "god")
  ("l" linum-mode "linum")
  ("r" read-only-mode "read-only") 
  ("t" toggle-truncate-lines "truncate")
  ("w" whitespace-mode "whitespace")
  ("q" nil "cancel"))
(global-set-key (kbd "s-t") 'hydra-toggle/body)

;; Hydra-Blog

     ;; I didn't realize that I could jump to a directory with Hydra. I got the tip from [[http://thewanderingcoder.com/2015/02/shortcuts-to-default-directories/][Sean Miller]].

(defhydra hydra-blog (:color blue)
"buffer"
    ("n" jekyll-draft-post "new post")
    ("p" jekyll-publish-post "publish")
    ("t" jekyll-timestamp "timestamp")
    ("P" (find-file "~/Sites/rlridenour.github.io/_posts/") "post directory")
    ("d" (find-file "~/Sites/rlridenour.github.io/_drafts") "draft directory")
    ("q" nil))
(global-set-key (kbd "s-.") 'hydra-blog/body)
