#lang scribble/manual
@(require (for-label (only-meta-in 0 plai)))

@title{PLAI Lazy}

@defmodulelang[plai-lazy]

The @racketmodname[plai-lazy] language is like @racketmodname[lazy]
augmented with lazy versions of the @racket[define-type] and
@racket[type-case] forms of @racketmodname[plai]; contracts specified
in @racket[define-type] are not checked, however, because checking
forces evaluation (possibly unnecessarily). Variants of @racket[test],
@racket[test/exn], and @racket[test/pred] forms are also provided, and
they force evaluation of the test and expected-result expressions.
