#lang setup/infotab

(define collection "plai-lazy")
  
(define scribblings '(("scribblings/plai-lazy.scrbl" (multi-page) (language -11))))
(define deps '("base"
               "gui-lib"
               "lazy"
               "plai-lib"
               "sandbox-lib"
               "scheme-lib"
               "srfi-lite-lib"))
(define build-deps '("plai-doc"
                     "racket-doc"
                     "scribble-lib"))
