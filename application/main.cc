#include <rtthread.h>

#include <cstdint>

void sample_thread(void*) {
  uint64_t counter;
  for (counter = 0; counter < 10000000000000; ++counter) {
    if (counter & 1) {
      counter++;
    }
  }
}

int main() {
  rt_thread_t other_thread;
  other_thread = rt_thread_create("other", sample_thread, nullptr, 1024, 25, 5);
  rt_thread_startup(other_thread);

  for (int i = 0; i < 1000000; ++i) {
    rt_thread_mdelay(1000);
  }

  return 0;
}
