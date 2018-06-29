/*
TEST_OUTPUT:
---
compilable/test15925.d(17): Error: undefined identifier `X`
compilable/test15925.d(17):        while evaluating: `static assert(X == 1)`
---
*/

mixin template Import()
{
    import imports.imp15925;
}

class Foo
{
    mixin Import!();
    static assert(X == 1);
}
