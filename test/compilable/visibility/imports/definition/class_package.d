module visibility.imports.definition.class_package;

class BaseClass
{
    package import visibility.imports.definition.foobar;
    Foobar createC () { return null; }
}

interface BaseInterface
{
    package import visibility.imports.definition.foobar;
    Foobar createI ();
}
