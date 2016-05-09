module protection.test.base_class_public_import;

import visibility.imports.definition.foobar2;
import protection.aggregate.class_import_public;

class SubClass : BaseClass
{
    override Foobar createC () { return null; }
}

class Implementation : BaseInterface
{
    override Foobar createI () { return null; }
}
