
 PARAMETER VERSION = 2.2.0


BEGIN OS
 PARAMETER OS_NAME = xilkernel
 PARAMETER OS_VER = 5.01.a
 PARAMETER PROC_INSTANCE = microblaze_0
 PARAMETER STDIN = rs232_uart_1
 PARAMETER STDOUT = rs232_uart_1
 PARAMETER SYSTMR_SPEC = true
 PARAMETER SYSTMR_DEV = axi_timer_0
 PARAMETER SYSINTC_SPEC = microblaze_0_intc
 PARAMETER MAX_PTHREADS = 20
 PARAMETER PTHREAD_STACK_SIZE = 32768
 PARAMETER CONFIG_PTHREAD_MUTEX = true
 PARAMETER MAX_PTHREAD_MUTEX = 50
 PARAMETER MAX_PTHREAD_MUTEX_WAITQ = 20
 PARAMETER CONFIG_TIME = true
 PARAMETER MAX_TMRS = 50
 PARAMETER CONFIG_SEMA = true
 PARAMETER MAX_SEM = 50
 PARAMETER STATIC_PTHREAD_TABLE = ((main_thread,1))
END


BEGIN PROCESSOR
 PARAMETER DRIVER_NAME = cpu
 PARAMETER DRIVER_VER = 1.14.a
 PARAMETER HW_INSTANCE = microblaze_0
END


BEGIN DRIVER
 PARAMETER DRIVER_NAME = tmrctr
 PARAMETER DRIVER_VER = 2.04.a
 PARAMETER HW_INSTANCE = axi_timer_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = v6_ddrx
 PARAMETER DRIVER_VER = 2.00.a
 PARAMETER HW_INSTANCE = ddr3_sdram
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = uartlite
 PARAMETER DRIVER_VER = 2.00.a
 PARAMETER HW_INSTANCE = debug_module
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = gpio
 PARAMETER DRIVER_VER = 3.00.a
 PARAMETER HW_INSTANCE = dip_switches_8bits
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = axiethernet
 PARAMETER DRIVER_VER = 3.00.a
 PARAMETER HW_INSTANCE = ethernet
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = axidma
 PARAMETER DRIVER_VER = 7.00.a
 PARAMETER HW_INSTANCE = ethernet_dma
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = gpio
 PARAMETER DRIVER_VER = 3.00.a
 PARAMETER HW_INSTANCE = leds_8bits
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = bram
 PARAMETER DRIVER_VER = 3.01.a
 PARAMETER HW_INSTANCE = microblaze_0_d_bram_ctrl
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = bram
 PARAMETER DRIVER_VER = 3.01.a
 PARAMETER HW_INSTANCE = microblaze_0_i_bram_ctrl
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = intc
 PARAMETER DRIVER_VER = 2.05.a
 PARAMETER HW_INSTANCE = microblaze_0_intc
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = gpio
 PARAMETER DRIVER_VER = 3.00.a
 PARAMETER HW_INSTANCE = push_buttons_5bits
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = uartlite
 PARAMETER DRIVER_VER = 2.00.a
 PARAMETER HW_INSTANCE = rs232_uart_1
END


BEGIN LIBRARY
 PARAMETER LIBRARY_NAME = lwip140
 PARAMETER LIBRARY_VER = 1.03.a
 PARAMETER PROC_INSTANCE = microblaze_0
 PARAMETER N_TX_DESCRIPTORS = 256
 PARAMETER N_RX_DESCRIPTORS = 256
 PARAMETER TCP_IP_RX_CHECKSUM_OFFLOAD = true
 PARAMETER TCP_IP_TX_CHECKSUM_OFFLOAD = true
 PARAMETER MEMP_N_PBUF = 1024
 PARAMETER MEMP_N_TCP_SEG = 1024
 PARAMETER PBUF_POOL_SIZE = 1024
 PARAMETER TCP_WND = 65535
 PARAMETER TCP_SND_BUF = 65535
 PARAMETER API_MODE = SOCKET_API
 PARAMETER LWIP_DHCP = true
END

BEGIN LIBRARY
 PARAMETER LIBRARY_NAME = xilmfs
 PARAMETER LIBRARY_VER = 1.00.a
 PARAMETER PROC_INSTANCE = microblaze_0
 PARAMETER NUMBYTES = 266000
 PARAMETER BASE_ADDRESS = 0xDF000000
 PARAMETER INIT_TYPE = MFSINIT_IMAGE
 PARAMETER NEED_UTILS = true
END

