module visibility.imports.definition.class_protected;

class BaseClass
{
    protected import visibility.imports.definition.foobar;
    Foobar createC () { return null; }
}

interface BaseInterface
{
    protected import visibility.imports.definition.foobar;
    Foobar createI ();
}
