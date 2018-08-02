// REQUIRED_ARGS: -boundscheck=safeonly

version (D_BoundsChecks)
    static assert(false)

version (D_NoBoundsChecks) {}
else
    static assert(false);

void noBoundsCheck() @safe
{
    version (D_BoundsChecks) {}
    else
        static assert(false)

    version (D_NoBoundsChecks)
        static assert(false);
}

void noBoundsCheck () @system
{
    version (D_BoundsChecks)
        static assert(false)

    version (D_NoBoundsChecks) {}
    else
        static assert(false);
}

/// Must be bounds checked
void overload (T) (T param)
{
    hasBoundsCheck();
}

/// Not bounds checked
void overload (T, X = void) (T param)
{
    noBoundsCheck();
}
