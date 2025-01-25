#include "types.h"
#include "memory_map.h"
#include "ascii.h"
#include "uart.h"
#include "string.h"
#include "tb_cxxrtl_io.h"
#define RISCV_GPIO_BASE   0x80002000
#define RISCV_UART_BASE   0x80000000
#define RISCV_TIMER_BASE  0x80001000

//////////////////////////////////////////////////////////////////
// Main Function
//////////////////////////////////////////////////////////////////

void delay(unsigned int time)
{
  while (time--);
}

#define BUFFER_LEN 16
int main(void)
{
    unsigned int i=0;
    unsigned int curr_time_value;

    uwrite_int8s("\r\n201921321 choisihun CPU DESIGN");

    while(1){
        curr_time_value = *(unsigned int*) (RISCV_TIMER_BASE+0x100);
        *(unsigned int*) (RISCV_GPIO_BASE + 0x018) = (curr_time_value >> 12) & 0x0f;
        *(unsigned int*) (RISCV_GPIO_BASE + 0x014) = (curr_time_value >> 8) & 0x0f;
        *(unsigned int*) (RISCV_GPIO_BASE + 0x010) = (curr_time_value >> 4) & 0x0f;
        *(unsigned int*) (RISCV_GPIO_BASE + 0x00c) = (curr_time_value) & 0x0f;
       
        i++;
        if(i == 0){
          *(volatile unsigned int*) (RISCV_GPIO_BASE + 0x008) = 0x2AA;
        }
        else if(i == 1){
          *(volatile unsigned int*) (RISCV_GPIO_BASE + 0x008) = 0x000;
        }
        else if(i == 2){
          *(volatile unsigned int*) (RISCV_GPIO_BASE + 0x008) = 0x155;
        }
        else if(i == 3){
          *(volatile unsigned int*) (RISCV_GPIO_BASE + 0x008) = 0x000;
        }
       
        delay(0xfffff);  
        if(i == 3){
          i = 0;
        }
        tb_exit(123);
    }
}

