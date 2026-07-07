(doom! :completion
       vertico

       :ui
       doom
       dashboard
       modeline
       nav-flash
       ophints
       treemacs ; file explorer
       window-select
       (popup +defaults)
       (vc-gutter +pretty) ; version control diff in the fringe

       :editor
       evil
       fold
       (format +onsave)

       :emacs
       undo

       :term
       eshell
       vterm

       :checkers
       syntax
       (spell +flyspell)

       :os
       (tty +osc)

       :lang
       emacs-lisp
       (csharp +lsp)
       (nix +lsp)

       :tools
       magit
       lookup
       lsp

       :config
       (default +bindings +smartparens))
