module visibility.imports.definition.class_public;

class BaseClass
{
    public import visibility.imports.definition.foobar;
    Foobar createC () { return null; }
}

interface BaseInterface
{
    public import visibility.imports.definition.foobar;
    Foobar createI ();
}
