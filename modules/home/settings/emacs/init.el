(doom! :completion
       vertico

       :ui
       doom
       dashboard
       modeline
       nav-flash
       ophints
       treemacs
       window-select
       (popup +defaults)

       :editor
       evil

       :emacs
       undo

       :term
       eshell
       vterm

       :os
       (:if (featurep :system 'macos) macos)
       (tty +osc)

       :lang
       emacs-lisp
       csharp
       (nix +lsp)

       :tools
       magit
       (lsp +eglot)

       :config
       (default +bindings +smartparens))
