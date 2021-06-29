#include <stdint.h>

//linked list
//TODO: hash table
struct mem_map
{
  uint32_t ptr;
  uint32_t len;
  uint32_t flags;
  void *mem;
  struct mem_map *next;
};

int vmem_len = 0;
struct mem_map *virtual_mem = 0;

int vmem_alloc(uint32_t ptr, uint32_t len, uint32_t flags)
{
  struct memptr *m;
  struct mem_map *new;
  new = malloc(sizeof(struct mem_map));
  if(!new)
  {
    return 1;
  }
  new->mem = malloc(len);
  if(!new->mem)
  {
    return 2;
  }
  if(virtual_mem == 0)
  {
    virtual_mem = new;
    m = virtual_mem;
  }
  else
  {
    m = virtual_mem;
    while(m->next)
    {
      m = m->next;
    }
    m->next = new;
  }
  new->ptr = ptr;
  new->len = len;
  new->flags = flags;
  vmem_len++;
  return 0;
}

void *vmem_find(uint32_t ptr)
{
  struct mem_map *m;
  int diff;
  for(m = virtual_mem, m ,m = m->next)
  {
    if(m->ptr <= ptr && m->ptr + m->len > ptr)
    {
      diff = ptr - m_ptr;
      return (uint8_t *)m->mem + diff;
    }
  }
  return 0;
}


int vmem_read_bloc(uint32_t ptr,uint32_t len, void *buf)
{
  void *m;
  uint8_t *src;
  m = vmem_find(ptr);
  if(m)
  {
    memcpy(buf,m,len);
    return len;
  }
  return 0;
}

int vmem_write_bloc(uint32_t ptr,uint32_t len, void *buf)
{
  void *m;
  uint8_t *src;
  m = vmem_find(ptr);
  if(m)
  {
    memcpy(m,buf,len);
    return len;
  }
  return 0;
}


