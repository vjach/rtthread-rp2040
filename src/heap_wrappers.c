#include <rtthread.h>
#include <stddef.h>
void *__wrap_malloc(size_t size) {
  return rt_malloc(size);
}

void *__wrap_calloc(size_t count, size_t size) {
    return rt_calloc(count, size);
}

void __wrap_free(void *mem) {
  return rt_free(mem);
}
