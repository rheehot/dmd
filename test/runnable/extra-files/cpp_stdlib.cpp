#include <array>
#include <string>
#include <vector>

template<typename T>
T& identity (T& v) { return v; }
template<typename T>
T** identityPP (T** v) { return v; }

template<typename T>
std::vector<T>* getVector(size_t len, const T* ptr)
{
    std::vector<T>* ret = new std::vector<T>(len);
    for (size_t i = 0; i < len; ++i)
        (*ret)[i] = ptr[i];
    return ret;
}

std::string* getString(int len, const char* ptr)
{
    return new std::string(ptr, len);
}

template<typename T, size_t N>
std::array<T, N>* getArray(const T* ptr)
{
    std::array<T, N>* ret = new std::array<T, N>();
    for (size_t x = 0; x < N; ++x)
        (*ret)[x] = ptr[x];
    return ret;
}

namespace ns
{
    template<typename T>
    struct xvector : std::vector {
        using vector = std::vector<T>;
        using vector::vector;
    }

    template<typename T, typename VectorT>
    void push_back(VectorT* this_, T& value)
    {
        //this_->push_back(value);
    }

    void push_back<int, std::vector<int>>(std::vector<int>* this_, int& value);
    void push_back<int, xvector<int>>(xvector<int>* this_, int& value);
}

// This function should never be called
void instantiate ()
{
    int i;
    float f;
    int* pi;
    float* pf;

    identityPP(&pi);
    identityPP(&pf);
    identity(i);
    identity(f);

    getVector<int>(0, 0);
    getVector<float>(0, 0);
    getVector<std::vector<float> >(0, 0);

    getArray<int, 4>(0);
    getArray<float, 4>(0);
    //getArray<Foo<int, 42>, 4>(0);
}
