
========================================================================

** ELF Header Information

    File Name: ./Objects/smart_nrf.axf

    Machine class: ELFCLASS32 (32-bit)
    Data encoding: ELFDATA2LSB (Little endian)
    Header version: EV_CURRENT (Current version)
    Operating System ABI: none
    ABI Version: 0
    File Type: ET_EXEC (Executable) (2)
    Machine: EM_ARM (ARM)

    Image Entry point: 0x1fff1841
    Flags: EF_ARM_HASENTRY + EF_ARM_ABI_FLOAT_SOFT (0x05000202)

    ARM ELF revision: 5 (ABI version 2)

    Conforms to Soft float procedure-call standard

    Built with
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armasm [4d35ec]
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armlink [4d35ed]

    Header size: 52 bytes (0x34)
    Program header entry size: 32 bytes (0x20)
    Section header entry size: 40 bytes (0x28)

    Program header entries: 2
    Section header entries: 18

    Program header offset: 312076 (0x0004c30c)
    Section header offset: 312140 (0x0004c34c)

    Section header string table index: 17

========================================================================

** Program header #0

    Type          : PT_LOAD (1)
    File Offset   : 22076 (0x563c)
    Virtual Addr  : 0x1fff0000
    Physical Addr : 0x1fff0000
    Size in file  : 1036 bytes (0x40c)
    Size in memory: 2048 bytes (0x800)
    Flags         : PF_W + PF_R (0x6)
    Alignment     : 4


====================================

** Program header #1

    Type          : PT_LOAD (1)
    File Offset   : 52 (0x34)
    Virtual Addr  : 0x1fff1838
    Physical Addr : 0x1fff1838
    Size in file  : 22024 bytes (0x5608)
    Size in memory: 26144 bytes (0x6620)
    Flags         : PF_X + PF_W + PF_R + PF_ARM_ENTRY (0x80000007)
    Alignment     : 8


========================================================================

** Section #1

    Name        : ER_IROM1
    Type        : SHT_PROGBITS (0x00000001)
    Flags       : SHF_ALLOC + SHF_EXECINSTR (0x00000006)
    Addr        : 0x1fff1838
    File Offset : 52 (0x34)
    Size        : 21764 bytes (0x5504)
    Link        : SHN_UNDEF
    Info        : 0
    Alignment   : 4
    Entry Size  : 0

    $d.realdata
    RESET
    __Vectors
        0x1fff1838:    1fff7e58    X~..    DCD    536837720
        0x1fff183c:    1fff188d    ....    DCD    536811661
    $t
    .ARM.Collect$$$$00000000
    .ARM.Collect$$$$00000001
    __Vectors_End
    __main
    _main_stk
        0x1fff1840:    4803        .H      LDR      r0,__lit__00000000 ; [0x1fff1850] = 0x1fff7e58
        0x1fff1842:    4685        .F      MOV      sp,r0
    .ARM.Collect$$$$00000004
    _main_scatterload
        0x1fff1844:    f000f82c    ..,.    BL       __scatterload ; 0x1fff18a0
    .ARM.Collect$$$$00000008
    .ARM.Collect$$$$0000000A
    .ARM.Collect$$$$0000000B
    __main_after_scatterload
    _main_clock
    _main_cpp_init
    _main_init
        0x1fff1848:    4800        .H      LDR      r0,[pc,#0] ; [0x1fff184c] = 0x1fff52c1
        0x1fff184a:    4700        .G      BX       r0
    $d
        0x1fff184c:    1fff52c1    .R..    DCD    536826561
    .ARM.Collect$$$$00002712
    __lit__00000000
    .ARM.Collect$$$$0000000D
    .ARM.Collect$$$$0000000F
    __rt_final_cpp
    __rt_final_exit
        0x1fff1850:    1fff7e58    X~..    DCD    536837720
    $t
    .emb_text
    hard_fault
        0x1fff1854:    480a        .H      LDR      r0,[pc,#40] ; [0x1fff1880] = 0x1fff0800
        0x1fff1856:    3848        H8      SUBS     r0,r0,#0x48
        0x1fff1858:    4669        iF      MOV      r1,sp
        0x1fff185a:    6001        .`      STR      r1,[r0,#0]
        0x1fff185c:    3004        .0      ADDS     r0,#4
        0x1fff185e:    c0f0        ..      STM      r0!,{r4-r7}
        0x1fff1860:    4644        DF      MOV      r4,r8
        0x1fff1862:    464d        MF      MOV      r5,r9
        0x1fff1864:    4656        VF      MOV      r6,r10
        0x1fff1866:    465f        _F      MOV      r7,r11
        0x1fff1868:    c0f0        ..      STM      r0!,{r4-r7}
        0x1fff186a:    bc30        0.      POP      {r4,r5}
        0x1fff186c:    bcf0        ..      POP      {r4-r7}
        0x1fff186e:    c0f0        ..      STM      r0!,{r4-r7}
        0x1fff1870:    bcf0        ..      POP      {r4-r7}
        0x1fff1872:    c0f0        ..      STM      r0!,{r4-r7}
        0x1fff1874:    3844        D8      SUBS     r0,r0,#0x44
        0x1fff1876:    4903        .I      LDR      r1,[pc,#12] ; [0x1fff1884] = 0x1fff2ec1
        0x1fff1878:    4a03        .J      LDR      r2,[pc,#12] ; [0x1fff1888] = 0x1fff1830
        0x1fff187a:    4695        .F      MOV      sp,r2
        0x1fff187c:    4708        .G      BX       r1
    $d
        0x1fff187e:    0000        ..      DCW    0
        0x1fff1880:    1fff0800    ....    DCD    536807424
        0x1fff1884:    1fff2ec1    ....    DCD    536817345
        0x1fff1888:    1fff1830    0...    DCD    536811568
    $t
    .text
    Reset_Handler
        0x1fff188c:    4802        .H      LDR      r0,[pc,#8] ; [0x1fff1898] = 0x1fff2c71
        0x1fff188e:    4780        .G      BLX      r0
        0x1fff1890:    4802        .H      LDR      r0,[pc,#8] ; [0x1fff189c] = 0x1fff1841
        0x1fff1892:    4700        .G      BX       r0
        0x1fff1894:    e7fe        ..      B        0x1fff1894 ; Reset_Handler + 8
    $d
        0x1fff1896:    0000        ..      DCW    0
        0x1fff1898:    1fff2c71    q,..    DCD    536816753
        0x1fff189c:    1fff1841    A...    DCD    536811585
    $t
    .text
    __scatterload
    __scatterload_rt2
        0x1fff18a0:    4c06        .L      LDR      r4,[pc,#24] ; [0x1fff18bc] = 0x1fff6d00
        0x1fff18a2:    2501        .%      MOVS     r5,#1
        0x1fff18a4:    4e06        .N      LDR      r6,[pc,#24] ; [0x1fff18c0] = 0x1fff6d30
        0x1fff18a6:    e005        ..      B        0x1fff18b4 ; __scatterload + 20
        0x1fff18a8:    68e3        .h      LDR      r3,[r4,#0xc]
        0x1fff18aa:    cc07        ..      LDM      r4!,{r0-r2}
        0x1fff18ac:    432b        +C      ORRS     r3,r3,r5
        0x1fff18ae:    3c0c        .<      SUBS     r4,r4,#0xc
        0x1fff18b0:    4798        .G      BLX      r3
        0x1fff18b2:    3410        .4      ADDS     r4,r4,#0x10
        0x1fff18b4:    42b4        .B      CMP      r4,r6
        0x1fff18b6:    d3f7        ..      BCC      0x1fff18a8 ; __scatterload + 8
        0x1fff18b8:    f7ffffc6    ....    BL       __main_after_scatterload ; 0x1fff1848
    $d
        0x1fff18bc:    1fff6d00    .m..    DCD    536833280
        0x1fff18c0:    1fff6d30    0m..    DCD    536833328
    $t
    .text
    __decompress
    __decompress0
        0x1fff18c4:    b530        0.      PUSH     {r4,r5,lr}
        0x1fff18c6:    188c        ..      ADDS     r4,r1,r2
        0x1fff18c8:    7802        .x      LDRB     r2,[r0,#0]
        0x1fff18ca:    1c40        @.      ADDS     r0,r0,#1
        0x1fff18cc:    0713        ..      LSLS     r3,r2,#28
        0x1fff18ce:    0f1b        ..      LSRS     r3,r3,#28
        0x1fff18d0:    d101        ..      BNE      0x1fff18d6 ; __decompress + 18
        0x1fff18d2:    7803        .x      LDRB     r3,[r0,#0]
        0x1fff18d4:    1c40        @.      ADDS     r0,r0,#1
        0x1fff18d6:    0912        ..      LSRS     r2,r2,#4
        0x1fff18d8:    d106        ..      BNE      0x1fff18e8 ; __decompress + 36
        0x1fff18da:    7802        .x      LDRB     r2,[r0,#0]
        0x1fff18dc:    1c40        @.      ADDS     r0,r0,#1
        0x1fff18de:    e003        ..      B        0x1fff18e8 ; __decompress + 36
        0x1fff18e0:    7805        .x      LDRB     r5,[r0,#0]
        0x1fff18e2:    700d        .p      STRB     r5,[r1,#0]
        0x1fff18e4:    1c40        @.      ADDS     r0,r0,#1
        0x1fff18e6:    1c49        I.      ADDS     r1,r1,#1
        0x1fff18e8:    1e5b        [.      SUBS     r3,r3,#1
        0x1fff18ea:    d1f9        ..      BNE      0x1fff18e0 ; __decompress + 28
        0x1fff18ec:    e001        ..      B        0x1fff18f2 ; __decompress + 46
        0x1fff18ee:    700b        .p      STRB     r3,[r1,#0]
        0x1fff18f0:    1c49        I.      ADDS     r1,r1,#1
        0x1fff18f2:    1e52        R.      SUBS     r2,r2,#1
        0x1fff18f4:    d1fb        ..      BNE      0x1fff18ee ; __decompress + 42
        0x1fff18f6:    42a1        .B      CMP      r1,r4
        0x1fff18f8:    d3e6        ..      BCC      0x1fff18c8 ; __decompress + 4
        0x1fff18fa:    2000        .       MOVS     r0,#0
        0x1fff18fc:    bd30        0.      POP      {r4,r5,pc}
        0x1fff18fe:    0000        ..      MOVS     r0,r0
    $Ven$TT$L$$drv_disable_irq
        0x1fff1900:    b403        ..      PUSH     {r0,r1}
        0x1fff1902:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1908] = 0xa975
        0x1fff1904:    9001        ..      STR      r0,[sp,#4]
        0x1fff1906:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1908:    0000a975    u...    DCD    43381
    $t
    $Ven$TT$L$$LL_Disconnect0
        0x1fff190c:    b403        ..      PUSH     {r0,r1}
        0x1fff190e:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1914] = 0x3ec9
        0x1fff1910:    9001        ..      STR      r0,[sp,#4]
        0x1fff1912:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1914:    00003ec9    .>..    DCD    16073
    $t
    $Ven$TT$L$$drv_enable_irq
        0x1fff1918:    b403        ..      PUSH     {r0,r1}
        0x1fff191a:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1920] = 0xa99d
        0x1fff191c:    9001        ..      STR      r0,[sp,#4]
        0x1fff191e:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1920:    0000a99d    ....    DCD    43421
    $t
    $Ven$TT$L$$LL_SetDataLengh0
        0x1fff1924:    b403        ..      PUSH     {r0,r1}
        0x1fff1926:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff192c] = 0x6e11
        0x1fff1928:    9001        ..      STR      r0,[sp,#4]
        0x1fff192a:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff192c:    00006e11    .n..    DCD    28177
    $t
    $Ven$TT$L$$llEnqueueDataQ
        0x1fff1930:    b403        ..      PUSH     {r0,r1}
        0x1fff1932:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1938] = 0xb98b
        0x1fff1934:    9001        ..      STR      r0,[sp,#4]
        0x1fff1936:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1938:    0000b98b    ....    DCD    47499
    $t
    $Ven$TT$L$$llProcessTxData
        0x1fff193c:    b403        ..      PUSH     {r0,r1}
        0x1fff193e:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1944] = 0xd4d1
        0x1fff1940:    9001        ..      STR      r0,[sp,#4]
        0x1fff1942:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1944:    0000d4d1    ....    DCD    54481
    $t
    $Ven$TT$L$$config_RTC
        0x1fff1948:    b403        ..      PUSH     {r0,r1}
        0x1fff194a:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1950] = 0xa6f9
        0x1fff194c:    9001        ..      STR      r0,[sp,#4]
        0x1fff194e:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1950:    0000a6f9    ....    DCD    42745
    $t
    $Ven$TT$L$$enter_sleep_off_mode
        0x1fff1954:    b403        ..      PUSH     {r0,r1}
        0x1fff1956:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff195c] = 0xafa1
        0x1fff1958:    9001        ..      STR      r0,[sp,#4]
        0x1fff195a:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff195c:    0000afa1    ....    DCD    44961
    $t
    $Ven$TT$L$$LL_CreateConnCancel0
        0x1fff1960:    b403        ..      PUSH     {r0,r1}
        0x1fff1962:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1968] = 0x3ca9
        0x1fff1964:    9001        ..      STR      r0,[sp,#4]
        0x1fff1966:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1968:    00003ca9    .<..    DCD    15529
    $t
    $Ven$TT$L$$enableSleep
        0x1fff196c:    b403        ..      PUSH     {r0,r1}
        0x1fff196e:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1974] = 0xaead
        0x1fff1970:    9001        ..      STR      r0,[sp,#4]
        0x1fff1972:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1974:    0000aead    ....    DCD    44717
    $t
    $Ven$TT$L$$setSleepMode
        0x1fff1978:    b403        ..      PUSH     {r0,r1}
        0x1fff197a:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1980] = 0x16b45
        0x1fff197c:    9001        ..      STR      r0,[sp,#4]
        0x1fff197e:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1980:    00016b45    Ek..    DCD    92997
    $t
    $Ven$TT$L$$LL_ENC_AES128_Encrypt0
        0x1fff1984:    b403        ..      PUSH     {r0,r1}
        0x1fff1986:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff198c] = 0x3fdd
        0x1fff1988:    9001        ..      STR      r0,[sp,#4]
        0x1fff198a:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff198c:    00003fdd    .?..    DCD    16349
    $t
    $Ven$TT$L$$LL_ENC_LoadKey
        0x1fff1990:    b403        ..      PUSH     {r0,r1}
        0x1fff1992:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1998] = 0x4489
        0x1fff1994:    9001        ..      STR      r0,[sp,#4]
        0x1fff1996:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1998:    00004489    .D..    DCD    17545
    $t
    $Ven$TT$L$$LL_ENC_GenerateNonce
        0x1fff199c:    b403        ..      PUSH     {r0,r1}
        0x1fff199e:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff19a4] = 0x4421
        0x1fff19a0:    9001        ..      STR      r0,[sp,#4]
        0x1fff19a2:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff19a4:    00004421    !D..    DCD    17441
    $t
    $Ven$TT$L$$__aeabi_uread4
        0x1fff19a8:    b403        ..      PUSH     {r0,r1}
        0x1fff19aa:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff19b0] = 0xf75
        0x1fff19ac:    9001        ..      STR      r0,[sp,#4]
        0x1fff19ae:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff19b0:    00000f75    u...    DCD    3957
    $t
    $Ven$TT$L$$read_current_fine_time
        0x1fff19b4:    b403        ..      PUSH     {r0,r1}
        0x1fff19b6:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff19bc] = 0x15cc9
        0x1fff19b8:    9001        ..      STR      r0,[sp,#4]
        0x1fff19ba:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff19bc:    00015cc9    .\..    DCD    89289
    $t
    $Ven$TT$L$$ll_debug_output
        0x1fff19c0:    b403        ..      PUSH     {r0,r1}
        0x1fff19c2:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff19c8] = 0x10719
        0x1fff19c4:    9001        ..      STR      r0,[sp,#4]
        0x1fff19c6:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff19c8:    00010719    ....    DCD    67353
    $t
    $Ven$TT$L$$ll_hw_get_irq_status
        0x1fff19cc:    b403        ..      PUSH     {r0,r1}
        0x1fff19ce:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff19d4] = 0x10bbd
        0x1fff19d0:    9001        ..      STR      r0,[sp,#4]
        0x1fff19d2:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff19d4:    00010bbd    ....    DCD    68541
    $t
    $Ven$TT$L$$ll_hw_get_tr_mode
        0x1fff19d8:    b403        ..      PUSH     {r0,r1}
        0x1fff19da:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff19e0] = 0x10cdd
        0x1fff19dc:    9001        ..      STR      r0,[sp,#4]
        0x1fff19de:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff19e0:    00010cdd    ....    DCD    68829
    $t
    $Ven$TT$L$$ll_hw_clr_irq
        0x1fff19e4:    b403        ..      PUSH     {r0,r1}
        0x1fff19e6:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff19ec] = 0x10add
        0x1fff19e8:    9001        ..      STR      r0,[sp,#4]
        0x1fff19ea:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff19ec:    00010add    ....    DCD    68317
    $t
    $Ven$TT$L$$ll_processExtAdvIRQ
        0x1fff19f0:    b403        ..      PUSH     {r0,r1}
        0x1fff19f2:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff19f8] = 0x13401
        0x1fff19f4:    9001        ..      STR      r0,[sp,#4]
        0x1fff19f6:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff19f8:    00013401    .4..    DCD    78849
    $t
    $Ven$TT$L$$ll_processExtScanIRQ
        0x1fff19fc:    b403        ..      PUSH     {r0,r1}
        0x1fff19fe:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1a04] = 0x13409
        0x1fff1a00:    9001        ..      STR      r0,[sp,#4]
        0x1fff1a02:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1a04:    00013409    .4..    DCD    78857
    $t
    $Ven$TT$L$$ll_processExtInitIRQ
        0x1fff1a08:    b403        ..      PUSH     {r0,r1}
        0x1fff1a0a:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1a10] = 0x13405
        0x1fff1a0c:    9001        ..      STR      r0,[sp,#4]
        0x1fff1a0e:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1a10:    00013405    .4..    DCD    78853
    $t
    $Ven$TT$L$$ll_processPrdAdvIRQ
        0x1fff1a14:    b403        ..      PUSH     {r0,r1}
        0x1fff1a16:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1a1c] = 0x135f5
        0x1fff1a18:    9001        ..      STR      r0,[sp,#4]
        0x1fff1a1a:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1a1c:    000135f5    .5..    DCD    79349
    $t
    $Ven$TT$L$$ll_processPrdScanIRQ
        0x1fff1a20:    b403        ..      PUSH     {r0,r1}
        0x1fff1a22:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1a28] = 0x135f9
        0x1fff1a24:    9001        ..      STR      r0,[sp,#4]
        0x1fff1a26:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1a28:    000135f9    .5..    DCD    79353
    $t
    $Ven$TT$L$$ll_processBasicIRQ
        0x1fff1a2c:    b403        ..      PUSH     {r0,r1}
        0x1fff1a2e:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1a34] = 0x117e9
        0x1fff1a30:    9001        ..      STR      r0,[sp,#4]
        0x1fff1a32:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1a34:    000117e9    ....    DCD    71657
    $t
    $Ven$TT$L$$ll_schedule_next_event
        0x1fff1a38:    b403        ..      PUSH     {r0,r1}
        0x1fff1a3a:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1a40] = 0x13761
        0x1fff1a3c:    9001        ..      STR      r0,[sp,#4]
        0x1fff1a3e:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1a40:    00013761    a7..    DCD    79713
    $t
    $Ven$TT$L$$llSecAdvAllow
        0x1fff1a44:    b403        ..      PUSH     {r0,r1}
        0x1fff1a46:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1a4c] = 0xd701
        0x1fff1a48:    9001        ..      STR      r0,[sp,#4]
        0x1fff1a4a:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1a4c:    0000d701    ....    DCD    55041
    $t
    $Ven$TT$L$$llSetupSecAdvEvt
        0x1fff1a50:    b403        ..      PUSH     {r0,r1}
        0x1fff1a52:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1a58] = 0xf66d
        0x1fff1a54:    9001        ..      STR      r0,[sp,#4]
        0x1fff1a56:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1a58:    0000f66d    m...    DCD    63085
    $t
    $Ven$TT$L$$ll_hw_set_rx_timeout
        0x1fff1a5c:    b403        ..      PUSH     {r0,r1}
        0x1fff1a5e:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1a64] = 0x11279
        0x1fff1a60:    9001        ..      STR      r0,[sp,#4]
        0x1fff1a62:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1a64:    00011279    y...    DCD    70265
    $t
    $Ven$TT$L$$llSetupSecScan
        0x1fff1a68:    b403        ..      PUSH     {r0,r1}
        0x1fff1a6a:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1a70] = 0xf94d
        0x1fff1a6c:    9001        ..      STR      r0,[sp,#4]
        0x1fff1a6e:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1a70:    0000f94d    M...    DCD    63821
    $t
    $Ven$TT$L$$llSetupSecInit
        0x1fff1a74:    b403        ..      PUSH     {r0,r1}
        0x1fff1a76:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1a7c] = 0xf7c1
        0x1fff1a78:    9001        ..      STR      r0,[sp,#4]
        0x1fff1a7a:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1a7c:    0000f7c1    ....    DCD    63425
    $t
    $Ven$TT$L$$LL_DisconnectCback
        0x1fff1a80:    b403        ..      PUSH     {r0,r1}
        0x1fff1a82:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1a88] = 0x3f41
        0x1fff1a84:    9001        ..      STR      r0,[sp,#4]
        0x1fff1a86:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1a88:    00003f41    A?..    DCD    16193
    $t
    $Ven$TT$L$$LL_ProcessEvent0
        0x1fff1a8c:    b403        ..      PUSH     {r0,r1}
        0x1fff1a8e:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1a94] = 0x5a09
        0x1fff1a90:    9001        ..      STR      r0,[sp,#4]
        0x1fff1a92:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1a94:    00005a09    .Z..    DCD    23049
    $t
    $Ven$TT$L$$LL_Reset0
        0x1fff1a98:    b403        ..      PUSH     {r0,r1}
        0x1fff1a9a:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1aa0] = 0x6609
        0x1fff1a9c:    9001        ..      STR      r0,[sp,#4]
        0x1fff1a9e:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1aa0:    00006609    .f..    DCD    26121
    $t
    $Ven$TT$L$$LL_set_default_conn_params0
        0x1fff1aa4:    b403        ..      PUSH     {r0,r1}
        0x1fff1aa6:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1aac] = 0x828d
        0x1fff1aa8:    9001        ..      STR      r0,[sp,#4]
        0x1fff1aaa:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1aac:    0000828d    ....    DCD    33421
    $t
    $Ven$TT$L$$ll_hw_read_rfifo
        0x1fff1ab0:    b403        ..      PUSH     {r0,r1}
        0x1fff1ab2:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1ab8] = 0x10e6d
        0x1fff1ab4:    9001        ..      STR      r0,[sp,#4]
        0x1fff1ab6:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1ab8:    00010e6d    m...    DCD    69229
    $t
    $Ven$TT$L$$osal_memcmp
        0x1fff1abc:    b403        ..      PUSH     {r0,r1}
        0x1fff1abe:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1ac4] = 0x14ccd
        0x1fff1ac0:    9001        ..      STR      r0,[sp,#4]
        0x1fff1ac2:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1ac4:    00014ccd    .L..    DCD    85197
    $t
    $Ven$TT$L$$osal_memcpy
        0x1fff1ac8:    b403        ..      PUSH     {r0,r1}
        0x1fff1aca:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1ad0] = 0x14ce9
        0x1fff1acc:    9001        ..      STR      r0,[sp,#4]
        0x1fff1ace:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1ad0:    00014ce9    .L..    DCD    85225
    $t
    $Ven$TT$L$$ll_hw_set_crc_fmt
        0x1fff1ad4:    b403        ..      PUSH     {r0,r1}
        0x1fff1ad6:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1adc] = 0x1112d
        0x1fff1ad8:    9001        ..      STR      r0,[sp,#4]
        0x1fff1ada:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1adc:    0001112d    -...    DCD    69933
    $t
    $Ven$TT$L$$osal_memset
        0x1fff1ae0:    b403        ..      PUSH     {r0,r1}
        0x1fff1ae2:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1ae8] = 0x14d15
        0x1fff1ae4:    9001        ..      STR      r0,[sp,#4]
        0x1fff1ae6:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1ae8:    00014d15    .M..    DCD    85269
    $t
    $Ven$TT$L$$osal_set_event
        0x1fff1aec:    b403        ..      PUSH     {r0,r1}
        0x1fff1aee:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1af4] = 0x1520d
        0x1fff1af0:    9001        ..      STR      r0,[sp,#4]
        0x1fff1af2:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1af4:    0001520d    .R..    DCD    86541
    $t
    $Ven$TT$L$$osal_start_timerEx
        0x1fff1af8:    b403        ..      PUSH     {r0,r1}
        0x1fff1afa:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1b00] = 0x1528b
        0x1fff1afc:    9001        ..      STR      r0,[sp,#4]
        0x1fff1afe:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1b00:    0001528b    .R..    DCD    86667
    $t
    $Ven$TT$L$$efuse_read
        0x1fff1b04:    b403        ..      PUSH     {r0,r1}
        0x1fff1b06:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1b0c] = 0xace1
        0x1fff1b08:    9001        ..      STR      r0,[sp,#4]
        0x1fff1b0a:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1b0c:    0000ace1    ....    DCD    44257
    $t
    $Ven$TT$L$$rom_uart_init
        0x1fff1b10:    b403        ..      PUSH     {r0,r1}
        0x1fff1b12:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1b18] = 0xb379
        0x1fff1b14:    9001        ..      STR      r0,[sp,#4]
        0x1fff1b16:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1b18:    0000b379    y...    DCD    45945
    $t
    $Ven$TT$L$$log_printf
        0x1fff1b1c:    b403        ..      PUSH     {r0,r1}
        0x1fff1b1e:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1b24] = 0x13ae5
        0x1fff1b20:    9001        ..      STR      r0,[sp,#4]
        0x1fff1b22:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1b24:    00013ae5    .:..    DCD    80613
    $t
    $Ven$TT$L$$rtc_get_counter
        0x1fff1b28:    b403        ..      PUSH     {r0,r1}
        0x1fff1b2a:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1b30] = 0x16b15
        0x1fff1b2c:    9001        ..      STR      r0,[sp,#4]
        0x1fff1b2e:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1b30:    00016b15    .k..    DCD    92949
    $t
    $Ven$TT$L$$osal_init_system
        0x1fff1b34:    b403        ..      PUSH     {r0,r1}
        0x1fff1b36:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1b3c] = 0x14aed
        0x1fff1b38:    9001        ..      STR      r0,[sp,#4]
        0x1fff1b3a:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1b3c:    00014aed    .J..    DCD    84717
    $t
    $Ven$TT$L$$osal_pwrmgr_device
        0x1fff1b40:    b403        ..      PUSH     {r0,r1}
        0x1fff1b42:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1b48] = 0x14fa5
        0x1fff1b44:    9001        ..      STR      r0,[sp,#4]
        0x1fff1b46:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1b48:    00014fa5    .O..    DCD    85925
    $t
    $Ven$TT$L$$osal_start_system
        0x1fff1b4c:    b403        ..      PUSH     {r0,r1}
        0x1fff1b4e:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1b54] = 0x15285
        0x1fff1b50:    9001        ..      STR      r0,[sp,#4]
        0x1fff1b52:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1b54:    00015285    .R..    DCD    86661
    $t
    $Ven$TT$L$$WaitRTCCount
        0x1fff1b58:    b403        ..      PUSH     {r0,r1}
        0x1fff1b5a:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1b60] = 0x8901
        0x1fff1b5c:    9001        ..      STR      r0,[sp,#4]
        0x1fff1b5e:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1b60:    00008901    ....    DCD    35073
    $t
    $Ven$TT$L$$set_sleep_flag
        0x1fff1b64:    b403        ..      PUSH     {r0,r1}
        0x1fff1b66:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1b6c] = 0x16c01
        0x1fff1b68:    9001        ..      STR      r0,[sp,#4]
        0x1fff1b6a:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1b6c:    00016c01    .l..    DCD    93185
    $t
    $Ven$TT$L$$read_LL_remainder_time
        0x1fff1b70:    b403        ..      PUSH     {r0,r1}
        0x1fff1b72:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1b78] = 0x15cbd
        0x1fff1b74:    9001        ..      STR      r0,[sp,#4]
        0x1fff1b76:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1b78:    00015cbd    .\..    DCD    89277
    $t
    $Ven$TT$L$$ll_hw_set_rx_timeout_1st
        0x1fff1b7c:    b403        ..      PUSH     {r0,r1}
        0x1fff1b7e:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1b84] = 0x11285
        0x1fff1b80:    9001        ..      STR      r0,[sp,#4]
        0x1fff1b82:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1b84:    00011285    ....    DCD    70277
    $t
    $Ven$TT$L$$enterSleepProcess0
        0x1fff1b88:    b403        ..      PUSH     {r0,r1}
        0x1fff1b8a:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1b90] = 0xaed1
        0x1fff1b8c:    9001        ..      STR      r0,[sp,#4]
        0x1fff1b8e:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1b90:    0000aed1    ....    DCD    44753
    $t
    $Ven$TT$L$$LL_ENC_AES128_Encrypt
        0x1fff1b94:    b403        ..      PUSH     {r0,r1}
        0x1fff1b96:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1b9c] = 0x3fc5
        0x1fff1b98:    9001        ..      STR      r0,[sp,#4]
        0x1fff1b9a:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1b9c:    00003fc5    .?..    DCD    16325
    $t
    $Ven$TT$L$$__aeabi_memclr4
        0x1fff1ba0:    b403        ..      PUSH     {r0,r1}
        0x1fff1ba2:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1ba8] = 0xeb3
        0x1fff1ba4:    9001        ..      STR      r0,[sp,#4]
        0x1fff1ba6:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1ba8:    00000eb3    ....    DCD    3763
    $t
    $Ven$TT$L$$__aeabi_memcpy4
        0x1fff1bac:    b403        ..      PUSH     {r0,r1}
        0x1fff1bae:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1bb4] = 0xe81
        0x1fff1bb0:    9001        ..      STR      r0,[sp,#4]
        0x1fff1bb2:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1bb4:    00000e81    ....    DCD    3713
    $t
    $Ven$TT$L$$disableSleep
        0x1fff1bb8:    b403        ..      PUSH     {r0,r1}
        0x1fff1bba:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1bc0] = 0xa921
        0x1fff1bbc:    9001        ..      STR      r0,[sp,#4]
        0x1fff1bbe:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1bc0:    0000a921    !...    DCD    43297
    $t
    $Ven$TT$L$$osal_mem_set_heap
        0x1fff1bc4:    b403        ..      PUSH     {r0,r1}
        0x1fff1bc6:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1bcc] = 0x14cb5
        0x1fff1bc8:    9001        ..      STR      r0,[sp,#4]
        0x1fff1bca:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1bcc:    00014cb5    .L..    DCD    85173
    $t
    $Ven$TT$L$$spif_config
        0x1fff1bd0:    b403        ..      PUSH     {r0,r1}
        0x1fff1bd2:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1bd8] = 0x16dc5
        0x1fff1bd4:    9001        ..      STR      r0,[sp,#4]
        0x1fff1bd6:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1bd8:    00016dc5    .m..    DCD    93637
    $t
    $Ven$TT$L$$spif_read_id
        0x1fff1bdc:    b403        ..      PUSH     {r0,r1}
        0x1fff1bde:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1be4] = 0x17209
        0x1fff1be0:    9001        ..      STR      r0,[sp,#4]
        0x1fff1be2:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1be4:    00017209    .r..    DCD    94729
    $t
    $Ven$TT$L$$llProcessTxData0
        0x1fff1be8:    b403        ..      PUSH     {r0,r1}
        0x1fff1bea:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1bf0] = 0xd4e9
        0x1fff1bec:    9001        ..      STR      r0,[sp,#4]
        0x1fff1bee:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1bf0:    0000d4e9    ....    DCD    54505
    $t
    $Ven$TT$L$$llReleaseConnId0
        0x1fff1bf4:    b403        ..      PUSH     {r0,r1}
        0x1fff1bf6:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1bfc] = 0xd579
        0x1fff1bf8:    9001        ..      STR      r0,[sp,#4]
        0x1fff1bfa:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1bfc:    0000d579    y...    DCD    54649
    $t
    $Ven$TT$L$$llSlaveEvt_TaskEndOk0
        0x1fff1c00:    b403        ..      PUSH     {r0,r1}
        0x1fff1c02:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1c08] = 0xffad
        0x1fff1c04:    9001        ..      STR      r0,[sp,#4]
        0x1fff1c06:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1c08:    0000ffad    ....    DCD    65453
    $t
    $Ven$TT$L$$getTxBufferFree
        0x1fff1c0c:    b403        ..      PUSH     {r0,r1}
        0x1fff1c0e:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1c14] = 0xb05d
        0x1fff1c10:    9001        ..      STR      r0,[sp,#4]
        0x1fff1c12:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1c14:    0000b05d    ]...    DCD    45149
    $t
    $Ven$TT$L$$get_tx_write_ptr
        0x1fff1c18:    b403        ..      PUSH     {r0,r1}
        0x1fff1c1a:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1c20] = 0xb0e1
        0x1fff1c1c:    9001        ..      STR      r0,[sp,#4]
        0x1fff1c1e:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1c20:    0000b0e1    ....    DCD    45281
    $t
    $Ven$TT$L$$LL_ENC_Encrypt
        0x1fff1c24:    b403        ..      PUSH     {r0,r1}
        0x1fff1c26:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1c2c] = 0x4261
        0x1fff1c28:    9001        ..      STR      r0,[sp,#4]
        0x1fff1c2a:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1c2c:    00004261    aB..    DCD    16993
    $t
    $Ven$TT$L$$__aeabi_memcpy
        0x1fff1c30:    b403        ..      PUSH     {r0,r1}
        0x1fff1c32:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1c38] = 0xe81
        0x1fff1c34:    9001        ..      STR      r0,[sp,#4]
        0x1fff1c36:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1c38:    00000e81    ....    DCD    3713
    $t
    $Ven$TT$L$$update_tx_write_ptr
        0x1fff1c3c:    b403        ..      PUSH     {r0,r1}
        0x1fff1c3e:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1c44] = 0x17685
        0x1fff1c40:    9001        ..      STR      r0,[sp,#4]
        0x1fff1c42:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1c44:    00017685    .v..    DCD    95877
    $t
    $Ven$TT$L$$ll_hw_write_tfifo
        0x1fff1c48:    b403        ..      PUSH     {r0,r1}
        0x1fff1c4a:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1c50] = 0x115c1
        0x1fff1c4c:    9001        ..      STR      r0,[sp,#4]
        0x1fff1c4e:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1c50:    000115c1    ....    DCD    71105
    $t
    $Ven$TT$L$$ll_hw_get_tfifo_wrptr
        0x1fff1c54:    b403        ..      PUSH     {r0,r1}
        0x1fff1c56:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1c5c] = 0x10ccd
        0x1fff1c58:    9001        ..      STR      r0,[sp,#4]
        0x1fff1c5a:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1c5c:    00010ccd    ....    DCD    68813
    $t
    $Ven$TT$L$$getTxBufferSize
        0x1fff1c60:    b403        ..      PUSH     {r0,r1}
        0x1fff1c62:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1c68] = 0xb071
        0x1fff1c64:    9001        ..      STR      r0,[sp,#4]
        0x1fff1c66:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1c68:    0000b071    q...    DCD    45169
    $t
    $Ven$TT$L$$get_tx_read_ptr
        0x1fff1c6c:    b403        ..      PUSH     {r0,r1}
        0x1fff1c6e:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1c74] = 0xb0d9
        0x1fff1c70:    9001        ..      STR      r0,[sp,#4]
        0x1fff1c72:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1c74:    0000b0d9    ....    DCD    45273
    $t
    $Ven$TT$L$$update_tx_read_ptr
        0x1fff1c78:    b403        ..      PUSH     {r0,r1}
        0x1fff1c7a:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1c80] = 0x17659
        0x1fff1c7c:    9001        ..      STR      r0,[sp,#4]
        0x1fff1c7e:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1c80:    00017659    Yv..    DCD    95833
    $t
    $Ven$TT$L$$llEnqueueCtrlPkt
        0x1fff1c84:    b403        ..      PUSH     {r0,r1}
        0x1fff1c86:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1c8c] = 0xb953
        0x1fff1c88:    9001        ..      STR      r0,[sp,#4]
        0x1fff1c8a:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1c8c:    0000b953    S...    DCD    47443
    $t
    $Ven$TT$L$$ll_hw_set_loop_timeout
        0x1fff1c90:    b403        ..      PUSH     {r0,r1}
        0x1fff1c92:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1c98] = 0x1118d
        0x1fff1c94:    9001        ..      STR      r0,[sp,#4]
        0x1fff1c96:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1c98:    0001118d    ....    DCD    70029
    $t
    $Ven$TT$L$$get_rx_write_ptr
        0x1fff1c9c:    b403        ..      PUSH     {r0,r1}
        0x1fff1c9e:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1ca4] = 0xb0b9
        0x1fff1ca0:    9001        ..      STR      r0,[sp,#4]
        0x1fff1ca2:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1ca4:    0000b0b9    ....    DCD    45241
    $t
    $Ven$TT$L$$getRxBufferFree
        0x1fff1ca8:    b403        ..      PUSH     {r0,r1}
        0x1fff1caa:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1cb0] = 0xb01d
        0x1fff1cac:    9001        ..      STR      r0,[sp,#4]
        0x1fff1cae:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1cb0:    0000b01d    ....    DCD    45085
    $t
    $Ven$TT$L$$set_max_length
        0x1fff1cb4:    b403        ..      PUSH     {r0,r1}
        0x1fff1cb6:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1cbc] = 0x16bed
        0x1fff1cb8:    9001        ..      STR      r0,[sp,#4]
        0x1fff1cba:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1cbc:    00016bed    .k..    DCD    93165
    $t
    $Ven$TT$L$$ll_hw_read_tfifo_packet
        0x1fff1cc0:    b403        ..      PUSH     {r0,r1}
        0x1fff1cc2:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1cc8] = 0x10fad
        0x1fff1cc4:    9001        ..      STR      r0,[sp,#4]
        0x1fff1cc6:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1cc8:    00010fad    ....    DCD    69549
    $t
    $Ven$TT$L$$osal_mem_alloc
        0x1fff1ccc:    b403        ..      PUSH     {r0,r1}
        0x1fff1cce:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1cd4] = 0x14b3d
        0x1fff1cd0:    9001        ..      STR      r0,[sp,#4]
        0x1fff1cd2:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1cd4:    00014b3d    =K..    DCD    84797
    $t
    $Ven$TT$L$$ll_read_rxfifo0
        0x1fff1cd8:    b403        ..      PUSH     {r0,r1}
        0x1fff1cda:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1ce0] = 0x136cd
        0x1fff1cdc:    9001        ..      STR      r0,[sp,#4]
        0x1fff1cde:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1ce0:    000136cd    .6..    DCD    79565
    $t
    $Ven$TT$L$$drv_irq_init
        0x1fff1ce4:    b403        ..      PUSH     {r0,r1}
        0x1fff1ce6:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1cec] = 0xa9c9
        0x1fff1ce8:    9001        ..      STR      r0,[sp,#4]
        0x1fff1cea:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1cec:    0000a9c9    ....    DCD    43465
    $t
    $Ven$TT$L$$__aeabi_uidivmod
        0x1fff1cf0:    b403        ..      PUSH     {r0,r1}
        0x1fff1cf2:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1cf8] = 0xe09
        0x1fff1cf4:    9001        ..      STR      r0,[sp,#4]
        0x1fff1cf6:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1cf8:    00000e09    ....    DCD    3593
    $t
    $Ven$TT$L$$osal_pwrmgr_powerconserve0
        0x1fff1cfc:    b403        ..      PUSH     {r0,r1}
        0x1fff1cfe:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1d04] = 0x14fd9
        0x1fff1d00:    9001        ..      STR      r0,[sp,#4]
        0x1fff1d02:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1d04:    00014fd9    .O..    DCD    85977
    $t
    $Ven$TT$L$$ll_hw_ign_rfifo
        0x1fff1d08:    b403        ..      PUSH     {r0,r1}
        0x1fff1d0a:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1d10] = 0x10df9
        0x1fff1d0c:    9001        ..      STR      r0,[sp,#4]
        0x1fff1d0e:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1d10:    00010df9    ....    DCD    69113
    $t
    $Ven$TT$L$$ll_hw_set_srx
        0x1fff1d14:    b403        ..      PUSH     {r0,r1}
        0x1fff1d16:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1d1c] = 0x112a5
        0x1fff1d18:    9001        ..      STR      r0,[sp,#4]
        0x1fff1d1a:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1d1c:    000112a5    ....    DCD    70309
    $t
    $Ven$TT$L$$ll_hw_set_trx_settle
        0x1fff1d20:    b403        ..      PUSH     {r0,r1}
        0x1fff1d22:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1d28] = 0x113dd
        0x1fff1d24:    9001        ..      STR      r0,[sp,#4]
        0x1fff1d26:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1d28:    000113dd    ....    DCD    70621
    $t
    $Ven$TT$L$$ll_hw_set_tx_rx_release
        0x1fff1d2c:    b403        ..      PUSH     {r0,r1}
        0x1fff1d2e:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1d34] = 0x11405
        0x1fff1d30:    9001        ..      STR      r0,[sp,#4]
        0x1fff1d32:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1d34:    00011405    ....    DCD    70661
    $t
    $Ven$TT$L$$ll_hw_set_rx_tx_interval
        0x1fff1d38:    b403        ..      PUSH     {r0,r1}
        0x1fff1d3a:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1d40] = 0x11291
        0x1fff1d3c:    9001        ..      STR      r0,[sp,#4]
        0x1fff1d3e:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1d40:    00011291    ....    DCD    70289
    $t
    $Ven$TT$L$$ll_hw_set_tx_rx_interval
        0x1fff1d44:    b403        ..      PUSH     {r0,r1}
        0x1fff1d46:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1d4c] = 0x113f1
        0x1fff1d48:    9001        ..      STR      r0,[sp,#4]
        0x1fff1d4a:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1d4c:    000113f1    ....    DCD    70641
    $t
    $Ven$TT$L$$ll_hw_rst_tfifo
        0x1fff1d50:    b403        ..      PUSH     {r0,r1}
        0x1fff1d52:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1d58] = 0x110e9
        0x1fff1d54:    9001        ..      STR      r0,[sp,#4]
        0x1fff1d56:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1d58:    000110e9    ....    DCD    69865
    $t
    $Ven$TT$L$$ll_hw_rst_rfifo
        0x1fff1d5c:    b403        ..      PUSH     {r0,r1}
        0x1fff1d5e:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1d64] = 0x110b1
        0x1fff1d60:    9001        ..      STR      r0,[sp,#4]
        0x1fff1d62:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1d64:    000110b1    ....    DCD    69809
    $t
    $Ven$TT$L$$ll_hw_set_stx
        0x1fff1d68:    b403        ..      PUSH     {r0,r1}
        0x1fff1d6a:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1d70] = 0x112b9
        0x1fff1d6c:    9001        ..      STR      r0,[sp,#4]
        0x1fff1d6e:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1d70:    000112b9    ....    DCD    70329
    $t
    $Ven$TT$L$$ll_hw_tx2rx_timing_config
        0x1fff1d74:    b403        ..      PUSH     {r0,r1}
        0x1fff1d76:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1d7c] = 0x11489
        0x1fff1d78:    9001        ..      STR      r0,[sp,#4]
        0x1fff1d7a:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1d7c:    00011489    ....    DCD    70793
    $t
    $Ven$TT$L$$__ARM_common_switch8
        0x1fff1d80:    b403        ..      PUSH     {r0,r1}
        0x1fff1d82:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1d88] = 0x8961
        0x1fff1d84:    9001        ..      STR      r0,[sp,#4]
        0x1fff1d86:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1d88:    00008961    a...    DCD    35169
    $t
    $Ven$TT$L$$clk_get_pclk
        0x1fff1d8c:    b403        ..      PUSH     {r0,r1}
        0x1fff1d8e:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1d94] = 0xa5d1
        0x1fff1d90:    9001        ..      STR      r0,[sp,#4]
        0x1fff1d92:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1d94:    0000a5d1    ....    DCD    42449
    $t
    $Ven$TT$L$$osalTimeUpdate
        0x1fff1d98:    b403        ..      PUSH     {r0,r1}
        0x1fff1d9a:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1da0] = 0x144d5
        0x1fff1d9c:    9001        ..      STR      r0,[sp,#4]
        0x1fff1d9e:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1da0:    000144d5    .D..    DCD    83157
    $t
    $Ven$TT$L$$set_timer
        0x1fff1da4:    b403        ..      PUSH     {r0,r1}
        0x1fff1da6:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1dac] = 0x16c2d
        0x1fff1da8:    9001        ..      STR      r0,[sp,#4]
        0x1fff1daa:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1dac:    00016c2d    -l..    DCD    93229
    $t
    $Ven$TT$L$$app_wakeup_process
        0x1fff1db0:    b403        ..      PUSH     {r0,r1}
        0x1fff1db2:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1db8] = 0x9779
        0x1fff1db4:    9001        ..      STR      r0,[sp,#4]
        0x1fff1db6:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1db8:    00009779    y...    DCD    38777
    $t
    $Ven$TT$L$$ll_hw_set_empty_head
        0x1fff1dbc:    b403        ..      PUSH     {r0,r1}
        0x1fff1dbe:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1dc4] = 0x11169
        0x1fff1dc0:    9001        ..      STR      r0,[sp,#4]
        0x1fff1dc2:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1dc4:    00011169    i...    DCD    69993
    $t
    $Ven$TT$L$$ll_hw_set_timing
        0x1fff1dc8:    b403        ..      PUSH     {r0,r1}
        0x1fff1dca:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1dd0] = 0x112e5
        0x1fff1dcc:    9001        ..      STR      r0,[sp,#4]
        0x1fff1dce:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1dd0:    000112e5    ....    DCD    70373
    $t
    _func_xip_code_.LL_Disconnect1
    LL_Disconnect1
        0x1fff1dd4:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff1dd6:    460c        .F      MOV      r4,r1
        0x1fff1dd8:    4605        .F      MOV      r5,r0
        0x1fff1dda:    f7fffd91    ....    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff1900
        0x1fff1dde:    4621        !F      MOV      r1,r4
        0x1fff1de0:    4628        (F      MOV      r0,r5
        0x1fff1de2:    f7fffd93    ....    BL       $Ven$TT$L$$LL_Disconnect0 ; 0x1fff190c
        0x1fff1de6:    4604        .F      MOV      r4,r0
        0x1fff1de8:    f7fffd96    ....    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff1918
        0x1fff1dec:    4620         F      MOV      r0,r4
        0x1fff1dee:    bd70        p.      POP      {r4-r6,pc}
    _func_xip_code_.LL_SetDataLengh1
    LL_SetDataLengh1
        0x1fff1df0:    b510        ..      PUSH     {r4,lr}
        0x1fff1df2:    29fb        .)      CMP      r1,#0xfb
        0x1fff1df4:    d808        ..      BHI      0x1fff1e08 ; LL_SetDataLengh1 + 24
        0x1fff1df6:    4b08        .K      LDR      r3,[pc,#32] ; [0x1fff1e18] = 0x848
        0x1fff1df8:    429a        .B      CMP      r2,r3
        0x1fff1dfa:    d805        ..      BHI      0x1fff1e08 ; LL_SetDataLengh1 + 24
        0x1fff1dfc:    291b        .)      CMP      r1,#0x1b
        0x1fff1dfe:    d303        ..      BCC      0x1fff1e08 ; LL_SetDataLengh1 + 24
        0x1fff1e00:    23ff        .#      MOVS     r3,#0xff
        0x1fff1e02:    3349        I3      ADDS     r3,r3,#0x49
        0x1fff1e04:    429a        .B      CMP      r2,r3
        0x1fff1e06:    d201        ..      BCS      0x1fff1e0c ; LL_SetDataLengh1 + 28
        0x1fff1e08:    2030        0       MOVS     r0,#0x30
        0x1fff1e0a:    bd10        ..      POP      {r4,pc}
        0x1fff1e0c:    4b03        .K      LDR      r3,[pc,#12] ; [0x1fff1e1c] = 0x1fff1084
        0x1fff1e0e:    8219        ..      STRH     r1,[r3,#0x10]
        0x1fff1e10:    825a        Z.      STRH     r2,[r3,#0x12]
        0x1fff1e12:    f7fffd87    ....    BL       $Ven$TT$L$$LL_SetDataLengh0 ; 0x1fff1924
        0x1fff1e16:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff1e18:    00000848    H...    DCD    2120
        0x1fff1e1c:    1fff1084    ....    DCD    536809604
    $t
    _func_xip_code_.LL_TxData1
    LL_TxData1
        0x1fff1e20:    b5ff        ..      PUSH     {r0-r7,lr}
        0x1fff1e22:    460d        .F      MOV      r5,r1
        0x1fff1e24:    21a1        .!      MOVS     r1,#0xa1
        0x1fff1e26:    0089        ..      LSLS     r1,r1,#2
        0x1fff1e28:    4348        HC      MULS     r0,r1,r0
        0x1fff1e2a:    4923        #I      LDR      r1,[pc,#140] ; [0x1fff1eb8] = 0x1fff0934
        0x1fff1e2c:    b081        ..      SUB      sp,sp,#4
        0x1fff1e2e:    6809        .h      LDR      r1,[r1,#0]
        0x1fff1e30:    461e        .F      MOV      r6,r3
        0x1fff1e32:    1844        D.      ADDS     r4,r0,r1
        0x1fff1e34:    2d00        .-      CMP      r5,#0
        0x1fff1e36:    d009        ..      BEQ      0x1fff1e4c ; LL_TxData1 + 44
        0x1fff1e38:    20ff        .       MOVS     r0,#0xff
        0x1fff1e3a:    30d9        .0      ADDS     r0,r0,#0xd9
        0x1fff1e3c:    5b01        .[      LDRH     r1,[r0,r4]
        0x1fff1e3e:    9803        ..      LDR      r0,[sp,#0xc]
        0x1fff1e40:    4281        .B      CMP      r1,r0
        0x1fff1e42:    d303        ..      BCC      0x1fff1e4c ; LL_TxData1 + 44
        0x1fff1e44:    2e00        ..      CMP      r6,#0
        0x1fff1e46:    d004        ..      BEQ      0x1fff1e52 ; LL_TxData1 + 50
        0x1fff1e48:    2e01        ..      CMP      r6,#1
        0x1fff1e4a:    d002        ..      BEQ      0x1fff1e52 ; LL_TxData1 + 50
        0x1fff1e4c:    2012        .       MOVS     r0,#0x12
        0x1fff1e4e:    b005        ..      ADD      sp,sp,#0x14
        0x1fff1e50:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff1e52:    78e0        .x      LDRB     r0,[r4,#3]
        0x1fff1e54:    2800        .(      CMP      r0,#0
        0x1fff1e56:    d00a        ..      BEQ      0x1fff1e6e ; LL_TxData1 + 78
        0x1fff1e58:    2005        .       MOVS     r0,#5
        0x1fff1e5a:    01c0        ..      LSLS     r0,r0,#7
        0x1fff1e5c:    1827        '.      ADDS     r7,r4,r0
        0x1fff1e5e:    4817        .H      LDR      r0,[pc,#92] ; [0x1fff1ebc] = 0x1fff0915
        0x1fff1e60:    78f9        .x      LDRB     r1,[r7,#3]
        0x1fff1e62:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff1e64:    1c80        ..      ADDS     r0,r0,#2
        0x1fff1e66:    4281        .B      CMP      r1,r0
        0x1fff1e68:    d303        ..      BCC      0x1fff1e72 ; LL_TxData1 + 82
        0x1fff1e6a:    2007        .       MOVS     r0,#7
        0x1fff1e6c:    e7ef        ..      B        0x1fff1e4e ; LL_TxData1 + 46
        0x1fff1e6e:    2002        .       MOVS     r0,#2
        0x1fff1e70:    e7ed        ..      B        0x1fff1e4e ; LL_TxData1 + 46
        0x1fff1e72:    f7fffd45    ..E.    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff1900
        0x1fff1e76:    78f8        .x      LDRB     r0,[r7,#3]
        0x1fff1e78:    1ea9        ..      SUBS     r1,r5,#2
        0x1fff1e7a:    1c40        @.      ADDS     r0,r0,#1
        0x1fff1e7c:    70f8        .p      STRB     r0,[r7,#3]
        0x1fff1e7e:    9803        ..      LDR      r0,[sp,#0xc]
        0x1fff1e80:    7008        .p      STRB     r0,[r1,#0]
        0x1fff1e82:    2e00        ..      CMP      r6,#0
        0x1fff1e84:    d010        ..      BEQ      0x1fff1ea8 ; LL_TxData1 + 136
        0x1fff1e86:    2001        .       MOVS     r0,#1
        0x1fff1e88:    7048        Hp      STRB     r0,[r1,#1]
        0x1fff1e8a:    4620         F      MOV      r0,r4
        0x1fff1e8c:    307c        |0      ADDS     r0,r0,#0x7c
        0x1fff1e8e:    1f09        ..      SUBS     r1,r1,#4
        0x1fff1e90:    f7fffd4e    ..N.    BL       $Ven$TT$L$$llEnqueueDataQ ; 0x1fff1930
        0x1fff1e94:    f7fffd40    ..@.    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff1918
        0x1fff1e98:    4809        .H      LDR      r0,[pc,#36] ; [0x1fff1ec0] = 0x1fff091c
        0x1fff1e9a:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff1e9c:    2808        .(      CMP      r0,#8
        0x1fff1e9e:    d005        ..      BEQ      0x1fff1eac ; LL_TxData1 + 140
        0x1fff1ea0:    2807        .(      CMP      r0,#7
        0x1fff1ea2:    d003        ..      BEQ      0x1fff1eac ; LL_TxData1 + 140
        0x1fff1ea4:    2000        .       MOVS     r0,#0
        0x1fff1ea6:    e7d2        ..      B        0x1fff1e4e ; LL_TxData1 + 46
        0x1fff1ea8:    2002        .       MOVS     r0,#2
        0x1fff1eaa:    e7ed        ..      B        0x1fff1e88 ; LL_TxData1 + 104
        0x1fff1eac:    2100        .!      MOVS     r1,#0
        0x1fff1eae:    4620         F      MOV      r0,r4
        0x1fff1eb0:    f7fffd44    ..D.    BL       $Ven$TT$L$$llProcessTxData ; 0x1fff193c
        0x1fff1eb4:    e7f6        ..      B        0x1fff1ea4 ; LL_TxData1 + 132
    $d
        0x1fff1eb6:    0000        ..      DCW    0
        0x1fff1eb8:    1fff0934    4...    DCD    536807732
        0x1fff1ebc:    1fff0915    ....    DCD    536807701
        0x1fff1ec0:    1fff091c    ....    DCD    536807708
    $t
    _section_sram_code_
    irq_rx_handler
        0x1fff1ec4:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff1ec6:    4a34        4J      LDR      r2,[pc,#208] ; [0x1fff1f98] = 0x40004000
        0x1fff1ec8:    b08a        ..      SUB      sp,sp,#0x28
        0x1fff1eca:    2801        .(      CMP      r0,#1
        0x1fff1ecc:    d100        ..      BNE      0x1fff1ed0 ; irq_rx_handler + 12
        0x1fff1ece:    4a33        3J      LDR      r2,[pc,#204] ; [0x1fff1f9c] = 0x40009000
        0x1fff1ed0:    0143        C.      LSLS     r3,r0,#5
        0x1fff1ed2:    4833        3H      LDR      r0,[pc,#204] ; [0x1fff1fa0] = 0x1fff74c4
        0x1fff1ed4:    466d        mF      MOV      r5,sp
        0x1fff1ed6:    181c        ..      ADDS     r4,r3,r0
        0x1fff1ed8:    7e20         ~      LDRB     r0,[r4,#0x18]
        0x1fff1eda:    2800        .(      CMP      r0,#0
        0x1fff1edc:    d00a        ..      BEQ      0x1fff1ef4 ; irq_rx_handler + 48
        0x1fff1ede:    2084        .       MOVS     r0,#0x84
        0x1fff1ee0:    5880        .X      LDR      r0,[r0,r2]
        0x1fff1ee2:    b2c3        ..      UXTB     r3,r0
        0x1fff1ee4:    2000        .       MOVS     r0,#0
        0x1fff1ee6:    e002        ..      B        0x1fff1eee ; irq_rx_handler + 42
        0x1fff1ee8:    7816        .x      LDRB     r6,[r2,#0]
        0x1fff1eea:    542e        .T      STRB     r6,[r5,r0]
        0x1fff1eec:    1c40        @.      ADDS     r0,r0,#1
        0x1fff1eee:    4298        .B      CMP      r0,r3
        0x1fff1ef0:    dbfa        ..      BLT      0x1fff1ee8 ; irq_rx_handler + 36
        0x1fff1ef2:    e003        ..      B        0x1fff1efc ; irq_rx_handler + 56
        0x1fff1ef4:    7d10        .}      LDRB     r0,[r2,#0x14]
        0x1fff1ef6:    2301        .#      MOVS     r3,#1
        0x1fff1ef8:    7810        .x      LDRB     r0,[r2,#0]
        0x1fff1efa:    7028        (p      STRB     r0,[r5,#0]
        0x1fff1efc:    69e2        .i      LDR      r2,[r4,#0x1c]
        0x1fff1efe:    2a00        .*      CMP      r2,#0
        0x1fff1f00:    d004        ..      BEQ      0x1fff1f0c ; irq_rx_handler + 72
        0x1fff1f02:    7529        )u      STRB     r1,[r5,#0x14]
        0x1fff1f04:    9506        ..      STR      r5,[sp,#0x18]
        0x1fff1f06:    772b        +w      STRB     r3,[r5,#0x1c]
        0x1fff1f08:    a805        ..      ADD      r0,sp,#0x14
        0x1fff1f0a:    4790        .G      BLX      r2
        0x1fff1f0c:    b00a        ..      ADD      sp,sp,#0x28
        0x1fff1f0e:    bd70        p.      POP      {r4-r6,pc}
    irq_tx_empty_handler
        0x1fff1f10:    b5fe        ..      PUSH     {r1-r7,lr}
        0x1fff1f12:    4604        .F      MOV      r4,r0
        0x1fff1f14:    0142        B.      LSLS     r2,r0,#5
        0x1fff1f16:    4822        "H      LDR      r0,[pc,#136] ; [0x1fff1fa0] = 0x1fff74c4
        0x1fff1f18:    4d1f        .M      LDR      r5,[pc,#124] ; [0x1fff1f98] = 0x40004000
        0x1fff1f1a:    1813        ..      ADDS     r3,r2,r0
        0x1fff1f1c:    5c80        .\      LDRB     r0,[r0,r2]
        0x1fff1f1e:    1d19        ..      ADDS     r1,r3,#4
        0x1fff1f20:    2800        .(      CMP      r0,#0
        0x1fff1f22:    d029        ).      BEQ      0x1fff1f78 ; irq_tx_empty_handler + 104
        0x1fff1f24:    7e18        .~      LDRB     r0,[r3,#0x18]
        0x1fff1f26:    2800        .(      CMP      r0,#0
        0x1fff1f28:    d026        &.      BEQ      0x1fff1f78 ; irq_tx_empty_handler + 104
        0x1fff1f2a:    7e98        .~      LDRB     r0,[r3,#0x1a]
        0x1fff1f2c:    2800        .(      CMP      r0,#0
        0x1fff1f2e:    d023        #.      BEQ      0x1fff1f78 ; irq_tx_empty_handler + 104
        0x1fff1f30:    7808        .x      LDRB     r0,[r1,#0]
        0x1fff1f32:    2802        .(      CMP      r0,#2
        0x1fff1f34:    d120         .      BNE      0x1fff1f78 ; irq_tx_empty_handler + 104
        0x1fff1f36:    8888        ..      LDRH     r0,[r1,#4]
        0x1fff1f38:    884a        J.      LDRH     r2,[r1,#2]
        0x1fff1f3a:    688e        .h      LDR      r6,[r1,#8]
        0x1fff1f3c:    1a80        ..      SUBS     r0,r0,r2
        0x1fff1f3e:    b282        ..      UXTH     r2,r0
        0x1fff1f40:    2a10        .*      CMP      r2,#0x10
        0x1fff1f42:    d901        ..      BLS      0x1fff1f48 ; irq_tx_empty_handler + 56
        0x1fff1f44:    2210        ."      MOVS     r2,#0x10
        0x1fff1f46:    e001        ..      B        0x1fff1f4c ; irq_tx_empty_handler + 60
        0x1fff1f48:    2a00        .*      CMP      r2,#0
        0x1fff1f4a:    d002        ..      BEQ      0x1fff1f52 ; irq_tx_empty_handler + 66
        0x1fff1f4c:    2c01        .,      CMP      r4,#1
        0x1fff1f4e:    d016        ..      BEQ      0x1fff1f7e ; irq_tx_empty_handler + 110
        0x1fff1f50:    e01c        ..      B        0x1fff1f8c ; irq_tx_empty_handler + 124
        0x1fff1f52:    2001        .       MOVS     r0,#1
        0x1fff1f54:    7008        .p      STRB     r0,[r1,#0]
        0x1fff1f56:    2000        .       MOVS     r0,#0
        0x1fff1f58:    8048        H.      STRH     r0,[r1,#2]
        0x1fff1f5a:    8088        ..      STRH     r0,[r1,#4]
        0x1fff1f5c:    69d9        .i      LDR      r1,[r3,#0x1c]
        0x1fff1f5e:    2900        .)      CMP      r1,#0
        0x1fff1f60:    d005        ..      BEQ      0x1fff1f6e ; irq_tx_empty_handler + 94
        0x1fff1f62:    4b10        .K      LDR      r3,[pc,#64] ; [0x1fff1fa4] = 0x1fff6b6c
        0x1fff1f64:    466d        mF      MOV      r5,sp
        0x1fff1f66:    cb0d        ..      LDM      r3,{r0,r2,r3}
        0x1fff1f68:    c50d        ..      STM      r5!,{r0,r2,r3}
        0x1fff1f6a:    4668        hF      MOV      r0,sp
        0x1fff1f6c:    4788        .G      BLX      r1
        0x1fff1f6e:    2c00        .,      CMP      r4,#0
        0x1fff1f70:    d003        ..      BEQ      0x1fff1f7a ; irq_tx_empty_handler + 106
        0x1fff1f72:    2019        .       MOVS     r0,#0x19
        0x1fff1f74:    f002f920    .. .    BL       hal_pwrmgr_unlock ; 0x1fff41b8
        0x1fff1f78:    bdfe        ..      POP      {r1-r7,pc}
        0x1fff1f7a:    2008        .       MOVS     r0,#8
        0x1fff1f7c:    e7fa        ..      B        0x1fff1f74 ; irq_tx_empty_handler + 100
        0x1fff1f7e:    4d07        .M      LDR      r5,[pc,#28] ; [0x1fff1f9c] = 0x40009000
        0x1fff1f80:    e004        ..      B        0x1fff1f8c ; irq_tx_empty_handler + 124
        0x1fff1f82:    8848        H.      LDRH     r0,[r1,#2]
        0x1fff1f84:    1c43        C.      ADDS     r3,r0,#1
        0x1fff1f86:    804b        K.      STRH     r3,[r1,#2]
        0x1fff1f88:    5c30        0\      LDRB     r0,[r6,r0]
        0x1fff1f8a:    7028        (p      STRB     r0,[r5,#0]
        0x1fff1f8c:    4610        .F      MOV      r0,r2
        0x1fff1f8e:    1e52        R.      SUBS     r2,r2,#1
        0x1fff1f90:    b292        ..      UXTH     r2,r2
        0x1fff1f92:    2800        .(      CMP      r0,#0
        0x1fff1f94:    d1f5        ..      BNE      0x1fff1f82 ; irq_tx_empty_handler + 114
        0x1fff1f96:    bdfe        ..      POP      {r1-r7,pc}
    $d
        0x1fff1f98:    40004000    .@.@    DCD    1073758208
        0x1fff1f9c:    40009000    ...@    DCD    1073778688
        0x1fff1fa0:    1fff74c4    .t..    DCD    536835268
        0x1fff1fa4:    1fff6b6c    lk..    DCD    536832876
    $t
    _section_sram_code_
    hal_watchdog_init
        0x1fff1fa8:    b538        8.      PUSH     {r3-r5,lr}
        0x1fff1faa:    4c27        'L      LDR      r4,[pc,#156] ; [0x1fff2048] = 0x1fff6d8c
        0x1fff1fac:    7820         x      LDRB     r0,[r4,#0]
        0x1fff1fae:    2807        .(      CMP      r0,#7
        0x1fff1fb0:    d847        G.      BHI      0x1fff2042 ; hal_watchdog_init + 154
        0x1fff1fb2:    4826        &H      LDR      r0,[pc,#152] ; [0x1fff204c] = 0x1fff6d3c
        0x1fff1fb4:    7802        .x      LDRB     r2,[r0,#0]
        0x1fff1fb6:    2101        .!      MOVS     r1,#1
        0x1fff1fb8:    4825        %H      LDR      r0,[pc,#148] ; [0x1fff2050] = 0x4000f000
        0x1fff1fba:    0409        ..      LSLS     r1,r1,#16
        0x1fff1fbc:    2a00        .*      CMP      r2,#0
        0x1fff1fbe:    6bc2        .k      LDR      r2,[r0,#0x3c]
        0x1fff1fc0:    d040        @.      BEQ      0x1fff2044 ; hal_watchdog_init + 156
        0x1fff1fc2:    438a        .C      BICS     r2,r2,r1
        0x1fff1fc4:    63c2        .c      STR      r2,[r0,#0x3c]
        0x1fff1fc6:    2025        %       MOVS     r0,#0x25
        0x1fff1fc8:    f001fcbe    ....    BL       hal_clk_gate_enable ; 0x1fff3948
        0x1fff1fcc:    4821        !H      LDR      r0,[pc,#132] ; [0x1fff2054] = 0x1fff6d98
        0x1fff1fce:    2120         !      MOVS     r1,#0x20
        0x1fff1fd0:    6802        .h      LDR      r2,[r0,#0]
        0x1fff1fd2:    430a        .C      ORRS     r2,r2,r1
        0x1fff1fd4:    6002        .`      STR      r2,[r0,#0]
        0x1fff1fd6:    0648        H.      LSLS     r0,r1,#25
        0x1fff1fd8:    6802        .h      LDR      r2,[r0,#0]
        0x1fff1fda:    2304        .#      MOVS     r3,#4
        0x1fff1fdc:    0752        R.      LSLS     r2,r2,#29
        0x1fff1fde:    2a00        .*      CMP      r2,#0
        0x1fff1fe0:    db08        ..      BLT      0x1fff1ff4 ; hal_watchdog_init + 76
        0x1fff1fe2:    6802        .h      LDR      r2,[r0,#0]
        0x1fff1fe4:    431a        .C      ORRS     r2,r2,r3
        0x1fff1fe6:    6002        .`      STR      r2,[r0,#0]
        0x1fff1fe8:    2213        ."      MOVS     r2,#0x13
        0x1fff1fea:    4615        .F      MOV      r5,r2
        0x1fff1fec:    1e52        R.      SUBS     r2,r2,#1
        0x1fff1fee:    b2d2        ..      UXTB     r2,r2
        0x1fff1ff0:    2d00        .-      CMP      r5,#0
        0x1fff1ff2:    d1fa        ..      BNE      0x1fff1fea ; hal_watchdog_init + 66
        0x1fff1ff4:    68c2        .h      LDR      r2,[r0,#0xc]
        0x1fff1ff6:    0752        R.      LSLS     r2,r2,#29
        0x1fff1ff8:    d408        ..      BMI      0x1fff200c ; hal_watchdog_init + 100
        0x1fff1ffa:    68c2        .h      LDR      r2,[r0,#0xc]
        0x1fff1ffc:    431a        .C      ORRS     r2,r2,r3
        0x1fff1ffe:    60c2        .`      STR      r2,[r0,#0xc]
        0x1fff2000:    2213        ."      MOVS     r2,#0x13
        0x1fff2002:    4613        .F      MOV      r3,r2
        0x1fff2004:    1e52        R.      SUBS     r2,r2,#1
        0x1fff2006:    b2d2        ..      UXTB     r2,r2
        0x1fff2008:    2b00        .+      CMP      r3,#0
        0x1fff200a:    d1fa        ..      BNE      0x1fff2002 ; hal_watchdog_init + 90
        0x1fff200c:    68c2        .h      LDR      r2,[r0,#0xc]
        0x1fff200e:    438a        .C      BICS     r2,r2,r1
        0x1fff2010:    60c2        .`      STR      r2,[r0,#0xc]
        0x1fff2012:    2213        ."      MOVS     r2,#0x13
        0x1fff2014:    4613        .F      MOV      r3,r2
        0x1fff2016:    1e52        R.      SUBS     r2,r2,#1
        0x1fff2018:    b2d2        ..      UXTB     r2,r2
        0x1fff201a:    2b00        .+      CMP      r3,#0
        0x1fff201c:    d1fa        ..      BNE      0x1fff2014 ; hal_watchdog_init + 108
        0x1fff201e:    68c2        .h      LDR      r2,[r0,#0xc]
        0x1fff2020:    430a        .C      ORRS     r2,r2,r1
        0x1fff2022:    60c2        .`      STR      r2,[r0,#0xc]
        0x1fff2024:    2013        .       MOVS     r0,#0x13
        0x1fff2026:    4601        .F      MOV      r1,r0
        0x1fff2028:    1e40        @.      SUBS     r0,r0,#1
        0x1fff202a:    b2c0        ..      UXTB     r0,r0
        0x1fff202c:    2900        .)      CMP      r1,#0
        0x1fff202e:    d1fa        ..      BNE      0x1fff2026 ; hal_watchdog_init + 126
        0x1fff2030:    4809        .H      LDR      r0,[pc,#36] ; [0x1fff2058] = 0x40002000
        0x1fff2032:    7d01        .}      LDRB     r1,[r0,#0x14]
        0x1fff2034:    9100        ..      STR      r1,[sp,#0]
        0x1fff2036:    7821        !x      LDRB     r1,[r4,#0]
        0x1fff2038:    6041        A`      STR      r1,[r0,#4]
        0x1fff203a:    211d        .!      MOVS     r1,#0x1d
        0x1fff203c:    7001        .p      STRB     r1,[r0,#0]
        0x1fff203e:    2176        v!      MOVS     r1,#0x76
        0x1fff2040:    60c1        .`      STR      r1,[r0,#0xc]
        0x1fff2042:    bd38        8.      POP      {r3-r5,pc}
        0x1fff2044:    430a        .C      ORRS     r2,r2,r1
        0x1fff2046:    e7bd        ..      B        0x1fff1fc4 ; hal_watchdog_init + 28
    $d
        0x1fff2048:    1fff6d8c    .m..    DCD    536833420
        0x1fff204c:    1fff6d3c    <m..    DCD    536833340
        0x1fff2050:    4000f000    ...@    DCD    1073803264
        0x1fff2054:    1fff6d98    .m..    DCD    536833432
        0x1fff2058:    40002000    . .@    DCD    1073750016
    $t
    _section_sram_code_
    hal_pwrmgr_enter_sleep_rtc_reset
        0x1fff205c:    4604        .F      MOV      r4,r0
        0x1fff205e:    f7fffc4f    ..O.    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff1900
        0x1fff2062:    490a        .I      LDR      r1,[pc,#40] ; [0x1fff208c] = 0x4000f000
        0x1fff2064:    69c8        .i      LDR      r0,[r1,#0x1c]
        0x1fff2066:    2240        @"      MOVS     r2,#0x40
        0x1fff2068:    4390        .C      BICS     r0,r0,r2
        0x1fff206a:    61c8        .a      STR      r0,[r1,#0x1c]
        0x1fff206c:    4620         F      MOV      r0,r4
        0x1fff206e:    f7fffc6b    ..k.    BL       $Ven$TT$L$$config_RTC ; 0x1fff1948
        0x1fff2072:    f001fff9    ....    BL       hal_pwrmgr_RAM_retention_clr ; 0x1fff4068
        0x1fff2076:    4805        .H      LDR      r0,[pc,#20] ; [0x1fff208c] = 0x4000f000
        0x1fff2078:    2100        .!      MOVS     r1,#0
        0x1fff207a:    30c0        .0      ADDS     r0,r0,#0xc0
        0x1fff207c:    6041        A`      STR      r1,[r0,#4]
        0x1fff207e:    2104        .!      MOVS     r1,#4
        0x1fff2080:    6001        .`      STR      r1,[r0,#0]
        0x1fff2082:    2001        .       MOVS     r0,#1
        0x1fff2084:    f7fffc66    ..f.    BL       $Ven$TT$L$$enter_sleep_off_mode ; 0x1fff1954
        0x1fff2088:    e7fe        ..      B        0x1fff2088 ; hal_pwrmgr_enter_sleep_rtc_reset + 44
    $d
        0x1fff208a:    0000        ..      DCW    0
        0x1fff208c:    4000f000    ...@    DCD    1073803264
    $t
    _section_xip_code_
    LL_CreateConnCancel1
        0x1fff2090:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff2092:    f7fffc35    ..5.    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff1900
        0x1fff2096:    4c90        .L      LDR      r4,[pc,#576] ; [0x1fff22d8] = 0x1fff0998
        0x1fff2098:    2000        .       MOVS     r0,#0
        0x1fff209a:    6825        %h      LDR      r5,[r4,#0]
        0x1fff209c:    6020         `      STR      r0,[r4,#0]
        0x1fff209e:    f7fffc5f    .._.    BL       $Ven$TT$L$$LL_CreateConnCancel0 ; 0x1fff1960
        0x1fff20a2:    4606        .F      MOV      r6,r0
        0x1fff20a4:    6025        %`      STR      r5,[r4,#0]
        0x1fff20a6:    f7fffc37    ..7.    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff1918
        0x1fff20aa:    4630        0F      MOV      r0,r6
        0x1fff20ac:    bd70        p.      POP      {r4-r6,pc}
    global_config_maxscanrsplen
        0x1fff20ae:    498b        .I      LDR      r1,[pc,#556] ; [0x1fff22dc] = 0x1fff6dcc
        0x1fff20b0:    68c9        .h      LDR      r1,[r1,#0xc]
        0x1fff20b2:    31ff        .1      ADDS     r1,r1,#0xff
        0x1fff20b4:    3181        .1      ADDS     r1,r1,#0x81
        0x1fff20b6:    6588        .e      STR      r0,[r1,#0x58]
        0x1fff20b8:    4770        pG      BX       lr
    init_config
        0x1fff20ba:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff20bc:    f001f81e    ....    BL       _rom_efuse_version_init ; 0x1fff30fc
        0x1fff20c0:    4d86        .M      LDR      r5,[pc,#536] ; [0x1fff22dc] = 0x1fff6dcc
        0x1fff20c2:    4a87        .J      LDR      r2,[pc,#540] ; [0x1fff22e0] = 0x1fff0a4a
        0x1fff20c4:    7268        hr      STRB     r0,[r5,#9]
        0x1fff20c6:    7811        .x      LDRB     r1,[r2,#0]
        0x1fff20c8:    2902        .)      CMP      r1,#2
        0x1fff20ca:    d903        ..      BLS      0x1fff20d4 ; init_config + 26
        0x1fff20cc:    2800        .(      CMP      r0,#0
        0x1fff20ce:    d101        ..      BNE      0x1fff20d4 ; init_config + 26
        0x1fff20d0:    2001        .       MOVS     r0,#1
        0x1fff20d2:    7010        .p      STRB     r0,[r2,#0]
        0x1fff20d4:    4983        .I      LDR      r1,[pc,#524] ; [0x1fff22e4] = 0x1fff0400
        0x1fff20d6:    2000        .       MOVS     r0,#0
        0x1fff20d8:    4604        .F      MOV      r4,r0
        0x1fff20da:    60e9        .`      STR      r1,[r5,#0xc]
        0x1fff20dc:    0083        ..      LSLS     r3,r0,#2
        0x1fff20de:    1c40        @.      ADDS     r0,r0,#1
        0x1fff20e0:    50cc        .P      STR      r4,[r1,r3]
        0x1fff20e2:    28ff        .(      CMP      r0,#0xff
        0x1fff20e4:    ddfa        ..      BLE      0x1fff20dc ; init_config + 34
        0x1fff20e6:    68e8        .h      LDR      r0,[r5,#0xc]
        0x1fff20e8:    497f        .I      LDR      r1,[pc,#508] ; [0x1fff22e8] = 0x1fff7e58
        0x1fff20ea:    2388        .#      MOVS     r3,#0x88
        0x1fff20ec:    5019        .P      STR      r1,[r3,r0]
        0x1fff20ee:    497f        .I      LDR      r1,[pc,#508] ; [0x1fff22ec] = 0x46e
        0x1fff20f0:    62c1        .b      STR      r1,[r0,#0x2c]
        0x1fff20f2:    497f        .I      LDR      r1,[pc,#508] ; [0x1fff22f0] = 0x1fff6d3c
        0x1fff20f4:    7809        .x      LDRB     r1,[r1,#0]
        0x1fff20f6:    2900        .)      CMP      r1,#0
        0x1fff20f8:    d002        ..      BEQ      0x1fff2100 ; init_config + 70
        0x1fff20fa:    497c        |I      LDR      r1,[pc,#496] ; [0x1fff22ec] = 0x46e
        0x1fff20fc:    3111        .1      ADDS     r1,r1,#0x11
        0x1fff20fe:    62c1        .b      STR      r1,[r0,#0x2c]
        0x1fff2100:    210a        .!      MOVS     r1,#0xa
        0x1fff2102:    6501        .e      STR      r1,[r0,#0x50]
        0x1fff2104:    7811        .x      LDRB     r1,[r2,#0]
        0x1fff2106:    6381        .c      STR      r1,[r0,#0x38]
        0x1fff2108:    497a        zI      LDR      r1,[pc,#488] ; [0x1fff22f4] = 0x73a
        0x1fff210a:    61c1        .a      STR      r1,[r0,#0x1c]
        0x1fff210c:    f001fb20    .. .    BL       global_config_hclk_related ; 0x1fff3750
        0x1fff2110:    68e9        .h      LDR      r1,[r5,#0xc]
        0x1fff2112:    4879        yH      LDR      r0,[pc,#484] ; [0x1fff22f8] = 0x1c9c380
        0x1fff2114:    6148        Ha      STR      r0,[r1,#0x14]
        0x1fff2116:    2019        .       MOVS     r0,#0x19
        0x1fff2118:    0180        ..      LSLS     r0,r0,#6
        0x1fff211a:    6188        .a      STR      r0,[r1,#0x18]
        0x1fff211c:    4608        .F      MOV      r0,r1
        0x1fff211e:    2237        7"      MOVS     r2,#0x37
        0x1fff2120:    3080        .0      ADDS     r0,r0,#0x80
        0x1fff2122:    60c2        .`      STR      r2,[r0,#0xc]
        0x1fff2124:    2308        .#      MOVS     r3,#8
        0x1fff2126:    2236        6"      MOVS     r2,#0x36
        0x1fff2128:    640b        .d      STR      r3,[r1,#0x40]
        0x1fff212a:    63ca        .c      STR      r2,[r1,#0x3c]
        0x1fff212c:    221e        ."      MOVS     r2,#0x1e
        0x1fff212e:    644a        Jd      STR      r2,[r1,#0x44]
        0x1fff2130:    2236        6"      MOVS     r2,#0x36
        0x1fff2132:    6042        B`      STR      r2,[r0,#4]
        0x1fff2134:    2232        2"      MOVS     r2,#0x32
        0x1fff2136:    6002        .`      STR      r2,[r0,#0]
        0x1fff2138:    223b        ;"      MOVS     r2,#0x3b
        0x1fff213a:    6403        .d      STR      r3,[r0,#0x40]
        0x1fff213c:    63c2        .c      STR      r2,[r0,#0x3c]
        0x1fff213e:    2228        ("      MOVS     r2,#0x28
        0x1fff2140:    6442        Bd      STR      r2,[r0,#0x44]
        0x1fff2142:    2241        A"      MOVS     r2,#0x41
        0x1fff2144:    64c2        .d      STR      r2,[r0,#0x4c]
        0x1fff2146:    2239        9"      MOVS     r2,#0x39
        0x1fff2148:    6482        .d      STR      r2,[r0,#0x48]
        0x1fff214a:    2232        2"      MOVS     r2,#0x32
        0x1fff214c:    6543        Ce      STR      r3,[r0,#0x54]
        0x1fff214e:    6502        .e      STR      r2,[r0,#0x50]
        0x1fff2150:    2228        ("      MOVS     r2,#0x28
        0x1fff2152:    6582        .e      STR      r2,[r0,#0x58]
        0x1fff2154:    2202        ."      MOVS     r2,#2
        0x1fff2156:    6602        .f      STR      r2,[r0,#0x60]
        0x1fff2158:    2242        B"      MOVS     r2,#0x42
        0x1fff215a:    65c2        .e      STR      r2,[r0,#0x5c]
        0x1fff215c:    221e        ."      MOVS     r2,#0x1e
        0x1fff215e:    6683        .f      STR      r3,[r0,#0x68]
        0x1fff2160:    6642        Bf      STR      r2,[r0,#0x64]
        0x1fff2162:    2228        ("      MOVS     r2,#0x28
        0x1fff2164:    66c2        .f      STR      r2,[r0,#0x6c]
        0x1fff2166:    2220         "      MOVS     r2,#0x20
        0x1fff2168:    6742        Bg      STR      r2,[r0,#0x74]
        0x1fff216a:    2242        B"      MOVS     r2,#0x42
        0x1fff216c:    6702        .g      STR      r2,[r0,#0x70]
        0x1fff216e:    225a        Z"      MOVS     r2,#0x5a
        0x1fff2170:    6143        Ca      STR      r3,[r0,#0x14]
        0x1fff2172:    6102        .a      STR      r2,[r0,#0x10]
        0x1fff2174:    223c        <"      MOVS     r2,#0x3c
        0x1fff2176:    6182        .a      STR      r2,[r0,#0x18]
        0x1fff2178:    2219        ."      MOVS     r2,#0x19
        0x1fff217a:    0192        ..      LSLS     r2,r2,#6
        0x1fff217c:    600a        .`      STR      r2,[r1,#0]
        0x1fff217e:    4a5f        _J      LDR      r2,[pc,#380] ; [0x1fff22fc] = 0x29a
        0x1fff2180:    630a        .c      STR      r2,[r1,#0x30]
        0x1fff2182:    22ff        ."      MOVS     r2,#0xff
        0x1fff2184:    322d        -2      ADDS     r2,r2,#0x2d
        0x1fff2186:    608a        .`      STR      r2,[r1,#8]
        0x1fff2188:    60ca        .`      STR      r2,[r1,#0xc]
        0x1fff218a:    22ff        ."      MOVS     r2,#0xff
        0x1fff218c:    32f5        .2      ADDS     r2,r2,#0xf5
        0x1fff218e:    610a        .a      STR      r2,[r1,#0x10]
        0x1fff2190:    4a5b        [J      LDR      r2,[pc,#364] ; [0x1fff2300] = 0xc350
        0x1fff2192:    648a        .d      STR      r2,[r1,#0x48]
        0x1fff2194:    227d        }"      MOVS     r2,#0x7d
        0x1fff2196:    00d2        ..      LSLS     r2,r2,#3
        0x1fff2198:    4e5a        ZN      LDR      r6,[pc,#360] ; [0x1fff2304] = 0xa28
        0x1fff219a:    67c2        .g      STR      r2,[r0,#0x7c]
        0x1fff219c:    64ce        .d      STR      r6,[r1,#0x4c]
        0x1fff219e:    624a        Jb      STR      r2,[r1,#0x24]
        0x1fff21a0:    4a59        YJ      LDR      r2,[pc,#356] ; [0x1fff2308] = 0x186a
        0x1fff21a2:    628a        .b      STR      r2,[r1,#0x28]
        0x1fff21a4:    2232        2"      MOVS     r2,#0x32
        0x1fff21a6:    65ca        .e      STR      r2,[r1,#0x5c]
        0x1fff21a8:    2206        ."      MOVS     r2,#6
        0x1fff21aa:    654a        Je      STR      r2,[r1,#0x54]
        0x1fff21ac:    658a        .e      STR      r2,[r1,#0x58]
        0x1fff21ae:    1dca        ..      ADDS     r2,r1,#7
        0x1fff21b0:    32f9        .2      ADDS     r2,r2,#0xf9
        0x1fff21b2:    2502        .%      MOVS     r5,#2
        0x1fff21b4:    6013        .`      STR      r3,[r2,#0]
        0x1fff21b6:    664d        Mf      STR      r5,[r1,#0x64]
        0x1fff21b8:    254b        K%      MOVS     r5,#0x4b
        0x1fff21ba:    00ed        ..      LSLS     r5,r5,#3
        0x1fff21bc:    668d        .f      STR      r5,[r1,#0x68]
        0x1fff21be:    2509        .%      MOVS     r5,#9
        0x1fff21c0:    66cd        .f      STR      r5,[r1,#0x6c]
        0x1fff21c2:    4d52        RM      LDR      r5,[pc,#328] ; [0x1fff230c] = 0x4e20
        0x1fff21c4:    670d        .g      STR      r5,[r1,#0x70]
        0x1fff21c6:    678c        .g      STR      r4,[r1,#0x78]
        0x1fff21c8:    674b        Kg      STR      r3,[r1,#0x74]
        0x1fff21ca:    10ab        ..      ASRS     r3,r5,#2
        0x1fff21cc:    67cb        .g      STR      r3,[r1,#0x7c]
        0x1fff21ce:    4f50        PO      LDR      r7,[pc,#320] ; [0x1fff2310] = 0x1fff09f0
        0x1fff21d0:    31ff        .1      ADDS     r1,r1,#0xff
        0x1fff21d2:    603e        >`      STR      r6,[r7,#0]
        0x1fff21d4:    4e4a        JN      LDR      r6,[pc,#296] ; [0x1fff2300] = 0xc350
        0x1fff21d6:    6286        .b      STR      r6,[r0,#0x28]
        0x1fff21d8:    267d        }&      MOVS     r6,#0x7d
        0x1fff21da:    00f6        ..      LSLS     r6,r6,#3
        0x1fff21dc:    6786        .g      STR      r6,[r0,#0x78]
        0x1fff21de:    2664        d&      MOVS     r6,#0x64
        0x1fff21e0:    6246        Fb      STR      r6,[r0,#0x24]
        0x1fff21e2:    2605        .&      MOVS     r6,#5
        0x1fff21e4:    62c6        .b      STR      r6,[r0,#0x2c]
        0x1fff21e6:    2602        .&      MOVS     r6,#2
        0x1fff21e8:    6306        .c      STR      r6,[r0,#0x30]
        0x1fff21ea:    26c8        .&      MOVS     r6,#0xc8
        0x1fff21ec:    6346        Fc      STR      r6,[r0,#0x34]
        0x1fff21ee:    6384        .c      STR      r4,[r0,#0x38]
        0x1fff21f0:    2038        8       MOVS     r0,#0x38
        0x1fff21f2:    6050        P`      STR      r0,[r2,#4]
        0x1fff21f4:    4847        GH      LDR      r0,[pc,#284] ; [0x1fff2314] = 0x11004000
        0x1fff21f6:    6410        .d      STR      r0,[r2,#0x40]
        0x1fff21f8:    204b        K       MOVS     r0,#0x4b
        0x1fff21fa:    0180        ..      LSLS     r0,r0,#6
        0x1fff21fc:    6190        .a      STR      r0,[r2,#0x18]
        0x1fff21fe:    00b0        ..      LSLS     r0,r6,#2
        0x1fff2200:    61d0        .a      STR      r0,[r2,#0x1c]
        0x1fff2202:    1058        X.      ASRS     r0,r3,#1
        0x1fff2204:    6210        .b      STR      r0,[r2,#0x20]
        0x1fff2206:    207d        }       MOVS     r0,#0x7d
        0x1fff2208:    0100        ..      LSLS     r0,r0,#4
        0x1fff220a:    6250        Pb      STR      r0,[r2,#0x24]
        0x1fff220c:    66d4        .f      STR      r4,[r2,#0x6c]
        0x1fff220e:    6595        .e      STR      r5,[r2,#0x58]
        0x1fff2210:    6613        .f      STR      r3,[r2,#0x60]
        0x1fff2212:    6453        Sd      STR      r3,[r2,#0x44]
        0x1fff2214:    65d5        .e      STR      r5,[r2,#0x5c]
        0x1fff2216:    6714        .g      STR      r4,[r2,#0x70]
        0x1fff2218:    6753        Sg      STR      r3,[r2,#0x74]
        0x1fff221a:    201e        .       MOVS     r0,#0x1e
        0x1fff221c:    6690        .f      STR      r0,[r2,#0x68]
        0x1fff221e:    483e        >H      LDR      r0,[pc,#248] ; [0x1fff2318] = 0x5dc
        0x1fff2220:    6790        .g      STR      r0,[r2,#0x78]
        0x1fff2222:    483e        >H      LDR      r0,[pc,#248] ; [0x1fff231c] = 0xf4240
        0x1fff2224:    005b        [.      LSLS     r3,r3,#1
        0x1fff2226:    3181        .1      ADDS     r1,r1,#0x81
        0x1fff2228:    67d0        .g      STR      r0,[r2,#0x7c]
        0x1fff222a:    600b        .`      STR      r3,[r1,#0]
        0x1fff222c:    608b        .`      STR      r3,[r1,#8]
        0x1fff222e:    6048        H`      STR      r0,[r1,#4]
        0x1fff2230:    20ff        .       MOVS     r0,#0xff
        0x1fff2232:    30f5        .0      ADDS     r0,r0,#0xf5
        0x1fff2234:    60c8        .`      STR      r0,[r1,#0xc]
        0x1fff2236:    6108        .a      STR      r0,[r1,#0x10]
        0x1fff2238:    204b        K       MOVS     r0,#0x4b
        0x1fff223a:    00c0        ..      LSLS     r0,r0,#3
        0x1fff223c:    6310        .c      STR      r0,[r2,#0x30]
        0x1fff223e:    650e        .e      STR      r6,[r1,#0x50]
        0x1fff2240:    4838        8H      LDR      r0,[pc,#224] ; [0x1fff2324] = 0x1fff0100
        0x1fff2242:    4937        7I      LDR      r1,[pc,#220] ; [0x1fff2320] = 0x1fff4a91
        0x1fff2244:    4a27        'J      LDR      r2,[pc,#156] ; [0x1fff22e4] = 0x1fff0400
        0x1fff2246:    6081        .`      STR      r1,[r0,#8]
        0x1fff2248:    4937        7I      LDR      r1,[pc,#220] ; [0x1fff2328] = 0x1fff2689
        0x1fff224a:    3a80        .:      SUBS     r2,r2,#0x80
        0x1fff224c:    6111        .a      STR      r1,[r2,#0x10]
        0x1fff224e:    4935        5I      LDR      r1,[pc,#212] ; [0x1fff2324] = 0x1fff0100
        0x1fff2250:    4a36        6J      LDR      r2,[pc,#216] ; [0x1fff232c] = 0x1fff5dc5
        0x1fff2252:    3180        .1      ADDS     r1,r1,#0x80
        0x1fff2254:    628a        .b      STR      r2,[r1,#0x28]
        0x1fff2256:    4a36        6J      LDR      r2,[pc,#216] ; [0x1fff2330] = 0x1fff6099
        0x1fff2258:    62ca        .b      STR      r2,[r1,#0x2c]
        0x1fff225a:    4a36        6J      LDR      r2,[pc,#216] ; [0x1fff2334] = 0x1fff2395
        0x1fff225c:    6182        .a      STR      r2,[r0,#0x18]
        0x1fff225e:    4a36        6J      LDR      r2,[pc,#216] ; [0x1fff2338] = 0x1fff2529
        0x1fff2260:    62c2        .b      STR      r2,[r0,#0x2c]
        0x1fff2262:    4a36        6J      LDR      r2,[pc,#216] ; [0x1fff233c] = 0x1fff23b1
        0x1fff2264:    6302        .c      STR      r2,[r0,#0x30]
        0x1fff2266:    4a2f        /J      LDR      r2,[pc,#188] ; [0x1fff2324] = 0x1fff0100
        0x1fff2268:    4835        5H      LDR      r0,[pc,#212] ; [0x1fff2340] = 0x1fff3681
        0x1fff226a:    3a40        @:      SUBS     r2,r2,#0x40
        0x1fff226c:    6350        Pc      STR      r0,[r2,#0x34]
        0x1fff226e:    4835        5H      LDR      r0,[pc,#212] ; [0x1fff2344] = 0x1fff3441
        0x1fff2270:    63d0        .c      STR      r0,[r2,#0x3c]
        0x1fff2272:    4835        5H      LDR      r0,[pc,#212] ; [0x1fff2348] = 0x1fff69d1
        0x1fff2274:    61c8        .a      STR      r0,[r1,#0x1c]
        0x1fff2276:    4835        5H      LDR      r0,[pc,#212] ; [0x1fff234c] = 0x1fff67bd
        0x1fff2278:    6390        .c      STR      r0,[r2,#0x38]
        0x1fff227a:    492a        *I      LDR      r1,[pc,#168] ; [0x1fff2324] = 0x1fff0100
        0x1fff227c:    4834        4H      LDR      r0,[pc,#208] ; [0x1fff2350] = 0x1fff4509
        0x1fff227e:    3140        @1      ADDS     r1,r1,#0x40
        0x1fff2280:    6188        .a      STR      r0,[r1,#0x18]
        0x1fff2282:    4935        5I      LDR      r1,[pc,#212] ; [0x1fff2358] = 0x1fff0200
        0x1fff2284:    4833        3H      LDR      r0,[pc,#204] ; [0x1fff2354] = 0x1fff1df1
        0x1fff2286:    6088        .`      STR      r0,[r1,#8]
        0x1fff2288:    4826        &H      LDR      r0,[pc,#152] ; [0x1fff2324] = 0x1fff0100
        0x1fff228a:    4934        4I      LDR      r1,[pc,#208] ; [0x1fff235c] = 0x1fff45c5
        0x1fff228c:    3880        .8      SUBS     r0,r0,#0x80
        0x1fff228e:    6041        A`      STR      r1,[r0,#4]
        0x1fff2290:    4933        3I      LDR      r1,[pc,#204] ; [0x1fff2360] = 0x1fff4815
        0x1fff2292:    4a24        $J      LDR      r2,[pc,#144] ; [0x1fff2324] = 0x1fff0100
        0x1fff2294:    6341        Ac      STR      r1,[r0,#0x34]
        0x1fff2296:    4933        3I      LDR      r1,[pc,#204] ; [0x1fff2364] = 0x1fff28b1
        0x1fff2298:    3ac0        .:      SUBS     r2,r2,#0xc0
        0x1fff229a:    60d1        .`      STR      r1,[r2,#0xc]
        0x1fff229c:    4933        3I      LDR      r1,[pc,#204] ; [0x1fff236c] = 0x1fff0000
        0x1fff229e:    4b32        2K      LDR      r3,[pc,#200] ; [0x1fff2368] = 0x1fff1dd5
        0x1fff22a0:    4c20         L      LDR      r4,[pc,#128] ; [0x1fff2324] = 0x1fff0100
        0x1fff22a2:    63cb        .c      STR      r3,[r1,#0x3c]
        0x1fff22a4:    4b32        2K      LDR      r3,[pc,#200] ; [0x1fff2370] = 0x1fff5555
        0x1fff22a6:    3c40        @<      SUBS     r4,r4,#0x40
        0x1fff22a8:    6323        #c      STR      r3,[r4,#0x30]
        0x1fff22aa:    4b32        2K      LDR      r3,[pc,#200] ; [0x1fff2374] = 0x1fff46d9
        0x1fff22ac:    6293        .b      STR      r3,[r2,#0x28]
        0x1fff22ae:    4a32        2J      LDR      r2,[pc,#200] ; [0x1fff2378] = 0x1fff4d6d
        0x1fff22b0:    63c2        .c      STR      r2,[r0,#0x3c]
        0x1fff22b2:    4a32        2J      LDR      r2,[pc,#200] ; [0x1fff237c] = 0x1fff4711
        0x1fff22b4:    60c2        .`      STR      r2,[r0,#0xc]
        0x1fff22b6:    4a32        2J      LDR      r2,[pc,#200] ; [0x1fff2380] = 0x1fff2899
        0x1fff22b8:    634a        Jc      STR      r2,[r1,#0x34]
        0x1fff22ba:    4a32        2J      LDR      r2,[pc,#200] ; [0x1fff2384] = 0x1fff4619
        0x1fff22bc:    60e2        .`      STR      r2,[r4,#0xc]
        0x1fff22be:    4a32        2J      LDR      r2,[pc,#200] ; [0x1fff2388] = 0x1fff1e21
        0x1fff22c0:    638a        .c      STR      r2,[r1,#0x38]
        0x1fff22c2:    4a32        2J      LDR      r2,[pc,#200] ; [0x1fff238c] = 0x1fff2845
        0x1fff22c4:    630a        .c      STR      r2,[r1,#0x30]
        0x1fff22c6:    4932        2I      LDR      r1,[pc,#200] ; [0x1fff2390] = 0x1fff4fd5
        0x1fff22c8:    6381        .c      STR      r1,[r0,#0x38]
        0x1fff22ca:    f7fffb4f    ..O.    BL       $Ven$TT$L$$enableSleep ; 0x1fff196c
        0x1fff22ce:    2001        .       MOVS     r0,#1
        0x1fff22d0:    f7fffb52    ..R.    BL       $Ven$TT$L$$setSleepMode ; 0x1fff1978
        0x1fff22d4:    bdf8        ..      POP      {r3-r7,pc}
    $d
        0x1fff22d6:    0000        ..      DCW    0
        0x1fff22d8:    1fff0998    ....    DCD    536807832
        0x1fff22dc:    1fff6dcc    .m..    DCD    536833484
        0x1fff22e0:    1fff0a4a    J...    DCD    536808010
        0x1fff22e4:    1fff0400    ....    DCD    536806400
        0x1fff22e8:    1fff7e58    X~..    DCD    536837720
        0x1fff22ec:    0000046e    n...    DCD    1134
        0x1fff22f0:    1fff6d3c    <m..    DCD    536833340
        0x1fff22f4:    0000073a    :...    DCD    1850
        0x1fff22f8:    01c9c380    ....    DCD    30000000
        0x1fff22fc:    0000029a    ....    DCD    666
        0x1fff2300:    0000c350    P...    DCD    50000
        0x1fff2304:    00000a28    (...    DCD    2600
        0x1fff2308:    0000186a    j...    DCD    6250
        0x1fff230c:    00004e20     N..    DCD    20000
        0x1fff2310:    1fff09f0    ....    DCD    536807920
        0x1fff2314:    11004000    .@..    DCD    285229056
        0x1fff2318:    000005dc    ....    DCD    1500
        0x1fff231c:    000f4240    @B..    DCD    1000000
        0x1fff2320:    1fff4a91    .J..    DCD    536824465
        0x1fff2324:    1fff0100    ....    DCD    536805632
        0x1fff2328:    1fff2689    .&..    DCD    536815241
        0x1fff232c:    1fff5dc5    .]..    DCD    536829381
        0x1fff2330:    1fff6099    .`..    DCD    536830105
        0x1fff2334:    1fff2395    .#..    DCD    536814485
        0x1fff2338:    1fff2529    )%..    DCD    536814889
        0x1fff233c:    1fff23b1    .#..    DCD    536814513
        0x1fff2340:    1fff3681    .6..    DCD    536819329
        0x1fff2344:    1fff3441    A4..    DCD    536818753
        0x1fff2348:    1fff69d1    .i..    DCD    536832465
        0x1fff234c:    1fff67bd    .g..    DCD    536831933
        0x1fff2350:    1fff4509    .E..    DCD    536823049
        0x1fff2354:    1fff1df1    ....    DCD    536813041
        0x1fff2358:    1fff0200    ....    DCD    536805888
        0x1fff235c:    1fff45c5    .E..    DCD    536823237
        0x1fff2360:    1fff4815    .H..    DCD    536823829
        0x1fff2364:    1fff28b1    .(..    DCD    536815793
        0x1fff2368:    1fff1dd5    ....    DCD    536813013
        0x1fff236c:    1fff0000    ....    DCD    536805376
        0x1fff2370:    1fff5555    UU..    DCD    536827221
        0x1fff2374:    1fff46d9    .F..    DCD    536823513
        0x1fff2378:    1fff4d6d    mM..    DCD    536825197
        0x1fff237c:    1fff4711    .G..    DCD    536823569
        0x1fff2380:    1fff2899    .(..    DCD    536815769
        0x1fff2384:    1fff4619    .F..    DCD    536823321
        0x1fff2388:    1fff1e21    !...    DCD    536813089
        0x1fff238c:    1fff2845    E(..    DCD    536815685
        0x1fff2390:    1fff4fd5    .O..    DCD    536825813
    $t
    i.LL_ENC_AES128_Encrypt1
    LL_ENC_AES128_Encrypt1
        0x1fff2394:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff2396:    2401        .$      MOVS     r4,#1
        0x1fff2398:    07a4        ..      LSLS     r4,r4,#30
        0x1fff239a:    68a3        .h      LDR      r3,[r4,#8]
        0x1fff239c:    2510        .%      MOVS     r5,#0x10
        0x1fff239e:    432b        +C      ORRS     r3,r3,r5
        0x1fff23a0:    60a3        .`      STR      r3,[r4,#8]
        0x1fff23a2:    f7fffaef    ....    BL       $Ven$TT$L$$LL_ENC_AES128_Encrypt0 ; 0x1fff1984
        0x1fff23a6:    68a0        .h      LDR      r0,[r4,#8]
        0x1fff23a8:    43a8        .C      BICS     r0,r0,r5
        0x1fff23aa:    60a0        .`      STR      r0,[r4,#8]
        0x1fff23ac:    bd70        p.      POP      {r4-r6,pc}
        0x1fff23ae:    0000        ..      MOVS     r0,r0
    i.LL_ENC_Decrypt1
    LL_ENC_Decrypt1
        0x1fff23b0:    b5ff        ..      PUSH     {r0-r7,lr}
        0x1fff23b2:    4606        .F      MOV      r6,r0
        0x1fff23b4:    2001        .       MOVS     r0,#1
        0x1fff23b6:    0780        ..      LSLS     r0,r0,#30
        0x1fff23b8:    6881        .h      LDR      r1,[r0,#8]
        0x1fff23ba:    b081        ..      SUB      sp,sp,#4
        0x1fff23bc:    461d        .F      MOV      r5,r3
        0x1fff23be:    2210        ."      MOVS     r2,#0x10
        0x1fff23c0:    4311        .C      ORRS     r1,r1,r2
        0x1fff23c2:    6081        .`      STR      r1,[r0,#8]
        0x1fff23c4:    4f55        UO      LDR      r7,[pc,#340] ; [0x1fff251c] = 0x40040000
        0x1fff23c6:    2000        .       MOVS     r0,#0
        0x1fff23c8:    6038        8`      STR      r0,[r7,#0]
        0x1fff23ca:    4630        0F      MOV      r0,r6
        0x1fff23cc:    30d7        .0      ADDS     r0,r0,#0xd7
        0x1fff23ce:    f7fffadf    ....    BL       $Ven$TT$L$$LL_ENC_LoadKey ; 0x1fff1990
        0x1fff23d2:    209d        .       MOVS     r0,#0x9d
        0x1fff23d4:    0080        ..      LSLS     r0,r0,#2
        0x1fff23d6:    4634        4F      MOV      r4,r6
        0x1fff23d8:    5980        .Y      LDR      r0,[r0,r6]
        0x1fff23da:    36ff        .6      ADDS     r6,r6,#0xff
        0x1fff23dc:    34ca        .4      ADDS     r4,r4,#0xca
        0x1fff23de:    3601        .6      ADDS     r6,#1
        0x1fff23e0:    2800        .(      CMP      r0,#0
        0x1fff23e2:    6830        0h      LDR      r0,[r6,#0]
        0x1fff23e4:    4622        "F      MOV      r2,r4
        0x1fff23e6:    d02c        ,.      BEQ      0x1fff2442 ; LL_ENC_Decrypt1 + 146
        0x1fff23e8:    2101        .!      MOVS     r1,#1
        0x1fff23ea:    f7fffad7    ....    BL       $Ven$TT$L$$LL_ENC_GenerateNonce ; 0x1fff199c
        0x1fff23ee:    4f4b        KO      LDR      r7,[pc,#300] ; [0x1fff251c] = 0x40040000
        0x1fff23f0:    7820         x      LDRB     r0,[r4,#0]
        0x1fff23f2:    63f8        .c      STR      r0,[r7,#0x3c]
        0x1fff23f4:    1c64        d.      ADDS     r4,r4,#1
        0x1fff23f6:    4620         F      MOV      r0,r4
        0x1fff23f8:    f7fffad6    ....    BL       $Ven$TT$L$$__aeabi_uread4 ; 0x1fff19a8
        0x1fff23fc:    ba00        ..      REV      r0,r0
        0x1fff23fe:    0a00        ..      LSRS     r0,r0,#8
        0x1fff2400:    78e1        .x      LDRB     r1,[r4,#3]
        0x1fff2402:    0200        ..      LSLS     r0,r0,#8
        0x1fff2404:    4308        .C      ORRS     r0,r0,r1
        0x1fff2406:    63b8        .c      STR      r0,[r7,#0x38]
        0x1fff2408:    1d24        $.      ADDS     r4,r4,#4
        0x1fff240a:    4620         F      MOV      r0,r4
        0x1fff240c:    f7fffacc    ....    BL       $Ven$TT$L$$__aeabi_uread4 ; 0x1fff19a8
        0x1fff2410:    ba00        ..      REV      r0,r0
        0x1fff2412:    0a00        ..      LSRS     r0,r0,#8
        0x1fff2414:    78e1        .x      LDRB     r1,[r4,#3]
        0x1fff2416:    0200        ..      LSLS     r0,r0,#8
        0x1fff2418:    4308        .C      ORRS     r0,r0,r1
        0x1fff241a:    6378        xc      STR      r0,[r7,#0x34]
        0x1fff241c:    1d24        $.      ADDS     r4,r4,#4
        0x1fff241e:    4620         F      MOV      r0,r4
        0x1fff2420:    f7fffac2    ....    BL       $Ven$TT$L$$__aeabi_uread4 ; 0x1fff19a8
        0x1fff2424:    ba00        ..      REV      r0,r0
        0x1fff2426:    0a00        ..      LSRS     r0,r0,#8
        0x1fff2428:    78e1        .x      LDRB     r1,[r4,#3]
        0x1fff242a:    0200        ..      LSLS     r0,r0,#8
        0x1fff242c:    4308        .C      ORRS     r0,r0,r1
        0x1fff242e:    6338        8c      STR      r0,[r7,#0x30]
        0x1fff2430:    9803        ..      LDR      r0,[sp,#0xc]
        0x1fff2432:    9902        ..      LDR      r1,[sp,#8]
        0x1fff2434:    0200        ..      LSLS     r0,r0,#8
        0x1fff2436:    4308        .C      ORRS     r0,r0,r1
        0x1fff2438:    60f8        .`      STR      r0,[r7,#0xc]
        0x1fff243a:    9f03        ..      LDR      r7,[sp,#0xc]
        0x1fff243c:    2400        .$      MOVS     r4,#0
        0x1fff243e:    1d3f        ?.      ADDS     r7,r7,#4
        0x1fff2440:    e00e        ..      B        0x1fff2460 ; LL_ENC_Decrypt1 + 176
        0x1fff2442:    2100        .!      MOVS     r1,#0
        0x1fff2444:    e7d1        ..      B        0x1fff23ea ; LL_ENC_Decrypt1 + 58
        0x1fff2446:    1928        (.      ADDS     r0,r5,r4
        0x1fff2448:    1c40        @.      ADDS     r0,r0,#1
        0x1fff244a:    f7fffaad    ....    BL       $Ven$TT$L$$__aeabi_uread4 ; 0x1fff19a8
        0x1fff244e:    0201        ..      LSLS     r1,r0,#8
        0x1fff2450:    5d28        (]      LDRB     r0,[r5,r4]
        0x1fff2452:    4301        .C      ORRS     r1,r1,r0
        0x1fff2454:    4832        2H      LDR      r0,[pc,#200] ; [0x1fff2520] = 0x40040100
        0x1fff2456:    1820         .      ADDS     r0,r4,r0
        0x1fff2458:    6001        .`      STR      r1,[r0,#0]
        0x1fff245a:    1d24        $.      ADDS     r4,r4,#4
        0x1fff245c:    b2a4        ..      UXTH     r4,r4
        0x1fff245e:    1f3f        ?.      SUBS     r7,r7,#4
        0x1fff2460:    2f04        ./      CMP      r7,#4
        0x1fff2462:    daf0        ..      BGE      0x1fff2446 ; LL_ENC_Decrypt1 + 150
        0x1fff2464:    2f03        ./      CMP      r7,#3
        0x1fff2466:    d004        ..      BEQ      0x1fff2472 ; LL_ENC_Decrypt1 + 194
        0x1fff2468:    2f02        ./      CMP      r7,#2
        0x1fff246a:    d008        ..      BEQ      0x1fff247e ; LL_ENC_Decrypt1 + 206
        0x1fff246c:    2f01        ./      CMP      r7,#1
        0x1fff246e:    d00c        ..      BEQ      0x1fff248a ; LL_ENC_Decrypt1 + 218
        0x1fff2470:    e011        ..      B        0x1fff2496 ; LL_ENC_Decrypt1 + 230
        0x1fff2472:    1928        (.      ADDS     r0,r5,r4
        0x1fff2474:    f7fffa98    ....    BL       $Ven$TT$L$$__aeabi_uread4 ; 0x1fff19a8
        0x1fff2478:    0201        ..      LSLS     r1,r0,#8
        0x1fff247a:    0a09        ..      LSRS     r1,r1,#8
        0x1fff247c:    e006        ..      B        0x1fff248c ; LL_ENC_Decrypt1 + 220
        0x1fff247e:    1929        ).      ADDS     r1,r5,r4
        0x1fff2480:    7848        Hx      LDRB     r0,[r1,#1]
        0x1fff2482:    780a        .x      LDRB     r2,[r1,#0]
        0x1fff2484:    0201        ..      LSLS     r1,r0,#8
        0x1fff2486:    4311        .C      ORRS     r1,r1,r2
        0x1fff2488:    e000        ..      B        0x1fff248c ; LL_ENC_Decrypt1 + 220
        0x1fff248a:    5d29        )]      LDRB     r1,[r5,r4]
        0x1fff248c:    4824        $H      LDR      r0,[pc,#144] ; [0x1fff2520] = 0x40040100
        0x1fff248e:    1820         .      ADDS     r0,r4,r0
        0x1fff2490:    6001        .`      STR      r1,[r0,#0]
        0x1fff2492:    1d24        $.      ADDS     r4,r4,#4
        0x1fff2494:    b2a4        ..      UXTH     r4,r4
        0x1fff2496:    2100        .!      MOVS     r1,#0
        0x1fff2498:    4f21        !O      LDR      r7,[pc,#132] ; [0x1fff2520] = 0x40040100
        0x1fff249a:    e002        ..      B        0x1fff24a2 ; LL_ENC_Decrypt1 + 242
        0x1fff249c:    19e0        ..      ADDS     r0,r4,r7
        0x1fff249e:    6001        .`      STR      r1,[r0,#0]
        0x1fff24a0:    1d24        $.      ADDS     r4,r4,#4
        0x1fff24a2:    2cff        .,      CMP      r4,#0xff
        0x1fff24a4:    ddfa        ..      BLE      0x1fff249c ; LL_ENC_Decrypt1 + 236
        0x1fff24a6:    481d        .H      LDR      r0,[pc,#116] ; [0x1fff251c] = 0x40040000
        0x1fff24a8:    4a1e        .J      LDR      r2,[pc,#120] ; [0x1fff2524] = 0xf08
        0x1fff24aa:    6042        B`      STR      r2,[r0,#4]
        0x1fff24ac:    220f        ."      MOVS     r2,#0xf
        0x1fff24ae:    6102        .a      STR      r2,[r0,#0x10]
        0x1fff24b0:    2201        ."      MOVS     r2,#1
        0x1fff24b2:    6002        .`      STR      r2,[r0,#0]
        0x1fff24b4:    6942        Bi      LDR      r2,[r0,#0x14]
        0x1fff24b6:    2a00        .*      CMP      r2,#0
        0x1fff24b8:    d0fc        ..      BEQ      0x1fff24b4 ; LL_ENC_Decrypt1 + 260
        0x1fff24ba:    6942        Bi      LDR      r2,[r0,#0x14]
        0x1fff24bc:    0793        ..      LSLS     r3,r2,#30
        0x1fff24be:    d401        ..      BMI      0x1fff24c4 ; LL_ENC_Decrypt1 + 276
        0x1fff24c0:    0752        R.      LSLS     r2,r2,#29
        0x1fff24c2:    d408        ..      BMI      0x1fff24d6 ; LL_ENC_Decrypt1 + 294
        0x1fff24c4:    2001        .       MOVS     r0,#1
        0x1fff24c6:    0780        ..      LSLS     r0,r0,#30
        0x1fff24c8:    6882        .h      LDR      r2,[r0,#8]
        0x1fff24ca:    2110        .!      MOVS     r1,#0x10
        0x1fff24cc:    438a        .C      BICS     r2,r2,r1
        0x1fff24ce:    6082        .`      STR      r2,[r0,#8]
        0x1fff24d0:    2000        .       MOVS     r0,#0
        0x1fff24d2:    b005        ..      ADD      sp,sp,#0x14
        0x1fff24d4:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff24d6:    6001        .`      STR      r1,[r0,#0]
        0x1fff24d8:    2000        .       MOVS     r0,#0
        0x1fff24da:    9a03        ..      LDR      r2,[sp,#0xc]
        0x1fff24dc:    e011        ..      B        0x1fff2502 ; LL_ENC_Decrypt1 + 338
        0x1fff24de:    19c1        ..      ADDS     r1,r0,r7
        0x1fff24e0:    6809        .h      LDR      r1,[r1,#0]
        0x1fff24e2:    5429        )T      STRB     r1,[r5,r0]
        0x1fff24e4:    1c40        @.      ADDS     r0,r0,#1
        0x1fff24e6:    b280        ..      UXTH     r0,r0
        0x1fff24e8:    0a0b        ..      LSRS     r3,r1,#8
        0x1fff24ea:    542b        +T      STRB     r3,[r5,r0]
        0x1fff24ec:    1c40        @.      ADDS     r0,r0,#1
        0x1fff24ee:    0c0b        ..      LSRS     r3,r1,#16
        0x1fff24f0:    b280        ..      UXTH     r0,r0
        0x1fff24f2:    542b        +T      STRB     r3,[r5,r0]
        0x1fff24f4:    1c40        @.      ADDS     r0,r0,#1
        0x1fff24f6:    b280        ..      UXTH     r0,r0
        0x1fff24f8:    0e09        ..      LSRS     r1,r1,#24
        0x1fff24fa:    5429        )T      STRB     r1,[r5,r0]
        0x1fff24fc:    1c40        @.      ADDS     r0,r0,#1
        0x1fff24fe:    b280        ..      UXTH     r0,r0
        0x1fff2500:    1f12        ..      SUBS     r2,r2,#4
        0x1fff2502:    2a00        .*      CMP      r2,#0
        0x1fff2504:    dceb        ..      BGT      0x1fff24de ; LL_ENC_Decrypt1 + 302
        0x1fff2506:    6830        0h      LDR      r0,[r6,#0]
        0x1fff2508:    1c40        @.      ADDS     r0,r0,#1
        0x1fff250a:    6030        0`      STR      r0,[r6,#0]
        0x1fff250c:    2001        .       MOVS     r0,#1
        0x1fff250e:    0780        ..      LSLS     r0,r0,#30
        0x1fff2510:    6882        .h      LDR      r2,[r0,#8]
        0x1fff2512:    2110        .!      MOVS     r1,#0x10
        0x1fff2514:    438a        .C      BICS     r2,r2,r1
        0x1fff2516:    6082        .`      STR      r2,[r0,#8]
        0x1fff2518:    2001        .       MOVS     r0,#1
        0x1fff251a:    e7da        ..      B        0x1fff24d2 ; LL_ENC_Decrypt1 + 290
    $d
        0x1fff251c:    40040000    ...@    DCD    1074003968
        0x1fff2520:    40040100    ...@    DCD    1074004224
        0x1fff2524:    00000f08    ....    DCD    3848
    $t
    i.LL_ENC_Encrypt1
    LL_ENC_Encrypt1
        0x1fff2528:    b5ff        ..      PUSH     {r0-r7,lr}
        0x1fff252a:    4605        .F      MOV      r5,r0
        0x1fff252c:    2001        .       MOVS     r0,#1
        0x1fff252e:    0780        ..      LSLS     r0,r0,#30
        0x1fff2530:    6881        .h      LDR      r1,[r0,#8]
        0x1fff2532:    b081        ..      SUB      sp,sp,#4
        0x1fff2534:    461e        .F      MOV      r6,r3
        0x1fff2536:    2210        ."      MOVS     r2,#0x10
        0x1fff2538:    4311        .C      ORRS     r1,r1,r2
        0x1fff253a:    6081        .`      STR      r1,[r0,#8]
        0x1fff253c:    4f50        PO      LDR      r7,[pc,#320] ; [0x1fff2680] = 0x40040000
        0x1fff253e:    2000        .       MOVS     r0,#0
        0x1fff2540:    6038        8`      STR      r0,[r7,#0]
        0x1fff2542:    4628        (F      MOV      r0,r5
        0x1fff2544:    30d7        .0      ADDS     r0,r0,#0xd7
        0x1fff2546:    f7fffa23    ..#.    BL       $Ven$TT$L$$LL_ENC_LoadKey ; 0x1fff1990
        0x1fff254a:    209d        .       MOVS     r0,#0x9d
        0x1fff254c:    0080        ..      LSLS     r0,r0,#2
        0x1fff254e:    462c        ,F      MOV      r4,r5
        0x1fff2550:    5940        @Y      LDR      r0,[r0,r5]
        0x1fff2552:    34ca        .4      ADDS     r4,r4,#0xca
        0x1fff2554:    3580        .5      ADDS     r5,r5,#0x80
        0x1fff2556:    2800        .(      CMP      r0,#0
        0x1fff2558:    6fe8        .o      LDR      r0,[r5,#0x7c]
        0x1fff255a:    4622        "F      MOV      r2,r4
        0x1fff255c:    d02b        +.      BEQ      0x1fff25b6 ; LL_ENC_Encrypt1 + 142
        0x1fff255e:    2100        .!      MOVS     r1,#0
        0x1fff2560:    f7fffa1c    ....    BL       $Ven$TT$L$$LL_ENC_GenerateNonce ; 0x1fff199c
        0x1fff2564:    4f46        FO      LDR      r7,[pc,#280] ; [0x1fff2680] = 0x40040000
        0x1fff2566:    7820         x      LDRB     r0,[r4,#0]
        0x1fff2568:    63f8        .c      STR      r0,[r7,#0x3c]
        0x1fff256a:    1c64        d.      ADDS     r4,r4,#1
        0x1fff256c:    4620         F      MOV      r0,r4
        0x1fff256e:    f7fffa1b    ....    BL       $Ven$TT$L$$__aeabi_uread4 ; 0x1fff19a8
        0x1fff2572:    ba00        ..      REV      r0,r0
        0x1fff2574:    0a00        ..      LSRS     r0,r0,#8
        0x1fff2576:    78e1        .x      LDRB     r1,[r4,#3]
        0x1fff2578:    0200        ..      LSLS     r0,r0,#8
        0x1fff257a:    4308        .C      ORRS     r0,r0,r1
        0x1fff257c:    63b8        .c      STR      r0,[r7,#0x38]
        0x1fff257e:    1d24        $.      ADDS     r4,r4,#4
        0x1fff2580:    4620         F      MOV      r0,r4
        0x1fff2582:    f7fffa11    ....    BL       $Ven$TT$L$$__aeabi_uread4 ; 0x1fff19a8
        0x1fff2586:    ba00        ..      REV      r0,r0
        0x1fff2588:    0a00        ..      LSRS     r0,r0,#8
        0x1fff258a:    78e1        .x      LDRB     r1,[r4,#3]
        0x1fff258c:    0200        ..      LSLS     r0,r0,#8
        0x1fff258e:    4308        .C      ORRS     r0,r0,r1
        0x1fff2590:    6378        xc      STR      r0,[r7,#0x34]
        0x1fff2592:    1d24        $.      ADDS     r4,r4,#4
        0x1fff2594:    4620         F      MOV      r0,r4
        0x1fff2596:    f7fffa07    ....    BL       $Ven$TT$L$$__aeabi_uread4 ; 0x1fff19a8
        0x1fff259a:    ba00        ..      REV      r0,r0
        0x1fff259c:    0a00        ..      LSRS     r0,r0,#8
        0x1fff259e:    78e1        .x      LDRB     r1,[r4,#3]
        0x1fff25a0:    0200        ..      LSLS     r0,r0,#8
        0x1fff25a2:    4308        .C      ORRS     r0,r0,r1
        0x1fff25a4:    6338        8c      STR      r0,[r7,#0x30]
        0x1fff25a6:    9803        ..      LDR      r0,[sp,#0xc]
        0x1fff25a8:    9902        ..      LDR      r1,[sp,#8]
        0x1fff25aa:    0200        ..      LSLS     r0,r0,#8
        0x1fff25ac:    4308        .C      ORRS     r0,r0,r1
        0x1fff25ae:    60f8        .`      STR      r0,[r7,#0xc]
        0x1fff25b0:    2400        .$      MOVS     r4,#0
        0x1fff25b2:    9f03        ..      LDR      r7,[sp,#0xc]
        0x1fff25b4:    e00e        ..      B        0x1fff25d4 ; LL_ENC_Encrypt1 + 172
        0x1fff25b6:    2101        .!      MOVS     r1,#1
        0x1fff25b8:    e7d2        ..      B        0x1fff2560 ; LL_ENC_Encrypt1 + 56
        0x1fff25ba:    1930        0.      ADDS     r0,r6,r4
        0x1fff25bc:    1c40        @.      ADDS     r0,r0,#1
        0x1fff25be:    f7fff9f3    ....    BL       $Ven$TT$L$$__aeabi_uread4 ; 0x1fff19a8
        0x1fff25c2:    0201        ..      LSLS     r1,r0,#8
        0x1fff25c4:    5d30        0]      LDRB     r0,[r6,r4]
        0x1fff25c6:    4301        .C      ORRS     r1,r1,r0
        0x1fff25c8:    482e        .H      LDR      r0,[pc,#184] ; [0x1fff2684] = 0x40040100
        0x1fff25ca:    1820         .      ADDS     r0,r4,r0
        0x1fff25cc:    6001        .`      STR      r1,[r0,#0]
        0x1fff25ce:    1d24        $.      ADDS     r4,r4,#4
        0x1fff25d0:    b2a4        ..      UXTH     r4,r4
        0x1fff25d2:    1f3f        ?.      SUBS     r7,r7,#4
        0x1fff25d4:    2f04        ./      CMP      r7,#4
        0x1fff25d6:    daf0        ..      BGE      0x1fff25ba ; LL_ENC_Encrypt1 + 146
        0x1fff25d8:    2f03        ./      CMP      r7,#3
        0x1fff25da:    d004        ..      BEQ      0x1fff25e6 ; LL_ENC_Encrypt1 + 190
        0x1fff25dc:    2f02        ./      CMP      r7,#2
        0x1fff25de:    d008        ..      BEQ      0x1fff25f2 ; LL_ENC_Encrypt1 + 202
        0x1fff25e0:    2f01        ./      CMP      r7,#1
        0x1fff25e2:    d00f        ..      BEQ      0x1fff2604 ; LL_ENC_Encrypt1 + 220
        0x1fff25e4:    e014        ..      B        0x1fff2610 ; LL_ENC_Encrypt1 + 232
        0x1fff25e6:    1930        0.      ADDS     r0,r6,r4
        0x1fff25e8:    f7fff9de    ....    BL       $Ven$TT$L$$__aeabi_uread4 ; 0x1fff19a8
        0x1fff25ec:    0201        ..      LSLS     r1,r0,#8
        0x1fff25ee:    0a09        ..      LSRS     r1,r1,#8
        0x1fff25f0:    e009        ..      B        0x1fff2606 ; LL_ENC_Encrypt1 + 222
        0x1fff25f2:    1931        1.      ADDS     r1,r6,r4
        0x1fff25f4:    7848        Hx      LDRB     r0,[r1,#1]
        0x1fff25f6:    7809        .x      LDRB     r1,[r1,#0]
        0x1fff25f8:    0200        ..      LSLS     r0,r0,#8
        0x1fff25fa:    4308        .C      ORRS     r0,r0,r1
        0x1fff25fc:    4921        !I      LDR      r1,[pc,#132] ; [0x1fff2684] = 0x40040100
        0x1fff25fe:    1861        a.      ADDS     r1,r4,r1
        0x1fff2600:    6008        .`      STR      r0,[r1,#0]
        0x1fff2602:    e003        ..      B        0x1fff260c ; LL_ENC_Encrypt1 + 228
        0x1fff2604:    5d31        1]      LDRB     r1,[r6,r4]
        0x1fff2606:    481f        .H      LDR      r0,[pc,#124] ; [0x1fff2684] = 0x40040100
        0x1fff2608:    1820         .      ADDS     r0,r4,r0
        0x1fff260a:    6001        .`      STR      r1,[r0,#0]
        0x1fff260c:    1d24        $.      ADDS     r4,r4,#4
        0x1fff260e:    b2a4        ..      UXTH     r4,r4
        0x1fff2610:    2100        .!      MOVS     r1,#0
        0x1fff2612:    4b1c        .K      LDR      r3,[pc,#112] ; [0x1fff2684] = 0x40040100
        0x1fff2614:    e002        ..      B        0x1fff261c ; LL_ENC_Encrypt1 + 244
        0x1fff2616:    18e0        ..      ADDS     r0,r4,r3
        0x1fff2618:    6001        .`      STR      r1,[r0,#0]
        0x1fff261a:    1d24        $.      ADDS     r4,r4,#4
        0x1fff261c:    2cff        .,      CMP      r4,#0xff
        0x1fff261e:    ddfa        ..      BLE      0x1fff2616 ; LL_ENC_Encrypt1 + 238
        0x1fff2620:    220f        ."      MOVS     r2,#0xf
        0x1fff2622:    4817        .H      LDR      r0,[pc,#92] ; [0x1fff2680] = 0x40040000
        0x1fff2624:    0212        ..      LSLS     r2,r2,#8
        0x1fff2626:    6042        B`      STR      r2,[r0,#4]
        0x1fff2628:    220f        ."      MOVS     r2,#0xf
        0x1fff262a:    6102        .a      STR      r2,[r0,#0x10]
        0x1fff262c:    2201        ."      MOVS     r2,#1
        0x1fff262e:    6002        .`      STR      r2,[r0,#0]
        0x1fff2630:    6942        Bi      LDR      r2,[r0,#0x14]
        0x1fff2632:    2a00        .*      CMP      r2,#0
        0x1fff2634:    d0fc        ..      BEQ      0x1fff2630 ; LL_ENC_Encrypt1 + 264
        0x1fff2636:    6001        .`      STR      r1,[r0,#0]
        0x1fff2638:    9a03        ..      LDR      r2,[sp,#0xc]
        0x1fff263a:    2000        .       MOVS     r0,#0
        0x1fff263c:    1d12        ..      ADDS     r2,r2,#4
        0x1fff263e:    e011        ..      B        0x1fff2664 ; LL_ENC_Encrypt1 + 316
        0x1fff2640:    18c1        ..      ADDS     r1,r0,r3
        0x1fff2642:    6809        .h      LDR      r1,[r1,#0]
        0x1fff2644:    5431        1T      STRB     r1,[r6,r0]
        0x1fff2646:    1c40        @.      ADDS     r0,r0,#1
        0x1fff2648:    b280        ..      UXTH     r0,r0
        0x1fff264a:    0a0c        ..      LSRS     r4,r1,#8
        0x1fff264c:    5434        4T      STRB     r4,[r6,r0]
        0x1fff264e:    1c40        @.      ADDS     r0,r0,#1
        0x1fff2650:    0c0c        ..      LSRS     r4,r1,#16
        0x1fff2652:    b280        ..      UXTH     r0,r0
        0x1fff2654:    5434        4T      STRB     r4,[r6,r0]
        0x1fff2656:    1c40        @.      ADDS     r0,r0,#1
        0x1fff2658:    b280        ..      UXTH     r0,r0
        0x1fff265a:    0e09        ..      LSRS     r1,r1,#24
        0x1fff265c:    5431        1T      STRB     r1,[r6,r0]
        0x1fff265e:    1c40        @.      ADDS     r0,r0,#1
        0x1fff2660:    b280        ..      UXTH     r0,r0
        0x1fff2662:    1f12        ..      SUBS     r2,r2,#4
        0x1fff2664:    2a00        .*      CMP      r2,#0
        0x1fff2666:    dceb        ..      BGT      0x1fff2640 ; LL_ENC_Encrypt1 + 280
        0x1fff2668:    6fe8        .o      LDR      r0,[r5,#0x7c]
        0x1fff266a:    1c40        @.      ADDS     r0,r0,#1
        0x1fff266c:    67e8        .g      STR      r0,[r5,#0x7c]
        0x1fff266e:    2001        .       MOVS     r0,#1
        0x1fff2670:    0780        ..      LSLS     r0,r0,#30
        0x1fff2672:    6882        .h      LDR      r2,[r0,#8]
        0x1fff2674:    2110        .!      MOVS     r1,#0x10
        0x1fff2676:    438a        .C      BICS     r2,r2,r1
        0x1fff2678:    6082        .`      STR      r2,[r0,#8]
        0x1fff267a:    b005        ..      ADD      sp,sp,#0x14
        0x1fff267c:    bdf0        ..      POP      {r4-r7,pc}
    $d
        0x1fff267e:    0000        ..      DCW    0
        0x1fff2680:    40040000    ...@    DCD    1074003968
        0x1fff2684:    40040100    ...@    DCD    1074004224
    $t
    i.LL_IRQHandler1
    LL_IRQHandler1
        0x1fff2688:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff268a:    f7fff993    ....    BL       $Ven$TT$L$$read_current_fine_time ; 0x1fff19b4
        0x1fff268e:    4964        dI      LDR      r1,[pc,#400] ; [0x1fff2820] = 0x1fff099c
        0x1fff2690:    6008        .`      STR      r0,[r1,#0]
        0x1fff2692:    2004        .       MOVS     r0,#4
        0x1fff2694:    f7fff994    ....    BL       $Ven$TT$L$$ll_debug_output ; 0x1fff19c0
        0x1fff2698:    f7fff998    ....    BL       $Ven$TT$L$$ll_hw_get_irq_status ; 0x1fff19cc
        0x1fff269c:    4605        .F      MOV      r5,r0
        0x1fff269e:    07c0        ..      LSLS     r0,r0,#31
        0x1fff26a0:    d015        ..      BEQ      0x1fff26ce ; LL_IRQHandler1 + 70
        0x1fff26a2:    4960        `I      LDR      r1,[pc,#384] ; [0x1fff2824] = 0x1fff0998
        0x1fff26a4:    2000        .       MOVS     r0,#0
        0x1fff26a6:    6008        .`      STR      r0,[r1,#0]
        0x1fff26a8:    485f        _H      LDR      r0,[pc,#380] ; [0x1fff2828] = 0x1fff0990
        0x1fff26aa:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff26ac:    2801        .(      CMP      r0,#1
        0x1fff26ae:    d011        ..      BEQ      0x1fff26d4 ; LL_IRQHandler1 + 76
        0x1fff26b0:    2803        .(      CMP      r0,#3
        0x1fff26b2:    d013        ..      BEQ      0x1fff26dc ; LL_IRQHandler1 + 84
        0x1fff26b4:    2804        .(      CMP      r0,#4
        0x1fff26b6:    d015        ..      BEQ      0x1fff26e4 ; LL_IRQHandler1 + 92
        0x1fff26b8:    2802        .(      CMP      r0,#2
        0x1fff26ba:    d017        ..      BEQ      0x1fff26ec ; LL_IRQHandler1 + 100
        0x1fff26bc:    2805        .(      CMP      r0,#5
        0x1fff26be:    d019        ..      BEQ      0x1fff26f4 ; LL_IRQHandler1 + 108
        0x1fff26c0:    f7fff98a    ....    BL       $Ven$TT$L$$ll_hw_get_tr_mode ; 0x1fff19d8
        0x1fff26c4:    4f59        YO      LDR      r7,[pc,#356] ; [0x1fff282c] = 0x1fff091c
        0x1fff26c6:    4604        .F      MOV      r4,r0
        0x1fff26c8:    2801        .(      CMP      r0,#1
        0x1fff26ca:    d01a        ..      BEQ      0x1fff2702 ; LL_IRQHandler1 + 122
        0x1fff26cc:    e01e        ..      B        0x1fff270c ; LL_IRQHandler1 + 132
        0x1fff26ce:    f7fff989    ....    BL       $Ven$TT$L$$ll_hw_clr_irq ; 0x1fff19e4
        0x1fff26d2:    bdf8        ..      POP      {r3-r7,pc}
        0x1fff26d4:    4628        (F      MOV      r0,r5
        0x1fff26d6:    f7fff98b    ....    BL       $Ven$TT$L$$ll_processExtAdvIRQ ; 0x1fff19f0
        0x1fff26da:    e00e        ..      B        0x1fff26fa ; LL_IRQHandler1 + 114
        0x1fff26dc:    4628        (F      MOV      r0,r5
        0x1fff26de:    f7fff98d    ....    BL       $Ven$TT$L$$ll_processExtScanIRQ ; 0x1fff19fc
        0x1fff26e2:    e00a        ..      B        0x1fff26fa ; LL_IRQHandler1 + 114
        0x1fff26e4:    4628        (F      MOV      r0,r5
        0x1fff26e6:    f7fff98f    ....    BL       $Ven$TT$L$$ll_processExtInitIRQ ; 0x1fff1a08
        0x1fff26ea:    e006        ..      B        0x1fff26fa ; LL_IRQHandler1 + 114
        0x1fff26ec:    4628        (F      MOV      r0,r5
        0x1fff26ee:    f7fff991    ....    BL       $Ven$TT$L$$ll_processPrdAdvIRQ ; 0x1fff1a14
        0x1fff26f2:    e002        ..      B        0x1fff26fa ; LL_IRQHandler1 + 114
        0x1fff26f4:    4628        (F      MOV      r0,r5
        0x1fff26f6:    f7fff993    ....    BL       $Ven$TT$L$$ll_processPrdScanIRQ ; 0x1fff1a20
        0x1fff26fa:    b240        @.      SXTB     r0,r0
        0x1fff26fc:    2801        .(      CMP      r0,#1
        0x1fff26fe:    d0e8        ..      BEQ      0x1fff26d2 ; LL_IRQHandler1 + 74
        0x1fff2700:    e05f        _.      B        0x1fff27c2 ; LL_IRQHandler1 + 314
        0x1fff2702:    7838        8x      LDRB     r0,[r7,#0]
        0x1fff2704:    2805        .(      CMP      r0,#5
        0x1fff2706:    d009        ..      BEQ      0x1fff271c ; LL_IRQHandler1 + 148
        0x1fff2708:    2806        .(      CMP      r0,#6
        0x1fff270a:    d007        ..      BEQ      0x1fff271c ; LL_IRQHandler1 + 148
        0x1fff270c:    4848        HH      LDR      r0,[pc,#288] ; [0x1fff2830] = 0x1fff0923
        0x1fff270e:    4e49        IN      LDR      r6,[pc,#292] ; [0x1fff2834] = 0x1fff0ba6
        0x1fff2710:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff2712:    2802        .(      CMP      r0,#2
        0x1fff2714:    d006        ..      BEQ      0x1fff2724 ; LL_IRQHandler1 + 156
        0x1fff2716:    2805        .(      CMP      r0,#5
        0x1fff2718:    d004        ..      BEQ      0x1fff2724 ; LL_IRQHandler1 + 156
        0x1fff271a:    e009        ..      B        0x1fff2730 ; LL_IRQHandler1 + 168
        0x1fff271c:    4628        (F      MOV      r0,r5
        0x1fff271e:    f002fc05    ....    BL       ll_processBasicIRQ_SRX ; 0x1fff4f2c
        0x1fff2722:    e04e        N.      B        0x1fff27c2 ; LL_IRQHandler1 + 314
        0x1fff2724:    2c00        .,      CMP      r4,#0
        0x1fff2726:    d006        ..      BEQ      0x1fff2736 ; LL_IRQHandler1 + 174
        0x1fff2728:    2802        .(      CMP      r0,#2
        0x1fff272a:    d008        ..      BEQ      0x1fff273e ; LL_IRQHandler1 + 182
        0x1fff272c:    2805        .(      CMP      r0,#5
        0x1fff272e:    d006        ..      BEQ      0x1fff273e ; LL_IRQHandler1 + 182
        0x1fff2730:    2c02        .,      CMP      r4,#2
        0x1fff2732:    d00e        ..      BEQ      0x1fff2752 ; LL_IRQHandler1 + 202
        0x1fff2734:    e005        ..      B        0x1fff2742 ; LL_IRQHandler1 + 186
        0x1fff2736:    4628        (F      MOV      r0,r5
        0x1fff2738:    f002fc1c    ....    BL       ll_processBasicIRQ_secondaryAdvSTX ; 0x1fff4f74
        0x1fff273c:    e041        A.      B        0x1fff27c2 ; LL_IRQHandler1 + 314
        0x1fff273e:    2c02        .,      CMP      r4,#2
        0x1fff2740:    d002        ..      BEQ      0x1fff2748 ; LL_IRQHandler1 + 192
        0x1fff2742:    2c01        .,      CMP      r4,#1
        0x1fff2744:    d013        ..      BEQ      0x1fff276e ; LL_IRQHandler1 + 230
        0x1fff2746:    e016        ..      B        0x1fff2776 ; LL_IRQHandler1 + 238
        0x1fff2748:    7bb1        .{      LDRB     r1,[r6,#0xe]
        0x1fff274a:    2900        .)      CMP      r1,#0
        0x1fff274c:    d007        ..      BEQ      0x1fff275e ; LL_IRQHandler1 + 214
        0x1fff274e:    2902        .)      CMP      r1,#2
        0x1fff2750:    d005        ..      BEQ      0x1fff275e ; LL_IRQHandler1 + 214
        0x1fff2752:    7839        9x      LDRB     r1,[r7,#0]
        0x1fff2754:    2905        .)      CMP      r1,#5
        0x1fff2756:    d006        ..      BEQ      0x1fff2766 ; LL_IRQHandler1 + 222
        0x1fff2758:    2801        .(      CMP      r0,#1
        0x1fff275a:    d01a        ..      BEQ      0x1fff2792 ; LL_IRQHandler1 + 266
        0x1fff275c:    e00b        ..      B        0x1fff2776 ; LL_IRQHandler1 + 238
        0x1fff275e:    4628        (F      MOV      r0,r5
        0x1fff2760:    f002fc14    ....    BL       ll_processBasicIRQ_secondaryAdvTRX ; 0x1fff4f8c
        0x1fff2764:    e018        ..      B        0x1fff2798 ; LL_IRQHandler1 + 272
        0x1fff2766:    4628        (F      MOV      r0,r5
        0x1fff2768:    f002fbec    ....    BL       ll_processBasicIRQ_ScanTRX ; 0x1fff4f44
        0x1fff276c:    e014        ..      B        0x1fff2798 ; LL_IRQHandler1 + 272
        0x1fff276e:    2801        .(      CMP      r0,#1
        0x1fff2770:    d007        ..      BEQ      0x1fff2782 ; LL_IRQHandler1 + 250
        0x1fff2772:    2806        .(      CMP      r0,#6
        0x1fff2774:    d009        ..      BEQ      0x1fff278a ; LL_IRQHandler1 + 258
        0x1fff2776:    4628        (F      MOV      r0,r5
        0x1fff2778:    f7fff958    ..X.    BL       $Ven$TT$L$$ll_processBasicIRQ ; 0x1fff1a2c
        0x1fff277c:    2c02        .,      CMP      r4,#2
        0x1fff277e:    d00b        ..      BEQ      0x1fff2798 ; LL_IRQHandler1 + 272
        0x1fff2780:    e01f        ..      B        0x1fff27c2 ; LL_IRQHandler1 + 314
        0x1fff2782:    4628        (F      MOV      r0,r5
        0x1fff2784:    f002fc1a    ....    BL       ll_processBasicIRQ_secondaryScanSRX ; 0x1fff4fbc
        0x1fff2788:    e01b        ..      B        0x1fff27c2 ; LL_IRQHandler1 + 314
        0x1fff278a:    4628        (F      MOV      r0,r5
        0x1fff278c:    f002fc0a    ....    BL       ll_processBasicIRQ_secondaryInitSRX ; 0x1fff4fa4
        0x1fff2790:    e017        ..      B        0x1fff27c2 ; LL_IRQHandler1 + 314
        0x1fff2792:    4628        (F      MOV      r0,r5
        0x1fff2794:    f002fbe2    ....    BL       ll_processBasicIRQ_secScanTRX ; 0x1fff4f5c
        0x1fff2798:    7838        8x      LDRB     r0,[r7,#0]
        0x1fff279a:    2801        .(      CMP      r0,#1
        0x1fff279c:    d111        ..      BNE      0x1fff27c2 ; LL_IRQHandler1 + 314
        0x1fff279e:    0568        h.      LSLS     r0,r5,#21
        0x1fff27a0:    d40f        ..      BMI      0x1fff27c2 ; LL_IRQHandler1 + 314
        0x1fff27a2:    7b70        p{      LDRB     r0,[r6,#0xd]
        0x1fff27a4:    07c1        ..      LSLS     r1,r0,#31
        0x1fff27a6:    d001        ..      BEQ      0x1fff27ac ; LL_IRQHandler1 + 292
        0x1fff27a8:    2025        %       MOVS     r0,#0x25
        0x1fff27aa:    e004        ..      B        0x1fff27b6 ; LL_IRQHandler1 + 302
        0x1fff27ac:    0780        ..      LSLS     r0,r0,#30
        0x1fff27ae:    d501        ..      BPL      0x1fff27b4 ; LL_IRQHandler1 + 300
        0x1fff27b0:    2026        &       MOVS     r0,#0x26
        0x1fff27b2:    e000        ..      B        0x1fff27b6 ; LL_IRQHandler1 + 302
        0x1fff27b4:    2027        '       MOVS     r0,#0x27
        0x1fff27b6:    7d31        1}      LDRB     r1,[r6,#0x14]
        0x1fff27b8:    4281        .B      CMP      r1,r0
        0x1fff27ba:    d902        ..      BLS      0x1fff27c2 ; LL_IRQHandler1 + 314
        0x1fff27bc:    2032        2       MOVS     r0,#0x32
        0x1fff27be:    f7fff93b    ..;.    BL       $Ven$TT$L$$ll_schedule_next_event ; 0x1fff1a38
        0x1fff27c2:    4c1b        .L      LDR      r4,[pc,#108] ; [0x1fff2830] = 0x1fff0923
        0x1fff27c4:    7820         x      LDRB     r0,[r4,#0]
        0x1fff27c6:    2804        .(      CMP      r0,#4
        0x1fff27c8:    d004        ..      BEQ      0x1fff27d4 ; LL_IRQHandler1 + 332
        0x1fff27ca:    2803        .(      CMP      r0,#3
        0x1fff27cc:    d01a        ..      BEQ      0x1fff2804 ; LL_IRQHandler1 + 380
        0x1fff27ce:    2807        .(      CMP      r0,#7
        0x1fff27d0:    d01d        ..      BEQ      0x1fff280e ; LL_IRQHandler1 + 390
        0x1fff27d2:    e020         .      B        0x1fff2816 ; LL_IRQHandler1 + 398
        0x1fff27d4:    f7fff936    ..6.    BL       $Ven$TT$L$$llSecAdvAllow ; 0x1fff1a44
        0x1fff27d8:    2800        .(      CMP      r0,#0
        0x1fff27da:    d01c        ..      BEQ      0x1fff2816 ; LL_IRQHandler1 + 398
        0x1fff27dc:    f7fff938    ..8.    BL       $Ven$TT$L$$llSetupSecAdvEvt ; 0x1fff1a50
        0x1fff27e0:    2058        X       MOVS     r0,#0x58
        0x1fff27e2:    f7fff93b    ..;.    BL       $Ven$TT$L$$ll_hw_set_rx_timeout ; 0x1fff1a5c
        0x1fff27e6:    7820         x      LDRB     r0,[r4,#0]
        0x1fff27e8:    2800        .(      CMP      r0,#0
        0x1fff27ea:    d001        ..      BEQ      0x1fff27f0 ; LL_IRQHandler1 + 360
        0x1fff27ec:    2002        .       MOVS     r0,#2
        0x1fff27ee:    7020         p      STRB     r0,[r4,#0]
        0x1fff27f0:    4811        .H      LDR      r0,[pc,#68] ; [0x1fff2838] = 0x1fff6dcc
        0x1fff27f2:    7840        @x      LDRB     r0,[r0,#1]
        0x1fff27f4:    2800        .(      CMP      r0,#0
        0x1fff27f6:    d00e        ..      BEQ      0x1fff2816 ; LL_IRQHandler1 + 398
        0x1fff27f8:    7820         x      LDRB     r0,[r4,#0]
        0x1fff27fa:    2800        .(      CMP      r0,#0
        0x1fff27fc:    d10b        ..      BNE      0x1fff2816 ; LL_IRQHandler1 + 398
        0x1fff27fe:    2003        .       MOVS     r0,#3
        0x1fff2800:    7020         p      STRB     r0,[r4,#0]
        0x1fff2802:    e008        ..      B        0x1fff2816 ; LL_IRQHandler1 + 398
        0x1fff2804:    480d        .H      LDR      r0,[pc,#52] ; [0x1fff283c] = 0x1fff0bbc
        0x1fff2806:    7c80        .|      LDRB     r0,[r0,#0x12]
        0x1fff2808:    f7fff92e    ....    BL       $Ven$TT$L$$llSetupSecScan ; 0x1fff1a68
        0x1fff280c:    e003        ..      B        0x1fff2816 ; LL_IRQHandler1 + 398
        0x1fff280e:    480c        .H      LDR      r0,[pc,#48] ; [0x1fff2840] = 0x1fff0bd4
        0x1fff2810:    7b80        .{      LDRB     r0,[r0,#0xe]
        0x1fff2812:    f7fff92f    ../.    BL       $Ven$TT$L$$llSetupSecInit ; 0x1fff1a74
        0x1fff2816:    2003        .       MOVS     r0,#3
        0x1fff2818:    f7fff8d2    ....    BL       $Ven$TT$L$$ll_debug_output ; 0x1fff19c0
        0x1fff281c:    bdf8        ..      POP      {r3-r7,pc}
    $d
        0x1fff281e:    0000        ..      DCW    0
        0x1fff2820:    1fff099c    ....    DCD    536807836
        0x1fff2824:    1fff0998    ....    DCD    536807832
        0x1fff2828:    1fff0990    ....    DCD    536807824
        0x1fff282c:    1fff091c    ....    DCD    536807708
        0x1fff2830:    1fff0923    #...    DCD    536807715
        0x1fff2834:    1fff0ba6    ....    DCD    536808358
        0x1fff2838:    1fff6dcc    .m..    DCD    536833484
        0x1fff283c:    1fff0bbc    ....    DCD    536808380
        0x1fff2840:    1fff0bd4    ....    DCD    536808404
    $t
    i.LL_ProcessEvent1
    LL_ProcessEvent1
        0x1fff2844:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff2846:    460c        .F      MOV      r4,r1
        0x1fff2848:    4910        .I      LDR      r1,[pc,#64] ; [0x1fff288c] = 0x9de
        0x1fff284a:    420c        .B      TST      r4,r1
        0x1fff284c:    d11a        ..      BNE      0x1fff2884 ; LL_ProcessEvent1 + 64
        0x1fff284e:    0561        a.      LSLS     r1,r4,#21
        0x1fff2850:    d518        ..      BPL      0x1fff2884 ; LL_ProcessEvent1 + 64
        0x1fff2852:    2500        .%      MOVS     r5,#0
        0x1fff2854:    480e        .H      LDR      r0,[pc,#56] ; [0x1fff2890] = 0x1fff79e4
        0x1fff2856:    00af        ..      LSLS     r7,r5,#2
        0x1fff2858:    183e        >.      ADDS     r6,r7,r0
        0x1fff285a:    7871        qx      LDRB     r1,[r6,#1]
        0x1fff285c:    2901        .)      CMP      r1,#1
        0x1fff285e:    d109        ..      BNE      0x1fff2874 ; LL_ProcessEvent1 + 48
        0x1fff2860:    5dc1        .]      LDRB     r1,[r0,r7]
        0x1fff2862:    8870        p.      LDRH     r0,[r6,#2]
        0x1fff2864:    f7fff90c    ....    BL       $Ven$TT$L$$LL_DisconnectCback ; 0x1fff1a80
        0x1fff2868:    480a        .H      LDR      r0,[pc,#40] ; [0x1fff2894] = 0xffff
        0x1fff286a:    8070        p.      STRH     r0,[r6,#2]
        0x1fff286c:    4908        .I      LDR      r1,[pc,#32] ; [0x1fff2890] = 0x1fff79e4
        0x1fff286e:    2000        .       MOVS     r0,#0
        0x1fff2870:    55c8        .U      STRB     r0,[r1,r7]
        0x1fff2872:    7070        pp      STRB     r0,[r6,#1]
        0x1fff2874:    1c6d        m.      ADDS     r5,r5,#1
        0x1fff2876:    b2ed        ..      UXTB     r5,r5
        0x1fff2878:    2d10        .-      CMP      r5,#0x10
        0x1fff287a:    d3eb        ..      BCC      0x1fff2854 ; LL_ProcessEvent1 + 16
        0x1fff287c:    2001        .       MOVS     r0,#1
        0x1fff287e:    0280        ..      LSLS     r0,r0,#10
        0x1fff2880:    4060        `@      EORS     r0,r0,r4
        0x1fff2882:    bdf8        ..      POP      {r3-r7,pc}
        0x1fff2884:    4621        !F      MOV      r1,r4
        0x1fff2886:    f7fff901    ....    BL       $Ven$TT$L$$LL_ProcessEvent0 ; 0x1fff1a8c
        0x1fff288a:    bdf8        ..      POP      {r3-r7,pc}
    $d
        0x1fff288c:    000009de    ....    DCD    2526
        0x1fff2890:    1fff79e4    .y..    DCD    536836580
        0x1fff2894:    0000ffff    ....    DCD    65535
    $t
    i.LL_Reset1
    LL_Reset1
        0x1fff2898:    b510        ..      PUSH     {r4,lr}
        0x1fff289a:    2001        .       MOVS     r0,#1
        0x1fff289c:    f002fe82    ....    BL       patch_linkBuf_init ; 0x1fff55a4
        0x1fff28a0:    f7fff8fa    ....    BL       $Ven$TT$L$$LL_Reset0 ; 0x1fff1a98
        0x1fff28a4:    4604        .F      MOV      r4,r0
        0x1fff28a6:    2000        .       MOVS     r0,#0
        0x1fff28a8:    f002fe7c    ..|.    BL       patch_linkBuf_init ; 0x1fff55a4
        0x1fff28ac:    4620         F      MOV      r0,r4
        0x1fff28ae:    bd10        ..      POP      {r4,pc}
    i.LL_set_default_conn_params1
    LL_set_default_conn_params1
        0x1fff28b0:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff28b2:    4604        .F      MOV      r4,r0
        0x1fff28b4:    f7fff8f6    ....    BL       $Ven$TT$L$$LL_set_default_conn_params0 ; 0x1fff1aa4
        0x1fff28b8:    1de2        ..      ADDS     r2,r4,#7
        0x1fff28ba:    32ff        .2      ADDS     r2,r2,#0xff
        0x1fff28bc:    32fa        .2      ADDS     r2,r2,#0xfa
        0x1fff28be:    6fd0        .o      LDR      r0,[r2,#0x7c]
        0x1fff28c0:    2100        .!      MOVS     r1,#0
        0x1fff28c2:    0c00        ..      LSRS     r0,r0,#16
        0x1fff28c4:    0400        ..      LSLS     r0,r0,#16
        0x1fff28c6:    67d0        .g      STR      r0,[r2,#0x7c]
        0x1fff28c8:    4610        .F      MOV      r0,r2
        0x1fff28ca:    3880        .8      SUBS     r0,r0,#0x80
        0x1fff28cc:    008b        ..      LSLS     r3,r1,#2
        0x1fff28ce:    191b        ..      ADDS     r3,r3,r4
        0x1fff28d0:    33ff        .3      ADDS     r3,r3,#0xff
        0x1fff28d2:    3301        .3      ADDS     r3,#1
        0x1fff28d4:    6ac5        .j      LDR      r5,[r0,#0x2c]
        0x1fff28d6:    1c49        I.      ADDS     r1,r1,#1
        0x1fff28d8:    66dd        .f      STR      r5,[r3,#0x6c]
        0x1fff28da:    2908        .)      CMP      r1,#8
        0x1fff28dc:    dbf6        ..      BLT      0x1fff28cc ; LL_set_default_conn_params1 + 28
        0x1fff28de:    2100        .!      MOVS     r1,#0
        0x1fff28e0:    008b        ..      LSLS     r3,r1,#2
        0x1fff28e2:    191b        ..      ADDS     r3,r3,r4
        0x1fff28e4:    33ff        .3      ADDS     r3,r3,#0xff
        0x1fff28e6:    3381        .3      ADDS     r3,r3,#0x81
        0x1fff28e8:    6ac5        .j      LDR      r5,[r0,#0x2c]
        0x1fff28ea:    1c49        I.      ADDS     r1,r1,#1
        0x1fff28ec:    60dd        .`      STR      r5,[r3,#0xc]
        0x1fff28ee:    2908        .)      CMP      r1,#8
        0x1fff28f0:    dbf6        ..      BLT      0x1fff28e0 ; LL_set_default_conn_params1 + 48
        0x1fff28f2:    2001        .       MOVS     r0,#1
        0x1fff28f4:    64d0        .d      STR      r0,[r2,#0x4c]
        0x1fff28f6:    bd70        p.      POP      {r4-r6,pc}
    i.NVIC_EnableIRQ
    NVIC_EnableIRQ
        0x1fff28f8:    06c1        ..      LSLS     r1,r0,#27
        0x1fff28fa:    0ec9        ..      LSRS     r1,r1,#27
        0x1fff28fc:    2001        .       MOVS     r0,#1
        0x1fff28fe:    4088        .@      LSLS     r0,r0,r1
        0x1fff2900:    4901        .I      LDR      r1,[pc,#4] ; [0x1fff2908] = 0xe000e100
        0x1fff2902:    6008        .`      STR      r0,[r1,#0]
        0x1fff2904:    4770        pG      BX       lr
    $d
        0x1fff2906:    0000        ..      DCW    0
        0x1fff2908:    e000e100    ....    DCD    3758153984
    $t
    i.PPP_IRQHandler
    PPP_IRQHandler
        0x1fff290c:    b5f0        ..      PUSH     {r4-r7,lr}
        0x1fff290e:    b085        ..      SUB      sp,sp,#0x14
        0x1fff2910:    f7fff850    ..P.    BL       $Ven$TT$L$$read_current_fine_time ; 0x1fff19b4
        0x1fff2914:    4e49        IN      LDR      r6,[pc,#292] ; [0x1fff2a3c] = 0x1fff6d48
        0x1fff2916:    6130        0a      STR      r0,[r6,#0x10]
        0x1fff2918:    f7fff858    ..X.    BL       $Ven$TT$L$$ll_hw_get_irq_status ; 0x1fff19cc
        0x1fff291c:    4605        .F      MOV      r5,r0
        0x1fff291e:    07c0        ..      LSLS     r0,r0,#31
        0x1fff2920:    d011        ..      BEQ      0x1fff2946 ; PPP_IRQHandler + 58
        0x1fff2922:    4947        GI      LDR      r1,[pc,#284] ; [0x1fff2a40] = 0x1fff0998
        0x1fff2924:    2000        .       MOVS     r0,#0
        0x1fff2926:    6008        .`      STR      r0,[r1,#0]
        0x1fff2928:    f7feffea    ....    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff1900
        0x1fff292c:    f7fff854    ..T.    BL       $Ven$TT$L$$ll_hw_get_tr_mode ; 0x1fff19d8
        0x1fff2930:    4944        DI      LDR      r1,[pc,#272] ; [0x1fff2a44] = 0x1fff7474
        0x1fff2932:    2800        .(      CMP      r0,#0
        0x1fff2934:    d074        t.      BEQ      0x1fff2a20 ; PPP_IRQHandler + 276
        0x1fff2936:    460c        .F      MOV      r4,r1
        0x1fff2938:    1cb7        ..      ADDS     r7,r6,#2
        0x1fff293a:    3c14        .<      SUBS     r4,r4,#0x14
        0x1fff293c:    2801        .(      CMP      r0,#1
        0x1fff293e:    d008        ..      BEQ      0x1fff2952 ; PPP_IRQHandler + 70
        0x1fff2940:    2802        .(      CMP      r0,#2
        0x1fff2942:    d03b        ;.      BEQ      0x1fff29bc ; PPP_IRQHandler + 176
        0x1fff2944:    e06c        l.      B        0x1fff2a20 ; PPP_IRQHandler + 276
        0x1fff2946:    f7fff84d    ..M.    BL       $Ven$TT$L$$ll_hw_clr_irq ; 0x1fff19e4
        0x1fff294a:    f000f885    ....    BL       PPP_Set_BLE_IRQHandler ; 0x1fff2a58
        0x1fff294e:    b005        ..      ADD      sp,sp,#0x14
        0x1fff2950:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff2952:    7808        .x      LDRB     r0,[r1,#0]
        0x1fff2954:    2801        .(      CMP      r0,#1
        0x1fff2956:    d163        c.      BNE      0x1fff2a20 ; PPP_IRQHandler + 276
        0x1fff2958:    4a38        8J      LDR      r2,[pc,#224] ; [0x1fff2a3c] = 0x1fff6d48
        0x1fff295a:    1c92        ..      ADDS     r2,r2,#2
        0x1fff295c:    1d11        ..      ADDS     r1,r2,#4
        0x1fff295e:    1ec8        ..      SUBS     r0,r1,#3
        0x1fff2960:    f003fbee    ....    BL       rf_phy_get_pktFoot ; 0x1fff6140
        0x1fff2964:    0568        h.      LSLS     r0,r5,#21
        0x1fff2966:    d55b        [.      BPL      0x1fff2a20 ; PPP_IRQHandler + 276
        0x1fff2968:    ab03        ..      ADD      r3,sp,#0xc
        0x1fff296a:    aa02        ..      ADD      r2,sp,#8
        0x1fff296c:    a901        ..      ADD      r1,sp,#4
        0x1fff296e:    6920         i      LDR      r0,[r4,#0x10]
        0x1fff2970:    f7fff89e    ....    BL       $Ven$TT$L$$ll_hw_read_rfifo ; 0x1fff1ab0
        0x1fff2974:    4b31        1K      LDR      r3,[pc,#196] ; [0x1fff2a3c] = 0x1fff6d48
        0x1fff2976:    9700        ..      STR      r7,[sp,#0]
        0x1fff2978:    1d9b        ..      ADDS     r3,r3,#6
        0x1fff297a:    1eda        ..      SUBS     r2,r3,#3
        0x1fff297c:    9903        ..      LDR      r1,[sp,#0xc]
        0x1fff297e:    9802        ..      LDR      r0,[sp,#8]
        0x1fff2980:    f003fbf6    ....    BL       rf_phy_get_pktFoot_fromPkt ; 0x1fff6170
        0x1fff2984:    492d        -I      LDR      r1,[pc,#180] ; [0x1fff2a3c] = 0x1fff6d48
        0x1fff2986:    6920         i      LDR      r0,[r4,#0x10]
        0x1fff2988:    2206        ."      MOVS     r2,#6
        0x1fff298a:    3128        (1      ADDS     r1,r1,#0x28
        0x1fff298c:    1c80        ..      ADDS     r0,r0,#2
        0x1fff298e:    f7fff895    ....    BL       $Ven$TT$L$$osal_memcmp ; 0x1fff1abc
        0x1fff2992:    2800        .(      CMP      r0,#0
        0x1fff2994:    d044        D.      BEQ      0x1fff2a20 ; PPP_IRQHandler + 276
        0x1fff2996:    6921        !i      LDR      r1,[r4,#0x10]
        0x1fff2998:    7808        .x      LDRB     r0,[r1,#0]
        0x1fff299a:    0702        ..      LSLS     r2,r0,#28
        0x1fff299c:    d435        5.      BMI      0x1fff2a0a ; PPP_IRQHandler + 254
        0x1fff299e:    0740        @.      LSLS     r0,r0,#29
        0x1fff29a0:    d533        3.      BPL      0x1fff2a0a ; PPP_IRQHandler + 254
        0x1fff29a2:    2000        .       MOVS     r0,#0
        0x1fff29a4:    6170        pa      STR      r0,[r6,#0x14]
        0x1fff29a6:    4668        hF      MOV      r0,sp
        0x1fff29a8:    8880        ..      LDRH     r0,[r0,#4]
        0x1fff29aa:    2203        ."      MOVS     r2,#3
        0x1fff29ac:    1809        ..      ADDS     r1,r1,r0
        0x1fff29ae:    4823        #H      LDR      r0,[pc,#140] ; [0x1fff2a3c] = 0x1fff6d48
        0x1fff29b0:    3014        .0      ADDS     r0,r0,#0x14
        0x1fff29b2:    f7fff889    ....    BL       $Ven$TT$L$$osal_memcpy ; 0x1fff1ac8
        0x1fff29b6:    f003f86b    ..k.    BL       phy_rf_txack ; 0x1fff5a90
        0x1fff29ba:    e026        &.      B        0x1fff2a0a ; PPP_IRQHandler + 254
        0x1fff29bc:    7808        .x      LDRB     r0,[r1,#0]
        0x1fff29be:    2802        .(      CMP      r0,#2
        0x1fff29c0:    d12e        ..      BNE      0x1fff2a20 ; PPP_IRQHandler + 276
        0x1fff29c2:    4a1e        .J      LDR      r2,[pc,#120] ; [0x1fff2a3c] = 0x1fff6d48
        0x1fff29c4:    1c92        ..      ADDS     r2,r2,#2
        0x1fff29c6:    1d11        ..      ADDS     r1,r2,#4
        0x1fff29c8:    1ec8        ..      SUBS     r0,r1,#3
        0x1fff29ca:    f003fbb9    ....    BL       rf_phy_get_pktFoot ; 0x1fff6140
        0x1fff29ce:    481d        .H      LDR      r0,[pc,#116] ; [0x1fff2a44] = 0x1fff7474
        0x1fff29d0:    302c        ,0      ADDS     r0,r0,#0x2c
        0x1fff29d2:    6901        .i      LDR      r1,[r0,#0x10]
        0x1fff29d4:    1c49        I.      ADDS     r1,r1,#1
        0x1fff29d6:    6101        .a      STR      r1,[r0,#0x10]
        0x1fff29d8:    0568        h.      LSLS     r0,r5,#21
        0x1fff29da:    d521        !.      BPL      0x1fff2a20 ; PPP_IRQHandler + 276
        0x1fff29dc:    ab02        ..      ADD      r3,sp,#8
        0x1fff29de:    aa01        ..      ADD      r2,sp,#4
        0x1fff29e0:    a903        ..      ADD      r1,sp,#0xc
        0x1fff29e2:    6920         i      LDR      r0,[r4,#0x10]
        0x1fff29e4:    f7fff864    ..d.    BL       $Ven$TT$L$$ll_hw_read_rfifo ; 0x1fff1ab0
        0x1fff29e8:    4b14        .K      LDR      r3,[pc,#80] ; [0x1fff2a3c] = 0x1fff6d48
        0x1fff29ea:    9700        ..      STR      r7,[sp,#0]
        0x1fff29ec:    1d9b        ..      ADDS     r3,r3,#6
        0x1fff29ee:    1eda        ..      SUBS     r2,r3,#3
        0x1fff29f0:    9902        ..      LDR      r1,[sp,#8]
        0x1fff29f2:    9801        ..      LDR      r0,[sp,#4]
        0x1fff29f4:    f003fbbc    ....    BL       rf_phy_get_pktFoot_fromPkt ; 0x1fff6170
        0x1fff29f8:    4910        .I      LDR      r1,[pc,#64] ; [0x1fff2a3c] = 0x1fff6d48
        0x1fff29fa:    6920         i      LDR      r0,[r4,#0x10]
        0x1fff29fc:    2206        ."      MOVS     r2,#6
        0x1fff29fe:    3128        (1      ADDS     r1,r1,#0x28
        0x1fff2a00:    1c80        ..      ADDS     r0,r0,#2
        0x1fff2a02:    f7fff85b    ..[.    BL       $Ven$TT$L$$osal_memcmp ; 0x1fff1abc
        0x1fff2a06:    2800        .(      CMP      r0,#0
        0x1fff2a08:    d002        ..      BEQ      0x1fff2a10 ; PPP_IRQHandler + 260
        0x1fff2a0a:    f003f8b9    ....    BL       phy_rx_data_check ; 0x1fff5b80
        0x1fff2a0e:    e007        ..      B        0x1fff2a20 ; PPP_IRQHandler + 276
        0x1fff2a10:    a00d        ..      ADR      r0,{pc}+0x38 ; 0x1fff2a48
        0x1fff2a12:    f000fdb5    ....    BL       dbg_printf ; 0x1fff3580
        0x1fff2a16:    6920         i      LDR      r0,[r4,#0x10]
        0x1fff2a18:    2102        .!      MOVS     r1,#2
        0x1fff2a1a:    300a        .0      ADDS     r0,r0,#0xa
        0x1fff2a1c:    f002fcba    ....    BL       my_dump_byte ; 0x1fff5394
        0x1fff2a20:    4807        .H      LDR      r0,[pc,#28] ; [0x1fff2a40] = 0x1fff0998
        0x1fff2a22:    6800        .h      LDR      r0,[r0,#0]
        0x1fff2a24:    2801        .(      CMP      r0,#1
        0x1fff2a26:    d003        ..      BEQ      0x1fff2a30 ; PPP_IRQHandler + 292
        0x1fff2a28:    f7feffdc    ....    BL       $Ven$TT$L$$ll_hw_clr_irq ; 0x1fff19e4
        0x1fff2a2c:    f000f814    ....    BL       PPP_Set_BLE_IRQHandler ; 0x1fff2a58
        0x1fff2a30:    f7feff72    ..r.    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff1918
        0x1fff2a34:    f002ffc8    ....    BL       phy_rf_schedule ; 0x1fff59c8
        0x1fff2a38:    e789        ..      B        0x1fff294e ; PPP_IRQHandler + 66
    $d
        0x1fff2a3a:    0000        ..      DCW    0
        0x1fff2a3c:    1fff6d48    Hm..    DCD    536833352
        0x1fff2a40:    1fff0998    ....    DCD    536807832
        0x1fff2a44:    1fff7474    tt..    DCD    536835188
        0x1fff2a48:    6e6f7277    wron    DCD    1852797559
        0x1fff2a4c:    65642067    g de    DCD    1701060711
        0x1fff2a50:    65636976    vice    DCD    1701013878
        0x1fff2a54:    00000a3a    :...    DCD    2618
    $t
    i.PPP_Set_BLE_IRQHandler
    PPP_Set_BLE_IRQHandler
        0x1fff2a58:    b510        ..      PUSH     {r4,lr}
        0x1fff2a5a:    480b        .H      LDR      r0,[pc,#44] ; [0x1fff2a88] = 0x1fff6d48
        0x1fff2a5c:    6a40        @j      LDR      r0,[r0,#0x24]
        0x1fff2a5e:    2800        .(      CMP      r0,#0
        0x1fff2a60:    d010        ..      BEQ      0x1fff2a84 ; PPP_Set_BLE_IRQHandler + 44
        0x1fff2a62:    490a        .I      LDR      r1,[pc,#40] ; [0x1fff2a8c] = 0x1fff0380
        0x1fff2a64:    6108        .a      STR      r0,[r1,#0x10]
        0x1fff2a66:    2102        .!      MOVS     r1,#2
        0x1fff2a68:    4608        .F      MOV      r0,r1
        0x1fff2a6a:    f7fff833    ..3.    BL       $Ven$TT$L$$ll_hw_set_crc_fmt ; 0x1fff1ad4
        0x1fff2a6e:    4808        .H      LDR      r0,[pc,#32] ; [0x1fff2a90] = 0x40030040
        0x1fff2a70:    6801        .h      LDR      r1,[r0,#0]
        0x1fff2a72:    2210        ."      MOVS     r2,#0x10
        0x1fff2a74:    4391        .C      BICS     r1,r1,r2
        0x1fff2a76:    6001        .`      STR      r1,[r0,#0]
        0x1fff2a78:    4805        .H      LDR      r0,[pc,#20] ; [0x1fff2a90] = 0x40030040
        0x1fff2a7a:    3840        @8      SUBS     r0,r0,#0x40
        0x1fff2a7c:    6881        .h      LDR      r1,[r0,#8]
        0x1fff2a7e:    1582        ..      ASRS     r2,r0,#22
        0x1fff2a80:    4311        .C      ORRS     r1,r1,r2
        0x1fff2a82:    6081        .`      STR      r1,[r0,#8]
        0x1fff2a84:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff2a86:    0000        ..      DCW    0
        0x1fff2a88:    1fff6d48    Hm..    DCD    536833352
        0x1fff2a8c:    1fff0380    ....    DCD    536806272
        0x1fff2a90:    40030040    @..@    DCD    1073938496
    $t
    i.PropProtocol_Init
    PropProtocol_Init
        0x1fff2a94:    b5f0        ..      PUSH     {r4-r7,lr}
        0x1fff2a96:    4933        3I      LDR      r1,[pc,#204] ; [0x1fff2b64] = 0x1fff6d48
        0x1fff2a98:    b085        ..      SUB      sp,sp,#0x14
        0x1fff2a9a:    7108        .q      STRB     r0,[r1,#4]
        0x1fff2a9c:    4832        2H      LDR      r0,[pc,#200] ; [0x1fff2b68] = 0x1fff0380
        0x1fff2a9e:    2220         "      MOVS     r2,#0x20
        0x1fff2aa0:    6900        .i      LDR      r0,[r0,#0x10]
        0x1fff2aa2:    6248        Hb      STR      r0,[r1,#0x24]
        0x1fff2aa4:    2100        .!      MOVS     r1,#0
        0x1fff2aa6:    4831        1H      LDR      r0,[pc,#196] ; [0x1fff2b6c] = 0x1fff7440
        0x1fff2aa8:    f7fff81a    ....    BL       $Ven$TT$L$$osal_memset ; 0x1fff1ae0
        0x1fff2aac:    4e2f        /N      LDR      r6,[pc,#188] ; [0x1fff2b6c] = 0x1fff7440
        0x1fff2aae:    2201        ."      MOVS     r2,#1
        0x1fff2ab0:    3654        T6      ADDS     r6,r6,#0x54
        0x1fff2ab2:    4635        5F      MOV      r5,r6
        0x1fff2ab4:    3d20         =      SUBS     r5,r5,#0x20
        0x1fff2ab6:    72b2        .r      STRB     r2,[r6,#0xa]
        0x1fff2ab8:    20ff        .       MOVS     r0,#0xff
        0x1fff2aba:    492a        *I      LDR      r1,[pc,#168] ; [0x1fff2b64] = 0x1fff6d48
        0x1fff2abc:    7028        (p      STRB     r0,[r5,#0]
        0x1fff2abe:    2000        .       MOVS     r0,#0
        0x1fff2ac0:    310a        .1      ADDS     r1,r1,#0xa
        0x1fff2ac2:    7088        .p      STRB     r0,[r1,#2]
        0x1fff2ac4:    a32a        *.      ADR      r3,{pc}+0xac ; 0x1fff2b70
        0x1fff2ac6:    cb09        ..      LDM      r3,{r0,r3}
        0x1fff2ac8:    9000        ..      STR      r0,[sp,#0]
        0x1fff2aca:    9301        ..      STR      r3,[sp,#4]
        0x1fff2acc:    466b        kF      MOV      r3,sp
        0x1fff2ace:    4608        .F      MOV      r0,r1
        0x1fff2ad0:    781b        .x      LDRB     r3,[r3,#0]
        0x1fff2ad2:    3024        $0      ADDS     r0,r0,#0x24
        0x1fff2ad4:    70c3        .p      STRB     r3,[r0,#3]
        0x1fff2ad6:    466b        kF      MOV      r3,sp
        0x1fff2ad8:    785b        [x      LDRB     r3,[r3,#1]
        0x1fff2ada:    7083        .p      STRB     r3,[r0,#2]
        0x1fff2adc:    466b        kF      MOV      r3,sp
        0x1fff2ade:    789b        .x      LDRB     r3,[r3,#2]
        0x1fff2ae0:    7043        Cp      STRB     r3,[r0,#1]
        0x1fff2ae2:    466b        kF      MOV      r3,sp
        0x1fff2ae4:    78db        .x      LDRB     r3,[r3,#3]
        0x1fff2ae6:    7003        .p      STRB     r3,[r0,#0]
        0x1fff2ae8:    466b        kF      MOV      r3,sp
        0x1fff2aea:    791b        .y      LDRB     r3,[r3,#4]
        0x1fff2aec:    7143        Cq      STRB     r3,[r0,#5]
        0x1fff2aee:    466b        kF      MOV      r3,sp
        0x1fff2af0:    795b        [y      LDRB     r3,[r3,#5]
        0x1fff2af2:    7103        .q      STRB     r3,[r0,#4]
        0x1fff2af4:    462c        ,F      MOV      r4,r5
        0x1fff2af6:    4820         H      LDR      r0,[pc,#128] ; [0x1fff2b78] = 0x8e89bed6
        0x1fff2af8:    3c14        .<      SUBS     r4,r4,#0x14
        0x1fff2afa:    60a0        .`      STR      r0,[r4,#8]
        0x1fff2afc:    2025        %       MOVS     r0,#0x25
        0x1fff2afe:    7060        `p      STRB     r0,[r4,#1]
        0x1fff2b00:    2704        .'      MOVS     r7,#4
        0x1fff2b02:    1e8b        ..      SUBS     r3,r1,#2
        0x1fff2b04:    701f        .p      STRB     r7,[r3,#0]
        0x1fff2b06:    7058        Xp      STRB     r0,[r3,#1]
        0x1fff2b08:    2002        .       MOVS     r0,#2
        0x1fff2b0a:    70e0        .p      STRB     r0,[r4,#3]
        0x1fff2b0c:    481b        .H      LDR      r0,[pc,#108] ; [0x1fff2b7c] = 0x555555
        0x1fff2b0e:    6060        ``      STR      r0,[r4,#4]
        0x1fff2b10:    7848        Hx      LDRB     r0,[r1,#1]
        0x1fff2b12:    70a0        .p      STRB     r0,[r4,#2]
        0x1fff2b14:    7022        "p      STRB     r2,[r4,#0]
        0x1fff2b16:    4608        .F      MOV      r0,r1
        0x1fff2b18:    4a19        .J      LDR      r2,[pc,#100] ; [0x1fff2b80] = 0x5dc
        0x1fff2b1a:    302a        *0      ADDS     r0,r0,#0x2a
        0x1fff2b1c:    6002        .`      STR      r2,[r0,#0]
        0x1fff2b1e:    4a19        .J      LDR      r2,[pc,#100] ; [0x1fff2b84] = 0x9c4
        0x1fff2b20:    6042        B`      STR      r2,[r0,#4]
        0x1fff2b22:    4819        .H      LDR      r0,[pc,#100] ; [0x1fff2b88] = 0xf4240
        0x1fff2b24:    61a8        .a      STR      r0,[r5,#0x18]
        0x1fff2b26:    7808        .x      LDRB     r0,[r1,#0]
        0x1fff2b28:    7528        (u      STRB     r0,[r5,#0x14]
        0x1fff2b2a:    20ff        .       MOVS     r0,#0xff
        0x1fff2b2c:    30f5        .0      ADDS     r0,r0,#0xf5
        0x1fff2b2e:    83a8        ..      STRH     r0,[r5,#0x1c]
        0x1fff2b30:    2105        .!      MOVS     r1,#5
        0x1fff2b32:    7171        qq      STRB     r1,[r6,#5]
        0x1fff2b34:    8528        (.      STRH     r0,[r5,#0x28]
        0x1fff2b36:    4815        .H      LDR      r0,[pc,#84] ; [0x1fff2b8c] = 0x1fff7340
        0x1fff2b38:    60e0        .`      STR      r0,[r4,#0xc]
        0x1fff2b3a:    38ff        .8      SUBS     r0,r0,#0xff
        0x1fff2b3c:    3801        .8      SUBS     r0,#1
        0x1fff2b3e:    6120         a      STR      r0,[r4,#0x10]
        0x1fff2b40:    a013        ..      ADR      r0,{pc}+0x50 ; 0x1fff2b90
        0x1fff2b42:    f000fd1d    ....    BL       dbg_printf ; 0x1fff3580
        0x1fff2b46:    78a3        .x      LDRB     r3,[r4,#2]
        0x1fff2b48:    78e1        .x      LDRB     r1,[r4,#3]
        0x1fff2b4a:    6862        bh      LDR      r2,[r4,#4]
        0x1fff2b4c:    68a0        .h      LDR      r0,[r4,#8]
        0x1fff2b4e:    466c        lF      MOV      r4,sp
        0x1fff2b50:    c40f        ..      STM      r4!,{r0-r3}
        0x1fff2b52:    7ab3        .z      LDRB     r3,[r6,#0xa]
        0x1fff2b54:    7d2a        *}      LDRB     r2,[r5,#0x14]
        0x1fff2b56:    7829        )x      LDRB     r1,[r5,#0]
        0x1fff2b58:    4811        .H      LDR      r0,[pc,#68] ; [0x1fff2ba0] = 0x1fff6c6c
        0x1fff2b5a:    f000fd11    ....    BL       dbg_printf ; 0x1fff3580
        0x1fff2b5e:    b005        ..      ADD      sp,sp,#0x14
        0x1fff2b60:    bdf0        ..      POP      {r4-r7,pc}
    $d
        0x1fff2b62:    0000        ..      DCW    0
        0x1fff2b64:    1fff6d48    Hm..    DCD    536833352
        0x1fff2b68:    1fff0380    ....    DCD    536806272
        0x1fff2b6c:    1fff7440    @t..    DCD    536835136
        0x1fff2b70:    04030201    ....    DCD    67305985
        0x1fff2b74:    00000605    ....    DCD    1541
        0x1fff2b78:    8e89bed6    ....    DCD    2391391958
        0x1fff2b7c:    00555555    UUU.    DCD    5592405
        0x1fff2b80:    000005dc    ....    DCD    1500
        0x1fff2b84:    000009c4    ....    DCD    2500
        0x1fff2b88:    000f4240    @B..    DCD    1000000
        0x1fff2b8c:    1fff7340    @s..    DCD    536834880
        0x1fff2b90:    2046524e    NRF     DCD    541479502
        0x1fff2b94:    61736944    Disa    DCD    1634953540
        0x1fff2b98:    64656c62    bled    DCD    1684368482
        0x1fff2b9c:    0000000a    ....    DCD    10
        0x1fff2ba0:    1fff6c6c    ll..    DCD    536833132
    $t
    i.PropProtocol_ProcessEvent
    PropProtocol_ProcessEvent
        0x1fff2ba4:    b510        ..      PUSH     {r4,lr}
        0x1fff2ba6:    460c        .F      MOV      r4,r1
        0x1fff2ba8:    0608        ..      LSLS     r0,r1,#24
        0x1fff2baa:    d503        ..      BPL      0x1fff2bb4 ; PropProtocol_ProcessEvent + 16
        0x1fff2bac:    f002feb0    ....    BL       phy_rf_process_recv ; 0x1fff5910
        0x1fff2bb0:    2080        .       MOVS     r0,#0x80
        0x1fff2bb2:    e00a        ..      B        0x1fff2bca ; PropProtocol_ProcessEvent + 38
        0x1fff2bb4:    0720         .      LSLS     r0,r4,#28
        0x1fff2bb6:    d503        ..      BPL      0x1fff2bc0 ; PropProtocol_ProcessEvent + 28
        0x1fff2bb8:    f003fc24    ..$.    BL       show_phy_debug_info ; 0x1fff6404
        0x1fff2bbc:    2008        .       MOVS     r0,#8
        0x1fff2bbe:    e004        ..      B        0x1fff2bca ; PropProtocol_ProcessEvent + 38
        0x1fff2bc0:    06a0        ..      LSLS     r0,r4,#26
        0x1fff2bc2:    d504        ..      BPL      0x1fff2bce ; PropProtocol_ProcessEvent + 42
        0x1fff2bc4:    f003f810    ....    BL       phy_rx_data_process ; 0x1fff5be8
        0x1fff2bc8:    2020                MOVS     r0,#0x20
        0x1fff2bca:    4060        `@      EORS     r0,r0,r4
        0x1fff2bcc:    bd10        ..      POP      {r4,pc}
        0x1fff2bce:    2000        .       MOVS     r0,#0
        0x1fff2bd0:    bd10        ..      POP      {r4,pc}
        0x1fff2bd2:    0000        ..      MOVS     r0,r0
    i.Smart_nRF_Init
    Smart_nRF_Init
        0x1fff2bd4:    b510        ..      PUSH     {r4,lr}
        0x1fff2bd6:    4c05        .L      LDR      r4,[pc,#20] ; [0x1fff2bec] = 0x1fff6d44
        0x1fff2bd8:    4905        .I      LDR      r1,[pc,#20] ; [0x1fff2bf0] = 0x1fff2c4d
        0x1fff2bda:    7020         p      STRB     r0,[r4,#0]
        0x1fff2bdc:    2001        .       MOVS     r0,#1
        0x1fff2bde:    f002fdc5    ....    BL       phy_cbfunc_regist ; 0x1fff576c
        0x1fff2be2:    2102        .!      MOVS     r1,#2
        0x1fff2be4:    7820         x      LDRB     r0,[r4,#0]
        0x1fff2be6:    f7feff81    ....    BL       $Ven$TT$L$$osal_set_event ; 0x1fff1aec
        0x1fff2bea:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff2bec:    1fff6d44    Dm..    DCD    536833348
        0x1fff2bf0:    1fff2c4d    M,..    DCD    536816717
    $t
    i.Smart_nRF_ProcessEvent
    Smart_nRF_ProcessEvent
        0x1fff2bf4:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff2bf6:    460c        .F      MOV      r4,r1
        0x1fff2bf8:    0788        ..      LSLS     r0,r1,#30
        0x1fff2bfa:    d504        ..      BPL      0x1fff2c06 ; Smart_nRF_ProcessEvent + 18
        0x1fff2bfc:    4811        .H      LDR      r0,[pc,#68] ; [0x1fff2c44] = 0x2710
        0x1fff2bfe:    f002ff13    ....    BL       phy_rf_start_rx ; 0x1fff5a28
        0x1fff2c02:    2002        .       MOVS     r0,#2
        0x1fff2c04:    e019        ..      B        0x1fff2c3a ; Smart_nRF_ProcessEvent + 70
        0x1fff2c06:    4d10        .M      LDR      r5,[pc,#64] ; [0x1fff2c48] = 0x1fff6d44
        0x1fff2c08:    06a0        ..      LSLS     r0,r4,#26
        0x1fff2c0a:    d508        ..      BPL      0x1fff2c1e ; Smart_nRF_ProcessEvent + 42
        0x1fff2c0c:    f002ff20    .. .    BL       phy_rf_stop_rx ; 0x1fff5a50
        0x1fff2c10:    22c3        ."      MOVS     r2,#0xc3
        0x1fff2c12:    2102        .!      MOVS     r1,#2
        0x1fff2c14:    7828        (x      LDRB     r0,[r5,#0]
        0x1fff2c16:    f7feff6f    ..o.    BL       $Ven$TT$L$$osal_start_timerEx ; 0x1fff1af8
        0x1fff2c1a:    2020                MOVS     r0,#0x20
        0x1fff2c1c:    e00d        ..      B        0x1fff2c3a ; Smart_nRF_ProcessEvent + 70
        0x1fff2c1e:    0720         .      LSLS     r0,r4,#28
        0x1fff2c20:    d502        ..      BPL      0x1fff2c28 ; Smart_nRF_ProcessEvent + 52
        0x1fff2c22:    2008        .       MOVS     r0,#8
        0x1fff2c24:    4048        H@      EORS     r0,r0,r1
        0x1fff2c26:    bd70        p.      POP      {r4-r6,pc}
        0x1fff2c28:    0660        `.      LSLS     r0,r4,#25
        0x1fff2c2a:    d508        ..      BPL      0x1fff2c3e ; Smart_nRF_ProcessEvent + 74
        0x1fff2c2c:    227d        }"      MOVS     r2,#0x7d
        0x1fff2c2e:    00d2        ..      LSLS     r2,r2,#3
        0x1fff2c30:    2140        @!      MOVS     r1,#0x40
        0x1fff2c32:    7828        (x      LDRB     r0,[r5,#0]
        0x1fff2c34:    f7feff60    ..`.    BL       $Ven$TT$L$$osal_start_timerEx ; 0x1fff1af8
        0x1fff2c38:    2040        @       MOVS     r0,#0x40
        0x1fff2c3a:    4060        `@      EORS     r0,r0,r4
        0x1fff2c3c:    bd70        p.      POP      {r4-r6,pc}
        0x1fff2c3e:    2000        .       MOVS     r0,#0
        0x1fff2c40:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x1fff2c42:    0000        ..      DCW    0
        0x1fff2c44:    00002710    .'..    DCD    10000
        0x1fff2c48:    1fff6d44    Dm..    DCD    536833348
    $t
    i.Smart_nRF_data_process
    Smart_nRF_data_process
        0x1fff2c4c:    b510        ..      PUSH     {r4,lr}
        0x1fff2c4e:    7801        .x      LDRB     r1,[r0,#0]
        0x1fff2c50:    29fc        .)      CMP      r1,#0xfc
        0x1fff2c52:    d00b        ..      BEQ      0x1fff2c6c ; Smart_nRF_data_process + 32
        0x1fff2c54:    070a        ..      LSLS     r2,r1,#28
        0x1fff2c56:    d401        ..      BMI      0x1fff2c5c ; Smart_nRF_data_process + 16
        0x1fff2c58:    0749        I.      LSLS     r1,r1,#29
        0x1fff2c5a:    d501        ..      BPL      0x1fff2c60 ; Smart_nRF_data_process + 20
        0x1fff2c5c:    7a01        .z      LDRB     r1,[r0,#8]
        0x1fff2c5e:    e002        ..      B        0x1fff2c66 ; Smart_nRF_data_process + 26
        0x1fff2c60:    7a01        .z      LDRB     r1,[r0,#8]
        0x1fff2c62:    2900        .)      CMP      r1,#0
        0x1fff2c64:    d002        ..      BEQ      0x1fff2c6c ; Smart_nRF_data_process + 32
        0x1fff2c66:    6840        @h      LDR      r0,[r0,#4]
        0x1fff2c68:    f002fb94    ....    BL       my_dump_byte ; 0x1fff5394
        0x1fff2c6c:    2000        .       MOVS     r0,#0
        0x1fff2c6e:    bd10        ..      POP      {r4,pc}
    i.SystemInit
    SystemInit
        0x1fff2c70:    4902        .I      LDR      r1,[pc,#8] ; [0x1fff2c7c] = 0x1fff6dc8
        0x1fff2c72:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff2c78] = 0x17d7840
        0x1fff2c74:    6008        .`      STR      r0,[r1,#0]
        0x1fff2c76:    4770        pG      BX       lr
    $d
        0x1fff2c78:    017d7840    @x}.    DCD    25000000
        0x1fff2c7c:    1fff6dc8    .m..    DCD    536833480
    $t
    i.__NVIC_EnableIRQ
    __NVIC_EnableIRQ
        0x1fff2c80:    2800        .(      CMP      r0,#0
        0x1fff2c82:    db05        ..      BLT      0x1fff2c90 ; __NVIC_EnableIRQ + 16
        0x1fff2c84:    06c1        ..      LSLS     r1,r0,#27
        0x1fff2c86:    0ec9        ..      LSRS     r1,r1,#27
        0x1fff2c88:    2001        .       MOVS     r0,#1
        0x1fff2c8a:    4088        .@      LSLS     r0,r0,r1
        0x1fff2c8c:    4901        .I      LDR      r1,[pc,#4] ; [0x1fff2c94] = 0xe000e100
        0x1fff2c8e:    6008        .`      STR      r0,[r1,#0]
        0x1fff2c90:    4770        pG      BX       lr
    $d
        0x1fff2c92:    0000        ..      DCW    0
        0x1fff2c94:    e000e100    ....    DCD    3758153984
    $t
    i.__NVIC_SetPriority
    __NVIC_SetPriority
        0x1fff2c98:    0783        ..      LSLS     r3,r0,#30
        0x1fff2c9a:    22ff        ."      MOVS     r2,#0xff
        0x1fff2c9c:    0edb        ..      LSRS     r3,r3,#27
        0x1fff2c9e:    409a        .@      LSLS     r2,r2,r3
        0x1fff2ca0:    0789        ..      LSLS     r1,r1,#30
        0x1fff2ca2:    0e09        ..      LSRS     r1,r1,#24
        0x1fff2ca4:    4099        .@      LSLS     r1,r1,r3
        0x1fff2ca6:    2800        .(      CMP      r0,#0
        0x1fff2ca8:    db08        ..      BLT      0x1fff2cbc ; __NVIC_SetPriority + 36
        0x1fff2caa:    0883        ..      LSRS     r3,r0,#2
        0x1fff2cac:    4809        .H      LDR      r0,[pc,#36] ; [0x1fff2cd4] = 0xe000e400
        0x1fff2cae:    009b        ..      LSLS     r3,r3,#2
        0x1fff2cb0:    181b        ..      ADDS     r3,r3,r0
        0x1fff2cb2:    6818        .h      LDR      r0,[r3,#0]
        0x1fff2cb4:    4390        .C      BICS     r0,r0,r2
        0x1fff2cb6:    4308        .C      ORRS     r0,r0,r1
        0x1fff2cb8:    6018        .`      STR      r0,[r3,#0]
        0x1fff2cba:    4770        pG      BX       lr
        0x1fff2cbc:    0700        ..      LSLS     r0,r0,#28
        0x1fff2cbe:    0f00        ..      LSRS     r0,r0,#28
        0x1fff2cc0:    3808        .8      SUBS     r0,r0,#8
        0x1fff2cc2:    0883        ..      LSRS     r3,r0,#2
        0x1fff2cc4:    4804        .H      LDR      r0,[pc,#16] ; [0x1fff2cd8] = 0xe000ed00
        0x1fff2cc6:    009b        ..      LSLS     r3,r3,#2
        0x1fff2cc8:    181b        ..      ADDS     r3,r3,r0
        0x1fff2cca:    69d8        .i      LDR      r0,[r3,#0x1c]
        0x1fff2ccc:    4390        .C      BICS     r0,r0,r2
        0x1fff2cce:    4308        .C      ORRS     r0,r0,r1
        0x1fff2cd0:    61d8        .a      STR      r0,[r3,#0x1c]
        0x1fff2cd2:    4770        pG      BX       lr
    $d
        0x1fff2cd4:    e000e400    ....    DCD    3758154752
        0x1fff2cd8:    e000ed00    ....    DCD    3758157056
    $t
    i.__NVIC_SetPriority
    __NVIC_SetPriority
        0x1fff2cdc:    0783        ..      LSLS     r3,r0,#30
        0x1fff2cde:    22ff        ."      MOVS     r2,#0xff
        0x1fff2ce0:    0edb        ..      LSRS     r3,r3,#27
        0x1fff2ce2:    409a        .@      LSLS     r2,r2,r3
        0x1fff2ce4:    0789        ..      LSLS     r1,r1,#30
        0x1fff2ce6:    0e09        ..      LSRS     r1,r1,#24
        0x1fff2ce8:    4099        .@      LSLS     r1,r1,r3
        0x1fff2cea:    2800        .(      CMP      r0,#0
        0x1fff2cec:    db08        ..      BLT      0x1fff2d00 ; __NVIC_SetPriority + 36
        0x1fff2cee:    0883        ..      LSRS     r3,r0,#2
        0x1fff2cf0:    4809        .H      LDR      r0,[pc,#36] ; [0x1fff2d18] = 0xe000e400
        0x1fff2cf2:    009b        ..      LSLS     r3,r3,#2
        0x1fff2cf4:    181b        ..      ADDS     r3,r3,r0
        0x1fff2cf6:    6818        .h      LDR      r0,[r3,#0]
        0x1fff2cf8:    4390        .C      BICS     r0,r0,r2
        0x1fff2cfa:    4308        .C      ORRS     r0,r0,r1
        0x1fff2cfc:    6018        .`      STR      r0,[r3,#0]
        0x1fff2cfe:    4770        pG      BX       lr
        0x1fff2d00:    0700        ..      LSLS     r0,r0,#28
        0x1fff2d02:    0f00        ..      LSRS     r0,r0,#28
        0x1fff2d04:    3808        .8      SUBS     r0,r0,#8
        0x1fff2d06:    0883        ..      LSRS     r3,r0,#2
        0x1fff2d08:    4804        .H      LDR      r0,[pc,#16] ; [0x1fff2d1c] = 0xe000ed00
        0x1fff2d0a:    009b        ..      LSLS     r3,r3,#2
        0x1fff2d0c:    181b        ..      ADDS     r3,r3,r0
        0x1fff2d0e:    69d8        .i      LDR      r0,[r3,#0x1c]
        0x1fff2d10:    4390        .C      BICS     r0,r0,r2
        0x1fff2d12:    4308        .C      ORRS     r0,r0,r1
        0x1fff2d14:    61d8        .a      STR      r0,[r3,#0x1c]
        0x1fff2d16:    4770        pG      BX       lr
    $d
        0x1fff2d18:    e000e400    ....    DCD    3758154752
        0x1fff2d1c:    e000ed00    ....    DCD    3758157056
    $t
    i.__NVIC_SetPriority
    __NVIC_SetPriority
        0x1fff2d20:    0783        ..      LSLS     r3,r0,#30
        0x1fff2d22:    22ff        ."      MOVS     r2,#0xff
        0x1fff2d24:    0edb        ..      LSRS     r3,r3,#27
        0x1fff2d26:    409a        .@      LSLS     r2,r2,r3
        0x1fff2d28:    0789        ..      LSLS     r1,r1,#30
        0x1fff2d2a:    0e09        ..      LSRS     r1,r1,#24
        0x1fff2d2c:    4099        .@      LSLS     r1,r1,r3
        0x1fff2d2e:    2800        .(      CMP      r0,#0
        0x1fff2d30:    db08        ..      BLT      0x1fff2d44 ; __NVIC_SetPriority + 36
        0x1fff2d32:    0883        ..      LSRS     r3,r0,#2
        0x1fff2d34:    4809        .H      LDR      r0,[pc,#36] ; [0x1fff2d5c] = 0xe000e400
        0x1fff2d36:    009b        ..      LSLS     r3,r3,#2
        0x1fff2d38:    181b        ..      ADDS     r3,r3,r0
        0x1fff2d3a:    6818        .h      LDR      r0,[r3,#0]
        0x1fff2d3c:    4390        .C      BICS     r0,r0,r2
        0x1fff2d3e:    4308        .C      ORRS     r0,r0,r1
        0x1fff2d40:    6018        .`      STR      r0,[r3,#0]
        0x1fff2d42:    4770        pG      BX       lr
        0x1fff2d44:    0700        ..      LSLS     r0,r0,#28
        0x1fff2d46:    0f00        ..      LSRS     r0,r0,#28
        0x1fff2d48:    3808        .8      SUBS     r0,r0,#8
        0x1fff2d4a:    0883        ..      LSRS     r3,r0,#2
        0x1fff2d4c:    4804        .H      LDR      r0,[pc,#16] ; [0x1fff2d60] = 0xe000ed00
        0x1fff2d4e:    009b        ..      LSLS     r3,r3,#2
        0x1fff2d50:    181b        ..      ADDS     r3,r3,r0
        0x1fff2d52:    69d8        .i      LDR      r0,[r3,#0x1c]
        0x1fff2d54:    4390        .C      BICS     r0,r0,r2
        0x1fff2d56:    4308        .C      ORRS     r0,r0,r1
        0x1fff2d58:    61d8        .a      STR      r0,[r3,#0x1c]
        0x1fff2d5a:    4770        pG      BX       lr
    $d
        0x1fff2d5c:    e000e400    ....    DCD    3758154752
        0x1fff2d60:    e000ed00    ....    DCD    3758157056
    $t
    i.__scatterload_copy
    __scatterload_copy
        0x1fff2d64:    e002        ..      B        0x1fff2d6c ; __scatterload_copy + 8
        0x1fff2d66:    c808        ..      LDM      r0!,{r3}
        0x1fff2d68:    1f12        ..      SUBS     r2,r2,#4
        0x1fff2d6a:    c108        ..      STM      r1!,{r3}
        0x1fff2d6c:    2a00        .*      CMP      r2,#0
        0x1fff2d6e:    d1fa        ..      BNE      0x1fff2d66 ; __scatterload_copy + 2
        0x1fff2d70:    4770        pG      BX       lr
    i.__scatterload_null
    __scatterload_null
        0x1fff2d72:    4770        pG      BX       lr
    i.__scatterload_zeroinit
    __scatterload_zeroinit
        0x1fff2d74:    2000        .       MOVS     r0,#0
        0x1fff2d76:    e001        ..      B        0x1fff2d7c ; __scatterload_zeroinit + 8
        0x1fff2d78:    c101        ..      STM      r1!,{r0}
        0x1fff2d7a:    1f12        ..      SUBS     r2,r2,#4
        0x1fff2d7c:    2a00        .*      CMP      r2,#0
        0x1fff2d7e:    d1fb        ..      BNE      0x1fff2d78 ; __scatterload_zeroinit + 4
        0x1fff2d80:    4770        pG      BX       lr
        0x1fff2d82:    0000        ..      MOVS     r0,r0
    i.__wdt_init
    __wdt_init
        0x1fff2d84:    4802        .H      LDR      r0,[pc,#8] ; [0x1fff2d90] = 0x1fff0340
        0x1fff2d86:    69c0        .i      LDR      r0,[r0,#0x1c]
        0x1fff2d88:    2800        .(      CMP      r0,#0
        0x1fff2d8a:    d000        ..      BEQ      0x1fff2d8e ; __wdt_init + 10
        0x1fff2d8c:    4700        .G      BX       r0
        0x1fff2d8e:    4770        pG      BX       lr
    $d
        0x1fff2d90:    1fff0340    @...    DCD    536806208
    $t
    i._clk_apply_setting1
    _clk_apply_setting1
        0x1fff2d94:    b5ff        ..      PUSH     {r0-r7,lr}
        0x1fff2d96:    4607        .F      MOV      r7,r0
        0x1fff2d98:    2001        .       MOVS     r0,#1
        0x1fff2d9a:    0780        ..      LSLS     r0,r0,#30
        0x1fff2d9c:    6881        .h      LDR      r1,[r0,#8]
        0x1fff2d9e:    b083        ..      SUB      sp,sp,#0xc
        0x1fff2da0:    461c        .F      MOV      r4,r3
        0x1fff2da2:    4615        .F      MOV      r5,r2
        0x1fff2da4:    9102        ..      STR      r1,[sp,#8]
        0x1fff2da6:    6946        Fi      LDR      r6,[r0,#0x14]
        0x1fff2da8:    4939        9I      LDR      r1,[pc,#228] ; [0x1fff2e90] = 0xe000e100
        0x1fff2daa:    6809        .h      LDR      r1,[r1,#0]
        0x1fff2dac:    4a38        8J      LDR      r2,[pc,#224] ; [0x1fff2e90] = 0xe000e100
        0x1fff2dae:    0049        I.      LSLS     r1,r1,#1
        0x1fff2db0:    0849        I.      LSRS     r1,r1,#1
        0x1fff2db2:    9101        ..      STR      r1,[sp,#4]
        0x1fff2db4:    2100        .!      MOVS     r1,#0
        0x1fff2db6:    43c9        .C      MVNS     r1,r1
        0x1fff2db8:    3280        .2      ADDS     r2,r2,#0x80
        0x1fff2dba:    6011        .`      STR      r1,[r2,#0]
        0x1fff2dbc:    4a35        5J      LDR      r2,[pc,#212] ; [0x1fff2e94] = 0xe000e200
        0x1fff2dbe:    6812        .h      LDR      r2,[r2,#0]
        0x1fff2dc0:    0052        R.      LSLS     r2,r2,#1
        0x1fff2dc2:    0852        R.      LSRS     r2,r2,#1
        0x1fff2dc4:    9200        ..      STR      r2,[sp,#0]
        0x1fff2dc6:    4a33        3J      LDR      r2,[pc,#204] ; [0x1fff2e94] = 0xe000e200
        0x1fff2dc8:    3280        .2      ADDS     r2,r2,#0x80
        0x1fff2dca:    6011        .`      STR      r1,[r2,#0]
        0x1fff2dcc:    4932        2I      LDR      r1,[pc,#200] ; [0x1fff2e98] = 0x80001
        0x1fff2dce:    6081        .`      STR      r1,[r0,#8]
        0x1fff2dd0:    2121        !!      MOVS     r1,#0x21
        0x1fff2dd2:    6141        Aa      STR      r1,[r0,#0x14]
        0x1fff2dd4:    201f        .       MOVS     r0,#0x1f
        0x1fff2dd6:    f7fffd8f    ....    BL       NVIC_EnableIRQ ; 0x1fff28f8
        0x1fff2dda:    07e2        ..      LSLS     r2,r4,#31
        0x1fff2ddc:    2180        .!      MOVS     r1,#0x80
        0x1fff2dde:    482f        /H      LDR      r0,[pc,#188] ; [0x1fff2e9c] = 0x4000f040
        0x1fff2de0:    2a00        .*      CMP      r2,#0
        0x1fff2de2:    d002        ..      BEQ      0x1fff2dea ; _clk_apply_setting1 + 86
        0x1fff2de4:    6842        Bh      LDR      r2,[r0,#4]
        0x1fff2de6:    430a        .C      ORRS     r2,r2,r1
        0x1fff2de8:    6042        B`      STR      r2,[r0,#4]
        0x1fff2dea:    07a2        ..      LSLS     r2,r4,#30
        0x1fff2dec:    d504        ..      BPL      0x1fff2df8 ; _clk_apply_setting1 + 100
        0x1fff2dee:    6842        Bh      LDR      r2,[r0,#4]
        0x1fff2df0:    23ff        .#      MOVS     r3,#0xff
        0x1fff2df2:    3301        .3      ADDS     r3,#1
        0x1fff2df4:    431a        .C      ORRS     r2,r2,r3
        0x1fff2df6:    6042        B`      STR      r2,[r0,#4]
        0x1fff2df8:    2d00        .-      CMP      r5,#0
        0x1fff2dfa:    d00c        ..      BEQ      0x1fff2e16 ; _clk_apply_setting1 + 130
        0x1fff2dfc:    072a        *.      LSLS     r2,r5,#28
        0x1fff2dfe:    0f52        R.      LSRS     r2,r2,#29
        0x1fff2e00:    d004        ..      BEQ      0x1fff2e0c ; _clk_apply_setting1 + 120
        0x1fff2e02:    2201        ."      MOVS     r2,#1
        0x1fff2e04:    4314        .C      ORRS     r4,r4,r2
        0x1fff2e06:    6842        Bh      LDR      r2,[r0,#4]
        0x1fff2e08:    430a        .C      ORRS     r2,r2,r1
        0x1fff2e0a:    6042        B`      STR      r2,[r0,#4]
        0x1fff2e0c:    6841        Ah      LDR      r1,[r0,#4]
        0x1fff2e0e:    072a        *.      LSLS     r2,r5,#28
        0x1fff2e10:    0bd2        ..      LSRS     r2,r2,#15
        0x1fff2e12:    4311        .C      ORRS     r1,r1,r2
        0x1fff2e14:    6041        A`      STR      r1,[r0,#4]
        0x1fff2e16:    4921        !I      LDR      r1,[pc,#132] ; [0x1fff2e9c] = 0x4000f040
        0x1fff2e18:    3940        @9      SUBS     r1,r1,#0x40
        0x1fff2e1a:    6bca        .k      LDR      r2,[r1,#0x3c]
        0x1fff2e1c:    0152        R.      LSLS     r2,r2,#5
        0x1fff2e1e:    0f52        R.      LSRS     r2,r2,#29
        0x1fff2e20:    42ba        .B      CMP      r2,r7
        0x1fff2e22:    d006        ..      BEQ      0x1fff2e32 ; _clk_apply_setting1 + 158
        0x1fff2e24:    6bca        .k      LDR      r2,[r1,#0x3c]
        0x1fff2e26:    2307        .#      MOVS     r3,#7
        0x1fff2e28:    061b        ..      LSLS     r3,r3,#24
        0x1fff2e2a:    439a        .C      BICS     r2,r2,r3
        0x1fff2e2c:    063b        ;.      LSLS     r3,r7,#24
        0x1fff2e2e:    431a        .C      ORRS     r2,r2,r3
        0x1fff2e30:    63ca        .c      STR      r2,[r1,#0x3c]
        0x1fff2e32:    6bca        .k      LDR      r2,[r1,#0x3c]
        0x1fff2e34:    0753        S.      LSLS     r3,r2,#29
        0x1fff2e36:    9a04        ..      LDR      r2,[sp,#0x10]
        0x1fff2e38:    0f5b        [.      LSRS     r3,r3,#29
        0x1fff2e3a:    4293        .B      CMP      r3,r2
        0x1fff2e3c:    d005        ..      BEQ      0x1fff2e4a ; _clk_apply_setting1 + 182
        0x1fff2e3e:    6bca        .k      LDR      r2,[r1,#0x3c]
        0x1fff2e40:    9b04        ..      LDR      r3,[sp,#0x10]
        0x1fff2e42:    08d2        ..      LSRS     r2,r2,#3
        0x1fff2e44:    00d2        ..      LSLS     r2,r2,#3
        0x1fff2e46:    431a        .C      ORRS     r2,r2,r3
        0x1fff2e48:    63ca        .c      STR      r2,[r1,#0x3c]
        0x1fff2e4a:    6841        Ah      LDR      r1,[r0,#4]
        0x1fff2e4c:    22ff        ."      MOVS     r2,#0xff
        0x1fff2e4e:    3281        .2      ADDS     r2,r2,#0x81
        0x1fff2e50:    4391        .C      BICS     r1,r1,r2
        0x1fff2e52:    01e2        ..      LSLS     r2,r4,#7
        0x1fff2e54:    4311        .C      ORRS     r1,r1,r2
        0x1fff2e56:    6041        A`      STR      r1,[r0,#4]
        0x1fff2e58:    6841        Ah      LDR      r1,[r0,#4]
        0x1fff2e5a:    220f        ."      MOVS     r2,#0xf
        0x1fff2e5c:    0352        R.      LSLS     r2,r2,#13
        0x1fff2e5e:    4391        .C      BICS     r1,r1,r2
        0x1fff2e60:    036a        j.      LSLS     r2,r5,#13
        0x1fff2e62:    4311        .C      ORRS     r1,r1,r2
        0x1fff2e64:    6041        A`      STR      r1,[r0,#4]
        0x1fff2e66:    480c        .H      LDR      r0,[pc,#48] ; [0x1fff2e98] = 0x80001
        0x1fff2e68:    9902        ..      LDR      r1,[sp,#8]
        0x1fff2e6a:    4301        .C      ORRS     r1,r1,r0
        0x1fff2e6c:    0780        ..      LSLS     r0,r0,#30
        0x1fff2e6e:    6081        .`      STR      r1,[r0,#8]
        0x1fff2e70:    2101        .!      MOVS     r1,#1
        0x1fff2e72:    430e        .C      ORRS     r6,r6,r1
        0x1fff2e74:    6146        Fa      STR      r6,[r0,#0x14]
        0x1fff2e76:    0041        A.      LSLS     r1,r0,#1
        0x1fff2e78:    4805        .H      LDR      r0,[pc,#20] ; [0x1fff2e90] = 0xe000e100
        0x1fff2e7a:    3080        .0      ADDS     r0,r0,#0x80
        0x1fff2e7c:    6001        .`      STR      r1,[r0,#0]
        0x1fff2e7e:    4905        .I      LDR      r1,[pc,#20] ; [0x1fff2e94] = 0xe000e200
        0x1fff2e80:    9800        ..      LDR      r0,[sp,#0]
        0x1fff2e82:    6008        .`      STR      r0,[r1,#0]
        0x1fff2e84:    4902        .I      LDR      r1,[pc,#8] ; [0x1fff2e90] = 0xe000e100
        0x1fff2e86:    9801        ..      LDR      r0,[sp,#4]
        0x1fff2e88:    6008        .`      STR      r0,[r1,#0]
        0x1fff2e8a:    b007        ..      ADD      sp,sp,#0x1c
        0x1fff2e8c:    bdf0        ..      POP      {r4-r7,pc}
    $d
        0x1fff2e8e:    0000        ..      DCW    0
        0x1fff2e90:    e000e100    ....    DCD    3758153984
        0x1fff2e94:    e000e200    ....    DCD    3758154240
        0x1fff2e98:    00080001    ....    DCD    524289
        0x1fff2e9c:    4000f040    @..@    DCD    1073803328
    $t
    i._efuse_chip_version_check
    _efuse_chip_version_check
        0x1fff2ea0:    b51c        ..      PUSH     {r2-r4,lr}
        0x1fff2ea2:    4669        iF      MOV      r1,sp
        0x1fff2ea4:    2001        .       MOVS     r0,#1
        0x1fff2ea6:    f7fefe2d    ..-.    BL       $Ven$TT$L$$efuse_read ; 0x1fff1b04
        0x1fff2eaa:    2001        .       MOVS     r0,#1
        0x1fff2eac:    9000        ..      STR      r0,[sp,#0]
        0x1fff2eae:    4803        .H      LDR      r0,[pc,#12] ; [0x1fff2ebc] = 0xbbb
        0x1fff2eb0:    9001        ..      STR      r0,[sp,#4]
        0x1fff2eb2:    f000fc07    ....    BL       finidv ; 0x1fff36c4
        0x1fff2eb6:    2001        .       MOVS     r0,#1
        0x1fff2eb8:    bd1c        ..      POP      {r2-r4,pc}
    $d
        0x1fff2eba:    0000        ..      DCW    0
        0x1fff2ebc:    00000bbb    ....    DCD    3003
    $t
    i._hard_fault
    _hard_fault
        0x1fff2ec0:    b508        ..      PUSH     {r3,lr}
        0x1fff2ec2:    4f33        3O      LDR      r7,[pc,#204] ; [0x1fff2f90] = 0x1fff0000
        0x1fff2ec4:    4604        .F      MOV      r4,r0
        0x1fff2ec6:    68f8        .h      LDR      r0,[r7,#0xc]
        0x1fff2ec8:    2500        .%      MOVS     r5,#0
        0x1fff2eca:    7806        .x      LDRB     r6,[r0,#0]
        0x1fff2ecc:    20e1        .       MOVS     r0,#0xe1
        0x1fff2ece:    462b        +F      MOV      r3,r5
        0x1fff2ed0:    2212        ."      MOVS     r2,#0x12
        0x1fff2ed2:    2105        .!      MOVS     r1,#5
        0x1fff2ed4:    0240        @.      LSLS     r0,r0,#9
        0x1fff2ed6:    f7fefe1b    ....    BL       $Ven$TT$L$$rom_uart_init ; 0x1fff1b10
        0x1fff2eda:    a02e        ..      ADR      r0,{pc}+0xba ; 0x1fff2f94
        0x1fff2edc:    f7fefe1e    ....    BL       $Ven$TT$L$$log_printf ; 0x1fff1b1c
        0x1fff2ee0:    6b20         k      LDR      r0,[r4,#0x30]
        0x1fff2ee2:    9000        ..      STR      r0,[sp,#0]
        0x1fff2ee4:    4621        !F      MOV      r1,r4
        0x1fff2ee6:    3124        $1      ADDS     r1,r1,#0x24
        0x1fff2ee8:    c90e        ..      LDM      r1,{r1-r3}
        0x1fff2eea:    a030        0.      ADR      r0,{pc}+0xc2 ; 0x1fff2fac
        0x1fff2eec:    f7fefe16    ....    BL       $Ven$TT$L$$log_printf ; 0x1fff1b1c
        0x1fff2ef0:    6920         i      LDR      r0,[r4,#0x10]
        0x1fff2ef2:    9000        ..      STR      r0,[sp,#0]
        0x1fff2ef4:    1d21        !.      ADDS     r1,r4,#4
        0x1fff2ef6:    c90e        ..      LDM      r1,{r1-r3}
        0x1fff2ef8:    a037        7.      ADR      r0,{pc}+0xe0 ; 0x1fff2fd8
        0x1fff2efa:    f7fefe0f    ....    BL       $Ven$TT$L$$log_printf ; 0x1fff1b1c
        0x1fff2efe:    6a20         j      LDR      r0,[r4,#0x20]
        0x1fff2f00:    9000        ..      STR      r0,[sp,#0]
        0x1fff2f02:    4621        !F      MOV      r1,r4
        0x1fff2f04:    3114        .1      ADDS     r1,r1,#0x14
        0x1fff2f06:    c90e        ..      LDM      r1,{r1-r3}
        0x1fff2f08:    a03e        >.      ADR      r0,{pc}+0xfc ; 0x1fff3004
        0x1fff2f0a:    f7fefe07    ....    BL       $Ven$TT$L$$log_printf ; 0x1fff1b1c
        0x1fff2f0e:    6be0        .k      LDR      r0,[r4,#0x3c]
        0x1fff2f10:    9000        ..      STR      r0,[sp,#0]
        0x1fff2f12:    a047        G.      ADR      r0,{pc}+0x11e ; 0x1fff3030
        0x1fff2f14:    6ba3        .k      LDR      r3,[r4,#0x38]
        0x1fff2f16:    6822        "h      LDR      r2,[r4,#0]
        0x1fff2f18:    6b61        ak      LDR      r1,[r4,#0x34]
        0x1fff2f1a:    f7fefdff    ....    BL       $Ven$TT$L$$log_printf ; 0x1fff1b1c
        0x1fff2f1e:    a04f        O.      ADR      r0,{pc}+0x13e ; 0x1fff305c
        0x1fff2f20:    6c21        !l      LDR      r1,[r4,#0x40]
        0x1fff2f22:    f7fefdfb    ....    BL       $Ven$TT$L$$log_printf ; 0x1fff1b1c
        0x1fff2f26:    4851        QH      LDR      r0,[pc,#324] ; [0x1fff306c] = 0xe000ed00
        0x1fff2f28:    6841        Ah      LDR      r1,[r0,#4]
        0x1fff2f2a:    a051        Q.      ADR      r0,{pc}+0x146 ; 0x1fff3070
        0x1fff2f2c:    f7fefdf6    ....    BL       $Ven$TT$L$$log_printf ; 0x1fff1b1c
        0x1fff2f30:    4853        SH      LDR      r0,[pc,#332] ; [0x1fff3080] = 0x1fff08b4
        0x1fff2f32:    7801        .x      LDRB     r1,[r0,#0]
        0x1fff2f34:    42b1        .B      CMP      r1,r6
        0x1fff2f36:    d202        ..      BCS      0x1fff2f3e ; _hard_fault + 126
        0x1fff2f38:    68b8        .h      LDR      r0,[r7,#8]
        0x1fff2f3a:    008a        ..      LSLS     r2,r1,#2
        0x1fff2f3c:    5885        .X      LDR      r5,[r0,r2]
        0x1fff2f3e:    4851        QH      LDR      r0,[pc,#324] ; [0x1fff3084] = 0x1fff0860
        0x1fff2f40:    460e        .F      MOV      r6,r1
        0x1fff2f42:    6807        .h      LDR      r7,[r0,#0]
        0x1fff2f44:    f7fefdf0    ....    BL       $Ven$TT$L$$rtc_get_counter ; 0x1fff1b28
        0x1fff2f48:    9000        ..      STR      r0,[sp,#0]
        0x1fff2f4a:    463b        ;F      MOV      r3,r7
        0x1fff2f4c:    462a        *F      MOV      r2,r5
        0x1fff2f4e:    4631        1F      MOV      r1,r6
        0x1fff2f50:    a04d        M.      ADR      r0,{pc}+0x138 ; 0x1fff3088
        0x1fff2f52:    f7fefde3    ....    BL       $Ven$TT$L$$log_printf ; 0x1fff1b1c
        0x1fff2f56:    a059        Y.      ADR      r0,{pc}+0x166 ; 0x1fff30bc
        0x1fff2f58:    f7fefde0    ....    BL       $Ven$TT$L$$log_printf ; 0x1fff1b1c
        0x1fff2f5c:    4e61        aN      LDR      r6,[pc,#388] ; [0x1fff30e4] = 0x1ffffffc
        0x1fff2f5e:    6825        %h      LDR      r5,[r4,#0]
        0x1fff2f60:    4035        5@      ANDS     r5,r5,r6
        0x1fff2f62:    2400        .$      MOVS     r4,#0
        0x1fff2f64:    1929        ).      ADDS     r1,r5,r4
        0x1fff2f66:    42b1        .B      CMP      r1,r6
        0x1fff2f68:    d80b        ..      BHI      0x1fff2f82 ; _hard_fault + 194
        0x1fff2f6a:    0720         .      LSLS     r0,r4,#28
        0x1fff2f6c:    d102        ..      BNE      0x1fff2f74 ; _hard_fault + 180
        0x1fff2f6e:    a05e        ^.      ADR      r0,{pc}+0x17a ; 0x1fff30e8
        0x1fff2f70:    f7fefdd4    ....    BL       $Ven$TT$L$$log_printf ; 0x1fff1b1c
        0x1fff2f74:    5929        )Y      LDR      r1,[r5,r4]
        0x1fff2f76:    a05e        ^.      ADR      r0,{pc}+0x17a ; 0x1fff30f0
        0x1fff2f78:    f7fefdd0    ....    BL       $Ven$TT$L$$log_printf ; 0x1fff1b1c
        0x1fff2f7c:    1d24        $.      ADDS     r4,r4,#4
        0x1fff2f7e:    2cff        .,      CMP      r4,#0xff
        0x1fff2f80:    ddf0        ..      BLE      0x1fff2f64 ; _hard_fault + 164
        0x1fff2f82:    485d        ]H      LDR      r0,[pc,#372] ; [0x1fff30f8] = 0x1fff6dc4
        0x1fff2f84:    6800        .h      LDR      r0,[r0,#0]
        0x1fff2f86:    2800        .(      CMP      r0,#0
        0x1fff2f88:    d000        ..      BEQ      0x1fff2f8c ; _hard_fault + 204
        0x1fff2f8a:    4780        .G      BLX      r0
        0x1fff2f8c:    e7fe        ..      B        0x1fff2f8c ; _hard_fault + 204
    $d
        0x1fff2f8e:    0000        ..      DCW    0
        0x1fff2f90:    1fff0000    ....    DCD    536805376
        0x1fff2f94:    61485b0a    .[Ha    DCD    1632131850
        0x1fff2f98:    66206472    rd f    DCD    1713398898
        0x1fff2f9c:    746c7561    ault    DCD    1953264993
        0x1fff2fa0:    6e616820     han    DCD    1851877408
        0x1fff2fa4:    72656c64    dler    DCD    1919249508
        0x1fff2fa8:    00000a5d    ]...    DCD    2653
        0x1fff2fac:    522d3052    R0-R    DCD    1378693202
        0x1fff2fb0:    20202033    3       DCD    538976307
        0x1fff2fb4:    20202020            DCD    538976288
        0x1fff2fb8:    30203d20     = 0    DCD    807419168
        0x1fff2fbc:    38302578    x%08    DCD    942679416
        0x1fff2fc0:    78302078    x 0x    DCD    2016419960
        0x1fff2fc4:    78383025    %08x    DCD    2016948261
        0x1fff2fc8:    25783020     0x%    DCD    628633632
        0x1fff2fcc:    20783830    08x     DCD    544749616
        0x1fff2fd0:    30257830    0x%0    DCD    807761968
        0x1fff2fd4:    000a7838    8x..    DCD    686136
        0x1fff2fd8:    522d3452    R4-R    DCD    1378694226
        0x1fff2fdc:    20202037    7       DCD    538976311
        0x1fff2fe0:    20202020            DCD    538976288
        0x1fff2fe4:    30203d20     = 0    DCD    807419168
        0x1fff2fe8:    38302578    x%08    DCD    942679416
        0x1fff2fec:    78302078    x 0x    DCD    2016419960
        0x1fff2ff0:    78383025    %08x    DCD    2016948261
        0x1fff2ff4:    25783020     0x%    DCD    628633632
        0x1fff2ff8:    20783830    08x     DCD    544749616
        0x1fff2ffc:    30257830    0x%0    DCD    807761968
        0x1fff3000:    000a7838    8x..    DCD    686136
        0x1fff3004:    522d3852    R8-R    DCD    1378695250
        0x1fff3008:    20203131    11      DCD    538980657
        0x1fff300c:    20202020            DCD    538976288
        0x1fff3010:    30203d20     = 0    DCD    807419168
        0x1fff3014:    38302578    x%08    DCD    942679416
        0x1fff3018:    78302078    x 0x    DCD    2016419960
        0x1fff301c:    78383025    %08x    DCD    2016948261
        0x1fff3020:    25783020     0x%    DCD    628633632
        0x1fff3024:    20783830    08x     DCD    544749616
        0x1fff3028:    30257830    0x%0    DCD    807761968
        0x1fff302c:    000a7838    8x..    DCD    686136
        0x1fff3030:    2c323152    R12,    DCD    741486930
        0x1fff3034:    4c2c5053    SP,L    DCD    1277972563
        0x1fff3038:    43502c52    R,PC    DCD    1129327698
        0x1fff303c:    30203d20     = 0    DCD    807419168
        0x1fff3040:    38302578    x%08    DCD    942679416
        0x1fff3044:    78302078    x 0x    DCD    2016419960
        0x1fff3048:    78383025    %08x    DCD    2016948261
        0x1fff304c:    25783020     0x%    DCD    628633632
        0x1fff3050:    20783830    08x     DCD    544749616
        0x1fff3054:    30257830    0x%0    DCD    807761968
        0x1fff3058:    000a7838    8x..    DCD    686136
        0x1fff305c:    20525350    PSR     DCD    542266192
        0x1fff3060:    30203d20     = 0    DCD    807419168
        0x1fff3064:    38302578    x%08    DCD    942679416
        0x1fff3068:    00202078    x  .    DCD    2105464
        0x1fff306c:    e000ed00    ....    DCD    3758157056
        0x1fff3070:    52534349    ICSR    DCD    1381188425
        0x1fff3074:    30203d20     = 0    DCD    807419168
        0x1fff3078:    38302578    x%08    DCD    942679416
        0x1fff307c:    00000a78    x...    DCD    2680
        0x1fff3080:    1fff08b4    ....    DCD    536807604
        0x1fff3084:    1fff0860    `...    DCD    536807520
        0x1fff3088:    41534f5b    [OSA    DCD    1095978843
        0x1fff308c:    64695d4c    L]id    DCD    1684626764
        0x1fff3090:    64252078    x %d    DCD    1680154744
        0x1fff3094:    6e754620     Fun    DCD    1853179424
        0x1fff3098:    78302063    c 0x    DCD    2016419939
        0x1fff309c:    78383025    %08x    DCD    2016948261
        0x1fff30a0:    73797320     sys    DCD    1937339168
        0x1fff30a4:    6b636974    tick    DCD    1801677172
        0x1fff30a8:    38302520     %08    DCD    942679328
        0x1fff30ac:    74722078    x rt    DCD    1953636472
        0x1fff30b0:    30252063    c %0    DCD    807739491
        0x1fff30b4:    200a7838    8x.     DCD    537557048
        0x1fff30b8:    00000000    ....    DCD    0
        0x1fff30bc:    2d2d2d2d    ----    DCD    757935405
        0x1fff30c0:    2d2d2d2d    ----    DCD    757935405
        0x1fff30c4:    642d2d2d    ---d    DCD    1680682285
        0x1fff30c8:    20706d75    ump     DCD    544238965
        0x1fff30cc:    63617473    stac    DCD    1667331187
        0x1fff30d0:    2d2d2d6b    k---    DCD    757935467
        0x1fff30d4:    2d2d2d2d    ----    DCD    757935405
        0x1fff30d8:    2d2d2d2d    ----    DCD    757935405
        0x1fff30dc:    0a2d2d2d    ---.    DCD    170732845
        0x1fff30e0:    00000000    ....    DCD    0
        0x1fff30e4:    1ffffffc    ....    DCD    536870908
        0x1fff30e8:    30255b0a    .[%0    DCD    807754506
        0x1fff30ec:    005d5838    8X].    DCD    6117432
        0x1fff30f0:    78383025    %08x    DCD    2016948261
        0x1fff30f4:    00000020     ...    DCD    32
        0x1fff30f8:    1fff6dc4    .m..    DCD    536833476
    $t
    i._rom_efuse_version_init
    _rom_efuse_version_init
        0x1fff30fc:    b51c        ..      PUSH     {r2-r4,lr}
        0x1fff30fe:    4669        iF      MOV      r1,sp
        0x1fff3100:    2003        .       MOVS     r0,#3
        0x1fff3102:    f7fefcff    ....    BL       $Ven$TT$L$$efuse_read ; 0x1fff1b04
        0x1fff3106:    4668        hF      MOV      r0,sp
        0x1fff3108:    f001fa00    ....    BL       lib_efuse_load ; 0x1fff450c
        0x1fff310c:    9800        ..      LDR      r0,[sp,#0]
        0x1fff310e:    2800        .(      CMP      r0,#0
        0x1fff3110:    d102        ..      BNE      0x1fff3118 ; _rom_efuse_version_init + 28
        0x1fff3112:    9801        ..      LDR      r0,[sp,#4]
        0x1fff3114:    2800        .(      CMP      r0,#0
        0x1fff3116:    d000        ..      BEQ      0x1fff311a ; _rom_efuse_version_init + 30
        0x1fff3118:    2001        .       MOVS     r0,#1
        0x1fff311a:    bd1c        ..      POP      {r2-r4,pc}
    i._rom_sec_boot_init
    _rom_sec_boot_init
        0x1fff311c:    b510        ..      PUSH     {r4,lr}
        0x1fff311e:    f000fa47    ..G.    BL       efuse_init ; 0x1fff35b0
        0x1fff3122:    f7fffebd    ....    BL       _efuse_chip_version_check ; 0x1fff2ea0
        0x1fff3126:    2800        .(      CMP      r0,#0
        0x1fff3128:    d002        ..      BEQ      0x1fff3130 ; _rom_sec_boot_init + 20
        0x1fff312a:    4802        .H      LDR      r0,[pc,#8] ; [0x1fff3134] = 0xa2e1
        0x1fff312c:    4780        .G      BLX      r0
        0x1fff312e:    bd10        ..      POP      {r4,pc}
        0x1fff3130:    e7fe        ..      B        0x1fff3130 ; _rom_sec_boot_init + 20
    $d
        0x1fff3132:    0000        ..      DCW    0
        0x1fff3134:    0000a2e1    ....    DCD    41697
    $t
    i._uart_putc
    _uart_putc
        0x1fff3138:    460a        .F      MOV      r2,r1
        0x1fff313a:    b510        ..      PUSH     {r4,lr}
        0x1fff313c:    4601        .F      MOV      r1,r0
        0x1fff313e:    2000        .       MOVS     r0,#0
        0x1fff3140:    f001f974    ..t.    BL       hal_uart_send_buff ; 0x1fff442c
        0x1fff3144:    bd10        ..      POP      {r4,pc}
    i.app_main
    app_main
        0x1fff3146:    b510        ..      PUSH     {r4,lr}
        0x1fff3148:    f7fefcf4    ....    BL       $Ven$TT$L$$osal_init_system ; 0x1fff1b34
        0x1fff314c:    2001        .       MOVS     r0,#1
        0x1fff314e:    f7fefcf7    ....    BL       $Ven$TT$L$$osal_pwrmgr_device ; 0x1fff1b40
        0x1fff3152:    f7fefcfb    ....    BL       $Ven$TT$L$$osal_start_system ; 0x1fff1b4c
        0x1fff3156:    2000        .       MOVS     r0,#0
        0x1fff3158:    bd10        ..      POP      {r4,pc}
        0x1fff315a:    0000        ..      MOVS     r0,r0
    i.check_16MXtal_by_rcTracking
    check_16MXtal_by_rcTracking
        0x1fff315c:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff315e:    484e        NH      LDR      r0,[pc,#312] ; [0x1fff3298] = 0x4000f0c0
        0x1fff3160:    6840        @h      LDR      r0,[r0,#4]
        0x1fff3162:    43c0        .C      MVNS     r0,r0
        0x1fff3164:    0600        ..      LSLS     r0,r0,#24
        0x1fff3166:    d503        ..      BPL      0x1fff3170 ; check_16MXtal_by_rcTracking + 20
        0x1fff3168:    203c        <       MOVS     r0,#0x3c
        0x1fff316a:    f7fefcf5    ....    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b58
        0x1fff316e:    bdf8        ..      POP      {r3-r7,pc}
        0x1fff3170:    f7fefcda    ....    BL       $Ven$TT$L$$rtc_get_counter ; 0x1fff1b28
        0x1fff3174:    4d48        HM      LDR      r5,[pc,#288] ; [0x1fff3298] = 0x4000f0c0
        0x1fff3176:    9000        ..      STR      r0,[sp,#0]
        0x1fff3178:    3d80        .=      SUBS     r5,r5,#0x80
        0x1fff317a:    6828        (h      LDR      r0,[r5,#0]
        0x1fff317c:    2101        .!      MOVS     r1,#1
        0x1fff317e:    0489        ..      LSLS     r1,r1,#18
        0x1fff3180:    4308        .C      ORRS     r0,r0,r1
        0x1fff3182:    6028        (`      STR      r0,[r5,#0]
        0x1fff3184:    69e8        .i      LDR      r0,[r5,#0x1c]
        0x1fff3186:    4945        EI      LDR      r1,[pc,#276] ; [0x1fff329c] = 0xfffefe00
        0x1fff3188:    4008        .@      ANDS     r0,r0,r1
        0x1fff318a:    3028        (0      ADDS     r0,r0,#0x28
        0x1fff318c:    61e8        .a      STR      r0,[r5,#0x1c]
        0x1fff318e:    2003        .       MOVS     r0,#3
        0x1fff3190:    f7fefce2    ....    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b58
        0x1fff3194:    6a68        hj      LDR      r0,[r5,#0x24]
        0x1fff3196:    03c7        ..      LSLS     r7,r0,#15
        0x1fff3198:    0bff        ..      LSRS     r7,r7,#15
        0x1fff319a:    2003        .       MOVS     r0,#3
        0x1fff319c:    f7fefcdc    ....    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b58
        0x1fff31a0:    6a68        hj      LDR      r0,[r5,#0x24]
        0x1fff31a2:    03c4        ..      LSLS     r4,r0,#15
        0x1fff31a4:    0be4        ..      LSRS     r4,r4,#15
        0x1fff31a6:    2003        .       MOVS     r0,#3
        0x1fff31a8:    f7fefcd6    ....    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b58
        0x1fff31ac:    6a68        hj      LDR      r0,[r5,#0x24]
        0x1fff31ae:    03c6        ..      LSLS     r6,r0,#15
        0x1fff31b0:    0bf6        ..      LSRS     r6,r6,#15
        0x1fff31b2:    42a7        .B      CMP      r7,r4
        0x1fff31b4:    d301        ..      BCC      0x1fff31ba ; check_16MXtal_by_rcTracking + 94
        0x1fff31b6:    4620         F      MOV      r0,r4
        0x1fff31b8:    e000        ..      B        0x1fff31bc ; check_16MXtal_by_rcTracking + 96
        0x1fff31ba:    4638        8F      MOV      r0,r7
        0x1fff31bc:    42b0        .B      CMP      r0,r6
        0x1fff31be:    d300        ..      BCC      0x1fff31c2 ; check_16MXtal_by_rcTracking + 102
        0x1fff31c0:    4630        0F      MOV      r0,r6
        0x1fff31c2:    42a7        .B      CMP      r7,r4
        0x1fff31c4:    d301        ..      BCC      0x1fff31ca ; check_16MXtal_by_rcTracking + 110
        0x1fff31c6:    4639        9F      MOV      r1,r7
        0x1fff31c8:    e000        ..      B        0x1fff31cc ; check_16MXtal_by_rcTracking + 112
        0x1fff31ca:    4621        !F      MOV      r1,r4
        0x1fff31cc:    42b1        .B      CMP      r1,r6
        0x1fff31ce:    d200        ..      BCS      0x1fff31d2 ; check_16MXtal_by_rcTracking + 118
        0x1fff31d0:    4631        1F      MOV      r1,r6
        0x1fff31d2:    4a33        3J      LDR      r2,[pc,#204] ; [0x1fff32a0] = 0xfffffc91
        0x1fff31d4:    18ba        ..      ADDS     r2,r7,r2
        0x1fff31d6:    2ac3        .*      CMP      r2,#0xc3
        0x1fff31d8:    d226        &.      BCS      0x1fff3228 ; check_16MXtal_by_rcTracking + 204
        0x1fff31da:    4b31        1K      LDR      r3,[pc,#196] ; [0x1fff32a0] = 0xfffffc91
        0x1fff31dc:    43db        .C      MVNS     r3,r3
        0x1fff31de:    429c        .B      CMP      r4,r3
        0x1fff31e0:    d922        ".      BLS      0x1fff3228 ; check_16MXtal_by_rcTracking + 204
        0x1fff31e2:    4a30        0J      LDR      r2,[pc,#192] ; [0x1fff32a4] = 0x432
        0x1fff31e4:    4294        .B      CMP      r4,r2
        0x1fff31e6:    d21f        ..      BCS      0x1fff3228 ; check_16MXtal_by_rcTracking + 204
        0x1fff31e8:    429e        .B      CMP      r6,r3
        0x1fff31ea:    d91d        ..      BLS      0x1fff3228 ; check_16MXtal_by_rcTracking + 204
        0x1fff31ec:    4296        .B      CMP      r6,r2
        0x1fff31ee:    d21b        ..      BCS      0x1fff3228 ; check_16MXtal_by_rcTracking + 204
        0x1fff31f0:    1a08        ..      SUBS     r0,r1,r0
        0x1fff31f2:    2813        .(      CMP      r0,#0x13
        0x1fff31f4:    d218        ..      BCS      0x1fff3228 ; check_16MXtal_by_rcTracking + 204
        0x1fff31f6:    4828        (H      LDR      r0,[pc,#160] ; [0x1fff3298] = 0x4000f0c0
        0x1fff31f8:    6842        Bh      LDR      r2,[r0,#4]
        0x1fff31fa:    210c        .!      MOVS     r1,#0xc
        0x1fff31fc:    438a        .C      BICS     r2,r2,r1
        0x1fff31fe:    6042        B`      STR      r2,[r0,#4]
        0x1fff3200:    6841        Ah      LDR      r1,[r0,#4]
        0x1fff3202:    22ff        ."      MOVS     r2,#0xff
        0x1fff3204:    0212        ..      LSLS     r2,r2,#8
        0x1fff3206:    4391        .C      BICS     r1,r1,r2
        0x1fff3208:    6041        A`      STR      r1,[r0,#4]
        0x1fff320a:    2014        .       MOVS     r0,#0x14
        0x1fff320c:    f7fefca4    ....    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b58
        0x1fff3210:    4821        !H      LDR      r0,[pc,#132] ; [0x1fff3298] = 0x4000f0c0
        0x1fff3212:    3880        .8      SUBS     r0,r0,#0x80
        0x1fff3214:    6a41        Aj      LDR      r1,[r0,#0x24]
        0x1fff3216:    69c2        .i      LDR      r2,[r0,#0x1c]
        0x1fff3218:    03c9        ..      LSLS     r1,r1,#15
        0x1fff321a:    0bc9        ..      LSRS     r1,r1,#15
        0x1fff321c:    2308        .#      MOVS     r3,#8
        0x1fff321e:    439a        .C      BICS     r2,r2,r3
        0x1fff3220:    61c2        .a      STR      r2,[r0,#0x1c]
        0x1fff3222:    4821        !H      LDR      r0,[pc,#132] ; [0x1fff32a8] = 0x1fff6dcc
        0x1fff3224:    6281        .b      STR      r1,[r0,#0x28]
        0x1fff3226:    bdf8        ..      POP      {r3-r7,pc}
        0x1fff3228:    4627        'F      MOV      r7,r4
        0x1fff322a:    4634        4F      MOV      r4,r6
        0x1fff322c:    2003        .       MOVS     r0,#3
        0x1fff322e:    f7fefc93    ....    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b58
        0x1fff3232:    4819        .H      LDR      r0,[pc,#100] ; [0x1fff3298] = 0x4000f0c0
        0x1fff3234:    3880        .8      SUBS     r0,r0,#0x80
        0x1fff3236:    6a40        @j      LDR      r0,[r0,#0x24]
        0x1fff3238:    03c6        ..      LSLS     r6,r0,#15
        0x1fff323a:    0bf6        ..      LSRS     r6,r6,#15
        0x1fff323c:    f7fefc74    ..t.    BL       $Ven$TT$L$$rtc_get_counter ; 0x1fff1b28
        0x1fff3240:    9900        ..      LDR      r1,[sp,#0]
        0x1fff3242:    4288        .B      CMP      r0,r1
        0x1fff3244:    d301        ..      BCC      0x1fff324a ; check_16MXtal_by_rcTracking + 238
        0x1fff3246:    1a40        @.      SUBS     r0,r0,r1
        0x1fff3248:    e001        ..      B        0x1fff324e ; check_16MXtal_by_rcTracking + 242
        0x1fff324a:    1a40        @.      SUBS     r0,r0,r1
        0x1fff324c:    1e40        @.      SUBS     r0,r0,#1
        0x1fff324e:    4917        .I      LDR      r1,[pc,#92] ; [0x1fff32ac] = 0xce4
        0x1fff3250:    4288        .B      CMP      r0,r1
        0x1fff3252:    d3ae        ..      BCC      0x1fff31b2 ; check_16MXtal_by_rcTracking + 86
        0x1fff3254:    4810        .H      LDR      r0,[pc,#64] ; [0x1fff3298] = 0x4000f0c0
        0x1fff3256:    6841        Ah      LDR      r1,[r0,#4]
        0x1fff3258:    0409        ..      LSLS     r1,r1,#16
        0x1fff325a:    0e0d        ..      LSRS     r5,r1,#24
        0x1fff325c:    6841        Ah      LDR      r1,[r0,#4]
        0x1fff325e:    22ff        ."      MOVS     r2,#0xff
        0x1fff3260:    0212        ..      LSLS     r2,r2,#8
        0x1fff3262:    4391        .C      BICS     r1,r1,r2
        0x1fff3264:    1c6a        j.      ADDS     r2,r5,#1
        0x1fff3266:    0612        ..      LSLS     r2,r2,#24
        0x1fff3268:    0c12        ..      LSRS     r2,r2,#16
        0x1fff326a:    4311        .C      ORRS     r1,r1,r2
        0x1fff326c:    6041        A`      STR      r1,[r0,#4]
        0x1fff326e:    6841        Ah      LDR      r1,[r0,#4]
        0x1fff3270:    220c        ."      MOVS     r2,#0xc
        0x1fff3272:    4391        .C      BICS     r1,r1,r2
        0x1fff3274:    1d09        ..      ADDS     r1,r1,#4
        0x1fff3276:    6041        A`      STR      r1,[r0,#4]
        0x1fff3278:    2000        .       MOVS     r0,#0
        0x1fff327a:    f7fefc73    ..s.    BL       $Ven$TT$L$$set_sleep_flag ; 0x1fff1b64
        0x1fff327e:    2d64        d-      CMP      r5,#0x64
        0x1fff3280:    d302        ..      BCC      0x1fff3288 ; check_16MXtal_by_rcTracking + 300
        0x1fff3282:    4805        .H      LDR      r0,[pc,#20] ; [0x1fff3298] = 0x4000f0c0
        0x1fff3284:    2100        .!      MOVS     r1,#0
        0x1fff3286:    6041        A`      STR      r1,[r0,#4]
        0x1fff3288:    2d06        .-      CMP      r5,#6
        0x1fff328a:    d300        ..      BCC      0x1fff328e ; check_16MXtal_by_rcTracking + 306
        0x1fff328c:    2506        .%      MOVS     r5,#6
        0x1fff328e:    4807        .H      LDR      r0,[pc,#28] ; [0x1fff32ac] = 0xce4
        0x1fff3290:    40a8        .@      LSLS     r0,r0,r5
        0x1fff3292:    f7fefee3    ....    BL       hal_pwrmgr_enter_sleep_rtc_reset ; 0x1fff205c
        0x1fff3296:    e78c        ..      B        0x1fff31b2 ; check_16MXtal_by_rcTracking + 86
    $d
        0x1fff3298:    4000f0c0    ...@    DCD    1073803456
        0x1fff329c:    fffefe00    ....    DCD    4294901248
        0x1fff32a0:    fffffc91    ....    DCD    4294966417
        0x1fff32a4:    00000432    2...    DCD    1074
        0x1fff32a8:    1fff6dcc    .m..    DCD    536833484
        0x1fff32ac:    00000ce4    ....    DCD    3300
    $t
    i.check_96MXtal_by_rcTracking
    check_96MXtal_by_rcTracking
        0x1fff32b0:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff32b2:    483d        =H      LDR      r0,[pc,#244] ; [0x1fff33a8] = 0x4000f0c0
        0x1fff32b4:    6840        @h      LDR      r0,[r0,#4]
        0x1fff32b6:    4c3c        <L      LDR      r4,[pc,#240] ; [0x1fff33a8] = 0x4000f0c0
        0x1fff32b8:    0600        ..      LSLS     r0,r0,#24
        0x1fff32ba:    3c80        .<      SUBS     r4,r4,#0x80
        0x1fff32bc:    2180        .!      MOVS     r1,#0x80
        0x1fff32be:    2800        .(      CMP      r0,#0
        0x1fff32c0:    db06        ..      BLT      0x1fff32d0 ; check_96MXtal_by_rcTracking + 32
        0x1fff32c2:    6860        `h      LDR      r0,[r4,#4]
        0x1fff32c4:    4308        .C      ORRS     r0,r0,r1
        0x1fff32c6:    6060        ``      STR      r0,[r4,#4]
        0x1fff32c8:    2003        .       MOVS     r0,#3
        0x1fff32ca:    f7fefc45    ..E.    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b58
        0x1fff32ce:    bdf8        ..      POP      {r3-r7,pc}
        0x1fff32d0:    4d36        6M      LDR      r5,[pc,#216] ; [0x1fff33ac] = 0x1fff6dcc
        0x1fff32d2:    2000        .       MOVS     r0,#0
        0x1fff32d4:    6328        (c      STR      r0,[r5,#0x30]
        0x1fff32d6:    6820         h      LDR      r0,[r4,#0]
        0x1fff32d8:    2201        ."      MOVS     r2,#1
        0x1fff32da:    0492        ..      LSLS     r2,r2,#18
        0x1fff32dc:    4310        .C      ORRS     r0,r0,r2
        0x1fff32de:    6020         `      STR      r0,[r4,#0]
        0x1fff32e0:    4f33        3O      LDR      r7,[pc,#204] ; [0x1fff33b0] = 0xfffefe00
        0x1fff32e2:    6860        `h      LDR      r0,[r4,#4]
        0x1fff32e4:    2180        .!      MOVS     r1,#0x80
        0x1fff32e6:    4308        .C      ORRS     r0,r0,r1
        0x1fff32e8:    6060        ``      STR      r0,[r4,#4]
        0x1fff32ea:    2003        .       MOVS     r0,#3
        0x1fff32ec:    f7fefc34    ..4.    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b58
        0x1fff32f0:    6b28        (k      LDR      r0,[r5,#0x30]
        0x1fff32f2:    1c40        @.      ADDS     r0,r0,#1
        0x1fff32f4:    6328        (c      STR      r0,[r5,#0x30]
        0x1fff32f6:    6860        `h      LDR      r0,[r4,#4]
        0x1fff32f8:    2101        .!      MOVS     r1,#1
        0x1fff32fa:    0409        ..      LSLS     r1,r1,#16
        0x1fff32fc:    4308        .C      ORRS     r0,r0,r1
        0x1fff32fe:    6060        ``      STR      r0,[r4,#4]
        0x1fff3300:    2600        .&      MOVS     r6,#0
        0x1fff3302:    69e0        .i      LDR      r0,[r4,#0x1c]
        0x1fff3304:    492b        +I      LDR      r1,[pc,#172] ; [0x1fff33b4] = 0x10028
        0x1fff3306:    4038        8@      ANDS     r0,r0,r7
        0x1fff3308:    1840        @.      ADDS     r0,r0,r1
        0x1fff330a:    61e0        .a      STR      r0,[r4,#0x1c]
        0x1fff330c:    2003        .       MOVS     r0,#3
        0x1fff330e:    f7fefc23    ..#.    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b58
        0x1fff3312:    6a60        `j      LDR      r0,[r4,#0x24]
        0x1fff3314:    69e1        .i      LDR      r1,[r4,#0x1c]
        0x1fff3316:    03c0        ..      LSLS     r0,r0,#15
        0x1fff3318:    0bc0        ..      LSRS     r0,r0,#15
        0x1fff331a:    2208        ."      MOVS     r2,#8
        0x1fff331c:    4391        .C      BICS     r1,r1,r2
        0x1fff331e:    61e1        .a      STR      r1,[r4,#0x1c]
        0x1fff3320:    6aa9        .j      LDR      r1,[r5,#0x28]
        0x1fff3322:    2206        ."      MOVS     r2,#6
        0x1fff3324:    4351        QC      MULS     r1,r2,r1
        0x1fff3326:    4281        .B      CMP      r1,r0
        0x1fff3328:    d301        ..      BCC      0x1fff332e ; check_96MXtal_by_rcTracking + 126
        0x1fff332a:    1a09        ..      SUBS     r1,r1,r0
        0x1fff332c:    e000        ..      B        0x1fff3330 ; check_96MXtal_by_rcTracking + 128
        0x1fff332e:    1a41        A.      SUBS     r1,r0,r1
        0x1fff3330:    293c        <)      CMP      r1,#0x3c
        0x1fff3332:    d209        ..      BCS      0x1fff3348 ; check_96MXtal_by_rcTracking + 152
        0x1fff3334:    69e2        .i      LDR      r2,[r4,#0x1c]
        0x1fff3336:    2101        .!      MOVS     r1,#1
        0x1fff3338:    0409        ..      LSLS     r1,r1,#16
        0x1fff333a:    438a        .C      BICS     r2,r2,r1
        0x1fff333c:    61e2        .a      STR      r2,[r4,#0x1c]
        0x1fff333e:    6862        bh      LDR      r2,[r4,#4]
        0x1fff3340:    438a        .C      BICS     r2,r2,r1
        0x1fff3342:    6062        b`      STR      r2,[r4,#4]
        0x1fff3344:    62e8        .b      STR      r0,[r5,#0x2c]
        0x1fff3346:    bdf8        ..      POP      {r3-r7,pc}
        0x1fff3348:    1c76        v.      ADDS     r6,r6,#1
        0x1fff334a:    b2f6        ..      UXTB     r6,r6
        0x1fff334c:    2e05        ..      CMP      r6,#5
        0x1fff334e:    d3d8        ..      BCC      0x1fff3302 ; check_96MXtal_by_rcTracking + 82
        0x1fff3350:    69e1        .i      LDR      r1,[r4,#0x1c]
        0x1fff3352:    2001        .       MOVS     r0,#1
        0x1fff3354:    0400        ..      LSLS     r0,r0,#16
        0x1fff3356:    4381        .C      BICS     r1,r1,r0
        0x1fff3358:    61e1        .a      STR      r1,[r4,#0x1c]
        0x1fff335a:    6861        ah      LDR      r1,[r4,#4]
        0x1fff335c:    4381        .C      BICS     r1,r1,r0
        0x1fff335e:    6061        a`      STR      r1,[r4,#4]
        0x1fff3360:    6b28        (k      LDR      r0,[r5,#0x30]
        0x1fff3362:    462e        .F      MOV      r6,r5
        0x1fff3364:    2805        .(      CMP      r0,#5
        0x1fff3366:    d307        ..      BCC      0x1fff3378 ; check_96MXtal_by_rcTracking + 200
        0x1fff3368:    f3bf8f4f    ..O.    DSB      
        0x1fff336c:    4913        .I      LDR      r1,[pc,#76] ; [0x1fff33bc] = 0xe000ed00
        0x1fff336e:    4812        .H      LDR      r0,[pc,#72] ; [0x1fff33b8] = 0x5fa0004
        0x1fff3370:    60c8        .`      STR      r0,[r1,#0xc]
        0x1fff3372:    f3bf8f4f    ..O.    DSB      
        0x1fff3376:    e7fe        ..      B        0x1fff3376 ; check_96MXtal_by_rcTracking + 198
        0x1fff3378:    6860        `h      LDR      r0,[r4,#4]
        0x1fff337a:    2180        .!      MOVS     r1,#0x80
        0x1fff337c:    4388        .C      BICS     r0,r0,r1
        0x1fff337e:    6060        ``      STR      r0,[r4,#4]
        0x1fff3380:    2003        .       MOVS     r0,#3
        0x1fff3382:    f7fefbe9    ....    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b58
        0x1fff3386:    69e0        .i      LDR      r0,[r4,#0x1c]
        0x1fff3388:    4038        8@      ANDS     r0,r0,r7
        0x1fff338a:    3028        (0      ADDS     r0,r0,#0x28
        0x1fff338c:    61e0        .a      STR      r0,[r4,#0x1c]
        0x1fff338e:    2003        .       MOVS     r0,#3
        0x1fff3390:    f7fefbe2    ....    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b58
        0x1fff3394:    6a60        `j      LDR      r0,[r4,#0x24]
        0x1fff3396:    03c0        ..      LSLS     r0,r0,#15
        0x1fff3398:    0bc0        ..      LSRS     r0,r0,#15
        0x1fff339a:    62b0        .b      STR      r0,[r6,#0x28]
        0x1fff339c:    69e1        .i      LDR      r1,[r4,#0x1c]
        0x1fff339e:    2008        .       MOVS     r0,#8
        0x1fff33a0:    4381        .C      BICS     r1,r1,r0
        0x1fff33a2:    61e1        .a      STR      r1,[r4,#0x1c]
        0x1fff33a4:    e79d        ..      B        0x1fff32e2 ; check_96MXtal_by_rcTracking + 50
    $d
        0x1fff33a6:    0000        ..      DCW    0
        0x1fff33a8:    4000f0c0    ...@    DCD    1073803456
        0x1fff33ac:    1fff6dcc    .m..    DCD    536833484
        0x1fff33b0:    fffefe00    ....    DCD    4294901248
        0x1fff33b4:    00010028    (...    DCD    65576
        0x1fff33b8:    05fa0004    ....    DCD    100270084
        0x1fff33bc:    e000ed00    ....    DCD    3758157056
    $t
    i.clk_init
    clk_init
        0x1fff33c0:    b5fe        ..      PUSH     {r1-r7,lr}
        0x1fff33c2:    4604        .F      MOV      r4,r0
        0x1fff33c4:    4819        .H      LDR      r0,[pc,#100] ; [0x1fff342c] = 0x4000f000
        0x1fff33c6:    6bc1        .k      LDR      r1,[r0,#0x3c]
        0x1fff33c8:    4d19        .M      LDR      r5,[pc,#100] ; [0x1fff3430] = 0x17be0
        0x1fff33ca:    0749        I.      LSLS     r1,r1,#29
        0x1fff33cc:    0ec9        ..      LSRS     r1,r1,#27
        0x1fff33ce:    5869        iX      LDR      r1,[r5,r1]
        0x1fff33d0:    4a16        .J      LDR      r2,[pc,#88] ; [0x1fff342c] = 0x4000f000
        0x1fff33d2:    0bc9        ..      LSRS     r1,r1,#15
        0x1fff33d4:    3240        @2      ADDS     r2,r2,#0x40
        0x1fff33d6:    9100        ..      STR      r1,[sp,#0]
        0x1fff33d8:    6811        .h      LDR      r1,[r2,#0]
        0x1fff33da:    0349        I.      LSLS     r1,r1,#13
        0x1fff33dc:    d404        ..      BMI      0x1fff33e8 ; clk_init + 40
        0x1fff33de:    6811        .h      LDR      r1,[r2,#0]
        0x1fff33e0:    2301        .#      MOVS     r3,#1
        0x1fff33e2:    049b        ..      LSLS     r3,r3,#18
        0x1fff33e4:    4319        .C      ORRS     r1,r1,r3
        0x1fff33e6:    6011        .`      STR      r1,[r2,#0]
        0x1fff33e8:    6bc1        .k      LDR      r1,[r0,#0x3c]
        0x1fff33ea:    2218        ."      MOVS     r2,#0x18
        0x1fff33ec:    4311        .C      ORRS     r1,r1,r2
        0x1fff33ee:    63c1        .c      STR      r1,[r0,#0x3c]
        0x1fff33f0:    6bc0        .k      LDR      r0,[r0,#0x3c]
        0x1fff33f2:    4f10        .O      LDR      r7,[pc,#64] ; [0x1fff3434] = 0x8c01
        0x1fff33f4:    0140        @.      LSLS     r0,r0,#5
        0x1fff33f6:    0f40        @.      LSRS     r0,r0,#29
        0x1fff33f8:    9001        ..      STR      r0,[sp,#4]
        0x1fff33fa:    47b8        .G      BLX      r7
        0x1fff33fc:    4606        .F      MOV      r6,r0
        0x1fff33fe:    4620         F      MOV      r0,r4
        0x1fff3400:    47b8        .G      BLX      r7
        0x1fff3402:    4306        .C      ORRS     r6,r6,r0
        0x1fff3404:    490c        .I      LDR      r1,[pc,#48] ; [0x1fff3438] = 0x8aa9
        0x1fff3406:    07f0        ..      LSLS     r0,r6,#31
        0x1fff3408:    0fc0        ..      LSRS     r0,r0,#31
        0x1fff340a:    4788        .G      BLX      r1
        0x1fff340c:    4603        .F      MOV      r3,r0
        0x1fff340e:    00a0        ..      LSLS     r0,r4,#2
        0x1fff3410:    490a        .I      LDR      r1,[pc,#40] ; [0x1fff343c] = 0x1fff0874
        0x1fff3412:    5828        (X      LDR      r0,[r5,r0]
        0x1fff3414:    6008        .`      STR      r0,[r1,#0]
        0x1fff3416:    9800        ..      LDR      r0,[sp,#0]
        0x1fff3418:    1e41        A.      SUBS     r1,r0,#1
        0x1fff341a:    9100        ..      STR      r1,[sp,#0]
        0x1fff341c:    d2fb        ..      BCS      0x1fff3416 ; clk_init + 86
        0x1fff341e:    4632        2F      MOV      r2,r6
        0x1fff3420:    4621        !F      MOV      r1,r4
        0x1fff3422:    9801        ..      LDR      r0,[sp,#4]
        0x1fff3424:    f7fffcb6    ....    BL       _clk_apply_setting1 ; 0x1fff2d94
        0x1fff3428:    2000        .       MOVS     r0,#0
        0x1fff342a:    bdfe        ..      POP      {r1-r7,pc}
    $d
        0x1fff342c:    4000f000    ...@    DCD    1073803264
        0x1fff3430:    00017be0    .{..    DCD    97248
        0x1fff3434:    00008c01    ....    DCD    35841
        0x1fff3438:    00008aa9    ....    DCD    35497
        0x1fff343c:    1fff0874    t...    DCD    536807540
    $t
    i.config_RTC1
    config_RTC1
        0x1fff3440:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff3442:    4606        .F      MOV      r6,r0
        0x1fff3444:    2001        .       MOVS     r0,#1
        0x1fff3446:    f7fefb87    ....    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b58
        0x1fff344a:    4d21        !M      LDR      r5,[pc,#132] ; [0x1fff34d0] = 0x1fff091c
        0x1fff344c:    4f21        !O      LDR      r7,[pc,#132] ; [0x1fff34d4] = 0x1fff6dcc
        0x1fff344e:    7828        (x      LDRB     r0,[r5,#0]
        0x1fff3450:    4c21        !L      LDR      r4,[pc,#132] ; [0x1fff34d8] = 0x1fff08e4
        0x1fff3452:    2800        .(      CMP      r0,#0
        0x1fff3454:    d016        ..      BEQ      0x1fff3484 ; config_RTC1 + 68
        0x1fff3456:    f7fefb8b    ....    BL       $Ven$TT$L$$read_LL_remainder_time ; 0x1fff1b70
        0x1fff345a:    6020         `      STR      r0,[r4,#0]
        0x1fff345c:    f001f84c    ..L.    BL       isTimer5Running ; 0x1fff44f8
        0x1fff3460:    2800        .(      CMP      r0,#0
        0x1fff3462:    d002        ..      BEQ      0x1fff346a ; config_RTC1 + 42
        0x1fff3464:    f002fca8    ....    BL       read_TIM5_remainder_timer ; 0x1fff5db8
        0x1fff3468:    6178        xa      STR      r0,[r7,#0x14]
        0x1fff346a:    491c        .I      LDR      r1,[pc,#112] ; [0x1fff34dc] = 0x4000f000
        0x1fff346c:    6a8b        .j      LDR      r3,[r1,#0x28]
        0x1fff346e:    481c        .H      LDR      r0,[pc,#112] ; [0x1fff34e0] = 0x1fff0a34
        0x1fff3470:    6003        .`      STR      r3,[r0,#0]
        0x1fff3472:    481c        .H      LDR      r0,[pc,#112] ; [0x1fff34e4] = 0x40001000
        0x1fff3474:    6ac7        .j      LDR      r7,[r0,#0x2c]
        0x1fff3476:    4a1c        .J      LDR      r2,[pc,#112] ; [0x1fff34e8] = 0x1fff0a18
        0x1fff3478:    6812        .h      LDR      r2,[r2,#0]
        0x1fff347a:    4297        .B      CMP      r7,r2
        0x1fff347c:    d205        ..      BCS      0x1fff348a ; config_RTC1 + 74
        0x1fff347e:    6ac0        .j      LDR      r0,[r0,#0x2c]
        0x1fff3480:    1a10        ..      SUBS     r0,r2,r0
        0x1fff3482:    e003        ..      B        0x1fff348c ; config_RTC1 + 76
        0x1fff3484:    68f8        .h      LDR      r0,[r7,#0xc]
        0x1fff3486:    6940        @i      LDR      r0,[r0,#0x14]
        0x1fff3488:    e7e7        ..      B        0x1fff345a ; config_RTC1 + 26
        0x1fff348a:    2000        .       MOVS     r0,#0
        0x1fff348c:    4a17        .J      LDR      r2,[pc,#92] ; [0x1fff34ec] = 0x1fff0a1c
        0x1fff348e:    6010        .`      STR      r0,[r2,#0]
        0x1fff3490:    1998        ..      ADDS     r0,r3,r6
        0x1fff3492:    62c8        .b      STR      r0,[r1,#0x2c]
        0x1fff3494:    6a48        Hj      LDR      r0,[r1,#0x24]
        0x1fff3496:    2229        )"      MOVS     r2,#0x29
        0x1fff3498:    03d2        ..      LSLS     r2,r2,#15
        0x1fff349a:    4310        .C      ORRS     r0,r0,r2
        0x1fff349c:    6248        Hb      STR      r0,[r1,#0x24]
        0x1fff349e:    7828        (x      LDRB     r0,[r5,#0]
        0x1fff34a0:    2800        .(      CMP      r0,#0
        0x1fff34a2:    d012        ..      BEQ      0x1fff34ca ; config_RTC1 + 138
        0x1fff34a4:    4812        .H      LDR      r0,[pc,#72] ; [0x1fff34f0] = 0x1fff0a4a
        0x1fff34a6:    7801        .x      LDRB     r1,[r0,#0]
        0x1fff34a8:    2902        .)      CMP      r1,#2
        0x1fff34aa:    d008        ..      BEQ      0x1fff34be ; config_RTC1 + 126
        0x1fff34ac:    7801        .x      LDRB     r1,[r0,#0]
        0x1fff34ae:    2901        .)      CMP      r1,#1
        0x1fff34b0:    d008        ..      BEQ      0x1fff34c4 ; config_RTC1 + 132
        0x1fff34b2:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff34b4:    2803        .(      CMP      r0,#3
        0x1fff34b6:    6820         h      LDR      r0,[r4,#0]
        0x1fff34b8:    d008        ..      BEQ      0x1fff34cc ; config_RTC1 + 140
        0x1fff34ba:    1ec0        ..      SUBS     r0,r0,#3
        0x1fff34bc:    e004        ..      B        0x1fff34c8 ; config_RTC1 + 136
        0x1fff34be:    6820         h      LDR      r0,[r4,#0]
        0x1fff34c0:    380f        .8      SUBS     r0,r0,#0xf
        0x1fff34c2:    e001        ..      B        0x1fff34c8 ; config_RTC1 + 136
        0x1fff34c4:    6820         h      LDR      r0,[r4,#0]
        0x1fff34c6:    3808        .8      SUBS     r0,r0,#8
        0x1fff34c8:    6020         `      STR      r0,[r4,#0]
        0x1fff34ca:    bdf8        ..      POP      {r3-r7,pc}
        0x1fff34cc:    1f40        @.      SUBS     r0,r0,#5
        0x1fff34ce:    e7fb        ..      B        0x1fff34c8 ; config_RTC1 + 136
    $d
        0x1fff34d0:    1fff091c    ....    DCD    536807708
        0x1fff34d4:    1fff6dcc    .m..    DCD    536833484
        0x1fff34d8:    1fff08e4    ....    DCD    536807652
        0x1fff34dc:    4000f000    ...@    DCD    1073803264
        0x1fff34e0:    1fff0a34    4...    DCD    536807988
        0x1fff34e4:    40001000    ...@    DCD    1073745920
        0x1fff34e8:    1fff0a18    ....    DCD    536807960
        0x1fff34ec:    1fff0a1c    ....    DCD    536807964
        0x1fff34f0:    1fff0a4a    J...    DCD    536808010
    $t
    i.cusum_advance_slave_rx_window
    cusum_advance_slave_rx_window
        0x1fff34f4:    b510        ..      PUSH     {r4,lr}
        0x1fff34f6:    481e        .H      LDR      r0,[pc,#120] ; [0x1fff3570] = 0x1fff0d30
        0x1fff34f8:    21a1        .!      MOVS     r1,#0xa1
        0x1fff34fa:    7880        .x      LDRB     r0,[r0,#2]
        0x1fff34fc:    0089        ..      LSLS     r1,r1,#2
        0x1fff34fe:    4348        HC      MULS     r0,r1,r0
        0x1fff3500:    491c        .I      LDR      r1,[pc,#112] ; [0x1fff3574] = 0x1fff0934
        0x1fff3502:    23a1        .#      MOVS     r3,#0xa1
        0x1fff3504:    6809        .h      LDR      r1,[r1,#0]
        0x1fff3506:    009b        ..      LSLS     r3,r3,#2
        0x1fff3508:    1844        D.      ADDS     r4,r0,r1
        0x1fff350a:    2191        .!      MOVS     r1,#0x91
        0x1fff350c:    0089        ..      LSLS     r1,r1,#2
        0x1fff350e:    590a        .Y      LDR      r2,[r1,r4]
        0x1fff3510:    4917        .I      LDR      r1,[pc,#92] ; [0x1fff3570] = 0x1fff0d30
        0x1fff3512:    2000        .       MOVS     r0,#0
        0x1fff3514:    7889        .x      LDRB     r1,[r1,#2]
        0x1fff3516:    4359        YC      MULS     r1,r3,r1
        0x1fff3518:    4b16        .K      LDR      r3,[pc,#88] ; [0x1fff3574] = 0x1fff0934
        0x1fff351a:    681b        .h      LDR      r3,[r3,#0]
        0x1fff351c:    18c9        ..      ADDS     r1,r1,r3
        0x1fff351e:    8ec9        ..      LDRH     r1,[r1,#0x36]
        0x1fff3520:    2a00        .*      CMP      r2,#0
        0x1fff3522:    d01e        ..      BEQ      0x1fff3562 ; cusum_advance_slave_rx_window + 110
        0x1fff3524:    4814        .H      LDR      r0,[pc,#80] ; [0x1fff3578] = 0x1fff6dcc
        0x1fff3526:    68c0        .h      LDR      r0,[r0,#0xc]
        0x1fff3528:    30ff        .0      ADDS     r0,r0,#0xff
        0x1fff352a:    3001        .0      ADDS     r0,#1
        0x1fff352c:    2a01        .*      CMP      r2,#1
        0x1fff352e:    d00c        ..      BEQ      0x1fff354a ; cusum_advance_slave_rx_window + 86
        0x1fff3530:    4b11        .K      LDR      r3,[pc,#68] ; [0x1fff3578] = 0x1fff6dcc
        0x1fff3532:    68db        .h      LDR      r3,[r3,#0xc]
        0x1fff3534:    33ff        .3      ADDS     r3,r3,#0xff
        0x1fff3536:    3381        .3      ADDS     r3,r3,#0x81
        0x1fff3538:    2a06        .*      CMP      r2,#6
        0x1fff353a:    d808        ..      BHI      0x1fff354e ; cusum_advance_slave_rx_window + 90
        0x1fff353c:    7964        dy      LDRB     r4,[r4,#5]
        0x1fff353e:    2c01        .,      CMP      r4,#1
        0x1fff3540:    d005        ..      BEQ      0x1fff354e ; cusum_advance_slave_rx_window + 90
        0x1fff3542:    4c0d        .L      LDR      r4,[pc,#52] ; [0x1fff3578] = 0x1fff6dcc
        0x1fff3544:    3452        R4      ADDS     r4,r4,#0x52
        0x1fff3546:    5d12        .]      LDRB     r2,[r2,r4]
        0x1fff3548:    e004        ..      B        0x1fff3554 ; cusum_advance_slave_rx_window + 96
        0x1fff354a:    6b00        .k      LDR      r0,[r0,#0x30]
        0x1fff354c:    e009        ..      B        0x1fff3562 ; cusum_advance_slave_rx_window + 110
        0x1fff354e:    4a0a        .J      LDR      r2,[pc,#40] ; [0x1fff3578] = 0x1fff6dcc
        0x1fff3550:    3254        T2      ADDS     r2,r2,#0x54
        0x1fff3552:    7912        .y      LDRB     r2,[r2,#4]
        0x1fff3554:    6d1b        .m      LDR      r3,[r3,#0x50]
        0x1fff3556:    6b00        .k      LDR      r0,[r0,#0x30]
        0x1fff3558:    435a        ZC      MULS     r2,r3,r2
        0x1fff355a:    0a0b        ..      LSRS     r3,r1,#8
        0x1fff355c:    1c5b        [.      ADDS     r3,r3,#1
        0x1fff355e:    435a        ZC      MULS     r2,r3,r2
        0x1fff3560:    1810        ..      ADDS     r0,r2,r0
        0x1fff3562:    4a06        .J      LDR      r2,[pc,#24] ; [0x1fff357c] = 0x753
        0x1fff3564:    08c9        ..      LSRS     r1,r1,#3
        0x1fff3566:    4351        QC      MULS     r1,r2,r1
        0x1fff3568:    4281        .B      CMP      r1,r0
        0x1fff356a:    d800        ..      BHI      0x1fff356e ; cusum_advance_slave_rx_window + 122
        0x1fff356c:    4608        .F      MOV      r0,r1
        0x1fff356e:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff3570:    1fff0d30    0...    DCD    536808752
        0x1fff3574:    1fff0934    4...    DCD    536807732
        0x1fff3578:    1fff6dcc    .m..    DCD    536833484
        0x1fff357c:    00000753    S...    DCD    1875
    $t
    i.dbg_printf
    dbg_printf
        0x1fff3580:    b40f        ..      PUSH     {r0-r3}
        0x1fff3582:    b510        ..      PUSH     {r4,lr}
        0x1fff3584:    aa03        ..      ADD      r2,sp,#0xc
        0x1fff3586:    4804        .H      LDR      r0,[pc,#16] ; [0x1fff3598] = 0x1fff3139
        0x1fff3588:    9902        ..      LDR      r1,[sp,#8]
        0x1fff358a:    f001fd65    ..e.    BL       log_vsprintf ; 0x1fff5058
        0x1fff358e:    bc10        ..      POP      {r4}
        0x1fff3590:    bc08        ..      POP      {r3}
        0x1fff3592:    b004        ..      ADD      sp,sp,#0x10
        0x1fff3594:    4718        .G      BX       r3
    $d
        0x1fff3596:    0000        ..      DCW    0
        0x1fff3598:    1fff3139    91..    DCD    536817977
    $t
    i.dbg_printf_init
    dbg_printf_init
        0x1fff359c:    b538        8.      PUSH     {r3-r5,lr}
        0x1fff359e:    4b03        .K      LDR      r3,[pc,#12] ; [0x1fff35ac] = 0x1fff6c04
        0x1fff35a0:    2400        .$      MOVS     r4,#0
        0x1fff35a2:    cb0f        ..      LDM      r3,{r0-r3}
        0x1fff35a4:    9400        ..      STR      r4,[sp,#0]
        0x1fff35a6:    f000ff0f    ....    BL       hal_uart_init ; 0x1fff43c8
        0x1fff35aa:    bd38        8.      POP      {r3-r5,pc}
    $d
        0x1fff35ac:    1fff6c04    .l..    DCD    536833028
    $t
    i.efuse_init
    efuse_init
        0x1fff35b0:    4903        .I      LDR      r1,[pc,#12] ; [0x1fff35c0] = 0x4000f040
        0x1fff35b2:    2000        .       MOVS     r0,#0
        0x1fff35b4:    6148        Ha      STR      r0,[r1,#0x14]
        0x1fff35b6:    4903        .I      LDR      r1,[pc,#12] ; [0x1fff35c4] = 0x4000f140
        0x1fff35b8:    6008        .`      STR      r0,[r1,#0]
        0x1fff35ba:    6048        H`      STR      r0,[r1,#4]
        0x1fff35bc:    4770        pG      BX       lr
    $d
        0x1fff35be:    0000        ..      DCW    0
        0x1fff35c0:    4000f040    @..@    DCD    1073803328
        0x1fff35c4:    4000f140    @..@    DCD    1073803584
    $t
    i.enlarge_rx_timeout_1st
    enlarge_rx_timeout_1st
        0x1fff35c8:    b51c        ..      PUSH     {r2-r4,lr}
        0x1fff35ca:    4827        'H      LDR      r0,[pc,#156] ; [0x1fff3668] = 0x1fff0d30
        0x1fff35cc:    21a1        .!      MOVS     r1,#0xa1
        0x1fff35ce:    7880        .x      LDRB     r0,[r0,#2]
        0x1fff35d0:    0089        ..      LSLS     r1,r1,#2
        0x1fff35d2:    4348        HC      MULS     r0,r1,r0
        0x1fff35d4:    4925        %I      LDR      r1,[pc,#148] ; [0x1fff366c] = 0x1fff0934
        0x1fff35d6:    6809        .h      LDR      r1,[r1,#0]
        0x1fff35d8:    1844        D.      ADDS     r4,r0,r1
        0x1fff35da:    4825        %H      LDR      r0,[pc,#148] ; [0x1fff3670] = 0x40031000
        0x1fff35dc:    6a40        @j      LDR      r0,[r0,#0x24]
        0x1fff35de:    b280        ..      UXTH     r0,r0
        0x1fff35e0:    9000        ..      STR      r0,[sp,#0]
        0x1fff35e2:    2091        .       MOVS     r0,#0x91
        0x1fff35e4:    0080        ..      LSLS     r0,r0,#2
        0x1fff35e6:    5901        .Y      LDR      r1,[r0,r4]
        0x1fff35e8:    2900        .)      CMP      r1,#0
        0x1fff35ea:    d00f        ..      BEQ      0x1fff360c ; enlarge_rx_timeout_1st + 68
        0x1fff35ec:    4821        !H      LDR      r0,[pc,#132] ; [0x1fff3674] = 0x1fff6dcc
        0x1fff35ee:    68c0        .h      LDR      r0,[r0,#0xc]
        0x1fff35f0:    30ff        .0      ADDS     r0,r0,#0xff
        0x1fff35f2:    3001        .0      ADDS     r0,#1
        0x1fff35f4:    2901        .)      CMP      r1,#1
        0x1fff35f6:    d00e        ..      BEQ      0x1fff3616 ; enlarge_rx_timeout_1st + 78
        0x1fff35f8:    4a1e        .J      LDR      r2,[pc,#120] ; [0x1fff3674] = 0x1fff6dcc
        0x1fff35fa:    68d2        .h      LDR      r2,[r2,#0xc]
        0x1fff35fc:    32ff        .2      ADDS     r2,r2,#0xff
        0x1fff35fe:    3281        .2      ADDS     r2,r2,#0x81
        0x1fff3600:    2906        .)      CMP      r1,#6
        0x1fff3602:    d80a        ..      BHI      0x1fff361a ; enlarge_rx_timeout_1st + 82
        0x1fff3604:    4b1b        .K      LDR      r3,[pc,#108] ; [0x1fff3674] = 0x1fff6dcc
        0x1fff3606:    3352        R3      ADDS     r3,r3,#0x52
        0x1fff3608:    5cc9        .\      LDRB     r1,[r1,r3]
        0x1fff360a:    e009        ..      B        0x1fff3620 ; enlarge_rx_timeout_1st + 88
        0x1fff360c:    8c60        `.      LDRH     r0,[r4,#0x22]
        0x1fff360e:    8ee1        ..      LDRH     r1,[r4,#0x36]
        0x1fff3610:    4348        HC      MULS     r0,r1,r0
        0x1fff3612:    1040        @.      ASRS     r0,r0,#1
        0x1fff3614:    e00d        ..      B        0x1fff3632 ; enlarge_rx_timeout_1st + 106
        0x1fff3616:    6b00        .k      LDR      r0,[r0,#0x30]
        0x1fff3618:    e00a        ..      B        0x1fff3630 ; enlarge_rx_timeout_1st + 104
        0x1fff361a:    4916        .I      LDR      r1,[pc,#88] ; [0x1fff3674] = 0x1fff6dcc
        0x1fff361c:    3154        T1      ADDS     r1,r1,#0x54
        0x1fff361e:    7909        .y      LDRB     r1,[r1,#4]
        0x1fff3620:    6d12        .m      LDR      r2,[r2,#0x50]
        0x1fff3622:    6b00        .k      LDR      r0,[r0,#0x30]
        0x1fff3624:    4351        QC      MULS     r1,r2,r1
        0x1fff3626:    8ee2        ..      LDRH     r2,[r4,#0x36]
        0x1fff3628:    0a12        ..      LSRS     r2,r2,#8
        0x1fff362a:    1c52        R.      ADDS     r2,r2,#1
        0x1fff362c:    4351        QC      MULS     r1,r2,r1
        0x1fff362e:    1808        ..      ADDS     r0,r1,r0
        0x1fff3630:    0040        @.      LSLS     r0,r0,#1
        0x1fff3632:    9900        ..      LDR      r1,[sp,#0]
        0x1fff3634:    1840        @.      ADDS     r0,r0,r1
        0x1fff3636:    9000        ..      STR      r0,[sp,#0]
        0x1fff3638:    f7ffff5c    ..\.    BL       cusum_advance_slave_rx_window ; 0x1fff34f4
        0x1fff363c:    9001        ..      STR      r0,[sp,#4]
        0x1fff363e:    9901        ..      LDR      r1,[sp,#4]
        0x1fff3640:    9800        ..      LDR      r0,[sp,#0]
        0x1fff3642:    4b0d        .K      LDR      r3,[pc,#52] ; [0x1fff3678] = 0x753
        0x1fff3644:    1a42        B.      SUBS     r2,r0,r1
        0x1fff3646:    69e0        .i      LDR      r0,[r4,#0x1c]
        0x1fff3648:    08c1        ..      LSRS     r1,r0,#3
        0x1fff364a:    4359        YC      MULS     r1,r3,r1
        0x1fff364c:    428a        .B      CMP      r2,r1
        0x1fff364e:    d801        ..      BHI      0x1fff3654 ; enlarge_rx_timeout_1st + 140
        0x1fff3650:    9800        ..      LDR      r0,[sp,#0]
        0x1fff3652:    e005        ..      B        0x1fff3660 ; enlarge_rx_timeout_1st + 152
        0x1fff3654:    4909        .I      LDR      r1,[pc,#36] ; [0x1fff367c] = 0x271
        0x1fff3656:    0840        @.      LSRS     r0,r0,#1
        0x1fff3658:    4348        HC      MULS     r0,r1,r0
        0x1fff365a:    9901        ..      LDR      r1,[sp,#4]
        0x1fff365c:    1840        @.      ADDS     r0,r0,r1
        0x1fff365e:    9000        ..      STR      r0,[sp,#0]
        0x1fff3660:    f7fefa8c    ....    BL       $Ven$TT$L$$ll_hw_set_rx_timeout_1st ; 0x1fff1b7c
        0x1fff3664:    bd1c        ..      POP      {r2-r4,pc}
    $d
        0x1fff3666:    0000        ..      DCW    0
        0x1fff3668:    1fff0d30    0...    DCD    536808752
        0x1fff366c:    1fff0934    4...    DCD    536807732
        0x1fff3670:    40031000    ...@    DCD    1073942528
        0x1fff3674:    1fff6dcc    .m..    DCD    536833484
        0x1fff3678:    00000753    S...    DCD    1875
        0x1fff367c:    00000271    q...    DCD    625
    $t
    i.enterSleepProcess1
    enterSleepProcess1
        0x1fff3680:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff3682:    4c0d        .L      LDR      r4,[pc,#52] ; [0x1fff36b8] = 0x1fff6dcc
        0x1fff3684:    4605        .F      MOV      r5,r0
        0x1fff3686:    68e0        .h      LDR      r0,[r4,#0xc]
        0x1fff3688:    8d80        ..      LDRH     r0,[r0,#0x2c]
        0x1fff368a:    0540        @.      LSLS     r0,r0,#21
        0x1fff368c:    d505        ..      BPL      0x1fff369a ; enterSleepProcess1 + 26
        0x1fff368e:    480b        .H      LDR      r0,[pc,#44] ; [0x1fff36bc] = 0x4000f040
        0x1fff3690:    6a40        @j      LDR      r0,[r0,#0x24]
        0x1fff3692:    03c0        ..      LSLS     r0,r0,#15
        0x1fff3694:    0bc0        ..      LSRS     r0,r0,#15
        0x1fff3696:    f002fb63    ..c.    BL       rc32k_cap_cal ; 0x1fff5d60
        0x1fff369a:    2000        .       MOVS     r0,#0
        0x1fff369c:    f001ff66    ..f.    BL       osal_search_active_task ; 0x1fff556c
        0x1fff36a0:    2800        .(      CMP      r0,#0
        0x1fff36a2:    d008        ..      BEQ      0x1fff36b6 ; enterSleepProcess1 + 54
        0x1fff36a4:    4806        .H      LDR      r0,[pc,#24] ; [0x1fff36c0] = 0x1fff8000
        0x1fff36a6:    6801        .h      LDR      r1,[r0,#0]
        0x1fff36a8:    68e0        .h      LDR      r0,[r4,#0xc]
        0x1fff36aa:    30ff        .0      ADDS     r0,r0,#0xff
        0x1fff36ac:    3081        .0      ADDS     r0,r0,#0x81
        0x1fff36ae:    6541        Ae      STR      r1,[r0,#0x54]
        0x1fff36b0:    4628        (F      MOV      r0,r5
        0x1fff36b2:    f7fefa69    ..i.    BL       $Ven$TT$L$$enterSleepProcess0 ; 0x1fff1b88
        0x1fff36b6:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x1fff36b8:    1fff6dcc    .m..    DCD    536833484
        0x1fff36bc:    4000f040    @..@    DCD    1073803328
        0x1fff36c0:    1fff8000    ....    DCD    536838144
    $t
    i.finidv
    finidv
        0x1fff36c4:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff36c6:    b08a        ..      SUB      sp,sp,#0x28
        0x1fff36c8:    2400        .$      MOVS     r4,#0
        0x1fff36ca:    4d1e        .M      LDR      r5,[pc,#120] ; [0x1fff3744] = 0x1fff6e35
        0x1fff36cc:    9404        ..      STR      r4,[sp,#0x10]
        0x1fff36ce:    9405        ..      STR      r4,[sp,#0x14]
        0x1fff36d0:    7828        (x      LDRB     r0,[r5,#0]
        0x1fff36d2:    2801        .(      CMP      r0,#1
        0x1fff36d4:    d006        ..      BEQ      0x1fff36e4 ; finidv + 32
        0x1fff36d6:    a904        ..      ADD      r1,sp,#0x10
        0x1fff36d8:    2001        .       MOVS     r0,#1
        0x1fff36da:    f7fefa13    ....    BL       $Ven$TT$L$$efuse_read ; 0x1fff1b04
        0x1fff36de:    2800        .(      CMP      r0,#0
        0x1fff36e0:    d002        ..      BEQ      0x1fff36e8 ; finidv + 36
        0x1fff36e2:    2000        .       MOVS     r0,#0
        0x1fff36e4:    b00a        ..      ADD      sp,sp,#0x28
        0x1fff36e6:    bd70        p.      POP      {r4-r6,pc}
        0x1fff36e8:    9804        ..      LDR      r0,[sp,#0x10]
        0x1fff36ea:    9000        ..      STR      r0,[sp,#0]
        0x1fff36ec:    9805        ..      LDR      r0,[sp,#0x14]
        0x1fff36ee:    9001        ..      STR      r0,[sp,#4]
        0x1fff36f0:    4815        .H      LDR      r0,[pc,#84] ; [0x1fff3748] = 0x11002900
        0x1fff36f2:    6881        .h      LDR      r1,[r0,#8]
        0x1fff36f4:    9102        ..      STR      r1,[sp,#8]
        0x1fff36f6:    68c0        .h      LDR      r0,[r0,#0xc]
        0x1fff36f8:    4913        .I      LDR      r1,[pc,#76] ; [0x1fff3748] = 0x11002900
        0x1fff36fa:    9003        ..      STR      r0,[sp,#0xc]
        0x1fff36fc:    aa06        ..      ADD      r2,sp,#0x18
        0x1fff36fe:    3110        .1      ADDS     r1,r1,#0x10
        0x1fff3700:    4668        hF      MOV      r0,sp
        0x1fff3702:    f7fefa47    ..G.    BL       $Ven$TT$L$$LL_ENC_AES128_Encrypt ; 0x1fff1b94
        0x1fff3706:    4e10        .N      LDR      r6,[pc,#64] ; [0x1fff3748] = 0x11002900
        0x1fff3708:    2210        ."      MOVS     r2,#0x10
        0x1fff370a:    3620         6      ADDS     r6,r6,#0x20
        0x1fff370c:    4631        1F      MOV      r1,r6
        0x1fff370e:    a806        ..      ADD      r0,sp,#0x18
        0x1fff3710:    f7fef9d4    ....    BL       $Ven$TT$L$$osal_memcmp ; 0x1fff1abc
        0x1fff3714:    2800        .(      CMP      r0,#0
        0x1fff3716:    d011        ..      BEQ      0x1fff373c ; finidv + 120
        0x1fff3718:    2001        .       MOVS     r0,#1
        0x1fff371a:    7028        (p      STRB     r0,[r5,#0]
        0x1fff371c:    4a0b        .J      LDR      r2,[pc,#44] ; [0x1fff374c] = 0x1fff7a44
        0x1fff371e:    4631        1F      MOV      r1,r6
        0x1fff3720:    4668        hF      MOV      r0,sp
        0x1fff3722:    f7fefa37    ..7.    BL       $Ven$TT$L$$LL_ENC_AES128_Encrypt ; 0x1fff1b94
        0x1fff3726:    9404        ..      STR      r4,[sp,#0x10]
        0x1fff3728:    2000        .       MOVS     r0,#0
        0x1fff372a:    4669        iF      MOV      r1,sp
        0x1fff372c:    9405        ..      STR      r4,[sp,#0x14]
        0x1fff372e:    0082        ..      LSLS     r2,r0,#2
        0x1fff3730:    1c40        @.      ADDS     r0,r0,#1
        0x1fff3732:    508c        .P      STR      r4,[r1,r2]
        0x1fff3734:    2804        .(      CMP      r0,#4
        0x1fff3736:    dbfa        ..      BLT      0x1fff372e ; finidv + 106
        0x1fff3738:    2001        .       MOVS     r0,#1
        0x1fff373a:    e7d3        ..      B        0x1fff36e4 ; finidv + 32
        0x1fff373c:    20ff        .       MOVS     r0,#0xff
        0x1fff373e:    7028        (p      STRB     r0,[r5,#0]
        0x1fff3740:    e7cf        ..      B        0x1fff36e2 ; finidv + 30
    $d
        0x1fff3742:    0000        ..      DCW    0
        0x1fff3744:    1fff6e35    5n..    DCD    536833589
        0x1fff3748:    11002900    .)..    DCD    285223168
        0x1fff374c:    1fff7a44    Dz..    DCD    536836676
    $t
    i.global_config_hclk_related
    global_config_hclk_related
        0x1fff3750:    b510        ..      PUSH     {r4,lr}
        0x1fff3752:    4822        "H      LDR      r0,[pc,#136] ; [0x1fff37dc] = 0x1fff0a4a
        0x1fff3754:    7803        .x      LDRB     r3,[r0,#0]
        0x1fff3756:    4922        "I      LDR      r1,[pc,#136] ; [0x1fff37e0] = 0x1fff6dcc
        0x1fff3758:    2210        ."      MOVS     r2,#0x10
        0x1fff375a:    68c9        .h      LDR      r1,[r1,#0xc]
        0x1fff375c:    2b02        .+      CMP      r3,#2
        0x1fff375e:    d008        ..      BEQ      0x1fff3772 ; global_config_hclk_related + 34
        0x1fff3760:    7803        .x      LDRB     r3,[r0,#0]
        0x1fff3762:    2b01        .+      CMP      r3,#1
        0x1fff3764:    d005        ..      BEQ      0x1fff3772 ; global_config_hclk_related + 34
        0x1fff3766:    7803        .x      LDRB     r3,[r0,#0]
        0x1fff3768:    2b03        .+      CMP      r3,#3
        0x1fff376a:    d002        ..      BEQ      0x1fff3772 ; global_config_hclk_related + 34
        0x1fff376c:    7803        .x      LDRB     r3,[r0,#0]
        0x1fff376e:    2b04        .+      CMP      r3,#4
        0x1fff3770:    d100        ..      BNE      0x1fff3774 ; global_config_hclk_related + 36
        0x1fff3772:    620a        .b      STR      r2,[r1,#0x20]
        0x1fff3774:    7804        .x      LDRB     r4,[r0,#0]
        0x1fff3776:    230e        .#      MOVS     r3,#0xe
        0x1fff3778:    2c02        .,      CMP      r4,#2
        0x1fff377a:    d009        ..      BEQ      0x1fff3790 ; global_config_hclk_related + 64
        0x1fff377c:    7804        .x      LDRB     r4,[r0,#0]
        0x1fff377e:    2c01        .,      CMP      r4,#1
        0x1fff3780:    d008        ..      BEQ      0x1fff3794 ; global_config_hclk_related + 68
        0x1fff3782:    7804        .x      LDRB     r4,[r0,#0]
        0x1fff3784:    2c03        .,      CMP      r4,#3
        0x1fff3786:    d007        ..      BEQ      0x1fff3798 ; global_config_hclk_related + 72
        0x1fff3788:    7804        .x      LDRB     r4,[r0,#0]
        0x1fff378a:    2c04        .,      CMP      r4,#4
        0x1fff378c:    d006        ..      BEQ      0x1fff379c ; global_config_hclk_related + 76
        0x1fff378e:    e007        ..      B        0x1fff37a0 ; global_config_hclk_related + 80
        0x1fff3790:    241b        .$      MOVS     r4,#0x1b
        0x1fff3792:    e004        ..      B        0x1fff379e ; global_config_hclk_related + 78
        0x1fff3794:    2412        .$      MOVS     r4,#0x12
        0x1fff3796:    e002        ..      B        0x1fff379e ; global_config_hclk_related + 78
        0x1fff3798:    604b        K`      STR      r3,[r1,#4]
        0x1fff379a:    e001        ..      B        0x1fff37a0 ; global_config_hclk_related + 80
        0x1fff379c:    240c        .$      MOVS     r4,#0xc
        0x1fff379e:    604c        L`      STR      r4,[r1,#4]
        0x1fff37a0:    7804        .x      LDRB     r4,[r0,#0]
        0x1fff37a2:    490f        .I      LDR      r1,[pc,#60] ; [0x1fff37e0] = 0x1fff6dcc
        0x1fff37a4:    68c9        .h      LDR      r1,[r1,#0xc]
        0x1fff37a6:    3180        .1      ADDS     r1,r1,#0x80
        0x1fff37a8:    2c02        .,      CMP      r4,#2
        0x1fff37aa:    d00b        ..      BEQ      0x1fff37c4 ; global_config_hclk_related + 116
        0x1fff37ac:    7804        .x      LDRB     r4,[r0,#0]
        0x1fff37ae:    2c01        .,      CMP      r4,#1
        0x1fff37b0:    d00c        ..      BEQ      0x1fff37cc ; global_config_hclk_related + 124
        0x1fff37b2:    7804        .x      LDRB     r4,[r0,#0]
        0x1fff37b4:    2c03        .,      CMP      r4,#3
        0x1fff37b6:    d00e        ..      BEQ      0x1fff37d6 ; global_config_hclk_related + 134
        0x1fff37b8:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff37ba:    2804        .(      CMP      r0,#4
        0x1fff37bc:    d101        ..      BNE      0x1fff37c2 ; global_config_hclk_related + 114
        0x1fff37be:    61cb        .a      STR      r3,[r1,#0x1c]
        0x1fff37c0:    620a        .b      STR      r2,[r1,#0x20]
        0x1fff37c2:    bd10        ..      POP      {r4,pc}
        0x1fff37c4:    201f        .       MOVS     r0,#0x1f
        0x1fff37c6:    61c8        .a      STR      r0,[r1,#0x1c]
        0x1fff37c8:    2021        !       MOVS     r0,#0x21
        0x1fff37ca:    e002        ..      B        0x1fff37d2 ; global_config_hclk_related + 130
        0x1fff37cc:    2014        .       MOVS     r0,#0x14
        0x1fff37ce:    61c8        .a      STR      r0,[r1,#0x1c]
        0x1fff37d0:    2018        .       MOVS     r0,#0x18
        0x1fff37d2:    6208        .b      STR      r0,[r1,#0x20]
        0x1fff37d4:    bd10        ..      POP      {r4,pc}
        0x1fff37d6:    2013        .       MOVS     r0,#0x13
        0x1fff37d8:    61ca        .a      STR      r2,[r1,#0x1c]
        0x1fff37da:    e7fa        ..      B        0x1fff37d2 ; global_config_hclk_related + 130
    $d
        0x1fff37dc:    1fff0a4a    J...    DCD    536808010
        0x1fff37e0:    1fff6dcc    .m..    DCD    536833484
    $t
    i.hal_GPIO_IRQHandler
    hal_GPIO_IRQHandler
    __tagsym$$used
        0x1fff37e4:    b510        ..      PUSH     {r4,lr}
        0x1fff37e6:    4804        .H      LDR      r0,[pc,#16] ; [0x1fff37f8] = 0x40008000
        0x1fff37e8:    6bc1        .k      LDR      r1,[r0,#0x3c]
        0x1fff37ea:    4a03        .J      LDR      r2,[pc,#12] ; [0x1fff37f8] = 0x40008000
        0x1fff37ec:    3240        @2      ADDS     r2,r2,#0x40
        0x1fff37ee:    6810        .h      LDR      r0,[r2,#0]
        0x1fff37f0:    60d0        .`      STR      r0,[r2,#0xc]
        0x1fff37f2:    f000fb9f    ....    BL       hal_gpioin_event ; 0x1fff3f34
        0x1fff37f6:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff37f8:    40008000    ...@    DCD    1073774592
    $t
    i.hal_TIMER5_IRQHandler
    hal_TIMER5_IRQHandler
    __tagsym$$used
        0x1fff37fc:    4806        .H      LDR      r0,[pc,#24] ; [0x1fff3818] = 0x40001040
        0x1fff37fe:    6a00        .j      LDR      r0,[r0,#0x20]
        0x1fff3800:    07c0        ..      LSLS     r0,r0,#31
        0x1fff3802:    d008        ..      BEQ      0x1fff3816 ; hal_TIMER5_IRQHandler + 26
        0x1fff3804:    4804        .H      LDR      r0,[pc,#16] ; [0x1fff3818] = 0x40001040
        0x1fff3806:    3010        .0      ADDS     r0,r0,#0x10
        0x1fff3808:    68c0        .h      LDR      r0,[r0,#0xc]
        0x1fff380a:    4804        .H      LDR      r0,[pc,#16] ; [0x1fff381c] = 0x1fff6d88
        0x1fff380c:    6801        .h      LDR      r1,[r0,#0]
        0x1fff380e:    2900        .)      CMP      r1,#0
        0x1fff3810:    d001        ..      BEQ      0x1fff3816 ; hal_TIMER5_IRQHandler + 26
        0x1fff3812:    2005        .       MOVS     r0,#5
        0x1fff3814:    4708        .G      BX       r1
        0x1fff3816:    4770        pG      BX       lr
    $d
        0x1fff3818:    40001040    @..@    DCD    1073745984
        0x1fff381c:    1fff6d88    .m..    DCD    536833416
    $t
    i.hal_TIMER6_IRQHandler
    hal_TIMER6_IRQHandler
    __tagsym$$used
        0x1fff3820:    4806        .H      LDR      r0,[pc,#24] ; [0x1fff383c] = 0x40001040
        0x1fff3822:    6b40        @k      LDR      r0,[r0,#0x34]
        0x1fff3824:    07c0        ..      LSLS     r0,r0,#31
        0x1fff3826:    d008        ..      BEQ      0x1fff383a ; hal_TIMER6_IRQHandler + 26
        0x1fff3828:    4804        .H      LDR      r0,[pc,#16] ; [0x1fff383c] = 0x40001040
        0x1fff382a:    3024        $0      ADDS     r0,r0,#0x24
        0x1fff382c:    68c0        .h      LDR      r0,[r0,#0xc]
        0x1fff382e:    4804        .H      LDR      r0,[pc,#16] ; [0x1fff3840] = 0x1fff6d88
        0x1fff3830:    6801        .h      LDR      r1,[r0,#0]
        0x1fff3832:    2900        .)      CMP      r1,#0
        0x1fff3834:    d001        ..      BEQ      0x1fff383a ; hal_TIMER6_IRQHandler + 26
        0x1fff3836:    2006        .       MOVS     r0,#6
        0x1fff3838:    4708        .G      BX       r1
        0x1fff383a:    4770        pG      BX       lr
    $d
        0x1fff383c:    40001040    @..@    DCD    1073745984
        0x1fff3840:    1fff6d88    .m..    DCD    536833416
    $t
    i.hal_UART0_IRQHandler
    hal_UART0_IRQHandler
    __tagsym$$used
        0x1fff3844:    b510        ..      PUSH     {r4,lr}
        0x1fff3846:    480f        .H      LDR      r0,[pc,#60] ; [0x1fff3884] = 0x40004000
        0x1fff3848:    6880        .h      LDR      r0,[r0,#8]
        0x1fff384a:    0700        ..      LSLS     r0,r0,#28
        0x1fff384c:    0f00        ..      LSRS     r0,r0,#28
        0x1fff384e:    2806        .(      CMP      r0,#6
        0x1fff3850:    d008        ..      BEQ      0x1fff3864 ; hal_UART0_IRQHandler + 32
        0x1fff3852:    dc08        ..      BGT      0x1fff3866 ; hal_UART0_IRQHandler + 34
        0x1fff3854:    2802        .(      CMP      r0,#2
        0x1fff3856:    d00c        ..      BEQ      0x1fff3872 ; hal_UART0_IRQHandler + 46
        0x1fff3858:    2804        .(      CMP      r0,#4
        0x1fff385a:    d103        ..      BNE      0x1fff3864 ; hal_UART0_IRQHandler + 32
        0x1fff385c:    2101        .!      MOVS     r1,#1
        0x1fff385e:    2000        .       MOVS     r0,#0
        0x1fff3860:    f7fefb30    ..0.    BL       irq_rx_handler ; 0x1fff1ec4
        0x1fff3864:    bd10        ..      POP      {r4,pc}
        0x1fff3866:    2807        .(      CMP      r0,#7
        0x1fff3868:    d007        ..      BEQ      0x1fff387a ; hal_UART0_IRQHandler + 54
        0x1fff386a:    280c        .(      CMP      r0,#0xc
        0x1fff386c:    d1fa        ..      BNE      0x1fff3864 ; hal_UART0_IRQHandler + 32
        0x1fff386e:    2102        .!      MOVS     r1,#2
        0x1fff3870:    e7f5        ..      B        0x1fff385e ; hal_UART0_IRQHandler + 26
        0x1fff3872:    2000        .       MOVS     r0,#0
        0x1fff3874:    f7fefb4c    ..L.    BL       irq_tx_empty_handler ; 0x1fff1f10
        0x1fff3878:    bd10        ..      POP      {r4,pc}
        0x1fff387a:    4802        .H      LDR      r0,[pc,#8] ; [0x1fff3884] = 0x40004000
        0x1fff387c:    3040        @0      ADDS     r0,r0,#0x40
        0x1fff387e:    6bc0        .k      LDR      r0,[r0,#0x3c]
        0x1fff3880:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff3882:    0000        ..      DCW    0
        0x1fff3884:    40004000    .@.@    DCD    1073758208
    $t
    i.hal_UART1_IRQHandler
    hal_UART1_IRQHandler
    __tagsym$$used
        0x1fff3888:    b510        ..      PUSH     {r4,lr}
        0x1fff388a:    480f        .H      LDR      r0,[pc,#60] ; [0x1fff38c8] = 0x40009000
        0x1fff388c:    6880        .h      LDR      r0,[r0,#8]
        0x1fff388e:    0700        ..      LSLS     r0,r0,#28
        0x1fff3890:    0f00        ..      LSRS     r0,r0,#28
        0x1fff3892:    2806        .(      CMP      r0,#6
        0x1fff3894:    d008        ..      BEQ      0x1fff38a8 ; hal_UART1_IRQHandler + 32
        0x1fff3896:    dc08        ..      BGT      0x1fff38aa ; hal_UART1_IRQHandler + 34
        0x1fff3898:    2802        .(      CMP      r0,#2
        0x1fff389a:    d00c        ..      BEQ      0x1fff38b6 ; hal_UART1_IRQHandler + 46
        0x1fff389c:    2804        .(      CMP      r0,#4
        0x1fff389e:    d103        ..      BNE      0x1fff38a8 ; hal_UART1_IRQHandler + 32
        0x1fff38a0:    2101        .!      MOVS     r1,#1
        0x1fff38a2:    2001        .       MOVS     r0,#1
        0x1fff38a4:    f7fefb0e    ....    BL       irq_rx_handler ; 0x1fff1ec4
        0x1fff38a8:    bd10        ..      POP      {r4,pc}
        0x1fff38aa:    2807        .(      CMP      r0,#7
        0x1fff38ac:    d007        ..      BEQ      0x1fff38be ; hal_UART1_IRQHandler + 54
        0x1fff38ae:    280c        .(      CMP      r0,#0xc
        0x1fff38b0:    d1fa        ..      BNE      0x1fff38a8 ; hal_UART1_IRQHandler + 32
        0x1fff38b2:    2102        .!      MOVS     r1,#2
        0x1fff38b4:    e7f5        ..      B        0x1fff38a2 ; hal_UART1_IRQHandler + 26
        0x1fff38b6:    2001        .       MOVS     r0,#1
        0x1fff38b8:    f7fefb2a    ..*.    BL       irq_tx_empty_handler ; 0x1fff1f10
        0x1fff38bc:    bd10        ..      POP      {r4,pc}
        0x1fff38be:    4802        .H      LDR      r0,[pc,#8] ; [0x1fff38c8] = 0x40009000
        0x1fff38c0:    3040        @0      ADDS     r0,r0,#0x40
        0x1fff38c2:    6bc0        .k      LDR      r0,[r0,#0x3c]
        0x1fff38c4:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff38c6:    0000        ..      DCW    0
        0x1fff38c8:    40009000    ...@    DCD    1073778688
    $t
    i.hal_cache_tag_flush
    hal_cache_tag_flush
        0x1fff38cc:    b538        8.      PUSH     {r3-r5,lr}
        0x1fff38ce:    f7fef817    ....    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff1900
        0x1fff38d2:    2201        ."      MOVS     r2,#1
        0x1fff38d4:    0792        ..      LSLS     r2,r2,#30
        0x1fff38d6:    6a93        .j      LDR      r3,[r2,#0x28]
        0x1fff38d8:    2408        .$      MOVS     r4,#8
        0x1fff38da:    9400        ..      STR      r4,[sp,#0]
        0x1fff38dc:    2b00        .+      CMP      r3,#0
        0x1fff38de:    d101        ..      BNE      0x1fff38e4 ; hal_cache_tag_flush + 24
        0x1fff38e0:    2001        .       MOVS     r0,#1
        0x1fff38e2:    6290        .b      STR      r0,[r2,#0x28]
        0x1fff38e4:    480a        .H      LDR      r0,[pc,#40] ; [0x1fff3910] = 0x4000c000
        0x1fff38e6:    2102        .!      MOVS     r1,#2
        0x1fff38e8:    6001        .`      STR      r1,[r0,#0]
        0x1fff38ea:    9900        ..      LDR      r1,[sp,#0]
        0x1fff38ec:    1e4d        M.      SUBS     r5,r1,#1
        0x1fff38ee:    9500        ..      STR      r5,[sp,#0]
        0x1fff38f0:    d2fb        ..      BCS      0x1fff38ea ; hal_cache_tag_flush + 30
        0x1fff38f2:    2103        .!      MOVS     r1,#3
        0x1fff38f4:    6001        .`      STR      r1,[r0,#0]
        0x1fff38f6:    9400        ..      STR      r4,[sp,#0]
        0x1fff38f8:    1e64        d.      SUBS     r4,r4,#1
        0x1fff38fa:    9400        ..      STR      r4,[sp,#0]
        0x1fff38fc:    d2fc        ..      BCS      0x1fff38f8 ; hal_cache_tag_flush + 44
        0x1fff38fe:    2100        .!      MOVS     r1,#0
        0x1fff3900:    6001        .`      STR      r1,[r0,#0]
        0x1fff3902:    2b00        .+      CMP      r3,#0
        0x1fff3904:    d100        ..      BNE      0x1fff3908 ; hal_cache_tag_flush + 60
        0x1fff3906:    6291        .b      STR      r1,[r2,#0x28]
        0x1fff3908:    f7fef806    ....    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff1918
        0x1fff390c:    bd38        8.      POP      {r3-r5,pc}
    $d
        0x1fff390e:    0000        ..      DCW    0
        0x1fff3910:    4000c000    ...@    DCD    1073790976
    $t
    i.hal_clk_gate_disable
    hal_clk_gate_disable
        0x1fff3914:    2101        .!      MOVS     r1,#1
        0x1fff3916:    0789        ..      LSLS     r1,r1,#30
        0x1fff3918:    2201        ."      MOVS     r2,#1
        0x1fff391a:    2820         (      CMP      r0,#0x20
        0x1fff391c:    d204        ..      BCS      0x1fff3928 ; hal_clk_gate_disable + 20
        0x1fff391e:    688b        .h      LDR      r3,[r1,#8]
        0x1fff3920:    4082        .@      LSLS     r2,r2,r0
        0x1fff3922:    4393        .C      BICS     r3,r3,r2
        0x1fff3924:    608b        .`      STR      r3,[r1,#8]
        0x1fff3926:    4770        pG      BX       lr
        0x1fff3928:    2840        @(      CMP      r0,#0x40
        0x1fff392a:    d205        ..      BCS      0x1fff3938 ; hal_clk_gate_disable + 36
        0x1fff392c:    694b        Ki      LDR      r3,[r1,#0x14]
        0x1fff392e:    3820         8      SUBS     r0,r0,#0x20
        0x1fff3930:    4082        .@      LSLS     r2,r2,r0
        0x1fff3932:    4393        .C      BICS     r3,r3,r2
        0x1fff3934:    614b        Ka      STR      r3,[r1,#0x14]
        0x1fff3936:    4770        pG      BX       lr
        0x1fff3938:    2860        `(      CMP      r0,#0x60
        0x1fff393a:    d2fc        ..      BCS      0x1fff3936 ; hal_clk_gate_disable + 34
        0x1fff393c:    6a0b        .j      LDR      r3,[r1,#0x20]
        0x1fff393e:    3840        @8      SUBS     r0,r0,#0x40
        0x1fff3940:    4082        .@      LSLS     r2,r2,r0
        0x1fff3942:    4393        .C      BICS     r3,r3,r2
        0x1fff3944:    620b        .b      STR      r3,[r1,#0x20]
        0x1fff3946:    4770        pG      BX       lr
    i.hal_clk_gate_enable
    hal_clk_gate_enable
        0x1fff3948:    2201        ."      MOVS     r2,#1
        0x1fff394a:    0792        ..      LSLS     r2,r2,#30
        0x1fff394c:    2101        .!      MOVS     r1,#1
        0x1fff394e:    2820         (      CMP      r0,#0x20
        0x1fff3950:    d204        ..      BCS      0x1fff395c ; hal_clk_gate_enable + 20
        0x1fff3952:    6893        .h      LDR      r3,[r2,#8]
        0x1fff3954:    4081        .@      LSLS     r1,r1,r0
        0x1fff3956:    430b        .C      ORRS     r3,r3,r1
        0x1fff3958:    6093        .`      STR      r3,[r2,#8]
        0x1fff395a:    4770        pG      BX       lr
        0x1fff395c:    2840        @(      CMP      r0,#0x40
        0x1fff395e:    d205        ..      BCS      0x1fff396c ; hal_clk_gate_enable + 36
        0x1fff3960:    6953        Si      LDR      r3,[r2,#0x14]
        0x1fff3962:    3820         8      SUBS     r0,r0,#0x20
        0x1fff3964:    4081        .@      LSLS     r1,r1,r0
        0x1fff3966:    430b        .C      ORRS     r3,r3,r1
        0x1fff3968:    6153        Sa      STR      r3,[r2,#0x14]
        0x1fff396a:    4770        pG      BX       lr
        0x1fff396c:    2860        `(      CMP      r0,#0x60
        0x1fff396e:    d2fc        ..      BCS      0x1fff396a ; hal_clk_gate_enable + 34
        0x1fff3970:    6a13        .j      LDR      r3,[r2,#0x20]
        0x1fff3972:    3840        @8      SUBS     r0,r0,#0x40
        0x1fff3974:    4081        .@      LSLS     r1,r1,r0
        0x1fff3976:    430b        .C      ORRS     r3,r3,r1
        0x1fff3978:    6213        .b      STR      r3,[r2,#0x20]
        0x1fff397a:    4770        pG      BX       lr
    i.hal_clk_reset
    hal_clk_reset
        0x1fff397c:    2101        .!      MOVS     r1,#1
        0x1fff397e:    b510        ..      PUSH     {r4,lr}
        0x1fff3980:    0789        ..      LSLS     r1,r1,#30
        0x1fff3982:    2201        ."      MOVS     r2,#1
        0x1fff3984:    2820         (      CMP      r0,#0x20
        0x1fff3986:    d213        ..      BCS      0x1fff39b0 ; hal_clk_reset + 52
        0x1fff3988:    4603        .F      MOV      r3,r0
        0x1fff398a:    3b15        .;      SUBS     r3,r3,#0x15
        0x1fff398c:    2b01        .+      CMP      r3,#1
        0x1fff398e:    d807        ..      BHI      0x1fff39a0 ; hal_clk_reset + 36
        0x1fff3990:    680a        .h      LDR      r2,[r1,#0]
        0x1fff3992:    2020                MOVS     r0,#0x20
        0x1fff3994:    4382        .C      BICS     r2,r2,r0
        0x1fff3996:    600a        .`      STR      r2,[r1,#0]
        0x1fff3998:    680a        .h      LDR      r2,[r1,#0]
        0x1fff399a:    4302        .C      ORRS     r2,r2,r0
        0x1fff399c:    600a        .`      STR      r2,[r1,#0]
        0x1fff399e:    bd10        ..      POP      {r4,pc}
        0x1fff39a0:    680b        .h      LDR      r3,[r1,#0]
        0x1fff39a2:    4082        .@      LSLS     r2,r2,r0
        0x1fff39a4:    4393        .C      BICS     r3,r3,r2
        0x1fff39a6:    600b        .`      STR      r3,[r1,#0]
        0x1fff39a8:    6808        .h      LDR      r0,[r1,#0]
        0x1fff39aa:    4310        .C      ORRS     r0,r0,r2
        0x1fff39ac:    6008        .`      STR      r0,[r1,#0]
        0x1fff39ae:    bd10        ..      POP      {r4,pc}
        0x1fff39b0:    2840        @(      CMP      r0,#0x40
        0x1fff39b2:    d214        ..      BCS      0x1fff39de ; hal_clk_reset + 98
        0x1fff39b4:    4603        .F      MOV      r3,r0
        0x1fff39b6:    3b35        5;      SUBS     r3,r3,#0x35
        0x1fff39b8:    2b03        .+      CMP      r3,#3
        0x1fff39ba:    d807        ..      BHI      0x1fff39cc ; hal_clk_reset + 80
        0x1fff39bc:    68ca        .h      LDR      r2,[r1,#0xc]
        0x1fff39be:    2010        .       MOVS     r0,#0x10
        0x1fff39c0:    4382        .C      BICS     r2,r2,r0
        0x1fff39c2:    60ca        .`      STR      r2,[r1,#0xc]
        0x1fff39c4:    68ca        .h      LDR      r2,[r1,#0xc]
        0x1fff39c6:    4302        .C      ORRS     r2,r2,r0
        0x1fff39c8:    60ca        .`      STR      r2,[r1,#0xc]
        0x1fff39ca:    bd10        ..      POP      {r4,pc}
        0x1fff39cc:    68cb        .h      LDR      r3,[r1,#0xc]
        0x1fff39ce:    3820         8      SUBS     r0,r0,#0x20
        0x1fff39d0:    4082        .@      LSLS     r2,r2,r0
        0x1fff39d2:    4393        .C      BICS     r3,r3,r2
        0x1fff39d4:    60cb        .`      STR      r3,[r1,#0xc]
        0x1fff39d6:    68c8        .h      LDR      r0,[r1,#0xc]
        0x1fff39d8:    4310        .C      ORRS     r0,r0,r2
        0x1fff39da:    60c8        .`      STR      r0,[r1,#0xc]
        0x1fff39dc:    bd10        ..      POP      {r4,pc}
        0x1fff39de:    2860        `(      CMP      r0,#0x60
        0x1fff39e0:    d2fc        ..      BCS      0x1fff39dc ; hal_clk_reset + 96
        0x1fff39e2:    6a4b        Kj      LDR      r3,[r1,#0x24]
        0x1fff39e4:    2442        B$      MOVS     r4,#0x42
        0x1fff39e6:    1a20         .      SUBS     r0,r4,r0
        0x1fff39e8:    4082        .@      LSLS     r2,r2,r0
        0x1fff39ea:    4393        .C      BICS     r3,r3,r2
        0x1fff39ec:    624b        Kb      STR      r3,[r1,#0x24]
        0x1fff39ee:    6a48        Hj      LDR      r0,[r1,#0x24]
        0x1fff39f0:    4310        .C      ORRS     r0,r0,r2
        0x1fff39f2:    6248        Hb      STR      r0,[r1,#0x24]
        0x1fff39f4:    bd10        ..      POP      {r4,pc}
        0x1fff39f6:    0000        ..      MOVS     r0,r0
    i.hal_gpio_cfg_analog_io
    hal_gpio_cfg_analog_io
        0x1fff39f8:    b530        0.      PUSH     {r4,r5,lr}
        0x1fff39fa:    1fc2        ..      SUBS     r2,r0,#7
        0x1fff39fc:    2a0a        .*      CMP      r2,#0xa
        0x1fff39fe:    d301        ..      BCC      0x1fff3a04 ; hal_gpio_cfg_analog_io + 12
        0x1fff3a00:    2006        .       MOVS     r0,#6
        0x1fff3a02:    bd30        0.      POP      {r4,r5,pc}
        0x1fff3a04:    2816        .(      CMP      r0,#0x16
        0x1fff3a06:    d901        ..      BLS      0x1fff3a0c ; hal_gpio_cfg_analog_io + 20
        0x1fff3a08:    2005        .       MOVS     r0,#5
        0x1fff3a0a:    bd30        0.      POP      {r4,r5,pc}
        0x1fff3a0c:    2401        .$      MOVS     r4,#1
        0x1fff3a0e:    4d07        .M      LDR      r5,[pc,#28] ; [0x1fff3a2c] = 0x40003800
        0x1fff3a10:    4094        .@      LSLS     r4,r4,r2
        0x1fff3a12:    2900        .)      CMP      r1,#0
        0x1fff3a14:    d005        ..      BEQ      0x1fff3a22 ; hal_gpio_cfg_analog_io + 42
        0x1fff3a16:    2100        .!      MOVS     r1,#0
        0x1fff3a18:    f000f8d2    ....    BL       hal_gpio_pull_set ; 0x1fff3bc0
        0x1fff3a1c:    6828        (h      LDR      r0,[r5,#0]
        0x1fff3a1e:    4320         C      ORRS     r0,r0,r4
        0x1fff3a20:    e001        ..      B        0x1fff3a26 ; hal_gpio_cfg_analog_io + 46
        0x1fff3a22:    6828        (h      LDR      r0,[r5,#0]
        0x1fff3a24:    43a0        .C      BICS     r0,r0,r4
        0x1fff3a26:    6028        (`      STR      r0,[r5,#0]
        0x1fff3a28:    2000        .       MOVS     r0,#0
        0x1fff3a2a:    bd30        0.      POP      {r4,r5,pc}
    $d
        0x1fff3a2c:    40003800    .8.@    DCD    1073756160
    $t
    i.hal_gpio_fmux
    hal_gpio_fmux
        0x1fff3a30:    2816        .(      CMP      r0,#0x16
        0x1fff3a32:    d809        ..      BHI      0x1fff3a48 ; hal_gpio_fmux + 24
        0x1fff3a34:    4a05        .J      LDR      r2,[pc,#20] ; [0x1fff3a4c] = 0x40003800
        0x1fff3a36:    2301        .#      MOVS     r3,#1
        0x1fff3a38:    4083        .@      LSLS     r3,r3,r0
        0x1fff3a3a:    68d0        .h      LDR      r0,[r2,#0xc]
        0x1fff3a3c:    2900        .)      CMP      r1,#0
        0x1fff3a3e:    d001        ..      BEQ      0x1fff3a44 ; hal_gpio_fmux + 20
        0x1fff3a40:    4318        .C      ORRS     r0,r0,r3
        0x1fff3a42:    e000        ..      B        0x1fff3a46 ; hal_gpio_fmux + 22
        0x1fff3a44:    4398        .C      BICS     r0,r0,r3
        0x1fff3a46:    60d0        .`      STR      r0,[r2,#0xc]
        0x1fff3a48:    4770        pG      BX       lr
    $d
        0x1fff3a4a:    0000        ..      DCW    0
        0x1fff3a4c:    40003800    .8.@    DCD    1073756160
    $t
    i.hal_gpio_fmux_set
    hal_gpio_fmux_set
        0x1fff3a50:    b5f3        ..      PUSH     {r0,r1,r4-r7,lr}
        0x1fff3a52:    4606        .F      MOV      r6,r0
        0x1fff3a54:    28ff        .(      CMP      r0,#0xff
        0x1fff3a56:    d019        ..      BEQ      0x1fff3a8c ; hal_gpio_fmux_set + 60
        0x1fff3a58:    07b0        ..      LSLS     r0,r6,#30
        0x1fff3a5a:    0ec4        ..      LSRS     r4,r0,#27
        0x1fff3a5c:    08b7        ..      LSRS     r7,r6,#2
        0x1fff3a5e:    1d65        e.      ADDS     r5,r4,#5
        0x1fff3a60:    4630        0F      MOV      r0,r6
        0x1fff3a62:    f000fa0d    ....    BL       hal_gpioin_disable ; 0x1fff3e80
        0x1fff3a66:    480a        .H      LDR      r0,[pc,#40] ; [0x1fff3a90] = 0x40003800
        0x1fff3a68:    00b9        ..      LSLS     r1,r7,#2
        0x1fff3a6a:    1809        ..      ADDS     r1,r1,r0
        0x1fff3a6c:    6988        .i      LDR      r0,[r1,#0x18]
        0x1fff3a6e:    1b2b        +.      SUBS     r3,r5,r4
        0x1fff3a70:    2201        ."      MOVS     r2,#1
        0x1fff3a72:    1c5b        [.      ADDS     r3,r3,#1
        0x1fff3a74:    409a        .@      LSLS     r2,r2,r3
        0x1fff3a76:    1e52        R.      SUBS     r2,r2,#1
        0x1fff3a78:    40a2        .@      LSLS     r2,r2,r4
        0x1fff3a7a:    4390        .C      BICS     r0,r0,r2
        0x1fff3a7c:    9a01        ..      LDR      r2,[sp,#4]
        0x1fff3a7e:    40a2        .@      LSLS     r2,r2,r4
        0x1fff3a80:    4310        .C      ORRS     r0,r0,r2
        0x1fff3a82:    6188        .a      STR      r0,[r1,#0x18]
        0x1fff3a84:    2101        .!      MOVS     r1,#1
        0x1fff3a86:    4630        0F      MOV      r0,r6
        0x1fff3a88:    f7ffffd2    ....    BL       hal_gpio_fmux ; 0x1fff3a30
        0x1fff3a8c:    bdfc        ..      POP      {r2-r7,pc}
    $d
        0x1fff3a8e:    0000        ..      DCW    0
        0x1fff3a90:    40003800    .8.@    DCD    1073756160
    $t
    i.hal_gpio_init
    hal_gpio_init
        0x1fff3a94:    b510        ..      PUSH     {r4,lr}
        0x1fff3a96:    4c11        .L      LDR      r4,[pc,#68] ; [0x1fff3adc] = 0x1fff7504
        0x1fff3a98:    7820         x      LDRB     r0,[r4,#0]
        0x1fff3a9a:    2800        .(      CMP      r0,#0
        0x1fff3a9c:    d001        ..      BEQ      0x1fff3aa2 ; hal_gpio_init + 14
        0x1fff3a9e:    2007        .       MOVS     r0,#7
        0x1fff3aa0:    bd10        ..      POP      {r4,pc}
        0x1fff3aa2:    21ff        .!      MOVS     r1,#0xff
        0x1fff3aa4:    3131        11      ADDS     r1,r1,#0x31
        0x1fff3aa6:    480d        .H      LDR      r0,[pc,#52] ; [0x1fff3adc] = 0x1fff7504
        0x1fff3aa8:    f7fef87a    ..z.    BL       $Ven$TT$L$$__aeabi_memclr4 ; 0x1fff1ba0
        0x1fff3aac:    2001        .       MOVS     r0,#1
        0x1fff3aae:    7020         p      STRB     r0,[r4,#0]
        0x1fff3ab0:    490b        .I      LDR      r1,[pc,#44] ; [0x1fff3ae0] = 0x40008000
        0x1fff3ab2:    2000        .       MOVS     r0,#0
        0x1fff3ab4:    6308        .c      STR      r0,[r1,#0x30]
        0x1fff3ab6:    6348        Hc      STR      r0,[r1,#0x34]
        0x1fff3ab8:    490a        .I      LDR      r1,[pc,#40] ; [0x1fff3ae4] = 0x4000f080
        0x1fff3aba:    6208        .b      STR      r0,[r1,#0x20]
        0x1fff3abc:    6248        Hb      STR      r0,[r1,#0x24]
        0x1fff3abe:    2102        .!      MOVS     r1,#2
        0x1fff3ac0:    2010        .       MOVS     r0,#0x10
        0x1fff3ac2:    f7fff90b    ....    BL       __NVIC_SetPriority ; 0x1fff2cdc
        0x1fff3ac6:    2010        .       MOVS     r0,#0x10
        0x1fff3ac8:    f7fff8da    ....    BL       __NVIC_EnableIRQ ; 0x1fff2c80
        0x1fff3acc:    4a06        .J      LDR      r2,[pc,#24] ; [0x1fff3ae8] = 0x1fff3d45
        0x1fff3ace:    4907        .I      LDR      r1,[pc,#28] ; [0x1fff3aec] = 0x1fff3cad
        0x1fff3ad0:    200d        .       MOVS     r0,#0xd
        0x1fff3ad2:    f000fb29    ..).    BL       hal_pwrmgr_register ; 0x1fff4128
        0x1fff3ad6:    2000        .       MOVS     r0,#0
        0x1fff3ad8:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff3ada:    0000        ..      DCW    0
        0x1fff3adc:    1fff7504    .u..    DCD    536835332
        0x1fff3ae0:    40008000    ...@    DCD    1073774592
        0x1fff3ae4:    4000f080    ...@    DCD    1073803392
        0x1fff3ae8:    1fff3d45    E=..    DCD    536821061
        0x1fff3aec:    1fff3cad    .<..    DCD    536820909
    $t
    i.hal_gpio_interrupt_enable
    hal_gpio_interrupt_enable
        0x1fff3af0:    b510        ..      PUSH     {r4,lr}
        0x1fff3af2:    2816        .(      CMP      r0,#0x16
        0x1fff3af4:    d901        ..      BLS      0x1fff3afa ; hal_gpio_interrupt_enable + 10
        0x1fff3af6:    2005        .       MOVS     r0,#5
        0x1fff3af8:    bd10        ..      POP      {r4,pc}
        0x1fff3afa:    4b0c        .K      LDR      r3,[pc,#48] ; [0x1fff3b2c] = 0x40008000
        0x1fff3afc:    6b9c        .k      LDR      r4,[r3,#0x38]
        0x1fff3afe:    2201        ."      MOVS     r2,#1
        0x1fff3b00:    4082        .@      LSLS     r2,r2,r0
        0x1fff3b02:    4610        .F      MOV      r0,r2
        0x1fff3b04:    4320         C      ORRS     r0,r0,r4
        0x1fff3b06:    6398        .c      STR      r0,[r3,#0x38]
        0x1fff3b08:    6b58        Xk      LDR      r0,[r3,#0x34]
        0x1fff3b0a:    4390        .C      BICS     r0,r0,r2
        0x1fff3b0c:    6358        Xc      STR      r0,[r3,#0x34]
        0x1fff3b0e:    6bdc        .k      LDR      r4,[r3,#0x3c]
        0x1fff3b10:    2901        .)      CMP      r1,#1
        0x1fff3b12:    d007        ..      BEQ      0x1fff3b24 ; hal_gpio_interrupt_enable + 52
        0x1fff3b14:    4620         F      MOV      r0,r4
        0x1fff3b16:    4390        .C      BICS     r0,r0,r2
        0x1fff3b18:    63d8        .c      STR      r0,[r3,#0x3c]
        0x1fff3b1a:    6b18        .k      LDR      r0,[r3,#0x30]
        0x1fff3b1c:    4302        .C      ORRS     r2,r2,r0
        0x1fff3b1e:    631a        .c      STR      r2,[r3,#0x30]
        0x1fff3b20:    2000        .       MOVS     r0,#0
        0x1fff3b22:    bd10        ..      POP      {r4,pc}
        0x1fff3b24:    4610        .F      MOV      r0,r2
        0x1fff3b26:    4320         C      ORRS     r0,r0,r4
        0x1fff3b28:    e7f6        ..      B        0x1fff3b18 ; hal_gpio_interrupt_enable + 40
    $d
        0x1fff3b2a:    0000        ..      DCW    0
        0x1fff3b2c:    40008000    ...@    DCD    1073774592
    $t
    i.hal_gpio_pin2pin3_control
    hal_gpio_pin2pin3_control
        0x1fff3b30:    4b05        .K      LDR      r3,[pc,#20] ; [0x1fff3b48] = 0x40003800
        0x1fff3b32:    2201        ."      MOVS     r2,#1
        0x1fff3b34:    1e80        ..      SUBS     r0,r0,#2
        0x1fff3b36:    4082        .@      LSLS     r2,r2,r0
        0x1fff3b38:    6958        Xi      LDR      r0,[r3,#0x14]
        0x1fff3b3a:    2900        .)      CMP      r1,#0
        0x1fff3b3c:    d001        ..      BEQ      0x1fff3b42 ; hal_gpio_pin2pin3_control + 18
        0x1fff3b3e:    4310        .C      ORRS     r0,r0,r2
        0x1fff3b40:    e000        ..      B        0x1fff3b44 ; hal_gpio_pin2pin3_control + 20
        0x1fff3b42:    4390        .C      BICS     r0,r0,r2
        0x1fff3b44:    6158        Xa      STR      r0,[r3,#0x14]
        0x1fff3b46:    4770        pG      BX       lr
    $d
        0x1fff3b48:    40003800    .8.@    DCD    1073756160
    $t
    i.hal_gpio_pin_init
    hal_gpio_pin_init
        0x1fff3b4c:    b5f0        ..      PUSH     {r4-r7,lr}
        0x1fff3b4e:    460f        .F      MOV      r7,r1
        0x1fff3b50:    4604        .F      MOV      r4,r0
        0x1fff3b52:    2816        .(      CMP      r0,#0x16
        0x1fff3b54:    d901        ..      BLS      0x1fff3b5a ; hal_gpio_pin_init + 14
        0x1fff3b56:    2005        .       MOVS     r0,#5
        0x1fff3b58:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff3b5a:    4817        .H      LDR      r0,[pc,#92] ; [0x1fff3bb8] = 0x1fff7504
        0x1fff3b5c:    2501        .%      MOVS     r5,#1
        0x1fff3b5e:    1906        ..      ADDS     r6,r0,r4
        0x1fff3b60:    7871        qx      LDRB     r1,[r6,#1]
        0x1fff3b62:    40a5        .@      LSLS     r5,r5,r4
        0x1fff3b64:    2901        .)      CMP      r1,#1
        0x1fff3b66:    d104        ..      BNE      0x1fff3b72 ; hal_gpio_pin_init + 38
        0x1fff3b68:    6980        .i      LDR      r0,[r0,#0x18]
        0x1fff3b6a:    4228        (B      TST      r0,r5
        0x1fff3b6c:    d001        ..      BEQ      0x1fff3b72 ; hal_gpio_pin_init + 38
        0x1fff3b6e:    2f00        ./      CMP      r7,#0
        0x1fff3b70:    d008        ..      BEQ      0x1fff3b84 ; hal_gpio_pin_init + 56
        0x1fff3b72:    2100        .!      MOVS     r1,#0
        0x1fff3b74:    4620         F      MOV      r0,r4
        0x1fff3b76:    f7ffff5b    ..[.    BL       hal_gpio_fmux ; 0x1fff3a30
        0x1fff3b7a:    2c02        .,      CMP      r4,#2
        0x1fff3b7c:    d004        ..      BEQ      0x1fff3b88 ; hal_gpio_pin_init + 60
        0x1fff3b7e:    2c03        .,      CMP      r4,#3
        0x1fff3b80:    d002        ..      BEQ      0x1fff3b88 ; hal_gpio_pin_init + 60
        0x1fff3b82:    e005        ..      B        0x1fff3b90 ; hal_gpio_pin_init + 68
        0x1fff3b84:    2006        .       MOVS     r0,#6
        0x1fff3b86:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff3b88:    2101        .!      MOVS     r1,#1
        0x1fff3b8a:    4620         F      MOV      r0,r4
        0x1fff3b8c:    f7ffffd0    ....    BL       hal_gpio_pin2pin3_control ; 0x1fff3b30
        0x1fff3b90:    2100        .!      MOVS     r1,#0
        0x1fff3b92:    4620         F      MOV      r0,r4
        0x1fff3b94:    f7ffff30    ..0.    BL       hal_gpio_cfg_analog_io ; 0x1fff39f8
        0x1fff3b98:    4808        .H      LDR      r0,[pc,#32] ; [0x1fff3bbc] = 0x40008000
        0x1fff3b9a:    2f01        ./      CMP      r7,#1
        0x1fff3b9c:    d006        ..      BEQ      0x1fff3bac ; hal_gpio_pin_init + 96
        0x1fff3b9e:    6841        Ah      LDR      r1,[r0,#4]
        0x1fff3ba0:    43a9        .C      BICS     r1,r1,r5
        0x1fff3ba2:    6041        A`      STR      r1,[r0,#4]
        0x1fff3ba4:    2002        .       MOVS     r0,#2
        0x1fff3ba6:    7070        pp      STRB     r0,[r6,#1]
        0x1fff3ba8:    2000        .       MOVS     r0,#0
        0x1fff3baa:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff3bac:    6842        Bh      LDR      r2,[r0,#4]
        0x1fff3bae:    2101        .!      MOVS     r1,#1
        0x1fff3bb0:    432a        *C      ORRS     r2,r2,r5
        0x1fff3bb2:    6042        B`      STR      r2,[r0,#4]
        0x1fff3bb4:    7071        qp      STRB     r1,[r6,#1]
        0x1fff3bb6:    e7f7        ..      B        0x1fff3ba8 ; hal_gpio_pin_init + 92
    $d
        0x1fff3bb8:    1fff7504    .u..    DCD    536835332
        0x1fff3bbc:    40008000    ...@    DCD    1073774592
    $t
    i.hal_gpio_pull_set
    hal_gpio_pull_set
        0x1fff3bc0:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff3bc2:    2816        .(      CMP      r0,#0x16
        0x1fff3bc4:    d816        ..      BHI      0x1fff3bf4 ; hal_gpio_pull_set + 52
        0x1fff3bc6:    0042        B.      LSLS     r2,r0,#1
        0x1fff3bc8:    4b10        .K      LDR      r3,[pc,#64] ; [0x1fff3c0c] = 0x1fff6b8f
        0x1fff3bca:    1882        ..      ADDS     r2,r0,r2
        0x1fff3bcc:    5c9e        .\      LDRB     r6,[r3,r2]
        0x1fff3bce:    18d2        ..      ADDS     r2,r2,r3
        0x1fff3bd0:    7854        Tx      LDRB     r4,[r2,#1]
        0x1fff3bd2:    7893        .x      LDRB     r3,[r2,#2]
        0x1fff3bd4:    4d0e        .M      LDR      r5,[pc,#56] ; [0x1fff3c10] = 0x4000f000
        0x1fff3bd6:    2201        ."      MOVS     r2,#1
        0x1fff3bd8:    2813        .(      CMP      r0,#0x13
        0x1fff3bda:    d20c        ..      BCS      0x1fff3bf6 ; hal_gpio_pull_set + 54
        0x1fff3bdc:    00b0        ..      LSLS     r0,r6,#2
        0x1fff3bde:    1945        E.      ADDS     r5,r0,r5
        0x1fff3be0:    68a8        .h      LDR      r0,[r5,#8]
        0x1fff3be2:    1ae4        ..      SUBS     r4,r4,r3
        0x1fff3be4:    1c64        d.      ADDS     r4,r4,#1
        0x1fff3be6:    40a2        .@      LSLS     r2,r2,r4
        0x1fff3be8:    1e52        R.      SUBS     r2,r2,#1
        0x1fff3bea:    409a        .@      LSLS     r2,r2,r3
        0x1fff3bec:    4390        .C      BICS     r0,r0,r2
        0x1fff3bee:    4099        .@      LSLS     r1,r1,r3
        0x1fff3bf0:    4308        .C      ORRS     r0,r0,r1
        0x1fff3bf2:    60a8        .`      STR      r0,[r5,#8]
        0x1fff3bf4:    bd70        p.      POP      {r4-r6,pc}
        0x1fff3bf6:    6968        hi      LDR      r0,[r5,#0x14]
        0x1fff3bf8:    1ae4        ..      SUBS     r4,r4,r3
        0x1fff3bfa:    1c64        d.      ADDS     r4,r4,#1
        0x1fff3bfc:    40a2        .@      LSLS     r2,r2,r4
        0x1fff3bfe:    1e52        R.      SUBS     r2,r2,#1
        0x1fff3c00:    409a        .@      LSLS     r2,r2,r3
        0x1fff3c02:    4390        .C      BICS     r0,r0,r2
        0x1fff3c04:    4099        .@      LSLS     r1,r1,r3
        0x1fff3c06:    4308        .C      ORRS     r0,r0,r1
        0x1fff3c08:    6168        ha      STR      r0,[r5,#0x14]
        0x1fff3c0a:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x1fff3c0c:    1fff6b8f    .k..    DCD    536832911
        0x1fff3c10:    4000f000    ...@    DCD    1073803264
    $t
    i.hal_gpio_read
    hal_gpio_read
        0x1fff3c14:    2816        .(      CMP      r0,#0x16
        0x1fff3c16:    d901        ..      BLS      0x1fff3c1c ; hal_gpio_read + 8
        0x1fff3c18:    2001        .       MOVS     r0,#1
        0x1fff3c1a:    4770        pG      BX       lr
        0x1fff3c1c:    4907        .I      LDR      r1,[pc,#28] ; [0x1fff3c3c] = 0x40008000
        0x1fff3c1e:    684a        Jh      LDR      r2,[r1,#4]
        0x1fff3c20:    2301        .#      MOVS     r3,#1
        0x1fff3c22:    4083        .@      LSLS     r3,r3,r0
        0x1fff3c24:    421a        .B      TST      r2,r3
        0x1fff3c26:    d001        ..      BEQ      0x1fff3c2c ; hal_gpio_read + 24
        0x1fff3c28:    6809        .h      LDR      r1,[r1,#0]
        0x1fff3c2a:    e002        ..      B        0x1fff3c32 ; hal_gpio_read + 30
        0x1fff3c2c:    4903        .I      LDR      r1,[pc,#12] ; [0x1fff3c3c] = 0x40008000
        0x1fff3c2e:    3140        @1      ADDS     r1,r1,#0x40
        0x1fff3c30:    6909        .i      LDR      r1,[r1,#0x10]
        0x1fff3c32:    40c1        .@      LSRS     r1,r1,r0
        0x1fff3c34:    07c8        ..      LSLS     r0,r1,#31
        0x1fff3c36:    0fc0        ..      LSRS     r0,r0,#31
        0x1fff3c38:    4770        pG      BX       lr
    $d
        0x1fff3c3a:    0000        ..      DCW    0
        0x1fff3c3c:    40008000    ...@    DCD    1073774592
    $t
    i.hal_gpio_retention_enable
    hal_gpio_retention_enable
        0x1fff3c40:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff3c42:    2816        .(      CMP      r0,#0x16
        0x1fff3c44:    d827        '.      BHI      0x1fff3c96 ; hal_gpio_retention_enable + 86
        0x1fff3c46:    4c18        .L      LDR      r4,[pc,#96] ; [0x1fff3ca8] = 0x1fff6bd4
        0x1fff3c48:    0046        F.      LSLS     r6,r0,#1
        0x1fff3c4a:    4a16        .J      LDR      r2,[pc,#88] ; [0x1fff3ca4] = 0x4000f000
        0x1fff3c4c:    1935        5.      ADDS     r5,r6,r4
        0x1fff3c4e:    2301        .#      MOVS     r3,#1
        0x1fff3c50:    2900        .)      CMP      r1,#0
        0x1fff3c52:    d012        ..      BEQ      0x1fff3c7a ; hal_gpio_retention_enable + 58
        0x1fff3c54:    2814        .(      CMP      r0,#0x14
        0x1fff3c56:    d00b        ..      BEQ      0x1fff3c70 ; hal_gpio_retention_enable + 48
        0x1fff3c58:    2815        .(      CMP      r0,#0x15
        0x1fff3c5a:    d009        ..      BEQ      0x1fff3c70 ; hal_gpio_retention_enable + 48
        0x1fff3c5c:    2816        .(      CMP      r0,#0x16
        0x1fff3c5e:    d007        ..      BEQ      0x1fff3c70 ; hal_gpio_retention_enable + 48
        0x1fff3c60:    57a0        .W      LDRSB    r0,[r4,r6]
        0x1fff3c62:    0080        ..      LSLS     r0,r0,#2
        0x1fff3c64:    1880        ..      ADDS     r0,r0,r2
        0x1fff3c66:    6881        .h      LDR      r1,[r0,#8]
        0x1fff3c68:    786a        jx      LDRB     r2,[r5,#1]
        0x1fff3c6a:    4093        .@      LSLS     r3,r3,r2
        0x1fff3c6c:    4319        .C      ORRS     r1,r1,r3
        0x1fff3c6e:    e011        ..      B        0x1fff3c94 ; hal_gpio_retention_enable + 84
        0x1fff3c70:    6950        Pi      LDR      r0,[r2,#0x14]
        0x1fff3c72:    7869        ix      LDRB     r1,[r5,#1]
        0x1fff3c74:    408b        .@      LSLS     r3,r3,r1
        0x1fff3c76:    4318        .C      ORRS     r0,r0,r3
        0x1fff3c78:    e012        ..      B        0x1fff3ca0 ; hal_gpio_retention_enable + 96
        0x1fff3c7a:    2814        .(      CMP      r0,#0x14
        0x1fff3c7c:    d00c        ..      BEQ      0x1fff3c98 ; hal_gpio_retention_enable + 88
        0x1fff3c7e:    2815        .(      CMP      r0,#0x15
        0x1fff3c80:    d00a        ..      BEQ      0x1fff3c98 ; hal_gpio_retention_enable + 88
        0x1fff3c82:    2816        .(      CMP      r0,#0x16
        0x1fff3c84:    d008        ..      BEQ      0x1fff3c98 ; hal_gpio_retention_enable + 88
        0x1fff3c86:    57a0        .W      LDRSB    r0,[r4,r6]
        0x1fff3c88:    0080        ..      LSLS     r0,r0,#2
        0x1fff3c8a:    1880        ..      ADDS     r0,r0,r2
        0x1fff3c8c:    6881        .h      LDR      r1,[r0,#8]
        0x1fff3c8e:    786a        jx      LDRB     r2,[r5,#1]
        0x1fff3c90:    4093        .@      LSLS     r3,r3,r2
        0x1fff3c92:    4399        .C      BICS     r1,r1,r3
        0x1fff3c94:    6081        .`      STR      r1,[r0,#8]
        0x1fff3c96:    bd70        p.      POP      {r4-r6,pc}
        0x1fff3c98:    6950        Pi      LDR      r0,[r2,#0x14]
        0x1fff3c9a:    7869        ix      LDRB     r1,[r5,#1]
        0x1fff3c9c:    408b        .@      LSLS     r3,r3,r1
        0x1fff3c9e:    4398        .C      BICS     r0,r0,r3
        0x1fff3ca0:    6150        Pa      STR      r0,[r2,#0x14]
        0x1fff3ca2:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x1fff3ca4:    4000f000    ...@    DCD    1073803264
        0x1fff3ca8:    1fff6bd4    .k..    DCD    536832980
    $t
    i.hal_gpio_sleep_handler
    hal_gpio_sleep_handler
        0x1fff3cac:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff3cae:    2400        .$      MOVS     r4,#0
        0x1fff3cb0:    4d12        .M      LDR      r5,[pc,#72] ; [0x1fff3cfc] = 0x1fff7504
        0x1fff3cb2:    2601        .&      MOVS     r6,#1
        0x1fff3cb4:    192f        /.      ADDS     r7,r5,r4
        0x1fff3cb6:    7878        xx      LDRB     r0,[r7,#1]
        0x1fff3cb8:    2801        .(      CMP      r0,#1
        0x1fff3cba:    d108        ..      BNE      0x1fff3cce ; hal_gpio_sleep_handler + 34
        0x1fff3cbc:    4631        1F      MOV      r1,r6
        0x1fff3cbe:    69a8        .i      LDR      r0,[r5,#0x18]
        0x1fff3cc0:    40a1        .@      LSLS     r1,r1,r4
        0x1fff3cc2:    4208        .B      TST      r0,r1
        0x1fff3cc4:    d016        ..      BEQ      0x1fff3cf4 ; hal_gpio_sleep_handler + 72
        0x1fff3cc6:    b2e0        ..      UXTB     r0,r4
        0x1fff3cc8:    2101        .!      MOVS     r1,#1
        0x1fff3cca:    f7ffffb9    ....    BL       hal_gpio_retention_enable ; 0x1fff3c40
        0x1fff3cce:    7878        xx      LDRB     r0,[r7,#1]
        0x1fff3cd0:    2802        .(      CMP      r0,#2
        0x1fff3cd2:    d10f        ..      BNE      0x1fff3cf4 ; hal_gpio_sleep_handler + 72
        0x1fff3cd4:    b2e0        ..      UXTB     r0,r4
        0x1fff3cd6:    f7ffff9d    ....    BL       hal_gpio_read ; 0x1fff3c14
        0x1fff3cda:    4070        p@      EORS     r0,r0,r6
        0x1fff3cdc:    b2e2        ..      UXTB     r2,r4
        0x1fff3cde:    4601        .F      MOV      r1,r0
        0x1fff3ce0:    4610        .F      MOV      r0,r2
        0x1fff3ce2:    f000f87b    ..{.    BL       hal_gpio_wakeup_set ; 0x1fff3ddc
        0x1fff3ce6:    b2e0        ..      UXTB     r0,r4
        0x1fff3ce8:    f7ffff94    ....    BL       hal_gpio_read ; 0x1fff3c14
        0x1fff3cec:    210c        .!      MOVS     r1,#0xc
        0x1fff3cee:    4361        aC      MULS     r1,r4,r1
        0x1fff3cf0:    1949        I.      ADDS     r1,r1,r5
        0x1fff3cf2:    7748        Hw      STRB     r0,[r1,#0x1d]
        0x1fff3cf4:    1c64        d.      ADDS     r4,r4,#1
        0x1fff3cf6:    2c17        .,      CMP      r4,#0x17
        0x1fff3cf8:    dbdc        ..      BLT      0x1fff3cb4 ; hal_gpio_sleep_handler + 8
        0x1fff3cfa:    bdf8        ..      POP      {r3-r7,pc}
    $d
        0x1fff3cfc:    1fff7504    .u..    DCD    536835332
    $t
    i.hal_gpio_wakeup_control
    hal_gpio_wakeup_control
        0x1fff3d00:    b510        ..      PUSH     {r4,lr}
        0x1fff3d02:    4c0f        .L      LDR      r4,[pc,#60] ; [0x1fff3d40] = 0x1fff6b78
        0x1fff3d04:    4a0d        .J      LDR      r2,[pc,#52] ; [0x1fff3d3c] = 0x4000f080
        0x1fff3d06:    2301        .#      MOVS     r3,#1
        0x1fff3d08:    5c24        $\      LDRB     r4,[r4,r0]
        0x1fff3d0a:    2814        .(      CMP      r0,#0x14
        0x1fff3d0c:    d209        ..      BCS      0x1fff3d22 ; hal_gpio_wakeup_control + 34
        0x1fff3d0e:    6a10        .j      LDR      r0,[r2,#0x20]
        0x1fff3d10:    2900        .)      CMP      r1,#0
        0x1fff3d12:    d002        ..      BEQ      0x1fff3d1a ; hal_gpio_wakeup_control + 26
        0x1fff3d14:    40a3        .@      LSLS     r3,r3,r4
        0x1fff3d16:    4318        .C      ORRS     r0,r0,r3
        0x1fff3d18:    e001        ..      B        0x1fff3d1e ; hal_gpio_wakeup_control + 30
        0x1fff3d1a:    40a3        .@      LSLS     r3,r3,r4
        0x1fff3d1c:    4398        .C      BICS     r0,r0,r3
        0x1fff3d1e:    6210        .b      STR      r0,[r2,#0x20]
        0x1fff3d20:    bd10        ..      POP      {r4,pc}
        0x1fff3d22:    6a50        Pj      LDR      r0,[r2,#0x24]
        0x1fff3d24:    2900        .)      CMP      r1,#0
        0x1fff3d26:    d003        ..      BEQ      0x1fff3d30 ; hal_gpio_wakeup_control + 48
        0x1fff3d28:    3c20         <      SUBS     r4,r4,#0x20
        0x1fff3d2a:    40a3        .@      LSLS     r3,r3,r4
        0x1fff3d2c:    4318        .C      ORRS     r0,r0,r3
        0x1fff3d2e:    e002        ..      B        0x1fff3d36 ; hal_gpio_wakeup_control + 54
        0x1fff3d30:    3c20         <      SUBS     r4,r4,#0x20
        0x1fff3d32:    40a3        .@      LSLS     r3,r3,r4
        0x1fff3d34:    4398        .C      BICS     r0,r0,r3
        0x1fff3d36:    6250        Pb      STR      r0,[r2,#0x24]
        0x1fff3d38:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff3d3a:    0000        ..      DCW    0
        0x1fff3d3c:    4000f080    ...@    DCD    1073803392
        0x1fff3d40:    1fff6b78    xk..    DCD    536832888
    $t
    i.hal_gpio_wakeup_handler
    hal_gpio_wakeup_handler
        0x1fff3d44:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff3d46:    2102        .!      MOVS     r1,#2
        0x1fff3d48:    2010        .       MOVS     r0,#0x10
        0x1fff3d4a:    f7feffc7    ....    BL       __NVIC_SetPriority ; 0x1fff2cdc
        0x1fff3d4e:    2010        .       MOVS     r0,#0x10
        0x1fff3d50:    f7feff96    ....    BL       __NVIC_EnableIRQ ; 0x1fff2c80
        0x1fff3d54:    4d20         M      LDR      r5,[pc,#128] ; [0x1fff3dd8] = 0x1fff7504
        0x1fff3d56:    2400        .$      MOVS     r4,#0
        0x1fff3d58:    192e        ..      ADDS     r6,r5,r4
        0x1fff3d5a:    7870        px      LDRB     r0,[r6,#1]
        0x1fff3d5c:    2800        .(      CMP      r0,#0
        0x1fff3d5e:    d01a        ..      BEQ      0x1fff3d96 ; hal_gpio_wakeup_handler + 82
        0x1fff3d60:    2c02        .,      CMP      r4,#2
        0x1fff3d62:    d001        ..      BEQ      0x1fff3d68 ; hal_gpio_wakeup_handler + 36
        0x1fff3d64:    2c03        .,      CMP      r4,#3
        0x1fff3d66:    d103        ..      BNE      0x1fff3d70 ; hal_gpio_wakeup_handler + 44
        0x1fff3d68:    b2e0        ..      UXTB     r0,r4
        0x1fff3d6a:    2101        .!      MOVS     r1,#1
        0x1fff3d6c:    f7fffee0    ....    BL       hal_gpio_pin2pin3_control ; 0x1fff3b30
        0x1fff3d70:    7870        px      LDRB     r0,[r6,#1]
        0x1fff3d72:    2801        .(      CMP      r0,#1
        0x1fff3d74:    d10f        ..      BNE      0x1fff3d96 ; hal_gpio_wakeup_handler + 82
        0x1fff3d76:    2101        .!      MOVS     r1,#1
        0x1fff3d78:    69a8        .i      LDR      r0,[r5,#0x18]
        0x1fff3d7a:    40a1        .@      LSLS     r1,r1,r4
        0x1fff3d7c:    4208        .B      TST      r0,r1
        0x1fff3d7e:    d00a        ..      BEQ      0x1fff3d96 ; hal_gpio_wakeup_handler + 82
        0x1fff3d80:    b2e0        ..      UXTB     r0,r4
        0x1fff3d82:    f7ffff47    ..G.    BL       hal_gpio_read ; 0x1fff3c14
        0x1fff3d86:    4601        .F      MOV      r1,r0
        0x1fff3d88:    b2e0        ..      UXTB     r0,r4
        0x1fff3d8a:    f000f865    ..e.    BL       hal_gpio_write ; 0x1fff3e58
        0x1fff3d8e:    b2e0        ..      UXTB     r0,r4
        0x1fff3d90:    2100        .!      MOVS     r1,#0
        0x1fff3d92:    f7ffff55    ..U.    BL       hal_gpio_retention_enable ; 0x1fff3c40
        0x1fff3d96:    200c        .       MOVS     r0,#0xc
        0x1fff3d98:    4360        `C      MULS     r0,r4,r0
        0x1fff3d9a:    1940        @.      ADDS     r0,r0,r5
        0x1fff3d9c:    7f00        ..      LDRB     r0,[r0,#0x1c]
        0x1fff3d9e:    2800        .(      CMP      r0,#0
        0x1fff3da0:    d016        ..      BEQ      0x1fff3dd0 ; hal_gpio_wakeup_handler + 140
        0x1fff3da2:    b2e0        ..      UXTB     r0,r4
        0x1fff3da4:    f000f890    ....    BL       hal_gpioin_enable ; 0x1fff3ec8
        0x1fff3da8:    b2e6        ..      UXTB     r6,r4
        0x1fff3daa:    2e16        ..      CMP      r6,#0x16
        0x1fff3dac:    d810        ..      BHI      0x1fff3dd0 ; hal_gpio_wakeup_handler + 140
        0x1fff3dae:    4630        0F      MOV      r0,r6
        0x1fff3db0:    f7ffff30    ..0.    BL       hal_gpio_read ; 0x1fff3c14
        0x1fff3db4:    2800        .(      CMP      r0,#0
        0x1fff3db6:    d001        ..      BEQ      0x1fff3dbc ; hal_gpio_wakeup_handler + 120
        0x1fff3db8:    2101        .!      MOVS     r1,#1
        0x1fff3dba:    e000        ..      B        0x1fff3dbe ; hal_gpio_wakeup_handler + 122
        0x1fff3dbc:    2100        .!      MOVS     r1,#0
        0x1fff3dbe:    220c        ."      MOVS     r2,#0xc
        0x1fff3dc0:    4372        rC      MULS     r2,r6,r2
        0x1fff3dc2:    1952        R.      ADDS     r2,r2,r5
        0x1fff3dc4:    7f52        R.      LDRB     r2,[r2,#0x1d]
        0x1fff3dc6:    4282        .B      CMP      r2,r0
        0x1fff3dc8:    d002        ..      BEQ      0x1fff3dd0 ; hal_gpio_wakeup_handler + 140
        0x1fff3dca:    4630        0F      MOV      r0,r6
        0x1fff3dcc:    f000f8e6    ....    BL       hal_gpioin_event_pin ; 0x1fff3f9c
        0x1fff3dd0:    1c64        d.      ADDS     r4,r4,#1
        0x1fff3dd2:    2c17        .,      CMP      r4,#0x17
        0x1fff3dd4:    dbc0        ..      BLT      0x1fff3d58 ; hal_gpio_wakeup_handler + 20
        0x1fff3dd6:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x1fff3dd8:    1fff7504    .u..    DCD    536835332
    $t
    i.hal_gpio_wakeup_set
    hal_gpio_wakeup_set
        0x1fff3ddc:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff3dde:    2816        .(      CMP      r0,#0x16
        0x1fff3de0:    d82e        ..      BHI      0x1fff3e40 ; hal_gpio_wakeup_set + 100
        0x1fff3de2:    0042        B.      LSLS     r2,r0,#1
        0x1fff3de4:    1883        ..      ADDS     r3,r0,r2
        0x1fff3de6:    4a18        .J      LDR      r2,[pc,#96] ; [0x1fff3e48] = 0x1fff6b8f
        0x1fff3de8:    5cd5        .\      LDRB     r5,[r2,r3]
        0x1fff3dea:    189a        ..      ADDS     r2,r3,r2
        0x1fff3dec:    7892        .x      LDRB     r2,[r2,#2]
        0x1fff3dee:    1e52        R.      SUBS     r2,r2,#1
        0x1fff3df0:    b2d4        ..      UXTB     r4,r2
        0x1fff3df2:    4a16        .J      LDR      r2,[pc,#88] ; [0x1fff3e4c] = 0x1fff7504
        0x1fff3df4:    1812        ..      ADDS     r2,r2,r0
        0x1fff3df6:    7852        Rx      LDRB     r2,[r2,#1]
        0x1fff3df8:    2a02        .*      CMP      r2,#2
        0x1fff3dfa:    d121        !.      BNE      0x1fff3e40 ; hal_gpio_wakeup_set + 100
        0x1fff3dfc:    4e14        .N      LDR      r6,[pc,#80] ; [0x1fff3e50] = 0x40008000
        0x1fff3dfe:    6bb7        .k      LDR      r7,[r6,#0x38]
        0x1fff3e00:    2201        ."      MOVS     r2,#1
        0x1fff3e02:    4613        .F      MOV      r3,r2
        0x1fff3e04:    4083        .@      LSLS     r3,r3,r0
        0x1fff3e06:    431f        .C      ORRS     r7,r7,r3
        0x1fff3e08:    63b7        .c      STR      r7,[r6,#0x38]
        0x1fff3e0a:    4b12        .K      LDR      r3,[pc,#72] ; [0x1fff3e54] = 0x4000f000
        0x1fff3e0c:    2813        .(      CMP      r0,#0x13
        0x1fff3e0e:    d20e        ..      BCS      0x1fff3e2e ; hal_gpio_wakeup_set + 82
        0x1fff3e10:    2900        .)      CMP      r1,#0
        0x1fff3e12:    d006        ..      BEQ      0x1fff3e22 ; hal_gpio_wakeup_set + 70
        0x1fff3e14:    00a9        ..      LSLS     r1,r5,#2
        0x1fff3e16:    18c9        ..      ADDS     r1,r1,r3
        0x1fff3e18:    688b        .h      LDR      r3,[r1,#8]
        0x1fff3e1a:    40a2        .@      LSLS     r2,r2,r4
        0x1fff3e1c:    4393        .C      BICS     r3,r3,r2
        0x1fff3e1e:    608b        .`      STR      r3,[r1,#8]
        0x1fff3e20:    e00b        ..      B        0x1fff3e3a ; hal_gpio_wakeup_set + 94
        0x1fff3e22:    00a9        ..      LSLS     r1,r5,#2
        0x1fff3e24:    18c9        ..      ADDS     r1,r1,r3
        0x1fff3e26:    688b        .h      LDR      r3,[r1,#8]
        0x1fff3e28:    40a2        .@      LSLS     r2,r2,r4
        0x1fff3e2a:    4313        .C      ORRS     r3,r3,r2
        0x1fff3e2c:    e7f7        ..      B        0x1fff3e1e ; hal_gpio_wakeup_set + 66
        0x1fff3e2e:    2900        .)      CMP      r1,#0
        0x1fff3e30:    6959        Yi      LDR      r1,[r3,#0x14]
        0x1fff3e32:    d006        ..      BEQ      0x1fff3e42 ; hal_gpio_wakeup_set + 102
        0x1fff3e34:    40a2        .@      LSLS     r2,r2,r4
        0x1fff3e36:    4391        .C      BICS     r1,r1,r2
        0x1fff3e38:    6159        Ya      STR      r1,[r3,#0x14]
        0x1fff3e3a:    2101        .!      MOVS     r1,#1
        0x1fff3e3c:    f7ffff60    ..`.    BL       hal_gpio_wakeup_control ; 0x1fff3d00
        0x1fff3e40:    bdf8        ..      POP      {r3-r7,pc}
        0x1fff3e42:    40a2        .@      LSLS     r2,r2,r4
        0x1fff3e44:    4311        .C      ORRS     r1,r1,r2
        0x1fff3e46:    e7f7        ..      B        0x1fff3e38 ; hal_gpio_wakeup_set + 92
    $d
        0x1fff3e48:    1fff6b8f    .k..    DCD    536832911
        0x1fff3e4c:    1fff7504    .u..    DCD    536835332
        0x1fff3e50:    40008000    ...@    DCD    1073774592
        0x1fff3e54:    4000f000    ...@    DCD    1073803264
    $t
    i.hal_gpio_write
    hal_gpio_write
        0x1fff3e58:    b500        ..      PUSH     {lr}
        0x1fff3e5a:    2816        .(      CMP      r0,#0x16
        0x1fff3e5c:    d80c        ..      BHI      0x1fff3e78 ; hal_gpio_write + 32
        0x1fff3e5e:    2301        .#      MOVS     r3,#1
        0x1fff3e60:    4a06        .J      LDR      r2,[pc,#24] ; [0x1fff3e7c] = 0x40008000
        0x1fff3e62:    4083        .@      LSLS     r3,r3,r0
        0x1fff3e64:    2900        .)      CMP      r1,#0
        0x1fff3e66:    6811        .h      LDR      r1,[r2,#0]
        0x1fff3e68:    d001        ..      BEQ      0x1fff3e6e ; hal_gpio_write + 22
        0x1fff3e6a:    4319        .C      ORRS     r1,r1,r3
        0x1fff3e6c:    e000        ..      B        0x1fff3e70 ; hal_gpio_write + 24
        0x1fff3e6e:    4399        .C      BICS     r1,r1,r3
        0x1fff3e70:    6011        .`      STR      r1,[r2,#0]
        0x1fff3e72:    2101        .!      MOVS     r1,#1
        0x1fff3e74:    f7fffe6a    ..j.    BL       hal_gpio_pin_init ; 0x1fff3b4c
        0x1fff3e78:    bd00        ..      POP      {pc}
    $d
        0x1fff3e7a:    0000        ..      DCW    0
        0x1fff3e7c:    40008000    ...@    DCD    1073774592
    $t
    i.hal_gpioin_disable
    hal_gpioin_disable
        0x1fff3e80:    b530        0.      PUSH     {r4,r5,lr}
        0x1fff3e82:    4604        .F      MOV      r4,r0
        0x1fff3e84:    480e        .H      LDR      r0,[pc,#56] ; [0x1fff3ec0] = 0x1fff7520
        0x1fff3e86:    2c16        .,      CMP      r4,#0x16
        0x1fff3e88:    d901        ..      BLS      0x1fff3e8e ; hal_gpioin_disable + 14
        0x1fff3e8a:    2005        .       MOVS     r0,#5
        0x1fff3e8c:    bd30        0.      POP      {r4,r5,pc}
        0x1fff3e8e:    210c        .!      MOVS     r1,#0xc
        0x1fff3e90:    2500        .%      MOVS     r5,#0
        0x1fff3e92:    4361        aC      MULS     r1,r4,r1
        0x1fff3e94:    5445        ET      STRB     r5,[r0,r1]
        0x1fff3e96:    480a        .H      LDR      r0,[pc,#40] ; [0x1fff3ec0] = 0x1fff7520
        0x1fff3e98:    4629        )F      MOV      r1,r5
        0x1fff3e9a:    381c        .8      SUBS     r0,r0,#0x1c
        0x1fff3e9c:    1900        ..      ADDS     r0,r0,r4
        0x1fff3e9e:    7045        Ep      STRB     r5,[r0,#1]
        0x1fff3ea0:    4620         F      MOV      r0,r4
        0x1fff3ea2:    f7fffe53    ..S.    BL       hal_gpio_pin_init ; 0x1fff3b4c
        0x1fff3ea6:    4907        .I      LDR      r1,[pc,#28] ; [0x1fff3ec4] = 0x40008000
        0x1fff3ea8:    6b4a        Jk      LDR      r2,[r1,#0x34]
        0x1fff3eaa:    2001        .       MOVS     r0,#1
        0x1fff3eac:    40a0        .@      LSLS     r0,r0,r4
        0x1fff3eae:    4382        .C      BICS     r2,r2,r0
        0x1fff3eb0:    4302        .C      ORRS     r2,r2,r0
        0x1fff3eb2:    634a        Jc      STR      r2,[r1,#0x34]
        0x1fff3eb4:    6b0a        .k      LDR      r2,[r1,#0x30]
        0x1fff3eb6:    4382        .C      BICS     r2,r2,r0
        0x1fff3eb8:    630a        .c      STR      r2,[r1,#0x30]
        0x1fff3eba:    4628        (F      MOV      r0,r5
        0x1fff3ebc:    bd30        0.      POP      {r4,r5,pc}
    $d
        0x1fff3ebe:    0000        ..      DCW    0
        0x1fff3ec0:    1fff7520     u..    DCD    536835360
        0x1fff3ec4:    40008000    ...@    DCD    1073774592
    $t
    i.hal_gpioin_enable
    hal_gpioin_enable
        0x1fff3ec8:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff3eca:    4604        .F      MOV      r4,r0
        0x1fff3ecc:    4818        .H      LDR      r0,[pc,#96] ; [0x1fff3f30] = 0x1fff7520
        0x1fff3ece:    2600        .&      MOVS     r6,#0
        0x1fff3ed0:    2c16        .,      CMP      r4,#0x16
        0x1fff3ed2:    d901        ..      BLS      0x1fff3ed8 ; hal_gpioin_enable + 16
        0x1fff3ed4:    2005        .       MOVS     r0,#5
        0x1fff3ed6:    bd70        p.      POP      {r4-r6,pc}
        0x1fff3ed8:    4621        !F      MOV      r1,r4
        0x1fff3eda:    220c        ."      MOVS     r2,#0xc
        0x1fff3edc:    4351        QC      MULS     r1,r2,r1
        0x1fff3ede:    180d        ..      ADDS     r5,r1,r0
        0x1fff3ee0:    686a        jh      LDR      r2,[r5,#4]
        0x1fff3ee2:    2a00        .*      CMP      r2,#0
        0x1fff3ee4:    d102        ..      BNE      0x1fff3eec ; hal_gpioin_enable + 36
        0x1fff3ee6:    68aa        .h      LDR      r2,[r5,#8]
        0x1fff3ee8:    2a00        .*      CMP      r2,#0
        0x1fff3eea:    d01c        ..      BEQ      0x1fff3f26 ; hal_gpioin_enable + 94
        0x1fff3eec:    4b10        .K      LDR      r3,[pc,#64] ; [0x1fff3f30] = 0x1fff7520
        0x1fff3eee:    2202        ."      MOVS     r2,#2
        0x1fff3ef0:    3b1c        .;      SUBS     r3,r3,#0x1c
        0x1fff3ef2:    191b        ..      ADDS     r3,r3,r4
        0x1fff3ef4:    705a        Zp      STRB     r2,[r3,#1]
        0x1fff3ef6:    2201        ."      MOVS     r2,#1
        0x1fff3ef8:    5442        BT      STRB     r2,[r0,r1]
        0x1fff3efa:    2100        .!      MOVS     r1,#0
        0x1fff3efc:    4620         F      MOV      r0,r4
        0x1fff3efe:    f7fffe25    ..%.    BL       hal_gpio_pin_init ; 0x1fff3b4c
        0x1fff3f02:    6868        hh      LDR      r0,[r5,#4]
        0x1fff3f04:    2800        .(      CMP      r0,#0
        0x1fff3f06:    d008        ..      BEQ      0x1fff3f1a ; hal_gpioin_enable + 82
        0x1fff3f08:    68a8        .h      LDR      r0,[r5,#8]
        0x1fff3f0a:    2800        .(      CMP      r0,#0
        0x1fff3f0c:    d00d        ..      BEQ      0x1fff3f2a ; hal_gpioin_enable + 98
        0x1fff3f0e:    4620         F      MOV      r0,r4
        0x1fff3f10:    f7fffe80    ....    BL       hal_gpio_read ; 0x1fff3c14
        0x1fff3f14:    2800        .(      CMP      r0,#0
        0x1fff3f16:    d008        ..      BEQ      0x1fff3f2a ; hal_gpioin_enable + 98
        0x1fff3f18:    2600        .&      MOVS     r6,#0
        0x1fff3f1a:    4631        1F      MOV      r1,r6
        0x1fff3f1c:    4620         F      MOV      r0,r4
        0x1fff3f1e:    f7fffde7    ....    BL       hal_gpio_interrupt_enable ; 0x1fff3af0
        0x1fff3f22:    2000        .       MOVS     r0,#0
        0x1fff3f24:    bd70        p.      POP      {r4-r6,pc}
        0x1fff3f26:    2012        .       MOVS     r0,#0x12
        0x1fff3f28:    bd70        p.      POP      {r4-r6,pc}
        0x1fff3f2a:    2601        .&      MOVS     r6,#1
        0x1fff3f2c:    e7f5        ..      B        0x1fff3f1a ; hal_gpioin_enable + 82
    $d
        0x1fff3f2e:    0000        ..      DCW    0
        0x1fff3f30:    1fff7520     u..    DCD    536835360
    $t
    i.hal_gpioin_event
    hal_gpioin_event
        0x1fff3f34:    b5f3        ..      PUSH     {r0,r1,r4-r7,lr}
        0x1fff3f36:    4e18        .N      LDR      r6,[pc,#96] ; [0x1fff3f98] = 0x1fff7520
        0x1fff3f38:    2400        .$      MOVS     r4,#0
        0x1fff3f3a:    b081        ..      SUB      sp,sp,#4
        0x1fff3f3c:    4607        .F      MOV      r7,r0
        0x1fff3f3e:    2501        .%      MOVS     r5,#1
        0x1fff3f40:    4628        (F      MOV      r0,r5
        0x1fff3f42:    40a0        .@      LSLS     r0,r0,r4
        0x1fff3f44:    4238        8B      TST      r0,r7
        0x1fff3f46:    d023        #.      BEQ      0x1fff3f90 ; hal_gpioin_event + 92
        0x1fff3f48:    9902        ..      LDR      r1,[sp,#8]
        0x1fff3f4a:    4008        .@      ANDS     r0,r0,r1
        0x1fff3f4c:    d000        ..      BEQ      0x1fff3f50 ; hal_gpioin_event + 28
        0x1fff3f4e:    2001        .       MOVS     r0,#1
        0x1fff3f50:    9000        ..      STR      r0,[sp,#0]
        0x1fff3f52:    b2e0        ..      UXTB     r0,r4
        0x1fff3f54:    9900        ..      LDR      r1,[sp,#0]
        0x1fff3f56:    f000f821    ..!.    BL       hal_gpioin_event_pin ; 0x1fff3f9c
        0x1fff3f5a:    200c        .       MOVS     r0,#0xc
        0x1fff3f5c:    4360        `C      MULS     r0,r4,r0
        0x1fff3f5e:    1980        ..      ADDS     r0,r0,r6
        0x1fff3f60:    6841        Ah      LDR      r1,[r0,#4]
        0x1fff3f62:    6880        .h      LDR      r0,[r0,#8]
        0x1fff3f64:    2900        .)      CMP      r1,#0
        0x1fff3f66:    d00e        ..      BEQ      0x1fff3f86 ; hal_gpioin_event + 82
        0x1fff3f68:    2800        .(      CMP      r0,#0
        0x1fff3f6a:    d007        ..      BEQ      0x1fff3f7c ; hal_gpioin_event + 72
        0x1fff3f6c:    9800        ..      LDR      r0,[sp,#0]
        0x1fff3f6e:    2800        .(      CMP      r0,#0
        0x1fff3f70:    d002        ..      BEQ      0x1fff3f78 ; hal_gpioin_event + 68
        0x1fff3f72:    2100        .!      MOVS     r1,#0
        0x1fff3f74:    b2e0        ..      UXTB     r0,r4
        0x1fff3f76:    e003        ..      B        0x1fff3f80 ; hal_gpioin_event + 76
        0x1fff3f78:    2101        .!      MOVS     r1,#1
        0x1fff3f7a:    e7fb        ..      B        0x1fff3f74 ; hal_gpioin_event + 64
        0x1fff3f7c:    b2e0        ..      UXTB     r0,r4
        0x1fff3f7e:    2101        .!      MOVS     r1,#1
        0x1fff3f80:    f7fffdb6    ....    BL       hal_gpio_interrupt_enable ; 0x1fff3af0
        0x1fff3f84:    e004        ..      B        0x1fff3f90 ; hal_gpioin_event + 92
        0x1fff3f86:    2800        .(      CMP      r0,#0
        0x1fff3f88:    d002        ..      BEQ      0x1fff3f90 ; hal_gpioin_event + 92
        0x1fff3f8a:    b2e0        ..      UXTB     r0,r4
        0x1fff3f8c:    2100        .!      MOVS     r1,#0
        0x1fff3f8e:    e7f7        ..      B        0x1fff3f80 ; hal_gpioin_event + 76
        0x1fff3f90:    1c64        d.      ADDS     r4,r4,#1
        0x1fff3f92:    2c17        .,      CMP      r4,#0x17
        0x1fff3f94:    dbd4        ..      BLT      0x1fff3f40 ; hal_gpioin_event + 12
        0x1fff3f96:    bdfe        ..      POP      {r1-r7,pc}
    $d
        0x1fff3f98:    1fff7520     u..    DCD    536835360
    $t
    i.hal_gpioin_event_pin
    hal_gpioin_event_pin
        0x1fff3f9c:    4a08        .J      LDR      r2,[pc,#32] ; [0x1fff3fc0] = 0x1fff7520
        0x1fff3f9e:    2816        .(      CMP      r0,#0x16
        0x1fff3fa0:    d80d        ..      BHI      0x1fff3fbe ; hal_gpioin_event_pin + 34
        0x1fff3fa2:    230c        .#      MOVS     r3,#0xc
        0x1fff3fa4:    4343        CC      MULS     r3,r0,r3
        0x1fff3fa6:    189b        ..      ADDS     r3,r3,r2
        0x1fff3fa8:    685a        Zh      LDR      r2,[r3,#4]
        0x1fff3faa:    2a00        .*      CMP      r2,#0
        0x1fff3fac:    d001        ..      BEQ      0x1fff3fb2 ; hal_gpioin_event_pin + 22
        0x1fff3fae:    2901        .)      CMP      r1,#1
        0x1fff3fb0:    d004        ..      BEQ      0x1fff3fbc ; hal_gpioin_event_pin + 32
        0x1fff3fb2:    689a        .h      LDR      r2,[r3,#8]
        0x1fff3fb4:    2a00        .*      CMP      r2,#0
        0x1fff3fb6:    d002        ..      BEQ      0x1fff3fbe ; hal_gpioin_event_pin + 34
        0x1fff3fb8:    2900        .)      CMP      r1,#0
        0x1fff3fba:    d100        ..      BNE      0x1fff3fbe ; hal_gpioin_event_pin + 34
        0x1fff3fbc:    4710        .G      BX       r2
        0x1fff3fbe:    4770        pG      BX       lr
    $d
        0x1fff3fc0:    1fff7520     u..    DCD    536835360
    $t
    i.hal_low_power_io_init
    hal_low_power_io_init
        0x1fff3fc4:    b530        0.      PUSH     {r4,r5,lr}
        0x1fff3fc6:    b085        ..      SUB      sp,sp,#0x14
        0x1fff3fc8:    2214        ."      MOVS     r2,#0x14
        0x1fff3fca:    4917        .I      LDR      r1,[pc,#92] ; [0x1fff4028] = 0x1fff6b58
        0x1fff3fcc:    4668        hF      MOV      r0,sp
        0x1fff3fce:    f7fdfded    ....    BL       $Ven$TT$L$$__aeabi_memcpy4 ; 0x1fff1bac
        0x1fff3fd2:    2400        .$      MOVS     r4,#0
        0x1fff3fd4:    466d        mF      MOV      r5,sp
        0x1fff3fd6:    0060        `.      LSLS     r0,r4,#1
        0x1fff3fd8:    1941        A.      ADDS     r1,r0,r5
        0x1fff3fda:    7849        Ix      LDRB     r1,[r1,#1]
        0x1fff3fdc:    5c28        (\      LDRB     r0,[r5,r0]
        0x1fff3fde:    f7fffdef    ....    BL       hal_gpio_pull_set ; 0x1fff3bc0
        0x1fff3fe2:    1c64        d.      ADDS     r4,r4,#1
        0x1fff3fe4:    b2e4        ..      UXTB     r4,r4
        0x1fff3fe6:    2c0a        .,      CMP      r4,#0xa
        0x1fff3fe8:    d3f5        ..      BCC      0x1fff3fd6 ; hal_low_power_io_init + 18
        0x1fff3fea:    4810        .H      LDR      r0,[pc,#64] ; [0x1fff402c] = 0x4000f000
        0x1fff3fec:    6941        Ai      LDR      r1,[r0,#0x14]
        0x1fff3fee:    00c2        ..      LSLS     r2,r0,#3
        0x1fff3ff0:    4391        .C      BICS     r1,r1,r2
        0x1fff3ff2:    2205        ."      MOVS     r2,#5
        0x1fff3ff4:    0412        ..      LSLS     r2,r2,#16
        0x1fff3ff6:    1889        ..      ADDS     r1,r1,r2
        0x1fff3ff8:    6141        Aa      STR      r1,[r0,#0x14]
        0x1fff3ffa:    6941        Ai      LDR      r1,[r0,#0x14]
        0x1fff3ffc:    2201        ."      MOVS     r2,#1
        0x1fff3ffe:    0652        R.      LSLS     r2,r2,#25
        0x1fff4000:    4311        .C      ORRS     r1,r1,r2
        0x1fff4002:    6141        Aa      STR      r1,[r0,#0x14]
        0x1fff4004:    6941        Ai      LDR      r1,[r0,#0x14]
        0x1fff4006:    2203        ."      MOVS     r2,#3
        0x1fff4008:    0552        R.      LSLS     r2,r2,#21
        0x1fff400a:    4391        .C      BICS     r1,r1,r2
        0x1fff400c:    2201        ."      MOVS     r2,#1
        0x1fff400e:    0552        R.      LSLS     r2,r2,#21
        0x1fff4010:    1889        ..      ADDS     r1,r1,r2
        0x1fff4012:    6141        Aa      STR      r1,[r0,#0x14]
        0x1fff4014:    2003        .       MOVS     r0,#3
        0x1fff4016:    f000f815    ....    BL       hal_pwrmgr_RAM_retention ; 0x1fff4044
        0x1fff401a:    f000f82f    ../.    BL       hal_pwrmgr_RAM_retention_set ; 0x1fff407c
        0x1fff401e:    f000f807    ....    BL       hal_pwrmgr_LowCurrentLdo_enable ; 0x1fff4030
        0x1fff4022:    b005        ..      ADD      sp,sp,#0x14
        0x1fff4024:    bd30        0.      POP      {r4,r5,pc}
    $d
        0x1fff4026:    0000        ..      DCW    0
        0x1fff4028:    1fff6b58    Xk..    DCD    536832856
        0x1fff402c:    4000f000    ...@    DCD    1073803264
    $t
    i.hal_pwrmgr_LowCurrentLdo_enable
    hal_pwrmgr_LowCurrentLdo_enable
        0x1fff4030:    4803        .H      LDR      r0,[pc,#12] ; [0x1fff4040] = 0x4000f000
        0x1fff4032:    6941        Ai      LDR      r1,[r0,#0x14]
        0x1fff4034:    2201        ."      MOVS     r2,#1
        0x1fff4036:    0692        ..      LSLS     r2,r2,#26
        0x1fff4038:    4391        .C      BICS     r1,r1,r2
        0x1fff403a:    6141        Aa      STR      r1,[r0,#0x14]
        0x1fff403c:    200f        .       MOVS     r0,#0xf
        0x1fff403e:    4770        pG      BX       lr
    $d
        0x1fff4040:    4000f000    ...@    DCD    1073803264
    $t
    i.hal_pwrmgr_RAM_retention
    hal_pwrmgr_RAM_retention
        0x1fff4044:    4907        .I      LDR      r1,[pc,#28] ; [0x1fff4064] = 0x1fff6d91
        0x1fff4046:    0943        C.      LSRS     r3,r0,#5
        0x1fff4048:    780a        .x      LDRB     r2,[r1,#0]
        0x1fff404a:    08d2        ..      LSRS     r2,r2,#3
        0x1fff404c:    00d2        ..      LSLS     r2,r2,#3
        0x1fff404e:    2b00        .+      CMP      r3,#0
        0x1fff4050:    d002        ..      BEQ      0x1fff4058 ; hal_pwrmgr_RAM_retention + 20
        0x1fff4052:    700a        .p      STRB     r2,[r1,#0]
        0x1fff4054:    2006        .       MOVS     r0,#6
        0x1fff4056:    4770        pG      BX       lr
        0x1fff4058:    0740        @.      LSLS     r0,r0,#29
        0x1fff405a:    0f40        @.      LSRS     r0,r0,#29
        0x1fff405c:    4302        .C      ORRS     r2,r2,r0
        0x1fff405e:    700a        .p      STRB     r2,[r1,#0]
        0x1fff4060:    2000        .       MOVS     r0,#0
        0x1fff4062:    4770        pG      BX       lr
    $d
        0x1fff4064:    1fff6d91    .m..    DCD    536833425
    $t
    i.hal_pwrmgr_RAM_retention_clr
    hal_pwrmgr_RAM_retention_clr
        0x1fff4068:    4803        .H      LDR      r0,[pc,#12] ; [0x1fff4078] = 0x4000f000
        0x1fff406a:    69c1        .i      LDR      r1,[r0,#0x1c]
        0x1fff406c:    221f        ."      MOVS     r2,#0x1f
        0x1fff406e:    0452        R.      LSLS     r2,r2,#17
        0x1fff4070:    4391        .C      BICS     r1,r1,r2
        0x1fff4072:    61c1        .a      STR      r1,[r0,#0x1c]
        0x1fff4074:    2000        .       MOVS     r0,#0
        0x1fff4076:    4770        pG      BX       lr
    $d
        0x1fff4078:    4000f000    ...@    DCD    1073803264
    $t
    i.hal_pwrmgr_RAM_retention_set
    hal_pwrmgr_RAM_retention_set
        0x1fff407c:    4806        .H      LDR      r0,[pc,#24] ; [0x1fff4098] = 0x4000f000
        0x1fff407e:    69c1        .i      LDR      r1,[r0,#0x1c]
        0x1fff4080:    221f        ."      MOVS     r2,#0x1f
        0x1fff4082:    0452        R.      LSLS     r2,r2,#17
        0x1fff4084:    4391        .C      BICS     r1,r1,r2
        0x1fff4086:    4a05        .J      LDR      r2,[pc,#20] ; [0x1fff409c] = 0x1fff6d91
        0x1fff4088:    7812        .x      LDRB     r2,[r2,#0]
        0x1fff408a:    0752        R.      LSLS     r2,r2,#29
        0x1fff408c:    0b12        ..      LSRS     r2,r2,#12
        0x1fff408e:    4311        .C      ORRS     r1,r1,r2
        0x1fff4090:    61c1        .a      STR      r1,[r0,#0x1c]
        0x1fff4092:    2000        .       MOVS     r0,#0
        0x1fff4094:    4770        pG      BX       lr
    $d
        0x1fff4096:    0000        ..      DCW    0
        0x1fff4098:    4000f000    ...@    DCD    1073803264
        0x1fff409c:    1fff6d91    .m..    DCD    536833425
    $t
    i.hal_pwrmgr_init
    hal_pwrmgr_init
        0x1fff40a0:    b510        ..      PUSH     {r4,lr}
        0x1fff40a2:    2178        x!      MOVS     r1,#0x78
        0x1fff40a4:    4808        .H      LDR      r0,[pc,#32] ; [0x1fff40c8] = 0x1fff7634
        0x1fff40a6:    f7fdfd7b    ..{.    BL       $Ven$TT$L$$__aeabi_memclr4 ; 0x1fff1ba0
        0x1fff40aa:    4808        .H      LDR      r0,[pc,#32] ; [0x1fff40cc] = 0x1fff6d90
        0x1fff40ac:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff40ae:    2801        .(      CMP      r0,#1
        0x1fff40b0:    d003        ..      BEQ      0x1fff40ba ; hal_pwrmgr_init + 26
        0x1fff40b2:    2802        .(      CMP      r0,#2
        0x1fff40b4:    d004        ..      BEQ      0x1fff40c0 ; hal_pwrmgr_init + 32
        0x1fff40b6:    2804        .(      CMP      r0,#4
        0x1fff40b8:    d104        ..      BNE      0x1fff40c4 ; hal_pwrmgr_init + 36
        0x1fff40ba:    f7fdfd7d    ..}.    BL       $Ven$TT$L$$disableSleep ; 0x1fff1bb8
        0x1fff40be:    e001        ..      B        0x1fff40c4 ; hal_pwrmgr_init + 36
        0x1fff40c0:    f7fdfc54    ..T.    BL       $Ven$TT$L$$enableSleep ; 0x1fff196c
        0x1fff40c4:    2000        .       MOVS     r0,#0
        0x1fff40c6:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff40c8:    1fff7634    4v..    DCD    536835636
        0x1fff40cc:    1fff6d90    .m..    DCD    536833424
    $t
    i.hal_pwrmgr_lock
    hal_pwrmgr_lock
        0x1fff40d0:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff40d2:    4605        .F      MOV      r5,r0
        0x1fff40d4:    4812        .H      LDR      r0,[pc,#72] ; [0x1fff4120] = 0x1fff6d90
        0x1fff40d6:    2412        .$      MOVS     r4,#0x12
        0x1fff40d8:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff40da:    2801        .(      CMP      r0,#1
        0x1fff40dc:    d015        ..      BEQ      0x1fff410a ; hal_pwrmgr_lock + 58
        0x1fff40de:    2804        .(      CMP      r0,#4
        0x1fff40e0:    d013        ..      BEQ      0x1fff410a ; hal_pwrmgr_lock + 58
        0x1fff40e2:    f7fdfc0d    ....    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff1900
        0x1fff40e6:    480f        .H      LDR      r0,[pc,#60] ; [0x1fff4124] = 0x1fff7634
        0x1fff40e8:    2100        .!      MOVS     r1,#0
        0x1fff40ea:    220c        ."      MOVS     r2,#0xc
        0x1fff40ec:    434a        JC      MULS     r2,r1,r2
        0x1fff40ee:    5c82        .\      LDRB     r2,[r0,r2]
        0x1fff40f0:    2a00        .*      CMP      r2,#0
        0x1fff40f2:    d011        ..      BEQ      0x1fff4118 ; hal_pwrmgr_lock + 72
        0x1fff40f4:    42aa        .B      CMP      r2,r5
        0x1fff40f6:    d10c        ..      BNE      0x1fff4112 ; hal_pwrmgr_lock + 66
        0x1fff40f8:    230c        .#      MOVS     r3,#0xc
        0x1fff40fa:    4359        YC      MULS     r1,r3,r1
        0x1fff40fc:    2201        ."      MOVS     r2,#1
        0x1fff40fe:    1808        ..      ADDS     r0,r1,r0
        0x1fff4100:    7042        Bp      STRB     r2,[r0,#1]
        0x1fff4102:    f7fdfd59    ..Y.    BL       $Ven$TT$L$$disableSleep ; 0x1fff1bb8
        0x1fff4106:    2400        .$      MOVS     r4,#0
        0x1fff4108:    e006        ..      B        0x1fff4118 ; hal_pwrmgr_lock + 72
        0x1fff410a:    f7fdfd55    ..U.    BL       $Ven$TT$L$$disableSleep ; 0x1fff1bb8
        0x1fff410e:    2000        .       MOVS     r0,#0
        0x1fff4110:    bd70        p.      POP      {r4-r6,pc}
        0x1fff4112:    1c49        I.      ADDS     r1,r1,#1
        0x1fff4114:    290a        .)      CMP      r1,#0xa
        0x1fff4116:    dbe8        ..      BLT      0x1fff40ea ; hal_pwrmgr_lock + 26
        0x1fff4118:    f7fdfbfe    ....    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff1918
        0x1fff411c:    4620         F      MOV      r0,r4
        0x1fff411e:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x1fff4120:    1fff6d90    .m..    DCD    536833424
        0x1fff4124:    1fff7634    4v..    DCD    536835636
    $t
    i.hal_pwrmgr_register
    hal_pwrmgr_register
        0x1fff4128:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff412a:    4c12        .L      LDR      r4,[pc,#72] ; [0x1fff4174] = 0x1fff7634
        0x1fff412c:    2300        .#      MOVS     r3,#0
        0x1fff412e:    250c        .%      MOVS     r5,#0xc
        0x1fff4130:    435d        ]C      MULS     r5,r3,r5
        0x1fff4132:    5d65        e]      LDRB     r5,[r4,r5]
        0x1fff4134:    4285        .B      CMP      r5,r0
        0x1fff4136:    d101        ..      BNE      0x1fff413c ; hal_pwrmgr_register + 20
        0x1fff4138:    2007        .       MOVS     r0,#7
        0x1fff413a:    bd70        p.      POP      {r4-r6,pc}
        0x1fff413c:    2d00        .-      CMP      r5,#0
        0x1fff413e:    d004        ..      BEQ      0x1fff414a ; hal_pwrmgr_register + 34
        0x1fff4140:    1c5b        [.      ADDS     r3,r3,#1
        0x1fff4142:    2b0a        .+      CMP      r3,#0xa
        0x1fff4144:    dbf3        ..      BLT      0x1fff412e ; hal_pwrmgr_register + 6
        0x1fff4146:    2003        .       MOVS     r0,#3
        0x1fff4148:    bd70        p.      POP      {r4-r6,pc}
        0x1fff414a:    250c        .%      MOVS     r5,#0xc
        0x1fff414c:    436b        kC      MULS     r3,r5,r3
        0x1fff414e:    191b        ..      ADDS     r3,r3,r4
        0x1fff4150:    4c09        .L      LDR      r4,[pc,#36] ; [0x1fff4178] = 0x1fff6d91
        0x1fff4152:    7825        %x      LDRB     r5,[r4,#0]
        0x1fff4154:    076e        n.      LSLS     r6,r5,#29
        0x1fff4156:    08ed        ..      LSRS     r5,r5,#3
        0x1fff4158:    1c6d        m.      ADDS     r5,r5,#1
        0x1fff415a:    0f76        v.      LSRS     r6,r6,#29
        0x1fff415c:    00ed        ..      LSLS     r5,r5,#3
        0x1fff415e:    432e        .C      ORRS     r6,r6,r5
        0x1fff4160:    7026        &p      STRB     r6,[r4,#0]
        0x1fff4162:    2b00        .+      CMP      r3,#0
        0x1fff4164:    d0ef        ..      BEQ      0x1fff4146 ; hal_pwrmgr_register + 30
        0x1fff4166:    2400        .$      MOVS     r4,#0
        0x1fff4168:    705c        \p      STRB     r4,[r3,#1]
        0x1fff416a:    7018        .p      STRB     r0,[r3,#0]
        0x1fff416c:    609a        .`      STR      r2,[r3,#8]
        0x1fff416e:    4620         F      MOV      r0,r4
        0x1fff4170:    6059        Y`      STR      r1,[r3,#4]
        0x1fff4172:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x1fff4174:    1fff7634    4v..    DCD    536835636
        0x1fff4178:    1fff6d91    .m..    DCD    536833425
    $t
    i.hal_pwrmgr_sleep_process
    hal_pwrmgr_sleep_process
    __tagsym$$used
        0x1fff417c:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff417e:    f7ffff7d    ..}.    BL       hal_pwrmgr_RAM_retention_set ; 0x1fff407c
        0x1fff4182:    480b        .H      LDR      r0,[pc,#44] ; [0x1fff41b0] = 0x1fff6d91
        0x1fff4184:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff4186:    08c4        ..      LSRS     r4,r0,#3
        0x1fff4188:    1e64        d.      SUBS     r4,r4,#1
        0x1fff418a:    d40d        ..      BMI      0x1fff41a8 ; hal_pwrmgr_sleep_process + 44
        0x1fff418c:    4d09        .M      LDR      r5,[pc,#36] ; [0x1fff41b4] = 0x1fff7634
        0x1fff418e:    4620         F      MOV      r0,r4
        0x1fff4190:    210c        .!      MOVS     r1,#0xc
        0x1fff4192:    4348        HC      MULS     r0,r1,r0
        0x1fff4194:    5c29        )\      LDRB     r1,[r5,r0]
        0x1fff4196:    2900        .)      CMP      r1,#0
        0x1fff4198:    d008        ..      BEQ      0x1fff41ac ; hal_pwrmgr_sleep_process + 48
        0x1fff419a:    1940        @.      ADDS     r0,r0,r5
        0x1fff419c:    6840        @h      LDR      r0,[r0,#4]
        0x1fff419e:    2800        .(      CMP      r0,#0
        0x1fff41a0:    d000        ..      BEQ      0x1fff41a4 ; hal_pwrmgr_sleep_process + 40
        0x1fff41a2:    4780        .G      BLX      r0
        0x1fff41a4:    1e64        d.      SUBS     r4,r4,#1
        0x1fff41a6:    d5f2        ..      BPL      0x1fff418e ; hal_pwrmgr_sleep_process + 18
        0x1fff41a8:    2000        .       MOVS     r0,#0
        0x1fff41aa:    bd70        p.      POP      {r4-r6,pc}
        0x1fff41ac:    2012        .       MOVS     r0,#0x12
        0x1fff41ae:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x1fff41b0:    1fff6d91    .m..    DCD    536833425
        0x1fff41b4:    1fff7634    4v..    DCD    536835636
    $t
    i.hal_pwrmgr_unlock
    hal_pwrmgr_unlock
        0x1fff41b8:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff41ba:    4605        .F      MOV      r5,r0
        0x1fff41bc:    4816        .H      LDR      r0,[pc,#88] ; [0x1fff4218] = 0x1fff6d90
        0x1fff41be:    2400        .$      MOVS     r4,#0
        0x1fff41c0:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff41c2:    2801        .(      CMP      r0,#1
        0x1fff41c4:    d011        ..      BEQ      0x1fff41ea ; hal_pwrmgr_unlock + 50
        0x1fff41c6:    2804        .(      CMP      r0,#4
        0x1fff41c8:    d00f        ..      BEQ      0x1fff41ea ; hal_pwrmgr_unlock + 50
        0x1fff41ca:    f7fdfb99    ....    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff1900
        0x1fff41ce:    2100        .!      MOVS     r1,#0
        0x1fff41d0:    4a12        .J      LDR      r2,[pc,#72] ; [0x1fff421c] = 0x1fff7634
        0x1fff41d2:    460b        .F      MOV      r3,r1
        0x1fff41d4:    4608        .F      MOV      r0,r1
        0x1fff41d6:    260c        .&      MOVS     r6,#0xc
        0x1fff41d8:    4370        pC      MULS     r0,r6,r0
        0x1fff41da:    5c16        .\      LDRB     r6,[r2,r0]
        0x1fff41dc:    2e00        ..      CMP      r6,#0
        0x1fff41de:    d00f        ..      BEQ      0x1fff4200 ; hal_pwrmgr_unlock + 72
        0x1fff41e0:    42ae        .B      CMP      r6,r5
        0x1fff41e2:    d105        ..      BNE      0x1fff41f0 ; hal_pwrmgr_unlock + 56
        0x1fff41e4:    1880        ..      ADDS     r0,r0,r2
        0x1fff41e6:    7043        Cp      STRB     r3,[r0,#1]
        0x1fff41e8:    e007        ..      B        0x1fff41fa ; hal_pwrmgr_unlock + 66
        0x1fff41ea:    f7fdfce5    ....    BL       $Ven$TT$L$$disableSleep ; 0x1fff1bb8
        0x1fff41ee:    e00d        ..      B        0x1fff420c ; hal_pwrmgr_unlock + 84
        0x1fff41f0:    1880        ..      ADDS     r0,r0,r2
        0x1fff41f2:    7840        @x      LDRB     r0,[r0,#1]
        0x1fff41f4:    2800        .(      CMP      r0,#0
        0x1fff41f6:    d000        ..      BEQ      0x1fff41fa ; hal_pwrmgr_unlock + 66
        0x1fff41f8:    1c64        d.      ADDS     r4,r4,#1
        0x1fff41fa:    1c49        I.      ADDS     r1,r1,#1
        0x1fff41fc:    290a        .)      CMP      r1,#0xa
        0x1fff41fe:    dbe9        ..      BLT      0x1fff41d4 ; hal_pwrmgr_unlock + 28
        0x1fff4200:    2c00        .,      CMP      r4,#0
        0x1fff4202:    d005        ..      BEQ      0x1fff4210 ; hal_pwrmgr_unlock + 88
        0x1fff4204:    f7fdfcd8    ....    BL       $Ven$TT$L$$disableSleep ; 0x1fff1bb8
        0x1fff4208:    f7fdfb86    ....    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff1918
        0x1fff420c:    2000        .       MOVS     r0,#0
        0x1fff420e:    bd70        p.      POP      {r4-r6,pc}
        0x1fff4210:    f7fdfbac    ....    BL       $Ven$TT$L$$enableSleep ; 0x1fff196c
        0x1fff4214:    e7f8        ..      B        0x1fff4208 ; hal_pwrmgr_unlock + 80
    $d
        0x1fff4216:    0000        ..      DCW    0
        0x1fff4218:    1fff6d90    .m..    DCD    536833424
        0x1fff421c:    1fff7634    4v..    DCD    536835636
    $t
    i.hal_pwrmgr_wakeup_process
    hal_pwrmgr_wakeup_process
    __tagsym$$used
        0x1fff4220:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff4222:    481c        .H      LDR      r0,[pc,#112] ; [0x1fff4294] = 0x1fff6d90
        0x1fff4224:    2101        .!      MOVS     r1,#1
        0x1fff4226:    0789        ..      LSLS     r1,r1,#30
        0x1fff4228:    6842        Bh      LDR      r2,[r0,#4]
        0x1fff422a:    608a        .`      STR      r2,[r1,#8]
        0x1fff422c:    6882        .h      LDR      r2,[r0,#8]
        0x1fff422e:    2301        .#      MOVS     r3,#1
        0x1fff4230:    431a        .C      ORRS     r2,r2,r3
        0x1fff4232:    614a        Ja      STR      r2,[r1,#0x14]
        0x1fff4234:    4918        .I      LDR      r1,[pc,#96] ; [0x1fff4298] = 0x4000f080
        0x1fff4236:    6b0a        .k      LDR      r2,[r1,#0x30]
        0x1fff4238:    60c2        .`      STR      r2,[r0,#0xc]
        0x1fff423a:    6b49        Ik      LDR      r1,[r1,#0x34]
        0x1fff423c:    6101        .a      STR      r1,[r0,#0x10]
        0x1fff423e:    2100        .!      MOVS     r1,#0
        0x1fff4240:    2004        .       MOVS     r0,#4
        0x1fff4242:    f7fefd6d    ..m.    BL       __NVIC_SetPriority ; 0x1fff2d20
        0x1fff4246:    2101        .!      MOVS     r1,#1
        0x1fff4248:    2014        .       MOVS     r0,#0x14
        0x1fff424a:    f7fefd69    ..i.    BL       __NVIC_SetPriority ; 0x1fff2d20
        0x1fff424e:    2101        .!      MOVS     r1,#1
        0x1fff4250:    2015        .       MOVS     r0,#0x15
        0x1fff4252:    f7fefd65    ..e.    BL       __NVIC_SetPriority ; 0x1fff2d20
        0x1fff4256:    2101        .!      MOVS     r1,#1
        0x1fff4258:    2017        .       MOVS     r0,#0x17
        0x1fff425a:    f7fefd61    ..a.    BL       __NVIC_SetPriority ; 0x1fff2d20
        0x1fff425e:    f001f9ed    ....    BL       peripheral_interrupt_restore_default ; 0x1fff563c
        0x1fff4262:    4e0c        .N      LDR      r6,[pc,#48] ; [0x1fff4294] = 0x1fff6d90
        0x1fff4264:    2400        .$      MOVS     r4,#0
        0x1fff4266:    4d0d        .M      LDR      r5,[pc,#52] ; [0x1fff429c] = 0x1fff7634
        0x1fff4268:    1c76        v.      ADDS     r6,r6,#1
        0x1fff426a:    e00b        ..      B        0x1fff4284 ; hal_pwrmgr_wakeup_process + 100
        0x1fff426c:    4620         F      MOV      r0,r4
        0x1fff426e:    210c        .!      MOVS     r1,#0xc
        0x1fff4270:    4348        HC      MULS     r0,r1,r0
        0x1fff4272:    5c29        )\      LDRB     r1,[r5,r0]
        0x1fff4274:    2900        .)      CMP      r1,#0
        0x1fff4276:    d00b        ..      BEQ      0x1fff4290 ; hal_pwrmgr_wakeup_process + 112
        0x1fff4278:    1940        @.      ADDS     r0,r0,r5
        0x1fff427a:    6880        .h      LDR      r0,[r0,#8]
        0x1fff427c:    2800        .(      CMP      r0,#0
        0x1fff427e:    d000        ..      BEQ      0x1fff4282 ; hal_pwrmgr_wakeup_process + 98
        0x1fff4280:    4780        .G      BLX      r0
        0x1fff4282:    1c64        d.      ADDS     r4,r4,#1
        0x1fff4284:    7830        0x      LDRB     r0,[r6,#0]
        0x1fff4286:    08c0        ..      LSRS     r0,r0,#3
        0x1fff4288:    42a0        .B      CMP      r0,r4
        0x1fff428a:    dcef        ..      BGT      0x1fff426c ; hal_pwrmgr_wakeup_process + 76
        0x1fff428c:    2000        .       MOVS     r0,#0
        0x1fff428e:    bd70        p.      POP      {r4-r6,pc}
        0x1fff4290:    2012        .       MOVS     r0,#0x12
        0x1fff4292:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x1fff4294:    1fff6d90    .m..    DCD    536833424
        0x1fff4298:    4000f080    ...@    DCD    1073803392
        0x1fff429c:    1fff7634    4v..    DCD    536835636
    $t
    i.hal_rfphy_init
    hal_rfphy_init
        0x1fff42a0:    b510        ..      PUSH     {r4,lr}
        0x1fff42a2:    4915        .I      LDR      r1,[pc,#84] ; [0x1fff42f8] = 0x1fff0a48
        0x1fff42a4:    200a        .       MOVS     r0,#0xa
        0x1fff42a6:    7008        .p      STRB     r0,[r1,#0]
        0x1fff42a8:    4914        .I      LDR      r1,[pc,#80] ; [0x1fff42fc] = 0x1fff0a49
        0x1fff42aa:    2001        .       MOVS     r0,#1
        0x1fff42ac:    7008        .p      STRB     r0,[r1,#0]
        0x1fff42ae:    4914        .I      LDR      r1,[pc,#80] ; [0x1fff4300] = 0x1fff0a68
        0x1fff42b0:    2000        .       MOVS     r0,#0
        0x1fff42b2:    7008        .p      STRB     r0,[r1,#0]
        0x1fff42b4:    4813        .H      LDR      r0,[pc,#76] ; [0x1fff4304] = 0x4000f080
        0x1fff42b6:    6bc1        .k      LDR      r1,[r0,#0x3c]
        0x1fff42b8:    0949        I.      LSRS     r1,r1,#5
        0x1fff42ba:    0149        I.      LSLS     r1,r1,#5
        0x1fff42bc:    3109        .1      ADDS     r1,r1,#9
        0x1fff42be:    63c1        .c      STR      r1,[r0,#0x3c]
        0x1fff42c0:    6bc1        .k      LDR      r1,[r0,#0x3c]
        0x1fff42c2:    2260        `"      MOVS     r2,#0x60
        0x1fff42c4:    4311        .C      ORRS     r1,r1,r2
        0x1fff42c6:    63c1        .c      STR      r1,[r0,#0x3c]
        0x1fff42c8:    f000f820    .. .    BL       hal_rom_boot_init ; 0x1fff430c
        0x1fff42cc:    2100        .!      MOVS     r1,#0
        0x1fff42ce:    2004        .       MOVS     r0,#4
        0x1fff42d0:    f7fefce2    ....    BL       __NVIC_SetPriority ; 0x1fff2c98
        0x1fff42d4:    2101        .!      MOVS     r1,#1
        0x1fff42d6:    2014        .       MOVS     r0,#0x14
        0x1fff42d8:    f7fefcde    ....    BL       __NVIC_SetPriority ; 0x1fff2c98
        0x1fff42dc:    2101        .!      MOVS     r1,#1
        0x1fff42de:    2015        .       MOVS     r0,#0x15
        0x1fff42e0:    f7fefcda    ....    BL       __NVIC_SetPriority ; 0x1fff2c98
        0x1fff42e4:    2101        .!      MOVS     r1,#1
        0x1fff42e6:    2017        .       MOVS     r0,#0x17
        0x1fff42e8:    f7fefcd6    ....    BL       __NVIC_SetPriority ; 0x1fff2c98
        0x1fff42ec:    2101        .!      MOVS     r1,#1
        0x1fff42ee:    0289        ..      LSLS     r1,r1,#10
        0x1fff42f0:    4805        .H      LDR      r0,[pc,#20] ; [0x1fff4308] = 0x1fff6e40
        0x1fff42f2:    f7fdfc67    ..g.    BL       $Ven$TT$L$$osal_mem_set_heap ; 0x1fff1bc4
        0x1fff42f6:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff42f8:    1fff0a48    H...    DCD    536808008
        0x1fff42fc:    1fff0a49    I...    DCD    536808009
        0x1fff4300:    1fff0a68    h...    DCD    536808040
        0x1fff4304:    4000f080    ...@    DCD    1073803392
        0x1fff4308:    1fff6e40    @n..    DCD    536833600
    $t
    i.hal_rom_boot_init
    hal_rom_boot_init
        0x1fff430c:    b510        ..      PUSH     {r4,lr}
        0x1fff430e:    f7feff05    ....    BL       _rom_sec_boot_init ; 0x1fff311c
        0x1fff4312:    bd10        ..      POP      {r4,pc}
    i.hal_rtc_clock_config
    hal_rtc_clock_config
        0x1fff4314:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff4316:    2540        @%      MOVS     r5,#0x40
        0x1fff4318:    4c1c        .L      LDR      r4,[pc,#112] ; [0x1fff438c] = 0x4000f000
        0x1fff431a:    2801        .(      CMP      r0,#1
        0x1fff431c:    d002        ..      BEQ      0x1fff4324 ; hal_rtc_clock_config + 16
        0x1fff431e:    2800        .(      CMP      r0,#0
        0x1fff4320:    d011        ..      BEQ      0x1fff4346 ; hal_rtc_clock_config + 50
        0x1fff4322:    e027        '.      B        0x1fff4374 ; hal_rtc_clock_config + 96
        0x1fff4324:    6960        `i      LDR      r0,[r4,#0x14]
        0x1fff4326:    2105        .!      MOVS     r1,#5
        0x1fff4328:    0140        @.      LSLS     r0,r0,#5
        0x1fff432a:    0940        @.      LSRS     r0,r0,#5
        0x1fff432c:    06c9        ..      LSLS     r1,r1,#27
        0x1fff432e:    1840        @.      ADDS     r0,r0,r1
        0x1fff4330:    6160        `a      STR      r0,[r4,#0x14]
        0x1fff4332:    69e0        .i      LDR      r0,[r4,#0x1c]
        0x1fff4334:    4916        .I      LDR      r1,[pc,#88] ; [0x1fff4390] = 0xfffe007f
        0x1fff4336:    4008        .@      ANDS     r0,r0,r1
        0x1fff4338:    4916        .I      LDR      r1,[pc,#88] ; [0x1fff4394] = 0x1fd80
        0x1fff433a:    1840        @.      ADDS     r0,r0,r1
        0x1fff433c:    61e0        .a      STR      r0,[r4,#0x1c]
        0x1fff433e:    69e0        .i      LDR      r0,[r4,#0x1c]
        0x1fff4340:    4328        (C      ORRS     r0,r0,r5
        0x1fff4342:    61e0        .a      STR      r0,[r4,#0x1c]
        0x1fff4344:    e016        ..      B        0x1fff4374 ; hal_rtc_clock_config + 96
        0x1fff4346:    2100        .!      MOVS     r1,#0
        0x1fff4348:    200a        .       MOVS     r0,#0xa
        0x1fff434a:    f7fffc39    ..9.    BL       hal_gpio_pull_set ; 0x1fff3bc0
        0x1fff434e:    2100        .!      MOVS     r1,#0
        0x1fff4350:    200b        .       MOVS     r0,#0xb
        0x1fff4352:    f7fffc35    ..5.    BL       hal_gpio_pull_set ; 0x1fff3bc0
        0x1fff4356:    69e0        .i      LDR      r0,[r4,#0x1c]
        0x1fff4358:    2103        .!      MOVS     r1,#3
        0x1fff435a:    0209        ..      LSLS     r1,r1,#8
        0x1fff435c:    4308        .C      ORRS     r0,r0,r1
        0x1fff435e:    61e0        .a      STR      r0,[r4,#0x1c]
        0x1fff4360:    69e0        .i      LDR      r0,[r4,#0x1c]
        0x1fff4362:    43a8        .C      BICS     r0,r0,r5
        0x1fff4364:    61e0        .a      STR      r0,[r4,#0x1c]
        0x1fff4366:    6960        `i      LDR      r0,[r4,#0x14]
        0x1fff4368:    210b        .!      MOVS     r1,#0xb
        0x1fff436a:    0140        @.      LSLS     r0,r0,#5
        0x1fff436c:    0940        @.      LSRS     r0,r0,#5
        0x1fff436e:    0709        ..      LSLS     r1,r1,#28
        0x1fff4370:    1840        @.      ADDS     r0,r0,r1
        0x1fff4372:    6160        `a      STR      r0,[r4,#0x14]
        0x1fff4374:    6960        `i      LDR      r0,[r4,#0x14]
        0x1fff4376:    2101        .!      MOVS     r1,#1
        0x1fff4378:    0709        ..      LSLS     r1,r1,#28
        0x1fff437a:    4308        .C      ORRS     r0,r0,r1
        0x1fff437c:    6160        `a      STR      r0,[r4,#0x14]
        0x1fff437e:    69a0        .i      LDR      r0,[r4,#0x18]
        0x1fff4380:    2103        .!      MOVS     r1,#3
        0x1fff4382:    0449        I.      LSLS     r1,r1,#17
        0x1fff4384:    4388        .C      BICS     r0,r0,r1
        0x1fff4386:    61a0        .a      STR      r0,[r4,#0x18]
        0x1fff4388:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x1fff438a:    0000        ..      DCW    0
        0x1fff438c:    4000f000    ...@    DCD    1073803264
        0x1fff4390:    fffe007f    ....    DCD    4294836351
        0x1fff4394:    0001fd80    ....    DCD    130432
    $t
    i.hal_spif_cache_init
    hal_spif_cache_init
        0x1fff4398:    b510        ..      PUSH     {r4,lr}
        0x1fff439a:    4905        .I      LDR      r1,[pc,#20] ; [0x1fff43b0] = 0x1fff6db0
        0x1fff439c:    6048        H`      STR      r0,[r1,#4]
        0x1fff439e:    f000f855    ..U.    BL       hw_spif_cache_config ; 0x1fff444c
        0x1fff43a2:    4a04        .J      LDR      r2,[pc,#16] ; [0x1fff43b4] = 0x1fff444d
        0x1fff43a4:    2100        .!      MOVS     r1,#0
        0x1fff43a6:    2013        .       MOVS     r0,#0x13
        0x1fff43a8:    f7fffebe    ....    BL       hal_pwrmgr_register ; 0x1fff4128
        0x1fff43ac:    2000        .       MOVS     r0,#0
        0x1fff43ae:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff43b0:    1fff6db0    .m..    DCD    536833456
        0x1fff43b4:    1fff444d    MD..    DCD    536822861
    $t
    i.hal_system_clock_change_process
    hal_system_clock_change_process
        0x1fff43b8:    4802        .H      LDR      r0,[pc,#8] ; [0x1fff43c4] = 0x1fff0340
        0x1fff43ba:    6a00        .j      LDR      r0,[r0,#0x20]
        0x1fff43bc:    2800        .(      CMP      r0,#0
        0x1fff43be:    d000        ..      BEQ      0x1fff43c2 ; hal_system_clock_change_process + 10
        0x1fff43c0:    4700        .G      BX       r0
        0x1fff43c2:    4770        pG      BX       lr
    $d
        0x1fff43c4:    1fff0340    @...    DCD    536806208
    $t
    i.hal_uart_init
    hal_uart_init
        0x1fff43c8:    b5ff        ..      PUSH     {r0-r7,lr}
        0x1fff43ca:    b081        ..      SUB      sp,sp,#4
        0x1fff43cc:    9f0a        ..      LDR      r7,[sp,#0x28]
        0x1fff43ce:    4d14        .M      LDR      r5,[pc,#80] ; [0x1fff4420] = 0x1fff74c4
        0x1fff43d0:    017e        ~.      LSLS     r6,r7,#5
        0x1fff43d2:    5da8        .]      LDRB     r0,[r5,r6]
        0x1fff43d4:    2800        .(      CMP      r0,#0
        0x1fff43d6:    d002        ..      BEQ      0x1fff43de ; hal_uart_init + 22
        0x1fff43d8:    2011        .       MOVS     r0,#0x11
        0x1fff43da:    b005        ..      ADD      sp,sp,#0x14
        0x1fff43dc:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff43de:    4668        hF      MOV      r0,sp
        0x1fff43e0:    7b40        @{      LDRB     r0,[r0,#0xd]
        0x1fff43e2:    2800        .(      CMP      r0,#0
        0x1fff43e4:    d001        ..      BEQ      0x1fff43ea ; hal_uart_init + 34
        0x1fff43e6:    2005        .       MOVS     r0,#5
        0x1fff43e8:    e7f7        ..      B        0x1fff43da ; hal_uart_init + 18
        0x1fff43ea:    1974        t.      ADDS     r4,r6,r5
        0x1fff43ec:    2120         !      MOVS     r1,#0x20
        0x1fff43ee:    4620         F      MOV      r0,r4
        0x1fff43f0:    f7fdfbd6    ....    BL       $Ven$TT$L$$__aeabi_memclr4 ; 0x1fff1ba0
        0x1fff43f4:    a801        ..      ADD      r0,sp,#4
        0x1fff43f6:    c80f        ..      LDM      r0,{r0-r3}
        0x1fff43f8:    3410        .4      ADDS     r4,r4,#0x10
        0x1fff43fa:    c40f        ..      STM      r4!,{r0-r3}
        0x1fff43fc:    4638        8F      MOV      r0,r7
        0x1fff43fe:    f002f8ff    ....    BL       uart_hw_init ; 0x1fff6600
        0x1fff4402:    2001        .       MOVS     r0,#1
        0x1fff4404:    55a8        .U      STRB     r0,[r5,r6]
        0x1fff4406:    2f00        ./      CMP      r7,#0
        0x1fff4408:    d006        ..      BEQ      0x1fff4418 ; hal_uart_init + 80
        0x1fff440a:    4a06        .J      LDR      r2,[pc,#24] ; [0x1fff4424] = 0x1fff67b3
        0x1fff440c:    2100        .!      MOVS     r1,#0
        0x1fff440e:    2019        .       MOVS     r0,#0x19
        0x1fff4410:    f7fffe8a    ....    BL       hal_pwrmgr_register ; 0x1fff4128
        0x1fff4414:    2000        .       MOVS     r0,#0
        0x1fff4416:    e7e0        ..      B        0x1fff43da ; hal_uart_init + 18
        0x1fff4418:    2100        .!      MOVS     r1,#0
        0x1fff441a:    4a03        .J      LDR      r2,[pc,#12] ; [0x1fff4428] = 0x1fff67a9
        0x1fff441c:    2008        .       MOVS     r0,#8
        0x1fff441e:    e7f7        ..      B        0x1fff4410 ; hal_uart_init + 72
    $d
        0x1fff4420:    1fff74c4    .t..    DCD    536835268
        0x1fff4424:    1fff67b3    .g..    DCD    536831923
        0x1fff4428:    1fff67a9    .g..    DCD    536831913
    $t
    i.hal_uart_send_buff
    hal_uart_send_buff
        0x1fff442c:    b510        ..      PUSH     {r4,lr}
        0x1fff442e:    4c06        .L      LDR      r4,[pc,#24] ; [0x1fff4448] = 0x1fff74c4
        0x1fff4430:    0143        C.      LSLS     r3,r0,#5
        0x1fff4432:    191b        ..      ADDS     r3,r3,r4
        0x1fff4434:    7e9b        .~      LDRB     r3,[r3,#0x1a]
        0x1fff4436:    2b00        .+      CMP      r3,#0
        0x1fff4438:    d002        ..      BEQ      0x1fff4440 ; hal_uart_send_buff + 20
        0x1fff443a:    f002f843    ..C.    BL       txmit_buf_use_tx_buf ; 0x1fff64c4
        0x1fff443e:    bd10        ..      POP      {r4,pc}
        0x1fff4440:    f002f80a    ....    BL       txmit_buf_polling ; 0x1fff6458
        0x1fff4444:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff4446:    0000        ..      DCW    0
        0x1fff4448:    1fff74c4    .t..    DCD    536835268
    $t
    i.hw_spif_cache_config
    hw_spif_cache_config
        0x1fff444c:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff444e:    4823        #H      LDR      r0,[pc,#140] ; [0x1fff44dc] = 0x1fff0a4a
        0x1fff4450:    7801        .x      LDRB     r1,[r0,#0]
        0x1fff4452:    2902        .)      CMP      r1,#2
        0x1fff4454:    d901        ..      BLS      0x1fff445a ; hw_spif_cache_config + 14
        0x1fff4456:    2004        .       MOVS     r0,#4
        0x1fff4458:    e000        ..      B        0x1fff445c ; hw_spif_cache_config + 16
        0x1fff445a:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff445c:    4920         I      LDR      r1,[pc,#128] ; [0x1fff44e0] = 0x1fff6db4
        0x1fff445e:    4b21        !K      LDR      r3,[pc,#132] ; [0x1fff44e4] = 0x802006b
        0x1fff4460:    680a        .h      LDR      r2,[r1,#0]
        0x1fff4462:    2101        .!      MOVS     r1,#1
        0x1fff4464:    2400        .$      MOVS     r4,#0
        0x1fff4466:    429a        .B      CMP      r2,r3
        0x1fff4468:    d101        ..      BNE      0x1fff446e ; hw_spif_cache_config + 34
        0x1fff446a:    9100        ..      STR      r1,[sp,#0]
        0x1fff446c:    e000        ..      B        0x1fff4470 ; hw_spif_cache_config + 36
        0x1fff446e:    9400        ..      STR      r4,[sp,#0]
        0x1fff4470:    2300        .#      MOVS     r3,#0
        0x1fff4472:    2101        .!      MOVS     r1,#1
        0x1fff4474:    f7fdfbac    ....    BL       $Ven$TT$L$$spif_config ; 0x1fff1bd0
        0x1fff4478:    491c        .I      LDR      r1,[pc,#112] ; [0x1fff44ec] = 0x4000c800
        0x1fff447a:    481b        .H      LDR      r0,[pc,#108] ; [0x1fff44e8] = 0xff010005
        0x1fff447c:    6388        .c      STR      r0,[r1,#0x38]
        0x1fff447e:    481b        .H      LDR      r0,[pc,#108] ; [0x1fff44ec] = 0x4000c800
        0x1fff4480:    3040        @0      ADDS     r0,r0,#0x40
        0x1fff4482:    6104        .a      STR      r4,[r0,#0x10]
        0x1fff4484:    2110        .!      MOVS     r1,#0x10
        0x1fff4486:    6141        Aa      STR      r1,[r0,#0x14]
        0x1fff4488:    2602        .&      MOVS     r6,#2
        0x1fff448a:    6186        .a      STR      r6,[r0,#0x18]
        0x1fff448c:    0388        ..      LSLS     r0,r1,#14
        0x1fff448e:    4918        .I      LDR      r1,[pc,#96] ; [0x1fff44f0] = 0xe000e180
        0x1fff4490:    6008        .`      STR      r0,[r1,#0]
        0x1fff4492:    f3bf8f4f    ..O.    DSB      
        0x1fff4496:    f3bf8f6f    ..o.    ISB      
        0x1fff449a:    4816        .H      LDR      r0,[pc,#88] ; [0x1fff44f4] = 0xe000e410
        0x1fff449c:    6801        .h      LDR      r1,[r0,#0]
        0x1fff449e:    22ff        ."      MOVS     r2,#0xff
        0x1fff44a0:    0412        ..      LSLS     r2,r2,#16
        0x1fff44a2:    4391        .C      BICS     r1,r1,r2
        0x1fff44a4:    05b2        ..      LSLS     r2,r6,#22
        0x1fff44a6:    4311        .C      ORRS     r1,r1,r2
        0x1fff44a8:    6001        .`      STR      r1,[r0,#0]
        0x1fff44aa:    2064        d       MOVS     r0,#0x64
        0x1fff44ac:    9000        ..      STR      r0,[sp,#0]
        0x1fff44ae:    2041        A       MOVS     r0,#0x41
        0x1fff44b0:    f7fffa4a    ..J.    BL       hal_clk_gate_enable ; 0x1fff3948
        0x1fff44b4:    2040        @       MOVS     r0,#0x40
        0x1fff44b6:    f7fffa47    ..G.    BL       hal_clk_gate_enable ; 0x1fff3948
        0x1fff44ba:    0775        u.      LSLS     r5,r6,#29
        0x1fff44bc:    626e        nb      STR      r6,[r5,#0x24]
        0x1fff44be:    9800        ..      LDR      r0,[sp,#0]
        0x1fff44c0:    1e41        A.      SUBS     r1,r0,#1
        0x1fff44c2:    9100        ..      STR      r1,[sp,#0]
        0x1fff44c4:    d2fb        ..      BCS      0x1fff44be ; hw_spif_cache_config + 114
        0x1fff44c6:    2003        .       MOVS     r0,#3
        0x1fff44c8:    6268        hb      STR      r0,[r5,#0x24]
        0x1fff44ca:    f7fff9ff    ....    BL       hal_cache_tag_flush ; 0x1fff38cc
        0x1fff44ce:    62ac        .b      STR      r4,[r5,#0x28]
        0x1fff44d0:    4803        .H      LDR      r0,[pc,#12] ; [0x1fff44e0] = 0x1fff6db4
        0x1fff44d2:    1d00        ..      ADDS     r0,r0,#4
        0x1fff44d4:    f7fdfb82    ....    BL       $Ven$TT$L$$spif_read_id ; 0x1fff1bdc
        0x1fff44d8:    bdf8        ..      POP      {r3-r7,pc}
    $d
        0x1fff44da:    0000        ..      DCW    0
        0x1fff44dc:    1fff0a4a    J...    DCD    536808010
        0x1fff44e0:    1fff6db4    .m..    DCD    536833460
        0x1fff44e4:    0802006b    k...    DCD    134348907
        0x1fff44e8:    ff010005    ....    DCD    4278255621
        0x1fff44ec:    4000c800    ...@    DCD    1073793024
        0x1fff44f0:    e000e180    ....    DCD    3758154112
        0x1fff44f4:    e000e410    ....    DCD    3758154768
    $t
    i.isTimer5Running
    isTimer5Running
        0x1fff44f8:    4802        .H      LDR      r0,[pc,#8] ; [0x1fff4504] = 0x40001040
        0x1fff44fa:    6980        .i      LDR      r0,[r0,#0x18]
        0x1fff44fc:    07c0        ..      LSLS     r0,r0,#31
        0x1fff44fe:    d000        ..      BEQ      0x1fff4502 ; isTimer5Running + 10
        0x1fff4500:    2001        .       MOVS     r0,#1
        0x1fff4502:    4770        pG      BX       lr
    $d
        0x1fff4504:    40001040    @..@    DCD    1073745984
    $t
    i.l2capPocessFragmentTxData
    l2capPocessFragmentTxData
        0x1fff4508:    4770        pG      BX       lr
        0x1fff450a:    0000        ..      MOVS     r0,r0
    i.lib_efuse_load
    lib_efuse_load
        0x1fff450c:    b530        0.      PUSH     {r4,r5,lr}
        0x1fff450e:    c80a        ..      LDM      r0!,{r1,r3}
        0x1fff4510:    4a28        (J      LDR      r2,[pc,#160] ; [0x1fff45b4] = 0x1fff6e38
        0x1fff4512:    074c        L.      LSLS     r4,r1,#29
        0x1fff4514:    6810        .h      LDR      r0,[r2,#0]
        0x1fff4516:    0fa4        ..      LSRS     r4,r4,#30
        0x1fff4518:    0880        ..      LSRS     r0,r0,#2
        0x1fff451a:    0080        ..      LSLS     r0,r0,#2
        0x1fff451c:    4320         C      ORRS     r0,r0,r4
        0x1fff451e:    08cc        ..      LSRS     r4,r1,#3
        0x1fff4520:    07e5        ..      LSLS     r5,r4,#31
        0x1fff4522:    2404        .$      MOVS     r4,#4
        0x1fff4524:    6010        .`      STR      r0,[r2,#0]
        0x1fff4526:    2d00        .-      CMP      r5,#0
        0x1fff4528:    d03c        <.      BEQ      0x1fff45a4 ; lib_efuse_load + 152
        0x1fff452a:    43a0        .C      BICS     r0,r0,r4
        0x1fff452c:    2478        x$      MOVS     r4,#0x78
        0x1fff452e:    43a0        .C      BICS     r0,r0,r4
        0x1fff4530:    060c        ..      LSLS     r4,r1,#24
        0x1fff4532:    0f24        $.      LSRS     r4,r4,#28
        0x1fff4534:    00e4        ..      LSLS     r4,r4,#3
        0x1fff4536:    4320         C      ORRS     r0,r0,r4
        0x1fff4538:    240f        .$      MOVS     r4,#0xf
        0x1fff453a:    01e4        ..      LSLS     r4,r4,#7
        0x1fff453c:    43a0        .C      BICS     r0,r0,r4
        0x1fff453e:    050c        ..      LSLS     r4,r1,#20
        0x1fff4540:    0f24        $.      LSRS     r4,r4,#28
        0x1fff4542:    01e4        ..      LSLS     r4,r4,#7
        0x1fff4544:    4320         C      ORRS     r0,r0,r4
        0x1fff4546:    0b0c        ..      LSRS     r4,r1,#12
        0x1fff4548:    07e5        ..      LSLS     r5,r4,#31
        0x1fff454a:    4c1b        .L      LDR      r4,[pc,#108] ; [0x1fff45b8] = 0x800
        0x1fff454c:    6010        .`      STR      r0,[r2,#0]
        0x1fff454e:    d02b        +.      BEQ      0x1fff45a8 ; lib_efuse_load + 156
        0x1fff4550:    43a0        .C      BICS     r0,r0,r4
        0x1fff4552:    4c1a        .L      LDR      r4,[pc,#104] ; [0x1fff45bc] = 0xffc00fff
        0x1fff4554:    4020         @      ANDS     r0,r0,r4
        0x1fff4556:    024c        L.      LSLS     r4,r1,#9
        0x1fff4558:    0da4        ..      LSRS     r4,r4,#22
        0x1fff455a:    0324        $.      LSLS     r4,r4,#12
        0x1fff455c:    4320         C      ORRS     r0,r0,r4
        0x1fff455e:    240f        .$      MOVS     r4,#0xf
        0x1fff4560:    05a4        ..      LSLS     r4,r4,#22
        0x1fff4562:    43a0        .C      BICS     r0,r0,r4
        0x1fff4564:    014c        L.      LSLS     r4,r1,#5
        0x1fff4566:    0f24        $.      LSRS     r4,r4,#28
        0x1fff4568:    05a4        ..      LSLS     r4,r4,#22
        0x1fff456a:    4320         C      ORRS     r0,r0,r4
        0x1fff456c:    019c        ..      LSLS     r4,r3,#6
        0x1fff456e:    0ec9        ..      LSRS     r1,r1,#27
        0x1fff4570:    0864        d.      LSRS     r4,r4,#1
        0x1fff4572:    4321        !C      ORRS     r1,r1,r4
        0x1fff4574:    c203        ..      STM      r2!,{r0,r1}
        0x1fff4576:    0e99        ..      LSRS     r1,r3,#26
        0x1fff4578:    07cc        ..      LSLS     r4,r1,#31
        0x1fff457a:    2101        .!      MOVS     r1,#1
        0x1fff457c:    0689        ..      LSLS     r1,r1,#26
        0x1fff457e:    3a08        .:      SUBS     r2,r2,#8
        0x1fff4580:    2c00        .,      CMP      r4,#0
        0x1fff4582:    d013        ..      BEQ      0x1fff45ac ; lib_efuse_load + 160
        0x1fff4584:    4388        .C      BICS     r0,r0,r1
        0x1fff4586:    0ed9        ..      LSRS     r1,r3,#27
        0x1fff4588:    07cc        ..      LSLS     r4,r1,#31
        0x1fff458a:    490d        .I      LDR      r1,[pc,#52] ; [0x1fff45c0] = 0x8000000
        0x1fff458c:    6010        .`      STR      r0,[r2,#0]
        0x1fff458e:    d00f        ..      BEQ      0x1fff45b0 ; lib_efuse_load + 164
        0x1fff4590:    4388        .C      BICS     r0,r0,r1
        0x1fff4592:    2103        .!      MOVS     r1,#3
        0x1fff4594:    0709        ..      LSLS     r1,r1,#28
        0x1fff4596:    4388        .C      BICS     r0,r0,r1
        0x1fff4598:    0099        ..      LSLS     r1,r3,#2
        0x1fff459a:    0f89        ..      LSRS     r1,r1,#30
        0x1fff459c:    0709        ..      LSLS     r1,r1,#28
        0x1fff459e:    4308        .C      ORRS     r0,r0,r1
        0x1fff45a0:    6010        .`      STR      r0,[r2,#0]
        0x1fff45a2:    bd30        0.      POP      {r4,r5,pc}
        0x1fff45a4:    4320         C      ORRS     r0,r0,r4
        0x1fff45a6:    e7c1        ..      B        0x1fff452c ; lib_efuse_load + 32
        0x1fff45a8:    4320         C      ORRS     r0,r0,r4
        0x1fff45aa:    e7d2        ..      B        0x1fff4552 ; lib_efuse_load + 70
        0x1fff45ac:    4308        .C      ORRS     r0,r0,r1
        0x1fff45ae:    e7ea        ..      B        0x1fff4586 ; lib_efuse_load + 122
        0x1fff45b0:    4308        .C      ORRS     r0,r0,r1
        0x1fff45b2:    e7ee        ..      B        0x1fff4592 ; lib_efuse_load + 134
    $d
        0x1fff45b4:    1fff6e38    8n..    DCD    536833592
        0x1fff45b8:    00000800    ....    DCD    2048
        0x1fff45bc:    ffc00fff    ....    DCD    4290777087
        0x1fff45c0:    08000000    ....    DCD    134217728
    $t
    i.llProcessTxData1
    llProcessTxData1
        0x1fff45c4:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff45c6:    4605        .F      MOV      r5,r0
        0x1fff45c8:    4812        .H      LDR      r0,[pc,#72] ; [0x1fff4614] = 0x1fff6dcc
        0x1fff45ca:    460f        .F      MOV      r7,r1
        0x1fff45cc:    78c0        .x      LDRB     r0,[r0,#3]
        0x1fff45ce:    4281        .B      CMP      r1,r0
        0x1fff45d0:    d11f        ..      BNE      0x1fff4612 ; llProcessTxData1 + 78
        0x1fff45d2:    78e8        .x      LDRB     r0,[r5,#3]
        0x1fff45d4:    2800        .(      CMP      r0,#0
        0x1fff45d6:    d018        ..      BEQ      0x1fff460a ; llProcessTxData1 + 70
        0x1fff45d8:    2400        .$      MOVS     r4,#0
        0x1fff45da:    00a0        ..      LSLS     r0,r4,#2
        0x1fff45dc:    1946        F.      ADDS     r6,r0,r5
        0x1fff45de:    36ff        .6      ADDS     r6,r6,#0xff
        0x1fff45e0:    3681        .6      ADDS     r6,r6,#0x81
        0x1fff45e2:    68f1        .h      LDR      r1,[r6,#0xc]
        0x1fff45e4:    2900        .)      CMP      r1,#0
        0x1fff45e6:    d00d        ..      BEQ      0x1fff4604 ; llProcessTxData1 + 64
        0x1fff45e8:    6808        .h      LDR      r0,[r1,#0]
        0x1fff45ea:    2800        .(      CMP      r0,#0
        0x1fff45ec:    d10a        ..      BNE      0x1fff4604 ; llProcessTxData1 + 64
        0x1fff45ee:    7928        (y      LDRB     r0,[r5,#4]
        0x1fff45f0:    f000fc74    ..t.    BL       ll_osal_mem_free ; 0x1fff4edc
        0x1fff45f4:    2000        .       MOVS     r0,#0
        0x1fff45f6:    60f0        .`      STR      r0,[r6,#0xc]
        0x1fff45f8:    2005        .       MOVS     r0,#5
        0x1fff45fa:    01c0        ..      LSLS     r0,r0,#7
        0x1fff45fc:    1828        (.      ADDS     r0,r5,r0
        0x1fff45fe:    7841        Ax      LDRB     r1,[r0,#1]
        0x1fff4600:    1e49        I.      SUBS     r1,r1,#1
        0x1fff4602:    7041        Ap      STRB     r1,[r0,#1]
        0x1fff4604:    1c64        d.      ADDS     r4,r4,#1
        0x1fff4606:    2c08        .,      CMP      r4,#8
        0x1fff4608:    dbe7        ..      BLT      0x1fff45da ; llProcessTxData1 + 22
        0x1fff460a:    4639        9F      MOV      r1,r7
        0x1fff460c:    4628        (F      MOV      r0,r5
        0x1fff460e:    f7fdfaeb    ....    BL       $Ven$TT$L$$llProcessTxData0 ; 0x1fff1be8
        0x1fff4612:    bdf8        ..      POP      {r3-r7,pc}
    $d
        0x1fff4614:    1fff6dcc    .m..    DCD    536833484
    $t
    i.llReleaseConnId1
    llReleaseConnId1
        0x1fff4618:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff461a:    4607        .F      MOV      r7,r0
        0x1fff461c:    4605        .F      MOV      r5,r0
        0x1fff461e:    37ff        .7      ADDS     r7,r7,#0xff
        0x1fff4620:    2005        .       MOVS     r0,#5
        0x1fff4622:    2600        .&      MOVS     r6,#0
        0x1fff4624:    3781        .7      ADDS     r7,r7,#0x81
        0x1fff4626:    01c0        ..      LSLS     r0,r0,#7
        0x1fff4628:    182c        ,.      ADDS     r4,r5,r0
        0x1fff462a:    00b0        ..      LSLS     r0,r6,#2
        0x1fff462c:    1940        @.      ADDS     r0,r0,r5
        0x1fff462e:    30ff        .0      ADDS     r0,r0,#0xff
        0x1fff4630:    3001        .0      ADDS     r0,#1
        0x1fff4632:    9000        ..      STR      r0,[sp,#0]
        0x1fff4634:    6ec1        .n      LDR      r1,[r0,#0x6c]
        0x1fff4636:    2900        .)      CMP      r1,#0
        0x1fff4638:    d005        ..      BEQ      0x1fff4646 ; llReleaseConnId1 + 46
        0x1fff463a:    7928        (y      LDRB     r0,[r5,#4]
        0x1fff463c:    f000fc4e    ..N.    BL       ll_osal_mem_free ; 0x1fff4edc
        0x1fff4640:    7820         x      LDRB     r0,[r4,#0]
        0x1fff4642:    1e40        @.      SUBS     r0,r0,#1
        0x1fff4644:    7020         p      STRB     r0,[r4,#0]
        0x1fff4646:    9800        ..      LDR      r0,[sp,#0]
        0x1fff4648:    6af9        .j      LDR      r1,[r7,#0x2c]
        0x1fff464a:    1c76        v.      ADDS     r6,r6,#1
        0x1fff464c:    66c1        .f      STR      r1,[r0,#0x6c]
        0x1fff464e:    2e08        ..      CMP      r6,#8
        0x1fff4650:    dbeb        ..      BLT      0x1fff462a ; llReleaseConnId1 + 18
        0x1fff4652:    2600        .&      MOVS     r6,#0
        0x1fff4654:    00b0        ..      LSLS     r0,r6,#2
        0x1fff4656:    1940        @.      ADDS     r0,r0,r5
        0x1fff4658:    30ff        .0      ADDS     r0,r0,#0xff
        0x1fff465a:    3081        .0      ADDS     r0,r0,#0x81
        0x1fff465c:    9000        ..      STR      r0,[sp,#0]
        0x1fff465e:    68c1        .h      LDR      r1,[r0,#0xc]
        0x1fff4660:    2900        .)      CMP      r1,#0
        0x1fff4662:    d005        ..      BEQ      0x1fff4670 ; llReleaseConnId1 + 88
        0x1fff4664:    7928        (y      LDRB     r0,[r5,#4]
        0x1fff4666:    f000fc39    ..9.    BL       ll_osal_mem_free ; 0x1fff4edc
        0x1fff466a:    7860        `x      LDRB     r0,[r4,#1]
        0x1fff466c:    1e40        @.      SUBS     r0,r0,#1
        0x1fff466e:    7060        `p      STRB     r0,[r4,#1]
        0x1fff4670:    9800        ..      LDR      r0,[sp,#0]
        0x1fff4672:    6af9        .j      LDR      r1,[r7,#0x2c]
        0x1fff4674:    1c76        v.      ADDS     r6,r6,#1
        0x1fff4676:    60c1        .`      STR      r1,[r0,#0xc]
        0x1fff4678:    2e08        ..      CMP      r6,#8
        0x1fff467a:    dbeb        ..      BLT      0x1fff4654 ; llReleaseConnId1 + 60
        0x1fff467c:    2600        .&      MOVS     r6,#0
        0x1fff467e:    00b0        ..      LSLS     r0,r6,#2
        0x1fff4680:    1947        G.      ADDS     r7,r0,r5
        0x1fff4682:    37ff        .7      ADDS     r7,r7,#0xff
        0x1fff4684:    3781        .7      ADDS     r7,r7,#0x81
        0x1fff4686:    6b39        9k      LDR      r1,[r7,#0x30]
        0x1fff4688:    2900        .)      CMP      r1,#0
        0x1fff468a:    d005        ..      BEQ      0x1fff4698 ; llReleaseConnId1 + 128
        0x1fff468c:    7928        (y      LDRB     r0,[r5,#4]
        0x1fff468e:    f000fc25    ..%.    BL       ll_osal_mem_free ; 0x1fff4edc
        0x1fff4692:    78a0        .x      LDRB     r0,[r4,#2]
        0x1fff4694:    1e40        @.      SUBS     r0,r0,#1
        0x1fff4696:    70a0        .p      STRB     r0,[r4,#2]
        0x1fff4698:    2000        .       MOVS     r0,#0
        0x1fff469a:    1c76        v.      ADDS     r6,r6,#1
        0x1fff469c:    6338        8c      STR      r0,[r7,#0x30]
        0x1fff469e:    2e08        ..      CMP      r6,#8
        0x1fff46a0:    dbed        ..      BLT      0x1fff467e ; llReleaseConnId1 + 102
        0x1fff46a2:    4628        (F      MOV      r0,r5
        0x1fff46a4:    f000f888    ....    BL       ll_flow_ctrl_restore ; 0x1fff47b8
        0x1fff46a8:    4628        (F      MOV      r0,r5
        0x1fff46aa:    f7fdfaa3    ....    BL       $Ven$TT$L$$llReleaseConnId0 ; 0x1fff1bf4
        0x1fff46ae:    2100        .!      MOVS     r1,#0
        0x1fff46b0:    4608        .F      MOV      r0,r1
        0x1fff46b2:    008a        ..      LSLS     r2,r1,#2
        0x1fff46b4:    1952        R.      ADDS     r2,r2,r5
        0x1fff46b6:    32ff        .2      ADDS     r2,r2,#0xff
        0x1fff46b8:    3201        .2      ADDS     r2,#1
        0x1fff46ba:    1c49        I.      ADDS     r1,r1,#1
        0x1fff46bc:    66d0        .f      STR      r0,[r2,#0x6c]
        0x1fff46be:    2908        .)      CMP      r1,#8
        0x1fff46c0:    dbf7        ..      BLT      0x1fff46b2 ; llReleaseConnId1 + 154
        0x1fff46c2:    2100        .!      MOVS     r1,#0
        0x1fff46c4:    008a        ..      LSLS     r2,r1,#2
        0x1fff46c6:    1952        R.      ADDS     r2,r2,r5
        0x1fff46c8:    32ff        .2      ADDS     r2,r2,#0xff
        0x1fff46ca:    3281        .2      ADDS     r2,r2,#0x81
        0x1fff46cc:    1c49        I.      ADDS     r1,r1,#1
        0x1fff46ce:    60d0        .`      STR      r0,[r2,#0xc]
        0x1fff46d0:    2908        .)      CMP      r1,#8
        0x1fff46d2:    dbf7        ..      BLT      0x1fff46c4 ; llReleaseConnId1 + 172
        0x1fff46d4:    70e0        .p      STRB     r0,[r4,#3]
        0x1fff46d6:    bdf8        ..      POP      {r3-r7,pc}
    i.llSlaveEvt_TaskEndOk1
    llSlaveEvt_TaskEndOk1
        0x1fff46d8:    b510        ..      PUSH     {r4,lr}
        0x1fff46da:    480b        .H      LDR      r0,[pc,#44] ; [0x1fff4708] = 0x1fff0d30
        0x1fff46dc:    21a1        .!      MOVS     r1,#0xa1
        0x1fff46de:    7880        .x      LDRB     r0,[r0,#2]
        0x1fff46e0:    0089        ..      LSLS     r1,r1,#2
        0x1fff46e2:    4348        HC      MULS     r0,r1,r0
        0x1fff46e4:    4909        .I      LDR      r1,[pc,#36] ; [0x1fff470c] = 0x1fff0934
        0x1fff46e6:    6809        .h      LDR      r1,[r1,#0]
        0x1fff46e8:    1840        @.      ADDS     r0,r0,r1
        0x1fff46ea:    7841        Ax      LDRB     r1,[r0,#1]
        0x1fff46ec:    2900        .)      CMP      r1,#0
        0x1fff46ee:    d007        ..      BEQ      0x1fff4700 ; llSlaveEvt_TaskEndOk1 + 40
        0x1fff46f0:    30ff        .0      ADDS     r0,r0,#0xff
        0x1fff46f2:    30ff        .0      ADDS     r0,r0,#0xff
        0x1fff46f4:    3002        .0      ADDS     r0,#2
        0x1fff46f6:    6cc1        .l      LDR      r1,[r0,#0x4c]
        0x1fff46f8:    2900        .)      CMP      r1,#0
        0x1fff46fa:    d001        ..      BEQ      0x1fff4700 ; llSlaveEvt_TaskEndOk1 + 40
        0x1fff46fc:    2100        .!      MOVS     r1,#0
        0x1fff46fe:    64c1        .d      STR      r1,[r0,#0x4c]
        0x1fff4700:    f7fdfa7e    ..~.    BL       $Ven$TT$L$$llSlaveEvt_TaskEndOk0 ; 0x1fff1c00
        0x1fff4704:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff4706:    0000        ..      DCW    0
        0x1fff4708:    1fff0d30    0...    DCD    536808752
        0x1fff470c:    1fff0934    4...    DCD    536807732
    $t
    i.llWriteTxData1
    llWriteTxData1
        0x1fff4710:    b5ff        ..      PUSH     {r0-r7,lr}
        0x1fff4712:    4604        .F      MOV      r4,r0
        0x1fff4714:    3060        `0      ADDS     r0,r0,#0x60
        0x1fff4716:    7ec0        .~      LDRB     r0,[r0,#0x1b]
        0x1fff4718:    2507        .%      MOVS     r5,#7
        0x1fff471a:    b081        ..      SUB      sp,sp,#4
        0x1fff471c:    4617        .F      MOV      r7,r2
        0x1fff471e:    2801        .(      CMP      r0,#1
        0x1fff4720:    d142        B.      BNE      0x1fff47a8 ; llWriteTxData1 + 152
        0x1fff4722:    4620         F      MOV      r0,r4
        0x1fff4724:    f7fdfa72    ..r.    BL       $Ven$TT$L$$getTxBufferFree ; 0x1fff1c0c
        0x1fff4728:    2800        .(      CMP      r0,#0
        0x1fff472a:    d03d        =.      BEQ      0x1fff47a8 ; llWriteTxData1 + 152
        0x1fff472c:    4821        !H      LDR      r0,[pc,#132] ; [0x1fff47b4] = 0x1fff0917
        0x1fff472e:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff4730:    2800        .(      CMP      r0,#0
        0x1fff4732:    d03c        <.      BEQ      0x1fff47ae ; llWriteTxData1 + 158
        0x1fff4734:    26ff        .&      MOVS     r6,#0xff
        0x1fff4736:    3611        .6      ADDS     r6,r6,#0x11
        0x1fff4738:    4620         F      MOV      r0,r4
        0x1fff473a:    f7fdfa6d    ..m.    BL       $Ven$TT$L$$get_tx_write_ptr ; 0x1fff1c18
        0x1fff473e:    9000        ..      STR      r0,[sp,#0]
        0x1fff4740:    7920         y      LDRB     r0,[r4,#4]
        0x1fff4742:    2200        ."      MOVS     r2,#0
        0x1fff4744:    4631        1F      MOV      r1,r6
        0x1fff4746:    f000fb7f    ....    BL       ll_osal_mem_alloc ; 0x1fff4e48
        0x1fff474a:    9900        ..      LDR      r1,[sp,#0]
        0x1fff474c:    0089        ..      LSLS     r1,r1,#2
        0x1fff474e:    190e        ..      ADDS     r6,r1,r4
        0x1fff4750:    36ff        .6      ADDS     r6,r6,#0xff
        0x1fff4752:    3601        .6      ADDS     r6,#1
        0x1fff4754:    66f0        .f      STR      r0,[r6,#0x6c]
        0x1fff4756:    2800        .(      CMP      r0,#0
        0x1fff4758:    d026        &.      BEQ      0x1fff47a8 ; llWriteTxData1 + 152
        0x1fff475a:    20a6        .       MOVS     r0,#0xa6
        0x1fff475c:    5d00        .]      LDRB     r0,[r0,r4]
        0x1fff475e:    2800        .(      CMP      r0,#0
        0x1fff4760:    d007        ..      BEQ      0x1fff4772 ; llWriteTxData1 + 98
        0x1fff4762:    463a        :F      MOV      r2,r7
        0x1fff4764:    4620         F      MOV      r0,r4
        0x1fff4766:    9b04        ..      LDR      r3,[sp,#0x10]
        0x1fff4768:    9902        ..      LDR      r1,[sp,#8]
        0x1fff476a:    f7fdfa5b    ..[.    BL       $Ven$TT$L$$LL_ENC_Encrypt ; 0x1fff1c24
        0x1fff476e:    1d3f        ?.      ADDS     r7,r7,#4
        0x1fff4770:    b2ff        ..      UXTB     r7,r7
        0x1fff4772:    2005        .       MOVS     r0,#5
        0x1fff4774:    01c0        ..      LSLS     r0,r0,#7
        0x1fff4776:    1825        %.      ADDS     r5,r4,r0
        0x1fff4778:    7828        (x      LDRB     r0,[r5,#0]
        0x1fff477a:    463a        :F      MOV      r2,r7
        0x1fff477c:    1c40        @.      ADDS     r0,r0,#1
        0x1fff477e:    7028        (p      STRB     r0,[r5,#0]
        0x1fff4780:    9902        ..      LDR      r1,[sp,#8]
        0x1fff4782:    0238        8.      LSLS     r0,r7,#8
        0x1fff4784:    4308        .C      ORRS     r0,r0,r1
        0x1fff4786:    6ef1        .n      LDR      r1,[r6,#0x6c]
        0x1fff4788:    8088        ..      STRH     r0,[r1,#4]
        0x1fff478a:    6ef0        .n      LDR      r0,[r6,#0x6c]
        0x1fff478c:    9904        ..      LDR      r1,[sp,#0x10]
        0x1fff478e:    1d80        ..      ADDS     r0,r0,#6
        0x1fff4790:    f7fdfa4e    ..N.    BL       $Ven$TT$L$$__aeabi_memcpy ; 0x1fff1c30
        0x1fff4794:    6ef1        .n      LDR      r1,[r6,#0x6c]
        0x1fff4796:    2001        .       MOVS     r0,#1
        0x1fff4798:    6008        .`      STR      r0,[r1,#0]
        0x1fff479a:    4620         F      MOV      r0,r4
        0x1fff479c:    f7fdfa4e    ..N.    BL       $Ven$TT$L$$update_tx_write_ptr ; 0x1fff1c3c
        0x1fff47a0:    78e8        .x      LDRB     r0,[r5,#3]
        0x1fff47a2:    1e40        @.      SUBS     r0,r0,#1
        0x1fff47a4:    70e8        .p      STRB     r0,[r5,#3]
        0x1fff47a6:    2500        .%      MOVS     r5,#0
        0x1fff47a8:    4628        (F      MOV      r0,r5
        0x1fff47aa:    b005        ..      ADD      sp,sp,#0x14
        0x1fff47ac:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff47ae:    2634        4&      MOVS     r6,#0x34
        0x1fff47b0:    e7c2        ..      B        0x1fff4738 ; llWriteTxData1 + 40
    $d
        0x1fff47b2:    0000        ..      DCW    0
        0x1fff47b4:    1fff0917    ....    DCD    536807703
    $t
    i.ll_flow_ctrl_restore
    ll_flow_ctrl_restore
        0x1fff47b8:    b510        ..      PUSH     {r4,lr}
        0x1fff47ba:    7901        .y      LDRB     r1,[r0,#4]
        0x1fff47bc:    4a13        .J      LDR      r2,[pc,#76] ; [0x1fff480c] = 0x1fff7804
        0x1fff47be:    0049        I.      LSLS     r1,r1,#1
        0x1fff47c0:    5c51        Q\      LDRB     r1,[r2,r1]
        0x1fff47c2:    2900        .)      CMP      r1,#0
        0x1fff47c4:    d020         .      BEQ      0x1fff4808 ; ll_flow_ctrl_restore + 80
        0x1fff47c6:    4912        .I      LDR      r1,[pc,#72] ; [0x1fff4810] = 0x40031040
        0x1fff47c8:    680b        .h      LDR      r3,[r1,#0]
        0x1fff47ca:    158c        ..      ASRS     r4,r1,#22
        0x1fff47cc:    43a3        .C      BICS     r3,r3,r4
        0x1fff47ce:    600b        .`      STR      r3,[r1,#0]
        0x1fff47d0:    4601        .F      MOV      r1,r0
        0x1fff47d2:    31ff        .1      ADDS     r1,r1,#0xff
        0x1fff47d4:    3121        !1      ADDS     r1,r1,#0x21
        0x1fff47d6:    460b        .F      MOV      r3,r1
        0x1fff47d8:    7d09        .}      LDRB     r1,[r1,#0x14]
        0x1fff47da:    2402        .$      MOVS     r4,#2
        0x1fff47dc:    4021        !@      ANDS     r1,r1,r4
        0x1fff47de:    7904        .y      LDRB     r4,[r0,#4]
        0x1fff47e0:    0064        d.      LSLS     r4,r4,#1
        0x1fff47e2:    18a4        ..      ADDS     r4,r4,r2
        0x1fff47e4:    7864        dx      LDRB     r4,[r4,#1]
        0x1fff47e6:    4321        !C      ORRS     r1,r1,r4
        0x1fff47e8:    7519        .u      STRB     r1,[r3,#0x14]
        0x1fff47ea:    4b09        .K      LDR      r3,[pc,#36] ; [0x1fff4810] = 0x40031040
        0x1fff47ec:    3b40        @;      SUBS     r3,r3,#0x40
        0x1fff47ee:    6bdc        .k      LDR      r4,[r3,#0x3c]
        0x1fff47f0:    08a4        ..      LSRS     r4,r4,#2
        0x1fff47f2:    00a4        ..      LSLS     r4,r4,#2
        0x1fff47f4:    430c        .C      ORRS     r4,r4,r1
        0x1fff47f6:    63dc        .c      STR      r4,[r3,#0x3c]
        0x1fff47f8:    7903        .y      LDRB     r3,[r0,#4]
        0x1fff47fa:    2100        .!      MOVS     r1,#0
        0x1fff47fc:    005b        [.      LSLS     r3,r3,#1
        0x1fff47fe:    54d1        .T      STRB     r1,[r2,r3]
        0x1fff4800:    7900        .y      LDRB     r0,[r0,#4]
        0x1fff4802:    0040        @.      LSLS     r0,r0,#1
        0x1fff4804:    1880        ..      ADDS     r0,r0,r2
        0x1fff4806:    7041        Ap      STRB     r1,[r0,#1]
        0x1fff4808:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff480a:    0000        ..      DCW    0
        0x1fff480c:    1fff7804    .x..    DCD    536836100
        0x1fff4810:    40031040    @..@    DCD    1073942592
    $t
    i.ll_generateTxBuffer1
    ll_generateTxBuffer1
        0x1fff4814:    b5f3        ..      PUSH     {r0,r1,r4-r7,lr}
        0x1fff4816:    4607        .F      MOV      r7,r0
        0x1fff4818:    4898        .H      LDR      r0,[pc,#608] ; [0x1fff4a7c] = 0x1fff0d30
        0x1fff481a:    21a1        .!      MOVS     r1,#0xa1
        0x1fff481c:    7880        .x      LDRB     r0,[r0,#2]
        0x1fff481e:    0089        ..      LSLS     r1,r1,#2
        0x1fff4820:    4348        HC      MULS     r0,r1,r0
        0x1fff4822:    4997        .I      LDR      r1,[pc,#604] ; [0x1fff4a80] = 0x1fff0934
        0x1fff4824:    b089        ..      SUB      sp,sp,#0x24
        0x1fff4826:    6809        .h      LDR      r1,[r1,#0]
        0x1fff4828:    2600        .&      MOVS     r6,#0
        0x1fff482a:    1844        D.      ADDS     r4,r0,r1
        0x1fff482c:    4620         F      MOV      r0,r4
        0x1fff482e:    30ff        .0      ADDS     r0,r0,#0xff
        0x1fff4830:    3021        !0      ADDS     r0,r0,#0x21
        0x1fff4832:    9006        ..      STR      r0,[sp,#0x18]
        0x1fff4834:    7d40        @}      LDRB     r0,[r0,#0x15]
        0x1fff4836:    2832        2(      CMP      r0,#0x32
        0x1fff4838:    d022        ".      BEQ      0x1fff4880 ; ll_generateTxBuffer1 + 108
        0x1fff483a:    2822        "(      CMP      r0,#0x22
        0x1fff483c:    d020         .      BEQ      0x1fff4880 ; ll_generateTxBuffer1 + 108
        0x1fff483e:    4625        %F      MOV      r5,r4
        0x1fff4840:    35ff        .5      ADDS     r5,r5,#0xff
        0x1fff4842:    3581        .5      ADDS     r5,r5,#0x81
        0x1fff4844:    6ae8        .j      LDR      r0,[r5,#0x2c]
        0x1fff4846:    6801        .h      LDR      r1,[r0,#0]
        0x1fff4848:    2900        .)      CMP      r1,#0
        0x1fff484a:    d009        ..      BEQ      0x1fff4860 ; ll_generateTxBuffer1 + 76
        0x1fff484c:    8881        ..      LDRH     r1,[r0,#4]
        0x1fff484e:    1d00        ..      ADDS     r0,r0,#4
        0x1fff4850:    0a09        ..      LSRS     r1,r1,#8
        0x1fff4852:    1c89        ..      ADDS     r1,r1,#2
        0x1fff4854:    f7fdf9f8    ....    BL       $Ven$TT$L$$ll_hw_write_tfifo ; 0x1fff1c48
        0x1fff4858:    6ae9        .j      LDR      r1,[r5,#0x2c]
        0x1fff485a:    2000        .       MOVS     r0,#0
        0x1fff485c:    1c76        v.      ADDS     r6,r6,#1
        0x1fff485e:    6008        .`      STR      r0,[r1,#0]
        0x1fff4860:    f7fdf9f8    ....    BL       $Ven$TT$L$$ll_hw_get_tfifo_wrptr ; 0x1fff1c54
        0x1fff4864:    990a        ..      LDR      r1,[sp,#0x28]
        0x1fff4866:    2500        .%      MOVS     r5,#0
        0x1fff4868:    8008        ..      STRH     r0,[r1,#0]
        0x1fff486a:    4620         F      MOV      r0,r4
        0x1fff486c:    30ff        .0      ADDS     r0,r0,#0xff
        0x1fff486e:    30c1        .0      ADDS     r0,r0,#0xc1
        0x1fff4870:    9007        ..      STR      r0,[sp,#0x1c]
        0x1fff4872:    7c00        .|      LDRB     r0,[r0,#0x10]
        0x1fff4874:    2800        .(      CMP      r0,#0
        0x1fff4876:    d029        ).      BEQ      0x1fff48cc ; ll_generateTxBuffer1 + 184
        0x1fff4878:    42b8        .B      CMP      r0,r7
        0x1fff487a:    dc27        '.      BGT      0x1fff48cc ; ll_generateTxBuffer1 + 184
        0x1fff487c:    2000        .       MOVS     r0,#0
        0x1fff487e:    e018        ..      B        0x1fff48b2 ; ll_generateTxBuffer1 + 158
        0x1fff4880:    4980        .I      LDR      r1,[pc,#512] ; [0x1fff4a84] = 0x40031400
        0x1fff4882:    2001        .       MOVS     r0,#1
        0x1fff4884:    6008        .`      STR      r0,[r1,#0]
        0x1fff4886:    20ff        .       MOVS     r0,#0xff
        0x1fff4888:    30ad        .0      ADDS     r0,r0,#0xad
        0x1fff488a:    2100        .!      MOVS     r1,#0
        0x1fff488c:    5900        .Y      LDR      r0,[r0,r4]
        0x1fff488e:    2601        .&      MOVS     r6,#1
        0x1fff4890:    6001        .`      STR      r1,[r0,#0]
        0x1fff4892:    e7e5        ..      B        0x1fff4860 ; ll_generateTxBuffer1 + 76
        0x1fff4894:    0080        ..      LSLS     r0,r0,#2
        0x1fff4896:    1900        ..      ADDS     r0,r0,r4
        0x1fff4898:    30ff        .0      ADDS     r0,r0,#0xff
        0x1fff489a:    3081        .0      ADDS     r0,r0,#0x81
        0x1fff489c:    6b00        .k      LDR      r0,[r0,#0x30]
        0x1fff489e:    1c6d        m.      ADDS     r5,r5,#1
        0x1fff48a0:    8881        ..      LDRH     r1,[r0,#4]
        0x1fff48a2:    b2ed        ..      UXTB     r5,r5
        0x1fff48a4:    0a09        ..      LSRS     r1,r1,#8
        0x1fff48a6:    1d00        ..      ADDS     r0,r0,#4
        0x1fff48a8:    1c89        ..      ADDS     r1,r1,#2
        0x1fff48aa:    f7fdf9cd    ....    BL       $Ven$TT$L$$ll_hw_write_tfifo ; 0x1fff1c48
        0x1fff48ae:    9800        ..      LDR      r0,[sp,#0]
        0x1fff48b0:    1c40        @.      ADDS     r0,r0,#1
        0x1fff48b2:    9000        ..      STR      r0,[sp,#0]
        0x1fff48b4:    9807        ..      LDR      r0,[sp,#0x1c]
        0x1fff48b6:    7c01        .|      LDRB     r1,[r0,#0x10]
        0x1fff48b8:    9800        ..      LDR      r0,[sp,#0]
        0x1fff48ba:    4281        .B      CMP      r1,r0
        0x1fff48bc:    dcea        ..      BGT      0x1fff4894 ; ll_generateTxBuffer1 + 128
        0x1fff48be:    9807        ..      LDR      r0,[sp,#0x1c]
        0x1fff48c0:    7c00        .|      LDRB     r0,[r0,#0x10]
        0x1fff48c2:    1a3f        ?.      SUBS     r7,r7,r0
        0x1fff48c4:    1986        ..      ADDS     r6,r0,r6
        0x1fff48c6:    9807        ..      LDR      r0,[sp,#0x1c]
        0x1fff48c8:    2100        .!      MOVS     r1,#0
        0x1fff48ca:    7401        .t      STRB     r1,[r0,#0x10]
        0x1fff48cc:    496e        nI      LDR      r1,[pc,#440] ; [0x1fff4a88] = 0x1fff10e0
        0x1fff48ce:    2000        .       MOVS     r0,#0
        0x1fff48d0:    70c8        .p      STRB     r0,[r1,#3]
        0x1fff48d2:    20ff        .       MOVS     r0,#0xff
        0x1fff48d4:    30ad        .0      ADDS     r0,r0,#0xad
        0x1fff48d6:    5900        .Y      LDR      r0,[r0,r4]
        0x1fff48d8:    6801        .h      LDR      r1,[r0,#0]
        0x1fff48da:    2900        .)      CMP      r1,#0
        0x1fff48dc:    d003        ..      BEQ      0x1fff48e6 ; ll_generateTxBuffer1 + 210
        0x1fff48de:    7900        .y      LDRB     r0,[r0,#4]
        0x1fff48e0:    43c0        .C      MVNS     r0,r0
        0x1fff48e2:    0780        ..      LSLS     r0,r0,#30
        0x1fff48e4:    d03a        :.      BEQ      0x1fff495c ; ll_generateTxBuffer1 + 328
        0x1fff48e6:    9806        ..      LDR      r0,[sp,#0x18]
        0x1fff48e8:    7dc0        .}      LDRB     r0,[r0,#0x17]
        0x1fff48ea:    2800        .(      CMP      r0,#0
        0x1fff48ec:    d036        6.      BEQ      0x1fff495c ; ll_generateTxBuffer1 + 328
        0x1fff48ee:    9806        ..      LDR      r0,[sp,#0x18]
        0x1fff48f0:    7d80        .}      LDRB     r0,[r0,#0x16]
        0x1fff48f2:    2800        .(      CMP      r0,#0
        0x1fff48f4:    d132        2.      BNE      0x1fff495c ; ll_generateTxBuffer1 + 328
        0x1fff48f6:    9807        ..      LDR      r0,[sp,#0x1c]
        0x1fff48f8:    7c00        .|      LDRB     r0,[r0,#0x10]
        0x1fff48fa:    42b8        .B      CMP      r0,r7
        0x1fff48fc:    da2e        ..      BGE      0x1fff495c ; ll_generateTxBuffer1 + 328
        0x1fff48fe:    485f        _H      LDR      r0,[pc,#380] ; [0x1fff4a7c] = 0x1fff0d30
        0x1fff4900:    7881        .x      LDRB     r1,[r0,#2]
        0x1fff4902:    201c        .       MOVS     r0,#0x1c
        0x1fff4904:    4341        AC      MULS     r1,r0,r1
        0x1fff4906:    4861        aH      LDR      r0,[pc,#388] ; [0x1fff4a8c] = 0x1fff7824
        0x1fff4908:    1808        ..      ADDS     r0,r1,r0
        0x1fff490a:    7a01        .z      LDRB     r1,[r0,#8]
        0x1fff490c:    2900        .)      CMP      r1,#0
        0x1fff490e:    d125        %.      BNE      0x1fff495c ; ll_generateTxBuffer1 + 328
        0x1fff4910:    2101        .!      MOVS     r1,#1
        0x1fff4912:    7201        .r      STRB     r1,[r0,#8]
        0x1fff4914:    00a9        ..      LSLS     r1,r5,#2
        0x1fff4916:    1909        ..      ADDS     r1,r1,r4
        0x1fff4918:    31ff        .1      ADDS     r1,r1,#0xff
        0x1fff491a:    68c0        .h      LDR      r0,[r0,#0xc]
        0x1fff491c:    3181        .1      ADDS     r1,r1,#0x81
        0x1fff491e:    6308        .c      STR      r0,[r1,#0x30]
        0x1fff4920:    2800        .(      CMP      r0,#0
        0x1fff4922:    d01f        ..      BEQ      0x1fff4964 ; ll_generateTxBuffer1 + 336
        0x1fff4924:    2005        .       MOVS     r0,#5
        0x1fff4926:    01c0        ..      LSLS     r0,r0,#7
        0x1fff4928:    1820         .      ADDS     r0,r4,r0
        0x1fff492a:    7881        .x      LDRB     r1,[r0,#2]
        0x1fff492c:    1c6d        m.      ADDS     r5,r5,#1
        0x1fff492e:    1c49        I.      ADDS     r1,r1,#1
        0x1fff4930:    7081        .p      STRB     r1,[r0,#2]
        0x1fff4932:    20ff        .       MOVS     r0,#0xff
        0x1fff4934:    3049        I0      ADDS     r0,r0,#0x49
        0x1fff4936:    5b00        .[      LDRH     r0,[r0,r4]
        0x1fff4938:    b2ed        ..      UXTB     r5,r5
        0x1fff493a:    0a01        ..      LSRS     r1,r0,#8
        0x1fff493c:    4620         F      MOV      r0,r4
        0x1fff493e:    30ff        .0      ADDS     r0,r0,#0xff
        0x1fff4940:    3049        I0      ADDS     r0,r0,#0x49
        0x1fff4942:    1c89        ..      ADDS     r1,r1,#2
        0x1fff4944:    f7fdf980    ....    BL       $Ven$TT$L$$ll_hw_write_tfifo ; 0x1fff1c48
        0x1fff4948:    9806        ..      LDR      r0,[sp,#0x18]
        0x1fff494a:    2100        .!      MOVS     r1,#0
        0x1fff494c:    75c1        .u      STRB     r1,[r0,#0x17]
        0x1fff494e:    9806        ..      LDR      r0,[sp,#0x18]
        0x1fff4950:    2101        .!      MOVS     r1,#1
        0x1fff4952:    7581        .u      STRB     r1,[r0,#0x16]
        0x1fff4954:    484c        LH      LDR      r0,[pc,#304] ; [0x1fff4a88] = 0x1fff10e0
        0x1fff4956:    1c76        v.      ADDS     r6,r6,#1
        0x1fff4958:    70c1        .p      STRB     r1,[r0,#3]
        0x1fff495a:    1e7f        ..      SUBS     r7,r7,#1
        0x1fff495c:    9807        ..      LDR      r0,[sp,#0x1c]
        0x1fff495e:    7c00        .|      LDRB     r0,[r0,#0x10]
        0x1fff4960:    2800        .(      CMP      r0,#0
        0x1fff4962:    d002        ..      BEQ      0x1fff496a ; ll_generateTxBuffer1 + 342
        0x1fff4964:    4630        0F      MOV      r0,r6
        0x1fff4966:    b00b        ..      ADD      sp,sp,#0x2c
        0x1fff4968:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff496a:    4620         F      MOV      r0,r4
        0x1fff496c:    f7fdf978    ..x.    BL       $Ven$TT$L$$getTxBufferSize ; 0x1fff1c60
        0x1fff4970:    9004        ..      STR      r0,[sp,#0x10]
        0x1fff4972:    2800        .(      CMP      r0,#0
        0x1fff4974:    dd3b        ;.      BLE      0x1fff49ee ; ll_generateTxBuffer1 + 474
        0x1fff4976:    2f00        ./      CMP      r7,#0
        0x1fff4978:    dd39        9.      BLE      0x1fff49ee ; ll_generateTxBuffer1 + 474
        0x1fff497a:    2000        .       MOVS     r0,#0
        0x1fff497c:    e031        1.      B        0x1fff49e2 ; ll_generateTxBuffer1 + 462
        0x1fff497e:    4620         F      MOV      r0,r4
        0x1fff4980:    f7fdf974    ..t.    BL       $Ven$TT$L$$get_tx_read_ptr ; 0x1fff1c6c
        0x1fff4984:    0080        ..      LSLS     r0,r0,#2
        0x1fff4986:    1900        ..      ADDS     r0,r0,r4
        0x1fff4988:    30ff        .0      ADDS     r0,r0,#0xff
        0x1fff498a:    3001        .0      ADDS     r0,#1
        0x1fff498c:    9007        ..      STR      r0,[sp,#0x1c]
        0x1fff498e:    6ec0        .n      LDR      r0,[r0,#0x6c]
        0x1fff4990:    8881        ..      LDRH     r1,[r0,#4]
        0x1fff4992:    1d00        ..      ADDS     r0,r0,#4
        0x1fff4994:    0a09        ..      LSRS     r1,r1,#8
        0x1fff4996:    1c89        ..      ADDS     r1,r1,#2
        0x1fff4998:    f7fdf956    ..V.    BL       $Ven$TT$L$$ll_hw_write_tfifo ; 0x1fff1c48
        0x1fff499c:    2800        .(      CMP      r0,#0
        0x1fff499e:    d01e        ..      BEQ      0x1fff49de ; ll_generateTxBuffer1 + 458
        0x1fff49a0:    9807        ..      LDR      r0,[sp,#0x1c]
        0x1fff49a2:    6ec1        .n      LDR      r1,[r0,#0x6c]
        0x1fff49a4:    00a8        ..      LSLS     r0,r5,#2
        0x1fff49a6:    1900        ..      ADDS     r0,r0,r4
        0x1fff49a8:    30ff        .0      ADDS     r0,r0,#0xff
        0x1fff49aa:    3081        .0      ADDS     r0,r0,#0x81
        0x1fff49ac:    6301        .c      STR      r1,[r0,#0x30]
        0x1fff49ae:    9907        ..      LDR      r1,[sp,#0x1c]
        0x1fff49b0:    2000        .       MOVS     r0,#0
        0x1fff49b2:    66c8        .f      STR      r0,[r1,#0x6c]
        0x1fff49b4:    2005        .       MOVS     r0,#5
        0x1fff49b6:    01c0        ..      LSLS     r0,r0,#7
        0x1fff49b8:    1820         .      ADDS     r0,r4,r0
        0x1fff49ba:    7881        .x      LDRB     r1,[r0,#2]
        0x1fff49bc:    1c6d        m.      ADDS     r5,r5,#1
        0x1fff49be:    1c49        I.      ADDS     r1,r1,#1
        0x1fff49c0:    7081        .p      STRB     r1,[r0,#2]
        0x1fff49c2:    7801        .x      LDRB     r1,[r0,#0]
        0x1fff49c4:    b2ed        ..      UXTB     r5,r5
        0x1fff49c6:    1e49        I.      SUBS     r1,r1,#1
        0x1fff49c8:    7001        .p      STRB     r1,[r0,#0]
        0x1fff49ca:    4620         F      MOV      r0,r4
        0x1fff49cc:    f7fdf954    ..T.    BL       $Ven$TT$L$$update_tx_read_ptr ; 0x1fff1c78
        0x1fff49d0:    1de1        ..      ADDS     r1,r4,#7
        0x1fff49d2:    31ff        .1      ADDS     r1,r1,#0xff
        0x1fff49d4:    31fa        .1      ADDS     r1,r1,#0xfa
        0x1fff49d6:    6a08        .j      LDR      r0,[r1,#0x20]
        0x1fff49d8:    1c40        @.      ADDS     r0,r0,#1
        0x1fff49da:    1c76        v.      ADDS     r6,r6,#1
        0x1fff49dc:    6208        .b      STR      r0,[r1,#0x20]
        0x1fff49de:    9800        ..      LDR      r0,[sp,#0]
        0x1fff49e0:    1c40        @.      ADDS     r0,r0,#1
        0x1fff49e2:    9904        ..      LDR      r1,[sp,#0x10]
        0x1fff49e4:    9000        ..      STR      r0,[sp,#0]
        0x1fff49e6:    4288        .B      CMP      r0,r1
        0x1fff49e8:    da01        ..      BGE      0x1fff49ee ; ll_generateTxBuffer1 + 474
        0x1fff49ea:    42b8        .B      CMP      r0,r7
        0x1fff49ec:    dbc7        ..      BLT      0x1fff497e ; ll_generateTxBuffer1 + 362
        0x1fff49ee:    4923        #I      LDR      r1,[pc,#140] ; [0x1fff4a7c] = 0x1fff0d30
        0x1fff49f0:    221c        ."      MOVS     r2,#0x1c
        0x1fff49f2:    7888        .x      LDRB     r0,[r1,#2]
        0x1fff49f4:    4b25        %K      LDR      r3,[pc,#148] ; [0x1fff4a8c] = 0x1fff7824
        0x1fff49f6:    4350        PC      MULS     r0,r2,r0
        0x1fff49f8:    18c2        ..      ADDS     r2,r0,r3
        0x1fff49fa:    7a10        .z      LDRB     r0,[r2,#8]
        0x1fff49fc:    2800        .(      CMP      r0,#0
        0x1fff49fe:    d022        ".      BEQ      0x1fff4a46 ; ll_generateTxBuffer1 + 562
        0x1fff4a00:    2000        .       MOVS     r0,#0
        0x1fff4a02:    1e69        i.      SUBS     r1,r5,#1
        0x1fff4a04:    e01d        ..      B        0x1fff4a42 ; ll_generateTxBuffer1 + 558
        0x1fff4a06:    0083        ..      LSLS     r3,r0,#2
        0x1fff4a08:    191b        ..      ADDS     r3,r3,r4
        0x1fff4a0a:    33ff        .3      ADDS     r3,r3,#0xff
        0x1fff4a0c:    3381        .3      ADDS     r3,r3,#0x81
        0x1fff4a0e:    6b1b        .k      LDR      r3,[r3,#0x30]
        0x1fff4a10:    68d7        .h      LDR      r7,[r2,#0xc]
        0x1fff4a12:    42bb        .B      CMP      r3,r7
        0x1fff4a14:    d114        ..      BNE      0x1fff4a40 ; ll_generateTxBuffer1 + 556
        0x1fff4a16:    4288        .B      CMP      r0,r1
        0x1fff4a18:    d012        ..      BEQ      0x1fff4a40 ; ll_generateTxBuffer1 + 556
        0x1fff4a1a:    00a9        ..      LSLS     r1,r5,#2
        0x1fff4a1c:    190a        ..      ADDS     r2,r1,r4
        0x1fff4a1e:    0080        ..      LSLS     r0,r0,#2
        0x1fff4a20:    32ff        .2      ADDS     r2,r2,#0xff
        0x1fff4a22:    1900        ..      ADDS     r0,r0,r4
        0x1fff4a24:    3281        .2      ADDS     r2,r2,#0x81
        0x1fff4a26:    30ff        .0      ADDS     r0,r0,#0xff
        0x1fff4a28:    3081        .0      ADDS     r0,r0,#0x81
        0x1fff4a2a:    6ad1        .j      LDR      r1,[r2,#0x2c]
        0x1fff4a2c:    6301        .c      STR      r1,[r0,#0x30]
        0x1fff4a2e:    4813        .H      LDR      r0,[pc,#76] ; [0x1fff4a7c] = 0x1fff0d30
        0x1fff4a30:    7881        .x      LDRB     r1,[r0,#2]
        0x1fff4a32:    201c        .       MOVS     r0,#0x1c
        0x1fff4a34:    4341        AC      MULS     r1,r0,r1
        0x1fff4a36:    4815        .H      LDR      r0,[pc,#84] ; [0x1fff4a8c] = 0x1fff7824
        0x1fff4a38:    1808        ..      ADDS     r0,r1,r0
        0x1fff4a3a:    68c0        .h      LDR      r0,[r0,#0xc]
        0x1fff4a3c:    62d0        .b      STR      r0,[r2,#0x2c]
        0x1fff4a3e:    e002        ..      B        0x1fff4a46 ; ll_generateTxBuffer1 + 562
        0x1fff4a40:    1c40        @.      ADDS     r0,r0,#1
        0x1fff4a42:    42a8        .B      CMP      r0,r5
        0x1fff4a44:    dbdf        ..      BLT      0x1fff4a06 ; ll_generateTxBuffer1 + 498
        0x1fff4a46:    2009        .       MOVS     r0,#9
        0x1fff4a48:    0180        ..      LSLS     r0,r0,#6
        0x1fff4a4a:    1820         .      ADDS     r0,r4,r0
        0x1fff4a4c:    7e81        .~      LDRB     r1,[r0,#0x1a]
        0x1fff4a4e:    2900        .)      CMP      r1,#0
        0x1fff4a50:    d011        ..      BEQ      0x1fff4a76 ; ll_generateTxBuffer1 + 610
        0x1fff4a52:    7d01        .}      LDRB     r1,[r0,#0x14]
        0x1fff4a54:    2900        .)      CMP      r1,#0
        0x1fff4a56:    d00e        ..      BEQ      0x1fff4a76 ; ll_generateTxBuffer1 + 610
        0x1fff4a58:    8e42        B.      LDRH     r2,[r0,#0x32]
        0x1fff4a5a:    2a00        .*      CMP      r2,#0
        0x1fff4a5c:    d00b        ..      BEQ      0x1fff4a76 ; ll_generateTxBuffer1 + 610
        0x1fff4a5e:    7f81        ..      LDRB     r1,[r0,#0x1e]
        0x1fff4a60:    4291        .B      CMP      r1,r2
        0x1fff4a62:    d202        ..      BCS      0x1fff4a6a ; ll_generateTxBuffer1 + 598
        0x1fff4a64:    1c49        I.      ADDS     r1,r1,#1
        0x1fff4a66:    7781        .w      STRB     r1,[r0,#0x1e]
        0x1fff4a68:    e005        ..      B        0x1fff4a76 ; ll_generateTxBuffer1 + 610
        0x1fff4a6a:    2100        .!      MOVS     r1,#0
        0x1fff4a6c:    7781        .w      STRB     r1,[r0,#0x1e]
        0x1fff4a6e:    211a        .!      MOVS     r1,#0x1a
        0x1fff4a70:    4620         F      MOV      r0,r4
        0x1fff4a72:    f7fdf907    ....    BL       $Ven$TT$L$$llEnqueueCtrlPkt ; 0x1fff1c84
        0x1fff4a76:    b2b0        ..      UXTH     r0,r6
        0x1fff4a78:    e775        u.      B        0x1fff4966 ; ll_generateTxBuffer1 + 338
    $d
        0x1fff4a7a:    0000        ..      DCW    0
        0x1fff4a7c:    1fff0d30    0...    DCD    536808752
        0x1fff4a80:    1fff0934    4...    DCD    536807732
        0x1fff4a84:    40031400    ...@    DCD    1073943552
        0x1fff4a88:    1fff10e0    ....    DCD    536809696
        0x1fff4a8c:    1fff7824    $x..    DCD    536836132
    $t
    i.ll_hw_go1
    ll_hw_go1
        0x1fff4a90:    b5f0        ..      PUSH     {r4-r7,lr}
        0x1fff4a92:    b089        ..      SUB      sp,sp,#0x24
        0x1fff4a94:    f7fcffa0    ....    BL       $Ven$TT$L$$ll_hw_get_tr_mode ; 0x1fff19d8
        0x1fff4a98:    4605        .F      MOV      r5,r0
        0x1fff4a9a:    489a        .H      LDR      r0,[pc,#616] ; [0x1fff4d04] = 0x1fff0d30
        0x1fff4a9c:    21a1        .!      MOVS     r1,#0xa1
        0x1fff4a9e:    7880        .x      LDRB     r0,[r0,#2]
        0x1fff4aa0:    0089        ..      LSLS     r1,r1,#2
        0x1fff4aa2:    4348        HC      MULS     r0,r1,r0
        0x1fff4aa4:    4998        .I      LDR      r1,[pc,#608] ; [0x1fff4d08] = 0x1fff0934
        0x1fff4aa6:    6809        .h      LDR      r1,[r1,#0]
        0x1fff4aa8:    1844        D.      ADDS     r4,r0,r1
        0x1fff4aaa:    4898        .H      LDR      r0,[pc,#608] ; [0x1fff4d0c] = 0x1fff0998
        0x1fff4aac:    6800        .h      LDR      r0,[r0,#0]
        0x1fff4aae:    2801        .(      CMP      r0,#1
        0x1fff4ab0:    d103        ..      BNE      0x1fff4aba ; ll_hw_go1 + 42
        0x1fff4ab2:    4897        .H      LDR      r0,[pc,#604] ; [0x1fff4d10] = 0x1fff0ffc
        0x1fff4ab4:    6d81        .m      LDR      r1,[r0,#0x58]
        0x1fff4ab6:    1c49        I.      ADDS     r1,r1,#1
        0x1fff4ab8:    6581        .e      STR      r1,[r0,#0x58]
        0x1fff4aba:    2d05        .-      CMP      r5,#5
        0x1fff4abc:    d001        ..      BEQ      0x1fff4ac2 ; ll_hw_go1 + 50
        0x1fff4abe:    2d04        .-      CMP      r5,#4
        0x1fff4ac0:    d102        ..      BNE      0x1fff4ac8 ; ll_hw_go1 + 56
        0x1fff4ac2:    4620         F      MOV      r0,r4
        0x1fff4ac4:    f7fffe78    ..x.    BL       ll_flow_ctrl_restore ; 0x1fff47b8
        0x1fff4ac8:    f7fcff74    ..t.    BL       $Ven$TT$L$$read_current_fine_time ; 0x1fff19b4
        0x1fff4acc:    4991        .I      LDR      r1,[pc,#580] ; [0x1fff4d14] = 0x1fff6dcc
        0x1fff4ace:    4a92        .J      LDR      r2,[pc,#584] ; [0x1fff4d18] = 0x3fff
        0x1fff4ad0:    6108        .a      STR      r0,[r1,#0x10]
        0x1fff4ad2:    4892        .H      LDR      r0,[pc,#584] ; [0x1fff4d1c] = 0x40031000
        0x1fff4ad4:    6142        Ba      STR      r2,[r0,#0x14]
        0x1fff4ad6:    2201        ."      MOVS     r2,#1
        0x1fff4ad8:    60c2        .`      STR      r2,[r0,#0xc]
        0x1fff4ada:    6002        .`      STR      r2,[r0,#0]
        0x1fff4adc:    2d05        .-      CMP      r5,#5
        0x1fff4ade:    d017        ..      BEQ      0x1fff4b10 ; ll_hw_go1 + 128
        0x1fff4ae0:    2d04        .-      CMP      r5,#4
        0x1fff4ae2:    d17d        }.      BNE      0x1fff4be0 ; ll_hw_go1 + 336
        0x1fff4ae4:    8ee0        ..      LDRH     r0,[r4,#0x36]
        0x1fff4ae6:    4a8e        .J      LDR      r2,[pc,#568] ; [0x1fff4d20] = 0x271
        0x1fff4ae8:    68c9        .h      LDR      r1,[r1,#0xc]
        0x1fff4aea:    4350        PC      MULS     r0,r2,r0
        0x1fff4aec:    22ff        ."      MOVS     r2,#0xff
        0x1fff4aee:    32df        .2      ADDS     r2,r2,#0xdf
        0x1fff4af0:    5b12        .[      LDRH     r2,[r2,r4]
        0x1fff4af2:    1a80        ..      SUBS     r0,r0,r2
        0x1fff4af4:    22f8        ."      MOVS     r2,#0xf8
        0x1fff4af6:    5852        RX      LDR      r2,[r2,r1]
        0x1fff4af8:    6c89        .l      LDR      r1,[r1,#0x48]
        0x1fff4afa:    1a80        ..      SUBS     r0,r0,r2
        0x1fff4afc:    4a81        .J      LDR      r2,[pc,#516] ; [0x1fff4d04] = 0x1fff0d30
        0x1fff4afe:    7852        Rx      LDRB     r2,[r2,#1]
        0x1fff4b00:    0852        R.      LSRS     r2,r2,#1
        0x1fff4b02:    40d0        .@      LSRS     r0,r0,r2
        0x1fff4b04:    4281        .B      CMP      r1,r0
        0x1fff4b06:    d200        ..      BCS      0x1fff4b0a ; ll_hw_go1 + 122
        0x1fff4b08:    4608        .F      MOV      r0,r1
        0x1fff4b0a:    f7fdf8c1    ....    BL       $Ven$TT$L$$ll_hw_set_loop_timeout ; 0x1fff1c90
        0x1fff4b0e:    e004        ..      B        0x1fff4b1a ; ll_hw_go1 + 138
        0x1fff4b10:    7960        `y      LDRB     r0,[r4,#5]
        0x1fff4b12:    2801        .(      CMP      r0,#1
        0x1fff4b14:    d001        ..      BEQ      0x1fff4b1a ; ll_hw_go1 + 138
        0x1fff4b16:    f7fefd57    ..W.    BL       enlarge_rx_timeout_1st ; 0x1fff35c8
        0x1fff4b1a:    f7fcff4b    ..K.    BL       $Ven$TT$L$$read_current_fine_time ; 0x1fff19b4
        0x1fff4b1e:    9006        ..      STR      r0,[sp,#0x18]
        0x1fff4b20:    4880        .H      LDR      r0,[pc,#512] ; [0x1fff4d24] = 0x1fff0917
        0x1fff4b22:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff4b24:    2800        .(      CMP      r0,#0
        0x1fff4b26:    d005        ..      BEQ      0x1fff4b34 ; ll_hw_go1 + 164
        0x1fff4b28:    20ff        .       MOVS     r0,#0xff
        0x1fff4b2a:    3011        .0      ADDS     r0,r0,#0x11
        0x1fff4b2c:    2700        .'      MOVS     r7,#0
        0x1fff4b2e:    463e        >F      MOV      r6,r7
        0x1fff4b30:    9000        ..      STR      r0,[sp,#0]
        0x1fff4b32:    e033        3.      B        0x1fff4b9c ; ll_hw_go1 + 268
        0x1fff4b34:    2034        4       MOVS     r0,#0x34
        0x1fff4b36:    e7f9        ..      B        0x1fff4b2c ; ll_hw_go1 + 156
        0x1fff4b38:    4620         F      MOV      r0,r4
        0x1fff4b3a:    f7fdf8af    ....    BL       $Ven$TT$L$$get_rx_write_ptr ; 0x1fff1c9c
        0x1fff4b3e:    1981        ..      ADDS     r1,r0,r6
        0x1fff4b40:    4879        yH      LDR      r0,[pc,#484] ; [0x1fff4d28] = 0x1fff0916
        0x1fff4b42:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff4b44:    4281        .B      CMP      r1,r0
        0x1fff4b46:    4620         F      MOV      r0,r4
        0x1fff4b48:    d203        ..      BCS      0x1fff4b52 ; ll_hw_go1 + 194
        0x1fff4b4a:    f7fdf8a7    ....    BL       $Ven$TT$L$$get_rx_write_ptr ; 0x1fff1c9c
        0x1fff4b4e:    1980        ..      ADDS     r0,r0,r6
        0x1fff4b50:    e005        ..      B        0x1fff4b5e ; ll_hw_go1 + 206
        0x1fff4b52:    f7fdf8a3    ....    BL       $Ven$TT$L$$get_rx_write_ptr ; 0x1fff1c9c
        0x1fff4b56:    1981        ..      ADDS     r1,r0,r6
        0x1fff4b58:    4873        sH      LDR      r0,[pc,#460] ; [0x1fff4d28] = 0x1fff0916
        0x1fff4b5a:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff4b5c:    1a08        ..      SUBS     r0,r1,r0
        0x1fff4b5e:    b2c0        ..      UXTB     r0,r0
        0x1fff4b60:    9007        ..      STR      r0,[sp,#0x1c]
        0x1fff4b62:    4868        hH      LDR      r0,[pc,#416] ; [0x1fff4d04] = 0x1fff0d30
        0x1fff4b64:    2202        ."      MOVS     r2,#2
        0x1fff4b66:    7880        .x      LDRB     r0,[r0,#2]
        0x1fff4b68:    9900        ..      LDR      r1,[sp,#0]
        0x1fff4b6a:    f000f96d    ..m.    BL       ll_osal_mem_alloc ; 0x1fff4e48
        0x1fff4b6e:    9907        ..      LDR      r1,[sp,#0x1c]
        0x1fff4b70:    0089        ..      LSLS     r1,r1,#2
        0x1fff4b72:    1909        ..      ADDS     r1,r1,r4
        0x1fff4b74:    31ff        .1      ADDS     r1,r1,#0xff
        0x1fff4b76:    3181        .1      ADDS     r1,r1,#0x81
        0x1fff4b78:    60c8        .`      STR      r0,[r1,#0xc]
        0x1fff4b7a:    2800        .(      CMP      r0,#0
        0x1fff4b7c:    d013        ..      BEQ      0x1fff4ba6 ; ll_hw_go1 + 278
        0x1fff4b7e:    2005        .       MOVS     r0,#5
        0x1fff4b80:    01c0        ..      LSLS     r0,r0,#7
        0x1fff4b82:    1820         .      ADDS     r0,r4,r0
        0x1fff4b84:    7842        Bx      LDRB     r2,[r0,#1]
        0x1fff4b86:    1c7f        ..      ADDS     r7,r7,#1
        0x1fff4b88:    1c52        R.      ADDS     r2,r2,#1
        0x1fff4b8a:    7042        Bp      STRB     r2,[r0,#1]
        0x1fff4b8c:    2000        .       MOVS     r0,#0
        0x1fff4b8e:    68ca        .h      LDR      r2,[r1,#0xc]
        0x1fff4b90:    1c76        v.      ADDS     r6,r6,#1
        0x1fff4b92:    6010        .`      STR      r0,[r2,#0]
        0x1fff4b94:    68c9        .h      LDR      r1,[r1,#0xc]
        0x1fff4b96:    b2ff        ..      UXTB     r7,r7
        0x1fff4b98:    8088        ..      STRH     r0,[r1,#4]
        0x1fff4b9a:    b2f6        ..      UXTB     r6,r6
        0x1fff4b9c:    4620         F      MOV      r0,r4
        0x1fff4b9e:    f7fdf883    ....    BL       $Ven$TT$L$$getRxBufferFree ; 0x1fff1ca8
        0x1fff4ba2:    42b0        .B      CMP      r0,r6
        0x1fff4ba4:    d8c8        ..      BHI      0x1fff4b38 ; ll_hw_go1 + 168
        0x1fff4ba6:    485d        ]H      LDR      r0,[pc,#372] ; [0x1fff4d1c] = 0x40031000
        0x1fff4ba8:    21ff        .!      MOVS     r1,#0xff
        0x1fff4baa:    0409        ..      LSLS     r1,r1,#16
        0x1fff4bac:    6842        Bh      LDR      r2,[r0,#4]
        0x1fff4bae:    2f00        ./      CMP      r7,#0
        0x1fff4bb0:    d004        ..      BEQ      0x1fff4bbc ; ll_hw_go1 + 300
        0x1fff4bb2:    438a        .C      BICS     r2,r2,r1
        0x1fff4bb4:    0439        9.      LSLS     r1,r7,#16
        0x1fff4bb6:    430a        .C      ORRS     r2,r2,r1
        0x1fff4bb8:    6042        B`      STR      r2,[r0,#4]
        0x1fff4bba:    e025        %.      B        0x1fff4c08 ; ll_hw_go1 + 376
        0x1fff4bbc:    438a        .C      BICS     r2,r2,r1
        0x1fff4bbe:    2101        .!      MOVS     r1,#1
        0x1fff4bc0:    0409        ..      LSLS     r1,r1,#16
        0x1fff4bc2:    1851        Q.      ADDS     r1,r2,r1
        0x1fff4bc4:    6041        A`      STR      r1,[r0,#4]
        0x1fff4bc6:    7921        !y      LDRB     r1,[r4,#4]
        0x1fff4bc8:    2001        .       MOVS     r0,#1
        0x1fff4bca:    004a        J.      LSLS     r2,r1,#1
        0x1fff4bcc:    4957        WI      LDR      r1,[pc,#348] ; [0x1fff4d2c] = 0x1fff7804
        0x1fff4bce:    5488        .T      STRB     r0,[r1,r2]
        0x1fff4bd0:    20ff        .       MOVS     r0,#0xff
        0x1fff4bd2:    3035        50      ADDS     r0,r0,#0x35
        0x1fff4bd4:    5d00        .]      LDRB     r0,[r0,r4]
        0x1fff4bd6:    7922        "y      LDRB     r2,[r4,#4]
        0x1fff4bd8:    07c0        ..      LSLS     r0,r0,#31
        0x1fff4bda:    0fc0        ..      LSRS     r0,r0,#31
        0x1fff4bdc:    0052        R.      LSLS     r2,r2,#1
        0x1fff4bde:    e000        ..      B        0x1fff4be2 ; ll_hw_go1 + 338
        0x1fff4be0:    e015        ..      B        0x1fff4c0e ; ll_hw_go1 + 382
        0x1fff4be2:    1852        R.      ADDS     r2,r2,r1
        0x1fff4be4:    7050        Pp      STRB     r0,[r2,#1]
        0x1fff4be6:    484d        MH      LDR      r0,[pc,#308] ; [0x1fff4d1c] = 0x40031000
        0x1fff4be8:    3040        @0      ADDS     r0,r0,#0x40
        0x1fff4bea:    6802        .h      LDR      r2,[r0,#0]
        0x1fff4bec:    1583        ..      ASRS     r3,r0,#22
        0x1fff4bee:    431a        .C      ORRS     r2,r2,r3
        0x1fff4bf0:    6002        .`      STR      r2,[r0,#0]
        0x1fff4bf2:    6802        .h      LDR      r2,[r0,#0]
        0x1fff4bf4:    7923        #y      LDRB     r3,[r4,#4]
        0x1fff4bf6:    0852        R.      LSRS     r2,r2,#1
        0x1fff4bf8:    0052        R.      LSLS     r2,r2,#1
        0x1fff4bfa:    005b        [.      LSLS     r3,r3,#1
        0x1fff4bfc:    1859        Y.      ADDS     r1,r3,r1
        0x1fff4bfe:    7849        Ix      LDRB     r1,[r1,#1]
        0x1fff4c00:    430a        .C      ORRS     r2,r2,r1
        0x1fff4c02:    6002        .`      STR      r2,[r0,#0]
        0x1fff4c04:    2102        .!      MOVS     r1,#2
        0x1fff4c06:    6281        .b      STR      r1,[r0,#0x28]
        0x1fff4c08:    9806        ..      LDR      r0,[sp,#0x18]
        0x1fff4c0a:    f000fa01    ....    BL       llbuf_alloc_time_statics ; 0x1fff5010
        0x1fff4c0e:    4948        HI      LDR      r1,[pc,#288] ; [0x1fff4d30] = 0x40030080
        0x1fff4c10:    6b48        Hk      LDR      r0,[r1,#0x34]
        0x1fff4c12:    4a48        HJ      LDR      r2,[pc,#288] ; [0x1fff4d34] = 0x1fff098c
        0x1fff4c14:    b2c0        ..      UXTB     r0,r0
        0x1fff4c16:    7812        .x      LDRB     r2,[r2,#0]
        0x1fff4c18:    2a00        .*      CMP      r2,#0
        0x1fff4c1a:    d117        ..      BNE      0x1fff4c4c ; ll_hw_go1 + 444
        0x1fff4c1c:    4a46        FJ      LDR      r2,[pc,#280] ; [0x1fff4d38] = 0x1fff0a68
        0x1fff4c1e:    2300        .#      MOVS     r3,#0
        0x1fff4c20:    56d3        .V      LDRSB    r3,[r2,r3]
        0x1fff4c22:    2b00        .+      CMP      r3,#0
        0x1fff4c24:    4b45        EK      LDR      r3,[pc,#276] ; [0x1fff4d3c] = 0
        0x1fff4c26:    56d3        .V      LDRSB    r3,[r2,r3]
        0x1fff4c28:    db06        ..      BLT      0x1fff4c38 ; ll_hw_go1 + 424
        0x1fff4c2a:    041b        ..      LSLS     r3,r3,#16
        0x1fff4c2c:    2600        .&      MOVS     r6,#0
        0x1fff4c2e:    5796        .W      LDRSB    r6,[r2,r6]
        0x1fff4c30:    0232        2.      LSLS     r2,r6,#8
        0x1fff4c32:    189a        ..      ADDS     r2,r3,r2
        0x1fff4c34:    1812        ..      ADDS     r2,r2,r0
        0x1fff4c36:    e008        ..      B        0x1fff4c4a ; ll_hw_go1 + 442
        0x1fff4c38:    33ff        .3      ADDS     r3,r3,#0xff
        0x1fff4c3a:    041b        ..      LSLS     r3,r3,#16
        0x1fff4c3c:    2600        .&      MOVS     r6,#0
        0x1fff4c3e:    5796        .W      LDRSB    r6,[r2,r6]
        0x1fff4c40:    0232        2.      LSLS     r2,r6,#8
        0x1fff4c42:    189a        ..      ADDS     r2,r3,r2
        0x1fff4c44:    4b3e        >K      LDR      r3,[pc,#248] ; [0x1fff4d40] = 0xfeff
        0x1fff4c46:    1812        ..      ADDS     r2,r2,r0
        0x1fff4c48:    18d2        ..      ADDS     r2,r2,r3
        0x1fff4c4a:    634a        Jc      STR      r2,[r1,#0x34]
        0x1fff4c4c:    2802        .(      CMP      r0,#2
        0x1fff4c4e:    d201        ..      BCS      0x1fff4c54 ; ll_hw_go1 + 452
        0x1fff4c50:    2002        .       MOVS     r0,#2
        0x1fff4c52:    e002        ..      B        0x1fff4c5a ; ll_hw_go1 + 458
        0x1fff4c54:    2850        P(      CMP      r0,#0x50
        0x1fff4c56:    d900        ..      BLS      0x1fff4c5a ; ll_hw_go1 + 458
        0x1fff4c58:    2050        P       MOVS     r0,#0x50
        0x1fff4c5a:    4a3a        :J      LDR      r2,[pc,#232] ; [0x1fff4d44] = 0x1fff0a49
        0x1fff4c5c:    7812        .x      LDRB     r2,[r2,#0]
        0x1fff4c5e:    2a02        .*      CMP      r2,#2
        0x1fff4c60:    d011        ..      BEQ      0x1fff4c86 ; ll_hw_go1 + 502
        0x1fff4c62:    4a39        9J      LDR      r2,[pc,#228] ; [0x1fff4d48] = 0x1fff0a44
        0x1fff4c64:    7816        .x      LDRB     r6,[r2,#0]
        0x1fff4c66:    4b39        9K      LDR      r3,[pc,#228] ; [0x1fff4d4c] = 0x1fff0a45
        0x1fff4c68:    781f        .x      LDRB     r7,[r3,#0]
        0x1fff4c6a:    42be        .B      CMP      r6,r7
        0x1fff4c6c:    d90f        ..      BLS      0x1fff4c8e ; ll_hw_go1 + 510
        0x1fff4c6e:    7816        .x      LDRB     r6,[r2,#0]
        0x1fff4c70:    781b        .x      LDRB     r3,[r3,#0]
        0x1fff4c72:    1af3        ..      SUBS     r3,r6,r3
        0x1fff4c74:    1e80        ..      SUBS     r0,r0,#2
        0x1fff4c76:    1040        @.      ASRS     r0,r0,#1
        0x1fff4c78:    4343        CC      MULS     r3,r0,r3
        0x1fff4c7a:    7810        .x      LDRB     r0,[r2,#0]
        0x1fff4c7c:    0140        @.      LSLS     r0,r0,#5
        0x1fff4c7e:    1ac0        ..      SUBS     r0,r0,r3
        0x1fff4c80:    3010        .0      ADDS     r0,r0,#0x10
        0x1fff4c82:    1140        @.      ASRS     r0,r0,#5
        0x1fff4c84:    e004        ..      B        0x1fff4c90 ; ll_hw_go1 + 512
        0x1fff4c86:    4a32        2J      LDR      r2,[pc,#200] ; [0x1fff4d50] = 0x1fff0a46
        0x1fff4c88:    7816        .x      LDRB     r6,[r2,#0]
        0x1fff4c8a:    4b32        2K      LDR      r3,[pc,#200] ; [0x1fff4d54] = 0x1fff0a47
        0x1fff4c8c:    e7ec        ..      B        0x1fff4c68 ; ll_hw_go1 + 472
        0x1fff4c8e:    7810        .x      LDRB     r0,[r2,#0]
        0x1fff4c90:    694a        Ji      LDR      r2,[r1,#0x14]
        0x1fff4c92:    0a12        ..      LSRS     r2,r2,#8
        0x1fff4c94:    0212        ..      LSLS     r2,r2,#8
        0x1fff4c96:    4310        .C      ORRS     r0,r0,r2
        0x1fff4c98:    6148        Ha      STR      r0,[r1,#0x14]
        0x1fff4c9a:    2d05        .-      CMP      r5,#5
        0x1fff4c9c:    d001        ..      BEQ      0x1fff4ca2 ; ll_hw_go1 + 530
        0x1fff4c9e:    2d04        .-      CMP      r5,#4
        0x1fff4ca0:    d116        ..      BNE      0x1fff4cd0 ; ll_hw_go1 + 576
        0x1fff4ca2:    482d        -H      LDR      r0,[pc,#180] ; [0x1fff4d58] = 0x1fff08f9
        0x1fff4ca4:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff4ca6:    2800        .(      CMP      r0,#0
        0x1fff4ca8:    d006        ..      BEQ      0x1fff4cb8 ; ll_hw_go1 + 552
        0x1fff4caa:    482c        ,H      LDR      r0,[pc,#176] ; [0x1fff4d5c] = 0x1fff0922
        0x1fff4cac:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff4cae:    2800        .(      CMP      r0,#0
        0x1fff4cb0:    d002        ..      BEQ      0x1fff4cb8 ; ll_hw_go1 + 552
        0x1fff4cb2:    2000        .       MOVS     r0,#0
        0x1fff4cb4:    f7fcfffe    ....    BL       $Ven$TT$L$$set_max_length ; 0x1fff1cb4
        0x1fff4cb8:    34ff        .4      ADDS     r4,r4,#0xff
        0x1fff4cba:    34ff        .4      ADDS     r4,r4,#0xff
        0x1fff4cbc:    3402        .4      ADDS     r4,#2
        0x1fff4cbe:    7b20         {      LDRB     r0,[r4,#0xc]
        0x1fff4cc0:    2804        .(      CMP      r0,#4
        0x1fff4cc2:    d001        ..      BEQ      0x1fff4cc8 ; ll_hw_go1 + 568
        0x1fff4cc4:    2803        .(      CMP      r0,#3
        0x1fff4cc6:    d103        ..      BNE      0x1fff4cd0 ; ll_hw_go1 + 576
        0x1fff4cc8:    20ff        .       MOVS     r0,#0xff
        0x1fff4cca:    305f        _0      ADDS     r0,r0,#0x5f
        0x1fff4ccc:    f7fcfec6    ....    BL       $Ven$TT$L$$ll_hw_set_rx_timeout ; 0x1fff1a5c
        0x1fff4cd0:    2d02        .-      CMP      r5,#2
        0x1fff4cd2:    d112        ..      BNE      0x1fff4cfa ; ll_hw_go1 + 618
        0x1fff4cd4:    4822        "H      LDR      r0,[pc,#136] ; [0x1fff4d60] = 0x1fff091c
        0x1fff4cd6:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff4cd8:    2801        .(      CMP      r0,#1
        0x1fff4cda:    d007        ..      BEQ      0x1fff4cec ; ll_hw_go1 + 604
        0x1fff4cdc:    2803        .(      CMP      r0,#3
        0x1fff4cde:    d005        ..      BEQ      0x1fff4cec ; ll_hw_go1 + 604
        0x1fff4ce0:    2802        .(      CMP      r0,#2
        0x1fff4ce2:    d003        ..      BEQ      0x1fff4cec ; ll_hw_go1 + 604
        0x1fff4ce4:    481f        .H      LDR      r0,[pc,#124] ; [0x1fff4d64] = 0x1fff0923
        0x1fff4ce6:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff4ce8:    2802        .(      CMP      r0,#2
        0x1fff4cea:    d106        ..      BNE      0x1fff4cfa ; ll_hw_go1 + 618
        0x1fff4cec:    4811        .H      LDR      r0,[pc,#68] ; [0x1fff4d34] = 0x1fff098c
        0x1fff4cee:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff4cf0:    2800        .(      CMP      r0,#0
        0x1fff4cf2:    d102        ..      BNE      0x1fff4cfa ; ll_hw_go1 + 618
        0x1fff4cf4:    206c        l       MOVS     r0,#0x6c
        0x1fff4cf6:    f7fcfeb1    ....    BL       $Ven$TT$L$$ll_hw_set_rx_timeout ; 0x1fff1a5c
        0x1fff4cfa:    491b        .I      LDR      r1,[pc,#108] ; [0x1fff4d68] = 0x1fff0bbc
        0x1fff4cfc:    2001        .       MOVS     r0,#1
        0x1fff4cfe:    82c8        ..      STRH     r0,[r1,#0x16]
        0x1fff4d00:    b009        ..      ADD      sp,sp,#0x24
        0x1fff4d02:    bdf0        ..      POP      {r4-r7,pc}
    $d
        0x1fff4d04:    1fff0d30    0...    DCD    536808752
        0x1fff4d08:    1fff0934    4...    DCD    536807732
        0x1fff4d0c:    1fff0998    ....    DCD    536807832
        0x1fff4d10:    1fff0ffc    ....    DCD    536809468
        0x1fff4d14:    1fff6dcc    .m..    DCD    536833484
        0x1fff4d18:    00003fff    .?..    DCD    16383
        0x1fff4d1c:    40031000    ...@    DCD    1073942528
        0x1fff4d20:    00000271    q...    DCD    625
        0x1fff4d24:    1fff0917    ....    DCD    536807703
        0x1fff4d28:    1fff0916    ....    DCD    536807702
        0x1fff4d2c:    1fff7804    .x..    DCD    536836100
        0x1fff4d30:    40030080    ...@    DCD    1073938560
        0x1fff4d34:    1fff098c    ....    DCD    536807820
        0x1fff4d38:    1fff0a68    h...    DCD    536808040
        0x1fff4d3c:    00000000    ....    DCD    0
        0x1fff4d40:    0000feff    ....    DCD    65279
        0x1fff4d44:    1fff0a49    I...    DCD    536808009
        0x1fff4d48:    1fff0a44    D...    DCD    536808004
        0x1fff4d4c:    1fff0a45    E...    DCD    536808005
        0x1fff4d50:    1fff0a46    F...    DCD    536808006
        0x1fff4d54:    1fff0a47    G...    DCD    536808007
        0x1fff4d58:    1fff08f9    ....    DCD    536807673
        0x1fff4d5c:    1fff0922    "...    DCD    536807714
        0x1fff4d60:    1fff091c    ....    DCD    536807708
        0x1fff4d64:    1fff0923    #...    DCD    536807715
        0x1fff4d68:    1fff0bbc    ....    DCD    536808380
    $t
    i.ll_hw_read_tfifo_rtlp1
    ll_hw_read_tfifo_rtlp1
        0x1fff4d6c:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff4d6e:    4831        1H      LDR      r0,[pc,#196] ; [0x1fff4e34] = 0x1fff0d30
        0x1fff4d70:    21a1        .!      MOVS     r1,#0xa1
        0x1fff4d72:    7880        .x      LDRB     r0,[r0,#2]
        0x1fff4d74:    0089        ..      LSLS     r1,r1,#2
        0x1fff4d76:    4348        HC      MULS     r0,r1,r0
        0x1fff4d78:    492f        /I      LDR      r1,[pc,#188] ; [0x1fff4e38] = 0x1fff0934
        0x1fff4d7a:    6809        .h      LDR      r1,[r1,#0]
        0x1fff4d7c:    1844        D.      ADDS     r4,r0,r1
        0x1fff4d7e:    4626        &F      MOV      r6,r4
        0x1fff4d80:    36ff        .6      ADDS     r6,r6,#0xff
        0x1fff4d82:    3681        .6      ADDS     r6,r6,#0x81
        0x1fff4d84:    2000        .       MOVS     r0,#0
        0x1fff4d86:    6af1        .j      LDR      r1,[r6,#0x2c]
        0x1fff4d88:    4635        5F      MOV      r5,r6
        0x1fff4d8a:    3540        @5      ADDS     r5,r5,#0x40
        0x1fff4d8c:    6008        .`      STR      r0,[r1,#0]
        0x1fff4d8e:    7428        (t      STRB     r0,[r5,#0x10]
        0x1fff4d90:    482a        *H      LDR      r0,[pc,#168] ; [0x1fff4e3c] = 0x40031040
        0x1fff4d92:    68c1        .h      LDR      r1,[r0,#0xc]
        0x1fff4d94:    054a        J.      LSLS     r2,r1,#21
        0x1fff4d96:    6901        .i      LDR      r1,[r0,#0x10]
        0x1fff4d98:    0d52        R.      LSRS     r2,r2,#21
        0x1fff4d9a:    0149        I.      LSLS     r1,r1,#5
        0x1fff4d9c:    0d4b        K.      LSRS     r3,r1,#21
        0x1fff4d9e:    69c1        .i      LDR      r1,[r0,#0x1c]
        0x1fff4da0:    4f27        'O      LDR      r7,[pc,#156] ; [0x1fff4e40] = 0x7ff0000
        0x1fff4da2:    4039        9@      ANDS     r1,r1,r7
        0x1fff4da4:    4311        .C      ORRS     r1,r1,r2
        0x1fff4da6:    61c1        .a      STR      r1,[r0,#0x1c]
        0x1fff4da8:    1a9f        ..      SUBS     r7,r3,r2
        0x1fff4daa:    e01e        ..      B        0x1fff4dea ; ll_hw_read_tfifo_rtlp1 + 126
        0x1fff4dac:    6af0        .j      LDR      r0,[r6,#0x2c]
        0x1fff4dae:    6801        .h      LDR      r1,[r0,#0]
        0x1fff4db0:    2900        .)      CMP      r1,#0
        0x1fff4db2:    d01e        ..      BEQ      0x1fff4df2 ; ll_hw_read_tfifo_rtlp1 + 134
        0x1fff4db4:    4923        #I      LDR      r1,[pc,#140] ; [0x1fff4e44] = 0x1fff0915
        0x1fff4db6:    7c28        (|      LDRB     r0,[r5,#0x10]
        0x1fff4db8:    7809        .x      LDRB     r1,[r1,#0]
        0x1fff4dba:    4288        .B      CMP      r0,r1
        0x1fff4dbc:    d215        ..      BCS      0x1fff4dea ; ll_hw_read_tfifo_rtlp1 + 126
        0x1fff4dbe:    0080        ..      LSLS     r0,r0,#2
        0x1fff4dc0:    1900        ..      ADDS     r0,r0,r4
        0x1fff4dc2:    30ff        .0      ADDS     r0,r0,#0xff
        0x1fff4dc4:    3081        .0      ADDS     r0,r0,#0x81
        0x1fff4dc6:    6b00        .k      LDR      r0,[r0,#0x30]
        0x1fff4dc8:    2800        .(      CMP      r0,#0
        0x1fff4dca:    d00e        ..      BEQ      0x1fff4dea ; ll_hw_read_tfifo_rtlp1 + 126
        0x1fff4dcc:    1d00        ..      ADDS     r0,r0,#4
        0x1fff4dce:    f7fcff77    ..w.    BL       $Ven$TT$L$$ll_hw_read_tfifo_packet ; 0x1fff1cc0
        0x1fff4dd2:    1a3f        ?.      SUBS     r7,r7,r0
        0x1fff4dd4:    7c28        (|      LDRB     r0,[r5,#0x10]
        0x1fff4dd6:    0081        ..      LSLS     r1,r0,#2
        0x1fff4dd8:    1909        ..      ADDS     r1,r1,r4
        0x1fff4dda:    31ff        .1      ADDS     r1,r1,#0xff
        0x1fff4ddc:    3181        .1      ADDS     r1,r1,#0x81
        0x1fff4dde:    6b09        .k      LDR      r1,[r1,#0x30]
        0x1fff4de0:    8889        ..      LDRH     r1,[r1,#4]
        0x1fff4de2:    0a09        ..      LSRS     r1,r1,#8
        0x1fff4de4:    d001        ..      BEQ      0x1fff4dea ; ll_hw_read_tfifo_rtlp1 + 126
        0x1fff4de6:    1c40        @.      ADDS     r0,r0,#1
        0x1fff4de8:    7428        (t      STRB     r0,[r5,#0x10]
        0x1fff4dea:    2f00        ./      CMP      r7,#0
        0x1fff4dec:    dcde        ..      BGT      0x1fff4dac ; ll_hw_read_tfifo_rtlp1 + 64
        0x1fff4dee:    7c2d        -|      LDRB     r5,[r5,#0x10]
        0x1fff4df0:    e01c        ..      B        0x1fff4e2c ; ll_hw_read_tfifo_rtlp1 + 192
        0x1fff4df2:    1d00        ..      ADDS     r0,r0,#4
        0x1fff4df4:    f7fcff64    ..d.    BL       $Ven$TT$L$$ll_hw_read_tfifo_packet ; 0x1fff1cc0
        0x1fff4df8:    1a3f        ?.      SUBS     r7,r7,r0
        0x1fff4dfa:    6af1        .j      LDR      r1,[r6,#0x2c]
        0x1fff4dfc:    2001        .       MOVS     r0,#1
        0x1fff4dfe:    6008        .`      STR      r0,[r1,#0]
        0x1fff4e00:    e7f3        ..      B        0x1fff4dea ; ll_hw_read_tfifo_rtlp1 + 126
        0x1fff4e02:    00a8        ..      LSLS     r0,r5,#2
        0x1fff4e04:    1906        ..      ADDS     r6,r0,r4
        0x1fff4e06:    36ff        .6      ADDS     r6,r6,#0xff
        0x1fff4e08:    3681        .6      ADDS     r6,r6,#0x81
        0x1fff4e0a:    6b31        1k      LDR      r1,[r6,#0x30]
        0x1fff4e0c:    2900        .)      CMP      r1,#0
        0x1fff4e0e:    d00b        ..      BEQ      0x1fff4e28 ; ll_hw_read_tfifo_rtlp1 + 188
        0x1fff4e10:    4808        .H      LDR      r0,[pc,#32] ; [0x1fff4e34] = 0x1fff0d30
        0x1fff4e12:    7880        .x      LDRB     r0,[r0,#2]
        0x1fff4e14:    f000f862    ..b.    BL       ll_osal_mem_free ; 0x1fff4edc
        0x1fff4e18:    2000        .       MOVS     r0,#0
        0x1fff4e1a:    6330        0c      STR      r0,[r6,#0x30]
        0x1fff4e1c:    2005        .       MOVS     r0,#5
        0x1fff4e1e:    01c0        ..      LSLS     r0,r0,#7
        0x1fff4e20:    1820         .      ADDS     r0,r4,r0
        0x1fff4e22:    7881        .x      LDRB     r1,[r0,#2]
        0x1fff4e24:    1e49        I.      SUBS     r1,r1,#1
        0x1fff4e26:    7081        .p      STRB     r1,[r0,#2]
        0x1fff4e28:    1c6d        m.      ADDS     r5,r5,#1
        0x1fff4e2a:    b2ed        ..      UXTB     r5,r5
        0x1fff4e2c:    2d08        .-      CMP      r5,#8
        0x1fff4e2e:    d3e8        ..      BCC      0x1fff4e02 ; ll_hw_read_tfifo_rtlp1 + 150
        0x1fff4e30:    bdf8        ..      POP      {r3-r7,pc}
    $d
        0x1fff4e32:    0000        ..      DCW    0
        0x1fff4e34:    1fff0d30    0...    DCD    536808752
        0x1fff4e38:    1fff0934    4...    DCD    536807732
        0x1fff4e3c:    40031040    @..@    DCD    1073942592
        0x1fff4e40:    07ff0000    ....    DCD    134152192
        0x1fff4e44:    1fff0915    ....    DCD    536807701
    $t
    i.ll_osal_mem_alloc
    ll_osal_mem_alloc
        0x1fff4e48:    b5f7        ..      PUSH     {r0-r2,r4-r7,lr}
        0x1fff4e4a:    b084        ..      SUB      sp,sp,#0x10
        0x1fff4e4c:    460c        .F      MOV      r4,r1
        0x1fff4e4e:    f7fcfd57    ..W.    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff1900
        0x1fff4e52:    4d1c        .M      LDR      r5,[pc,#112] ; [0x1fff4ec4] = 0x1fff08d8
        0x1fff4e54:    4e1c        .N      LDR      r6,[pc,#112] ; [0x1fff4ec8] = 0x1fff08d4
        0x1fff4e56:    6828        (h      LDR      r0,[r5,#0]
        0x1fff4e58:    9002        ..      STR      r0,[sp,#8]
        0x1fff4e5a:    6830        0h      LDR      r0,[r6,#0]
        0x1fff4e5c:    4f1b        .O      LDR      r7,[pc,#108] ; [0x1fff4ecc] = 0x1fff08dc
        0x1fff4e5e:    9001        ..      STR      r0,[sp,#4]
        0x1fff4e60:    6838        8h      LDR      r0,[r7,#0]
        0x1fff4e62:    9000        ..      STR      r0,[sp,#0]
        0x1fff4e64:    481a        .H      LDR      r0,[pc,#104] ; [0x1fff4ed0] = 0x1fff6dcc
        0x1fff4e66:    6b81        .k      LDR      r1,[r0,#0x38]
        0x1fff4e68:    6029        )`      STR      r1,[r5,#0]
        0x1fff4e6a:    6bc1        .k      LDR      r1,[r0,#0x3c]
        0x1fff4e6c:    6031        1`      STR      r1,[r6,#0]
        0x1fff4e6e:    6c00        .l      LDR      r0,[r0,#0x40]
        0x1fff4e70:    6038        8`      STR      r0,[r7,#0]
        0x1fff4e72:    4818        .H      LDR      r0,[pc,#96] ; [0x1fff4ed4] = 0x1fff08d0
        0x1fff4e74:    2100        .!      MOVS     r1,#0
        0x1fff4e76:    7001        .p      STRB     r1,[r0,#0]
        0x1fff4e78:    4620         F      MOV      r0,r4
        0x1fff4e7a:    f7fcff27    ..'.    BL       $Ven$TT$L$$osal_mem_alloc ; 0x1fff1ccc
        0x1fff4e7e:    4604        .F      MOV      r4,r0
        0x1fff4e80:    9802        ..      LDR      r0,[sp,#8]
        0x1fff4e82:    6028        (`      STR      r0,[r5,#0]
        0x1fff4e84:    9801        ..      LDR      r0,[sp,#4]
        0x1fff4e86:    6030        0`      STR      r0,[r6,#0]
        0x1fff4e88:    9800        ..      LDR      r0,[sp,#0]
        0x1fff4e8a:    6038        8`      STR      r0,[r7,#0]
        0x1fff4e8c:    4811        .H      LDR      r0,[pc,#68] ; [0x1fff4ed4] = 0x1fff08d0
        0x1fff4e8e:    2201        ."      MOVS     r2,#1
        0x1fff4e90:    7002        .p      STRB     r2,[r0,#0]
        0x1fff4e92:    9904        ..      LDR      r1,[sp,#0x10]
        0x1fff4e94:    4b10        .K      LDR      r3,[pc,#64] ; [0x1fff4ed8] = 0x1fff7824
        0x1fff4e96:    251c        .%      MOVS     r5,#0x1c
        0x1fff4e98:    4369        iC      MULS     r1,r5,r1
        0x1fff4e9a:    18c9        ..      ADDS     r1,r1,r3
        0x1fff4e9c:    2c00        .,      CMP      r4,#0
        0x1fff4e9e:    d003        ..      BEQ      0x1fff4ea8 ; ll_osal_mem_alloc + 96
        0x1fff4ea0:    7e08        .~      LDRB     r0,[r1,#0x18]
        0x1fff4ea2:    1c40        @.      ADDS     r0,r0,#1
        0x1fff4ea4:    7608        .v      STRB     r0,[r1,#0x18]
        0x1fff4ea6:    e007        ..      B        0x1fff4eb8 ; ll_osal_mem_alloc + 112
        0x1fff4ea8:    9806        ..      LDR      r0,[sp,#0x18]
        0x1fff4eaa:    00c0        ..      LSLS     r0,r0,#3
        0x1fff4eac:    5c0b        .\      LDRB     r3,[r1,r0]
        0x1fff4eae:    2b00        .+      CMP      r3,#0
        0x1fff4eb0:    d102        ..      BNE      0x1fff4eb8 ; ll_osal_mem_alloc + 112
        0x1fff4eb2:    540a        .T      STRB     r2,[r1,r0]
        0x1fff4eb4:    1808        ..      ADDS     r0,r1,r0
        0x1fff4eb6:    6844        Dh      LDR      r4,[r0,#4]
        0x1fff4eb8:    f7fcfd2e    ....    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff1918
        0x1fff4ebc:    4620         F      MOV      r0,r4
        0x1fff4ebe:    b007        ..      ADD      sp,sp,#0x1c
        0x1fff4ec0:    bdf0        ..      POP      {r4-r7,pc}
    $d
        0x1fff4ec2:    0000        ..      DCW    0
        0x1fff4ec4:    1fff08d8    ....    DCD    536807640
        0x1fff4ec8:    1fff08d4    ....    DCD    536807636
        0x1fff4ecc:    1fff08dc    ....    DCD    536807644
        0x1fff4ed0:    1fff6dcc    .m..    DCD    536833484
        0x1fff4ed4:    1fff08d0    ....    DCD    536807632
        0x1fff4ed8:    1fff7824    $x..    DCD    536836132
    $t
    i.ll_osal_mem_free
    ll_osal_mem_free
        0x1fff4edc:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff4ede:    460c        .F      MOV      r4,r1
        0x1fff4ee0:    4605        .F      MOV      r5,r0
        0x1fff4ee2:    f7fcfd0d    ....    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff1900
        0x1fff4ee6:    4810        .H      LDR      r0,[pc,#64] ; [0x1fff4f28] = 0x1fff7824
        0x1fff4ee8:    211c        .!      MOVS     r1,#0x1c
        0x1fff4eea:    2200        ."      MOVS     r2,#0
        0x1fff4eec:    434d        MC      MULS     r5,r1,r5
        0x1fff4eee:    1828        (.      ADDS     r0,r5,r0
        0x1fff4ef0:    00d1        ..      LSLS     r1,r2,#3
        0x1fff4ef2:    5c43        C\      LDRB     r3,[r0,r1]
        0x1fff4ef4:    2b00        .+      CMP      r3,#0
        0x1fff4ef6:    d009        ..      BEQ      0x1fff4f0c ; ll_osal_mem_free + 48
        0x1fff4ef8:    1841        A.      ADDS     r1,r0,r1
        0x1fff4efa:    6849        Ih      LDR      r1,[r1,#4]
        0x1fff4efc:    42a1        .B      CMP      r1,r4
        0x1fff4efe:    d105        ..      BNE      0x1fff4f0c ; ll_osal_mem_free + 48
        0x1fff4f00:    2100        .!      MOVS     r1,#0
        0x1fff4f02:    00d2        ..      LSLS     r2,r2,#3
        0x1fff4f04:    5481        .T      STRB     r1,[r0,r2]
        0x1fff4f06:    f7fcfd07    ....    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff1918
        0x1fff4f0a:    bd70        p.      POP      {r4-r6,pc}
        0x1fff4f0c:    1c52        R.      ADDS     r2,r2,#1
        0x1fff4f0e:    b2d2        ..      UXTB     r2,r2
        0x1fff4f10:    2a03        .*      CMP      r2,#3
        0x1fff4f12:    d3ed        ..      BCC      0x1fff4ef0 ; ll_osal_mem_free + 20
        0x1fff4f14:    1f24        $.      SUBS     r4,r4,#4
        0x1fff4f16:    8821        !.      LDRH     r1,[r4,#0]
        0x1fff4f18:    0449        I.      LSLS     r1,r1,#17
        0x1fff4f1a:    0c49        I.      LSRS     r1,r1,#17
        0x1fff4f1c:    8021        !.      STRH     r1,[r4,#0]
        0x1fff4f1e:    7e01        .~      LDRB     r1,[r0,#0x18]
        0x1fff4f20:    1e49        I.      SUBS     r1,r1,#1
        0x1fff4f22:    7601        .v      STRB     r1,[r0,#0x18]
        0x1fff4f24:    e7ef        ..      B        0x1fff4f06 ; ll_osal_mem_free + 42
    $d
        0x1fff4f26:    0000        ..      DCW    0
        0x1fff4f28:    1fff7824    $x..    DCD    536836132
    $t
    i.ll_processBasicIRQ_SRX
    ll_processBasicIRQ_SRX
        0x1fff4f2c:    b510        ..      PUSH     {r4,lr}
        0x1fff4f2e:    4904        .I      LDR      r1,[pc,#16] ; [0x1fff4f40] = 0x1fff0280
        0x1fff4f30:    6809        .h      LDR      r1,[r1,#0]
        0x1fff4f32:    2900        .)      CMP      r1,#0
        0x1fff4f34:    d001        ..      BEQ      0x1fff4f3a ; ll_processBasicIRQ_SRX + 14
        0x1fff4f36:    4788        .G      BLX      r1
        0x1fff4f38:    bd10        ..      POP      {r4,pc}
        0x1fff4f3a:    f7fcfd77    ..w.    BL       $Ven$TT$L$$ll_processBasicIRQ ; 0x1fff1a2c
        0x1fff4f3e:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff4f40:    1fff0280    ....    DCD    536806016
    $t
    i.ll_processBasicIRQ_ScanTRX
    ll_processBasicIRQ_ScanTRX
        0x1fff4f44:    b510        ..      PUSH     {r4,lr}
        0x1fff4f46:    4904        .I      LDR      r1,[pc,#16] ; [0x1fff4f58] = 0x1fff0280
        0x1fff4f48:    6889        .h      LDR      r1,[r1,#8]
        0x1fff4f4a:    2900        .)      CMP      r1,#0
        0x1fff4f4c:    d001        ..      BEQ      0x1fff4f52 ; ll_processBasicIRQ_ScanTRX + 14
        0x1fff4f4e:    4788        .G      BLX      r1
        0x1fff4f50:    bd10        ..      POP      {r4,pc}
        0x1fff4f52:    f7fcfd6b    ..k.    BL       $Ven$TT$L$$ll_processBasicIRQ ; 0x1fff1a2c
        0x1fff4f56:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff4f58:    1fff0280    ....    DCD    536806016
    $t
    i.ll_processBasicIRQ_secScanTRX
    ll_processBasicIRQ_secScanTRX
        0x1fff4f5c:    b510        ..      PUSH     {r4,lr}
        0x1fff4f5e:    4904        .I      LDR      r1,[pc,#16] ; [0x1fff4f70] = 0x1fff0280
        0x1fff4f60:    6989        .i      LDR      r1,[r1,#0x18]
        0x1fff4f62:    2900        .)      CMP      r1,#0
        0x1fff4f64:    d001        ..      BEQ      0x1fff4f6a ; ll_processBasicIRQ_secScanTRX + 14
        0x1fff4f66:    4788        .G      BLX      r1
        0x1fff4f68:    bd10        ..      POP      {r4,pc}
        0x1fff4f6a:    f7fcfd5f    .._.    BL       $Ven$TT$L$$ll_processBasicIRQ ; 0x1fff1a2c
        0x1fff4f6e:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff4f70:    1fff0280    ....    DCD    536806016
    $t
    i.ll_processBasicIRQ_secondaryAdvSTX
    ll_processBasicIRQ_secondaryAdvSTX
        0x1fff4f74:    b510        ..      PUSH     {r4,lr}
        0x1fff4f76:    4904        .I      LDR      r1,[pc,#16] ; [0x1fff4f88] = 0x1fff0280
        0x1fff4f78:    6949        Ii      LDR      r1,[r1,#0x14]
        0x1fff4f7a:    2900        .)      CMP      r1,#0
        0x1fff4f7c:    d001        ..      BEQ      0x1fff4f82 ; ll_processBasicIRQ_secondaryAdvSTX + 14
        0x1fff4f7e:    4788        .G      BLX      r1
        0x1fff4f80:    bd10        ..      POP      {r4,pc}
        0x1fff4f82:    f7fcfd53    ..S.    BL       $Ven$TT$L$$ll_processBasicIRQ ; 0x1fff1a2c
        0x1fff4f86:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff4f88:    1fff0280    ....    DCD    536806016
    $t
    i.ll_processBasicIRQ_secondaryAdvTRX
    ll_processBasicIRQ_secondaryAdvTRX
        0x1fff4f8c:    b510        ..      PUSH     {r4,lr}
        0x1fff4f8e:    4904        .I      LDR      r1,[pc,#16] ; [0x1fff4fa0] = 0x1fff0280
        0x1fff4f90:    6849        Ih      LDR      r1,[r1,#4]
        0x1fff4f92:    2900        .)      CMP      r1,#0
        0x1fff4f94:    d001        ..      BEQ      0x1fff4f9a ; ll_processBasicIRQ_secondaryAdvTRX + 14
        0x1fff4f96:    4788        .G      BLX      r1
        0x1fff4f98:    bd10        ..      POP      {r4,pc}
        0x1fff4f9a:    f7fcfd47    ..G.    BL       $Ven$TT$L$$ll_processBasicIRQ ; 0x1fff1a2c
        0x1fff4f9e:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff4fa0:    1fff0280    ....    DCD    536806016
    $t
    i.ll_processBasicIRQ_secondaryInitSRX
    ll_processBasicIRQ_secondaryInitSRX
        0x1fff4fa4:    b510        ..      PUSH     {r4,lr}
        0x1fff4fa6:    4904        .I      LDR      r1,[pc,#16] ; [0x1fff4fb8] = 0x1fff0280
        0x1fff4fa8:    6909        .i      LDR      r1,[r1,#0x10]
        0x1fff4faa:    2900        .)      CMP      r1,#0
        0x1fff4fac:    d001        ..      BEQ      0x1fff4fb2 ; ll_processBasicIRQ_secondaryInitSRX + 14
        0x1fff4fae:    4788        .G      BLX      r1
        0x1fff4fb0:    bd10        ..      POP      {r4,pc}
        0x1fff4fb2:    f7fcfd3b    ..;.    BL       $Ven$TT$L$$ll_processBasicIRQ ; 0x1fff1a2c
        0x1fff4fb6:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff4fb8:    1fff0280    ....    DCD    536806016
    $t
    i.ll_processBasicIRQ_secondaryScanSRX
    ll_processBasicIRQ_secondaryScanSRX
        0x1fff4fbc:    b510        ..      PUSH     {r4,lr}
        0x1fff4fbe:    4904        .I      LDR      r1,[pc,#16] ; [0x1fff4fd0] = 0x1fff0280
        0x1fff4fc0:    68c9        .h      LDR      r1,[r1,#0xc]
        0x1fff4fc2:    2900        .)      CMP      r1,#0
        0x1fff4fc4:    d001        ..      BEQ      0x1fff4fca ; ll_processBasicIRQ_secondaryScanSRX + 14
        0x1fff4fc6:    4788        .G      BLX      r1
        0x1fff4fc8:    bd10        ..      POP      {r4,pc}
        0x1fff4fca:    f7fcfd2f    ../.    BL       $Ven$TT$L$$ll_processBasicIRQ ; 0x1fff1a2c
        0x1fff4fce:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff4fd0:    1fff0280    ....    DCD    536806016
    $t
    i.ll_read_rxfifo1
    ll_read_rxfifo1
        0x1fff4fd4:    b510        ..      PUSH     {r4,lr}
        0x1fff4fd6:    480a        .H      LDR      r0,[pc,#40] ; [0x1fff5000] = 0x1fff0d30
        0x1fff4fd8:    21a1        .!      MOVS     r1,#0xa1
        0x1fff4fda:    7880        .x      LDRB     r0,[r0,#2]
        0x1fff4fdc:    0089        ..      LSLS     r1,r1,#2
        0x1fff4fde:    4348        HC      MULS     r0,r1,r0
        0x1fff4fe0:    4908        .I      LDR      r1,[pc,#32] ; [0x1fff5004] = 0x1fff0934
        0x1fff4fe2:    6809        .h      LDR      r1,[r1,#0]
        0x1fff4fe4:    1840        @.      ADDS     r0,r0,r1
        0x1fff4fe6:    7900        .y      LDRB     r0,[r0,#4]
        0x1fff4fe8:    4907        .I      LDR      r1,[pc,#28] ; [0x1fff5008] = 0x1fff7804
        0x1fff4fea:    0040        @.      LSLS     r0,r0,#1
        0x1fff4fec:    5c08        .\      LDRB     r0,[r1,r0]
        0x1fff4fee:    2800        .(      CMP      r0,#0
        0x1fff4ff0:    d003        ..      BEQ      0x1fff4ffa ; ll_read_rxfifo1 + 38
        0x1fff4ff2:    4906        .I      LDR      r1,[pc,#24] ; [0x1fff500c] = 0x1fff10e0
        0x1fff4ff4:    2000        .       MOVS     r0,#0
        0x1fff4ff6:    7188        .q      STRB     r0,[r1,#6]
        0x1fff4ff8:    bd10        ..      POP      {r4,pc}
        0x1fff4ffa:    f7fcfe6d    ..m.    BL       $Ven$TT$L$$ll_read_rxfifo0 ; 0x1fff1cd8
        0x1fff4ffe:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff5000:    1fff0d30    0...    DCD    536808752
        0x1fff5004:    1fff0934    4...    DCD    536807732
        0x1fff5008:    1fff7804    .x..    DCD    536836100
        0x1fff500c:    1fff10e0    ....    DCD    536809696
    $t
    i.llbuf_alloc_time_statics
    llbuf_alloc_time_statics
        0x1fff5010:    b510        ..      PUSH     {r4,lr}
        0x1fff5012:    4604        .F      MOV      r4,r0
        0x1fff5014:    f7fcfcce    ....    BL       $Ven$TT$L$$read_current_fine_time ; 0x1fff19b4
        0x1fff5018:    42a0        .B      CMP      r0,r4
        0x1fff501a:    d303        ..      BCC      0x1fff5024 ; llbuf_alloc_time_statics + 20
        0x1fff501c:    f7fcfcca    ....    BL       $Ven$TT$L$$read_current_fine_time ; 0x1fff19b4
        0x1fff5020:    1b01        ..      SUBS     r1,r0,r4
        0x1fff5022:    e004        ..      B        0x1fff502e ; llbuf_alloc_time_statics + 30
        0x1fff5024:    f7fcfcc6    ....    BL       $Ven$TT$L$$read_current_fine_time ; 0x1fff19b4
        0x1fff5028:    4909        .I      LDR      r1,[pc,#36] ; [0x1fff5050] = 0x3fffff
        0x1fff502a:    1b09        ..      SUBS     r1,r1,r4
        0x1fff502c:    1841        A.      ADDS     r1,r0,r1
        0x1fff502e:    4809        .H      LDR      r0,[pc,#36] ; [0x1fff5054] = 0x1fff6dcc
        0x1fff5030:    6a02        .j      LDR      r2,[r0,#0x20]
        0x1fff5032:    4291        .B      CMP      r1,r2
        0x1fff5034:    d200        ..      BCS      0x1fff5038 ; llbuf_alloc_time_statics + 40
        0x1fff5036:    6201        .b      STR      r1,[r0,#0x20]
        0x1fff5038:    69c2        .i      LDR      r2,[r0,#0x1c]
        0x1fff503a:    4291        .B      CMP      r1,r2
        0x1fff503c:    d900        ..      BLS      0x1fff5040 ; llbuf_alloc_time_statics + 48
        0x1fff503e:    61c1        .a      STR      r1,[r0,#0x1c]
        0x1fff5040:    6a42        Bj      LDR      r2,[r0,#0x24]
        0x1fff5042:    00d3        ..      LSLS     r3,r2,#3
        0x1fff5044:    1a9a        ..      SUBS     r2,r3,r2
        0x1fff5046:    1851        Q.      ADDS     r1,r2,r1
        0x1fff5048:    08c9        ..      LSRS     r1,r1,#3
        0x1fff504a:    6241        Ab      STR      r1,[r0,#0x24]
        0x1fff504c:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff504e:    0000        ..      DCW    0
        0x1fff5050:    003fffff    ..?.    DCD    4194303
        0x1fff5054:    1fff6dcc    .m..    DCD    536833484
    $t
    i.log_vsprintf
    log_vsprintf
        0x1fff5058:    b5f7        ..      PUSH     {r0-r2,r4-r7,lr}
        0x1fff505a:    4606        .F      MOV      r6,r0
        0x1fff505c:    b086        ..      SUB      sp,sp,#0x18
        0x1fff505e:    2000        .       MOVS     r0,#0
        0x1fff5060:    9004        ..      STR      r0,[sp,#0x10]
        0x1fff5062:    9003        ..      STR      r0,[sp,#0xc]
        0x1fff5064:    9807        ..      LDR      r0,[sp,#0x1c]
        0x1fff5066:    e110        ..      B        0x1fff528a ; log_vsprintf + 562
        0x1fff5068:    2925        %)      CMP      r1,#0x25
        0x1fff506a:    d00a        ..      BEQ      0x1fff5082 ; log_vsprintf + 42
        0x1fff506c:    9904        ..      LDR      r1,[sp,#0x10]
        0x1fff506e:    2900        .)      CMP      r1,#0
        0x1fff5070:    d001        ..      BEQ      0x1fff5076 ; log_vsprintf + 30
        0x1fff5072:    9803        ..      LDR      r0,[sp,#0xc]
        0x1fff5074:    e002        ..      B        0x1fff507c ; log_vsprintf + 36
        0x1fff5076:    9004        ..      STR      r0,[sp,#0x10]
        0x1fff5078:    2000        .       MOVS     r0,#0
        0x1fff507a:    9003        ..      STR      r0,[sp,#0xc]
        0x1fff507c:    1c40        @.      ADDS     r0,r0,#1
        0x1fff507e:    9003        ..      STR      r0,[sp,#0xc]
        0x1fff5080:    e100        ..      B        0x1fff5284 ; log_vsprintf + 556
        0x1fff5082:    9803        ..      LDR      r0,[sp,#0xc]
        0x1fff5084:    2800        .(      CMP      r0,#0
        0x1fff5086:    d005        ..      BEQ      0x1fff5094 ; log_vsprintf + 60
        0x1fff5088:    b281        ..      UXTH     r1,r0
        0x1fff508a:    9804        ..      LDR      r0,[sp,#0x10]
        0x1fff508c:    47b0        .G      BLX      r6
        0x1fff508e:    2000        .       MOVS     r0,#0
        0x1fff5090:    9004        ..      STR      r0,[sp,#0x10]
        0x1fff5092:    9003        ..      STR      r0,[sp,#0xc]
        0x1fff5094:    2500        .%      MOVS     r5,#0
        0x1fff5096:    2204        ."      MOVS     r2,#4
        0x1fff5098:    2308        .#      MOVS     r3,#8
        0x1fff509a:    2110        .!      MOVS     r1,#0x10
        0x1fff509c:    9807        ..      LDR      r0,[sp,#0x1c]
        0x1fff509e:    1c40        @.      ADDS     r0,r0,#1
        0x1fff50a0:    9007        ..      STR      r0,[sp,#0x1c]
        0x1fff50a2:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff50a4:    282b        +(      CMP      r0,#0x2b
        0x1fff50a6:    d019        ..      BEQ      0x1fff50dc ; log_vsprintf + 132
        0x1fff50a8:    dc04        ..      BGT      0x1fff50b4 ; log_vsprintf + 92
        0x1fff50aa:    2820         (      CMP      r0,#0x20
        0x1fff50ac:    d018        ..      BEQ      0x1fff50e0 ; log_vsprintf + 136
        0x1fff50ae:    2823        #(      CMP      r0,#0x23
        0x1fff50b0:    d104        ..      BNE      0x1fff50bc ; log_vsprintf + 100
        0x1fff50b2:    e017        ..      B        0x1fff50e4 ; log_vsprintf + 140
        0x1fff50b4:    282d        -(      CMP      r0,#0x2d
        0x1fff50b6:    d00f        ..      BEQ      0x1fff50d8 ; log_vsprintf + 128
        0x1fff50b8:    2830        0(      CMP      r0,#0x30
        0x1fff50ba:    d015        ..      BEQ      0x1fff50e8 ; log_vsprintf + 144
        0x1fff50bc:    9a07        ..      LDR      r2,[sp,#0x1c]
        0x1fff50be:    2700        .'      MOVS     r7,#0
        0x1fff50c0:    7810        .x      LDRB     r0,[r2,#0]
        0x1fff50c2:    43ff        .C      MVNS     r7,r7
        0x1fff50c4:    4603        .F      MOV      r3,r0
        0x1fff50c6:    3b30        0;      SUBS     r3,r3,#0x30
        0x1fff50c8:    463c        <F      MOV      r4,r7
        0x1fff50ca:    2b09        .+      CMP      r3,#9
        0x1fff50cc:    d80f        ..      BHI      0x1fff50ee ; log_vsprintf + 150
        0x1fff50ce:    a807        ..      ADD      r0,sp,#0x1c
        0x1fff50d0:    f001f9b2    ....    BL       skip_atoi ; 0x1fff6438
        0x1fff50d4:    4604        .F      MOV      r4,r0
        0x1fff50d6:    e015        ..      B        0x1fff5104 ; log_vsprintf + 172
        0x1fff50d8:    430d        .C      ORRS     r5,r5,r1
        0x1fff50da:    e7df        ..      B        0x1fff509c ; log_vsprintf + 68
        0x1fff50dc:    4315        .C      ORRS     r5,r5,r2
        0x1fff50de:    e7dd        ..      B        0x1fff509c ; log_vsprintf + 68
        0x1fff50e0:    431d        .C      ORRS     r5,r5,r3
        0x1fff50e2:    e7db        ..      B        0x1fff509c ; log_vsprintf + 68
        0x1fff50e4:    2020                MOVS     r0,#0x20
        0x1fff50e6:    e000        ..      B        0x1fff50ea ; log_vsprintf + 146
        0x1fff50e8:    2001        .       MOVS     r0,#1
        0x1fff50ea:    4305        .C      ORRS     r5,r5,r0
        0x1fff50ec:    e7d6        ..      B        0x1fff509c ; log_vsprintf + 68
        0x1fff50ee:    282a        *(      CMP      r0,#0x2a
        0x1fff50f0:    d108        ..      BNE      0x1fff5104 ; log_vsprintf + 172
        0x1fff50f2:    1c52        R.      ADDS     r2,r2,#1
        0x1fff50f4:    9808        ..      LDR      r0,[sp,#0x20]
        0x1fff50f6:    9207        ..      STR      r2,[sp,#0x1c]
        0x1fff50f8:    c810        ..      LDM      r0!,{r4}
        0x1fff50fa:    9008        ..      STR      r0,[sp,#0x20]
        0x1fff50fc:    2c00        .,      CMP      r4,#0
        0x1fff50fe:    da01        ..      BGE      0x1fff5104 ; log_vsprintf + 172
        0x1fff5100:    4264        dB      RSBS     r4,r4,#0
        0x1fff5102:    430d        .C      ORRS     r5,r5,r1
        0x1fff5104:    9907        ..      LDR      r1,[sp,#0x1c]
        0x1fff5106:    4638        8F      MOV      r0,r7
        0x1fff5108:    780a        .x      LDRB     r2,[r1,#0]
        0x1fff510a:    2a2e        .*      CMP      r2,#0x2e
        0x1fff510c:    d114        ..      BNE      0x1fff5138 ; log_vsprintf + 224
        0x1fff510e:    1c49        I.      ADDS     r1,r1,#1
        0x1fff5110:    9107        ..      STR      r1,[sp,#0x1c]
        0x1fff5112:    7808        .x      LDRB     r0,[r1,#0]
        0x1fff5114:    4602        .F      MOV      r2,r0
        0x1fff5116:    3a30        0:      SUBS     r2,r2,#0x30
        0x1fff5118:    2a09        .*      CMP      r2,#9
        0x1fff511a:    d803        ..      BHI      0x1fff5124 ; log_vsprintf + 204
        0x1fff511c:    a807        ..      ADD      r0,sp,#0x1c
        0x1fff511e:    f001f98b    ....    BL       skip_atoi ; 0x1fff6438
        0x1fff5122:    e006        ..      B        0x1fff5132 ; log_vsprintf + 218
        0x1fff5124:    282a        *(      CMP      r0,#0x2a
        0x1fff5126:    d106        ..      BNE      0x1fff5136 ; log_vsprintf + 222
        0x1fff5128:    1c49        I.      ADDS     r1,r1,#1
        0x1fff512a:    9107        ..      STR      r1,[sp,#0x1c]
        0x1fff512c:    9908        ..      LDR      r1,[sp,#0x20]
        0x1fff512e:    c901        ..      LDM      r1!,{r0}
        0x1fff5130:    9108        ..      STR      r1,[sp,#0x20]
        0x1fff5132:    2800        .(      CMP      r0,#0
        0x1fff5134:    da00        ..      BGE      0x1fff5138 ; log_vsprintf + 224
        0x1fff5136:    2000        .       MOVS     r0,#0
        0x1fff5138:    9a07        ..      LDR      r2,[sp,#0x1c]
        0x1fff513a:    4639        9F      MOV      r1,r7
        0x1fff513c:    7817        .x      LDRB     r7,[r2,#0]
        0x1fff513e:    2f68        h/      CMP      r7,#0x68
        0x1fff5140:    d003        ..      BEQ      0x1fff514a ; log_vsprintf + 242
        0x1fff5142:    2f6c        l/      CMP      r7,#0x6c
        0x1fff5144:    d001        ..      BEQ      0x1fff514a ; log_vsprintf + 242
        0x1fff5146:    2f4c        L/      CMP      r7,#0x4c
        0x1fff5148:    d102        ..      BNE      0x1fff5150 ; log_vsprintf + 248
        0x1fff514a:    1c52        R.      ADDS     r2,r2,#1
        0x1fff514c:    4639        9F      MOV      r1,r7
        0x1fff514e:    9207        ..      STR      r2,[sp,#0x1c]
        0x1fff5150:    9b07        ..      LDR      r3,[sp,#0x1c]
        0x1fff5152:    220a        ."      MOVS     r2,#0xa
        0x1fff5154:    781b        .x      LDRB     r3,[r3,#0]
        0x1fff5156:    2b6e        n+      CMP      r3,#0x6e
        0x1fff5158:    d02c        ,.      BEQ      0x1fff51b4 ; log_vsprintf + 348
        0x1fff515a:    dc0c        ..      BGT      0x1fff5176 ; log_vsprintf + 286
        0x1fff515c:    2b63        c+      CMP      r3,#0x63
        0x1fff515e:    d02a        *.      BEQ      0x1fff51b6 ; log_vsprintf + 350
        0x1fff5160:    dc04        ..      BGT      0x1fff516c ; log_vsprintf + 276
        0x1fff5162:    2b41        A+      CMP      r3,#0x41
        0x1fff5164:    d026        &.      BEQ      0x1fff51b4 ; log_vsprintf + 348
        0x1fff5166:    2b58        X+      CMP      r3,#0x58
        0x1fff5168:    d111        ..      BNE      0x1fff518e ; log_vsprintf + 310
        0x1fff516a:    e09b        ..      B        0x1fff52a4 ; log_vsprintf + 588
        0x1fff516c:    2b64        d+      CMP      r3,#0x64
        0x1fff516e:    d001        ..      BEQ      0x1fff5174 ; log_vsprintf + 284
        0x1fff5170:    2b69        i+      CMP      r3,#0x69
        0x1fff5172:    d10c        ..      BNE      0x1fff518e ; log_vsprintf + 310
        0x1fff5174:    e09a        ..      B        0x1fff52ac ; log_vsprintf + 596
        0x1fff5176:    2b73        s+      CMP      r3,#0x73
        0x1fff5178:    d03d        =.      BEQ      0x1fff51f6 ; log_vsprintf + 414
        0x1fff517a:    dc04        ..      BGT      0x1fff5186 ; log_vsprintf + 302
        0x1fff517c:    2b6f        o+      CMP      r3,#0x6f
        0x1fff517e:    d077        w.      BEQ      0x1fff5270 ; log_vsprintf + 536
        0x1fff5180:    2b70        p+      CMP      r3,#0x70
        0x1fff5182:    d104        ..      BNE      0x1fff518e ; log_vsprintf + 310
        0x1fff5184:    e064        d.      B        0x1fff5250 ; log_vsprintf + 504
        0x1fff5186:    2b75        u+      CMP      r3,#0x75
        0x1fff5188:    d073        s.      BEQ      0x1fff5272 ; log_vsprintf + 538
        0x1fff518a:    2b78        x+      CMP      r3,#0x78
        0x1fff518c:    d06f        o.      BEQ      0x1fff526e ; log_vsprintf + 534
        0x1fff518e:    2b25        %+      CMP      r3,#0x25
        0x1fff5190:    d009        ..      BEQ      0x1fff51a6 ; log_vsprintf + 334
        0x1fff5192:    2025        %       MOVS     r0,#0x25
        0x1fff5194:    4669        iF      MOV      r1,sp
        0x1fff5196:    7208        .r      STRB     r0,[r1,#8]
        0x1fff5198:    2101        .!      MOVS     r1,#1
        0x1fff519a:    a802        ..      ADD      r0,sp,#8
        0x1fff519c:    47b0        .G      BLX      r6
        0x1fff519e:    9807        ..      LDR      r0,[sp,#0x1c]
        0x1fff51a0:    7801        .x      LDRB     r1,[r0,#0]
        0x1fff51a2:    2900        .)      CMP      r1,#0
        0x1fff51a4:    d075        u.      BEQ      0x1fff5292 ; log_vsprintf + 570
        0x1fff51a6:    9807        ..      LDR      r0,[sp,#0x1c]
        0x1fff51a8:    4669        iF      MOV      r1,sp
        0x1fff51aa:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff51ac:    7208        .r      STRB     r0,[r1,#8]
        0x1fff51ae:    2101        .!      MOVS     r1,#1
        0x1fff51b0:    a802        ..      ADD      r0,sp,#8
        0x1fff51b2:    47b0        .G      BLX      r6
        0x1fff51b4:    e066        f.      B        0x1fff5284 ; log_vsprintf + 556
        0x1fff51b6:    06e8        ..      LSLS     r0,r5,#27
        0x1fff51b8:    d409        ..      BMI      0x1fff51ce ; log_vsprintf + 374
        0x1fff51ba:    2520         %      MOVS     r5,#0x20
        0x1fff51bc:    1e64        d.      SUBS     r4,r4,#1
        0x1fff51be:    2c00        .,      CMP      r4,#0
        0x1fff51c0:    dd05        ..      BLE      0x1fff51ce ; log_vsprintf + 374
        0x1fff51c2:    4668        hF      MOV      r0,sp
        0x1fff51c4:    7205        .r      STRB     r5,[r0,#8]
        0x1fff51c6:    2101        .!      MOVS     r1,#1
        0x1fff51c8:    a802        ..      ADD      r0,sp,#8
        0x1fff51ca:    47b0        .G      BLX      r6
        0x1fff51cc:    e7f6        ..      B        0x1fff51bc ; log_vsprintf + 356
        0x1fff51ce:    9808        ..      LDR      r0,[sp,#0x20]
        0x1fff51d0:    466a        jF      MOV      r2,sp
        0x1fff51d2:    7801        .x      LDRB     r1,[r0,#0]
        0x1fff51d4:    7211        .r      STRB     r1,[r2,#8]
        0x1fff51d6:    1d00        ..      ADDS     r0,r0,#4
        0x1fff51d8:    9008        ..      STR      r0,[sp,#0x20]
        0x1fff51da:    2101        .!      MOVS     r1,#1
        0x1fff51dc:    a802        ..      ADD      r0,sp,#8
        0x1fff51de:    47b0        .G      BLX      r6
        0x1fff51e0:    2520         %      MOVS     r5,#0x20
        0x1fff51e2:    e004        ..      B        0x1fff51ee ; log_vsprintf + 406
        0x1fff51e4:    4668        hF      MOV      r0,sp
        0x1fff51e6:    7205        .r      STRB     r5,[r0,#8]
        0x1fff51e8:    2101        .!      MOVS     r1,#1
        0x1fff51ea:    a802        ..      ADD      r0,sp,#8
        0x1fff51ec:    47b0        .G      BLX      r6
        0x1fff51ee:    1e64        d.      SUBS     r4,r4,#1
        0x1fff51f0:    2c00        .,      CMP      r4,#0
        0x1fff51f2:    dcf7        ..      BGT      0x1fff51e4 ; log_vsprintf + 396
        0x1fff51f4:    e046        F.      B        0x1fff5284 ; log_vsprintf + 556
        0x1fff51f6:    9a08        ..      LDR      r2,[sp,#0x20]
        0x1fff51f8:    ca02        ..      LDM      r2!,{r1}
        0x1fff51fa:    9208        ..      STR      r2,[sp,#0x20]
        0x1fff51fc:    9100        ..      STR      r1,[sp,#0]
        0x1fff51fe:    2900        .)      CMP      r1,#0
        0x1fff5200:    d101        ..      BNE      0x1fff5206 ; log_vsprintf + 430
        0x1fff5202:    a12d        -.      ADR      r1,{pc}+0xb6 ; 0x1fff52b8
        0x1fff5204:    9100        ..      STR      r1,[sp,#0]
        0x1fff5206:    460a        .F      MOV      r2,r1
        0x1fff5208:    e000        ..      B        0x1fff520c ; log_vsprintf + 436
        0x1fff520a:    1c49        I.      ADDS     r1,r1,#1
        0x1fff520c:    780b        .x      LDRB     r3,[r1,#0]
        0x1fff520e:    2b00        .+      CMP      r3,#0
        0x1fff5210:    d001        ..      BEQ      0x1fff5216 ; log_vsprintf + 446
        0x1fff5212:    1e40        @.      SUBS     r0,r0,#1
        0x1fff5214:    d2f9        ..      BCS      0x1fff520a ; log_vsprintf + 434
        0x1fff5216:    1a8f        ..      SUBS     r7,r1,r2
        0x1fff5218:    06e8        ..      LSLS     r0,r5,#27
        0x1fff521a:    d40a        ..      BMI      0x1fff5232 ; log_vsprintf + 474
        0x1fff521c:    2520         %      MOVS     r5,#0x20
        0x1fff521e:    4620         F      MOV      r0,r4
        0x1fff5220:    1e64        d.      SUBS     r4,r4,#1
        0x1fff5222:    42b8        .B      CMP      r0,r7
        0x1fff5224:    dd05        ..      BLE      0x1fff5232 ; log_vsprintf + 474
        0x1fff5226:    4668        hF      MOV      r0,sp
        0x1fff5228:    7205        .r      STRB     r5,[r0,#8]
        0x1fff522a:    2101        .!      MOVS     r1,#1
        0x1fff522c:    a802        ..      ADD      r0,sp,#8
        0x1fff522e:    47b0        .G      BLX      r6
        0x1fff5230:    e7f5        ..      B        0x1fff521e ; log_vsprintf + 454
        0x1fff5232:    b2b9        ..      UXTH     r1,r7
        0x1fff5234:    9800        ..      LDR      r0,[sp,#0]
        0x1fff5236:    47b0        .G      BLX      r6
        0x1fff5238:    2520         %      MOVS     r5,#0x20
        0x1fff523a:    e004        ..      B        0x1fff5246 ; log_vsprintf + 494
        0x1fff523c:    4668        hF      MOV      r0,sp
        0x1fff523e:    7205        .r      STRB     r5,[r0,#8]
        0x1fff5240:    2101        .!      MOVS     r1,#1
        0x1fff5242:    a802        ..      ADD      r0,sp,#8
        0x1fff5244:    47b0        .G      BLX      r6
        0x1fff5246:    4620         F      MOV      r0,r4
        0x1fff5248:    1e64        d.      SUBS     r4,r4,#1
        0x1fff524a:    42b8        .B      CMP      r0,r7
        0x1fff524c:    dcf6        ..      BGT      0x1fff523c ; log_vsprintf + 484
        0x1fff524e:    e019        ..      B        0x1fff5284 ; log_vsprintf + 556
        0x1fff5250:    1c61        a.      ADDS     r1,r4,#1
        0x1fff5252:    d102        ..      BNE      0x1fff525a ; log_vsprintf + 514
        0x1fff5254:    2408        .$      MOVS     r4,#8
        0x1fff5256:    2101        .!      MOVS     r1,#1
        0x1fff5258:    430d        .C      ORRS     r5,r5,r1
        0x1fff525a:    9000        ..      STR      r0,[sp,#0]
        0x1fff525c:    9808        ..      LDR      r0,[sp,#0x20]
        0x1fff525e:    9501        ..      STR      r5,[sp,#4]
        0x1fff5260:    c802        ..      LDM      r0!,{r1}
        0x1fff5262:    4623        #F      MOV      r3,r4
        0x1fff5264:    2210        ."      MOVS     r2,#0x10
        0x1fff5266:    9008        ..      STR      r0,[sp,#0x20]
        0x1fff5268:    e009        ..      B        0x1fff527e ; log_vsprintf + 550
        0x1fff526a:    e001        ..      B        0x1fff5270 ; log_vsprintf + 536
        0x1fff526c:    e001        ..      B        0x1fff5272 ; log_vsprintf + 538
        0x1fff526e:    e01b        ..      B        0x1fff52a8 ; log_vsprintf + 592
        0x1fff5270:    2208        ."      MOVS     r2,#8
        0x1fff5272:    9b08        ..      LDR      r3,[sp,#0x20]
        0x1fff5274:    cb02        ..      LDM      r3!,{r1}
        0x1fff5276:    9308        ..      STR      r3,[sp,#0x20]
        0x1fff5278:    9501        ..      STR      r5,[sp,#4]
        0x1fff527a:    9000        ..      STR      r0,[sp,#0]
        0x1fff527c:    4623        #F      MOV      r3,r4
        0x1fff527e:    4630        0F      MOV      r0,r6
        0x1fff5280:    f000f89e    ....    BL       number ; 0x1fff53c0
        0x1fff5284:    9807        ..      LDR      r0,[sp,#0x1c]
        0x1fff5286:    1c40        @.      ADDS     r0,r0,#1
        0x1fff5288:    9007        ..      STR      r0,[sp,#0x1c]
        0x1fff528a:    7801        .x      LDRB     r1,[r0,#0]
        0x1fff528c:    2900        .)      CMP      r1,#0
        0x1fff528e:    d001        ..      BEQ      0x1fff5294 ; log_vsprintf + 572
        0x1fff5290:    e6ea        ..      B        0x1fff5068 ; log_vsprintf + 16
        0x1fff5292:    e00e        ..      B        0x1fff52b2 ; log_vsprintf + 602
        0x1fff5294:    9803        ..      LDR      r0,[sp,#0xc]
        0x1fff5296:    2800        .(      CMP      r0,#0
        0x1fff5298:    d002        ..      BEQ      0x1fff52a0 ; log_vsprintf + 584
        0x1fff529a:    b281        ..      UXTH     r1,r0
        0x1fff529c:    9804        ..      LDR      r0,[sp,#0x10]
        0x1fff529e:    47b0        .G      BLX      r6
        0x1fff52a0:    b009        ..      ADD      sp,sp,#0x24
        0x1fff52a2:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff52a4:    2240        @"      MOVS     r2,#0x40
        0x1fff52a6:    4315        .C      ORRS     r5,r5,r2
        0x1fff52a8:    2210        ."      MOVS     r2,#0x10
        0x1fff52aa:    e7e2        ..      B        0x1fff5272 ; log_vsprintf + 538
        0x1fff52ac:    2302        .#      MOVS     r3,#2
        0x1fff52ae:    431d        .C      ORRS     r5,r5,r3
        0x1fff52b0:    e7df        ..      B        0x1fff5272 ; log_vsprintf + 538
        0x1fff52b2:    1e40        @.      SUBS     r0,r0,#1
        0x1fff52b4:    9007        ..      STR      r0,[sp,#0x1c]
        0x1fff52b6:    e7e5        ..      B        0x1fff5284 ; log_vsprintf + 556
    $d
        0x1fff52b8:    4c554e3c    <NUL    DCD    1280659004
        0x1fff52bc:    00003e4c    L>..    DCD    15948
    $t
    i.main
    main
        0x1fff52c0:    b57c        |.      PUSH     {r2-r6,lr}
        0x1fff52c2:    2000        .       MOVS     r0,#0
        0x1fff52c4:    f001fc32    ..2.    BL       watchdog_config ; 0x1fff6b2c
        0x1fff52c8:    4c19        .L      LDR      r4,[pc,#100] ; [0x1fff5330] = 0x1fff0a4a
        0x1fff52ca:    2002        .       MOVS     r0,#2
        0x1fff52cc:    7020         p      STRB     r0,[r4,#0]
        0x1fff52ce:    4d19        .M      LDR      r5,[pc,#100] ; [0x1fff5334] = 0x1fff6d3c
        0x1fff52d0:    2001        .       MOVS     r0,#1
        0x1fff52d2:    7028        (p      STRB     r0,[r5,#0]
        0x1fff52d4:    f7fcfd06    ....    BL       $Ven$TT$L$$drv_irq_init ; 0x1fff1ce4
        0x1fff52d8:    f7fcfeef    ....    BL       init_config ; 0x1fff20ba
        0x1fff52dc:    f7feffe0    ....    BL       hal_rfphy_init ; 0x1fff42a0
        0x1fff52e0:    f7fefe70    ..p.    BL       hal_low_power_io_init ; 0x1fff3fc4
        0x1fff52e4:    7820         x      LDRB     r0,[r4,#0]
        0x1fff52e6:    f7fef86b    ..k.    BL       clk_init ; 0x1fff33c0
        0x1fff52ea:    7828        (x      LDRB     r0,[r5,#0]
        0x1fff52ec:    f7fff812    ....    BL       hal_rtc_clock_config ; 0x1fff4314
        0x1fff52f0:    f7fefed6    ....    BL       hal_pwrmgr_init ; 0x1fff40a0
        0x1fff52f4:    4810        .H      LDR      r0,[pc,#64] ; [0x1fff5338] = 0x1fff6b54
        0x1fff52f6:    6800        .h      LDR      r0,[r0,#0]
        0x1fff52f8:    f7fff84e    ..N.    BL       hal_spif_cache_init ; 0x1fff4398
        0x1fff52fc:    f7fef94e    ..N.    BL       dbg_printf_init ; 0x1fff359c
        0x1fff5300:    f7fefbc8    ....    BL       hal_gpio_init ; 0x1fff3a94
        0x1fff5304:    490d        .I      LDR      r1,[pc,#52] ; [0x1fff533c] = 0x30103
        0x1fff5306:    a00e        ..      ADR      r0,{pc}+0x3a ; 0x1fff5340
        0x1fff5308:    f7fef93a    ..:.    BL       dbg_printf ; 0x1fff3580
        0x1fff530c:    4912        .I      LDR      r1,[pc,#72] ; [0x1fff5358] = 0x1fff0a45
        0x1fff530e:    7809        .x      LDRB     r1,[r1,#0]
        0x1fff5310:    4812        .H      LDR      r0,[pc,#72] ; [0x1fff535c] = 0x1fff0a44
        0x1fff5312:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff5314:    9101        ..      STR      r1,[sp,#4]
        0x1fff5316:    9000        ..      STR      r0,[sp,#0]
        0x1fff5318:    7823        #x      LDRB     r3,[r4,#0]
        0x1fff531a:    782a        *x      LDRB     r2,[r5,#0]
        0x1fff531c:    4810        .H      LDR      r0,[pc,#64] ; [0x1fff5360] = 0x1fff0a4b
        0x1fff531e:    7801        .x      LDRB     r1,[r0,#0]
        0x1fff5320:    a010        ..      ADR      r0,{pc}+0x44 ; 0x1fff5364
        0x1fff5322:    f7fef92d    ..-.    BL       dbg_printf ; 0x1fff3580
        0x1fff5326:    f7fdff0e    ....    BL       app_main ; 0x1fff3146
        0x1fff532a:    2000        .       MOVS     r0,#0
        0x1fff532c:    bd7c        |.      POP      {r2-r6,pc}
    $d
        0x1fff532e:    0000        ..      DCW    0
        0x1fff5330:    1fff0a4a    J...    DCD    536808010
        0x1fff5334:    1fff6d3c    <m..    DCD    536833340
        0x1fff5338:    1fff6b54    Tk..    DCD    536832852
        0x1fff533c:    00030103    ....    DCD    196867
        0x1fff5340:    204b4453    SDK     DCD    541803603
        0x1fff5344:    73726556    Vers    DCD    1936876886
        0x1fff5348:    206e6f69    ion     DCD    544108393
        0x1fff534c:    25204449    ID %    DCD    622871625
        0x1fff5350:    20783830    08x     DCD    544749616
        0x1fff5354:    0000000a    ....    DCD    10
        0x1fff5358:    1fff0a45    E...    DCD    536808005
        0x1fff535c:    1fff0a44    D...    DCD    536808004
        0x1fff5360:    1fff0a4b    K...    DCD    536808011
        0x1fff5364:    6c436672    rfCl    DCD    1816356466
        0x1fff5368:    6425206b    k %d    DCD    1680154731
        0x1fff536c:    43637220     rcC    DCD    1130590752
        0x1fff5370:    25206b6c    lk %    DCD    622881644
        0x1fff5374:    79732064    d sy    DCD    2037588068
        0x1fff5378:    6b6c4373    sClk    DCD    1802257267
        0x1fff537c:    20642520     %d     DCD    543434016
        0x1fff5380:    61437074    tpCa    DCD    1631809652
        0x1fff5384:    30255b70    p[%0    DCD    807754608
        0x1fff5388:    25207832    2x %    DCD    622884914
        0x1fff538c:    5d783230    02x]    DCD    1568158256
        0x1fff5390:    0000000a    ....    DCD    10
    $t
    i.my_dump_byte
    my_dump_byte
        0x1fff5394:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff5396:    460d        .F      MOV      r5,r1
        0x1fff5398:    4606        .F      MOV      r6,r0
        0x1fff539a:    2400        .$      MOVS     r4,#0
        0x1fff539c:    e004        ..      B        0x1fff53a8 ; my_dump_byte + 20
        0x1fff539e:    5d31        1]      LDRB     r1,[r6,r4]
        0x1fff53a0:    a004        ..      ADR      r0,{pc}+0x14 ; 0x1fff53b4
        0x1fff53a2:    f7fef8ed    ....    BL       dbg_printf ; 0x1fff3580
        0x1fff53a6:    1c64        d.      ADDS     r4,r4,#1
        0x1fff53a8:    42ac        .B      CMP      r4,r5
        0x1fff53aa:    dbf8        ..      BLT      0x1fff539e ; my_dump_byte + 10
        0x1fff53ac:    a003        ..      ADR      r0,{pc}+0x10 ; 0x1fff53bc
        0x1fff53ae:    f7fef8e7    ....    BL       dbg_printf ; 0x1fff3580
        0x1fff53b2:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x1fff53b4:    78323025    %02x    DCD    2016555045
        0x1fff53b8:    00000020     ...    DCD    32
        0x1fff53bc:    0000000a    ....    DCD    10
    $t
    i.number
    number
        0x1fff53c0:    b5ff        ..      PUSH     {r0-r7,lr}
        0x1fff53c2:    4607        .F      MOV      r7,r0
        0x1fff53c4:    4857        WH      LDR      r0,[pc,#348] ; [0x1fff5524] = 0x1fff6da8
        0x1fff53c6:    b097        ..      SUB      sp,sp,#0x5c
        0x1fff53c8:    9d21        !.      LDR      r5,[sp,#0x84]
        0x1fff53ca:    6800        .h      LDR      r0,[r0,#0]
        0x1fff53cc:    9015        ..      STR      r0,[sp,#0x54]
        0x1fff53ce:    461e        .F      MOV      r6,r3
        0x1fff53d0:    460a        .F      MOV      r2,r1
        0x1fff53d2:    0668        h.      LSLS     r0,r5,#25
        0x1fff53d4:    d502        ..      BPL      0x1fff53dc ; number + 28
        0x1fff53d6:    4853        SH      LDR      r0,[pc,#332] ; [0x1fff5524] = 0x1fff6da8
        0x1fff53d8:    6840        @h      LDR      r0,[r0,#4]
        0x1fff53da:    9015        ..      STR      r0,[sp,#0x54]
        0x1fff53dc:    06e8        ..      LSLS     r0,r5,#27
        0x1fff53de:    d501        ..      BPL      0x1fff53e4 ; number + 36
        0x1fff53e0:    086d        m.      LSRS     r5,r5,#1
        0x1fff53e2:    006d        m.      LSLS     r5,r5,#1
        0x1fff53e4:    9819        ..      LDR      r0,[sp,#0x64]
        0x1fff53e6:    1e80        ..      SUBS     r0,r0,#2
        0x1fff53e8:    2823        #(      CMP      r0,#0x23
        0x1fff53ea:    d270        p.      BCS      0x1fff54ce ; number + 270
        0x1fff53ec:    07e8        ..      LSLS     r0,r5,#31
        0x1fff53ee:    d001        ..      BEQ      0x1fff53f4 ; number + 52
        0x1fff53f0:    2130        0!      MOVS     r1,#0x30
        0x1fff53f2:    e000        ..      B        0x1fff53f6 ; number + 54
        0x1fff53f4:    2120         !      MOVS     r1,#0x20
        0x1fff53f6:    a810        ..      ADD      r0,sp,#0x40
        0x1fff53f8:    7301        .s      STRB     r1,[r0,#0xc]
        0x1fff53fa:    2100        .!      MOVS     r1,#0
        0x1fff53fc:    7201        .r      STRB     r1,[r0,#8]
        0x1fff53fe:    07a8        ..      LSLS     r0,r5,#30
        0x1fff5400:    d510        ..      BPL      0x1fff5424 ; number + 100
        0x1fff5402:    2a00        .*      CMP      r2,#0
        0x1fff5404:    da04        ..      BGE      0x1fff5410 ; number + 80
        0x1fff5406:    202d        -       MOVS     r0,#0x2d
        0x1fff5408:    a910        ..      ADD      r1,sp,#0x40
        0x1fff540a:    7208        .r      STRB     r0,[r1,#8]
        0x1fff540c:    4252        RB      RSBS     r2,r2,#0
        0x1fff540e:    e008        ..      B        0x1fff5422 ; number + 98
        0x1fff5410:    0768        h.      LSLS     r0,r5,#29
        0x1fff5412:    d501        ..      BPL      0x1fff5418 ; number + 88
        0x1fff5414:    202b        +       MOVS     r0,#0x2b
        0x1fff5416:    e002        ..      B        0x1fff541e ; number + 94
        0x1fff5418:    0728        (.      LSLS     r0,r5,#28
        0x1fff541a:    d503        ..      BPL      0x1fff5424 ; number + 100
        0x1fff541c:    2020                MOVS     r0,#0x20
        0x1fff541e:    a910        ..      ADD      r1,sp,#0x40
        0x1fff5420:    7208        .r      STRB     r0,[r1,#8]
        0x1fff5422:    1e5e        ^.      SUBS     r6,r3,#1
        0x1fff5424:    06a8        ..      LSLS     r0,r5,#26
        0x1fff5426:    d508        ..      BPL      0x1fff543a ; number + 122
        0x1fff5428:    9819        ..      LDR      r0,[sp,#0x64]
        0x1fff542a:    2810        .(      CMP      r0,#0x10
        0x1fff542c:    d002        ..      BEQ      0x1fff5434 ; number + 116
        0x1fff542e:    2808        .(      CMP      r0,#8
        0x1fff5430:    d002        ..      BEQ      0x1fff5438 ; number + 120
        0x1fff5432:    e002        ..      B        0x1fff543a ; number + 122
        0x1fff5434:    1eb6        ..      SUBS     r6,r6,#2
        0x1fff5436:    e000        ..      B        0x1fff543a ; number + 122
        0x1fff5438:    1e76        v.      SUBS     r6,r6,#1
        0x1fff543a:    2400        .$      MOVS     r4,#0
        0x1fff543c:    2a00        .*      CMP      r2,#0
        0x1fff543e:    d014        ..      BEQ      0x1fff546a ; number + 170
        0x1fff5440:    4610        .F      MOV      r0,r2
        0x1fff5442:    9919        ..      LDR      r1,[sp,#0x64]
        0x1fff5444:    f7fcfc54    ..T.    BL       $Ven$TT$L$$__aeabi_uidivmod ; 0x1fff1cf0
        0x1fff5448:    9a15        ..      LDR      r2,[sp,#0x54]
        0x1fff544a:    5c52        R\      LDRB     r2,[r2,r1]
        0x1fff544c:    a901        ..      ADD      r1,sp,#4
        0x1fff544e:    550a        .U      STRB     r2,[r1,r4]
        0x1fff5450:    1c64        d.      ADDS     r4,r4,#1
        0x1fff5452:    0002        ..      MOVS     r2,r0
        0x1fff5454:    d1f4        ..      BNE      0x1fff5440 ; number + 128
        0x1fff5456:    9820         .      LDR      r0,[sp,#0x80]
        0x1fff5458:    4284        .B      CMP      r4,r0
        0x1fff545a:    dd00        ..      BLE      0x1fff545e ; number + 158
        0x1fff545c:    9420         .      STR      r4,[sp,#0x80]
        0x1fff545e:    9820         .      LDR      r0,[sp,#0x80]
        0x1fff5460:    1a36        6.      SUBS     r6,r6,r0
        0x1fff5462:    2011        .       MOVS     r0,#0x11
        0x1fff5464:    4205        .B      TST      r5,r0
        0x1fff5466:    d00b        ..      BEQ      0x1fff5480 ; number + 192
        0x1fff5468:    e00e        ..      B        0x1fff5488 ; number + 200
        0x1fff546a:    2030        0       MOVS     r0,#0x30
        0x1fff546c:    4669        iF      MOV      r1,sp
        0x1fff546e:    7108        .q      STRB     r0,[r1,#4]
        0x1fff5470:    2401        .$      MOVS     r4,#1
        0x1fff5472:    e7f0        ..      B        0x1fff5456 ; number + 150
        0x1fff5474:    2020                MOVS     r0,#0x20
        0x1fff5476:    4669        iF      MOV      r1,sp
        0x1fff5478:    7008        .p      STRB     r0,[r1,#0]
        0x1fff547a:    2101        .!      MOVS     r1,#1
        0x1fff547c:    4668        hF      MOV      r0,sp
        0x1fff547e:    47b8        .G      BLX      r7
        0x1fff5480:    4630        0F      MOV      r0,r6
        0x1fff5482:    1e76        v.      SUBS     r6,r6,#1
        0x1fff5484:    2800        .(      CMP      r0,#0
        0x1fff5486:    dcf5        ..      BGT      0x1fff5474 ; number + 180
        0x1fff5488:    a810        ..      ADD      r0,sp,#0x40
        0x1fff548a:    7a00        .z      LDRB     r0,[r0,#8]
        0x1fff548c:    2800        .(      CMP      r0,#0
        0x1fff548e:    d002        ..      BEQ      0x1fff5496 ; number + 214
        0x1fff5490:    2101        .!      MOVS     r1,#1
        0x1fff5492:    a812        ..      ADD      r0,sp,#0x48
        0x1fff5494:    47b8        .G      BLX      r7
        0x1fff5496:    06a8        ..      LSLS     r0,r5,#26
        0x1fff5498:    d516        ..      BPL      0x1fff54c8 ; number + 264
        0x1fff549a:    9819        ..      LDR      r0,[sp,#0x64]
        0x1fff549c:    2808        .(      CMP      r0,#8
        0x1fff549e:    d002        ..      BEQ      0x1fff54a6 ; number + 230
        0x1fff54a0:    2810        .(      CMP      r0,#0x10
        0x1fff54a2:    d002        ..      BEQ      0x1fff54aa ; number + 234
        0x1fff54a4:    e010        ..      B        0x1fff54c8 ; number + 264
        0x1fff54a6:    2030        0       MOVS     r0,#0x30
        0x1fff54a8:    e009        ..      B        0x1fff54be ; number + 254
        0x1fff54aa:    2030        0       MOVS     r0,#0x30
        0x1fff54ac:    4669        iF      MOV      r1,sp
        0x1fff54ae:    7008        .p      STRB     r0,[r1,#0]
        0x1fff54b0:    2101        .!      MOVS     r1,#1
        0x1fff54b2:    4668        hF      MOV      r0,sp
        0x1fff54b4:    47b8        .G      BLX      r7
        0x1fff54b6:    481b        .H      LDR      r0,[pc,#108] ; [0x1fff5524] = 0x1fff6da8
        0x1fff54b8:    6800        .h      LDR      r0,[r0,#0]
        0x1fff54ba:    3020         0      ADDS     r0,r0,#0x20
        0x1fff54bc:    7840        @x      LDRB     r0,[r0,#1]
        0x1fff54be:    4669        iF      MOV      r1,sp
        0x1fff54c0:    7008        .p      STRB     r0,[r1,#0]
        0x1fff54c2:    2101        .!      MOVS     r1,#1
        0x1fff54c4:    4668        hF      MOV      r0,sp
        0x1fff54c6:    47b8        .G      BLX      r7
        0x1fff54c8:    06e8        ..      LSLS     r0,r5,#27
        0x1fff54ca:    d504        ..      BPL      0x1fff54d6 ; number + 278
        0x1fff54cc:    e007        ..      B        0x1fff54de ; number + 286
        0x1fff54ce:    e027        '.      B        0x1fff5520 ; number + 352
        0x1fff54d0:    2101        .!      MOVS     r1,#1
        0x1fff54d2:    a813        ..      ADD      r0,sp,#0x4c
        0x1fff54d4:    47b8        .G      BLX      r7
        0x1fff54d6:    4630        0F      MOV      r0,r6
        0x1fff54d8:    1e76        v.      SUBS     r6,r6,#1
        0x1fff54da:    2800        .(      CMP      r0,#0
        0x1fff54dc:    dcf8        ..      BGT      0x1fff54d0 ; number + 272
        0x1fff54de:    2530        0%      MOVS     r5,#0x30
        0x1fff54e0:    9920         .      LDR      r1,[sp,#0x80]
        0x1fff54e2:    1e48        H.      SUBS     r0,r1,#1
        0x1fff54e4:    9020         .      STR      r0,[sp,#0x80]
        0x1fff54e6:    42a1        .B      CMP      r1,r4
        0x1fff54e8:    dd0b        ..      BLE      0x1fff5502 ; number + 322
        0x1fff54ea:    4668        hF      MOV      r0,sp
        0x1fff54ec:    7005        .p      STRB     r5,[r0,#0]
        0x1fff54ee:    2101        .!      MOVS     r1,#1
        0x1fff54f0:    47b8        .G      BLX      r7
        0x1fff54f2:    e7f5        ..      B        0x1fff54e0 ; number + 288
        0x1fff54f4:    5d28        (]      LDRB     r0,[r5,r4]
        0x1fff54f6:    4669        iF      MOV      r1,sp
        0x1fff54f8:    7008        .p      STRB     r0,[r1,#0]
        0x1fff54fa:    2101        .!      MOVS     r1,#1
        0x1fff54fc:    4668        hF      MOV      r0,sp
        0x1fff54fe:    47b8        .G      BLX      r7
        0x1fff5500:    e000        ..      B        0x1fff5504 ; number + 324
        0x1fff5502:    ad01        ..      ADD      r5,sp,#4
        0x1fff5504:    4620         F      MOV      r0,r4
        0x1fff5506:    1e64        d.      SUBS     r4,r4,#1
        0x1fff5508:    2800        .(      CMP      r0,#0
        0x1fff550a:    dcf3        ..      BGT      0x1fff54f4 ; number + 308
        0x1fff550c:    2420         $      MOVS     r4,#0x20
        0x1fff550e:    4630        0F      MOV      r0,r6
        0x1fff5510:    1e76        v.      SUBS     r6,r6,#1
        0x1fff5512:    2800        .(      CMP      r0,#0
        0x1fff5514:    dd04        ..      BLE      0x1fff5520 ; number + 352
        0x1fff5516:    4668        hF      MOV      r0,sp
        0x1fff5518:    7004        .p      STRB     r4,[r0,#0]
        0x1fff551a:    2101        .!      MOVS     r1,#1
        0x1fff551c:    47b8        .G      BLX      r7
        0x1fff551e:    e7f6        ..      B        0x1fff550e ; number + 334
        0x1fff5520:    b01b        ..      ADD      sp,sp,#0x6c
        0x1fff5522:    bdf0        ..      POP      {r4-r7,pc}
    $d
        0x1fff5524:    1fff6da8    .m..    DCD    536833448
    $t
    i.osalInitTasks
    osalInitTasks
        0x1fff5528:    b510        ..      PUSH     {r4,lr}
        0x1fff552a:    2400        .$      MOVS     r4,#0
        0x1fff552c:    2004        .       MOVS     r0,#4
        0x1fff552e:    f7fcfbcd    ....    BL       $Ven$TT$L$$osal_mem_alloc ; 0x1fff1ccc
        0x1fff5532:    4907        .I      LDR      r1,[pc,#28] ; [0x1fff5550] = 0x1fff6d40
        0x1fff5534:    2204        ."      MOVS     r2,#4
        0x1fff5536:    6008        .`      STR      r0,[r1,#0]
        0x1fff5538:    2100        .!      MOVS     r1,#0
        0x1fff553a:    f7fcfad1    ....    BL       $Ven$TT$L$$osal_memset ; 0x1fff1ae0
        0x1fff553e:    4620         F      MOV      r0,r4
        0x1fff5540:    2401        .$      MOVS     r4,#1
        0x1fff5542:    f7fdfaa7    ....    BL       PropProtocol_Init ; 0x1fff2a94
        0x1fff5546:    4620         F      MOV      r0,r4
        0x1fff5548:    f7fdfb44    ..D.    BL       Smart_nRF_Init ; 0x1fff2bd4
        0x1fff554c:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff554e:    0000        ..      DCW    0
        0x1fff5550:    1fff6d40    @m..    DCD    536833344
    $t
    i.osal_idle_task0
    osal_idle_task0
        0x1fff5554:    b510        ..      PUSH     {r4,lr}
        0x1fff5556:    4804        .H      LDR      r0,[pc,#16] ; [0x1fff5568] = 0x40002000
        0x1fff5558:    7801        .x      LDRB     r1,[r0,#0]
        0x1fff555a:    07c9        ..      LSLS     r1,r1,#31
        0x1fff555c:    d001        ..      BEQ      0x1fff5562 ; osal_idle_task0 + 14
        0x1fff555e:    2176        v!      MOVS     r1,#0x76
        0x1fff5560:    60c1        .`      STR      r1,[r0,#0xc]
        0x1fff5562:    f7fcfbcb    ....    BL       $Ven$TT$L$$osal_pwrmgr_powerconserve0 ; 0x1fff1cfc
        0x1fff5566:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff5568:    40002000    . .@    DCD    1073750016
    $t
    i.osal_search_active_task
    osal_search_active_task
        0x1fff556c:    b510        ..      PUSH     {r4,lr}
        0x1fff556e:    4a0c        .J      LDR      r2,[pc,#48] ; [0x1fff55a0] = 0x1fff0000
        0x1fff5570:    2100        .!      MOVS     r1,#0
        0x1fff5572:    68d3        .h      LDR      r3,[r2,#0xc]
        0x1fff5574:    6912        .i      LDR      r2,[r2,#0x10]
        0x1fff5576:    781b        .x      LDRB     r3,[r3,#0]
        0x1fff5578:    6812        .h      LDR      r2,[r2,#0]
        0x1fff557a:    2a00        .*      CMP      r2,#0
        0x1fff557c:    d003        ..      BEQ      0x1fff5586 ; osal_search_active_task + 26
        0x1fff557e:    004c        L.      LSLS     r4,r1,#1
        0x1fff5580:    5b14        .[      LDRH     r4,[r2,r4]
        0x1fff5582:    2c00        .,      CMP      r4,#0
        0x1fff5584:    d103        ..      BNE      0x1fff558e ; osal_search_active_task + 34
        0x1fff5586:    1c49        I.      ADDS     r1,r1,#1
        0x1fff5588:    b2c9        ..      UXTB     r1,r1
        0x1fff558a:    4299        .B      CMP      r1,r3
        0x1fff558c:    d3f5        ..      BCC      0x1fff557a ; osal_search_active_task + 14
        0x1fff558e:    4299        .B      CMP      r1,r3
        0x1fff5590:    d204        ..      BCS      0x1fff559c ; osal_search_active_task + 48
        0x1fff5592:    2800        .(      CMP      r0,#0
        0x1fff5594:    d000        ..      BEQ      0x1fff5598 ; osal_search_active_task + 44
        0x1fff5596:    7001        .p      STRB     r1,[r0,#0]
        0x1fff5598:    2000        .       MOVS     r0,#0
        0x1fff559a:    bd10        ..      POP      {r4,pc}
        0x1fff559c:    2001        .       MOVS     r0,#1
        0x1fff559e:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff55a0:    1fff0000    ....    DCD    536805376
    $t
    i.patch_linkBuf_init
    patch_linkBuf_init
        0x1fff55a4:    b5f0        ..      PUSH     {r4-r7,lr}
        0x1fff55a6:    4e23        #N      LDR      r6,[pc,#140] ; [0x1fff5634] = 0x1fff0934
        0x1fff55a8:    4b23        #K      LDR      r3,[pc,#140] ; [0x1fff5638] = 0x1fff0914
        0x1fff55aa:    2800        .(      CMP      r0,#0
        0x1fff55ac:    d022        ".      BEQ      0x1fff55f4 ; patch_linkBuf_init + 80
        0x1fff55ae:    2100        .!      MOVS     r1,#0
        0x1fff55b0:    e01c        ..      B        0x1fff55ec ; patch_linkBuf_init + 72
        0x1fff55b2:    20a1        .       MOVS     r0,#0xa1
        0x1fff55b4:    0080        ..      LSLS     r0,r0,#2
        0x1fff55b6:    6832        2h      LDR      r2,[r6,#0]
        0x1fff55b8:    4348        HC      MULS     r0,r1,r0
        0x1fff55ba:    1880        ..      ADDS     r0,r0,r2
        0x1fff55bc:    4604        .F      MOV      r4,r0
        0x1fff55be:    2200        ."      MOVS     r2,#0
        0x1fff55c0:    34ff        .4      ADDS     r4,r4,#0xff
        0x1fff55c2:    3481        .4      ADDS     r4,r4,#0x81
        0x1fff55c4:    0097        ..      LSLS     r7,r2,#2
        0x1fff55c6:    183f        ?.      ADDS     r7,r7,r0
        0x1fff55c8:    37ff        .7      ADDS     r7,r7,#0xff
        0x1fff55ca:    3701        .7      ADDS     r7,#1
        0x1fff55cc:    6ae5        .j      LDR      r5,[r4,#0x2c]
        0x1fff55ce:    1c52        R.      ADDS     r2,r2,#1
        0x1fff55d0:    66fd        .f      STR      r5,[r7,#0x6c]
        0x1fff55d2:    2a08        .*      CMP      r2,#8
        0x1fff55d4:    dbf6        ..      BLT      0x1fff55c4 ; patch_linkBuf_init + 32
        0x1fff55d6:    2200        ."      MOVS     r2,#0
        0x1fff55d8:    0097        ..      LSLS     r7,r2,#2
        0x1fff55da:    183f        ?.      ADDS     r7,r7,r0
        0x1fff55dc:    37ff        .7      ADDS     r7,r7,#0xff
        0x1fff55de:    3781        .7      ADDS     r7,r7,#0x81
        0x1fff55e0:    6ae5        .j      LDR      r5,[r4,#0x2c]
        0x1fff55e2:    1c52        R.      ADDS     r2,r2,#1
        0x1fff55e4:    60fd        .`      STR      r5,[r7,#0xc]
        0x1fff55e6:    2a08        .*      CMP      r2,#8
        0x1fff55e8:    dbf6        ..      BLT      0x1fff55d8 ; patch_linkBuf_init + 52
        0x1fff55ea:    1c49        I.      ADDS     r1,r1,#1
        0x1fff55ec:    7818        .x      LDRB     r0,[r3,#0]
        0x1fff55ee:    4281        .B      CMP      r1,r0
        0x1fff55f0:    dbdf        ..      BLT      0x1fff55b2 ; patch_linkBuf_init + 14
        0x1fff55f2:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff55f4:    2100        .!      MOVS     r1,#0
        0x1fff55f6:    4608        .F      MOV      r0,r1
        0x1fff55f8:    e017        ..      B        0x1fff562a ; patch_linkBuf_init + 134
        0x1fff55fa:    22a1        ."      MOVS     r2,#0xa1
        0x1fff55fc:    0092        ..      LSLS     r2,r2,#2
        0x1fff55fe:    6834        4h      LDR      r4,[r6,#0]
        0x1fff5600:    434a        JC      MULS     r2,r1,r2
        0x1fff5602:    1914        ..      ADDS     r4,r2,r4
        0x1fff5604:    2200        ."      MOVS     r2,#0
        0x1fff5606:    0095        ..      LSLS     r5,r2,#2
        0x1fff5608:    192d        -.      ADDS     r5,r5,r4
        0x1fff560a:    35ff        .5      ADDS     r5,r5,#0xff
        0x1fff560c:    3501        .5      ADDS     r5,#1
        0x1fff560e:    1c52        R.      ADDS     r2,r2,#1
        0x1fff5610:    66e8        .f      STR      r0,[r5,#0x6c]
        0x1fff5612:    2a08        .*      CMP      r2,#8
        0x1fff5614:    dbf7        ..      BLT      0x1fff5606 ; patch_linkBuf_init + 98
        0x1fff5616:    2200        ."      MOVS     r2,#0
        0x1fff5618:    0095        ..      LSLS     r5,r2,#2
        0x1fff561a:    192d        -.      ADDS     r5,r5,r4
        0x1fff561c:    35ff        .5      ADDS     r5,r5,#0xff
        0x1fff561e:    3581        .5      ADDS     r5,r5,#0x81
        0x1fff5620:    1c52        R.      ADDS     r2,r2,#1
        0x1fff5622:    60e8        .`      STR      r0,[r5,#0xc]
        0x1fff5624:    2a08        .*      CMP      r2,#8
        0x1fff5626:    dbf7        ..      BLT      0x1fff5618 ; patch_linkBuf_init + 116
        0x1fff5628:    1c49        I.      ADDS     r1,r1,#1
        0x1fff562a:    781a        .x      LDRB     r2,[r3,#0]
        0x1fff562c:    4291        .B      CMP      r1,r2
        0x1fff562e:    dbe4        ..      BLT      0x1fff55fa ; patch_linkBuf_init + 86
        0x1fff5630:    bdf0        ..      POP      {r4-r7,pc}
    $d
        0x1fff5632:    0000        ..      DCW    0
        0x1fff5634:    1fff0934    4...    DCD    536807732
        0x1fff5638:    1fff0914    ....    DCD    536807700
    $t
    i.peripheral_interrupt_restore_default
    peripheral_interrupt_restore_default
        0x1fff563c:    b510        ..      PUSH     {r4,lr}
        0x1fff563e:    2102        .!      MOVS     r1,#2
        0x1fff5640:    2005        .       MOVS     r0,#5
        0x1fff5642:    f7fdfb6d    ..m.    BL       __NVIC_SetPriority ; 0x1fff2d20
        0x1fff5646:    2102        .!      MOVS     r1,#2
        0x1fff5648:    200a        .       MOVS     r0,#0xa
        0x1fff564a:    f7fdfb69    ..i.    BL       __NVIC_SetPriority ; 0x1fff2d20
        0x1fff564e:    2102        .!      MOVS     r1,#2
        0x1fff5650:    200b        .       MOVS     r0,#0xb
        0x1fff5652:    f7fdfb65    ..e.    BL       __NVIC_SetPriority ; 0x1fff2d20
        0x1fff5656:    2102        .!      MOVS     r1,#2
        0x1fff5658:    2011        .       MOVS     r0,#0x11
        0x1fff565a:    f7fdfb61    ..a.    BL       __NVIC_SetPriority ; 0x1fff2d20
        0x1fff565e:    2102        .!      MOVS     r1,#2
        0x1fff5660:    200c        .       MOVS     r0,#0xc
        0x1fff5662:    f7fdfb5d    ..].    BL       __NVIC_SetPriority ; 0x1fff2d20
        0x1fff5666:    2102        .!      MOVS     r1,#2
        0x1fff5668:    200d        .       MOVS     r0,#0xd
        0x1fff566a:    f7fdfb59    ..Y.    BL       __NVIC_SetPriority ; 0x1fff2d20
        0x1fff566e:    2102        .!      MOVS     r1,#2
        0x1fff5670:    200e        .       MOVS     r0,#0xe
        0x1fff5672:    f7fdfb55    ..U.    BL       __NVIC_SetPriority ; 0x1fff2d20
        0x1fff5676:    2102        .!      MOVS     r1,#2
        0x1fff5678:    200f        .       MOVS     r0,#0xf
        0x1fff567a:    f7fdfb51    ..Q.    BL       __NVIC_SetPriority ; 0x1fff2d20
        0x1fff567e:    2102        .!      MOVS     r1,#2
        0x1fff5680:    2010        .       MOVS     r0,#0x10
        0x1fff5682:    f7fdfb4d    ..M.    BL       __NVIC_SetPriority ; 0x1fff2d20
        0x1fff5686:    2102        .!      MOVS     r1,#2
        0x1fff5688:    2013        .       MOVS     r0,#0x13
        0x1fff568a:    f7fdfb49    ..I.    BL       __NVIC_SetPriority ; 0x1fff2d20
        0x1fff568e:    2102        .!      MOVS     r1,#2
        0x1fff5690:    2018        .       MOVS     r0,#0x18
        0x1fff5692:    f7fdfb45    ..E.    BL       __NVIC_SetPriority ; 0x1fff2d20
        0x1fff5696:    2102        .!      MOVS     r1,#2
        0x1fff5698:    2019        .       MOVS     r0,#0x19
        0x1fff569a:    f7fdfb41    ..A.    BL       __NVIC_SetPriority ; 0x1fff2d20
        0x1fff569e:    2102        .!      MOVS     r1,#2
        0x1fff56a0:    201d        .       MOVS     r0,#0x1d
        0x1fff56a2:    f7fdfb3d    ..=.    BL       __NVIC_SetPriority ; 0x1fff2d20
        0x1fff56a6:    bd10        ..      POP      {r4,pc}
    i.phy_allow_rx
    phy_allow_rx
        0x1fff56a8:    b5f1        ..      PUSH     {r0,r4-r7,lr}
        0x1fff56aa:    2500        .%      MOVS     r5,#0
        0x1fff56ac:    f7fcf982    ....    BL       $Ven$TT$L$$read_current_fine_time ; 0x1fff19b4
        0x1fff56b0:    4606        .F      MOV      r6,r0
        0x1fff56b2:    f7fcf925    ..%.    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff1900
        0x1fff56b6:    4826        &H      LDR      r0,[pc,#152] ; [0x1fff5750] = 0x1fff6d7c
        0x1fff56b8:    6847        Gh      LDR      r7,[r0,#4]
        0x1fff56ba:    4826        &H      LDR      r0,[pc,#152] ; [0x1fff5754] = 0x40001000
        0x1fff56bc:    6880        .h      LDR      r0,[r0,#8]
        0x1fff56be:    4c26        &L      LDR      r4,[pc,#152] ; [0x1fff5758] = 0xffff
        0x1fff56c0:    2800        .(      CMP      r0,#0
        0x1fff56c2:    d00e        ..      BEQ      0x1fff56e2 ; phy_allow_rx + 58
        0x1fff56c4:    f7fcf976    ..v.    BL       $Ven$TT$L$$read_current_fine_time ; 0x1fff19b4
        0x1fff56c8:    4822        "H      LDR      r0,[pc,#136] ; [0x1fff5754] = 0x40001000
        0x1fff56ca:    6841        Ah      LDR      r1,[r0,#4]
        0x1fff56cc:    2000        .       MOVS     r0,#0
        0x1fff56ce:    2906        .)      CMP      r1,#6
        0x1fff56d0:    d308        ..      BCC      0x1fff56e4 ; phy_allow_rx + 60
        0x1fff56d2:    4a22        "J      LDR      r2,[pc,#136] ; [0x1fff575c] = 0xe000e200
        0x1fff56d4:    6812        .h      LDR      r2,[r2,#0]
        0x1fff56d6:    2301        .#      MOVS     r3,#1
        0x1fff56d8:    051b        ..      LSLS     r3,r3,#20
        0x1fff56da:    421a        .B      TST      r2,r3
        0x1fff56dc:    d102        ..      BNE      0x1fff56e4 ; phy_allow_rx + 60
        0x1fff56de:    0888        ..      LSRS     r0,r1,#2
        0x1fff56e0:    e000        ..      B        0x1fff56e4 ; phy_allow_rx + 60
        0x1fff56e2:    4620         F      MOV      r0,r4
        0x1fff56e4:    42b8        .B      CMP      r0,r7
        0x1fff56e6:    d901        ..      BLS      0x1fff56ec ; phy_allow_rx + 68
        0x1fff56e8:    1bc2        ..      SUBS     r2,r0,r7
        0x1fff56ea:    e000        ..      B        0x1fff56ee ; phy_allow_rx + 70
        0x1fff56ec:    2200        ."      MOVS     r2,#0
        0x1fff56ee:    481c        .H      LDR      r0,[pc,#112] ; [0x1fff5760] = 0x1fff7474
        0x1fff56f0:    6a01        .j      LDR      r1,[r0,#0x20]
        0x1fff56f2:    42b1        .B      CMP      r1,r6
        0x1fff56f4:    d801        ..      BHI      0x1fff56fa ; phy_allow_rx + 82
        0x1fff56f6:    1a73        s.      SUBS     r3,r6,r1
        0x1fff56f8:    e002        ..      B        0x1fff5700 ; phy_allow_rx + 88
        0x1fff56fa:    4b1a        .K      LDR      r3,[pc,#104] ; [0x1fff5764] = 0x3fffff
        0x1fff56fc:    1a5b        [.      SUBS     r3,r3,r1
        0x1fff56fe:    199b        ..      ADDS     r3,r3,r6
        0x1fff5700:    6987        .i      LDR      r7,[r0,#0x18]
        0x1fff5702:    207d        }       MOVS     r0,#0x7d
        0x1fff5704:    0100        ..      LSLS     r0,r0,#4
        0x1fff5706:    42bb        .B      CMP      r3,r7
        0x1fff5708:    d209        ..      BCS      0x1fff571e ; phy_allow_rx + 118
        0x1fff570a:    42b1        .B      CMP      r1,r6
        0x1fff570c:    d801        ..      BHI      0x1fff5712 ; phy_allow_rx + 106
        0x1fff570e:    1a71        q.      SUBS     r1,r6,r1
        0x1fff5710:    e002        ..      B        0x1fff5718 ; phy_allow_rx + 112
        0x1fff5712:    4b14        .K      LDR      r3,[pc,#80] ; [0x1fff5764] = 0x3fffff
        0x1fff5714:    1a59        Y.      SUBS     r1,r3,r1
        0x1fff5716:    1989        ..      ADDS     r1,r1,r6
        0x1fff5718:    1a79        y.      SUBS     r1,r7,r1
        0x1fff571a:    4281        .B      CMP      r1,r0
        0x1fff571c:    d200        ..      BCS      0x1fff5720 ; phy_allow_rx + 120
        0x1fff571e:    4601        .F      MOV      r1,r0
        0x1fff5720:    428a        .B      CMP      r2,r1
        0x1fff5722:    d800        ..      BHI      0x1fff5726 ; phy_allow_rx + 126
        0x1fff5724:    4611        .F      MOV      r1,r2
        0x1fff5726:    4281        .B      CMP      r1,r0
        0x1fff5728:    d201        ..      BCS      0x1fff572e ; phy_allow_rx + 134
        0x1fff572a:    2100        .!      MOVS     r1,#0
        0x1fff572c:    e00a        ..      B        0x1fff5744 ; phy_allow_rx + 156
        0x1fff572e:    42a1        .B      CMP      r1,r4
        0x1fff5730:    d901        ..      BLS      0x1fff5736 ; phy_allow_rx + 142
        0x1fff5732:    4621        !F      MOV      r1,r4
        0x1fff5734:    e001        ..      B        0x1fff573a ; phy_allow_rx + 146
        0x1fff5736:    2900        .)      CMP      r1,#0
        0x1fff5738:    d004        ..      BEQ      0x1fff5744 ; phy_allow_rx + 156
        0x1fff573a:    480b        .H      LDR      r0,[pc,#44] ; [0x1fff5768] = 0x1fff0998
        0x1fff573c:    6800        .h      LDR      r0,[r0,#0]
        0x1fff573e:    2800        .(      CMP      r0,#0
        0x1fff5740:    d100        ..      BNE      0x1fff5744 ; phy_allow_rx + 156
        0x1fff5742:    2501        .%      MOVS     r5,#1
        0x1fff5744:    9800        ..      LDR      r0,[sp,#0]
        0x1fff5746:    6001        .`      STR      r1,[r0,#0]
        0x1fff5748:    f7fcf8e6    ....    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff1918
        0x1fff574c:    4628        (F      MOV      r0,r5
        0x1fff574e:    bdf8        ..      POP      {r3-r7,pc}
    $d
        0x1fff5750:    1fff6d7c    |m..    DCD    536833404
        0x1fff5754:    40001000    ...@    DCD    1073745920
        0x1fff5758:    0000ffff    ....    DCD    65535
        0x1fff575c:    e000e200    ....    DCD    3758154240
        0x1fff5760:    1fff7474    tt..    DCD    536835188
        0x1fff5764:    003fffff    ..?.    DCD    4194303
        0x1fff5768:    1fff0998    ....    DCD    536807832
    $t
    i.phy_cbfunc_regist
    phy_cbfunc_regist
        0x1fff576c:    4a05        .J      LDR      r2,[pc,#20] ; [0x1fff5784] = 0x1fff6d48
        0x1fff576e:    2801        .(      CMP      r0,#1
        0x1fff5770:    d003        ..      BEQ      0x1fff577a ; phy_cbfunc_regist + 14
        0x1fff5772:    2802        .(      CMP      r0,#2
        0x1fff5774:    d003        ..      BEQ      0x1fff577e ; phy_cbfunc_regist + 18
        0x1fff5776:    2006        .       MOVS     r0,#6
        0x1fff5778:    4770        pG      BX       lr
        0x1fff577a:    61d1        .a      STR      r1,[r2,#0x1c]
        0x1fff577c:    e000        ..      B        0x1fff5780 ; phy_cbfunc_regist + 20
        0x1fff577e:    6211        .b      STR      r1,[r2,#0x20]
        0x1fff5780:    2000        .       MOVS     r0,#0
        0x1fff5782:    4770        pG      BX       lr
    $d
        0x1fff5784:    1fff6d48    Hm..    DCD    536833352
    $t
    i.phy_hw_go
    phy_hw_go
        0x1fff5788:    b530        0.      PUSH     {r4,r5,lr}
        0x1fff578a:    4820         H      LDR      r0,[pc,#128] ; [0x1fff580c] = 0x1fff0998
        0x1fff578c:    6800        .h      LDR      r0,[r0,#0]
        0x1fff578e:    4821        !H      LDR      r0,[pc,#132] ; [0x1fff5814] = 0x40031000
        0x1fff5790:    491f        .I      LDR      r1,[pc,#124] ; [0x1fff5810] = 0x3fff
        0x1fff5792:    6141        Aa      STR      r1,[r0,#0x14]
        0x1fff5794:    2101        .!      MOVS     r1,#1
        0x1fff5796:    60c1        .`      STR      r1,[r0,#0xc]
        0x1fff5798:    6001        .`      STR      r1,[r0,#0]
        0x1fff579a:    491f        .I      LDR      r1,[pc,#124] ; [0x1fff5818] = 0x40030080
        0x1fff579c:    6b48        Hk      LDR      r0,[r1,#0x34]
        0x1fff579e:    b2c0        ..      UXTB     r0,r0
        0x1fff57a0:    2802        .(      CMP      r0,#2
        0x1fff57a2:    d201        ..      BCS      0x1fff57a8 ; phy_hw_go + 32
        0x1fff57a4:    2002        .       MOVS     r0,#2
        0x1fff57a6:    e002        ..      B        0x1fff57ae ; phy_hw_go + 38
        0x1fff57a8:    2850        P(      CMP      r0,#0x50
        0x1fff57aa:    d900        ..      BLS      0x1fff57ae ; phy_hw_go + 38
        0x1fff57ac:    2050        P       MOVS     r0,#0x50
        0x1fff57ae:    4a1b        .J      LDR      r2,[pc,#108] ; [0x1fff581c] = 0x1fff7460
        0x1fff57b0:    7812        .x      LDRB     r2,[r2,#0]
        0x1fff57b2:    2a02        .*      CMP      r2,#2
        0x1fff57b4:    d011        ..      BEQ      0x1fff57da ; phy_hw_go + 82
        0x1fff57b6:    4a1a        .J      LDR      r2,[pc,#104] ; [0x1fff5820] = 0x1fff0a44
        0x1fff57b8:    7814        .x      LDRB     r4,[r2,#0]
        0x1fff57ba:    4b1a        .K      LDR      r3,[pc,#104] ; [0x1fff5824] = 0x1fff0a45
        0x1fff57bc:    781d        .x      LDRB     r5,[r3,#0]
        0x1fff57be:    42ac        .B      CMP      r4,r5
        0x1fff57c0:    d90f        ..      BLS      0x1fff57e2 ; phy_hw_go + 90
        0x1fff57c2:    7814        .x      LDRB     r4,[r2,#0]
        0x1fff57c4:    781b        .x      LDRB     r3,[r3,#0]
        0x1fff57c6:    1ae3        ..      SUBS     r3,r4,r3
        0x1fff57c8:    1e80        ..      SUBS     r0,r0,#2
        0x1fff57ca:    1040        @.      ASRS     r0,r0,#1
        0x1fff57cc:    4343        CC      MULS     r3,r0,r3
        0x1fff57ce:    7810        .x      LDRB     r0,[r2,#0]
        0x1fff57d0:    0140        @.      LSLS     r0,r0,#5
        0x1fff57d2:    1ac0        ..      SUBS     r0,r0,r3
        0x1fff57d4:    3010        .0      ADDS     r0,r0,#0x10
        0x1fff57d6:    1140        @.      ASRS     r0,r0,#5
        0x1fff57d8:    e004        ..      B        0x1fff57e4 ; phy_hw_go + 92
        0x1fff57da:    4a13        .J      LDR      r2,[pc,#76] ; [0x1fff5828] = 0x1fff0a46
        0x1fff57dc:    7814        .x      LDRB     r4,[r2,#0]
        0x1fff57de:    4b13        .K      LDR      r3,[pc,#76] ; [0x1fff582c] = 0x1fff0a47
        0x1fff57e0:    e7ec        ..      B        0x1fff57bc ; phy_hw_go + 52
        0x1fff57e2:    7810        .x      LDRB     r0,[r2,#0]
        0x1fff57e4:    694a        Ji      LDR      r2,[r1,#0x14]
        0x1fff57e6:    0a12        ..      LSRS     r2,r2,#8
        0x1fff57e8:    0212        ..      LSLS     r2,r2,#8
        0x1fff57ea:    4310        .C      ORRS     r0,r0,r2
        0x1fff57ec:    6148        Ha      STR      r0,[r1,#0x14]
        0x1fff57ee:    480a        .H      LDR      r0,[pc,#40] ; [0x1fff5818] = 0x40030080
        0x1fff57f0:    3880        .8      SUBS     r0,r0,#0x80
        0x1fff57f2:    6841        Ah      LDR      r1,[r0,#4]
        0x1fff57f4:    227f        ."      MOVS     r2,#0x7f
        0x1fff57f6:    0212        ..      LSLS     r2,r2,#8
        0x1fff57f8:    4391        .C      BICS     r1,r1,r2
        0x1fff57fa:    220f        ."      MOVS     r2,#0xf
        0x1fff57fc:    0292        ..      LSLS     r2,r2,#10
        0x1fff57fe:    1889        ..      ADDS     r1,r1,r2
        0x1fff5800:    6041        A`      STR      r1,[r0,#4]
        0x1fff5802:    6881        .h      LDR      r1,[r0,#8]
        0x1fff5804:    1582        ..      ASRS     r2,r0,#22
        0x1fff5806:    4391        .C      BICS     r1,r1,r2
        0x1fff5808:    6081        .`      STR      r1,[r0,#8]
        0x1fff580a:    bd30        0.      POP      {r4,r5,pc}
    $d
        0x1fff580c:    1fff0998    ....    DCD    536807832
        0x1fff5810:    00003fff    .?..    DCD    16383
        0x1fff5814:    40031000    ...@    DCD    1073942528
        0x1fff5818:    40030080    ...@    DCD    1073938560
        0x1fff581c:    1fff7460    `t..    DCD    536835168
        0x1fff5820:    1fff0a44    D...    DCD    536808004
        0x1fff5824:    1fff0a45    E...    DCD    536808005
        0x1fff5828:    1fff0a46    F...    DCD    536808006
        0x1fff582c:    1fff0a47    G...    DCD    536808007
    $t
    i.phy_hw_pktFmt_Config
    phy_hw_pktFmt_Config
        0x1fff5830:    b40f        ..      PUSH     {r0-r3}
        0x1fff5832:    b510        ..      PUSH     {r4,lr}
        0x1fff5834:    4668        hF      MOV      r0,sp
        0x1fff5836:    7a00        .z      LDRB     r0,[r0,#8]
        0x1fff5838:    f000fb58    ..X.    BL       rf_phy_bb_cfg ; 0x1fff5eec
        0x1fff583c:    4668        hF      MOV      r0,sp
        0x1fff583e:    7ac0        .z      LDRB     r0,[r0,#0xb]
        0x1fff5840:    4601        .F      MOV      r1,r0
        0x1fff5842:    f7fcf947    ..G.    BL       $Ven$TT$L$$ll_hw_set_crc_fmt ; 0x1fff1ad4
        0x1fff5846:    4c0c        .L      LDR      r4,[pc,#48] ; [0x1fff5878] = 0x40030040
        0x1fff5848:    68a0        .h      LDR      r0,[r4,#8]
        0x1fff584a:    9903        ..      LDR      r1,[sp,#0xc]
        0x1fff584c:    0e00        ..      LSRS     r0,r0,#24
        0x1fff584e:    0600        ..      LSLS     r0,r0,#24
        0x1fff5850:    4308        .C      ORRS     r0,r0,r1
        0x1fff5852:    60a0        .`      STR      r0,[r4,#8]
        0x1fff5854:    2002        .       MOVS     r0,#2
        0x1fff5856:    f7fcfa57    ..W.    BL       $Ven$TT$L$$ll_hw_ign_rfifo ; 0x1fff1d08
        0x1fff585a:    68a0        .h      LDR      r0,[r4,#8]
        0x1fff585c:    0201        ..      LSLS     r1,r0,#8
        0x1fff585e:    4668        hF      MOV      r0,sp
        0x1fff5860:    7a80        .z      LDRB     r0,[r0,#0xa]
        0x1fff5862:    0a09        ..      LSRS     r1,r1,#8
        0x1fff5864:    0600        ..      LSLS     r0,r0,#24
        0x1fff5866:    4301        .C      ORRS     r1,r1,r0
        0x1fff5868:    60a1        .`      STR      r1,[r4,#8]
        0x1fff586a:    9804        ..      LDR      r0,[sp,#0x10]
        0x1fff586c:    60e0        .`      STR      r0,[r4,#0xc]
        0x1fff586e:    bc10        ..      POP      {r4}
        0x1fff5870:    bc08        ..      POP      {r3}
        0x1fff5872:    b004        ..      ADD      sp,sp,#0x10
        0x1fff5874:    4718        .G      BX       r3
    $d
        0x1fff5876:    0000        ..      DCW    0
        0x1fff5878:    40030040    @..@    DCD    1073938496
    $t
    i.phy_hw_set_srx
    phy_hw_set_srx
        0x1fff587c:    b510        ..      PUSH     {r4,lr}
        0x1fff587e:    f7fcf8ed    ....    BL       $Ven$TT$L$$ll_hw_set_rx_timeout ; 0x1fff1a5c
        0x1fff5882:    f7fcfa47    ..G.    BL       $Ven$TT$L$$ll_hw_set_srx ; 0x1fff1d14
        0x1fff5886:    223c        <"      MOVS     r2,#0x3c
        0x1fff5888:    2108        .!      MOVS     r1,#8
        0x1fff588a:    205a        Z       MOVS     r0,#0x5a
        0x1fff588c:    f7fcfa48    ..H.    BL       $Ven$TT$L$$ll_hw_set_trx_settle ; 0x1fff1d20
        0x1fff5890:    bd10        ..      POP      {r4,pc}
        0x1fff5892:    0000        ..      MOVS     r0,r0
    i.phy_hw_stop
    phy_hw_stop
        0x1fff5894:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff5896:    2400        .$      MOVS     r4,#0
        0x1fff5898:    2021        !       MOVS     r0,#0x21
        0x1fff589a:    f7fcf8df    ....    BL       $Ven$TT$L$$ll_hw_set_rx_timeout ; 0x1fff1a5c
        0x1fff589e:    4d06        .M      LDR      r5,[pc,#24] ; [0x1fff58b8] = 0x1fff0998
        0x1fff58a0:    e006        ..      B        0x1fff58b0 ; phy_hw_stop + 28
        0x1fff58a2:    2003        .       MOVS     r0,#3
        0x1fff58a4:    f7fcf958    ..X.    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b58
        0x1fff58a8:    1c64        d.      ADDS     r4,r4,#1
        0x1fff58aa:    b2e4        ..      UXTB     r4,r4
        0x1fff58ac:    2c0a        .,      CMP      r4,#0xa
        0x1fff58ae:    d802        ..      BHI      0x1fff58b6 ; phy_hw_stop + 34
        0x1fff58b0:    6828        (h      LDR      r0,[r5,#0]
        0x1fff58b2:    2800        .(      CMP      r0,#0
        0x1fff58b4:    d1f5        ..      BNE      0x1fff58a2 ; phy_hw_stop + 14
        0x1fff58b6:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x1fff58b8:    1fff0998    ....    DCD    536807832
    $t
    i.phy_hw_timing_setting
    phy_hw_timing_setting
        0x1fff58bc:    b510        ..      PUSH     {r4,lr}
        0x1fff58be:    2101        .!      MOVS     r1,#1
        0x1fff58c0:    200a        .       MOVS     r0,#0xa
        0x1fff58c2:    f7fcfa33    ..3.    BL       $Ven$TT$L$$ll_hw_set_tx_rx_release ; 0x1fff1d2c
        0x1fff58c6:    203c        <       MOVS     r0,#0x3c
        0x1fff58c8:    f7fcfa36    ..6.    BL       $Ven$TT$L$$ll_hw_set_rx_tx_interval ; 0x1fff1d38
        0x1fff58cc:    200a        .       MOVS     r0,#0xa
        0x1fff58ce:    f7fcfa39    ..9.    BL       $Ven$TT$L$$ll_hw_set_tx_rx_interval ; 0x1fff1d44
        0x1fff58d2:    2234        4"      MOVS     r2,#0x34
        0x1fff58d4:    2108        .!      MOVS     r1,#8
        0x1fff58d6:    2039        9       MOVS     r0,#0x39
        0x1fff58d8:    f7fcfa22    ..".    BL       $Ven$TT$L$$ll_hw_set_trx_settle ; 0x1fff1d20
        0x1fff58dc:    bd10        ..      POP      {r4,pc}
        0x1fff58de:    0000        ..      MOVS     r0,r0
    i.phy_rf_channel_hop
    phy_rf_channel_hop
        0x1fff58e0:    4809        .H      LDR      r0,[pc,#36] ; [0x1fff5908] = 0x1fff6d52
        0x1fff58e2:    7881        .x      LDRB     r1,[r0,#2]
        0x1fff58e4:    1c49        I.      ADDS     r1,r1,#1
        0x1fff58e6:    b2c9        ..      UXTB     r1,r1
        0x1fff58e8:    7081        .p      STRB     r1,[r0,#2]
        0x1fff58ea:    2901        .)      CMP      r1,#1
        0x1fff58ec:    d101        ..      BNE      0x1fff58f2 ; phy_rf_channel_hop + 18
        0x1fff58ee:    2100        .!      MOVS     r1,#0
        0x1fff58f0:    7081        .p      STRB     r1,[r0,#2]
        0x1fff58f2:    b2c9        ..      UXTB     r1,r1
        0x1fff58f4:    4a05        .J      LDR      r2,[pc,#20] ; [0x1fff590c] = 0x1fff7474
        0x1fff58f6:    5c40        @\      LDRB     r0,[r0,r1]
        0x1fff58f8:    7510        .u      STRB     r0,[r2,#0x14]
        0x1fff58fa:    4803        .H      LDR      r0,[pc,#12] ; [0x1fff5908] = 0x1fff6d52
        0x1fff58fc:    1c40        @.      ADDS     r0,r0,#1
        0x1fff58fe:    5c08        .\      LDRB     r0,[r1,r0]
        0x1fff5900:    4611        .F      MOV      r1,r2
        0x1fff5902:    3914        .9      SUBS     r1,r1,#0x14
        0x1fff5904:    7088        .p      STRB     r0,[r1,#2]
        0x1fff5906:    4770        pG      BX       lr
    $d
        0x1fff5908:    1fff6d52    Rm..    DCD    536833362
        0x1fff590c:    1fff7474    tt..    DCD    536835188
    $t
    i.phy_rf_process_recv
    phy_rf_process_recv
        0x1fff5910:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff5912:    4c0e        .L      LDR      r4,[pc,#56] ; [0x1fff594c] = 0x1fff7474
        0x1fff5914:    7820         x      LDRB     r0,[r4,#0]
        0x1fff5916:    28ff        .(      CMP      r0,#0xff
        0x1fff5918:    d016        ..      BEQ      0x1fff5948 ; phy_rf_process_recv + 56
        0x1fff591a:    f7fbfff1    ....    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff1900
        0x1fff591e:    7820         x      LDRB     r0,[r4,#0]
        0x1fff5920:    0700        ..      LSLS     r0,r0,#28
        0x1fff5922:    0f00        ..      LSRS     r0,r0,#28
        0x1fff5924:    7020         p      STRB     r0,[r4,#0]
        0x1fff5926:    f000f815    ....    BL       phy_rf_rx ; 0x1fff5954
        0x1fff592a:    4605        .F      MOV      r5,r0
        0x1fff592c:    f7fbfff4    ....    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff1918
        0x1fff5930:    2d11        .-      CMP      r5,#0x11
        0x1fff5932:    d109        ..      BNE      0x1fff5948 ; phy_rf_process_recv + 56
        0x1fff5934:    7820         x      LDRB     r0,[r4,#0]
        0x1fff5936:    2110        .!      MOVS     r1,#0x10
        0x1fff5938:    4308        .C      ORRS     r0,r0,r1
        0x1fff593a:    7020         p      STRB     r0,[r4,#0]
        0x1fff593c:    4804        .H      LDR      r0,[pc,#16] ; [0x1fff5950] = 0x1fff6d48
        0x1fff593e:    2202        ."      MOVS     r2,#2
        0x1fff5940:    2180        .!      MOVS     r1,#0x80
        0x1fff5942:    7900        .y      LDRB     r0,[r0,#4]
        0x1fff5944:    f7fcf8d8    ....    BL       $Ven$TT$L$$osal_start_timerEx ; 0x1fff1af8
        0x1fff5948:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x1fff594a:    0000        ..      DCW    0
        0x1fff594c:    1fff7474    tt..    DCD    536835188
        0x1fff5950:    1fff6d48    Hm..    DCD    536833352
    $t
    i.phy_rf_rx
    phy_rf_rx
        0x1fff5954:    b51c        ..      PUSH     {r2-r4,lr}
        0x1fff5956:    a801        ..      ADD      r0,sp,#4
        0x1fff5958:    f7fffea6    ....    BL       phy_allow_rx ; 0x1fff56a8
        0x1fff595c:    2800        .(      CMP      r0,#0
        0x1fff595e:    d029        ).      BEQ      0x1fff59b4 ; phy_rf_rx + 96
        0x1fff5960:    4916        .I      LDR      r1,[pc,#88] ; [0x1fff59bc] = 0x1fff0380
        0x1fff5962:    4815        .H      LDR      r0,[pc,#84] ; [0x1fff59b8] = 0x1fff290d
        0x1fff5964:    6108        .a      STR      r0,[r1,#0x10]
        0x1fff5966:    f7ffff95    ....    BL       phy_hw_stop ; 0x1fff5894
        0x1fff596a:    f7fbffc9    ....    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff1900
        0x1fff596e:    4814        .H      LDR      r0,[pc,#80] ; [0x1fff59c0] = 0x1fff7440
        0x1fff5970:    6b00        .k      LDR      r0,[r0,#0x30]
        0x1fff5972:    9000        ..      STR      r0,[sp,#0]
        0x1fff5974:    4812        .H      LDR      r0,[pc,#72] ; [0x1fff59c0] = 0x1fff7440
        0x1fff5976:    3020         0      ADDS     r0,r0,#0x20
        0x1fff5978:    c80f        ..      LDM      r0,{r0-r3}
        0x1fff597a:    f7ffff59    ..Y.    BL       phy_hw_pktFmt_Config ; 0x1fff5830
        0x1fff597e:    f7ffff9d    ....    BL       phy_hw_timing_setting ; 0x1fff58bc
        0x1fff5982:    480f        .H      LDR      r0,[pc,#60] ; [0x1fff59c0] = 0x1fff7440
        0x1fff5984:    3034        40      ADDS     r0,r0,#0x34
        0x1fff5986:    7d00        .}      LDRB     r0,[r0,#0x14]
        0x1fff5988:    f000f986    ....    BL       phy_set_channel ; 0x1fff5c98
        0x1fff598c:    9801        ..      LDR      r0,[sp,#4]
        0x1fff598e:    b280        ..      UXTH     r0,r0
        0x1fff5990:    f7ffff74    ..t.    BL       phy_hw_set_srx ; 0x1fff587c
        0x1fff5994:    f7fcf9dc    ....    BL       $Ven$TT$L$$ll_hw_rst_tfifo ; 0x1fff1d50
        0x1fff5998:    f7fcf9e0    ....    BL       $Ven$TT$L$$ll_hw_rst_rfifo ; 0x1fff1d5c
        0x1fff599c:    20ff        .       MOVS     r0,#0xff
        0x1fff599e:    f7fcf989    ....    BL       $Ven$TT$L$$set_max_length ; 0x1fff1cb4
        0x1fff59a2:    f7fffef1    ....    BL       phy_hw_go ; 0x1fff5788
        0x1fff59a6:    4907        .I      LDR      r1,[pc,#28] ; [0x1fff59c4] = 0x1fff0998
        0x1fff59a8:    2001        .       MOVS     r0,#1
        0x1fff59aa:    6008        .`      STR      r0,[r1,#0]
        0x1fff59ac:    f7fbffb4    ....    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff1918
        0x1fff59b0:    2000        .       MOVS     r0,#0
        0x1fff59b2:    bd1c        ..      POP      {r2-r4,pc}
        0x1fff59b4:    2011        .       MOVS     r0,#0x11
        0x1fff59b6:    bd1c        ..      POP      {r2-r4,pc}
    $d
        0x1fff59b8:    1fff290d    .)..    DCD    536815885
        0x1fff59bc:    1fff0380    ....    DCD    536806272
        0x1fff59c0:    1fff7440    @t..    DCD    536835136
        0x1fff59c4:    1fff0998    ....    DCD    536807832
    $t
    i.phy_rf_schedule
    phy_rf_schedule
        0x1fff59c8:    b510        ..      PUSH     {r4,lr}
        0x1fff59ca:    4c14        .L      LDR      r4,[pc,#80] ; [0x1fff5a1c] = 0x1fff7474
        0x1fff59cc:    7820         x      LDRB     r0,[r4,#0]
        0x1fff59ce:    2800        .(      CMP      r0,#0
        0x1fff59d0:    d005        ..      BEQ      0x1fff59de ; phy_rf_schedule + 22
        0x1fff59d2:    2801        .(      CMP      r0,#1
        0x1fff59d4:    d004        ..      BEQ      0x1fff59e0 ; phy_rf_schedule + 24
        0x1fff59d6:    2803        .(      CMP      r0,#3
        0x1fff59d8:    d101        ..      BNE      0x1fff59de ; phy_rf_schedule + 22
        0x1fff59da:    2001        .       MOVS     r0,#1
        0x1fff59dc:    7020         p      STRB     r0,[r4,#0]
        0x1fff59de:    bd10        ..      POP      {r4,pc}
        0x1fff59e0:    f7fbffe8    ....    BL       $Ven$TT$L$$read_current_fine_time ; 0x1fff19b4
        0x1fff59e4:    69a2        .i      LDR      r2,[r4,#0x18]
        0x1fff59e6:    2a00        .*      CMP      r2,#0
        0x1fff59e8:    d004        ..      BEQ      0x1fff59f4 ; phy_rf_schedule + 44
        0x1fff59ea:    6a21        !j      LDR      r1,[r4,#0x20]
        0x1fff59ec:    4281        .B      CMP      r1,r0
        0x1fff59ee:    d809        ..      BHI      0x1fff5a04 ; phy_rf_schedule + 60
        0x1fff59f0:    1a41        A.      SUBS     r1,r0,r1
        0x1fff59f2:    e00a        ..      B        0x1fff5a0a ; phy_rf_schedule + 66
        0x1fff59f4:    20ff        .       MOVS     r0,#0xff
        0x1fff59f6:    7020         p      STRB     r0,[r4,#0]
        0x1fff59f8:    4809        .H      LDR      r0,[pc,#36] ; [0x1fff5a20] = 0x1fff6d48
        0x1fff59fa:    2108        .!      MOVS     r1,#8
        0x1fff59fc:    7900        .y      LDRB     r0,[r0,#4]
        0x1fff59fe:    f7fcf875    ..u.    BL       $Ven$TT$L$$osal_set_event ; 0x1fff1aec
        0x1fff5a02:    bd10        ..      POP      {r4,pc}
        0x1fff5a04:    4b07        .K      LDR      r3,[pc,#28] ; [0x1fff5a24] = 0x3fffff
        0x1fff5a06:    1a59        Y.      SUBS     r1,r3,r1
        0x1fff5a08:    1809        ..      ADDS     r1,r1,r0
        0x1fff5a0a:    4291        .B      CMP      r1,r2
        0x1fff5a0c:    d302        ..      BCC      0x1fff5a14 ; phy_rf_schedule + 76
        0x1fff5a0e:    6220         b      STR      r0,[r4,#0x20]
        0x1fff5a10:    f7ffff66    ..f.    BL       phy_rf_channel_hop ; 0x1fff58e0
        0x1fff5a14:    f7ffff7c    ..|.    BL       phy_rf_process_recv ; 0x1fff5910
        0x1fff5a18:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff5a1a:    0000        ..      DCW    0
        0x1fff5a1c:    1fff7474    tt..    DCD    536835188
        0x1fff5a20:    1fff6d48    Hm..    DCD    536833352
        0x1fff5a24:    003fffff    ..?.    DCD    4194303
    $t
    i.phy_rf_start_rx
    phy_rf_start_rx
        0x1fff5a28:    b510        ..      PUSH     {r4,lr}
        0x1fff5a2a:    4c08        .L      LDR      r4,[pc,#32] ; [0x1fff5a4c] = 0x1fff7474
        0x1fff5a2c:    7821        !x      LDRB     r1,[r4,#0]
        0x1fff5a2e:    29ff        .)      CMP      r1,#0xff
        0x1fff5a30:    d001        ..      BEQ      0x1fff5a36 ; phy_rf_start_rx + 14
        0x1fff5a32:    2011        .       MOVS     r0,#0x11
        0x1fff5a34:    bd10        ..      POP      {r4,pc}
        0x1fff5a36:    61a0        .a      STR      r0,[r4,#0x18]
        0x1fff5a38:    2001        .       MOVS     r0,#1
        0x1fff5a3a:    7020         p      STRB     r0,[r4,#0]
        0x1fff5a3c:    f7fbffba    ....    BL       $Ven$TT$L$$read_current_fine_time ; 0x1fff19b4
        0x1fff5a40:    6220         b      STR      r0,[r4,#0x20]
        0x1fff5a42:    f7ffff65    ..e.    BL       phy_rf_process_recv ; 0x1fff5910
        0x1fff5a46:    2000        .       MOVS     r0,#0
        0x1fff5a48:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff5a4a:    0000        ..      DCW    0
        0x1fff5a4c:    1fff7474    tt..    DCD    536835188
    $t
    i.phy_rf_stop_rx
    phy_rf_stop_rx
        0x1fff5a50:    b510        ..      PUSH     {r4,lr}
        0x1fff5a52:    480d        .H      LDR      r0,[pc,#52] ; [0x1fff5a88] = 0x1fff7474
        0x1fff5a54:    7801        .x      LDRB     r1,[r0,#0]
        0x1fff5a56:    2901        .)      CMP      r1,#1
        0x1fff5a58:    d003        ..      BEQ      0x1fff5a62 ; phy_rf_stop_rx + 18
        0x1fff5a5a:    2911        .)      CMP      r1,#0x11
        0x1fff5a5c:    d001        ..      BEQ      0x1fff5a62 ; phy_rf_stop_rx + 18
        0x1fff5a5e:    2007        .       MOVS     r0,#7
        0x1fff5a60:    bd10        ..      POP      {r4,pc}
        0x1fff5a62:    2200        ."      MOVS     r2,#0
        0x1fff5a64:    4b09        .K      LDR      r3,[pc,#36] ; [0x1fff5a8c] = 0x1fff6d52
        0x1fff5a66:    6182        .a      STR      r2,[r0,#0x18]
        0x1fff5a68:    709a        .p      STRB     r2,[r3,#2]
        0x1fff5a6a:    2901        .)      CMP      r1,#1
        0x1fff5a6c:    d009        ..      BEQ      0x1fff5a82 ; phy_rf_stop_rx + 50
        0x1fff5a6e:    21ff        .!      MOVS     r1,#0xff
        0x1fff5a70:    7001        .p      STRB     r1,[r0,#0]
        0x1fff5a72:    4618        .F      MOV      r0,r3
        0x1fff5a74:    380a        .8      SUBS     r0,r0,#0xa
        0x1fff5a76:    2108        .!      MOVS     r1,#8
        0x1fff5a78:    7900        .y      LDRB     r0,[r0,#4]
        0x1fff5a7a:    f7fcf837    ..7.    BL       $Ven$TT$L$$osal_set_event ; 0x1fff1aec
        0x1fff5a7e:    2000        .       MOVS     r0,#0
        0x1fff5a80:    bd10        ..      POP      {r4,pc}
        0x1fff5a82:    f7ffff07    ....    BL       phy_hw_stop ; 0x1fff5894
        0x1fff5a86:    e7fa        ..      B        0x1fff5a7e ; phy_rf_stop_rx + 46
    $d
        0x1fff5a88:    1fff7474    tt..    DCD    536835188
        0x1fff5a8c:    1fff6d52    Rm..    DCD    536833362
    $t
    i.phy_rf_txack
    phy_rf_txack
        0x1fff5a90:    b5f0        ..      PUSH     {r4-r7,lr}
        0x1fff5a92:    b08d        ..      SUB      sp,sp,#0x34
        0x1fff5a94:    f7fcf968    ..h.    BL       $Ven$TT$L$$ll_hw_set_stx ; 0x1fff1d68
        0x1fff5a98:    f7fbff8c    ....    BL       $Ven$TT$L$$read_current_fine_time ; 0x1fff19b4
        0x1fff5a9c:    4d34        4M      LDR      r5,[pc,#208] ; [0x1fff5b70] = 0x1fff6d48
        0x1fff5a9e:    4e35        5N      LDR      r6,[pc,#212] ; [0x1fff5b74] = 0x3fffff
        0x1fff5aa0:    6929        )i      LDR      r1,[r5,#0x10]
        0x1fff5aa2:    4604        .F      MOV      r4,r0
        0x1fff5aa4:    4288        .B      CMP      r0,r1
        0x1fff5aa6:    d301        ..      BCC      0x1fff5aac ; phy_rf_txack + 28
        0x1fff5aa8:    1a60        `.      SUBS     r0,r4,r1
        0x1fff5aaa:    e001        ..      B        0x1fff5ab0 ; phy_rf_txack + 32
        0x1fff5aac:    1a70        p.      SUBS     r0,r6,r1
        0x1fff5aae:    1900        ..      ADDS     r0,r0,r4
        0x1fff5ab0:    217f        .!      MOVS     r1,#0x7f
        0x1fff5ab2:    1a08        ..      SUBS     r0,r1,r0
        0x1fff5ab4:    b2c0        ..      UXTB     r0,r0
        0x1fff5ab6:    223c        <"      MOVS     r2,#0x3c
        0x1fff5ab8:    2108        .!      MOVS     r1,#8
        0x1fff5aba:    f7fcf931    ..1.    BL       $Ven$TT$L$$ll_hw_set_trx_settle ; 0x1fff1d20
        0x1fff5abe:    f7fffe63    ..c.    BL       phy_hw_go ; 0x1fff5788
        0x1fff5ac2:    f7fcf945    ..E.    BL       $Ven$TT$L$$ll_hw_rst_tfifo ; 0x1fff1d50
        0x1fff5ac6:    4f2c        ,O      LDR      r7,[pc,#176] ; [0x1fff5b78] = 0x1fff7460
        0x1fff5ac8:    2108        .!      MOVS     r1,#8
        0x1fff5aca:    6938        8i      LDR      r0,[r7,#0x10]
        0x1fff5acc:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff5ace:    0780        ..      LSLS     r0,r0,#30
        0x1fff5ad0:    0f80        ..      LSRS     r0,r0,#30
        0x1fff5ad2:    4308        .C      ORRS     r0,r0,r1
        0x1fff5ad4:    4669        iF      MOV      r1,sp
        0x1fff5ad6:    7308        .s      STRB     r0,[r1,#0xc]
        0x1fff5ad8:    2006        .       MOVS     r0,#6
        0x1fff5ada:    7348        Hs      STRB     r0,[r1,#0xd]
        0x1fff5adc:    4602        .F      MOV      r2,r0
        0x1fff5ade:    4924        $I      LDR      r1,[pc,#144] ; [0x1fff5b70] = 0x1fff6d48
        0x1fff5ae0:    a803        ..      ADD      r0,sp,#0xc
        0x1fff5ae2:    312e        .1      ADDS     r1,r1,#0x2e
        0x1fff5ae4:    3002        .0      ADDS     r0,#2
        0x1fff5ae6:    f7fbffef    ....    BL       $Ven$TT$L$$osal_memcpy ; 0x1fff1ac8
        0x1fff5aea:    6a29        )j      LDR      r1,[r5,#0x20]
        0x1fff5aec:    2900        .)      CMP      r1,#0
        0x1fff5aee:    d017        ..      BEQ      0x1fff5b20 ; phy_rf_txack + 144
        0x1fff5af0:    6938        8i      LDR      r0,[r7,#0x10]
        0x1fff5af2:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff5af4:    0902        ..      LSRS     r2,r0,#4
        0x1fff5af6:    d013        ..      BEQ      0x1fff5b20 ; phy_rf_txack + 144
        0x1fff5af8:    466a        jF      MOV      r2,sp
        0x1fff5afa:    7010        .p      STRB     r0,[r2,#0]
        0x1fff5afc:    a805        ..      ADD      r0,sp,#0x14
        0x1fff5afe:    9001        ..      STR      r0,[sp,#4]
        0x1fff5b00:    4668        hF      MOV      r0,sp
        0x1fff5b02:    4788        .G      BLX      r1
        0x1fff5b04:    2800        .(      CMP      r0,#0
        0x1fff5b06:    d10b        ..      BNE      0x1fff5b20 ; phy_rf_txack + 144
        0x1fff5b08:    4669        iF      MOV      r1,sp
        0x1fff5b0a:    7b08        .{      LDRB     r0,[r1,#0xc]
        0x1fff5b0c:    6939        9i      LDR      r1,[r7,#0x10]
        0x1fff5b0e:    7809        .x      LDRB     r1,[r1,#0]
        0x1fff5b10:    0909        ..      LSRS     r1,r1,#4
        0x1fff5b12:    0109        ..      LSLS     r1,r1,#4
        0x1fff5b14:    4308        .C      ORRS     r0,r0,r1
        0x1fff5b16:    4669        iF      MOV      r1,sp
        0x1fff5b18:    7308        .s      STRB     r0,[r1,#0xc]
        0x1fff5b1a:    7a08        .z      LDRB     r0,[r1,#8]
        0x1fff5b1c:    1d80        ..      ADDS     r0,r0,#6
        0x1fff5b1e:    7348        Hs      STRB     r0,[r1,#0xd]
        0x1fff5b20:    4668        hF      MOV      r0,sp
        0x1fff5b22:    7b47        G{      LDRB     r7,[r0,#0xd]
        0x1fff5b24:    202c        ,       MOVS     r0,#0x2c
        0x1fff5b26:    f7fcf8c5    ....    BL       $Ven$TT$L$$set_max_length ; 0x1fff1cb4
        0x1fff5b2a:    1cb9        ..      ADDS     r1,r7,#2
        0x1fff5b2c:    a803        ..      ADD      r0,sp,#0xc
        0x1fff5b2e:    f7fcf88b    ....    BL       $Ven$TT$L$$ll_hw_write_tfifo ; 0x1fff1c48
        0x1fff5b32:    f7fbff3f    ..?.    BL       $Ven$TT$L$$read_current_fine_time ; 0x1fff19b4
        0x1fff5b36:    4a11        .J      LDR      r2,[pc,#68] ; [0x1fff5b7c] = 0x1fff0998
        0x1fff5b38:    2101        .!      MOVS     r1,#1
        0x1fff5b3a:    6011        .`      STR      r1,[r2,#0]
        0x1fff5b3c:    4a0e        .J      LDR      r2,[pc,#56] ; [0x1fff5b78] = 0x1fff7460
        0x1fff5b3e:    2103        .!      MOVS     r1,#3
        0x1fff5b40:    3214        .2      ADDS     r2,r2,#0x14
        0x1fff5b42:    7011        .p      STRB     r1,[r2,#0]
        0x1fff5b44:    6929        )i      LDR      r1,[r5,#0x10]
        0x1fff5b46:    428c        .B      CMP      r4,r1
        0x1fff5b48:    d301        ..      BCC      0x1fff5b4e ; phy_rf_txack + 190
        0x1fff5b4a:    1a62        b.      SUBS     r2,r4,r1
        0x1fff5b4c:    e001        ..      B        0x1fff5b52 ; phy_rf_txack + 194
        0x1fff5b4e:    1a71        q.      SUBS     r1,r6,r1
        0x1fff5b50:    190a        ..      ADDS     r2,r1,r4
        0x1fff5b52:    4909        .I      LDR      r1,[pc,#36] ; [0x1fff5b78] = 0x1fff7460
        0x1fff5b54:    3140        @1      ADDS     r1,r1,#0x40
        0x1fff5b56:    61ca        .a      STR      r2,[r1,#0x1c]
        0x1fff5b58:    42a0        .B      CMP      r0,r4
        0x1fff5b5a:    d301        ..      BCC      0x1fff5b60 ; phy_rf_txack + 208
        0x1fff5b5c:    1b00        ..      SUBS     r0,r0,r4
        0x1fff5b5e:    e001        ..      B        0x1fff5b64 ; phy_rf_txack + 212
        0x1fff5b60:    1b32        2.      SUBS     r2,r6,r4
        0x1fff5b62:    1810        ..      ADDS     r0,r2,r0
        0x1fff5b64:    6208        .b      STR      r0,[r1,#0x20]
        0x1fff5b66:    6948        Hi      LDR      r0,[r1,#0x14]
        0x1fff5b68:    1c40        @.      ADDS     r0,r0,#1
        0x1fff5b6a:    6148        Ha      STR      r0,[r1,#0x14]
        0x1fff5b6c:    b00d        ..      ADD      sp,sp,#0x34
        0x1fff5b6e:    bdf0        ..      POP      {r4-r7,pc}
    $d
        0x1fff5b70:    1fff6d48    Hm..    DCD    536833352
        0x1fff5b74:    003fffff    ..?.    DCD    4194303
        0x1fff5b78:    1fff7460    `t..    DCD    536835168
        0x1fff5b7c:    1fff0998    ....    DCD    536807832
    $t
    i.phy_rx_data_check
    phy_rx_data_check
        0x1fff5b80:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff5b82:    4816        .H      LDR      r0,[pc,#88] ; [0x1fff5bdc] = 0x1fff7474
        0x1fff5b84:    4c15        .L      LDR      r4,[pc,#84] ; [0x1fff5bdc] = 0x1fff7474
        0x1fff5b86:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff5b88:    2500        .%      MOVS     r5,#0
        0x1fff5b8a:    342c        ,4      ADDS     r4,r4,#0x2c
        0x1fff5b8c:    2801        .(      CMP      r0,#1
        0x1fff5b8e:    d004        ..      BEQ      0x1fff5b9a ; phy_rx_data_check + 26
        0x1fff5b90:    2803        .(      CMP      r0,#3
        0x1fff5b92:    d002        ..      BEQ      0x1fff5b9a ; phy_rx_data_check + 26
        0x1fff5b94:    2802        .(      CMP      r0,#2
        0x1fff5b96:    d013        ..      BEQ      0x1fff5bc0 ; phy_rx_data_check + 64
        0x1fff5b98:    e010        ..      B        0x1fff5bbc ; phy_rx_data_check + 60
        0x1fff5b9a:    4811        .H      LDR      r0,[pc,#68] ; [0x1fff5be0] = 0x1fff7240
        0x1fff5b9c:    f000fb54    ..T.    BL       rf_rxdata_check ; 0x1fff6248
        0x1fff5ba0:    0005        ..      MOVS     r5,r0
        0x1fff5ba2:    d003        ..      BEQ      0x1fff5bac ; phy_rx_data_check + 44
        0x1fff5ba4:    6860        `h      LDR      r0,[r4,#4]
        0x1fff5ba6:    1c40        @.      ADDS     r0,r0,#1
        0x1fff5ba8:    6060        ``      STR      r0,[r4,#4]
        0x1fff5baa:    e007        ..      B        0x1fff5bbc ; phy_rx_data_check + 60
        0x1fff5bac:    480d        .H      LDR      r0,[pc,#52] ; [0x1fff5be4] = 0x1fff6d48
        0x1fff5bae:    2120         !      MOVS     r1,#0x20
        0x1fff5bb0:    7900        .y      LDRB     r0,[r0,#4]
        0x1fff5bb2:    f7fbff9b    ....    BL       $Ven$TT$L$$osal_set_event ; 0x1fff1aec
        0x1fff5bb6:    6820         h      LDR      r0,[r4,#0]
        0x1fff5bb8:    1c40        @.      ADDS     r0,r0,#1
        0x1fff5bba:    6020         `      STR      r0,[r4,#0]
        0x1fff5bbc:    4628        (F      MOV      r0,r5
        0x1fff5bbe:    bd70        p.      POP      {r4-r6,pc}
        0x1fff5bc0:    4807        .H      LDR      r0,[pc,#28] ; [0x1fff5be0] = 0x1fff7240
        0x1fff5bc2:    f000fc0d    ....    BL       rf_txack_check ; 0x1fff63e0
        0x1fff5bc6:    2800        .(      CMP      r0,#0
        0x1fff5bc8:    d1f9        ..      BNE      0x1fff5bbe ; phy_rx_data_check + 62
        0x1fff5bca:    4904        .I      LDR      r1,[pc,#16] ; [0x1fff5bdc] = 0x1fff7474
        0x1fff5bcc:    2201        ."      MOVS     r2,#1
        0x1fff5bce:    3120         1      ADDS     r1,r1,#0x20
        0x1fff5bd0:    718a        .q      STRB     r2,[r1,#6]
        0x1fff5bd2:    68e1        .h      LDR      r1,[r4,#0xc]
        0x1fff5bd4:    1c49        I.      ADDS     r1,r1,#1
        0x1fff5bd6:    60e1        .`      STR      r1,[r4,#0xc]
        0x1fff5bd8:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x1fff5bda:    0000        ..      DCW    0
        0x1fff5bdc:    1fff7474    tt..    DCD    536835188
        0x1fff5be0:    1fff7240    @r..    DCD    536834624
        0x1fff5be4:    1fff6d48    Hm..    DCD    536833352
    $t
    i.phy_rx_data_process
    phy_rx_data_process
        0x1fff5be8:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff5bea:    b08e        ..      SUB      sp,sp,#0x38
        0x1fff5bec:    f7fbfe88    ....    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff1900
        0x1fff5bf0:    4817        .H      LDR      r0,[pc,#92] ; [0x1fff5c50] = 0x1fff7460
        0x1fff5bf2:    6901        .i      LDR      r1,[r0,#0x10]
        0x1fff5bf4:    7848        Hx      LDRB     r0,[r1,#1]
        0x1fff5bf6:    1c80        ..      ADDS     r0,r0,#2
        0x1fff5bf8:    b2c4        ..      UXTB     r4,r0
        0x1fff5bfa:    4622        "F      MOV      r2,r4
        0x1fff5bfc:    a803        ..      ADD      r0,sp,#0xc
        0x1fff5bfe:    f7fbff63    ..c.    BL       $Ven$TT$L$$osal_memcpy ; 0x1fff1ac8
        0x1fff5c02:    4e14        .N      LDR      r6,[pc,#80] ; [0x1fff5c54] = 0x1fff6d48
        0x1fff5c04:    78f5        .x      LDRB     r5,[r6,#3]
        0x1fff5c06:    f7fbfe87    ....    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff1918
        0x1fff5c0a:    69f1        .i      LDR      r1,[r6,#0x1c]
        0x1fff5c0c:    2900        .)      CMP      r1,#0
        0x1fff5c0e:    d00b        ..      BEQ      0x1fff5c28 ; phy_rx_data_process + 64
        0x1fff5c10:    4668        hF      MOV      r0,sp
        0x1fff5c12:    7b02        .{      LDRB     r2,[r0,#0xc]
        0x1fff5c14:    7002        .p      STRB     r2,[r0,#0]
        0x1fff5c16:    7b42        B{      LDRB     r2,[r0,#0xd]
        0x1fff5c18:    7202        .r      STRB     r2,[r0,#8]
        0x1fff5c1a:    7245        Er      STRB     r5,[r0,#9]
        0x1fff5c1c:    300e        .0      ADDS     r0,r0,#0xe
        0x1fff5c1e:    9001        ..      STR      r0,[sp,#4]
        0x1fff5c20:    4668        hF      MOV      r0,sp
        0x1fff5c22:    4788        .G      BLX      r1
        0x1fff5c24:    b00e        ..      ADD      sp,sp,#0x38
        0x1fff5c26:    bd70        p.      POP      {r4-r6,pc}
        0x1fff5c28:    a00b        ..      ADR      r0,{pc}+0x30 ; 0x1fff5c58
        0x1fff5c2a:    f7fdfca9    ....    BL       dbg_printf ; 0x1fff3580
        0x1fff5c2e:    4808        .H      LDR      r0,[pc,#32] ; [0x1fff5c50] = 0x1fff7460
        0x1fff5c30:    88f2        ..      LDRH     r2,[r6,#6]
        0x1fff5c32:    3014        .0      ADDS     r0,r0,#0x14
        0x1fff5c34:    3aff        .:      SUBS     r2,r2,#0xff
        0x1fff5c36:    7d03        .}      LDRB     r3,[r0,#0x14]
        0x1fff5c38:    3aff        .:      SUBS     r2,r2,#0xff
        0x1fff5c3a:    4629        )F      MOV      r1,r5
        0x1fff5c3c:    a00d        ..      ADR      r0,{pc}+0x38 ; 0x1fff5c74
        0x1fff5c3e:    3a02        .:      SUBS     r2,#2
        0x1fff5c40:    f7fdfc9e    ....    BL       dbg_printf ; 0x1fff3580
        0x1fff5c44:    4621        !F      MOV      r1,r4
        0x1fff5c46:    a803        ..      ADD      r0,sp,#0xc
        0x1fff5c48:    f7fffba4    ....    BL       my_dump_byte ; 0x1fff5394
        0x1fff5c4c:    e7ea        ..      B        0x1fff5c24 ; phy_rx_data_process + 60
    $d
        0x1fff5c4e:    0000        ..      DCW    0
        0x1fff5c50:    1fff7460    `t..    DCD    536835168
        0x1fff5c54:    1fff6d48    Hm..    DCD    536833352
        0x1fff5c58:    2d2d2d2d    ----    DCD    757935405
        0x1fff5c5c:    2d2d2d2d    ----    DCD    757935405
        0x1fff5c60:    2d2d2d2d    ----    DCD    757935405
        0x1fff5c64:    2d2d2d2d    ----    DCD    757935405
        0x1fff5c68:    2d2d2d2d    ----    DCD    757935405
        0x1fff5c6c:    2d2d2d2d    ----    DCD    757935405
        0x1fff5c70:    00000a2d    -...    DCD    2605
        0x1fff5c74:    5948505b    [PHY    DCD    1497911387
        0x1fff5c78:    5d585220     RX]    DCD    1566069280
        0x1fff5c7c:    252d5b20     [-%    DCD    623729440
        0x1fff5c80:    64643330    03dd    DCD    1684288304
        0x1fff5c84:    25206d62    bm %    DCD    622882146
        0x1fff5c88:    484b6434    4dKH    DCD    1212900404
        0x1fff5c8c:    3025207a    z %0    DCD    807739514
        0x1fff5c90:    43206432    2d C    DCD    1126196274
        0x1fff5c94:    00205d48    H] .    DCD    2121032
    $t
    i.phy_set_channel
    phy_set_channel
        0x1fff5c98:    b510        ..      PUSH     {r4,lr}
        0x1fff5c9a:    490d        .I      LDR      r1,[pc,#52] ; [0x1fff5cd0] = 0x1fff0a68
        0x1fff5c9c:    2300        .#      MOVS     r3,#0
        0x1fff5c9e:    56cb        .V      LDRSB    r3,[r1,r3]
        0x1fff5ca0:    4a0c        .J      LDR      r2,[pc,#48] ; [0x1fff5cd4] = 0x40030080
        0x1fff5ca2:    2b00        .+      CMP      r3,#0
        0x1fff5ca4:    4b0c        .K      LDR      r3,[pc,#48] ; [0x1fff5cd8] = 0
        0x1fff5ca6:    56cb        .V      LDRSB    r3,[r1,r3]
        0x1fff5ca8:    db06        ..      BLT      0x1fff5cb8 ; phy_set_channel + 32
        0x1fff5caa:    041b        ..      LSLS     r3,r3,#16
        0x1fff5cac:    2400        .$      MOVS     r4,#0
        0x1fff5cae:    570c        .W      LDRSB    r4,[r1,r4]
        0x1fff5cb0:    0221        !.      LSLS     r1,r4,#8
        0x1fff5cb2:    1859        Y.      ADDS     r1,r3,r1
        0x1fff5cb4:    1808        ..      ADDS     r0,r1,r0
        0x1fff5cb6:    e008        ..      B        0x1fff5cca ; phy_set_channel + 50
        0x1fff5cb8:    33ff        .3      ADDS     r3,r3,#0xff
        0x1fff5cba:    041b        ..      LSLS     r3,r3,#16
        0x1fff5cbc:    2400        .$      MOVS     r4,#0
        0x1fff5cbe:    570c        .W      LDRSB    r4,[r1,r4]
        0x1fff5cc0:    0221        !.      LSLS     r1,r4,#8
        0x1fff5cc2:    1859        Y.      ADDS     r1,r3,r1
        0x1fff5cc4:    1808        ..      ADDS     r0,r1,r0
        0x1fff5cc6:    4905        .I      LDR      r1,[pc,#20] ; [0x1fff5cdc] = 0xfeff
        0x1fff5cc8:    1840        @.      ADDS     r0,r0,r1
        0x1fff5cca:    6350        Pc      STR      r0,[r2,#0x34]
        0x1fff5ccc:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff5cce:    0000        ..      DCW    0
        0x1fff5cd0:    1fff0a68    h...    DCD    536808040
        0x1fff5cd4:    40030080    ...@    DCD    1073938560
        0x1fff5cd8:    00000000    ....    DCD    0
        0x1fff5cdc:    0000feff    ....    DCD    65279
    $t
    i.rc32k_calibration
    rc32k_calibration
        0x1fff5ce0:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff5ce2:    481e        .H      LDR      r0,[pc,#120] ; [0x1fff5d5c] = 0x4000f0c0
        0x1fff5ce4:    6841        Ah      LDR      r1,[r0,#4]
        0x1fff5ce6:    0609        ..      LSLS     r1,r1,#24
        0x1fff5ce8:    d501        ..      BPL      0x1fff5cee ; rc32k_calibration + 14
        0x1fff5cea:    2000        .       MOVS     r0,#0
        0x1fff5cec:    bdf8        ..      POP      {r3-r7,pc}
        0x1fff5cee:    6841        Ah      LDR      r1,[r0,#4]
        0x1fff5cf0:    2280        ."      MOVS     r2,#0x80
        0x1fff5cf2:    4311        .C      ORRS     r1,r1,r2
        0x1fff5cf4:    6041        A`      STR      r1,[r0,#4]
        0x1fff5cf6:    4d19        .M      LDR      r5,[pc,#100] ; [0x1fff5d5c] = 0x4000f0c0
        0x1fff5cf8:    260a        .&      MOVS     r6,#0xa
        0x1fff5cfa:    2700        .'      MOVS     r7,#0
        0x1fff5cfc:    3d80        .=      SUBS     r5,r5,#0x80
        0x1fff5cfe:    69e8        .i      LDR      r0,[r5,#0x1c]
        0x1fff5d00:    0840        @.      LSRS     r0,r0,#1
        0x1fff5d02:    0040        @.      LSLS     r0,r0,#1
        0x1fff5d04:    61e8        .a      STR      r0,[r5,#0x1c]
        0x1fff5d06:    2006        .       MOVS     r0,#6
        0x1fff5d08:    f7fbff26    ..&.    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b58
        0x1fff5d0c:    4c13        .L      LDR      r4,[pc,#76] ; [0x1fff5d5c] = 0x4000f0c0
        0x1fff5d0e:    3cc0        .<      SUBS     r4,r4,#0xc0
        0x1fff5d10:    69a0        .i      LDR      r0,[r4,#0x18]
        0x1fff5d12:    2180        .!      MOVS     r1,#0x80
        0x1fff5d14:    4308        .C      ORRS     r0,r0,r1
        0x1fff5d16:    61a0        .a      STR      r0,[r4,#0x18]
        0x1fff5d18:    69e8        .i      LDR      r0,[r5,#0x1c]
        0x1fff5d1a:    2101        .!      MOVS     r1,#1
        0x1fff5d1c:    4308        .C      ORRS     r0,r0,r1
        0x1fff5d1e:    61e8        .a      STR      r0,[r5,#0x1c]
        0x1fff5d20:    e002        ..      B        0x1fff5d28 ; rc32k_calibration + 72
        0x1fff5d22:    2008        .       MOVS     r0,#8
        0x1fff5d24:    f7fbff18    ....    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b58
        0x1fff5d28:    6aa8        .j      LDR      r0,[r5,#0x28]
        0x1fff5d2a:    0580        ..      LSLS     r0,r0,#22
        0x1fff5d2c:    d404        ..      BMI      0x1fff5d38 ; rc32k_calibration + 88
        0x1fff5d2e:    4630        0F      MOV      r0,r6
        0x1fff5d30:    1e76        v.      SUBS     r6,r6,#1
        0x1fff5d32:    b2f6        ..      UXTB     r6,r6
        0x1fff5d34:    2800        .(      CMP      r0,#0
        0x1fff5d36:    d1f4        ..      BNE      0x1fff5d22 ; rc32k_calibration + 66
        0x1fff5d38:    2e00        ..      CMP      r6,#0
        0x1fff5d3a:    d007        ..      BEQ      0x1fff5d4c ; rc32k_calibration + 108
        0x1fff5d3c:    6a28        (j      LDR      r0,[r5,#0x20]
        0x1fff5d3e:    217e        ~!      MOVS     r1,#0x7e
        0x1fff5d40:    0bc7        ..      LSRS     r7,r0,#15
        0x1fff5d42:    69a0        .i      LDR      r0,[r4,#0x18]
        0x1fff5d44:    400f        .@      ANDS     r7,r7,r1
        0x1fff5d46:    4388        .C      BICS     r0,r0,r1
        0x1fff5d48:    4338        8C      ORRS     r0,r0,r7
        0x1fff5d4a:    61a0        .a      STR      r0,[r4,#0x18]
        0x1fff5d4c:    69a1        .i      LDR      r1,[r4,#0x18]
        0x1fff5d4e:    2080        .       MOVS     r0,#0x80
        0x1fff5d50:    4381        .C      BICS     r1,r1,r0
        0x1fff5d52:    61a1        .a      STR      r1,[r4,#0x18]
        0x1fff5d54:    0638        8.      LSLS     r0,r7,#24
        0x1fff5d56:    0e40        @.      LSRS     r0,r0,#25
        0x1fff5d58:    bdf8        ..      POP      {r3-r7,pc}
    $d
        0x1fff5d5a:    0000        ..      DCW    0
        0x1fff5d5c:    4000f0c0    ...@    DCD    1073803456
    $t
    i.rc32k_cap_cal
    rc32k_cap_cal
        0x1fff5d60:    4b12        .K      LDR      r3,[pc,#72] ; [0x1fff5dac] = 0x200b
        0x1fff5d62:    b510        ..      PUSH     {r4,lr}
        0x1fff5d64:    4912        .I      LDR      r1,[pc,#72] ; [0x1fff5db0] = 0x4000f000
        0x1fff5d66:    227e        ~"      MOVS     r2,#0x7e
        0x1fff5d68:    4298        .B      CMP      r0,r3
        0x1fff5d6a:    d90a        ..      BLS      0x1fff5d82 ; rc32k_cap_cal + 34
        0x1fff5d6c:    698b        .i      LDR      r3,[r1,#0x18]
        0x1fff5d6e:    065b        [.      LSLS     r3,r3,#25
        0x1fff5d70:    0e9b        ..      LSRS     r3,r3,#26
        0x1fff5d72:    d006        ..      BEQ      0x1fff5d82 ; rc32k_cap_cal + 34
        0x1fff5d74:    6988        .i      LDR      r0,[r1,#0x18]
        0x1fff5d76:    698b        .i      LDR      r3,[r1,#0x18]
        0x1fff5d78:    0640        @.      LSLS     r0,r0,#25
        0x1fff5d7a:    0e80        ..      LSRS     r0,r0,#26
        0x1fff5d7c:    4393        .C      BICS     r3,r3,r2
        0x1fff5d7e:    1e40        @.      SUBS     r0,r0,#1
        0x1fff5d80:    e00c        ..      B        0x1fff5d9c ; rc32k_cap_cal + 60
        0x1fff5d82:    4b0c        .K      LDR      r3,[pc,#48] ; [0x1fff5db4] = 0x1cfd
        0x1fff5d84:    4298        .B      CMP      r0,r3
        0x1fff5d86:    d20f        ..      BCS      0x1fff5da8 ; rc32k_cap_cal + 72
        0x1fff5d88:    6988        .i      LDR      r0,[r1,#0x18]
        0x1fff5d8a:    4010        .@      ANDS     r0,r0,r2
        0x1fff5d8c:    287e        ~(      CMP      r0,#0x7e
        0x1fff5d8e:    d20b        ..      BCS      0x1fff5da8 ; rc32k_cap_cal + 72
        0x1fff5d90:    6988        .i      LDR      r0,[r1,#0x18]
        0x1fff5d92:    698b        .i      LDR      r3,[r1,#0x18]
        0x1fff5d94:    0640        @.      LSLS     r0,r0,#25
        0x1fff5d96:    0e80        ..      LSRS     r0,r0,#26
        0x1fff5d98:    4393        .C      BICS     r3,r3,r2
        0x1fff5d9a:    1c40        @.      ADDS     r0,r0,#1
        0x1fff5d9c:    0040        @.      LSLS     r0,r0,#1
        0x1fff5d9e:    4303        .C      ORRS     r3,r3,r0
        0x1fff5da0:    618b        .a      STR      r3,[r1,#0x18]
        0x1fff5da2:    2003        .       MOVS     r0,#3
        0x1fff5da4:    f7fbfed8    ....    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b58
        0x1fff5da8:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff5daa:    0000        ..      DCW    0
        0x1fff5dac:    0000200b    . ..    DCD    8203
        0x1fff5db0:    4000f000    ...@    DCD    1073803264
        0x1fff5db4:    00001cfd    ....    DCD    7421
    $t
    i.read_TIM5_remainder_timer
    read_TIM5_remainder_timer
        0x1fff5db8:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff5dc0] = 0x40001040
        0x1fff5dba:    6940        @i      LDR      r0,[r0,#0x14]
        0x1fff5dbc:    0880        ..      LSRS     r0,r0,#2
        0x1fff5dbe:    4770        pG      BX       lr
    $d
        0x1fff5dc0:    40001040    @..@    DCD    1073745984
    $t
    i.rf_calibrate1
    rf_calibrate1
        0x1fff5dc4:    b510        ..      PUSH     {r4,lr}
        0x1fff5dc6:    f000fa57    ..W.    BL       rf_tpCal_gen_cap_arrary ; 0x1fff6278
        0x1fff5dca:    f7ffff89    ....    BL       rc32k_calibration ; 0x1fff5ce0
        0x1fff5dce:    bd10        ..      POP      {r4,pc}
    i.rf_phy_ana_cfg
    rf_phy_ana_cfg
        0x1fff5dd0:    b530        0.      PUSH     {r4,r5,lr}
        0x1fff5dd2:    4839        9H      LDR      r0,[pc,#228] ; [0x1fff5eb8] = 0x4000f040
        0x1fff5dd4:    6801        .h      LDR      r1,[r0,#0]
        0x1fff5dd6:    2201        ."      MOVS     r2,#1
        0x1fff5dd8:    0492        ..      LSLS     r2,r2,#18
        0x1fff5dda:    4311        .C      ORRS     r1,r1,r2
        0x1fff5ddc:    6001        .`      STR      r1,[r0,#0]
        0x1fff5dde:    6841        Ah      LDR      r1,[r0,#4]
        0x1fff5de0:    2203        ."      MOVS     r2,#3
        0x1fff5de2:    0612        ..      LSLS     r2,r2,#24
        0x1fff5de4:    4391        .C      BICS     r1,r1,r2
        0x1fff5de6:    4a35        5J      LDR      r2,[pc,#212] ; [0x1fff5ebc] = 0x1fff0a4c
        0x1fff5de8:    7813        .x      LDRB     r3,[r2,#0]
        0x1fff5dea:    061b        ..      LSLS     r3,r3,#24
        0x1fff5dec:    4319        .C      ORRS     r1,r1,r3
        0x1fff5dee:    6041        A`      STR      r1,[r0,#4]
        0x1fff5df0:    6843        Ch      LDR      r3,[r0,#4]
        0x1fff5df2:    2103        .!      MOVS     r1,#3
        0x1fff5df4:    0589        ..      LSLS     r1,r1,#22
        0x1fff5df6:    438b        .C      BICS     r3,r3,r1
        0x1fff5df8:    4931        1I      LDR      r1,[pc,#196] ; [0x1fff5ec0] = 0x1fff0a4b
        0x1fff5dfa:    780c        .x      LDRB     r4,[r1,#0]
        0x1fff5dfc:    05a4        ..      LSLS     r4,r4,#22
        0x1fff5dfe:    4323        #C      ORRS     r3,r3,r4
        0x1fff5e00:    6043        C`      STR      r3,[r0,#4]
        0x1fff5e02:    6843        Ch      LDR      r3,[r0,#4]
        0x1fff5e04:    2460        `$      MOVS     r4,#0x60
        0x1fff5e06:    4323        #C      ORRS     r3,r3,r4
        0x1fff5e08:    6043        C`      STR      r3,[r0,#4]
        0x1fff5e0a:    7813        .x      LDRB     r3,[r2,#0]
        0x1fff5e0c:    2b02        .+      CMP      r3,#2
        0x1fff5e0e:    d008        ..      BEQ      0x1fff5e22 ; rf_phy_ana_cfg + 82
        0x1fff5e10:    7813        .x      LDRB     r3,[r2,#0]
        0x1fff5e12:    2b01        .+      CMP      r3,#1
        0x1fff5e14:    d005        ..      BEQ      0x1fff5e22 ; rf_phy_ana_cfg + 82
        0x1fff5e16:    780b        .x      LDRB     r3,[r1,#0]
        0x1fff5e18:    2b02        .+      CMP      r3,#2
        0x1fff5e1a:    d002        ..      BEQ      0x1fff5e22 ; rf_phy_ana_cfg + 82
        0x1fff5e1c:    780b        .x      LDRB     r3,[r1,#0]
        0x1fff5e1e:    2b01        .+      CMP      r3,#1
        0x1fff5e20:    d104        ..      BNE      0x1fff5e2c ; rf_phy_ana_cfg + 92
        0x1fff5e22:    6843        Ch      LDR      r3,[r0,#4]
        0x1fff5e24:    24ff        .$      MOVS     r4,#0xff
        0x1fff5e26:    3401        .4      ADDS     r4,#1
        0x1fff5e28:    4323        #C      ORRS     r3,r3,r4
        0x1fff5e2a:    6043        C`      STR      r3,[r0,#4]
        0x1fff5e2c:    7812        .x      LDRB     r2,[r2,#0]
        0x1fff5e2e:    2a03        .*      CMP      r2,#3
        0x1fff5e30:    d002        ..      BEQ      0x1fff5e38 ; rf_phy_ana_cfg + 104
        0x1fff5e32:    780a        .x      LDRB     r2,[r1,#0]
        0x1fff5e34:    2a03        .*      CMP      r2,#3
        0x1fff5e36:    d103        ..      BNE      0x1fff5e40 ; rf_phy_ana_cfg + 112
        0x1fff5e38:    6842        Bh      LDR      r2,[r0,#4]
        0x1fff5e3a:    2380        .#      MOVS     r3,#0x80
        0x1fff5e3c:    431a        .C      ORRS     r2,r2,r3
        0x1fff5e3e:    6042        B`      STR      r2,[r0,#4]
        0x1fff5e40:    6842        Bh      LDR      r2,[r0,#4]
        0x1fff5e42:    2303        .#      MOVS     r3,#3
        0x1fff5e44:    049b        ..      LSLS     r3,r3,#18
        0x1fff5e46:    431a        .C      ORRS     r2,r2,r3
        0x1fff5e48:    6042        B`      STR      r2,[r0,#4]
        0x1fff5e4a:    780b        .x      LDRB     r3,[r1,#0]
        0x1fff5e4c:    2201        ."      MOVS     r2,#1
        0x1fff5e4e:    05d2        ..      LSLS     r2,r2,#23
        0x1fff5e50:    481c        .H      LDR      r0,[pc,#112] ; [0x1fff5ec4] = 0x40030080
        0x1fff5e52:    2b00        .+      CMP      r3,#0
        0x1fff5e54:    d103        ..      BNE      0x1fff5e5e ; rf_phy_ana_cfg + 142
        0x1fff5e56:    4b1c        .K      LDR      r3,[pc,#112] ; [0x1fff5ec8] = 0x1fff0a4a
        0x1fff5e58:    781b        .x      LDRB     r3,[r3,#0]
        0x1fff5e5a:    2b03        .+      CMP      r3,#3
        0x1fff5e5c:    d01b        ..      BEQ      0x1fff5e96 ; rf_phy_ana_cfg + 198
        0x1fff5e5e:    68c3        .h      LDR      r3,[r0,#0xc]
        0x1fff5e60:    4393        .C      BICS     r3,r3,r2
        0x1fff5e62:    60c3        .`      STR      r3,[r0,#0xc]
        0x1fff5e64:    4a17        .J      LDR      r2,[pc,#92] ; [0x1fff5ec4] = 0x40030080
        0x1fff5e66:    4b19        .K      LDR      r3,[pc,#100] ; [0x1fff5ecc] = 0x20000bc0
        0x1fff5e68:    3240        @2      ADDS     r2,r2,#0x40
        0x1fff5e6a:    60d3        .`      STR      r3,[r2,#0xc]
        0x1fff5e6c:    23ff        .#      MOVS     r3,#0xff
        0x1fff5e6e:    3361        a3      ADDS     r3,r3,#0x61
        0x1fff5e70:    6113        .a      STR      r3,[r2,#0x10]
        0x1fff5e72:    4c17        .L      LDR      r4,[pc,#92] ; [0x1fff5ed0] = 0x76a3e7a
        0x1fff5e74:    6154        Ta      STR      r4,[r2,#0x14]
        0x1fff5e76:    4b17        .K      LDR      r3,[pc,#92] ; [0x1fff5ed4] = 0x4890000
        0x1fff5e78:    6193        .a      STR      r3,[r2,#0x18]
        0x1fff5e7a:    25ff        .%      MOVS     r5,#0xff
        0x1fff5e7c:    4b11        .K      LDR      r3,[pc,#68] ; [0x1fff5ec4] = 0x40030080
        0x1fff5e7e:    3581        .5      ADDS     r5,r5,#0x81
        0x1fff5e80:    3380        .3      ADDS     r3,r3,#0x80
        0x1fff5e82:    605d        ]`      STR      r5,[r3,#4]
        0x1fff5e84:    609c        .`      STR      r4,[r3,#8]
        0x1fff5e86:    4c14        .L      LDR      r4,[pc,#80] ; [0x1fff5ed8] = 0x4898000
        0x1fff5e88:    60dc        .`      STR      r4,[r3,#0xc]
        0x1fff5e8a:    4b14        .K      LDR      r3,[pc,#80] ; [0x1fff5edc] = 0x24cc
        0x1fff5e8c:    6003        .`      STR      r3,[r0,#0]
        0x1fff5e8e:    7809        .x      LDRB     r1,[r1,#0]
        0x1fff5e90:    2900        .)      CMP      r1,#0
        0x1fff5e92:    d003        ..      BEQ      0x1fff5e9c ; rf_phy_ana_cfg + 204
        0x1fff5e94:    e006        ..      B        0x1fff5ea4 ; rf_phy_ana_cfg + 212
        0x1fff5e96:    68c3        .h      LDR      r3,[r0,#0xc]
        0x1fff5e98:    4313        .C      ORRS     r3,r3,r2
        0x1fff5e9a:    e7e2        ..      B        0x1fff5e62 ; rf_phy_ana_cfg + 146
        0x1fff5e9c:    6801        .h      LDR      r1,[r0,#0]
        0x1fff5e9e:    2301        .#      MOVS     r3,#1
        0x1fff5ea0:    4319        .C      ORRS     r1,r1,r3
        0x1fff5ea2:    6001        .`      STR      r1,[r0,#0]
        0x1fff5ea4:    490e        .I      LDR      r1,[pc,#56] ; [0x1fff5ee0] = 0x1fff0a48
        0x1fff5ea6:    7809        .x      LDRB     r1,[r1,#0]
        0x1fff5ea8:    4b0e        .K      LDR      r3,[pc,#56] ; [0x1fff5ee4] = 0x825
        0x1fff5eaa:    06c9        ..      LSLS     r1,r1,#27
        0x1fff5eac:    0bc9        ..      LSRS     r1,r1,#15
        0x1fff5eae:    18c9        ..      ADDS     r1,r1,r3
        0x1fff5eb0:    6381        .c      STR      r1,[r0,#0x38]
        0x1fff5eb2:    480d        .H      LDR      r0,[pc,#52] ; [0x1fff5ee8] = 0x1a6fc2f
        0x1fff5eb4:    61d0        .a      STR      r0,[r2,#0x1c]
        0x1fff5eb6:    bd30        0.      POP      {r4,r5,pc}
    $d
        0x1fff5eb8:    4000f040    @..@    DCD    1073803328
        0x1fff5ebc:    1fff0a4c    L...    DCD    536808012
        0x1fff5ec0:    1fff0a4b    K...    DCD    536808011
        0x1fff5ec4:    40030080    ...@    DCD    1073938560
        0x1fff5ec8:    1fff0a4a    J...    DCD    536808010
        0x1fff5ecc:    20000bc0    ...     DCD    536873920
        0x1fff5ed0:    076a3e7a    z>j.    DCD    124403322
        0x1fff5ed4:    04890000    ....    DCD    76087296
        0x1fff5ed8:    04898000    ....    DCD    76120064
        0x1fff5edc:    000024cc    .$..    DCD    9420
        0x1fff5ee0:    1fff0a48    H...    DCD    536808008
        0x1fff5ee4:    00000825    %...    DCD    2085
        0x1fff5ee8:    01a6fc2f    /...    DCD    27720751
    $t
    i.rf_phy_bb_cfg
    rf_phy_bb_cfg
        0x1fff5eec:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff5eee:    0005        ..      MOVS     r5,r0
        0x1fff5ef0:    4a4c        LJ      LDR      r2,[pc,#304] ; [0x1fff6024] = 0x44500
        0x1fff5ef2:    484d        MH      LDR      r0,[pc,#308] ; [0x1fff6028] = 0x400300c0
        0x1fff5ef4:    4b4d        MK      LDR      r3,[pc,#308] ; [0x1fff602c] = 0x1c0000
        0x1fff5ef6:    4c4e        NL      LDR      r4,[pc,#312] ; [0x1fff6030] = 0x1fff0a4b
        0x1fff5ef8:    494e        NI      LDR      r1,[pc,#312] ; [0x1fff6034] = 0x40030080
        0x1fff5efa:    d036        6.      BEQ      0x1fff5f6a ; rf_phy_bb_cfg + 126
        0x1fff5efc:    2d02        .-      CMP      r5,#2
        0x1fff5efe:    d034        4.      BEQ      0x1fff5f6a ; rf_phy_bb_cfg + 126
        0x1fff5f00:    1586        ..      ASRS     r6,r0,#22
        0x1fff5f02:    02b7        ..      LSLS     r7,r6,#10
        0x1fff5f04:    6206        .b      STR      r6,[r0,#0x20]
        0x1fff5f06:    6986        .i      LDR      r6,[r0,#0x18]
        0x1fff5f08:    439e        .C      BICS     r6,r6,r3
        0x1fff5f0a:    19f3        ..      ADDS     r3,r6,r7
        0x1fff5f0c:    6183        .a      STR      r3,[r0,#0x18]
        0x1fff5f0e:    7820         x      LDRB     r0,[r4,#0]
        0x1fff5f10:    2800        .(      CMP      r0,#0
        0x1fff5f12:    d035        5.      BEQ      0x1fff5f80 ; rf_phy_bb_cfg + 148
        0x1fff5f14:    2011        .       MOVS     r0,#0x11
        0x1fff5f16:    0340        @.      LSLS     r0,r0,#13
        0x1fff5f18:    6108        .a      STR      r0,[r1,#0x10]
        0x1fff5f1a:    4847        GH      LDR      r0,[pc,#284] ; [0x1fff6038] = 0x1000002
        0x1fff5f1c:    6308        .c      STR      r0,[r1,#0x30]
        0x1fff5f1e:    4847        GH      LDR      r0,[pc,#284] ; [0x1fff603c] = 0x1fff0a44
        0x1fff5f20:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff5f22:    2201        ."      MOVS     r2,#1
        0x1fff5f24:    0312        ..      LSLS     r2,r2,#12
        0x1fff5f26:    1880        ..      ADDS     r0,r0,r2
        0x1fff5f28:    6148        Ha      STR      r0,[r1,#0x14]
        0x1fff5f2a:    4e42        BN      LDR      r6,[pc,#264] ; [0x1fff6034] = 0x40030080
        0x1fff5f2c:    4c41        AL      LDR      r4,[pc,#260] ; [0x1fff6034] = 0x40030080
        0x1fff5f2e:    4b44        DK      LDR      r3,[pc,#272] ; [0x1fff6040] = 0xb2800
        0x1fff5f30:    3e80        .>      SUBS     r6,r6,#0x80
        0x1fff5f32:    3c40        @<      SUBS     r4,r4,#0x40
        0x1fff5f34:    2d00        .-      CMP      r5,#0
        0x1fff5f36:    d028        (.      BEQ      0x1fff5f8a ; rf_phy_bb_cfg + 158
        0x1fff5f38:    2165        e!      MOVS     r1,#0x65
        0x1fff5f3a:    4a42        BJ      LDR      r2,[pc,#264] ; [0x1fff6044] = 0x37555555
        0x1fff5f3c:    02c9        ..      LSLS     r1,r1,#11
        0x1fff5f3e:    4842        BH      LDR      r0,[pc,#264] ; [0x1fff6048] = 0x8e89bed6
        0x1fff5f40:    2d01        .-      CMP      r5,#1
        0x1fff5f42:    d02f        /.      BEQ      0x1fff5fa4 ; rf_phy_bb_cfg + 184
        0x1fff5f44:    2d02        .-      CMP      r5,#2
        0x1fff5f46:    d032        2.      BEQ      0x1fff5fae ; rf_phy_bb_cfg + 194
        0x1fff5f48:    2d03        .-      CMP      r5,#3
        0x1fff5f4a:    d05b        [.      BEQ      0x1fff6004 ; rf_phy_bb_cfg + 280
        0x1fff5f4c:    2d04        .-      CMP      r5,#4
        0x1fff5f4e:    d059        Y.      BEQ      0x1fff6004 ; rf_phy_bb_cfg + 280
        0x1fff5f50:    493e        >I      LDR      r1,[pc,#248] ; [0x1fff604c] = 0x42068000
        0x1fff5f52:    1869        i.      ADDS     r1,r5,r1
        0x1fff5f54:    6031        1`      STR      r1,[r6,#0]
        0x1fff5f56:    493e        >I      LDR      r1,[pc,#248] ; [0x1fff6050] = 0x555555
        0x1fff5f58:    60a1        .`      STR      r1,[r4,#8]
        0x1fff5f5a:    6023        #`      STR      r3,[r4,#0]
        0x1fff5f5c:    60e0        .`      STR      r0,[r4,#0xc]
        0x1fff5f5e:    2102        .!      MOVS     r1,#2
        0x1fff5f60:    4608        .F      MOV      r0,r1
        0x1fff5f62:    f7fbfdb7    ....    BL       $Ven$TT$L$$ll_hw_set_crc_fmt ; 0x1fff1ad4
        0x1fff5f66:    483b        ;H      LDR      r0,[pc,#236] ; [0x1fff6054] = 0x22085580
        0x1fff5f68:    e02c        ,.      B        0x1fff5fc4 ; rf_phy_bb_cfg + 216
        0x1fff5f6a:    2680        .&      MOVS     r6,#0x80
        0x1fff5f6c:    6206        .b      STR      r6,[r0,#0x20]
        0x1fff5f6e:    6986        .i      LDR      r6,[r0,#0x18]
        0x1fff5f70:    439e        .C      BICS     r6,r6,r3
        0x1fff5f72:    2301        .#      MOVS     r3,#1
        0x1fff5f74:    04db        ..      LSLS     r3,r3,#19
        0x1fff5f76:    18f3        ..      ADDS     r3,r6,r3
        0x1fff5f78:    6183        .a      STR      r3,[r0,#0x18]
        0x1fff5f7a:    7820         x      LDRB     r0,[r4,#0]
        0x1fff5f7c:    2800        .(      CMP      r0,#0
        0x1fff5f7e:    d001        ..      BEQ      0x1fff5f84 ; rf_phy_bb_cfg + 152
        0x1fff5f80:    610a        .a      STR      r2,[r1,#0x10]
        0x1fff5f82:    e7ca        ..      B        0x1fff5f1a ; rf_phy_bb_cfg + 46
        0x1fff5f84:    2087        .       MOVS     r0,#0x87
        0x1fff5f86:    0300        ..      LSLS     r0,r0,#12
        0x1fff5f88:    e7c6        ..      B        0x1fff5f18 ; rf_phy_bb_cfg + 44
        0x1fff5f8a:    4833        3H      LDR      r0,[pc,#204] ; [0x1fff6058] = 0x78068000
        0x1fff5f8c:    6030        0`      STR      r0,[r6,#0]
        0x1fff5f8e:    2000        .       MOVS     r0,#0
        0x1fff5f90:    60a0        .`      STR      r0,[r4,#8]
        0x1fff5f92:    6023        #`      STR      r3,[r4,#0]
        0x1fff5f94:    4831        1H      LDR      r0,[pc,#196] ; [0x1fff605c] = 0x3675ee07
        0x1fff5f96:    60e0        .`      STR      r0,[r4,#0xc]
        0x1fff5f98:    2103        .!      MOVS     r1,#3
        0x1fff5f9a:    4608        .F      MOV      r0,r1
        0x1fff5f9c:    f7fbfd9a    ....    BL       $Ven$TT$L$$ll_hw_set_crc_fmt ; 0x1fff1ad4
        0x1fff5fa0:    482f        /H      LDR      r0,[pc,#188] ; [0x1fff6060] = 0x22086680
        0x1fff5fa2:    e00f        ..      B        0x1fff5fc4 ; rf_phy_bb_cfg + 216
        0x1fff5fa4:    4b2f        /K      LDR      r3,[pc,#188] ; [0x1fff6064] = 0x3d068001
        0x1fff5fa6:    6033        3`      STR      r3,[r6,#0]
        0x1fff5fa8:    60a2        .`      STR      r2,[r4,#8]
        0x1fff5faa:    6021        !`      STR      r1,[r4,#0]
        0x1fff5fac:    e7d6        ..      B        0x1fff5f5c ; rf_phy_bb_cfg + 112
        0x1fff5fae:    4b2d        -K      LDR      r3,[pc,#180] ; [0x1fff6064] = 0x3d068001
        0x1fff5fb0:    1c5b        [.      ADDS     r3,r3,#1
        0x1fff5fb2:    6033        3`      STR      r3,[r6,#0]
        0x1fff5fb4:    60a2        .`      STR      r2,[r4,#8]
        0x1fff5fb6:    6021        !`      STR      r1,[r4,#0]
        0x1fff5fb8:    60e0        .`      STR      r0,[r4,#0xc]
        0x1fff5fba:    2102        .!      MOVS     r1,#2
        0x1fff5fbc:    4608        .F      MOV      r0,r1
        0x1fff5fbe:    f7fbfd89    ....    BL       $Ven$TT$L$$ll_hw_set_crc_fmt ; 0x1fff1ad4
        0x1fff5fc2:    4829        )H      LDR      r0,[pc,#164] ; [0x1fff6068] = 0x22084580
        0x1fff5fc4:    6120         a      STR      r0,[r4,#0x10]
        0x1fff5fc6:    68f0        .h      LDR      r0,[r6,#0xc]
        0x1fff5fc8:    21ff        .!      MOVS     r1,#0xff
        0x1fff5fca:    4308        .C      ORRS     r0,r0,r1
        0x1fff5fcc:    60f0        .`      STR      r0,[r6,#0xc]
        0x1fff5fce:    4827        'H      LDR      r0,[pc,#156] ; [0x1fff606c] = 0x545c9ca4
        0x1fff5fd0:    6160        `a      STR      r0,[r4,#0x14]
        0x1fff5fd2:    4827        'H      LDR      r0,[pc,#156] ; [0x1fff6070] = 0x4243444c
        0x1fff5fd4:    61a0        .a      STR      r0,[r4,#0x18]
        0x1fff5fd6:    4827        'H      LDR      r0,[pc,#156] ; [0x1fff6074] = 0x464c5241
        0x1fff5fd8:    61e0        .a      STR      r0,[r4,#0x1c]
        0x1fff5fda:    4827        'H      LDR      r0,[pc,#156] ; [0x1fff6078] = 0x2e343a40
        0x1fff5fdc:    6220         b      STR      r0,[r4,#0x20]
        0x1fff5fde:    4827        'H      LDR      r0,[pc,#156] ; [0x1fff607c] = 0x557f0028
        0x1fff5fe0:    6260        `b      STR      r0,[r4,#0x24]
        0x1fff5fe2:    4827        'H      LDR      r0,[pc,#156] ; [0x1fff6080] = 0x3d43494f
        0x1fff5fe4:    62a0        .b      STR      r0,[r4,#0x28]
        0x1fff5fe6:    4827        'H      LDR      r0,[pc,#156] ; [0x1fff6084] = 0x4c2b3137
        0x1fff5fe8:    62e0        .b      STR      r0,[r4,#0x2c]
        0x1fff5fea:    4827        'H      LDR      r0,[pc,#156] ; [0x1fff6088] = 0x343a4046
        0x1fff5fec:    6320         c      STR      r0,[r4,#0x30]
        0x1fff5fee:    4827        'H      LDR      r0,[pc,#156] ; [0x1fff608c] = 0x1c22282e
        0x1fff5ff0:    6360        `c      STR      r0,[r4,#0x34]
        0x1fff5ff2:    20e0        .       MOVS     r0,#0xe0
        0x1fff5ff4:    2d01        .-      CMP      r5,#1
        0x1fff5ff6:    d00d        ..      BEQ      0x1fff6014 ; rf_phy_bb_cfg + 296
        0x1fff5ff8:    6821        !h      LDR      r1,[r4,#0]
        0x1fff5ffa:    2d02        .-      CMP      r5,#2
        0x1fff5ffc:    d00e        ..      BEQ      0x1fff601c ; rf_phy_bb_cfg + 304
        0x1fff5ffe:    4381        .C      BICS     r1,r1,r0
        0x1fff6000:    6021        !`      STR      r1,[r4,#0]
        0x1fff6002:    bdf8        ..      POP      {r3-r7,pc}
        0x1fff6004:    4b22        "K      LDR      r3,[pc,#136] ; [0x1fff6090] = 0x98068000
        0x1fff6006:    18eb        ..      ADDS     r3,r5,r3
        0x1fff6008:    6033        3`      STR      r3,[r6,#0]
        0x1fff600a:    4b22        "K      LDR      r3,[pc,#136] ; [0x1fff6094] = 0x50985a54
        0x1fff600c:    6073        s`      STR      r3,[r6,#4]
        0x1fff600e:    6021        !`      STR      r1,[r4,#0]
        0x1fff6010:    60a2        .`      STR      r2,[r4,#8]
        0x1fff6012:    e7a3        ..      B        0x1fff5f5c ; rf_phy_bb_cfg + 112
        0x1fff6014:    6821        !h      LDR      r1,[r4,#0]
        0x1fff6016:    4381        .C      BICS     r1,r1,r0
        0x1fff6018:    3120         1      ADDS     r1,r1,#0x20
        0x1fff601a:    e7f1        ..      B        0x1fff6000 ; rf_phy_bb_cfg + 276
        0x1fff601c:    4381        .C      BICS     r1,r1,r0
        0x1fff601e:    3140        @1      ADDS     r1,r1,#0x40
        0x1fff6020:    e7ee        ..      B        0x1fff6000 ; rf_phy_bb_cfg + 276
    $d
        0x1fff6022:    0000        ..      DCW    0
        0x1fff6024:    00044500    .E..    DCD    279808
        0x1fff6028:    400300c0    ...@    DCD    1073938624
        0x1fff602c:    001c0000    ....    DCD    1835008
        0x1fff6030:    1fff0a4b    K...    DCD    536808011
        0x1fff6034:    40030080    ...@    DCD    1073938560
        0x1fff6038:    01000002    ....    DCD    16777218
        0x1fff603c:    1fff0a44    D...    DCD    536808004
        0x1fff6040:    000b2800    .(..    DCD    731136
        0x1fff6044:    37555555    UUU7    DCD    928339285
        0x1fff6048:    8e89bed6    ....    DCD    2391391958
        0x1fff604c:    42068000    ...B    DCD    1107722240
        0x1fff6050:    00555555    UUU.    DCD    5592405
        0x1fff6054:    22085580    .U."    DCD    570971520
        0x1fff6058:    78068000    ...x    DCD    2013691904
        0x1fff605c:    3675ee07    ..u6    DCD    913698311
        0x1fff6060:    22086680    .f."    DCD    570975872
        0x1fff6064:    3d068001    ...=    DCD    1023836161
        0x1fff6068:    22084580    .E."    DCD    570967424
        0x1fff606c:    545c9ca4    ..\T    DCD    1415355556
        0x1fff6070:    4243444c    LDCB    DCD    1111704652
        0x1fff6074:    464c5241    ARLF    DCD    1179406913
        0x1fff6078:    2e343a40    @:4.    DCD    775174720
        0x1fff607c:    557f0028    (..U    DCD    1434386472
        0x1fff6080:    3d43494f    OIC=    DCD    1027819855
        0x1fff6084:    4c2b3137    71+L    DCD    1277899063
        0x1fff6088:    343a4046    F@:4    DCD    876232774
        0x1fff608c:    1c22282e    .(".    DCD    472000558
        0x1fff6090:    98068000    ....    DCD    2550562816
        0x1fff6094:    50985a54    TZ.P    DCD    1352161876
    $t
    i.rf_phy_change_cfg0
    rf_phy_change_cfg0
        0x1fff6098:    b5f0        ..      PUSH     {r4-r7,lr}
        0x1fff609a:    4b22        "K      LDR      r3,[pc,#136] ; [0x1fff6124] = 0x400300c0
        0x1fff609c:    4d21        !M      LDR      r5,[pc,#132] ; [0x1fff6124] = 0x400300c0
        0x1fff609e:    4921        !I      LDR      r1,[pc,#132] ; [0x1fff6124] = 0x400300c0
        0x1fff60a0:    2680        .&      MOVS     r6,#0x80
        0x1fff60a2:    4a20         J      LDR      r2,[pc,#128] ; [0x1fff6124] = 0x400300c0
        0x1fff60a4:    2707        .'      MOVS     r7,#7
        0x1fff60a6:    04bf        ..      LSLS     r7,r7,#18
        0x1fff60a8:    3b40        @;      SUBS     r3,r3,#0x40
        0x1fff60aa:    3dc0        .=      SUBS     r5,r5,#0xc0
        0x1fff60ac:    24e0        .$      MOVS     r4,#0xe0
        0x1fff60ae:    3980        .9      SUBS     r1,r1,#0x80
        0x1fff60b0:    2802        .(      CMP      r0,#2
        0x1fff60b2:    6216        .b      STR      r6,[r2,#0x20]
        0x1fff60b4:    6996        .i      LDR      r6,[r2,#0x18]
        0x1fff60b6:    d014        ..      BEQ      0x1fff60e2 ; rf_phy_change_cfg0 + 74
        0x1fff60b8:    43be        .C      BICS     r6,r6,r7
        0x1fff60ba:    2701        .'      MOVS     r7,#1
        0x1fff60bc:    04bf        ..      LSLS     r7,r7,#18
        0x1fff60be:    19f6        ..      ADDS     r6,r6,r7
        0x1fff60c0:    6196        .a      STR      r6,[r2,#0x18]
        0x1fff60c2:    4a19        .J      LDR      r2,[pc,#100] ; [0x1fff6128] = 0x1fff0a4b
        0x1fff60c4:    7812        .x      LDRB     r2,[r2,#0]
        0x1fff60c6:    2a00        .*      CMP      r2,#0
        0x1fff60c8:    d01e        ..      BEQ      0x1fff6108 ; rf_phy_change_cfg0 + 112
        0x1fff60ca:    107a        z.      ASRS     r2,r7,#1
        0x1fff60cc:    611a        .a      STR      r2,[r3,#0x10]
        0x1fff60ce:    2801        .(      CMP      r0,#1
        0x1fff60d0:    d01e        ..      BEQ      0x1fff6110 ; rf_phy_change_cfg0 + 120
        0x1fff60d2:    4a16        .J      LDR      r2,[pc,#88] ; [0x1fff612c] = 0x98068000
        0x1fff60d4:    1880        ..      ADDS     r0,r0,r2
        0x1fff60d6:    6028        (`      STR      r0,[r5,#0]
        0x1fff60d8:    4815        .H      LDR      r0,[pc,#84] ; [0x1fff6130] = 0x22085580
        0x1fff60da:    6108        .a      STR      r0,[r1,#0x10]
        0x1fff60dc:    6808        .h      LDR      r0,[r1,#0]
        0x1fff60de:    43a0        .C      BICS     r0,r0,r4
        0x1fff60e0:    e014        ..      B        0x1fff610c ; rf_phy_change_cfg0 + 116
        0x1fff60e2:    2001        .       MOVS     r0,#1
        0x1fff60e4:    43be        .C      BICS     r6,r6,r7
        0x1fff60e6:    04c0        ..      LSLS     r0,r0,#19
        0x1fff60e8:    1836        6.      ADDS     r6,r6,r0
        0x1fff60ea:    6196        .a      STR      r6,[r2,#0x18]
        0x1fff60ec:    4a0e        .J      LDR      r2,[pc,#56] ; [0x1fff6128] = 0x1fff0a4b
        0x1fff60ee:    7812        .x      LDRB     r2,[r2,#0]
        0x1fff60f0:    2a00        .*      CMP      r2,#0
        0x1fff60f2:    d000        ..      BEQ      0x1fff60f6 ; rf_phy_change_cfg0 + 94
        0x1fff60f4:    1040        @.      ASRS     r0,r0,#1
        0x1fff60f6:    6118        .a      STR      r0,[r3,#0x10]
        0x1fff60f8:    480e        .H      LDR      r0,[pc,#56] ; [0x1fff6134] = 0x3d068002
        0x1fff60fa:    6028        (`      STR      r0,[r5,#0]
        0x1fff60fc:    480e        .H      LDR      r0,[pc,#56] ; [0x1fff6138] = 0x22084580
        0x1fff60fe:    6108        .a      STR      r0,[r1,#0x10]
        0x1fff6100:    6808        .h      LDR      r0,[r1,#0]
        0x1fff6102:    43a0        .C      BICS     r0,r0,r4
        0x1fff6104:    3040        @0      ADDS     r0,r0,#0x40
        0x1fff6106:    e001        ..      B        0x1fff610c ; rf_phy_change_cfg0 + 116
        0x1fff6108:    611f        .a      STR      r7,[r3,#0x10]
        0x1fff610a:    e7e0        ..      B        0x1fff60ce ; rf_phy_change_cfg0 + 54
        0x1fff610c:    6008        .`      STR      r0,[r1,#0]
        0x1fff610e:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff6110:    4808        .H      LDR      r0,[pc,#32] ; [0x1fff6134] = 0x3d068002
        0x1fff6112:    1e40        @.      SUBS     r0,r0,#1
        0x1fff6114:    6028        (`      STR      r0,[r5,#0]
        0x1fff6116:    4809        .H      LDR      r0,[pc,#36] ; [0x1fff613c] = 0x22086680
        0x1fff6118:    6108        .a      STR      r0,[r1,#0x10]
        0x1fff611a:    6808        .h      LDR      r0,[r1,#0]
        0x1fff611c:    43a0        .C      BICS     r0,r0,r4
        0x1fff611e:    3020         0      ADDS     r0,r0,#0x20
        0x1fff6120:    e7f4        ..      B        0x1fff610c ; rf_phy_change_cfg0 + 116
    $d
        0x1fff6122:    0000        ..      DCW    0
        0x1fff6124:    400300c0    ...@    DCD    1073938624
        0x1fff6128:    1fff0a4b    K...    DCD    536808011
        0x1fff612c:    98068000    ....    DCD    2550562816
        0x1fff6130:    22085580    .U."    DCD    570971520
        0x1fff6134:    3d068002    ...=    DCD    1023836162
        0x1fff6138:    22084580    .E."    DCD    570967424
        0x1fff613c:    22086680    .f."    DCD    570975872
    $t
    i.rf_phy_get_pktFoot
    rf_phy_get_pktFoot
        0x1fff6140:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff6142:    4b0a        .K      LDR      r3,[pc,#40] ; [0x1fff616c] = 0x400300c0
        0x1fff6144:    6a5c        \j      LDR      r4,[r3,#0x24]
        0x1fff6146:    6a9d        .j      LDR      r5,[r3,#0x28]
        0x1fff6148:    05a3        ..      LSLS     r3,r4,#22
        0x1fff614a:    2601        .&      MOVS     r6,#1
        0x1fff614c:    0d9b        ..      LSRS     r3,r3,#22
        0x1fff614e:    0276        v.      LSLS     r6,r6,#9
        0x1fff6150:    42b3        .B      CMP      r3,r6
        0x1fff6152:    d901        ..      BLS      0x1fff6158 ; rf_phy_get_pktFoot + 24
        0x1fff6154:    1b9b        ..      SUBS     r3,r3,r6
        0x1fff6156:    e002        ..      B        0x1fff615e ; rf_phy_get_pktFoot + 30
        0x1fff6158:    33ff        .3      ADDS     r3,r3,#0xff
        0x1fff615a:    33ff        .3      ADDS     r3,r3,#0xff
        0x1fff615c:    3302        .3      ADDS     r3,#2
        0x1fff615e:    800b        ..      STRH     r3,[r1,#0]
        0x1fff6160:    0e29        ).      LSRS     r1,r5,#24
        0x1fff6162:    7001        .p      STRB     r1,[r0,#0]
        0x1fff6164:    0e20         .      LSRS     r0,r4,#24
        0x1fff6166:    7010        .p      STRB     r0,[r2,#0]
        0x1fff6168:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x1fff616a:    0000        ..      DCW    0
        0x1fff616c:    400300c0    ...@    DCD    1073938624
    $t
    i.rf_phy_get_pktFoot_fromPkt
    rf_phy_get_pktFoot_fromPkt
        0x1fff6170:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff6172:    0584        ..      LSLS     r4,r0,#22
        0x1fff6174:    2601        .&      MOVS     r6,#1
        0x1fff6176:    0da4        ..      LSRS     r4,r4,#22
        0x1fff6178:    0276        v.      LSLS     r6,r6,#9
        0x1fff617a:    9d04        ..      LDR      r5,[sp,#0x10]
        0x1fff617c:    42b4        .B      CMP      r4,r6
        0x1fff617e:    d901        ..      BLS      0x1fff6184 ; rf_phy_get_pktFoot_fromPkt + 20
        0x1fff6180:    1ba4        ..      SUBS     r4,r4,r6
        0x1fff6182:    e002        ..      B        0x1fff618a ; rf_phy_get_pktFoot_fromPkt + 26
        0x1fff6184:    34ff        .4      ADDS     r4,r4,#0xff
        0x1fff6186:    34ff        .4      ADDS     r4,r4,#0xff
        0x1fff6188:    3402        .4      ADDS     r4,#2
        0x1fff618a:    0e09        ..      LSRS     r1,r1,#24
        0x1fff618c:    801c        ..      STRH     r4,[r3,#0]
        0x1fff618e:    7011        .p      STRB     r1,[r2,#0]
        0x1fff6190:    0e00        ..      LSRS     r0,r0,#24
        0x1fff6192:    7028        (p      STRB     r0,[r5,#0]
        0x1fff6194:    bd70        p.      POP      {r4-r6,pc}
        0x1fff6196:    0000        ..      MOVS     r0,r0
    i.rf_phy_ini
    rf_phy_ini
        0x1fff6198:    b510        ..      PUSH     {r4,lr}
        0x1fff619a:    490a        .I      LDR      r1,[pc,#40] ; [0x1fff61c4] = 0x1fff0a4b
        0x1fff619c:    2000        .       MOVS     r0,#0
        0x1fff619e:    7008        .p      STRB     r0,[r1,#0]
        0x1fff61a0:    4909        .I      LDR      r1,[pc,#36] ; [0x1fff61c8] = 0x1fff0a4c
        0x1fff61a2:    2002        .       MOVS     r0,#2
        0x1fff61a4:    7008        .p      STRB     r0,[r1,#0]
        0x1fff61a6:    f7fffe13    ....    BL       rf_phy_ana_cfg ; 0x1fff5dd0
        0x1fff61aa:    4808        .H      LDR      r0,[pc,#32] ; [0x1fff61cc] = 0x1fff0a48
        0x1fff61ac:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff61ae:    f000f811    ....    BL       rf_phy_set_txPower ; 0x1fff61d4
        0x1fff61b2:    4c07        .L      LDR      r4,[pc,#28] ; [0x1fff61d0] = 0x1fff0a49
        0x1fff61b4:    7820         x      LDRB     r0,[r4,#0]
        0x1fff61b6:    f7fffe99    ....    BL       rf_phy_bb_cfg ; 0x1fff5eec
        0x1fff61ba:    7820         x      LDRB     r0,[r4,#0]
        0x1fff61bc:    f7fbfdda    ....    BL       $Ven$TT$L$$ll_hw_tx2rx_timing_config ; 0x1fff1d74
        0x1fff61c0:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff61c2:    0000        ..      DCW    0
        0x1fff61c4:    1fff0a4b    K...    DCD    536808011
        0x1fff61c8:    1fff0a4c    L...    DCD    536808012
        0x1fff61cc:    1fff0a48    H...    DCD    536808008
        0x1fff61d0:    1fff0a49    I...    DCD    536808009
    $t
    i.rf_phy_set_txPower
    rf_phy_set_txPower
        0x1fff61d4:    b5f0        ..      PUSH     {r4-r7,lr}
        0x1fff61d6:    4a1a        .J      LDR      r2,[pc,#104] ; [0x1fff6240] = 0x4000f000
        0x1fff61d8:    2303        .#      MOVS     r3,#3
        0x1fff61da:    2507        .%      MOVS     r5,#7
        0x1fff61dc:    00d6        ..      LSLS     r6,r2,#3
        0x1fff61de:    4919        .I      LDR      r1,[pc,#100] ; [0x1fff6244] = 0x400300c0
        0x1fff61e0:    029b        ..      LSLS     r3,r3,#10
        0x1fff61e2:    2460        `$      MOVS     r4,#0x60
        0x1fff61e4:    01ed        ..      LSLS     r5,r5,#7
        0x1fff61e6:    6957        Wi      LDR      r7,[r2,#0x14]
        0x1fff61e8:    283f        ?(      CMP      r0,#0x3f
        0x1fff61ea:    d01a        ..      BEQ      0x1fff6222 ; rf_phy_set_txPower + 78
        0x1fff61ec:    43b7        .C      BICS     r7,r7,r6
        0x1fff61ee:    2605        .&      MOVS     r6,#5
        0x1fff61f0:    0436        6.      LSLS     r6,r6,#16
        0x1fff61f2:    19be        ..      ADDS     r6,r7,r6
        0x1fff61f4:    6156        Va      STR      r6,[r2,#0x14]
        0x1fff61f6:    68ca        .h      LDR      r2,[r1,#0xc]
        0x1fff61f8:    439a        .C      BICS     r2,r2,r3
        0x1fff61fa:    14cb        ..      ASRS     r3,r1,#19
        0x1fff61fc:    18d2        ..      ADDS     r2,r2,r3
        0x1fff61fe:    60ca        .`      STR      r2,[r1,#0xc]
        0x1fff6200:    69ca        .i      LDR      r2,[r1,#0x1c]
        0x1fff6202:    43a2        .C      BICS     r2,r2,r4
        0x1fff6204:    3220         2      ADDS     r2,r2,#0x20
        0x1fff6206:    61ca        .a      STR      r2,[r1,#0x1c]
        0x1fff6208:    69ca        .i      LDR      r2,[r1,#0x1c]
        0x1fff620a:    43aa        .C      BICS     r2,r2,r5
        0x1fff620c:    61ca        .a      STR      r2,[r1,#0x1c]
        0x1fff620e:    490d        .I      LDR      r1,[pc,#52] ; [0x1fff6244] = 0x400300c0
        0x1fff6210:    3940        @9      SUBS     r1,r1,#0x40
        0x1fff6212:    6b8a        .k      LDR      r2,[r1,#0x38]
        0x1fff6214:    06c0        ..      LSLS     r0,r0,#27
        0x1fff6216:    0512        ..      LSLS     r2,r2,#20
        0x1fff6218:    0d12        ..      LSRS     r2,r2,#20
        0x1fff621a:    0bc0        ..      LSRS     r0,r0,#15
        0x1fff621c:    4302        .C      ORRS     r2,r2,r0
        0x1fff621e:    638a        .c      STR      r2,[r1,#0x38]
        0x1fff6220:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff6222:    43b7        .C      BICS     r7,r7,r6
        0x1fff6224:    2601        .&      MOVS     r6,#1
        0x1fff6226:    04b6        ..      LSLS     r6,r6,#18
        0x1fff6228:    19be        ..      ADDS     r6,r7,r6
        0x1fff622a:    6156        Va      STR      r6,[r2,#0x14]
        0x1fff622c:    68ca        .h      LDR      r2,[r1,#0xc]
        0x1fff622e:    439a        .C      BICS     r2,r2,r3
        0x1fff6230:    60ca        .`      STR      r2,[r1,#0xc]
        0x1fff6232:    69ca        .i      LDR      r2,[r1,#0x1c]
        0x1fff6234:    43a2        .C      BICS     r2,r2,r4
        0x1fff6236:    61ca        .a      STR      r2,[r1,#0x1c]
        0x1fff6238:    69ca        .i      LDR      r2,[r1,#0x1c]
        0x1fff623a:    43aa        .C      BICS     r2,r2,r5
        0x1fff623c:    3280        .2      ADDS     r2,r2,#0x80
        0x1fff623e:    e7e5        ..      B        0x1fff620c ; rf_phy_set_txPower + 56
    $d
        0x1fff6240:    4000f000    ...@    DCD    1073803264
        0x1fff6244:    400300c0    ...@    DCD    1073938624
    $t
    i.rf_rxdata_check
    rf_rxdata_check
        0x1fff6248:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff624a:    0701        ..      LSLS     r1,r0,#28
        0x1fff624c:    d40b        ..      BMI      0x1fff6266 ; rf_rxdata_check + 30
        0x1fff624e:    0741        A.      LSLS     r1,r0,#29
        0x1fff6250:    d509        ..      BPL      0x1fff6266 ; rf_rxdata_check + 30
        0x1fff6252:    0782        ..      LSLS     r2,r0,#30
        0x1fff6254:    4807        .H      LDR      r0,[pc,#28] ; [0x1fff6274] = 0x1fff6d48
        0x1fff6256:    0f92        ..      LSRS     r2,r2,#30
        0x1fff6258:    7841        Ax      LDRB     r1,[r0,#1]
        0x1fff625a:    428a        .B      CMP      r2,r1
        0x1fff625c:    d003        ..      BEQ      0x1fff6266 ; rf_rxdata_check + 30
        0x1fff625e:    6983        .i      LDR      r3,[r0,#0x18]
        0x1fff6260:    6941        Ai      LDR      r1,[r0,#0x14]
        0x1fff6262:    4299        .B      CMP      r1,r3
        0x1fff6264:    d101        ..      BNE      0x1fff626a ; rf_rxdata_check + 34
        0x1fff6266:    2009        .       MOVS     r0,#9
        0x1fff6268:    4770        pG      BX       lr
        0x1fff626a:    7042        Bp      STRB     r2,[r0,#1]
        0x1fff626c:    6181        .a      STR      r1,[r0,#0x18]
        0x1fff626e:    2000        .       MOVS     r0,#0
        0x1fff6270:    4770        pG      BX       lr
    $d
        0x1fff6272:    0000        ..      DCW    0
        0x1fff6274:    1fff6d48    Hm..    DCD    536833352
    $t
    i.rf_tpCal_gen_cap_arrary
    rf_tpCal_gen_cap_arrary
        0x1fff6278:    b500        ..      PUSH     {lr}
        0x1fff627a:    2100        .!      MOVS     r1,#0
        0x1fff627c:    2002        .       MOVS     r0,#2
        0x1fff627e:    f000f821    ..!.    BL       rf_tp_cal ; 0x1fff62c4
        0x1fff6282:    490c        .I      LDR      r1,[pc,#48] ; [0x1fff62b4] = 0x1fff0a44
        0x1fff6284:    1c80        ..      ADDS     r0,r0,#2
        0x1fff6286:    7008        .p      STRB     r0,[r1,#0]
        0x1fff6288:    2100        .!      MOVS     r1,#0
        0x1fff628a:    2042        B       MOVS     r0,#0x42
        0x1fff628c:    f000f81a    ....    BL       rf_tp_cal ; 0x1fff62c4
        0x1fff6290:    4909        .I      LDR      r1,[pc,#36] ; [0x1fff62b8] = 0x1fff0a45
        0x1fff6292:    1c80        ..      ADDS     r0,r0,#2
        0x1fff6294:    7008        .p      STRB     r0,[r1,#0]
        0x1fff6296:    2101        .!      MOVS     r1,#1
        0x1fff6298:    2002        .       MOVS     r0,#2
        0x1fff629a:    f000f813    ....    BL       rf_tp_cal ; 0x1fff62c4
        0x1fff629e:    4907        .I      LDR      r1,[pc,#28] ; [0x1fff62bc] = 0x1fff0a46
        0x1fff62a0:    1c80        ..      ADDS     r0,r0,#2
        0x1fff62a2:    7008        .p      STRB     r0,[r1,#0]
        0x1fff62a4:    2101        .!      MOVS     r1,#1
        0x1fff62a6:    2042        B       MOVS     r0,#0x42
        0x1fff62a8:    f000f80c    ....    BL       rf_tp_cal ; 0x1fff62c4
        0x1fff62ac:    4904        .I      LDR      r1,[pc,#16] ; [0x1fff62c0] = 0x1fff0a47
        0x1fff62ae:    1c80        ..      ADDS     r0,r0,#2
        0x1fff62b0:    7008        .p      STRB     r0,[r1,#0]
        0x1fff62b2:    bd00        ..      POP      {pc}
    $d
        0x1fff62b4:    1fff0a44    D...    DCD    536808004
        0x1fff62b8:    1fff0a45    E...    DCD    536808005
        0x1fff62bc:    1fff0a46    F...    DCD    536808006
        0x1fff62c0:    1fff0a47    G...    DCD    536808007
    $t
    i.rf_tp_cal
    rf_tp_cal
        0x1fff62c4:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff62c6:    4c3b        ;L      LDR      r4,[pc,#236] ; [0x1fff63b4] = 0x40030040
        0x1fff62c8:    4a39        9J      LDR      r2,[pc,#228] ; [0x1fff63b0] = 0x30010
        0x1fff62ca:    6022        "`      STR      r2,[r4,#0]
        0x1fff62cc:    4d39        9M      LDR      r5,[pc,#228] ; [0x1fff63b4] = 0x40030040
        0x1fff62ce:    4a39        9J      LDR      r2,[pc,#228] ; [0x1fff63b4] = 0x40030040
        0x1fff62d0:    2307        .#      MOVS     r3,#7
        0x1fff62d2:    049b        ..      LSLS     r3,r3,#18
        0x1fff62d4:    3580        .5      ADDS     r5,r5,#0x80
        0x1fff62d6:    3240        @2      ADDS     r2,r2,#0x40
        0x1fff62d8:    2901        .)      CMP      r1,#1
        0x1fff62da:    69a9        .i      LDR      r1,[r5,#0x18]
        0x1fff62dc:    d00e        ..      BEQ      0x1fff62fc ; rf_tp_cal + 56
        0x1fff62de:    4399        .C      BICS     r1,r1,r3
        0x1fff62e0:    2301        .#      MOVS     r3,#1
        0x1fff62e2:    049b        ..      LSLS     r3,r3,#18
        0x1fff62e4:    18c9        ..      ADDS     r1,r1,r3
        0x1fff62e6:    61a9        .a      STR      r1,[r5,#0x18]
        0x1fff62e8:    4933        3I      LDR      r1,[pc,#204] ; [0x1fff63b8] = 0x73407f
        0x1fff62ea:    60d1        .`      STR      r1,[r2,#0xc]
        0x1fff62ec:    4933        3I      LDR      r1,[pc,#204] ; [0x1fff63bc] = 0x1fff0a4b
        0x1fff62ee:    780b        .x      LDRB     r3,[r1,#0]
        0x1fff62f0:    2101        .!      MOVS     r1,#1
        0x1fff62f2:    05c9        ..      LSLS     r1,r1,#23
        0x1fff62f4:    4e32        2N      LDR      r6,[pc,#200] ; [0x1fff63c0] = 0x1fff0a4a
        0x1fff62f6:    2b00        .+      CMP      r3,#0
        0x1fff62f8:    d007        ..      BEQ      0x1fff630a ; rf_tp_cal + 70
        0x1fff62fa:    e009        ..      B        0x1fff6310 ; rf_tp_cal + 76
        0x1fff62fc:    4399        .C      BICS     r1,r1,r3
        0x1fff62fe:    2301        .#      MOVS     r3,#1
        0x1fff6300:    04db        ..      LSLS     r3,r3,#19
        0x1fff6302:    18c9        ..      ADDS     r1,r1,r3
        0x1fff6304:    61a9        .a      STR      r1,[r5,#0x18]
        0x1fff6306:    492f        /I      LDR      r1,[pc,#188] ; [0x1fff63c4] = 0x53407f
        0x1fff6308:    e7ef        ..      B        0x1fff62ea ; rf_tp_cal + 38
        0x1fff630a:    7833        3x      LDRB     r3,[r6,#0]
        0x1fff630c:    2b03        .+      CMP      r3,#3
        0x1fff630e:    d014        ..      BEQ      0x1fff633a ; rf_tp_cal + 118
        0x1fff6310:    68d3        .h      LDR      r3,[r2,#0xc]
        0x1fff6312:    438b        .C      BICS     r3,r3,r1
        0x1fff6314:    60d3        .`      STR      r3,[r2,#0xc]
        0x1fff6316:    6350        Pc      STR      r0,[r2,#0x34]
        0x1fff6318:    200e        .       MOVS     r0,#0xe
        0x1fff631a:    6210        .b      STR      r0,[r2,#0x20]
        0x1fff631c:    2700        .'      MOVS     r7,#0
        0x1fff631e:    6257        Wb      STR      r7,[r2,#0x24]
        0x1fff6320:    20ff        .       MOVS     r0,#0xff
        0x1fff6322:    3015        .0      ADDS     r0,r0,#0x15
        0x1fff6324:    6250        Pb      STR      r0,[r2,#0x24]
        0x1fff6326:    4828        (H      LDR      r0,[pc,#160] ; [0x1fff63c8] = 0x2710
        0x1fff6328:    9000        ..      STR      r0,[sp,#0]
        0x1fff632a:    7830        0x      LDRB     r0,[r6,#0]
        0x1fff632c:    0003        ..      MOVS     r3,r0
        0x1fff632e:    f7fbfd27    ..'.    BL       $Ven$TT$L$$__ARM_common_switch8 ; 0x1fff1d80
    $d
        0x1fff6332:    0705        ..      DCW    1797
        0x1fff6334:    0b090d07    ....    DCD    185142535
        0x1fff6338:    000d        ..      DCW    13
    $t
        0x1fff633a:    68d3        .h      LDR      r3,[r2,#0xc]
        0x1fff633c:    430b        .C      ORRS     r3,r3,r1
        0x1fff633e:    e7e9        ..      B        0x1fff6314 ; rf_tp_cal + 80
        0x1fff6340:    4822        "H      LDR      r0,[pc,#136] ; [0x1fff63cc] = 0x4e20
        0x1fff6342:    e002        ..      B        0x1fff634a ; rf_tp_cal + 134
        0x1fff6344:    4822        "H      LDR      r0,[pc,#136] ; [0x1fff63d0] = 0x7530
        0x1fff6346:    e000        ..      B        0x1fff634a ; rf_tp_cal + 134
        0x1fff6348:    4822        "H      LDR      r0,[pc,#136] ; [0x1fff63d4] = 0x9c40
        0x1fff634a:    9000        ..      STR      r0,[sp,#0]
        0x1fff634c:    9800        ..      LDR      r0,[sp,#0]
        0x1fff634e:    1e43        C.      SUBS     r3,r0,#1
        0x1fff6350:    9300        ..      STR      r3,[sp,#0]
        0x1fff6352:    d2fb        ..      BCS      0x1fff634c ; rf_tp_cal + 136
        0x1fff6354:    6b68        hk      LDR      r0,[r5,#0x34]
        0x1fff6356:    6257        Wb      STR      r7,[r2,#0x24]
        0x1fff6358:    0200        ..      LSLS     r0,r0,#8
        0x1fff635a:    0e00        ..      LSRS     r0,r0,#24
        0x1fff635c:    6217        .b      STR      r7,[r2,#0x20]
        0x1fff635e:    4b1e        .K      LDR      r3,[pc,#120] ; [0x1fff63d8] = 0x104040
        0x1fff6360:    60d3        .`      STR      r3,[r2,#0xc]
        0x1fff6362:    23ff        .#      MOVS     r3,#0xff
        0x1fff6364:    3341        A3      ADDS     r3,r3,#0x41
        0x1fff6366:    6253        Sb      STR      r3,[r2,#0x24]
        0x1fff6368:    2365        e#      MOVS     r3,#0x65
        0x1fff636a:    02db        ..      LSLS     r3,r3,#11
        0x1fff636c:    6023        #`      STR      r3,[r4,#0]
        0x1fff636e:    4d1b        .M      LDR      r5,[pc,#108] ; [0x1fff63dc] = 0x1fff0a49
        0x1fff6370:    782f        /x      LDRB     r7,[r5,#0]
        0x1fff6372:    23e0        .#      MOVS     r3,#0xe0
        0x1fff6374:    2f01        ./      CMP      r7,#1
        0x1fff6376:    d00a        ..      BEQ      0x1fff638e ; rf_tp_cal + 202
        0x1fff6378:    782d        -x      LDRB     r5,[r5,#0]
        0x1fff637a:    2d02        .-      CMP      r5,#2
        0x1fff637c:    6825        %h      LDR      r5,[r4,#0]
        0x1fff637e:    d00a        ..      BEQ      0x1fff6396 ; rf_tp_cal + 210
        0x1fff6380:    439d        .C      BICS     r5,r5,r3
        0x1fff6382:    6025        %`      STR      r5,[r4,#0]
        0x1fff6384:    4b0d        .K      LDR      r3,[pc,#52] ; [0x1fff63bc] = 0x1fff0a4b
        0x1fff6386:    781b        .x      LDRB     r3,[r3,#0]
        0x1fff6388:    2b00        .+      CMP      r3,#0
        0x1fff638a:    d007        ..      BEQ      0x1fff639c ; rf_tp_cal + 216
        0x1fff638c:    e009        ..      B        0x1fff63a2 ; rf_tp_cal + 222
        0x1fff638e:    6825        %h      LDR      r5,[r4,#0]
        0x1fff6390:    439d        .C      BICS     r5,r5,r3
        0x1fff6392:    3520         5      ADDS     r5,r5,#0x20
        0x1fff6394:    e7f5        ..      B        0x1fff6382 ; rf_tp_cal + 190
        0x1fff6396:    439d        .C      BICS     r5,r5,r3
        0x1fff6398:    3540        @5      ADDS     r5,r5,#0x40
        0x1fff639a:    e7f2        ..      B        0x1fff6382 ; rf_tp_cal + 190
        0x1fff639c:    7833        3x      LDRB     r3,[r6,#0]
        0x1fff639e:    2b03        .+      CMP      r3,#3
        0x1fff63a0:    d003        ..      BEQ      0x1fff63aa ; rf_tp_cal + 230
        0x1fff63a2:    68d3        .h      LDR      r3,[r2,#0xc]
        0x1fff63a4:    438b        .C      BICS     r3,r3,r1
        0x1fff63a6:    60d3        .`      STR      r3,[r2,#0xc]
        0x1fff63a8:    bdf8        ..      POP      {r3-r7,pc}
        0x1fff63aa:    68d3        .h      LDR      r3,[r2,#0xc]
        0x1fff63ac:    430b        .C      ORRS     r3,r3,r1
        0x1fff63ae:    e7fa        ..      B        0x1fff63a6 ; rf_tp_cal + 226
    $d
        0x1fff63b0:    00030010    ....    DCD    196624
        0x1fff63b4:    40030040    @..@    DCD    1073938496
        0x1fff63b8:    0073407f    .@s.    DCD    7553151
        0x1fff63bc:    1fff0a4b    K...    DCD    536808011
        0x1fff63c0:    1fff0a4a    J...    DCD    536808010
        0x1fff63c4:    0053407f    .@S.    DCD    5455999
        0x1fff63c8:    00002710    .'..    DCD    10000
        0x1fff63cc:    00004e20     N..    DCD    20000
        0x1fff63d0:    00007530    0u..    DCD    30000
        0x1fff63d4:    00009c40    @...    DCD    40000
        0x1fff63d8:    00104040    @@..    DCD    1065024
        0x1fff63dc:    1fff0a49    I...    DCD    536808009
    $t
    i.rf_txack_check
    rf_txack_check
        0x1fff63e0:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff63e2:    0701        ..      LSLS     r1,r0,#28
        0x1fff63e4:    d507        ..      BPL      0x1fff63f6 ; rf_txack_check + 22
        0x1fff63e6:    0741        A.      LSLS     r1,r0,#29
        0x1fff63e8:    d405        ..      BMI      0x1fff63f6 ; rf_txack_check + 22
        0x1fff63ea:    4905        .I      LDR      r1,[pc,#20] ; [0x1fff6400] = 0x1fff6d48
        0x1fff63ec:    0780        ..      LSLS     r0,r0,#30
        0x1fff63ee:    7809        .x      LDRB     r1,[r1,#0]
        0x1fff63f0:    0f80        ..      LSRS     r0,r0,#30
        0x1fff63f2:    4288        .B      CMP      r0,r1
        0x1fff63f4:    d001        ..      BEQ      0x1fff63fa ; rf_txack_check + 26
        0x1fff63f6:    200a        .       MOVS     r0,#0xa
        0x1fff63f8:    4770        pG      BX       lr
        0x1fff63fa:    2000        .       MOVS     r0,#0
        0x1fff63fc:    4770        pG      BX       lr
    $d
        0x1fff63fe:    0000        ..      DCW    0
        0x1fff6400:    1fff6d48    Hm..    DCD    536833352
    $t
    i.show_phy_debug_info
    show_phy_debug_info
        0x1fff6404:    b510        ..      PUSH     {r4,lr}
        0x1fff6406:    480a        .H      LDR      r0,[pc,#40] ; [0x1fff6430] = 0x1fff74a0
        0x1fff6408:    b088        ..      SUB      sp,sp,#0x20
        0x1fff640a:    c81e        ..      LDM      r0!,{r1-r4}
        0x1fff640c:    9404        ..      STR      r4,[sp,#0x10]
        0x1fff640e:    3008        .0      ADDS     r0,r0,#8
        0x1fff6410:    9305        ..      STR      r3,[sp,#0x14]
        0x1fff6412:    9206        ..      STR      r2,[sp,#0x18]
        0x1fff6414:    9103        ..      STR      r1,[sp,#0xc]
        0x1fff6416:    c80e        ..      LDM      r0!,{r1-r3}
        0x1fff6418:    466c        lF      MOV      r4,sp
        0x1fff641a:    c40e        ..      STM      r4!,{r1-r3}
        0x1fff641c:    3814        .8      SUBS     r0,r0,#0x14
        0x1fff641e:    c80c        ..      LDM      r0!,{r2,r3}
        0x1fff6420:    3844        D8      SUBS     r0,r0,#0x44
        0x1fff6422:    7801        .x      LDRB     r1,[r0,#0]
        0x1fff6424:    4803        .H      LDR      r0,[pc,#12] ; [0x1fff6434] = 0x1fff6c14
        0x1fff6426:    f7fdf8ab    ....    BL       dbg_printf ; 0x1fff3580
        0x1fff642a:    b008        ..      ADD      sp,sp,#0x20
        0x1fff642c:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff642e:    0000        ..      DCW    0
        0x1fff6430:    1fff74a0    .t..    DCD    536835232
        0x1fff6434:    1fff6c14    .l..    DCD    536833044
    $t
    i.skip_atoi
    skip_atoi
        0x1fff6438:    4601        .F      MOV      r1,r0
        0x1fff643a:    2000        .       MOVS     r0,#0
        0x1fff643c:    e006        ..      B        0x1fff644c ; skip_atoi + 20
        0x1fff643e:    1c53        S.      ADDS     r3,r2,#1
        0x1fff6440:    600b        .`      STR      r3,[r1,#0]
        0x1fff6442:    230a        .#      MOVS     r3,#0xa
        0x1fff6444:    7812        .x      LDRB     r2,[r2,#0]
        0x1fff6446:    4358        XC      MULS     r0,r3,r0
        0x1fff6448:    3830        08      SUBS     r0,r0,#0x30
        0x1fff644a:    1810        ..      ADDS     r0,r2,r0
        0x1fff644c:    680a        .h      LDR      r2,[r1,#0]
        0x1fff644e:    7813        .x      LDRB     r3,[r2,#0]
        0x1fff6450:    3b30        0;      SUBS     r3,r3,#0x30
        0x1fff6452:    2b09        .+      CMP      r3,#9
        0x1fff6454:    d9f3        ..      BLS      0x1fff643e ; skip_atoi + 6
        0x1fff6456:    4770        pG      BX       lr
    i.txmit_buf_polling
    txmit_buf_polling
        0x1fff6458:    b578        x.      PUSH     {r3-r6,lr}
        0x1fff645a:    4b17        .K      LDR      r3,[pc,#92] ; [0x1fff64b8] = 0x40004000
        0x1fff645c:    2801        .(      CMP      r0,#1
        0x1fff645e:    d100        ..      BNE      0x1fff6462 ; txmit_buf_polling + 10
        0x1fff6460:    4b16        .K      LDR      r3,[pc,#88] ; [0x1fff64bc] = 0x40009000
        0x1fff6462:    2400        .$      MOVS     r4,#0
        0x1fff6464:    4816        .H      LDR      r0,[pc,#88] ; [0x1fff64c0] = 0x186a0
        0x1fff6466:    9400        ..      STR      r4,[sp,#0]
        0x1fff6468:    e004        ..      B        0x1fff6474 ; txmit_buf_polling + 28
        0x1fff646a:    9d00        ..      LDR      r5,[sp,#0]
        0x1fff646c:    1c6e        n.      ADDS     r6,r5,#1
        0x1fff646e:    9600        ..      STR      r6,[sp,#0]
        0x1fff6470:    4285        .B      CMP      r5,r0
        0x1fff6472:    dc1a        ..      BGT      0x1fff64aa ; txmit_buf_polling + 82
        0x1fff6474:    6fdd        .o      LDR      r5,[r3,#0x7c]
        0x1fff6476:    07ed        ..      LSLS     r5,r5,#31
        0x1fff6478:    d1f7        ..      BNE      0x1fff646a ; txmit_buf_polling + 18
        0x1fff647a:    e00a        ..      B        0x1fff6492 ; txmit_buf_polling + 58
        0x1fff647c:    9d00        ..      LDR      r5,[sp,#0]
        0x1fff647e:    1c6e        n.      ADDS     r6,r5,#1
        0x1fff6480:    9600        ..      STR      r6,[sp,#0]
        0x1fff6482:    4285        .B      CMP      r5,r0
        0x1fff6484:    dc11        ..      BGT      0x1fff64aa ; txmit_buf_polling + 82
        0x1fff6486:    7d1d        .}      LDRB     r5,[r3,#0x14]
        0x1fff6488:    06ad        ..      LSLS     r5,r5,#26
        0x1fff648a:    d5f7        ..      BPL      0x1fff647c ; txmit_buf_polling + 36
        0x1fff648c:    780d        .x      LDRB     r5,[r1,#0]
        0x1fff648e:    701d        .p      STRB     r5,[r3,#0]
        0x1fff6490:    1c49        I.      ADDS     r1,r1,#1
        0x1fff6492:    4615        .F      MOV      r5,r2
        0x1fff6494:    1e52        R.      SUBS     r2,r2,#1
        0x1fff6496:    b292        ..      UXTH     r2,r2
        0x1fff6498:    2d00        .-      CMP      r5,#0
        0x1fff649a:    9400        ..      STR      r4,[sp,#0]
        0x1fff649c:    d1f3        ..      BNE      0x1fff6486 ; txmit_buf_polling + 46
        0x1fff649e:    e006        ..      B        0x1fff64ae ; txmit_buf_polling + 86
        0x1fff64a0:    9900        ..      LDR      r1,[sp,#0]
        0x1fff64a2:    1c4a        J.      ADDS     r2,r1,#1
        0x1fff64a4:    9200        ..      STR      r2,[sp,#0]
        0x1fff64a6:    4281        .B      CMP      r1,r0
        0x1fff64a8:    dd01        ..      BLE      0x1fff64ae ; txmit_buf_polling + 86
        0x1fff64aa:    200d        .       MOVS     r0,#0xd
        0x1fff64ac:    bd78        x.      POP      {r3-r6,pc}
        0x1fff64ae:    7d19        .}      LDRB     r1,[r3,#0x14]
        0x1fff64b0:    0649        I.      LSLS     r1,r1,#25
        0x1fff64b2:    d5f5        ..      BPL      0x1fff64a0 ; txmit_buf_polling + 72
        0x1fff64b4:    2000        .       MOVS     r0,#0
        0x1fff64b6:    bd78        x.      POP      {r3-r6,pc}
    $d
        0x1fff64b8:    40004000    .@.@    DCD    1073758208
        0x1fff64bc:    40009000    ...@    DCD    1073778688
        0x1fff64c0:    000186a0    ....    DCD    100000
    $t
    i.txmit_buf_use_tx_buf
    txmit_buf_use_tx_buf
        0x1fff64c4:    b5f7        ..      PUSH     {r0-r2,r4-r7,lr}
        0x1fff64c6:    4607        .F      MOV      r7,r0
        0x1fff64c8:    492a        *I      LDR      r1,[pc,#168] ; [0x1fff6574] = 0x1fff74c4
        0x1fff64ca:    0140        @.      LSLS     r0,r0,#5
        0x1fff64cc:    1844        D.      ADDS     r4,r0,r1
        0x1fff64ce:    4e2a        *N      LDR      r6,[pc,#168] ; [0x1fff6578] = 0x40004000
        0x1fff64d0:    1d24        $.      ADDS     r4,r4,#4
        0x1fff64d2:    4615        .F      MOV      r5,r2
        0x1fff64d4:    2a00        .*      CMP      r2,#0
        0x1fff64d6:    d010        ..      BEQ      0x1fff64fa ; txmit_buf_use_tx_buf + 54
        0x1fff64d8:    9801        ..      LDR      r0,[sp,#4]
        0x1fff64da:    2800        .(      CMP      r0,#0
        0x1fff64dc:    d00d        ..      BEQ      0x1fff64fa ; txmit_buf_use_tx_buf + 54
        0x1fff64de:    7821        !x      LDRB     r1,[r4,#0]
        0x1fff64e0:    2900        .)      CMP      r1,#0
        0x1fff64e2:    d008        ..      BEQ      0x1fff64f6 ; txmit_buf_use_tx_buf + 50
        0x1fff64e4:    88e0        ..      LDRH     r0,[r4,#6]
        0x1fff64e6:    42a8        .B      CMP      r0,r5
        0x1fff64e8:    d305        ..      BCC      0x1fff64f6 ; txmit_buf_use_tx_buf + 50
        0x1fff64ea:    2901        .)      CMP      r1,#1
        0x1fff64ec:    d016        ..      BEQ      0x1fff651c ; txmit_buf_use_tx_buf + 88
        0x1fff64ee:    88a1        ..      LDRH     r1,[r4,#4]
        0x1fff64f0:    1949        I.      ADDS     r1,r1,r5
        0x1fff64f2:    4281        .B      CMP      r1,r0
        0x1fff64f4:    d903        ..      BLS      0x1fff64fe ; txmit_buf_use_tx_buf + 58
        0x1fff64f6:    2003        .       MOVS     r0,#3
        0x1fff64f8:    bdfe        ..      POP      {r1-r7,pc}
        0x1fff64fa:    2006        .       MOVS     r0,#6
        0x1fff64fc:    bdfe        ..      POP      {r1-r7,pc}
        0x1fff64fe:    f7fbf9ff    ....    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff1900
        0x1fff6502:    88a1        ..      LDRH     r1,[r4,#4]
        0x1fff6504:    68a0        .h      LDR      r0,[r4,#8]
        0x1fff6506:    462a        *F      MOV      r2,r5
        0x1fff6508:    1840        @.      ADDS     r0,r0,r1
        0x1fff650a:    9901        ..      LDR      r1,[sp,#4]
        0x1fff650c:    f7fbfb90    ....    BL       $Ven$TT$L$$__aeabi_memcpy ; 0x1fff1c30
        0x1fff6510:    88a0        ..      LDRH     r0,[r4,#4]
        0x1fff6512:    1940        @.      ADDS     r0,r0,r5
        0x1fff6514:    80a0        ..      STRH     r0,[r4,#4]
        0x1fff6516:    f7fbf9ff    ....    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff1918
        0x1fff651a:    e027        '.      B        0x1fff656c ; txmit_buf_use_tx_buf + 168
        0x1fff651c:    68a0        .h      LDR      r0,[r4,#8]
        0x1fff651e:    9901        ..      LDR      r1,[sp,#4]
        0x1fff6520:    f7fbfb86    ....    BL       $Ven$TT$L$$__aeabi_memcpy ; 0x1fff1c30
        0x1fff6524:    80a5        ..      STRH     r5,[r4,#4]
        0x1fff6526:    2000        .       MOVS     r0,#0
        0x1fff6528:    8060        `.      STRH     r0,[r4,#2]
        0x1fff652a:    2002        .       MOVS     r0,#2
        0x1fff652c:    7020         p      STRB     r0,[r4,#0]
        0x1fff652e:    68a1        .h      LDR      r1,[r4,#8]
        0x1fff6530:    2d10        .-      CMP      r5,#0x10
        0x1fff6532:    d900        ..      BLS      0x1fff6536 ; txmit_buf_use_tx_buf + 114
        0x1fff6534:    2510        .%      MOVS     r5,#0x10
        0x1fff6536:    2f01        ./      CMP      r7,#1
        0x1fff6538:    d100        ..      BNE      0x1fff653c ; txmit_buf_use_tx_buf + 120
        0x1fff653a:    4e10        .N      LDR      r6,[pc,#64] ; [0x1fff657c] = 0x40009000
        0x1fff653c:    6872        rh      LDR      r2,[r6,#4]
        0x1fff653e:    2002        .       MOVS     r0,#2
        0x1fff6540:    4382        .C      BICS     r2,r2,r0
        0x1fff6542:    6072        r`      STR      r2,[r6,#4]
        0x1fff6544:    e004        ..      B        0x1fff6550 ; txmit_buf_use_tx_buf + 140
        0x1fff6546:    8860        `.      LDRH     r0,[r4,#2]
        0x1fff6548:    1c42        B.      ADDS     r2,r0,#1
        0x1fff654a:    8062        b.      STRH     r2,[r4,#2]
        0x1fff654c:    5c08        .\      LDRB     r0,[r1,r0]
        0x1fff654e:    7030        0p      STRB     r0,[r6,#0]
        0x1fff6550:    4628        (F      MOV      r0,r5
        0x1fff6552:    1e6d        m.      SUBS     r5,r5,#1
        0x1fff6554:    b2ad        ..      UXTH     r5,r5
        0x1fff6556:    2800        .(      CMP      r0,#0
        0x1fff6558:    d1f5        ..      BNE      0x1fff6546 ; txmit_buf_use_tx_buf + 130
        0x1fff655a:    2f00        ./      CMP      r7,#0
        0x1fff655c:    d008        ..      BEQ      0x1fff6570 ; txmit_buf_use_tx_buf + 172
        0x1fff655e:    2019        .       MOVS     r0,#0x19
        0x1fff6560:    f7fdfdb6    ....    BL       hal_pwrmgr_lock ; 0x1fff40d0
        0x1fff6564:    6870        ph      LDR      r0,[r6,#4]
        0x1fff6566:    2102        .!      MOVS     r1,#2
        0x1fff6568:    4308        .C      ORRS     r0,r0,r1
        0x1fff656a:    6070        p`      STR      r0,[r6,#4]
        0x1fff656c:    2000        .       MOVS     r0,#0
        0x1fff656e:    bdfe        ..      POP      {r1-r7,pc}
        0x1fff6570:    2008        .       MOVS     r0,#8
        0x1fff6572:    e7f5        ..      B        0x1fff6560 ; txmit_buf_use_tx_buf + 156
    $d
        0x1fff6574:    1fff74c4    .t..    DCD    536835268
        0x1fff6578:    40004000    .@.@    DCD    1073758208
        0x1fff657c:    40009000    ...@    DCD    1073778688
    $t
    i.uart_hw_deinit
    uart_hw_deinit
        0x1fff6580:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff6582:    4605        .F      MOV      r5,r0
        0x1fff6584:    2608        .&      MOVS     r6,#8
        0x1fff6586:    200b        .       MOVS     r0,#0xb
        0x1fff6588:    4918        .I      LDR      r1,[pc,#96] ; [0x1fff65ec] = 0x40004000
        0x1fff658a:    2d01        .-      CMP      r5,#1
        0x1fff658c:    d102        ..      BNE      0x1fff6594 ; uart_hw_deinit + 20
        0x1fff658e:    2619        .&      MOVS     r6,#0x19
        0x1fff6590:    4917        .I      LDR      r1,[pc,#92] ; [0x1fff65f0] = 0x40009000
        0x1fff6592:    2011        .       MOVS     r0,#0x11
        0x1fff6594:    2201        ."      MOVS     r2,#1
        0x1fff6596:    4082        .@      LSLS     r2,r2,r0
        0x1fff6598:    4816        .H      LDR      r0,[pc,#88] ; [0x1fff65f4] = 0xe000e180
        0x1fff659a:    6002        .`      STR      r2,[r0,#0]
        0x1fff659c:    f3bf8f4f    ..O.    DSB      
        0x1fff65a0:    f3bf8f6f    ..o.    ISB      
        0x1fff65a4:    2080        .       MOVS     r0,#0x80
        0x1fff65a6:    7308        .s      STRB     r0,[r1,#0xc]
        0x1fff65a8:    2400        .$      MOVS     r4,#0
        0x1fff65aa:    710c        .q      STRB     r4,[r1,#4]
        0x1fff65ac:    700c        .p      STRB     r4,[r1,#0]
        0x1fff65ae:    730c        .s      STRB     r4,[r1,#0xc]
        0x1fff65b0:    720c        .r      STRB     r4,[r1,#8]
        0x1fff65b2:    604c        L`      STR      r4,[r1,#4]
        0x1fff65b4:    4630        0F      MOV      r0,r6
        0x1fff65b6:    f7fdf9e1    ....    BL       hal_clk_reset ; 0x1fff397c
        0x1fff65ba:    4630        0F      MOV      r0,r6
        0x1fff65bc:    f7fdf9aa    ....    BL       hal_clk_gate_disable ; 0x1fff3914
        0x1fff65c0:    2d00        .-      CMP      r5,#0
        0x1fff65c2:    d00e        ..      BEQ      0x1fff65e2 ; uart_hw_deinit + 98
        0x1fff65c4:    480c        .H      LDR      r0,[pc,#48] ; [0x1fff65f8] = 0x1fff03c0
        0x1fff65c6:    6044        D`      STR      r4,[r0,#4]
        0x1fff65c8:    480c        .H      LDR      r0,[pc,#48] ; [0x1fff65fc] = 0x1fff74c4
        0x1fff65ca:    0169        i.      LSLS     r1,r5,#5
        0x1fff65cc:    180c        ..      ADDS     r4,r1,r0
        0x1fff65ce:    7c20         |      LDRB     r0,[r4,#0x10]
        0x1fff65d0:    2100        .!      MOVS     r1,#0
        0x1fff65d2:    f7fdfa2d    ..-.    BL       hal_gpio_fmux ; 0x1fff3a30
        0x1fff65d6:    7c60        `|      LDRB     r0,[r4,#0x11]
        0x1fff65d8:    2100        .!      MOVS     r1,#0
        0x1fff65da:    f7fdfa29    ..).    BL       hal_gpio_fmux ; 0x1fff3a30
        0x1fff65de:    2000        .       MOVS     r0,#0
        0x1fff65e0:    bd70        p.      POP      {r4-r6,pc}
        0x1fff65e2:    4805        .H      LDR      r0,[pc,#20] ; [0x1fff65f8] = 0x1fff03c0
        0x1fff65e4:    3840        @8      SUBS     r0,r0,#0x40
        0x1fff65e6:    62c4        .b      STR      r4,[r0,#0x2c]
        0x1fff65e8:    e7ee        ..      B        0x1fff65c8 ; uart_hw_deinit + 72
    $d
        0x1fff65ea:    0000        ..      DCW    0
        0x1fff65ec:    40004000    .@.@    DCD    1073758208
        0x1fff65f0:    40009000    ...@    DCD    1073778688
        0x1fff65f4:    e000e180    ....    DCD    3758154112
        0x1fff65f8:    1fff03c0    ....    DCD    536806336
        0x1fff65fc:    1fff74c4    .t..    DCD    536835268
    $t
    i.uart_hw_init
    uart_hw_init
        0x1fff6600:    b5f0        ..      PUSH     {r4-r7,lr}
        0x1fff6602:    b087        ..      SUB      sp,sp,#0x1c
        0x1fff6604:    4607        .F      MOV      r7,r0
        0x1fff6606:    f7fbfbc1    ....    BL       $Ven$TT$L$$clk_get_pclk ; 0x1fff1d8c
        0x1fff660a:    9004        ..      STR      r0,[sp,#0x10]
        0x1fff660c:    2008        .       MOVS     r0,#8
        0x1fff660e:    9003        ..      STR      r0,[sp,#0xc]
        0x1fff6610:    2004        .       MOVS     r0,#4
        0x1fff6612:    9000        ..      STR      r0,[sp,#0]
        0x1fff6614:    2005        .       MOVS     r0,#5
        0x1fff6616:    9002        ..      STR      r0,[sp,#8]
        0x1fff6618:    4c59        YL      LDR      r4,[pc,#356] ; [0x1fff6780] = 0x40004000
        0x1fff661a:    260b        .&      MOVS     r6,#0xb
        0x1fff661c:    4638        8F      MOV      r0,r7
        0x1fff661e:    f7ffffaf    ....    BL       uart_hw_deinit ; 0x1fff6580
        0x1fff6622:    2f01        ./      CMP      r7,#1
        0x1fff6624:    d107        ..      BNE      0x1fff6636 ; uart_hw_init + 54
        0x1fff6626:    2019        .       MOVS     r0,#0x19
        0x1fff6628:    9003        ..      STR      r0,[sp,#0xc]
        0x1fff662a:    2008        .       MOVS     r0,#8
        0x1fff662c:    2611        .&      MOVS     r6,#0x11
        0x1fff662e:    9000        ..      STR      r0,[sp,#0]
        0x1fff6630:    4c54        TL      LDR      r4,[pc,#336] ; [0x1fff6784] = 0x40009000
        0x1fff6632:    2009        .       MOVS     r0,#9
        0x1fff6634:    9002        ..      STR      r0,[sp,#8]
        0x1fff6636:    4854        TH      LDR      r0,[pc,#336] ; [0x1fff6788] = 0x1fff74c4
        0x1fff6638:    0179        y.      LSLS     r1,r7,#5
        0x1fff663a:    180d        ..      ADDS     r5,r1,r0
        0x1fff663c:    7c28        (|      LDRB     r0,[r5,#0x10]
        0x1fff663e:    28ff        .(      CMP      r0,#0xff
        0x1fff6640:    d102        ..      BNE      0x1fff6648 ; uart_hw_init + 72
        0x1fff6642:    7c68        h|      LDRB     r0,[r5,#0x11]
        0x1fff6644:    28ff        .(      CMP      r0,#0xff
        0x1fff6646:    d02f        /.      BEQ      0x1fff66a8 ; uart_hw_init + 168
        0x1fff6648:    3510        .5      ADDS     r5,r5,#0x10
        0x1fff664a:    9803        ..      LDR      r0,[sp,#0xc]
        0x1fff664c:    f7fdf97c    ..|.    BL       hal_clk_gate_enable ; 0x1fff3948
        0x1fff6650:    9803        ..      LDR      r0,[sp,#0xc]
        0x1fff6652:    f7fdf993    ....    BL       hal_clk_reset ; 0x1fff397c
        0x1fff6656:    2101        .!      MOVS     r1,#1
        0x1fff6658:    2012        .       MOVS     r0,#0x12
        0x1fff665a:    f7fdfab1    ....    BL       hal_gpio_pull_set ; 0x1fff3bc0
        0x1fff665e:    2101        .!      MOVS     r1,#1
        0x1fff6660:    2012        .       MOVS     r0,#0x12
        0x1fff6662:    f7fdfaad    ....    BL       hal_gpio_pull_set ; 0x1fff3bc0
        0x1fff6666:    2012        .       MOVS     r0,#0x12
        0x1fff6668:    9900        ..      LDR      r1,[sp,#0]
        0x1fff666a:    f7fdf9f1    ....    BL       hal_gpio_fmux_set ; 0x1fff3a50
        0x1fff666e:    2012        .       MOVS     r0,#0x12
        0x1fff6670:    9902        ..      LDR      r1,[sp,#8]
        0x1fff6672:    f7fdf9ed    ....    BL       hal_gpio_fmux_set ; 0x1fff3a50
        0x1fff6676:    2000        .       MOVS     r0,#0
        0x1fff6678:    7320         s      STRB     r0,[r4,#0xc]
        0x1fff667a:    9804        ..      LDR      r0,[sp,#0x10]
        0x1fff667c:    6869        ih      LDR      r1,[r5,#4]
        0x1fff667e:    1100        ..      ASRS     r0,r0,#4
        0x1fff6680:    084a        J.      LSRS     r2,r1,#1
        0x1fff6682:    1880        ..      ADDS     r0,r0,r2
        0x1fff6684:    f7fbfb34    ..4.    BL       $Ven$TT$L$$__aeabi_uidivmod ; 0x1fff1cf0
        0x1fff6688:    2100        .!      MOVS     r1,#0
        0x1fff668a:    6121        !a      STR      r1,[r4,#0x10]
        0x1fff668c:    2180        .!      MOVS     r1,#0x80
        0x1fff668e:    7321        !s      STRB     r1,[r4,#0xc]
        0x1fff6690:    0a01        ..      LSRS     r1,r0,#8
        0x1fff6692:    7121        !q      STRB     r1,[r4,#4]
        0x1fff6694:    7020         p      STRB     r0,[r4,#0]
        0x1fff6696:    7ae8        .z      LDRB     r0,[r5,#0xb]
        0x1fff6698:    2800        .(      CMP      r0,#0
        0x1fff669a:    d052        R.      BEQ      0x1fff6742 ; uart_hw_init + 322
        0x1fff669c:    4938        8I      LDR      r1,[pc,#224] ; [0x1fff6780] = 0x40004000
        0x1fff669e:    483b        ;H      LDR      r0,[pc,#236] ; [0x1fff678c] = 0x1fff6d84
        0x1fff66a0:    428c        .B      CMP      r4,r1
        0x1fff66a2:    d104        ..      BNE      0x1fff66ae ; uart_hw_init + 174
        0x1fff66a4:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff66a6:    e003        ..      B        0x1fff66b0 ; uart_hw_init + 176
        0x1fff66a8:    2006        .       MOVS     r0,#6
        0x1fff66aa:    b007        ..      ADD      sp,sp,#0x1c
        0x1fff66ac:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff66ae:    7840        @x      LDRB     r0,[r0,#1]
        0x1fff66b0:    2800        .(      CMP      r0,#0
        0x1fff66b2:    d001        ..      BEQ      0x1fff66b8 ; uart_hw_init + 184
        0x1fff66b4:    201b        .       MOVS     r0,#0x1b
        0x1fff66b6:    e000        ..      B        0x1fff66ba ; uart_hw_init + 186
        0x1fff66b8:    200b        .       MOVS     r0,#0xb
        0x1fff66ba:    7320         s      STRB     r0,[r4,#0xc]
        0x1fff66bc:    7a28        (z      LDRB     r0,[r5,#8]
        0x1fff66be:    2800        .(      CMP      r0,#0
        0x1fff66c0:    d000        ..      BEQ      0x1fff66c4 ; uart_hw_init + 196
        0x1fff66c2:    2087        .       MOVS     r0,#0x87
        0x1fff66c4:    7220         r      STRB     r0,[r4,#8]
        0x1fff66c6:    2001        .       MOVS     r0,#1
        0x1fff66c8:    6060        ``      STR      r0,[r4,#4]
        0x1fff66ca:    7a28        (z      LDRB     r0,[r5,#8]
        0x1fff66cc:    2800        .(      CMP      r0,#0
        0x1fff66ce:    d003        ..      BEQ      0x1fff66d8 ; uart_hw_init + 216
        0x1fff66d0:    6860        `h      LDR      r0,[r4,#4]
        0x1fff66d2:    2180        .!      MOVS     r1,#0x80
        0x1fff66d4:    4308        .C      ORRS     r0,r0,r1
        0x1fff66d6:    6060        ``      STR      r0,[r4,#4]
        0x1fff66d8:    7aa8        .z      LDRB     r0,[r5,#0xa]
        0x1fff66da:    2800        .(      CMP      r0,#0
        0x1fff66dc:    d003        ..      BEQ      0x1fff66e6 ; uart_hw_init + 230
        0x1fff66de:    6860        `h      LDR      r0,[r4,#4]
        0x1fff66e0:    2102        .!      MOVS     r1,#2
        0x1fff66e2:    4308        .C      ORRS     r0,r0,r1
        0x1fff66e4:    6060        ``      STR      r0,[r4,#4]
        0x1fff66e6:    7828        (x      LDRB     r0,[r5,#0]
        0x1fff66e8:    2101        .!      MOVS     r1,#1
        0x1fff66ea:    f7fdfa69    ..i.    BL       hal_gpio_pull_set ; 0x1fff3bc0
        0x1fff66ee:    7868        hx      LDRB     r0,[r5,#1]
        0x1fff66f0:    2101        .!      MOVS     r1,#1
        0x1fff66f2:    f7fdfa65    ..e.    BL       hal_gpio_pull_set ; 0x1fff3bc0
        0x1fff66f6:    7828        (x      LDRB     r0,[r5,#0]
        0x1fff66f8:    9900        ..      LDR      r1,[sp,#0]
        0x1fff66fa:    f7fdf9a9    ....    BL       hal_gpio_fmux_set ; 0x1fff3a50
        0x1fff66fe:    7868        hx      LDRB     r0,[r5,#1]
        0x1fff6700:    9902        ..      LDR      r1,[sp,#8]
        0x1fff6702:    f7fdf9a5    ....    BL       hal_gpio_fmux_set ; 0x1fff3a50
        0x1fff6706:    2100        .!      MOVS     r1,#0
        0x1fff6708:    2012        .       MOVS     r0,#0x12
        0x1fff670a:    f7fdf991    ....    BL       hal_gpio_fmux ; 0x1fff3a30
        0x1fff670e:    2103        .!      MOVS     r1,#3
        0x1fff6710:    2012        .       MOVS     r0,#0x12
        0x1fff6712:    f7fdfa55    ..U.    BL       hal_gpio_pull_set ; 0x1fff3bc0
        0x1fff6716:    2f00        ./      CMP      r7,#0
        0x1fff6718:    d015        ..      BEQ      0x1fff6746 ; uart_hw_init + 326
        0x1fff671a:    491e        .I      LDR      r1,[pc,#120] ; [0x1fff6794] = 0x1fff03c0
        0x1fff671c:    481c        .H      LDR      r0,[pc,#112] ; [0x1fff6790] = 0x1fff3889
        0x1fff671e:    6048        H`      STR      r0,[r1,#4]
        0x1fff6720:    20ff        .       MOVS     r0,#0xff
        0x1fff6722:    2e00        ..      CMP      r6,#0
        0x1fff6724:    db14        ..      BLT      0x1fff6750 ; uart_hw_init + 336
        0x1fff6726:    08b2        ..      LSRS     r2,r6,#2
        0x1fff6728:    491b        .I      LDR      r1,[pc,#108] ; [0x1fff6798] = 0xe000e400
        0x1fff672a:    0092        ..      LSLS     r2,r2,#2
        0x1fff672c:    1851        Q.      ADDS     r1,r2,r1
        0x1fff672e:    680a        .h      LDR      r2,[r1,#0]
        0x1fff6730:    07b3        ..      LSLS     r3,r6,#30
        0x1fff6732:    0edb        ..      LSRS     r3,r3,#27
        0x1fff6734:    4098        .@      LSLS     r0,r0,r3
        0x1fff6736:    4382        .C      BICS     r2,r2,r0
        0x1fff6738:    2080        .       MOVS     r0,#0x80
        0x1fff673a:    4098        .@      LSLS     r0,r0,r3
        0x1fff673c:    4302        .C      ORRS     r2,r2,r0
        0x1fff673e:    600a        .`      STR      r2,[r1,#0]
        0x1fff6740:    e016        ..      B        0x1fff6770 ; uart_hw_init + 368
        0x1fff6742:    2003        .       MOVS     r0,#3
        0x1fff6744:    e7b9        ..      B        0x1fff66ba ; uart_hw_init + 186
        0x1fff6746:    4913        .I      LDR      r1,[pc,#76] ; [0x1fff6794] = 0x1fff03c0
        0x1fff6748:    4814        .H      LDR      r0,[pc,#80] ; [0x1fff679c] = 0x1fff3845
        0x1fff674a:    3940        @9      SUBS     r1,r1,#0x40
        0x1fff674c:    62c8        .b      STR      r0,[r1,#0x2c]
        0x1fff674e:    e7e7        ..      B        0x1fff6720 ; uart_hw_init + 288
        0x1fff6750:    0731        1.      LSLS     r1,r6,#28
        0x1fff6752:    0f09        ..      LSRS     r1,r1,#28
        0x1fff6754:    3908        .9      SUBS     r1,r1,#8
        0x1fff6756:    088a        ..      LSRS     r2,r1,#2
        0x1fff6758:    4911        .I      LDR      r1,[pc,#68] ; [0x1fff67a0] = 0xe000ed00
        0x1fff675a:    0092        ..      LSLS     r2,r2,#2
        0x1fff675c:    1851        Q.      ADDS     r1,r2,r1
        0x1fff675e:    69ca        .i      LDR      r2,[r1,#0x1c]
        0x1fff6760:    07b3        ..      LSLS     r3,r6,#30
        0x1fff6762:    0edb        ..      LSRS     r3,r3,#27
        0x1fff6764:    4098        .@      LSLS     r0,r0,r3
        0x1fff6766:    4382        .C      BICS     r2,r2,r0
        0x1fff6768:    2080        .       MOVS     r0,#0x80
        0x1fff676a:    4098        .@      LSLS     r0,r0,r3
        0x1fff676c:    4302        .C      ORRS     r2,r2,r0
        0x1fff676e:    61ca        .a      STR      r2,[r1,#0x1c]
        0x1fff6770:    2e00        ..      CMP      r6,#0
        0x1fff6772:    db03        ..      BLT      0x1fff677c ; uart_hw_init + 380
        0x1fff6774:    2001        .       MOVS     r0,#1
        0x1fff6776:    490b        .I      LDR      r1,[pc,#44] ; [0x1fff67a4] = 0xe000e100
        0x1fff6778:    40b0        .@      LSLS     r0,r0,r6
        0x1fff677a:    6008        .`      STR      r0,[r1,#0]
        0x1fff677c:    2000        .       MOVS     r0,#0
        0x1fff677e:    e794        ..      B        0x1fff66aa ; uart_hw_init + 170
    $d
        0x1fff6780:    40004000    .@.@    DCD    1073758208
        0x1fff6784:    40009000    ...@    DCD    1073778688
        0x1fff6788:    1fff74c4    .t..    DCD    536835268
        0x1fff678c:    1fff6d84    .m..    DCD    536833412
        0x1fff6790:    1fff3889    .8..    DCD    536819849
        0x1fff6794:    1fff03c0    ....    DCD    536806336
        0x1fff6798:    e000e400    ....    DCD    3758154752
        0x1fff679c:    1fff3845    E8..    DCD    536819781
        0x1fff67a0:    e000ed00    ....    DCD    3758157056
        0x1fff67a4:    e000e100    ....    DCD    3758153984
    $t
    i.uart_wakeup_process_0
    uart_wakeup_process_0
        0x1fff67a8:    b510        ..      PUSH     {r4,lr}
        0x1fff67aa:    2000        .       MOVS     r0,#0
        0x1fff67ac:    f7ffff28    ..(.    BL       uart_hw_init ; 0x1fff6600
        0x1fff67b0:    bd10        ..      POP      {r4,pc}
    i.uart_wakeup_process_1
    uart_wakeup_process_1
        0x1fff67b2:    b510        ..      PUSH     {r4,lr}
        0x1fff67b4:    2001        .       MOVS     r0,#1
        0x1fff67b6:    f7ffff23    ..#.    BL       uart_hw_init ; 0x1fff6600
        0x1fff67ba:    bd10        ..      POP      {r4,pc}
    i.wakeupProcess1
    wakeupProcess1
        0x1fff67bc:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff67be:    4c6e        nL      LDR      r4,[pc,#440] ; [0x1fff6978] = 0x1fff6dcc
        0x1fff67c0:    21ff        .!      MOVS     r1,#0xff
        0x1fff67c2:    68e0        .h      LDR      r0,[r4,#0xc]
        0x1fff67c4:    31d5        .1      ADDS     r1,r1,#0xd5
        0x1fff67c6:    4a6d        mJ      LDR      r2,[pc,#436] ; [0x1fff697c] = 0x1fff8000
        0x1fff67c8:    5809        .X      LDR      r1,[r1,r0]
        0x1fff67ca:    6011        .`      STR      r1,[r2,#0]
        0x1fff67cc:    3080        .0      ADDS     r0,r0,#0x80
        0x1fff67ce:    6880        .h      LDR      r0,[r0,#8]
        0x1fff67d0:    f3808808    ....    MSR      MSP,r0
        0x1fff67d4:    f7fbfa86    ....    BL       $Ven$TT$L$$drv_irq_init ; 0x1fff1ce4
        0x1fff67d8:    4869        iH      LDR      r0,[pc,#420] ; [0x1fff6980] = 0x1fff0a0c
        0x1fff67da:    496a        jI      LDR      r1,[pc,#424] ; [0x1fff6984] = 0x32141b6
        0x1fff67dc:    6800        .h      LDR      r0,[r0,#0]
        0x1fff67de:    2602        .&      MOVS     r6,#2
        0x1fff67e0:    4288        .B      CMP      r0,r1
        0x1fff67e2:    d006        ..      BEQ      0x1fff67f2 ; wakeupProcess1 + 54
        0x1fff67e4:    2000        .       MOVS     r0,#0
        0x1fff67e6:    f7fbf9bd    ....    BL       $Ven$TT$L$$set_sleep_flag ; 0x1fff1b64
        0x1fff67ea:    0770        p.      LSLS     r0,r6,#29
        0x1fff67ec:    6901        .i      LDR      r1,[r0,#0x10]
        0x1fff67ee:    43b1        .C      BICS     r1,r1,r6
        0x1fff67f0:    6101        .a      STR      r1,[r0,#0x10]
        0x1fff67f2:    2000        .       MOVS     r0,#0
        0x1fff67f4:    f7fbf9b6    ....    BL       $Ven$TT$L$$set_sleep_flag ; 0x1fff1b64
        0x1fff67f8:    f000f8ea    ....    BL       wakeup_init1 ; 0x1fff69d0
        0x1fff67fc:    4862        bH      LDR      r0,[pc,#392] ; [0x1fff6988] = 0x1fff0a49
        0x1fff67fe:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff6800:    f7fbfab8    ....    BL       $Ven$TT$L$$ll_hw_tx2rx_timing_config ; 0x1fff1d74
        0x1fff6804:    4d61        aM      LDR      r5,[pc,#388] ; [0x1fff698c] = 0x40001000
        0x1fff6806:    2700        .'      MOVS     r7,#0
        0x1fff6808:    61ef        .a      STR      r7,[r5,#0x1c]
        0x1fff680a:    61ee        .a      STR      r6,[r5,#0x1c]
        0x1fff680c:    4860        `H      LDR      r0,[pc,#384] ; [0x1fff6990] = 0x9c3
        0x1fff680e:    6168        ha      STR      r0,[r5,#0x14]
        0x1fff6810:    2001        .       MOVS     r0,#1
        0x1fff6812:    f7fbf9a1    ....    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b58
        0x1fff6816:    2003        .       MOVS     r0,#3
        0x1fff6818:    61e8        .a      STR      r0,[r5,#0x1c]
        0x1fff681a:    f7fbf985    ....    BL       $Ven$TT$L$$rtc_get_counter ; 0x1fff1b28
        0x1fff681e:    4606        .F      MOV      r6,r0
        0x1fff6820:    f7fbf8c8    ....    BL       $Ven$TT$L$$read_current_fine_time ; 0x1fff19b4
        0x1fff6824:    4605        .F      MOV      r5,r0
        0x1fff6826:    f7fbf97f    ....    BL       $Ven$TT$L$$rtc_get_counter ; 0x1fff1b28
        0x1fff682a:    495a        ZI      LDR      r1,[pc,#360] ; [0x1fff6994] = 0x1fff0a10
        0x1fff682c:    6008        .`      STR      r0,[r1,#0]
        0x1fff682e:    f7fffcb3    ....    BL       rf_phy_ini ; 0x1fff6198
        0x1fff6832:    4859        YH      LDR      r0,[pc,#356] ; [0x1fff6998] = 0x1fff0a34
        0x1fff6834:    6800        .h      LDR      r0,[r0,#0]
        0x1fff6836:    4286        .B      CMP      r6,r0
        0x1fff6838:    d901        ..      BLS      0x1fff683e ; wakeupProcess1 + 130
        0x1fff683a:    1a30        0.      SUBS     r0,r6,r0
        0x1fff683c:    e001        ..      B        0x1fff6842 ; wakeupProcess1 + 134
        0x1fff683e:    1a30        0.      SUBS     r0,r6,r0
        0x1fff6840:    1e40        @.      SUBS     r0,r0,#1
        0x1fff6842:    4956        VI      LDR      r1,[pc,#344] ; [0x1fff699c] = 0x3fffff
        0x1fff6844:    4288        .B      CMP      r0,r1
        0x1fff6846:    d900        ..      BLS      0x1fff684a ; wakeupProcess1 + 142
        0x1fff6848:    4008        .@      ANDS     r0,r0,r1
        0x1fff684a:    68e1        .h      LDR      r1,[r4,#0xc]
        0x1fff684c:    8d8a        ..      LDRH     r2,[r1,#0x2c]
        0x1fff684e:    07d2        ..      LSLS     r2,r2,#31
        0x1fff6850:    d009        ..      BEQ      0x1fff6866 ; wakeupProcess1 + 170
        0x1fff6852:    4a53        SJ      LDR      r2,[pc,#332] ; [0x1fff69a0] = 0x1fff0a38
        0x1fff6854:    0c03        ..      LSRS     r3,r0,#16
        0x1fff6856:    6812        .h      LDR      r2,[r2,#0]
        0x1fff6858:    b280        ..      UXTH     r0,r0
        0x1fff685a:    4353        SC      MULS     r3,r2,r3
        0x1fff685c:    4350        PC      MULS     r0,r2,r0
        0x1fff685e:    021b        ..      LSLS     r3,r3,#8
        0x1fff6860:    0a00        ..      LSRS     r0,r0,#8
        0x1fff6862:    1818        ..      ADDS     r0,r3,r0
        0x1fff6864:    e00b        ..      B        0x1fff687e ; wakeupProcess1 + 194
        0x1fff6866:    01c2        ..      LSLS     r2,r0,#7
        0x1fff6868:    0083        ..      LSLS     r3,r0,#2
        0x1fff686a:    1ad2        ..      SUBS     r2,r2,r3
        0x1fff686c:    0043        C.      LSLS     r3,r0,#1
        0x1fff686e:    1ad2        ..      SUBS     r2,r2,r3
        0x1fff6870:    00c3        ..      LSLS     r3,r0,#3
        0x1fff6872:    1818        ..      ADDS     r0,r3,r0
        0x1fff6874:    1c92        ..      ADDS     r2,r2,#2
        0x1fff6876:    3080        .0      ADDS     r0,r0,#0x80
        0x1fff6878:    0892        ..      LSRS     r2,r2,#2
        0x1fff687a:    0a40        @.      LSRS     r0,r0,#9
        0x1fff687c:    1810        ..      ADDS     r0,r2,r0
        0x1fff687e:    6520         e      STR      r0,[r4,#0x50]
        0x1fff6880:    31ff        .1      ADDS     r1,r1,#0xff
        0x1fff6882:    4848        HH      LDR      r0,[pc,#288] ; [0x1fff69a4] = 0x1fff0a1c
        0x1fff6884:    3101        .1      ADDS     r1,#1
        0x1fff6886:    6849        Ih      LDR      r1,[r1,#4]
        0x1fff6888:    6800        .h      LDR      r0,[r0,#0]
        0x1fff688a:    1809        ..      ADDS     r1,r1,r0
        0x1fff688c:    4846        FH      LDR      r0,[pc,#280] ; [0x1fff69a8] = 0x1fff0a20
        0x1fff688e:    6800        .h      LDR      r0,[r0,#0]
        0x1fff6890:    1a09        ..      SUBS     r1,r1,r0
        0x1fff6892:    483f        ?H      LDR      r0,[pc,#252] ; [0x1fff6990] = 0x9c3
        0x1fff6894:    1c40        @.      ADDS     r0,r0,#1
        0x1fff6896:    1809        ..      ADDS     r1,r1,r0
        0x1fff6898:    088a        ..      LSRS     r2,r1,#2
        0x1fff689a:    4844        DH      LDR      r0,[pc,#272] ; [0x1fff69ac] = 0x1fff0a24
        0x1fff689c:    078b        ..      LSLS     r3,r1,#30
        0x1fff689e:    4944        DI      LDR      r1,[pc,#272] ; [0x1fff69b0] = 0x1fff0a28
        0x1fff68a0:    6002        .`      STR      r2,[r0,#0]
        0x1fff68a2:    680e        .h      LDR      r6,[r1,#0]
        0x1fff68a4:    0f9b        ..      LSRS     r3,r3,#30
        0x1fff68a6:    199b        ..      ADDS     r3,r3,r6
        0x1fff68a8:    600b        .`      STR      r3,[r1,#0]
        0x1fff68aa:    2b04        .+      CMP      r3,#4
        0x1fff68ac:    d904        ..      BLS      0x1fff68b8 ; wakeupProcess1 + 252
        0x1fff68ae:    1c52        R.      ADDS     r2,r2,#1
        0x1fff68b0:    6002        .`      STR      r2,[r0,#0]
        0x1fff68b2:    079a        ..      LSLS     r2,r3,#30
        0x1fff68b4:    0f92        ..      LSRS     r2,r2,#30
        0x1fff68b6:    600a        .`      STR      r2,[r1,#0]
        0x1fff68b8:    6d21        !m      LDR      r1,[r4,#0x50]
        0x1fff68ba:    6800        .h      LDR      r0,[r0,#0]
        0x1fff68bc:    1808        ..      ADDS     r0,r1,r0
        0x1fff68be:    493d        =I      LDR      r1,[pc,#244] ; [0x1fff69b4] = 0x271
        0x1fff68c0:    f7fbfa16    ....    BL       $Ven$TT$L$$__aeabi_uidivmod ; 0x1fff1cf0
        0x1fff68c4:    4602        .F      MOV      r2,r0
        0x1fff68c6:    483c        <H      LDR      r0,[pc,#240] ; [0x1fff69b8] = 0x1fff0860
        0x1fff68c8:    4e3c        <N      LDR      r6,[pc,#240] ; [0x1fff69bc] = 0x1fff0a2c
        0x1fff68ca:    6803        .h      LDR      r3,[r0,#0]
        0x1fff68cc:    18d3        ..      ADDS     r3,r2,r3
        0x1fff68ce:    6003        .`      STR      r3,[r0,#0]
        0x1fff68d0:    6832        2h      LDR      r2,[r6,#0]
        0x1fff68d2:    188a        ..      ADDS     r2,r1,r2
        0x1fff68d4:    4937        7I      LDR      r1,[pc,#220] ; [0x1fff69b4] = 0x271
        0x1fff68d6:    6032        2`      STR      r2,[r6,#0]
        0x1fff68d8:    428a        .B      CMP      r2,r1
        0x1fff68da:    d905        ..      BLS      0x1fff68e8 ; wakeupProcess1 + 300
        0x1fff68dc:    1c5b        [.      ADDS     r3,r3,#1
        0x1fff68de:    6003        .`      STR      r3,[r0,#0]
        0x1fff68e0:    4610        .F      MOV      r0,r2
        0x1fff68e2:    f7fbfa05    ....    BL       $Ven$TT$L$$__aeabi_uidivmod ; 0x1fff1cf0
        0x1fff68e6:    6031        1`      STR      r1,[r6,#0]
        0x1fff68e8:    f7fbfa56    ..V.    BL       $Ven$TT$L$$osalTimeUpdate ; 0x1fff1d98
        0x1fff68ec:    4834        4H      LDR      r0,[pc,#208] ; [0x1fff69c0] = 0x1fff091c
        0x1fff68ee:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff68f0:    2800        .(      CMP      r0,#0
        0x1fff68f2:    d010        ..      BEQ      0x1fff6916 ; wakeupProcess1 + 346
        0x1fff68f4:    f7fbf85e    ..^.    BL       $Ven$TT$L$$read_current_fine_time ; 0x1fff19b4
        0x1fff68f8:    4a32        2J      LDR      r2,[pc,#200] ; [0x1fff69c4] = 0x1fff08e4
        0x1fff68fa:    6d21        !m      LDR      r1,[r4,#0x50]
        0x1fff68fc:    1b40        @.      SUBS     r0,r0,r5
        0x1fff68fe:    6812        .h      LDR      r2,[r2,#0]
        0x1fff6900:    180b        ..      ADDS     r3,r1,r0
        0x1fff6902:    4293        .B      CMP      r3,r2
        0x1fff6904:    d202        ..      BCS      0x1fff690c ; wakeupProcess1 + 336
        0x1fff6906:    1a51        Q.      SUBS     r1,r2,r1
        0x1fff6908:    1a09        ..      SUBS     r1,r1,r0
        0x1fff690a:    e001        ..      B        0x1fff6910 ; wakeupProcess1 + 340
        0x1fff690c:    217d        }!      MOVS     r1,#0x7d
        0x1fff690e:    00c9        ..      LSLS     r1,r1,#3
        0x1fff6910:    481e        .H      LDR      r0,[pc,#120] ; [0x1fff698c] = 0x40001000
        0x1fff6912:    f7fbfa47    ..G.    BL       $Ven$TT$L$$set_timer ; 0x1fff1da4
        0x1fff6916:    4e2c        ,N      LDR      r6,[pc,#176] ; [0x1fff69c8] = 0x1fff0b74
        0x1fff6918:    7a30        0z      LDRB     r0,[r6,#8]
        0x1fff691a:    2800        .(      CMP      r0,#0
        0x1fff691c:    d010        ..      BEQ      0x1fff6940 ; wakeupProcess1 + 388
        0x1fff691e:    f7fbf849    ..I.    BL       $Ven$TT$L$$read_current_fine_time ; 0x1fff19b4
        0x1fff6922:    6d21        !m      LDR      r1,[r4,#0x50]
        0x1fff6924:    1b40        @.      SUBS     r0,r0,r5
        0x1fff6926:    68f2        .h      LDR      r2,[r6,#0xc]
        0x1fff6928:    180b        ..      ADDS     r3,r1,r0
        0x1fff692a:    429a        .B      CMP      r2,r3
        0x1fff692c:    d902        ..      BLS      0x1fff6934 ; wakeupProcess1 + 376
        0x1fff692e:    1a51        Q.      SUBS     r1,r2,r1
        0x1fff6930:    1a09        ..      SUBS     r1,r1,r0
        0x1fff6932:    e000        ..      B        0x1fff6936 ; wakeupProcess1 + 378
        0x1fff6934:    4925        %I      LDR      r1,[pc,#148] ; [0x1fff69cc] = 0x5dc
        0x1fff6936:    4815        .H      LDR      r0,[pc,#84] ; [0x1fff698c] = 0x40001000
        0x1fff6938:    303c        <0      ADDS     r0,r0,#0x3c
        0x1fff693a:    f7fbfa33    ..3.    BL       $Ven$TT$L$$set_timer ; 0x1fff1da4
        0x1fff693e:    7237        7r      STRB     r7,[r6,#8]
        0x1fff6940:    78a0        .x      LDRB     r0,[r4,#2]
        0x1fff6942:    2800        .(      CMP      r0,#0
        0x1fff6944:    d010        ..      BEQ      0x1fff6968 ; wakeupProcess1 + 428
        0x1fff6946:    f7fbf835    ..5.    BL       $Ven$TT$L$$read_current_fine_time ; 0x1fff19b4
        0x1fff694a:    1b41        A.      SUBS     r1,r0,r5
        0x1fff694c:    6d22        "m      LDR      r2,[r4,#0x50]
        0x1fff694e:    480f        .H      LDR      r0,[pc,#60] ; [0x1fff698c] = 0x40001000
        0x1fff6950:    6963        ci      LDR      r3,[r4,#0x14]
        0x1fff6952:    1855        U.      ADDS     r5,r2,r1
        0x1fff6954:    3050        P0      ADDS     r0,r0,#0x50
        0x1fff6956:    429d        .B      CMP      r5,r3
        0x1fff6958:    d202        ..      BCS      0x1fff6960 ; wakeupProcess1 + 420
        0x1fff695a:    1a9a        ..      SUBS     r2,r3,r2
        0x1fff695c:    1a51        Q.      SUBS     r1,r2,r1
        0x1fff695e:    e000        ..      B        0x1fff6962 ; wakeupProcess1 + 422
        0x1fff6960:    491a        .I      LDR      r1,[pc,#104] ; [0x1fff69cc] = 0x5dc
        0x1fff6962:    f7fbfa1f    ....    BL       $Ven$TT$L$$set_timer ; 0x1fff1da4
        0x1fff6966:    70a7        .p      STRB     r7,[r4,#2]
        0x1fff6968:    f7fbfa22    ..".    BL       $Ven$TT$L$$app_wakeup_process ; 0x1fff1db0
        0x1fff696c:    2002        .       MOVS     r0,#2
        0x1fff696e:    f7fbf827    ..'.    BL       $Ven$TT$L$$ll_debug_output ; 0x1fff19c0
        0x1fff6972:    f7fbf8eb    ....    BL       $Ven$TT$L$$osal_start_system ; 0x1fff1b4c
        0x1fff6976:    bdf8        ..      POP      {r3-r7,pc}
    $d
        0x1fff6978:    1fff6dcc    .m..    DCD    536833484
        0x1fff697c:    1fff8000    ....    DCD    536838144
        0x1fff6980:    1fff0a0c    ....    DCD    536807948
        0x1fff6984:    032141b6    .A!.    DCD    52511158
        0x1fff6988:    1fff0a49    I...    DCD    536808009
        0x1fff698c:    40001000    ...@    DCD    1073745920
        0x1fff6990:    000009c3    ....    DCD    2499
        0x1fff6994:    1fff0a10    ....    DCD    536807952
        0x1fff6998:    1fff0a34    4...    DCD    536807988
        0x1fff699c:    003fffff    ..?.    DCD    4194303
        0x1fff69a0:    1fff0a38    8...    DCD    536807992
        0x1fff69a4:    1fff0a1c    ....    DCD    536807964
        0x1fff69a8:    1fff0a20     ...    DCD    536807968
        0x1fff69ac:    1fff0a24    $...    DCD    536807972
        0x1fff69b0:    1fff0a28    (...    DCD    536807976
        0x1fff69b4:    00000271    q...    DCD    625
        0x1fff69b8:    1fff0860    `...    DCD    536807520
        0x1fff69bc:    1fff0a2c    ,...    DCD    536807980
        0x1fff69c0:    1fff091c    ....    DCD    536807708
        0x1fff69c4:    1fff08e4    ....    DCD    536807652
        0x1fff69c8:    1fff0b74    t...    DCD    536808308
        0x1fff69cc:    000005dc    ....    DCD    1500
    $t
    i.wakeup_init1
    wakeup_init1
        0x1fff69d0:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff69d2:    2001        .       MOVS     r0,#1
        0x1fff69d4:    0781        ..      LSLS     r1,r0,#30
        0x1fff69d6:    6288        .b      STR      r0,[r1,#0x28]
        0x1fff69d8:    f7fcfdea    ....    BL       efuse_init ; 0x1fff35b0
        0x1fff69dc:    f7fcf9d2    ....    BL       __wdt_init ; 0x1fff2d84
        0x1fff69e0:    2001        .       MOVS     r0,#1
        0x1fff69e2:    9000        ..      STR      r0,[sp,#0]
        0x1fff69e4:    f7fdfce8    ....    BL       hal_system_clock_change_process ; 0x1fff43b8
        0x1fff69e8:    4e43        CN      LDR      r6,[pc,#268] ; [0x1fff6af8] = 0x1fff0a4a
        0x1fff69ea:    7830        0x      LDRB     r0,[r6,#0]
        0x1fff69ec:    4c43        CL      LDR      r4,[pc,#268] ; [0x1fff6afc] = 0x4000f040
        0x1fff69ee:    2802        .(      CMP      r0,#2
        0x1fff69f0:    d010        ..      BEQ      0x1fff6a14 ; wakeup_init1 + 68
        0x1fff69f2:    f7fbf899    ....    BL       $Ven$TT$L$$rtc_get_counter ; 0x1fff1b28
        0x1fff69f6:    4605        .F      MOV      r5,r0
        0x1fff69f8:    200f        .       MOVS     r0,#0xf
        0x1fff69fa:    f7fbf8ad    ....    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b58
        0x1fff69fe:    f7fcfbad    ....    BL       check_16MXtal_by_rcTracking ; 0x1fff315c
        0x1fff6a02:    2005        .       MOVS     r0,#5
        0x1fff6a04:    f7fbf8a8    ....    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b58
        0x1fff6a08:    7830        0x      LDRB     r0,[r6,#0]
        0x1fff6a0a:    2801        .(      CMP      r0,#1
        0x1fff6a0c:    d008        ..      BEQ      0x1fff6a20 ; wakeup_init1 + 80
        0x1fff6a0e:    f7fcfc4f    ..O.    BL       check_96MXtal_by_rcTracking ; 0x1fff32b0
        0x1fff6a12:    e01a        ..      B        0x1fff6a4a ; wakeup_init1 + 122
        0x1fff6a14:    483a        :H      LDR      r0,[pc,#232] ; [0x1fff6b00] = 0x1fff6dcc
        0x1fff6a16:    68c0        .h      LDR      r0,[r0,#0xc]
        0x1fff6a18:    6a00        .j      LDR      r0,[r0,#0x20]
        0x1fff6a1a:    f7fbf89d    ....    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b58
        0x1fff6a1e:    e024        $.      B        0x1fff6a6a ; wakeup_init1 + 154
        0x1fff6a20:    4836        6H      LDR      r0,[pc,#216] ; [0x1fff6afc] = 0x4000f040
        0x1fff6a22:    3840        @8      SUBS     r0,r0,#0x40
        0x1fff6a24:    6bc0        .k      LDR      r0,[r0,#0x3c]
        0x1fff6a26:    0740        @.      LSLS     r0,r0,#29
        0x1fff6a28:    0f40        @.      LSRS     r0,r0,#29
        0x1fff6a2a:    2801        .(      CMP      r0,#1
        0x1fff6a2c:    d102        ..      BNE      0x1fff6a34 ; wakeup_init1 + 100
        0x1fff6a2e:    2000        .       MOVS     r0,#0
        0x1fff6a30:    f7fcfcc6    ....    BL       clk_init ; 0x1fff33c0
        0x1fff6a34:    6860        `h      LDR      r0,[r4,#4]
        0x1fff6a36:    27ff        .'      MOVS     r7,#0xff
        0x1fff6a38:    3701        .7      ADDS     r7,#1
        0x1fff6a3a:    43b8        .C      BICS     r0,r0,r7
        0x1fff6a3c:    6060        ``      STR      r0,[r4,#4]
        0x1fff6a3e:    2002        .       MOVS     r0,#2
        0x1fff6a40:    f7fbf88a    ....    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b58
        0x1fff6a44:    6860        `h      LDR      r0,[r4,#4]
        0x1fff6a46:    4338        8C      ORRS     r0,r0,r7
        0x1fff6a48:    6060        ``      STR      r0,[r4,#4]
        0x1fff6a4a:    f7fbf86d    ..m.    BL       $Ven$TT$L$$rtc_get_counter ; 0x1fff1b28
        0x1fff6a4e:    42a8        .B      CMP      r0,r5
        0x1fff6a50:    d301        ..      BCC      0x1fff6a56 ; wakeup_init1 + 134
        0x1fff6a52:    1b40        @.      SUBS     r0,r0,r5
        0x1fff6a54:    e001        ..      B        0x1fff6a5a ; wakeup_init1 + 138
        0x1fff6a56:    1b40        @.      SUBS     r0,r0,r5
        0x1fff6a58:    1e40        @.      SUBS     r0,r0,#1
        0x1fff6a5a:    4929        )I      LDR      r1,[pc,#164] ; [0x1fff6b00] = 0x1fff6dcc
        0x1fff6a5c:    221e        ."      MOVS     r2,#0x1e
        0x1fff6a5e:    6348        Hc      STR      r0,[r1,#0x34]
        0x1fff6a60:    4350        PC      MULS     r0,r2,r0
        0x1fff6a62:    4a28        (J      LDR      r2,[pc,#160] ; [0x1fff6b04] = 0x672
        0x1fff6a64:    68c9        .h      LDR      r1,[r1,#0xc]
        0x1fff6a66:    1880        ..      ADDS     r0,r0,r2
        0x1fff6a68:    61c8        .a      STR      r0,[r1,#0x1c]
        0x1fff6a6a:    4928        (I      LDR      r1,[pc,#160] ; [0x1fff6b0c] = 0x40030000
        0x1fff6a6c:    4826        &H      LDR      r0,[pc,#152] ; [0x1fff6b08] = 0x3d068001
        0x1fff6a6e:    6008        .`      STR      r0,[r1,#0]
        0x1fff6a70:    4826        &H      LDR      r0,[pc,#152] ; [0x1fff6b0c] = 0x40030000
        0x1fff6a72:    4927        'I      LDR      r1,[pc,#156] ; [0x1fff6b10] = 0x834
        0x1fff6a74:    3080        .0      ADDS     r0,r0,#0x80
        0x1fff6a76:    63c1        .c      STR      r1,[r0,#0x3c]
        0x1fff6a78:    21ff        .!      MOVS     r1,#0xff
        0x1fff6a7a:    3141        A1      ADDS     r1,r1,#0x41
        0x1fff6a7c:    6241        Ab      STR      r1,[r0,#0x24]
        0x1fff6a7e:    7830        0x      LDRB     r0,[r6,#0]
        0x1fff6a80:    f7fcfc9e    ....    BL       clk_init ; 0x1fff33c0
        0x1fff6a84:    4923        #I      LDR      r1,[pc,#140] ; [0x1fff6b14] = 0x271
        0x1fff6a86:    4824        $H      LDR      r0,[pc,#144] ; [0x1fff6b18] = 0x40001014
        0x1fff6a88:    f7fbf98c    ....    BL       $Ven$TT$L$$set_timer ; 0x1fff1da4
        0x1fff6a8c:    4822        "H      LDR      r0,[pc,#136] ; [0x1fff6b18] = 0x40001014
        0x1fff6a8e:    2100        .!      MOVS     r1,#0
        0x1fff6a90:    3814        .8      SUBS     r0,r0,#0x14
        0x1fff6a92:    61c1        .a      STR      r1,[r0,#0x1c]
        0x1fff6a94:    2102        .!      MOVS     r1,#2
        0x1fff6a96:    61c1        .a      STR      r1,[r0,#0x1c]
        0x1fff6a98:    4920         I      LDR      r1,[pc,#128] ; [0x1fff6b1c] = 0x9c3
        0x1fff6a9a:    6141        Aa      STR      r1,[r0,#0x14]
        0x1fff6a9c:    2103        .!      MOVS     r1,#3
        0x1fff6a9e:    61c1        .a      STR      r1,[r0,#0x1c]
        0x1fff6aa0:    481d        .H      LDR      r0,[pc,#116] ; [0x1fff6b18] = 0x40001014
        0x1fff6aa2:    491f        .I      LDR      r1,[pc,#124] ; [0x1fff6b20] = 0x3fffff
        0x1fff6aa4:    3014        .0      ADDS     r0,r0,#0x14
        0x1fff6aa6:    f7fbf97d    ..}.    BL       $Ven$TT$L$$set_timer ; 0x1fff1da4
        0x1fff6aaa:    2004        .       MOVS     r0,#4
        0x1fff6aac:    f7fbff24    ..$.    BL       NVIC_EnableIRQ ; 0x1fff28f8
        0x1fff6ab0:    2014        .       MOVS     r0,#0x14
        0x1fff6ab2:    f7fbff21    ..!.    BL       NVIC_EnableIRQ ; 0x1fff28f8
        0x1fff6ab6:    2015        .       MOVS     r0,#0x15
        0x1fff6ab8:    f7fbff1e    ....    BL       NVIC_EnableIRQ ; 0x1fff28f8
        0x1fff6abc:    20ff        .       MOVS     r0,#0xff
        0x1fff6abe:    f7fbf8f9    ....    BL       $Ven$TT$L$$set_max_length ; 0x1fff1cb4
        0x1fff6ac2:    2001        .       MOVS     r0,#1
        0x1fff6ac4:    f7fbf97a    ..z.    BL       $Ven$TT$L$$ll_hw_set_empty_head ; 0x1fff1dbc
        0x1fff6ac8:    20ff        .       MOVS     r0,#0xff
        0x1fff6aca:    30f5        .0      ADDS     r0,r0,#0xf5
        0x1fff6acc:    f7fbf856    ..V.    BL       $Ven$TT$L$$ll_hw_set_rx_timeout_1st ; 0x1fff1b7c
        0x1fff6ad0:    2058        X       MOVS     r0,#0x58
        0x1fff6ad2:    f7faffc3    ....    BL       $Ven$TT$L$$ll_hw_set_rx_timeout ; 0x1fff1a5c
        0x1fff6ad6:    4813        .H      LDR      r0,[pc,#76] ; [0x1fff6b24] = 0x7530
        0x1fff6ad8:    f7fbf8da    ....    BL       $Ven$TT$L$$ll_hw_set_loop_timeout ; 0x1fff1c90
        0x1fff6adc:    9800        ..      LDR      r0,[sp,#0]
        0x1fff6ade:    f7fbf973    ..s.    BL       $Ven$TT$L$$ll_hw_set_timing ; 0x1fff1dc8
        0x1fff6ae2:    2007        .       MOVS     r0,#7
        0x1fff6ae4:    f7fbf910    ....    BL       $Ven$TT$L$$ll_hw_ign_rfifo ; 0x1fff1d08
        0x1fff6ae8:    69e0        .i      LDR      r0,[r4,#0x1c]
        0x1fff6aea:    490f        .I      LDR      r1,[pc,#60] ; [0x1fff6b28] = 0xfffefe00
        0x1fff6aec:    4008        .@      ANDS     r0,r0,r1
        0x1fff6aee:    30ff        .0      ADDS     r0,r0,#0xff
        0x1fff6af0:    3009        .0      ADDS     r0,r0,#9
        0x1fff6af2:    61e0        .a      STR      r0,[r4,#0x1c]
        0x1fff6af4:    bdf8        ..      POP      {r3-r7,pc}
    $d
        0x1fff6af6:    0000        ..      DCW    0
        0x1fff6af8:    1fff0a4a    J...    DCD    536808010
        0x1fff6afc:    4000f040    @..@    DCD    1073803328
        0x1fff6b00:    1fff6dcc    .m..    DCD    536833484
        0x1fff6b04:    00000672    r...    DCD    1650
        0x1fff6b08:    3d068001    ...=    DCD    1023836161
        0x1fff6b0c:    40030000    ...@    DCD    1073938432
        0x1fff6b10:    00000834    4...    DCD    2100
        0x1fff6b14:    00000271    q...    DCD    625
        0x1fff6b18:    40001014    ...@    DCD    1073745940
        0x1fff6b1c:    000009c3    ....    DCD    2499
        0x1fff6b20:    003fffff    ..?.    DCD    4194303
        0x1fff6b24:    00007530    0u..    DCD    30000
        0x1fff6b28:    fffefe00    ....    DCD    4294901248
    $t
    i.watchdog_config
    watchdog_config
        0x1fff6b2c:    b510        ..      PUSH     {r4,lr}
        0x1fff6b2e:    2807        .(      CMP      r0,#7
        0x1fff6b30:    d901        ..      BLS      0x1fff6b36 ; watchdog_config + 10
        0x1fff6b32:    2006        .       MOVS     r0,#6
        0x1fff6b34:    bd10        ..      POP      {r4,pc}
        0x1fff6b36:    4904        .I      LDR      r1,[pc,#16] ; [0x1fff6b48] = 0x1fff6d8c
        0x1fff6b38:    7008        .p      STRB     r0,[r1,#0]
        0x1fff6b3a:    f7fbfa35    ..5.    BL       hal_watchdog_init ; 0x1fff1fa8
        0x1fff6b3e:    4904        .I      LDR      r1,[pc,#16] ; [0x1fff6b50] = 0x1fff0340
        0x1fff6b40:    4802        .H      LDR      r0,[pc,#8] ; [0x1fff6b4c] = 0x1fff1fa9
        0x1fff6b42:    61c8        .a      STR      r0,[r1,#0x1c]
        0x1fff6b44:    2000        .       MOVS     r0,#0
        0x1fff6b46:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff6b48:    1fff6d8c    .m..    DCD    536833420
        0x1fff6b4c:    1fff1fa9    ....    DCD    536813481
        0x1fff6b50:    1fff0340    @...    DCD    536806208
    $d.realdata
    .constdata
        0x1fff6b54:    0801003b    ;...    DCD    134283323
        0x1fff6b58:    00030002    ....    DCD    196610
        0x1fff6b5c:    02060205    ....    DCD    33948165
        0x1fff6b60:    03080307    ....    DCD    50856711
        0x1fff6b64:    000a0309    ....    DCD    656137
        0x1fff6b68:    030d030c    ....    DCD    51184396
    .constdata
        0x1fff6b6c:    00000003    ....    DCD    3
        0x1fff6b70:    00000000    ....    DCD    0
        0x1fff6b74:    00000000    ....    DCD    0
    .constdata
    c_gpio_index
        0x1fff6b78:    03020100    ....    DCD    50462976
        0x1fff6b7c:    0b0a0907    ....    DCD    185207047
        0x1fff6b80:    11100f0e    ....    DCD    286265102
        0x1fff6b84:    18171412    ....    DCD    404165650
        0x1fff6b88:    1f1b1a19    ....    DCD    521869849
        0x1fff6b8c:    2120         !      DCW    8480
        0x1fff6b8e:    22          "       DCB    34
    c_gpio_pull
        0x1fff6b8f:    00          .       DCB    0
        0x1fff6b90:    05000102    ....    DCD    83886338
        0x1fff6b94:    07080004    ....    DCD    117964804
        0x1fff6b98:    000a0b00    ....    DCD    658176
        0x1fff6b9c:    1d001617    ....    DCD    486544919
        0x1fff6ba0:    0102011c    ....    DCD    16908572
        0x1fff6ba4:    01040501    ....    DCD    17040641
        0x1fff6ba8:    11010d0e    ....    DCD    285281550
        0x1fff6bac:    13140110    ....    DCD    320078096
        0x1fff6bb0:    01161701    ....    DCD    18224897
        0x1fff6bb4:    0202191a    ....    DCD    33691930
        0x1fff6bb8:    0a0b0201    ....    DCD    168493569
        0x1fff6bbc:    020d0e02    ....    DCD    34409986
        0x1fff6bc0:    14021011    ....    DCD    335679505
        0x1fff6bc4:    16170213    ....    DCD    370606611
        0x1fff6bc8:    03040503    ....    DCD    50595075
        0x1fff6bcc:    0b030708    ....    DCD    184747784
        0x1fff6bd0:    0d0e030a    ....    DCD    219022090
    retention_reg
        0x1fff6bd4:    0e000d00    ....    DCD    234884352
        0x1fff6bd8:    11001000    ....    DCD    285216768
        0x1fff6bdc:    14001300    ....    DCD    335549184
        0x1fff6be0:    08010701    ....    DCD    134285057
        0x1fff6be4:    0b010a01    ....    DCD    184617473
        0x1fff6be8:    1d011c01    ....    DCD    486611969
        0x1fff6bec:    05020402    ....    DCD    84018178
        0x1fff6bf0:    08020702    ....    DCD    134350594
        0x1fff6bf4:    1a021902    ....    DCD    436345090
        0x1fff6bf8:    1d021c02    ....    DCD    486677506
        0x1fff6bfc:    02030103    ....    DCD    33751299
        0x1fff6c00:    00001703    ....    DCD    5891
    .constdata
        0x1fff6c04:    ffff0605    ....    DCD    4294903301
        0x1fff6c08:    0001c200    ....    DCD    115200
        0x1fff6c0c:    00000001    ....    DCD    1
        0x1fff6c10:    00000000    ....    DCD    0
    .conststring
        0x1fff6c14:    5948505b    [PHY    DCD    1497911387
        0x1fff6c18:    47424420     DBG    DCD    1195525152
        0x1fff6c1c:    2074735d    ]st     DCD    544502621
        0x1fff6c20:    78323025    %02x    DCD    2016555045
        0x1fff6c24:    58545b20     [TX    DCD    1481923360
        0x1fff6c28:    7461645d    ]dat    DCD    1952539741
        0x1fff6c2c:    20642520     %d     DCD    543434016
        0x1fff6c30:    206b6361    ack     DCD    543908705
        0x1fff6c34:    72206425    %d r    DCD    1914725413
        0x1fff6c38:    25207974    ty %    DCD    622885236
        0x1fff6c3c:    615b2064    d [a    DCD    1633362020
        0x1fff6c40:    5d546b63    ckT]    DCD    1565813603
        0x1fff6c44:    25206425    %d %    DCD    622879781
        0x1fff6c48:    525b2064    d [R    DCD    1381703780
        0x1fff6c4c:    61645d58    X]da    DCD    1633967448
        0x1fff6c50:    64252074    t %d    DCD    1680154740
        0x1fff6c54:    6b636120     ack    DCD    1801675040
        0x1fff6c58:    63206425    %d c    DCD    1663067173
        0x1fff6c5c:    25206372    rc %    DCD    622879602
        0x1fff6c60:    67692064    d ig    DCD    1734942820
        0x1fff6c64:    6425206e    n %d    DCD    1680154734
        0x1fff6c68:    00000a20     ...    DCD    2592
        0x1fff6c6c:    5948505b    [PHY    DCD    1497911387
        0x1fff6c70:    6e69205d    ] in    DCD    1852383325
        0x1fff6c74:    64207469    it d    DCD    1679848553
        0x1fff6c78:    20656e6f    one     DCD    543518319
        0x1fff6c7c:    72206425    %d r    DCD    1914725413
        0x1fff6c80:    6e686366    fchn    DCD    1852334950
        0x1fff6c84:    41206425    %d A    DCD    1092641829
        0x1fff6c88:    416f7475    utoA    DCD    1097823349
        0x1fff6c8c:    25206b63    ck %    DCD    622881635
        0x1fff6c90:    57532064    d SW    DCD    1465065572
        0x1fff6c94:    7838255b    [%8x    DCD    2016945499
        0x1fff6c98:    5243205d    ] CR    DCD    1380130909
        0x1fff6c9c:    64255b43    C[%d    DCD    1680169795
        0x1fff6ca0:    78382520     %8x    DCD    2016945440
        0x1fff6ca4:    5457205d    ] WT    DCD    1414996061
        0x1fff6ca8:    7832255b    [%2x    DCD    2016552283
        0x1fff6cac:    00000a5d    ]...    DCD    2653
    .conststring
        0x1fff6cb0:    33323130    0123    DCD    858927408
        0x1fff6cb4:    37363534    4567    DCD    926299444
        0x1fff6cb8:    42413938    89AB    DCD    1111570744
        0x1fff6cbc:    46454443    CDEF    DCD    1178944579
        0x1fff6cc0:    4a494847    GHIJ    DCD    1246316615
        0x1fff6cc4:    4e4d4c4b    KLMN    DCD    1313688651
        0x1fff6cc8:    5251504f    OPQR    DCD    1381060687
        0x1fff6ccc:    56555453    STUV    DCD    1448432723
        0x1fff6cd0:    5a595857    WXYZ    DCD    1515804759
        0x1fff6cd4:    00000000    ....    DCD    0
        0x1fff6cd8:    33323130    0123    DCD    858927408
        0x1fff6cdc:    37363534    4567    DCD    926299444
        0x1fff6ce0:    62613938    89ab    DCD    1650538808
        0x1fff6ce4:    66656463    cdef    DCD    1717920867
        0x1fff6ce8:    6a696867    ghij    DCD    1785292903
        0x1fff6cec:    6e6d6c6b    klmn    DCD    1852664939
        0x1fff6cf0:    7271706f    opqr    DCD    1920036975
        0x1fff6cf4:    76757473    stuv    DCD    1987409011
        0x1fff6cf8:    7a797877    wxyz    DCD    2054781047
        0x1fff6cfc:    00000000    ....    DCD    0
    Region$$Table$$Base
        0x1fff6d00:    1fff0400    ....    DCD    536806400
        0x1fff6d04:    1fff6e40    @n..    DCD    536833600
        0x1fff6d08:    0000000c    ....    DCD    12
        0x1fff6d0c:    1fff2d64    d-..    DCD    536816996
        0x1fff6d10:    1fff6e40    @n..    DCD    536833600
        0x1fff6d14:    1fff0400    ....    DCD    536806400
        0x1fff6d18:    00000400    ....    DCD    1024
        0x1fff6d1c:    1fff18c4    ....    DCD    536811716
        0x1fff6d20:    1fff6e40    @n..    DCD    536833600
        0x1fff6d24:    1fff6e40    @n..    DCD    536833600
        0x1fff6d28:    00001018    ....    DCD    4120
        0x1fff6d2c:    1fff2d74    t-..    DCD    536817012
    _section_sram_code_
    Region$$Table$$Limit
    tasksArr
        0x1fff6d30:    1fff2ba5    .+..    DCD    536816549
        0x1fff6d34:    1fff2bf5    .+..    DCD    536816629
    _section_sram_code_
    tasksCnt
        0x1fff6d38:    00000002    ....    DCD    2

====================================

** Section #2

    Name        : ER_IROM1
    Type        : SHT_PROGBITS (0x00000001)
    Flags       : SHF_ALLOC + SHF_WRITE (0x00000003)
    Addr        : 0x1fff6d3c
    File Offset : 21816 (0x5538)
    Size        : 260 bytes (0x104)
    Link        : SHN_UNDEF
    Info        : 0
    Alignment   : 4
    Entry Size  : 0

    0x1fff6d3c:   00 00 00 00 00 00 00 00 00 00 00 00 ff ff 00 00    ................
    0x1fff6d4c:   00 00 00 00 00 00 4c 53 00 00 00 00 00 00 00 00    ......LS........
    0x1fff6d5c:   ff ff ff ff ff ff ff ff 00 00 00 00 00 00 00 00    ................
    0x1fff6d6c:   00 00 00 00 04 03 02 01 06 05 00 00 00 00 00 00    ................
    0x1fff6d7c:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff6d8c:   ff 00 00 00 02 00 00 00 88 21 28 00 59 02 e0 01    .........!(.Y...
    0x1fff6d9c:   00 00 00 00 00 00 00 00 00 00 00 00 d8 6c ff 1f    .............l..
    0x1fff6dac:   b0 6c ff 1f 00 00 00 00 3b 00 01 08 00 00 00 00    .l......;.......
    0x1fff6dbc:   00 00 00 00 00 00 00 00 00 00 00 00 40 78 7d 01    ............@x}.
    0x1fff6dcc:   00 00 00 02 00 00 02 00 00 00 00 00 00 00 00 00    ................
    0x1fff6ddc:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff6dec:   ff ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff6dfc:   01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff6e0c:   00 10 00 00 00 00 00 00 00 00 00 00 00 10 00 00    ................
    0x1fff6e1c:   00 00 00 00 02 05 09 0e 14 22 7e 00 00 1d 70 00    ........."~...p.
    0x1fff6e2c:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff6e3c:   00 00 00 00                                        ....


====================================

** Section #3

    Name        : ER_IROM1
    Type        : SHT_NOBITS (0x00000008)
    Flags       : SHF_ALLOC + SHF_WRITE (0x00000003)
    Addr        : 0x1fff6e40
    File Offset : 22076 (0x563c)
    Size        : 4120 bytes (0x1018)
    Link        : SHN_UNDEF
    Info        : 0
    Alignment   : 8
    Entry Size  : 0


====================================

** Section #4

    Name        : JUMP_TABLE
    Type        : SHT_PROGBITS (0x00000001)
    Flags       : SHF_ALLOC (0x00000002)
    Addr        : 0x1fff0000
    File Offset : 22076 (0x563c)
    Size        : 1024 bytes (0x400)
    Link        : SHN_UNDEF
    Info        : 0
    Alignment   : 4
    Entry Size  : 0

    0x1fff0000:   00 00 00 00 29 55 ff 1f 30 6d ff 1f 38 6d ff 1f    ....)U..0m..8m..
    0x1fff0010:   40 6d ff 1f 00 00 00 00 00 00 00 00 00 00 00 00    @m..............
    0x1fff0020:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0030:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0040:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0050:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0060:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0070:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0080:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0090:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff00a0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff00b0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff00c0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff00d0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff00e0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff00f0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0100:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0110:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0120:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0130:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0140:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0150:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0160:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0170:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0180:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0190:   7d 41 ff 1f 21 42 ff 1f 99 61 ff 1f 00 00 00 00    }A..!B...a......
    0x1fff01a0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff01b0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff01c0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff01d0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff01e0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff01f0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0200:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0210:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0220:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0230:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0240:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0250:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0260:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0270:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0280:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0290:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff02a0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff02b0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff02c0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff02d0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff02e0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff02f0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0300:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0310:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0320:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0330:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0340:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0350:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0360:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0370:   55 18 ff 1f 00 00 00 00 00 00 00 00 00 00 00 00    U...............
    0x1fff0380:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0390:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff03a0:   00 00 00 00 00 00 00 00 00 00 00 00 45 38 ff 1f    ............E8..
    0x1fff03b0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff03c0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff03d0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff03e0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff03f0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................


====================================

** Section #5

    Name        : GOLBAL_CONFIG
    Type        : SHT_PROGBITS (0x00000001)
    Flags       : SHF_ALLOC + SHF_WRITE (0x00000003)
    Addr        : 0x1fff0400
    File Offset : 23100 (0x5a3c)
    Size        : 12 bytes (0xc)
    Link        : SHN_UNDEF
    Info        : 0
    Alignment   : 4
    Entry Size  : 0

    Data section was compressed (Original size: 1024 bytes)

    0x1fff0400:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0410:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0420:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0430:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0440:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0450:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0460:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0470:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0480:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0490:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff04a0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff04b0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff04c0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff04d0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff04e0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff04f0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0500:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0510:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0520:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0530:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0540:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0550:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0560:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0570:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0580:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0590:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff05a0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff05b0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff05c0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff05d0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff05e0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff05f0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0600:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0610:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0620:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0630:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0640:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0650:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0660:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0670:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0680:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0690:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff06a0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff06b0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff06c0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff06d0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff06e0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff06f0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0700:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0710:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0720:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0730:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0740:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0750:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0760:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0770:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0780:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0790:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff07a0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff07b0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff07c0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff07d0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff07e0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff07f0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................


====================================

** Section #6

    Name        : .debug_abbrev
    Type        : SHT_PROGBITS (0x00000001)
    Flags       : None (0x00000000)
    Addr        : 0x00000000
    File Offset : 23112 (0x5a48)
    Size        : 1476 bytes (0x5c4)
    Link        : SHN_UNDEF
    Info        : 0
    Alignment   : 1
    Entry Size  : 0


====================================

** Section #7

    Name        : .debug_frame
    Type        : SHT_PROGBITS (0x00000001)
    Flags       : None (0x00000000)
    Addr        : 0x00000000
    File Offset : 24588 (0x600c)
    Size        : 5124 bytes (0x1404)
    Link        : SHN_UNDEF
    Info        : 0
    Alignment   : 1
    Entry Size  : 0


====================================

** Section #8

    Name        : .debug_info
    Type        : SHT_PROGBITS (0x00000001)
    Flags       : None (0x00000000)
    Addr        : 0x00000000
    File Offset : 29712 (0x7410)
    Size        : 82880 bytes (0x143c0)
    Link        : SHN_UNDEF
    Info        : 0
    Alignment   : 1
    Entry Size  : 0


====================================

** Section #9

    Name        : .debug_line
    Type        : SHT_PROGBITS (0x00000001)
    Flags       : None (0x00000000)
    Addr        : 0x00000000
    File Offset : 112592 (0x1b7d0)
    Size        : 25844 bytes (0x64f4)
    Link        : SHN_UNDEF
    Info        : 0
    Alignment   : 1
    Entry Size  : 0


====================================

** Section #10

    Name        : .debug_loc
    Type        : SHT_PROGBITS (0x00000001)
    Flags       : None (0x00000000)
    Addr        : 0x00000000
    File Offset : 138436 (0x21cc4)
    Size        : 9388 bytes (0x24ac)
    Link        : SHN_UNDEF
    Info        : 0
    Alignment   : 1
    Entry Size  : 0


====================================

** Section #11

    Name        : .debug_macinfo
    Type        : SHT_PROGBITS (0x00000001)
    Flags       : None (0x00000000)
    Addr        : 0x00000000
    File Offset : 147824 (0x24170)
    Size        : 48012 bytes (0xbb8c)
    Link        : SHN_UNDEF
    Info        : 0
    Alignment   : 1
    Entry Size  : 0


====================================

** Section #12

    Name        : .debug_pubnames
    Type        : SHT_PROGBITS (0x00000001)
    Flags       : None (0x00000000)
    Addr        : 0x00000000
    File Offset : 195836 (0x2fcfc)
    Size        : 4087 bytes (0xff7)
    Link        : SHN_UNDEF
    Info        : 0
    Alignment   : 1
    Entry Size  : 0


====================================

** Section #13

    Name        : .symtab
    Type        : SHT_SYMTAB (0x00000002)
    Flags       : None (0x00000000)
    Addr        : 0x00000000
    File Offset : 199924 (0x30cf4)
    Size        : 35152 bytes (0x8950)
    Link        : Section 14 (.strtab)
    Info        : Last local symbol no = 865
    Alignment   : 4
    Entry Size  : 16


====================================

** Section #14

    Name        : .strtab
    Type        : SHT_STRTAB (0x00000003)
    Flags       : None (0x00000000)
    Addr        : 0x00000000
    File Offset : 235076 (0x39644)
    Size        : 32652 bytes (0x7f8c)
    Link        : SHN_UNDEF
    Info        : 0
    Alignment   : 1
    Entry Size  : 0


====================================

** Section #15

    Name        : .note
    Type        : SHT_NOTE (0x00000007)
    Flags       : None (0x00000000)
    Addr        : 0x00000000
    File Offset : 267728 (0x415d0)
    Size        : 36 bytes (0x24)
    Link        : SHN_UNDEF
    Info        : 0
    Alignment   : 4
    Entry Size  : 0

        Section     Segment
    ====================================

              1           0
              2           0
              3           0
              4           1
              5           1

====================================

** Section #16

    Name        : .comment
    Type        : SHT_PROGBITS (0x00000001)
    Flags       : None (0x00000000)
    Addr        : 0x00000000
    File Offset : 267764 (0x415f4)
    Size        : 44140 bytes (0xac6c)
    Link        : SHN_UNDEF
    Info        : 0
    Alignment   : 1
    Entry Size  : 0

    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armlink [4d35ed]
    ArmLink --library_type=microlib --callgraph --load_addr_map_info --map --symbols --xref --diag_suppress=9931 --cpu=Cortex-M0 --list=.\Listings\smart_nrf.map --output=.\Objects\smart_nrf.axf --scatter=.\scatter_load.sct --keep=jump_table_base --keep=global_config --info=summarysizes,sizes,totals,unused,veneers

    C:\Keil_v5\ARM\ARMCC\Bin\..\lib\armlib\h_p.l
    C:\Keil_v5\ARM\ARMCC\Bin\..\lib\armlib\m_ps.l
    C:\Keil_v5\ARM\ARMCC\Bin\..\lib\armlib\mc_p.l
    C:\Keil_v5\ARM\ARMCC\Bin\..\lib\armlib\mf_p.l
    C:\Keil_v5\ARM\ARMCC\Bin\..\lib\armlib\vfpsupport.l
    Input Comments:
    
    main.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armlink [4d35ed]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=9931,9931,6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\main.o --vfemode=force

    Input Comments:
    
    p914c-3
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armasm [4d35ec]
    armasm --debug --diag_suppress=9931,9931,1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide 
    main.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: ArmCC [4d3637]
    ArmCC --c99 --split_sections --debug -c -o.\objects\main.o --depend=.\objects\main.d --cpu=Cortex-M0 --apcs=interwork -O3 --diag_suppress=9931 -I..\..\..\components\inc -I..\..\..\components\ble\controller -I..\..\..\components\osal\include -I..\..\..\components\common -I.\source -I..\..\..\components\libraries\crc16 -I..\..\..\components\driver\clock -I..\..\..\components\arch\cm0 -I..\..\..\components\driver\pwrmgr -I..\..\..\components\driver\uart -I..\..\..\components\driver\gpio -I..\..\..\components\driver\watchdog -I..\..\..\components\driver\timer -I..\..\..\misc -I..\..\..\components\driver\log -I..\..\..\components\ble\include -I..\..\..\components\aoxEst -I..\..\..\components\driver\flash -I..\..\..\components\libraries\fs -I..\..\..\components\profiles\prop_protocol -I..\..\..\components\libraries\crc16 -I..\..\..\components\libraries\cli -I.\RTE\_Target_1 -IC:\Users\jzli\AppData\Local\Arm\Packs\ARM\CMSIS\5.6.0\CMSIS\Core\Include -IC:\Users\jzli\AppData\Local\Arm\Packs\ARM\CMSIS\5.6.0\Device\ARM\ARMCM0\Include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -D__UVISION_VERSION=529 -D_RTE_ -DARMCM0 -DCFG_CP -DOSAL_CBTIMER_NUM_TASKS=1 -DHOST_CONFIG=4 -DHCI_TL_NONE=1 -DENABLE_LOG_ROM_=0 -DDEBUG_INFO=1 -DPHY_MODE_DEF=1 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -DCFG_SLEEP_MODE=PWR_MODE_SLEEP -DDEF_PPP_TRX_SUPPORT=2 -DDEF_PPP_AUTOACK_SUPPORT=1 -DDEF_PPP_NRF_SUPPORT=0 -DDEF_PPP_MESH_SUPPORT=0 --omf_browse=.\objects\main.crf main.c
    
    
    osal_propprotocol.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: ArmCC [4d3637]
    ArmCC --c99 --split_sections --debug -c -o.\objects\osal_propprotocol.o --depend=.\objects\osal_propprotocol.d --cpu=Cortex-M0 --apcs=interwork -O3 --diag_suppress=9931 -I..\..\..\components\inc -I..\..\..\components\ble\controller -I..\..\..\components\osal\include -I..\..\..\components\common -I.\source -I..\..\..\components\libraries\crc16 -I..\..\..\components\driver\clock -I..\..\..\components\arch\cm0 -I..\..\..\components\driver\pwrmgr -I..\..\..\components\driver\uart -I..\..\..\components\driver\gpio -I..\..\..\components\driver\watchdog -I..\..\..\components\driver\timer -I..\..\..\misc -I..\..\..\components\driver\log -I..\..\..\components\ble\include -I..\..\..\components\aoxEst -I..\..\..\components\driver\flash -I..\..\..\components\libraries\fs -I..\..\..\components\profiles\prop_protocol -I..\..\..\components\libraries\crc16 -I..\..\..\components\libraries\cli -I.\RTE\_Target_1 -IC:\Users\jzli\AppData\Local\Arm\Packs\ARM\CMSIS\5.6.0\CMSIS\Core\Include -IC:\Users\jzli\AppData\Local\Arm\Packs\ARM\CMSIS\5.6.0\Device\ARM\ARMCM0\Include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -D__UVISION_VERSION=529 -D_RTE_ -DARMCM0 -DCFG_CP -DOSAL_CBTIMER_NUM_TASKS=1 -DHOST_CONFIG=4 -DHCI_TL_NONE=1 -DENABLE_LOG_ROM_=0 -DDEBUG_INFO=1 -DPHY_MODE_DEF=1 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -DCFG_SLEEP_MODE=PWR_MODE_SLEEP -DDEF_PPP_TRX_SUPPORT=2 -DDEF_PPP_AUTOACK_SUPPORT=1 -DDEF_PPP_NRF_SUPPORT=0 -DDEF_PPP_MESH_SUPPORT=0 --omf_browse=.\objects\osal_propprotocol.crf source\OSAL_PropProtocol.c
    
    propprotocol_main.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armlink [4d35ed]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=9931,9931,6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\propprotocol_main.o --vfemode=force

    Input Comments:
    
    pbef0-3
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armasm [4d35ec]
    armasm --debug --diag_suppress=9931,9931,1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide 
    propprotocol_main.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: ArmCC [4d3637]
    ArmCC --c99 --split_sections --debug -c -o.\objects\propprotocol_main.o --depend=.\objects\propprotocol_main.d --cpu=Cortex-M0 --apcs=interwork -O3 --diag_suppress=9931 -I..\..\..\components\inc -I..\..\..\components\ble\controller -I..\..\..\components\osal\include -I..\..\..\components\common -I.\source -I..\..\..\components\libraries\crc16 -I..\..\..\components\driver\clock -I..\..\..\components\arch\cm0 -I..\..\..\components\driver\pwrmgr -I..\..\..\components\driver\uart -I..\..\..\components\driver\gpio -I..\..\..\components\driver\watchdog -I..\..\..\components\driver\timer -I..\..\..\misc -I..\..\..\components\driver\log -I..\..\..\components\ble\include -I..\..\..\components\aoxEst -I..\..\..\components\driver\flash -I..\..\..\components\libraries\fs -I..\..\..\components\profiles\prop_protocol -I..\..\..\components\libraries\crc16 -I..\..\..\components\libraries\cli -I.\RTE\_Target_1 -IC:\Users\jzli\AppData\Local\Arm\Packs\ARM\CMSIS\5.6.0\CMSIS\Core\Include -IC:\Users\jzli\AppData\Local\Arm\Packs\ARM\CMSIS\5.6.0\Device\ARM\ARMCM0\Include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -D__UVISION_VERSION=529 -D_RTE_ -DARMCM0 -DCFG_CP -DOSAL_CBTIMER_NUM_TASKS=1 -DHOST_CONFIG=4 -DHCI_TL_NONE=1 -DENABLE_LOG_ROM_=0 -DDEBUG_INFO=1 -DPHY_MODE_DEF=1 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -DCFG_SLEEP_MODE=PWR_MODE_SLEEP -DDEF_PPP_TRX_SUPPORT=2 -DDEF_PPP_AUTOACK_SUPPORT=1 -DDEF_PPP_NRF_SUPPORT=0 -DDEF_PPP_MESH_SUPPORT=0 --omf_browse=.\objects\propprotocol_main.crf source\PropProtocol_main.c
    
    
    
    
    
    prop_protocol.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armlink [4d35ed]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=9931,9931,6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\prop_protocol.o --vfemode=force

    Input Comments:
    
    p93a4-3
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armasm [4d35ec]
    armasm --debug --diag_suppress=9931,9931,1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide 
    prop_protocol.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: ArmCC [4d3637]
    ArmCC --c99 --split_sections --debug -c -o.\objects\prop_protocol.o --depend=.\objects\prop_protocol.d --cpu=Cortex-M0 --apcs=interwork -O3 --diag_suppress=9931 -I..\..\..\components\inc -I..\..\..\components\ble\controller -I..\..\..\components\osal\include -I..\..\..\components\common -I.\source -I..\..\..\components\libraries\crc16 -I..\..\..\components\driver\clock -I..\..\..\components\arch\cm0 -I..\..\..\components\driver\pwrmgr -I..\..\..\components\driver\uart -I..\..\..\components\driver\gpio -I..\..\..\components\driver\watchdog -I..\..\..\components\driver\timer -I..\..\..\misc -I..\..\..\components\driver\log -I..\..\..\components\ble\include -I..\..\..\components\aoxEst -I..\..\..\components\driver\flash -I..\..\..\components\libraries\fs -I..\..\..\components\profiles\prop_protocol -I..\..\..\components\libraries\crc16 -I..\..\..\components\libraries\cli -I.\RTE\_Target_1 -IC:\Users\jzli\AppData\Local\Arm\Packs\ARM\CMSIS\5.6.0\CMSIS\Core\Include -IC:\Users\jzli\AppData\Local\Arm\Packs\ARM\CMSIS\5.6.0\Device\ARM\ARMCM0\Include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -D__UVISION_VERSION=529 -D_RTE_ -DARMCM0 -DCFG_CP -DOSAL_CBTIMER_NUM_TASKS=1 -DHOST_CONFIG=4 -DHCI_TL_NONE=1 -DENABLE_LOG_ROM_=0 -DDEBUG_INFO=1 -DPHY_MODE_DEF=1 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -DCFG_SLEEP_MODE=PWR_MODE_SLEEP -DDEF_PPP_TRX_SUPPORT=2 -DDEF_PPP_AUTOACK_SUPPORT=1 -DDEF_PPP_NRF_SUPPORT=0 -DDEF_PPP_MESH_SUPPORT=0 --omf_browse=.\objects\prop_protocol.crf ..\..\..\components\profiles\prop_protocol\prop_protocol.c
    
    
    
    
    
    uart.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armlink [4d35ed]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=9931,9931,6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\uart.o --vfemode=force

    Input Comments:
    
    p5ad8-3
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armasm [4d35ec]
    armasm --debug --diag_suppress=9931,9931,1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide 
    uart.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: ArmCC [4d3637]
    ArmCC --c99 --split_sections --debug -c -o.\objects\uart.o --depend=.\objects\uart.d --cpu=Cortex-M0 --apcs=interwork -O3 --diag_suppress=9931 -I..\..\..\components\inc -I..\..\..\components\ble\controller -I..\..\..\components\osal\include -I..\..\..\components\common -I.\source -I..\..\..\components\libraries\crc16 -I..\..\..\components\driver\clock -I..\..\..\components\arch\cm0 -I..\..\..\components\driver\pwrmgr -I..\..\..\components\driver\uart -I..\..\..\components\driver\gpio -I..\..\..\components\driver\watchdog -I..\..\..\components\driver\timer -I..\..\..\misc -I..\..\..\components\driver\log -I..\..\..\components\ble\include -I..\..\..\components\aoxEst -I..\..\..\components\driver\flash -I..\..\..\components\libraries\fs -I..\..\..\components\profiles\prop_protocol -I..\..\..\components\libraries\crc16 -I..\..\..\components\libraries\cli -I.\RTE\_Target_1 -IC:\Users\jzli\AppData\Local\Arm\Packs\ARM\CMSIS\5.6.0\CMSIS\Core\Include -IC:\Users\jzli\AppData\Local\Arm\Packs\ARM\CMSIS\5.6.0\Device\ARM\ARMCM0\Include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -D__UVISION_VERSION=529 -D_RTE_ -DARMCM0 -DCFG_CP -DOSAL_CBTIMER_NUM_TASKS=1 -DHOST_CONFIG=4 -DHCI_TL_NONE=1 -DENABLE_LOG_ROM_=0 -DDEBUG_INFO=1 -DPHY_MODE_DEF=1 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -DCFG_SLEEP_MODE=PWR_MODE_SLEEP -DDEF_PPP_TRX_SUPPORT=2 -DDEF_PPP_AUTOACK_SUPPORT=1 -DDEF_PPP_NRF_SUPPORT=0 -DDEF_PPP_MESH_SUPPORT=0 --omf_browse=.\objects\uart.crf ..\..\..\components\driver\uart\uart.c
    
    
    clock.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armlink [4d35ed]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=9931,9931,6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\clock.o --vfemode=force

    Input Comments:
    
    pba08-3
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armasm [4d35ec]
    armasm --debug --diag_suppress=9931,9931,1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide 
    clock.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: ArmCC [4d3637]
    ArmCC --c99 --split_sections --debug -c -o.\objects\clock.o --depend=.\objects\clock.d --cpu=Cortex-M0 --apcs=interwork -O3 --diag_suppress=9931 -I..\..\..\components\inc -I..\..\..\components\ble\controller -I..\..\..\components\osal\include -I..\..\..\components\common -I.\source -I..\..\..\components\libraries\crc16 -I..\..\..\components\driver\clock -I..\..\..\components\arch\cm0 -I..\..\..\components\driver\pwrmgr -I..\..\..\components\driver\uart -I..\..\..\components\driver\gpio -I..\..\..\components\driver\watchdog -I..\..\..\components\driver\timer -I..\..\..\misc -I..\..\..\components\driver\log -I..\..\..\components\ble\include -I..\..\..\components\aoxEst -I..\..\..\components\driver\flash -I..\..\..\components\libraries\fs -I..\..\..\components\profiles\prop_protocol -I..\..\..\components\libraries\crc16 -I..\..\..\components\libraries\cli -I.\RTE\_Target_1 -IC:\Users\jzli\AppData\Local\Arm\Packs\ARM\CMSIS\5.6.0\CMSIS\Core\Include -IC:\Users\jzli\AppData\Local\Arm\Packs\ARM\CMSIS\5.6.0\Device\ARM\ARMCM0\Include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -D__UVISION_VERSION=529 -D_RTE_ -DARMCM0 -DCFG_CP -DOSAL_CBTIMER_NUM_TASKS=1 -DHOST_CONFIG=4 -DHCI_TL_NONE=1 -DENABLE_LOG_ROM_=0 -DDEBUG_INFO=1 -DPHY_MODE_DEF=1 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -DCFG_SLEEP_MODE=PWR_MODE_SLEEP -DDEF_PPP_TRX_SUPPORT=2 -DDEF_PPP_AUTOACK_SUPPORT=1 -DDEF_PPP_NRF_SUPPORT=0 -DDEF_PPP_MESH_SUPPORT=0 --omf_browse=.\objects\clock.crf ..\..\..\components\driver\clock\clock.c
    
    
    
    gpio.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armlink [4d35ed]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=9931,9931,6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\gpio.o --vfemode=force

    Input Comments:
    
    p94cc-3
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armasm [4d35ec]
    armasm --debug --diag_suppress=9931,9931,1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide 
    gpio.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: ArmCC [4d3637]
    ArmCC --c99 --split_sections --debug -c -o.\objects\gpio.o --depend=.\objects\gpio.d --cpu=Cortex-M0 --apcs=interwork -O3 --diag_suppress=9931 -I..\..\..\components\inc -I..\..\..\components\ble\controller -I..\..\..\components\osal\include -I..\..\..\components\common -I.\source -I..\..\..\components\libraries\crc16 -I..\..\..\components\driver\clock -I..\..\..\components\arch\cm0 -I..\..\..\components\driver\pwrmgr -I..\..\..\components\driver\uart -I..\..\..\components\driver\gpio -I..\..\..\components\driver\watchdog -I..\..\..\components\driver\timer -I..\..\..\misc -I..\..\..\components\driver\log -I..\..\..\components\ble\include -I..\..\..\components\aoxEst -I..\..\..\components\driver\flash -I..\..\..\components\libraries\fs -I..\..\..\components\profiles\prop_protocol -I..\..\..\components\libraries\crc16 -I..\..\..\components\libraries\cli -I.\RTE\_Target_1 -IC:\Users\jzli\AppData\Local\Arm\Packs\ARM\CMSIS\5.6.0\CMSIS\Core\Include -IC:\Users\jzli\AppData\Local\Arm\Packs\ARM\CMSIS\5.6.0\Device\ARM\ARMCM0\Include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -D__UVISION_VERSION=529 -D_RTE_ -DARMCM0 -DCFG_CP -DOSAL_CBTIMER_NUM_TASKS=1 -DHOST_CONFIG=4 -DHCI_TL_NONE=1 -DENABLE_LOG_ROM_=0 -DDEBUG_INFO=1 -DPHY_MODE_DEF=1 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -DCFG_SLEEP_MODE=PWR_MODE_SLEEP -DDEF_PPP_TRX_SUPPORT=2 -DDEF_PPP_AUTOACK_SUPPORT=1 -DDEF_PPP_NRF_SUPPORT=0 -DDEF_PPP_MESH_SUPPORT=0 --omf_browse=.\objects\gpio.crf ..\..\..\components\driver\gpio\gpio.c
    
    
    timer.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armlink [4d35ed]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=9931,9931,6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\timer.o --vfemode=force

    Input Comments:
    
    p8964-3
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armasm [4d35ec]
    armasm --debug --diag_suppress=9931,9931,1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide 
    timer.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: ArmCC [4d3637]
    ArmCC --c99 --split_sections --debug -c -o.\objects\timer.o --depend=.\objects\timer.d --cpu=Cortex-M0 --apcs=interwork -O3 --diag_suppress=9931 -I..\..\..\components\inc -I..\..\..\components\ble\controller -I..\..\..\components\osal\include -I..\..\..\components\common -I.\source -I..\..\..\components\libraries\crc16 -I..\..\..\components\driver\clock -I..\..\..\components\arch\cm0 -I..\..\..\components\driver\pwrmgr -I..\..\..\components\driver\uart -I..\..\..\components\driver\gpio -I..\..\..\components\driver\watchdog -I..\..\..\components\driver\timer -I..\..\..\misc -I..\..\..\components\driver\log -I..\..\..\components\ble\include -I..\..\..\components\aoxEst -I..\..\..\components\driver\flash -I..\..\..\components\libraries\fs -I..\..\..\components\profiles\prop_protocol -I..\..\..\components\libraries\crc16 -I..\..\..\components\libraries\cli -I.\RTE\_Target_1 -IC:\Users\jzli\AppData\Local\Arm\Packs\ARM\CMSIS\5.6.0\CMSIS\Core\Include -IC:\Users\jzli\AppData\Local\Arm\Packs\ARM\CMSIS\5.6.0\Device\ARM\ARMCM0\Include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -D__UVISION_VERSION=529 -D_RTE_ -DARMCM0 -DCFG_CP -DOSAL_CBTIMER_NUM_TASKS=1 -DHOST_CONFIG=4 -DHCI_TL_NONE=1 -DENABLE_LOG_ROM_=0 -DDEBUG_INFO=1 -DPHY_MODE_DEF=1 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -DCFG_SLEEP_MODE=PWR_MODE_SLEEP -DDEF_PPP_TRX_SUPPORT=2 -DDEF_PPP_AUTOACK_SUPPORT=1 -DDEF_PPP_NRF_SUPPORT=0 -DDEF_PPP_MESH_SUPPORT=0 --omf_browse=.\objects\timer.crf ..\..\..\components\driver\timer\timer.c
    
    
    
    watchdog.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armlink [4d35ed]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=9931,9931,6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\watchdog.o --vfemode=force

    Input Comments:
    
    p162c-3
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armasm [4d35ec]
    armasm --debug --diag_suppress=9931,9931,1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide 
    watchdog.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: ArmCC [4d3637]
    ArmCC --c99 --split_sections --debug -c -o.\objects\watchdog.o --depend=.\objects\watchdog.d --cpu=Cortex-M0 --apcs=interwork -O3 --diag_suppress=9931 -I..\..\..\components\inc -I..\..\..\components\ble\controller -I..\..\..\components\osal\include -I..\..\..\components\common -I.\source -I..\..\..\components\libraries\crc16 -I..\..\..\components\driver\clock -I..\..\..\components\arch\cm0 -I..\..\..\components\driver\pwrmgr -I..\..\..\components\driver\uart -I..\..\..\components\driver\gpio -I..\..\..\components\driver\watchdog -I..\..\..\components\driver\timer -I..\..\..\misc -I..\..\..\components\driver\log -I..\..\..\components\ble\include -I..\..\..\components\aoxEst -I..\..\..\components\driver\flash -I..\..\..\components\libraries\fs -I..\..\..\components\profiles\prop_protocol -I..\..\..\components\libraries\crc16 -I..\..\..\components\libraries\cli -I.\RTE\_Target_1 -IC:\Users\jzli\AppData\Local\Arm\Packs\ARM\CMSIS\5.6.0\CMSIS\Core\Include -IC:\Users\jzli\AppData\Local\Arm\Packs\ARM\CMSIS\5.6.0\Device\ARM\ARMCM0\Include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -D__UVISION_VERSION=529 -D_RTE_ -DARMCM0 -DCFG_CP -DOSAL_CBTIMER_NUM_TASKS=1 -DHOST_CONFIG=4 -DHCI_TL_NONE=1 -DENABLE_LOG_ROM_=0 -DDEBUG_INFO=1 -DPHY_MODE_DEF=1 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -DCFG_SLEEP_MODE=PWR_MODE_SLEEP -DDEF_PPP_TRX_SUPPORT=2 -DDEF_PPP_AUTOACK_SUPPORT=1 -DDEF_PPP_NRF_SUPPORT=0 -DDEF_PPP_MESH_SUPPORT=0 --omf_browse=.\objects\watchdog.crf ..\..\..\components\driver\watchdog\watchdog.c
    
    
    pwrmgr.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armlink [4d35ed]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=9931,9931,6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\pwrmgr.o --vfemode=force

    Input Comments:
    
    p2a5c-3
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armasm [4d35ec]
    armasm --debug --diag_suppress=9931,9931,1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide 
    pwrmgr.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: ArmCC [4d3637]
    ArmCC --c99 --split_sections --debug -c -o.\objects\pwrmgr.o --depend=.\objects\pwrmgr.d --cpu=Cortex-M0 --apcs=interwork -O3 --diag_suppress=9931 -I..\..\..\components\inc -I..\..\..\components\ble\controller -I..\..\..\components\osal\include -I..\..\..\components\common -I.\source -I..\..\..\components\libraries\crc16 -I..\..\..\components\driver\clock -I..\..\..\components\arch\cm0 -I..\..\..\components\driver\pwrmgr -I..\..\..\components\driver\uart -I..\..\..\components\driver\gpio -I..\..\..\components\driver\watchdog -I..\..\..\components\driver\timer -I..\..\..\misc -I..\..\..\components\driver\log -I..\..\..\components\ble\include -I..\..\..\components\aoxEst -I..\..\..\components\driver\flash -I..\..\..\components\libraries\fs -I..\..\..\components\profiles\prop_protocol -I..\..\..\components\libraries\crc16 -I..\..\..\components\libraries\cli -I.\RTE\_Target_1 -IC:\Users\jzli\AppData\Local\Arm\Packs\ARM\CMSIS\5.6.0\CMSIS\Core\Include -IC:\Users\jzli\AppData\Local\Arm\Packs\ARM\CMSIS\5.6.0\Device\ARM\ARMCM0\Include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -D__UVISION_VERSION=529 -D_RTE_ -DARMCM0 -DCFG_CP -DOSAL_CBTIMER_NUM_TASKS=1 -DHOST_CONFIG=4 -DHCI_TL_NONE=1 -DENABLE_LOG_ROM_=0 -DDEBUG_INFO=1 -DPHY_MODE_DEF=1 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -DCFG_SLEEP_MODE=PWR_MODE_SLEEP -DDEF_PPP_TRX_SUPPORT=2 -DDEF_PPP_AUTOACK_SUPPORT=1 -DDEF_PPP_NRF_SUPPORT=0 -DDEF_PPP_MESH_SUPPORT=0 --omf_browse=.\objects\pwrmgr.crf ..\..\..\components\driver\pwrmgr\pwrmgr.c
    
    
    
    
    my_printf.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armlink [4d35ed]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=9931,9931,6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\my_printf.o --vfemode=force

    Input Comments:
    
    pa16c-3
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armasm [4d35ec]
    armasm --debug --diag_suppress=9931,9931,1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide 
    my_printf.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: ArmCC [4d3637]
    ArmCC --c99 --split_sections --debug -c -o.\objects\my_printf.o --depend=.\objects\my_printf.d --cpu=Cortex-M0 --apcs=interwork -O3 --diag_suppress=9931 -I..\..\..\components\inc -I..\..\..\components\ble\controller -I..\..\..\components\osal\include -I..\..\..\components\common -I.\source -I..\..\..\components\libraries\crc16 -I..\..\..\components\driver\clock -I..\..\..\components\arch\cm0 -I..\..\..\components\driver\pwrmgr -I..\..\..\components\driver\uart -I..\..\..\components\driver\gpio -I..\..\..\components\driver\watchdog -I..\..\..\components\driver\timer -I..\..\..\misc -I..\..\..\components\driver\log -I..\..\..\components\ble\include -I..\..\..\components\aoxEst -I..\..\..\components\driver\flash -I..\..\..\components\libraries\fs -I..\..\..\components\profiles\prop_protocol -I..\..\..\components\libraries\crc16 -I..\..\..\components\libraries\cli -I.\RTE\_Target_1 -IC:\Users\jzli\AppData\Local\Arm\Packs\ARM\CMSIS\5.6.0\CMSIS\Core\Include -IC:\Users\jzli\AppData\Local\Arm\Packs\ARM\CMSIS\5.6.0\Device\ARM\ARMCM0\Include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -D__UVISION_VERSION=529 -D_RTE_ -DARMCM0 -DCFG_CP -DOSAL_CBTIMER_NUM_TASKS=1 -DHOST_CONFIG=4 -DHCI_TL_NONE=1 -DENABLE_LOG_ROM_=0 -DDEBUG_INFO=1 -DPHY_MODE_DEF=1 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -DCFG_SLEEP_MODE=PWR_MODE_SLEEP -DDEF_PPP_TRX_SUPPORT=2 -DDEF_PPP_AUTOACK_SUPPORT=1 -DDEF_PPP_NRF_SUPPORT=0 -DDEF_PPP_MESH_SUPPORT=0 --omf_browse=.\objects\my_printf.crf ..\..\..\components\driver\log\my_printf.c
    
    
    
    
    
    flash.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armlink [4d35ed]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=9931,9931,6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\flash.o --vfemode=force

    Input Comments:
    
    pbbb0-3
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armasm [4d35ec]
    armasm --debug --diag_suppress=9931,9931,1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide 
    flash.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: ArmCC [4d3637]
    ArmCC --c99 --split_sections --debug -c -o.\objects\flash.o --depend=.\objects\flash.d --cpu=Cortex-M0 --apcs=interwork -O3 --diag_suppress=9931 -I..\..\..\components\inc -I..\..\..\components\ble\controller -I..\..\..\components\osal\include -I..\..\..\components\common -I.\source -I..\..\..\components\libraries\crc16 -I..\..\..\components\driver\clock -I..\..\..\components\arch\cm0 -I..\..\..\components\driver\pwrmgr -I..\..\..\components\driver\uart -I..\..\..\components\driver\gpio -I..\..\..\components\driver\watchdog -I..\..\..\components\driver\timer -I..\..\..\misc -I..\..\..\components\driver\log -I..\..\..\components\ble\include -I..\..\..\components\aoxEst -I..\..\..\components\driver\flash -I..\..\..\components\libraries\fs -I..\..\..\components\profiles\prop_protocol -I..\..\..\components\libraries\crc16 -I..\..\..\components\libraries\cli -I.\RTE\_Target_1 -IC:\Users\jzli\AppData\Local\Arm\Packs\ARM\CMSIS\5.6.0\CMSIS\Core\Include -IC:\Users\jzli\AppData\Local\Arm\Packs\ARM\CMSIS\5.6.0\Device\ARM\ARMCM0\Include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -D__UVISION_VERSION=529 -D_RTE_ -DARMCM0 -DCFG_CP -DOSAL_CBTIMER_NUM_TASKS=1 -DHOST_CONFIG=4 -DHCI_TL_NONE=1 -DENABLE_LOG_ROM_=0 -DDEBUG_INFO=1 -DPHY_MODE_DEF=1 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -DCFG_SLEEP_MODE=PWR_MODE_SLEEP -DDEF_PPP_TRX_SUPPORT=2 -DDEF_PPP_AUTOACK_SUPPORT=1 -DDEF_PPP_NRF_SUPPORT=0 -DDEF_PPP_MESH_SUPPORT=0 --omf_browse=.\objects\flash.crf ..\..\..\components\driver\flash\flash.c
    
    
    
    jump_table.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armlink [4d35ed]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=9931,9931,6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\jump_table.o --vfemode=force

    Input Comments:
    
    p5c44-3
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armasm [4d35ec]
    armasm --debug --diag_suppress=9931,9931,1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide 
    jump_table.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: ArmCC [4d3637]
    ArmCC --c99 --split_sections --debug -c -o.\objects\jump_table.o --depend=.\objects\jump_table.d --cpu=Cortex-M0 --apcs=interwork -O3 --diag_suppress=9931 -I..\..\..\components\inc -I..\..\..\components\ble\controller -I..\..\..\components\osal\include -I..\..\..\components\common -I.\source -I..\..\..\components\libraries\crc16 -I..\..\..\components\driver\clock -I..\..\..\components\arch\cm0 -I..\..\..\components\driver\pwrmgr -I..\..\..\components\driver\uart -I..\..\..\components\driver\gpio -I..\..\..\components\driver\watchdog -I..\..\..\components\driver\timer -I..\..\..\misc -I..\..\..\components\driver\log -I..\..\..\components\ble\include -I..\..\..\components\aoxEst -I..\..\..\components\driver\flash -I..\..\..\components\libraries\fs -I..\..\..\components\profiles\prop_protocol -I..\..\..\components\libraries\crc16 -I..\..\..\components\libraries\cli -I.\RTE\_Target_1 -IC:\Users\jzli\AppData\Local\Arm\Packs\ARM\CMSIS\5.6.0\CMSIS\Core\Include -IC:\Users\jzli\AppData\Local\Arm\Packs\ARM\CMSIS\5.6.0\Device\ARM\ARMCM0\Include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -D__UVISION_VERSION=529 -D_RTE_ -DARMCM0 -DCFG_CP -DOSAL_CBTIMER_NUM_TASKS=1 -DHOST_CONFIG=4 -DHCI_TL_NONE=1 -DENABLE_LOG_ROM_=0 -DDEBUG_INFO=1 -DPHY_MODE_DEF=1 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -DCFG_SLEEP_MODE=PWR_MODE_SLEEP -DDEF_PPP_TRX_SUPPORT=2 -DDEF_PPP_AUTOACK_SUPPORT=1 -DDEF_PPP_NRF_SUPPORT=0 -DDEF_PPP_MESH_SUPPORT=0 --omf_browse=.\objects\jump_table.crf ..\..\..\misc\jump_table.c
    
    
    
    
    fs.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armlink [4d35ed]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=9931,9931,6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\fs.o --vfemode=force

    Input Comments:
    
    pbbcc-3
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armasm [4d35ec]
    armasm --debug --diag_suppress=9931,9931,1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide 
    fs.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: ArmCC [4d3637]
    ArmCC --c99 --split_sections --debug -c -o.\objects\fs.o --depend=.\objects\fs.d --cpu=Cortex-M0 --apcs=interwork -O3 --diag_suppress=9931 -I..\..\..\components\inc -I..\..\..\components\ble\controller -I..\..\..\components\osal\include -I..\..\..\components\common -I.\source -I..\..\..\components\libraries\crc16 -I..\..\..\components\driver\clock -I..\..\..\components\arch\cm0 -I..\..\..\components\driver\pwrmgr -I..\..\..\components\driver\uart -I..\..\..\components\driver\gpio -I..\..\..\components\driver\watchdog -I..\..\..\components\driver\timer -I..\..\..\misc -I..\..\..\components\driver\log -I..\..\..\components\ble\include -I..\..\..\components\aoxEst -I..\..\..\components\driver\flash -I..\..\..\components\libraries\fs -I..\..\..\components\profiles\prop_protocol -I..\..\..\components\libraries\crc16 -I..\..\..\components\libraries\cli -I.\RTE\_Target_1 -IC:\Users\jzli\AppData\Local\Arm\Packs\ARM\CMSIS\5.6.0\CMSIS\Core\Include -IC:\Users\jzli\AppData\Local\Arm\Packs\ARM\CMSIS\5.6.0\Device\ARM\ARMCM0\Include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -D__UVISION_VERSION=529 -D_RTE_ -DARMCM0 -DCFG_CP -DOSAL_CBTIMER_NUM_TASKS=1 -DHOST_CONFIG=4 -DHCI_TL_NONE=1 -DENABLE_LOG_ROM_=0 -DDEBUG_INFO=1 -DPHY_MODE_DEF=1 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -DCFG_SLEEP_MODE=PWR_MODE_SLEEP -DDEF_PPP_TRX_SUPPORT=2 -DDEF_PPP_AUTOACK_SUPPORT=1 -DDEF_PPP_NRF_SUPPORT=0 -DDEF_PPP_MESH_SUPPORT=0 --omf_browse=.\objects\fs.crf ..\..\..\components\libraries\fs\fs.c
    
    
    
    
    
    cliface.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armlink [4d35ed]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=9931,9931,6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\cliface.o --vfemode=force

    Input Comments:
    
    pbc38-3
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armasm [4d35ec]
    armasm --debug --diag_suppress=9931,9931,1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide 
    cliface.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: ArmCC [4d3637]
    ArmCC --c99 --split_sections --debug -c -o.\objects\cliface.o --depend=.\objects\cliface.d --cpu=Cortex-M0 --apcs=interwork -O3 --diag_suppress=9931 -I..\..\..\components\inc -I..\..\..\components\ble\controller -I..\..\..\components\osal\include -I..\..\..\components\common -I.\source -I..\..\..\components\libraries\crc16 -I..\..\..\components\driver\clock -I..\..\..\components\arch\cm0 -I..\..\..\components\driver\pwrmgr -I..\..\..\components\driver\uart -I..\..\..\components\driver\gpio -I..\..\..\components\driver\watchdog -I..\..\..\components\driver\timer -I..\..\..\misc -I..\..\..\components\driver\log -I..\..\..\components\ble\include -I..\..\..\components\aoxEst -I..\..\..\components\driver\flash -I..\..\..\components\libraries\fs -I..\..\..\components\profiles\prop_protocol -I..\..\..\components\libraries\crc16 -I..\..\..\components\libraries\cli -I.\RTE\_Target_1 -IC:\Users\jzli\AppData\Local\Arm\Packs\ARM\CMSIS\5.6.0\CMSIS\Core\Include -IC:\Users\jzli\AppData\Local\Arm\Packs\ARM\CMSIS\5.6.0\Device\ARM\ARMCM0\Include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -D__UVISION_VERSION=529 -D_RTE_ -DARMCM0 -DCFG_CP -DOSAL_CBTIMER_NUM_TASKS=1 -DHOST_CONFIG=4 -DHCI_TL_NONE=1 -DENABLE_LOG_ROM_=0 -DDEBUG_INFO=1 -DPHY_MODE_DEF=1 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -DCFG_SLEEP_MODE=PWR_MODE_SLEEP -DDEF_PPP_TRX_SUPPORT=2 -DDEF_PPP_AUTOACK_SUPPORT=1 -DDEF_PPP_NRF_SUPPORT=0 -DDEF_PPP_MESH_SUPPORT=0 --omf_browse=.\objects\cliface.crf ..\..\..\components\libraries\cli\cliface.c
    
    
    crc16.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: ArmCC [4d3637]
    ArmCC --c99 --split_sections --debug -c -o.\objects\crc16.o --depend=.\objects\crc16.d --cpu=Cortex-M0 --apcs=interwork -O3 --diag_suppress=9931 -I..\..\..\components\inc -I..\..\..\components\ble\controller -I..\..\..\components\osal\include -I..\..\..\components\common -I.\source -I..\..\..\components\libraries\crc16 -I..\..\..\components\driver\clock -I..\..\..\components\arch\cm0 -I..\..\..\components\driver\pwrmgr -I..\..\..\components\driver\uart -I..\..\..\components\driver\gpio -I..\..\..\components\driver\watchdog -I..\..\..\components\driver\timer -I..\..\..\misc -I..\..\..\components\driver\log -I..\..\..\components\ble\include -I..\..\..\components\aoxEst -I..\..\..\components\driver\flash -I..\..\..\components\libraries\fs -I..\..\..\components\profiles\prop_protocol -I..\..\..\components\libraries\crc16 -I..\..\..\components\libraries\cli -I.\RTE\_Target_1 -IC:\Users\jzli\AppData\Local\Arm\Packs\ARM\CMSIS\5.6.0\CMSIS\Core\Include -IC:\Users\jzli\AppData\Local\Arm\Packs\ARM\CMSIS\5.6.0\Device\ARM\ARMCM0\Include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -D__UVISION_VERSION=529 -D_RTE_ -DARMCM0 -DCFG_CP -DOSAL_CBTIMER_NUM_TASKS=1 -DHOST_CONFIG=4 -DHCI_TL_NONE=1 -DENABLE_LOG_ROM_=0 -DDEBUG_INFO=1 -DPHY_MODE_DEF=1 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -DCFG_SLEEP_MODE=PWR_MODE_SLEEP -DDEF_PPP_TRX_SUPPORT=2 -DDEF_PPP_AUTOACK_SUPPORT=1 -DDEF_PPP_NRF_SUPPORT=0 -DDEF_PPP_MESH_SUPPORT=0 --omf_browse=.\objects\crc16.crf ..\..\..\components\libraries\crc16\crc16.c
    
    startup_armcm0.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armasm [4d35ec]
    ArmAsm --debug --xref --diag_suppress=9931 --cpu=Cortex-M0 --apcs=interwork --depend=.\objects\startup_armcm0.d  -I.\RTE\_Target_1 -IC:\Users\jzli\AppData\Local\Arm\Packs\ARM\CMSIS\5.6.0\CMSIS\Core\Include -IC:\Users\jzli\AppData\Loca
    
    
    system_armcm0.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armlink [4d35ed]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=9931,9931,6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\system_armcm0.o --vfemode=force

    Input Comments:
    
    p6a68-3
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armasm [4d35ec]
    armasm --debug --diag_suppress=9931,9931,1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide 
    system_armcm0.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: ArmCC [4d3637]
    ArmCC --c99 --split_sections --debug -c -o.\objects\system_armcm0.o --depend=.\objects\system_armcm0.d --cpu=Cortex-M0 --apcs=interwork -O3 --diag_suppress=9931 -I..\..\..\components\inc -I..\..\..\components\ble\controller -I..\..\..\components\osal\include -I..\..\..\components\common -I.\source -I..\..\..\components\libraries\crc16 -I..\..\..\components\driver\clock -I..\..\..\components\arch\cm0 -I..\..\..\components\driver\pwrmgr -I..\..\..\components\driver\uart -I..\..\..\components\driver\gpio -I..\..\..\components\driver\watchdog -I..\..\..\components\driver\timer -I..\..\..\misc -I..\..\..\components\driver\log -I..\..\..\components\ble\include -I..\..\..\components\aoxEst -I..\..\..\components\driver\flash -I..\..\..\components\libraries\fs -I..\..\..\components\profiles\prop_protocol -I..\..\..\components\libraries\crc16 -I..\..\..\components\libraries\cli -I.\RTE\_Target_1 -IC:\Users\jzli\AppData\Local\Arm\Packs\ARM\CMSIS\5.6.0\CMSIS\Core\Include -IC:\Users\jzli\AppData\Local\Arm\Packs\ARM\CMSIS\5.6.0\Device\ARM\ARMCM0\Include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -D__UVISION_VERSION=529 -D_RTE_ -DARMCM0 -DCFG_CP -DOSAL_CBTIMER_NUM_TASKS=1 -DHOST_CONFIG=4 -DHCI_TL_NONE=1 -DENABLE_LOG_ROM_=0 -DDEBUG_INFO=1 -DPHY_MODE_DEF=1 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -DCFG_SLEEP_MODE=PWR_MODE_SLEEP -DDEF_PPP_TRX_SUPPORT=2 -DDEF_PPP_AUTOACK_SUPPORT=1 -DDEF_PPP_NRF_SUPPORT=0 -DDEF_PPP_MESH_SUPPORT=0 --omf_browse=.\objects\system_armcm0.crf RTE\Device\ARMCM0\system_ARMCM0.c
    
    
    patch.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armlink [4d35ed]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=9931,9931,6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\patch.o --vfemode=force

    Input Comments:
    
    p2ca8-3
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armasm [4d35ec]
    armasm --diag_suppress=9931,9931,1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide 
    patch.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: ArmCC [4d3637]
    ArmCC --c99 --split_sections -c -o.\objects\patch.o --depend=.\objects\patch.d --cpu=Cortex-M0 --apcs=interwork -O3 --diag_suppress=9931 -I..\..\components\inc -I..\..\components\arch\cm0 -I..\..\components\osal\include -I..\..\components\driver\gpio -I..\..\components\driver\uart -I..\..\components\driver\log -I..\..\components\driver\flash -I..\..\components\driver\clock -I..\..\components\driver\timer -I..\..\components\ble\hci -I..\..\components\ble\host -I..\..\components\ble\controller -I..\..\components\ble\include -I..\..\misc -I.\source -I..\include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -DHOST_CONFIG=0x4 -D__UVISION_VERSION=530 -D_RTE_ -DARMCM0 -D_RTE_ -DCFG_CP -DDEBUG_INFO=0 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -D__BUILD_PATCH_CFG__=1 -DMTU_SIZE=247 source\patch.c
    
    
    
    
    
    rf_phy_driver.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armlink [4d35ed]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=9931,9931,6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\rf_phy_driver.o --vfemode=force

    Input Comments:
    
    p6a0-3
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armasm [4d35ec]
    armasm --diag_suppress=9931,9931,1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide 
    rf_phy_driver.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: ArmCC [4d3637]
    ArmCC --c99 --split_sections -c -o.\objects\rf_phy_driver.o --depend=.\objects\rf_phy_driver.d --cpu=Cortex-M0 --apcs=interwork -O3 --diag_suppress=9931 -I..\..\components\inc -I..\..\components\arch\cm0 -I..\..\components\osal\include -I..\..\components\driver\gpio -I..\..\components\driver\uart -I..\..\components\driver\log -I..\..\components\driver\flash -I..\..\components\driver\clock -I..\..\components\driver\timer -I..\..\components\ble\hci -I..\..\components\ble\host -I..\..\components\ble\controller -I..\..\components\ble\include -I..\..\misc -I.\source -I..\include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -DHOST_CONFIG=0x4 -D__UVISION_VERSION=530 -D_RTE_ -DARMCM0 -D_RTE_ -DCFG_CP -DDEBUG_INFO=0 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -D__BUILD_PATCH_CFG__=1 -DMTU_SIZE=247 ..\..\components\ble_src\controller\rf_phy_driver.c
    
    
    
    
    
    phy_sec_ext.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armlink [4d35ed]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=9931,9931,6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\phy_sec_ext.o --vfemode=force

    Input Comments:
    
    pbf0-3
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armasm [4d35ec]
    armasm --diag_suppress=9931,9931,1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide 
    phy_sec_ext.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: ArmCC [4d3637]
    ArmCC --c99 --split_sections -c -o.\objects\phy_sec_ext.o --depend=.\objects\phy_sec_ext.d --cpu=Cortex-M0 --apcs=interwork -O3 --diag_suppress=9931 -I..\..\components\inc -I..\..\components\arch\cm0 -I..\..\components\osal\include -I..\..\components\driver\gpio -I..\..\components\driver\uart -I..\..\components\driver\log -I..\..\components\driver\flash -I..\..\components\driver\clock -I..\..\components\driver\timer -I..\..\components\ble\hci -I..\..\components\ble\host -I..\..\components\ble\controller -I..\..\components\ble\include -I..\..\misc -I.\source -I..\include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -DHOST_CONFIG=0x4 -D__UVISION_VERSION=530 -D_RTE_ -DARMCM0 -D_RTE_ -DCFG_CP -DDEBUG_INFO=0 -DMTU_SIZE=247 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 source\phy_sec_ext.c
    
    
    
    
    lib_efuse3.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: ArmCC [4d3637]
    ArmCC --c99 --split_sections -c -o.\objects\lib_efuse3.o --depend=.\objects\lib_efuse3.d --cpu=Cortex-M0 --apcs=interwork -O3 --diag_suppress=9931 -I..\..\components\inc -I..\..\components\arch\cm0 -I..\..\components\osal\include -I..\..\components\driver\gpio -I..\..\components\driver\uart -I..\..\components\driver\log -I..\..\components\driver\flash -I..\..\components\driver\clock -I..\..\components\driver\timer -I..\..\components\ble\hci -I..\..\components\ble\host -I..\..\components\ble\controller -I..\..\components\ble\include -I..\..\misc -I.\source -I..\include -I..\..\lib\include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -DHOST_CONFIG=0x4 -D__UVISION_VERSION=530 -D_RTE_ -DARMCM0 -D_RTE_ -DCFG_CP -DDEBUG_INFO=0 -DMTU_SIZE=247 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 --omf_browse=.\objects\lib_efuse3.crf source\lib_efuse3.c
    
    aes.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armlink [4d35ed]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=9931,9931,6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\aes.o --vfemode=force

    Input Comments:
    
    p4888-3
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armasm [4d35ec]
    armasm --diag_suppress=9931,9931,1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide 
    aes.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: ArmCC [4d3637]
    ArmCC --c99 --split_sections -c -o.\objects\aes.o --depend=.\objects\aes.d --cpu=Cortex-M0 --apcs=interwork -O0 --diag_suppress=9931 -I..\..\components\inc -I..\..\components\arch\cm0 -I..\..\components\osal\include -I..\..\components\driver\gpio -I..\..\components\driver\uart -I..\..\components\driver\log -I..\..\components\driver\flash -I..\..\components\driver\clock -I..\..\components\driver\timer -I..\..\components\ble\hci -I..\..\components\ble\host -I..\..\components\ble\controller -I..\..\components\ble\include -I..\..\misc -I.\source -I..\include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -DHOST_CONFIG=0x4 -D__UVISION_VERSION=530 -D_RTE_ -DARMCM0 -D_RTE_ -DCFG_CP -DDEBUG_INFO=0 -DMTU_SIZE=247 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 source\aes.c
    
    
    

====================================

** Section #17

    Name        : .shstrtab
    Type        : SHT_STRTAB (0x00000003)
    Flags       : None (0x00000000)
    Addr        : 0x00000000
    File Offset : 311904 (0x4c260)
    Size        : 172 bytes (0xac)
    Link        : SHN_UNDEF
    Info        : 0
    Alignment   : 1
    Entry Size  : 0


====================================

address     size       variable name                            type
0x1fff6dc8  0x4        SystemCoreClock                          uint32_t

address     size       variable name                            type
0x1fff0400  0x400      global_config                            array[256] of uint32

address     size       variable name                            type
0x1fff0000  0x400      jump_table_base                          array[256] of const pointer to const uint32_t

address     size       variable name                            type
0x1fff6dc4  0x4        trap_c_callback                          pointer to function 

address     size       variable name                            type
0x1fff6db8  0x4        flash_ID                                 uint32_t

address     size       variable name                            type
0x1fff6dbc  0x7        g_chipMAddr                              chipMAddr_t
0x1fff6dbc  0x1        g_chipMAddr.chipMAddrStatus              CHIP_ID_STATUS_e
0x1fff6dbd  0x6        g_chipMAddr.mAddr                        array[6] of uint8_t

address     size       variable name                            type
0x1fff6db4  0x4        s_xflashCtx                              xflash_Ctx_t
0x1fff6db4  0x4        s_xflashCtx.rd_instr                     uint32_t

address     size       variable name                            type
0x1fff6db0  0x1        spif_dma_use                             _Bool

address     size       variable name                            type
0x1fff6da8  0x4        digits                                   pointer to const char

address     size       variable name                            type
0x1fff6dac  0x4        upper_digits                             pointer to const char

address     size       variable name                            type
0x1fff7634  0x78       mCtx                                     array[10] of pwrmgr_Ctx_t

address     size       variable name                            type
0x1fff6d90  0x1        mPwrMode                                 uint8_t

address     size       variable name                            type
0x1fff6da4  0x1        pwroff_register_number                   uint8

address     size       variable name                            type
0x1fff6d94  0x4        s_config_swClk0                          uint32_t

address     size       variable name                            type
0x1fff6d98  0x4        s_config_swClk1                          uint32_t

address     size       variable name                            type
0x1fff6d9c  0x4        s_gpio_wakeup_src_group1                 uint32_t

address     size       variable name                            type
0x1fff6da0  0x4        s_gpio_wakeup_src_group2                 uint32_t

address     size       variable name                            type
0x1fff6d91  0x1        s_pwrmgr_cfg                             PWRMGR_CFG_BIT
0x1fff6d91  0x1(5:3)   s_pwrmgr_cfg.sramRet_config              uint8_t
0x1fff6d91  0x1(0:5)   s_pwrmgr_cfg.moudle_num                  uint8_t

address     size       variable name                            type
0x1fff76ac  0xc        s_pwroff_cfg                             array[3] of pwroff_cfg_t

address     size       variable name                            type
0x1fff6d8c  0x1        g_wdt_cycle                              uint8_t

address     size       variable name                            type
0x00000000  0x8        TimerIndex                               array[2] of const pointer to AP_TIM_TypeDef

address     size       variable name                            type
0x1fff6d88  0x4        s_ap_callback                            ap_tm_hdl_t

address     size       variable name                            type
0x1fff6b78  0x17       c_gpio_index                             array[23] of const uint8_t

address     size       variable name                            type
0x1fff6b8f  0x45       c_gpio_pull                              array[23] of const PULL_TypeDef

address     size       variable name                            type
0x1fff7504  0x130      m_gpioCtx                                gpio_Ctx_t
0x1fff7504  0x1        m_gpioCtx.state                          _Bool
0x1fff7505  0x17       m_gpioCtx.pin_assignments                array[23] of uint8_t
0x1fff751c  0x4        m_gpioCtx.pin_retention_status           uint32_t
0x1fff7520  0x114      m_gpioCtx.irq_ctx                        array[23] of gpioin_Ctx_t

address     size       variable name                            type
0x1fff6bd4  0x2e       retention_reg                            array[23] of array[2] of const signed char

address     size       variable name                            type
0x1fff6d84  0x1        m_uart0_even_parity                      _Bool

address     size       variable name                            type
0x1fff6d85  0x1        m_uart1_even_parity                      _Bool

address     size       variable name                            type
0x1fff74c4  0x40       m_uartCtx                                array[2] of uart_Ctx_t

address     size       variable name                            type
0x1fff6d6c  0x4        BLE_IRQHandler_Restore                   uint32

address     size       variable name                            type
0x1fff6d58  0x4        PHY_ISR_entry_time                       uint32

address     size       variable name                            type
0x1fff6d4c  0x1        PPP_TaskID                               uint8

address     size       variable name                            type
0x1fff6d50  0x2        advHead                                  array[2] of uint8_t

address     size       variable name                            type
0x1fff7440  0x20       adv_buffer                               array[32] of uint8_t

address     size       variable name                            type
0x1fff6d70  0x6        peer_addr                                array[6] of uint8_t

address     size       variable name                            type
0x1fff7240  0x100      phyBufRx                                 array[256] of uint8_t

address     size       variable name                            type
0x1fff7340  0x100      phyBufTx                                 array[256] of uint8_t

address     size       variable name                            type
0x1fff6d4a  0x1        phyCarrSens                              uint8

address     size       variable name                            type
0x1fff6d4e  0x2        phyFoff                                  uint16

address     size       variable name                            type
0x1fff6d4b  0x1        phyRssi                                  uint8

address     size       variable name                            type
0x1fff6d64  0x4        phy_data_cbfunc                          phy_comm_cb_t

address     size       variable name                            type
0x1fff6d68  0x4        phy_opcode_cbfunc                        phy_comm_cb_t

address     size       variable name                            type
0x1fff6d52  0x3        s_chanHop                                chanHop_t
0x1fff6d52  0x1        s_chanHop.chan_map                       array[1] of uint8_t
0x1fff6d53  0x1        s_chanHop.wt_map                         array[1] of uint8_t
0x1fff6d54  0x1        s_chanHop.curIdx                         uint8_t

address     size       variable name                            type
0x1fff7474  0x2c       s_phy                                    phyCtx_t
0x1fff7474  0x1      * s_phy.Status                             uint8_t
0x1fff7478  0x4        s_phy.txIntv                             uint32_t
0x1fff747c  0x4        s_phy.txDuration                         uint32_t
0x1fff7480  0x4        s_phy.rxIntv                             uint32_t
0x1fff7484  0x4        s_phy.rxDuration                         uint32_t
0x1fff7488  0x1      * s_phy.rfChn                              uint8_t
0x1fff748c  0x4        s_phy.rxOnlyTO                           uint32_t
0x1fff7490  0x2      * s_phy.rxAckTO                            uint16_t
0x1fff7494  0x4        s_phy.rxScanT0                           uint32_t
0x1fff7498  0x1        s_phy.reTxCnt                            uint8_t
0x1fff7499  0x1        s_phy.reTxMax                            uint8_t
0x1fff749a  0x1      * s_phy.txAck                              uint8_t
0x1fff749c  0x2        s_phy.reTxDly                            uint16_t
0x1fff749e  0x1        s_phy.enAutoAck                          uint8_t
0x1fff749f  0x1        s_phy.phyMode                            uint8_t

address     size       variable name                            type
0x1fff74a0  0x24       s_phyDbg                                 phyDeubg_t
0x1fff74a0  0x4        s_phyDbg.rx_data_cnt                     uint32_t
0x1fff74a4  0x4        s_phyDbg.rx_data_ign                     uint32_t
0x1fff74a8  0x4        s_phyDbg.rx_crc_err                      uint32_t
0x1fff74ac  0x4        s_phyDbg.rx_txack_cnt                    uint32_t
0x1fff74b0  0x4        s_phyDbg.tx_data_cnt                     uint32_t
0x1fff74b4  0x4        s_phyDbg.tx_ack_cnt                      uint32_t
0x1fff74b8  0x4        s_phyDbg.tx_retry_cnt                    uint32_t
0x1fff74bc  0x4        s_phyDbg.rx_txack_t0                     uint32_t
0x1fff74c0  0x4        s_phyDbg.rx_txack_t1                     uint32_t

address     size       variable name                            type
0x1fff6d7c  0x8        s_phySch                                 phySch_t
0x1fff6d7c  0x4        s_phySch.txMargin                        uint32_t
0x1fff6d80  0x4        s_phySch.rxMargin                        uint32_t

address     size       variable name                            type
0x1fff7460  0x14       s_pktCfg                                 pktCfg_t
0x1fff7460  0x1        s_pktCfg.pktFmt                          uint8_t
0x1fff7461  0x1        s_pktCfg.pduLen                          uint8_t
0x1fff7462  0x1        s_pktCfg.wtSeed                          uint8_t
0x1fff7463  0x1        s_pktCfg.crcFmt                          uint8_t
0x1fff7464  0x4        s_pktCfg.crcSeed                         uint32_t
0x1fff7468  0x4        s_pktCfg.syncWord                        uint32_t
0x1fff746c  0x4        s_pktCfg.p_txBuf                         pointer to uint8_t
0x1fff7470  0x4        s_pktCfg.p_rxBuf                         pointer to uint8_t

address     size       variable name                            type
0x1fff6d76  0x6        s_pubAddr                                array[6] of uint8_t

address     size       variable name                            type
0x1fff6d5c  0x4        s_rf_crc                                 uint32_t

address     size       variable name                            type
0x1fff6d60  0x4        s_rf_lastcrc                             uint32_t

address     size       variable name                            type
0x1fff6d49  0x1        s_rf_lastpid                             uint8_t

address     size       variable name                            type
0x1fff6d48  0x1        s_rf_pid                                 uint8_t

address     size       variable name                            type
0x1fff6d44  0x1        Smart_nRF_TaskID                         uint8_t

address     size       variable name                            type
0x1fff6d30  0x8        tasksArr                                 array[2] of const pTaskEventHandlerFn

address     size       variable name                            type
0x1fff6d38  0x1        tasksCnt                                 const uint8

address     size       variable name                            type
0x1fff6d40  0x4        tasksEvents                              pointer to uint16

address     size       variable name                            type
0x1fff6d3c  0x1        g_clk32K_config                          volatile uint8

address     size       variable name                            type
0x1fff6e40  0x400      g_largeHeap                              array[1024] of uint8

address     size       variable name                            type
0x00000000  0x1        g_spif_clk_config                        volatile sysclk_t

