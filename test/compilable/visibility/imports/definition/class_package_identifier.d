module visibility.imports.definition.class_package_identifier;

class BaseClass
{
    package(visibility.imports) import visibility.imports.definition.foobar;
    Foobar createC () { return null; }
}

interface BaseInterface
{
    package(visibility.imports) import visibility.imports.definition.foobar;
    Foobar createI ();
}
