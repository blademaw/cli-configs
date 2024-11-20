;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!

;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
;; (setq user-full-name "John Doe"
;;       user-mail-address "john@doe.com")

;; Mac modifier keys
(cond (IS-MAC
       (setq mac-command-modifier 'meta
             mac-option-modifier  'alt
             mac-right-option-modifier 'alt
             mac-pass-control-to-system nil)))

;; enable auto-saving
(setq auto-save-default t
      make-backup-files t)

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-symbol-font' -- for symbols
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;
(setq doom-font (font-spec :family "JetBrains Mono" :size 16)
      doom-variable-pitch-font (font-spec :family "Open Sans" :size 14))
;;
;;
;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
;; (setq doom-theme 'doom-one)
(setq doom-theme 'doom-gruvbox)


;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type 'relative)

(setq confirm-kill-emacs nil) ;; turn off the confirmation message

;; ORG MODE SETTINGS
;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/Dropbox/org")
(setq org-default-notes-file (concat org-directory "/notes.org"))
(setq org-agenda-files (directory-files-recursively "~/Dropbox/org/" "\\.org$"))

;; g j and g k in org mode
(map! :after evil-org
      :map evil-org-mode-map
      :nvm "g j" #'evil-next-visual-line
      :nvm "g k" #'evil-previous-visual-line)

;; add current time stamp input function
(defun insert-now-timestamp-org()
  "Insert org-mode timestamp at point with current date and time"
  (interactive)
  (org-insert-time-stamp (current-time) t))
(map! :after evil-org
      :map evil-org-mode-map
      )

(after! org
  (setq org-todo-keywords '
        ((sequence "TODO(t)" "PROG(p)"
                   "|"
                   "DONE(d/!)" "CANCELLED(c@)"))))
(after! org
  (add-to-list 'org-modules 'org-habit t))
(setq org-hide-emphasis-markers t)

;; make emphasis markers appear when hover
(use-package org-appear
  :ensure t)
(add-hook 'org-mode-hook 'org-appear-mode)

;; ORG ROAM SETTINGS
(setq org-roam-directory (file-truename "~/Dropbox/org/roam"))
(setq org-roam-file-extensions '("org"))


(use-package org-roam
  :ensure t
  :custom
  (org-roam-directory (file-truename "~/Dropbox/org/roam/"))
  :bind (("C-c n l" . org-roam-buffer-toggle)
         ("C-c n f" . org-roam-node-find)
         ("C-c n g" . org-roam-graph)
         ("C-c n i" . org-roam-node-insert)
         ("C-c n c" . org-roam-capture)
         ;; Dailies
         ("C-c n j" . org-roam-dailies-capture-today))
  :config
  ;; If you're using a vertical completion framework, you might want a more informative completion interface
  (setq org-roam-node-display-template (concat "${title:*} " (propertize "${tags:10}" 'face 'org-tag)))
  (org-roam-db-autosync-mode)
  ;; If using org-roam-protocol
  (require 'org-roam-protocol))


;; better terminal
(use-package vterm
  :ensure t
  :commands vterm)

;; vterm settings
(setq vterm-shell "/usr/local/bin/fish")
(setq vterm-kill-buffer-on-exit t)
(map! :ni "C-t" '+vterm/toggle)


;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with dkjflksjdl fksdlkfj slkdjflksdjflksdjflks jdflkjsdflk jsdfkljs
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.


;; make the window "borderless fullscreen"
(set-frame-position nil 0 -24)
(toggle-frame-maximized)

;; don't try to preserve cursor position in centre
(setq scroll-preserve-screen-position -1)


;; ADDITIONAL VIM / EVIL SETTINGS
(setq evil-escape-key-sequence nil)

;; search
(remove-hook 'doom-first-input-hook #'evil-snipe-mode) ; disable evil mode's s/S keys
(setq evil-ex-search-persistent-highlight nil) ; turn off persistent highlights of search
(setq evil-ex-search-highlight-all nil)
(setq-default case-fold-search t) ; ignore case
(setq search-upper-case t) ; smart case
(delete-selection-mode 1)  ; backspace behaviour

(modify-syntax-entry ?- "w" emacs-lisp-mode-syntax-table) ; make hyphen part of a word


;; make insert cursor a block
(setq evil-insert-state-cursor 'box
      evil-normal-state-cursor 'box
      evil-visual-state-cursor 'box
      evil-replace-state-cursor 'box
      evil-motion-state-cursor 'box
      evil-operator-state-cursor 'box)

;; clipboard
(setq select-enable-clipboard t)

;; set tmux/window movement
(map! :n "C-h" #'evil-window-left
      :n "C-j" #'evil-window-down
      :n "C-k" #'evil-window-up
      :n "C-l" #'evil-window-right

      :n "SPC e" #'+treemacs/toggle

      :n "SPC w h" #'+evil/window-split-and-follow
      :n "SPC w /" #'+evil/window-vsplit-and-follow)

;; tree bindings
(evil-define-key 'treemacs treemacs-mode-map (kbd "SPC e") #'+treemacs/toggle)
(evil-define-key 'treemacs treemacs-mode-map (kbd "C-l") #'evil-window-right)
(evil-define-key 'treemacs treemacs-mode-map (kbd "<return>") #'treemacs-visit-node-ace)

;; center after going down/up
(map! :n "C-d" (lambda () (interactive) (evil-scroll-down nil) (recenter)))
(map! :n "C-u" (lambda () (interactive) (evil-scroll-up nil) (recenter)))

(setq scroll-margin 8               ; make scrolling smoother
      scroll-conservatively 101)

(setq-default fill-column 80            ; faster updating; 80-column width
              idle-update-delay 0.05)

;; make shift+j/k move highlighted text
(use-package! drag-stuff
  :ensure t)
(map! :v "K" #'drag-stuff-up)
(map! :v "J" #'drag-stuff-down)

;; FIXME: make J keep cursor in same place
;; (map! :n "J" (lambda ()
;;                (interactive)
;;                (let ((col (current-column)))
;;                  (evil-join (line-beginning-position) (line-end-position))
;;                  (move-to-column col))))

(setq-default tab-width 2           ; tab width is 2
              evil-shift-width 2
              indent-tabs-mode nil) ; use spaces instead of tabs

(defun diff-current-buffer ()
  "Run diff on the current buffer"
  (interactive)
  (if (buffer-file-name)
      (diff-buffer-with-file)
    (message "This buffer does not have an associated file.")))

(map! :leader :desc "Diff current buffer" "g d" #'diff-current-buffer)
