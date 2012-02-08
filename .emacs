(add-to-list 'load-path "/opt/local/share/emacs/site-lisp/slime")
(setq slime-lisp-implementations
     `((sbcl ("/opt/local/bin/sbcl"))
       (abcl ("/opt/local/bin/abcl"))
       (clisp ("/opt/local/bin/clisp"))))
(require 'slime)
(slime-setup  '(slime-repl slime-asdf slime-fancy slime-banner))

