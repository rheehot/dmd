private
{
    void privF() {}
    class privC {}
    struct privS {}
    union privU {}
    interface privI {}
    enum privE { foo }
    mixin template privMT() {}

    void privTF(T)() {}
    class privTC(T) {}
    struct privTS(T) {}
    union privTU(T) {}
    interface privTI(T) {}
}

void publF(T)() {}
void publFA(alias A)() {}
private alias privC privA;

public mixin template publMT() {}

/***************************************************/
// 14169

template GetName14169(TemplateParam)
{
    enum GetName14169 = TemplateParam.Name;
}

// Aliases to private
public
{
    alias publicFAlias = privF;
    alias publicCAlias = privC;
    alias publicSAlias = privS;
    alias publicUAlias = privU;
    alias publicIAlias = privI;
    alias publicEAlias = privE;
    alias publicMTAlias = privMT;

    alias publicTFAlias = privTF;
    alias publicTFAlias = privTC;
    alias publicTSAlias = privTS;
    alias publicTUAlias = privTU;
    alias publicTIAlias = privTI;
}
