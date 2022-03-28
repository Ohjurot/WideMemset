#ifndef WMEMSET_H
#define WMEMSET_H

// C Style functions
#ifdef __cplusplus
extern "C"
{
#endif
void memset8(uint8_t val, void* dst, size_t count);
void memset16(uint16_t val, void* dst, size_t count);
void memset32(uint32_t val, void* dst, size_t count);
void memset64(uint64_t val, void* dst, size_t count);
#ifdef __cplusplus
}
#endif

// Automatic c++ function
#ifdef __cplusplus
#include <type_traits>

template<typename T, std::enable_if_t<sizeof(T) == 1>>
inline void wmemset(T val, T* dst, size_t count)
{
    memset8(*((uint8_t*)&val), dst, count);
}
template<typename T, std::enable_if_t<sizeof(T) == 2>>
inline void wmemset(T val, T* dst, size_t count)
{
    memset16(*((uint16_t*)&val), dst, count);
}
template<typename T, std::enable_if_t<sizeof(T) == 4>>
inline void wmemset(T val, T* dst, size_t count)
{
    memset32(*((uint32_t*)&val), dst, count);
}
template<typename T, std::enable_if_t<sizeof(T) == 8>>
inline void wmemset(T val, T* dst, size_t count)
{
    memset64(*((uint64_t*)&val), dst, count);
}

#endif

#endif
