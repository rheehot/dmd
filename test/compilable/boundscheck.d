// REQUIRED_ARGS: -boundscheck=off

version (D_BoundsChecks)
    static assert(false)

version (D_NoBoundsChecks) {}
else
    static assert(false)
