#include <stdint.h>
struct mem_map
{
  uint32_t ptr;
  uint32_t len;
  void *mem;
};

struct mem_map *virtual_mem;


