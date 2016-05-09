module visibility.imports.definition.test_package;

import visibility.imports.definition.foobar2;
import visibility.imports.definition.class_package;

class SubClass : BaseClass
{
    override Foobar createC () { return null; }
}

class Implementation : BaseInterface
{
    override Foobar createI () { return null; }
}
