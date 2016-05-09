module visibility.imports.test.class_protected;

import visibility.imports.definition.foobar2;
import visibility.imports.definition.class_protected;

class SubClass : BaseClass
{
    override Foobar createC () { return null; }
}

class Implementation : BaseInterface
{
    override Foobar createI () { return null; }
}
