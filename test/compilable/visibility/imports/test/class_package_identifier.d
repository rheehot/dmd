module visibility.imports.test.class_package_identifier;

import visibility.imports.definition.foobar2;
import visibility.imports.definition.class_package_identifier;

class SubClass : BaseClass
{
    override Foobar createC () { return null; }
}

class Implementation : BaseInterface
{
    override Foobar createI () { return null; }
}
