#
# Add -lumem by default, except for packages where it causes issues.
#
.if empty(PKGPATH:Mdevel/SOPE) \
 && empty(PKGPATH:Mdevel/gnustep-base) \
 && empty(PKGPATH:Mdevel/ncurses) \
 && empty(PKGPATH:Meditors/emacs*) \
 && empty(PKGPATH:Mjoyent/haskell-platform) \
 && empty(PKGPATH:Mlang/go*) \
 && empty(PKGPATH:Msecurity/aide) \
 && empty(PKGPATH:M*/beats) \
 && empty(PKGPATH:M*/consul) \
 && empty(PKGPATH:M*/ghc*) \
 && empty(PKGPATH:M*/hs-*) \
 && empty(PKGPATH:M*/mongo-tools)
_WRAP_EXTRA_LIBS.CC+=	-lumem
_WRAP_EXTRA_LIBS.CXX+=	-lumem
_WRAP_EXTRA_LIBS.LD+=	-lumem
CWRAPPERS_LDADD.cc+=	-lumem
CWRAPPERS_LDADD.cxx+=	-lumem
CWRAPPERS_LDADD.ld+=	-lumem
.endif
