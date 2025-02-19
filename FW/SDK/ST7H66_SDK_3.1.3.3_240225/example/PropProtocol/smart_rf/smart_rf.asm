
========================================================================

** ELF Header Information

    File Name: ./Objects/smart_rf.axf

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

    Program header offset: 284288 (0x00045680)
    Section header offset: 284352 (0x000456c0)

    Section header string table index: 17

========================================================================

** Program header #0

    Type          : PT_LOAD (1)
    File Offset   : 21488 (0x53f0)
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
    Size in file  : 21436 bytes (0x53bc)
    Size in memory: 25488 bytes (0x6390)
    Flags         : PF_X + PF_W + PF_R + PF_ARM_ENTRY (0x80000007)
    Alignment     : 8


========================================================================

** Section #1

    Name        : ER_IROM1
    Type        : SHT_PROGBITS (0x00000001)
    Flags       : SHF_ALLOC + SHF_EXECINSTR (0x00000006)
    Addr        : 0x1fff1838
    File Offset : 52 (0x34)
    Size        : 21228 bytes (0x52ec)
    Link        : SHN_UNDEF
    Info        : 0
    Alignment   : 4
    Entry Size  : 0

    $d.realdata
    RESET
    __Vectors
        0x1fff1838:    1fff7bc8    .{..    DCD    536837064
        0x1fff183c:    1fff188d    ....    DCD    536811661
    $t
    .ARM.Collect$$$$00000000
    .ARM.Collect$$$$00000001
    __Vectors_End
    __main
    _main_stk
        0x1fff1840:    4803        .H      LDR      r0,__lit__00000000 ; [0x1fff1850] = 0x1fff7bc8
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
        0x1fff1848:    4800        .H      LDR      r0,[pc,#0] ; [0x1fff184c] = 0x1fff53fd
        0x1fff184a:    4700        .G      BX       r0
    $d
        0x1fff184c:    1fff53fd    .S..    DCD    536826877
    .ARM.Collect$$$$00002712
    __lit__00000000
    .ARM.Collect$$$$0000000D
    .ARM.Collect$$$$0000000F
    __rt_final_cpp
    __rt_final_exit
        0x1fff1850:    1fff7bc8    .{..    DCD    536837064
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
        0x1fff1876:    4903        .I      LDR      r1,[pc,#12] ; [0x1fff1884] = 0x1fff2e81
        0x1fff1878:    4a03        .J      LDR      r2,[pc,#12] ; [0x1fff1888] = 0x1fff1830
        0x1fff187a:    4695        .F      MOV      sp,r2
        0x1fff187c:    4708        .G      BX       r1
    $d
        0x1fff187e:    0000        ..      DCW    0
        0x1fff1880:    1fff0800    ....    DCD    536807424
        0x1fff1884:    1fff2e81    ....    DCD    536817281
        0x1fff1888:    1fff1830    0...    DCD    536811568
    $t
    .text
    Reset_Handler
        0x1fff188c:    4802        .H      LDR      r0,[pc,#8] ; [0x1fff1898] = 0x1fff2c31
        0x1fff188e:    4780        .G      BLX      r0
        0x1fff1890:    4802        .H      LDR      r0,[pc,#8] ; [0x1fff189c] = 0x1fff1841
        0x1fff1892:    4700        .G      BX       r0
        0x1fff1894:    e7fe        ..      B        0x1fff1894 ; Reset_Handler + 8
    $d
        0x1fff1896:    0000        ..      DCW    0
        0x1fff1898:    1fff2c31    1,..    DCD    536816689
        0x1fff189c:    1fff1841    A...    DCD    536811585
    $t
    .text
    __scatterload
    __scatterload_rt2
        0x1fff18a0:    4c06        .L      LDR      r4,[pc,#24] ; [0x1fff18bc] = 0x1fff6aec
        0x1fff18a2:    2501        .%      MOVS     r5,#1
        0x1fff18a4:    4e06        .N      LDR      r6,[pc,#24] ; [0x1fff18c0] = 0x1fff6b1c
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
        0x1fff18bc:    1fff6aec    .j..    DCD    536832748
        0x1fff18c0:    1fff6b1c    .k..    DCD    536832796
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
    $Ven$TT$L$$ll_hw_read_rfifo_pplus
        0x1fff1abc:    b403        ..      PUSH     {r0,r1}
        0x1fff1abe:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1ac4] = 0x10ee9
        0x1fff1ac0:    9001        ..      STR      r0,[sp,#4]
        0x1fff1ac2:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1ac4:    00010ee9    ....    DCD    69353
    $t
    $Ven$TT$L$$osal_set_event
        0x1fff1ac8:    b403        ..      PUSH     {r0,r1}
        0x1fff1aca:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1ad0] = 0x1520d
        0x1fff1acc:    9001        ..      STR      r0,[sp,#4]
        0x1fff1ace:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1ad0:    0001520d    .R..    DCD    86541
    $t
    $Ven$TT$L$$osal_start_timerEx
        0x1fff1ad4:    b403        ..      PUSH     {r0,r1}
        0x1fff1ad6:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1adc] = 0x1528b
        0x1fff1ad8:    9001        ..      STR      r0,[sp,#4]
        0x1fff1ada:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1adc:    0001528b    .R..    DCD    86667
    $t
    $Ven$TT$L$$efuse_read
        0x1fff1ae0:    b403        ..      PUSH     {r0,r1}
        0x1fff1ae2:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1ae8] = 0xace1
        0x1fff1ae4:    9001        ..      STR      r0,[sp,#4]
        0x1fff1ae6:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1ae8:    0000ace1    ....    DCD    44257
    $t
    $Ven$TT$L$$rom_uart_init
        0x1fff1aec:    b403        ..      PUSH     {r0,r1}
        0x1fff1aee:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1af4] = 0xb379
        0x1fff1af0:    9001        ..      STR      r0,[sp,#4]
        0x1fff1af2:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1af4:    0000b379    y...    DCD    45945
    $t
    $Ven$TT$L$$log_printf
        0x1fff1af8:    b403        ..      PUSH     {r0,r1}
        0x1fff1afa:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1b00] = 0x13ae5
        0x1fff1afc:    9001        ..      STR      r0,[sp,#4]
        0x1fff1afe:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1b00:    00013ae5    .:..    DCD    80613
    $t
    $Ven$TT$L$$rtc_get_counter
        0x1fff1b04:    b403        ..      PUSH     {r0,r1}
        0x1fff1b06:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1b0c] = 0x16b15
        0x1fff1b08:    9001        ..      STR      r0,[sp,#4]
        0x1fff1b0a:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1b0c:    00016b15    .k..    DCD    92949
    $t
    $Ven$TT$L$$osal_init_system
        0x1fff1b10:    b403        ..      PUSH     {r0,r1}
        0x1fff1b12:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1b18] = 0x14aed
        0x1fff1b14:    9001        ..      STR      r0,[sp,#4]
        0x1fff1b16:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1b18:    00014aed    .J..    DCD    84717
    $t
    $Ven$TT$L$$osal_pwrmgr_device
        0x1fff1b1c:    b403        ..      PUSH     {r0,r1}
        0x1fff1b1e:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1b24] = 0x14fa5
        0x1fff1b20:    9001        ..      STR      r0,[sp,#4]
        0x1fff1b22:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1b24:    00014fa5    .O..    DCD    85925
    $t
    $Ven$TT$L$$osal_start_system
        0x1fff1b28:    b403        ..      PUSH     {r0,r1}
        0x1fff1b2a:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1b30] = 0x15285
        0x1fff1b2c:    9001        ..      STR      r0,[sp,#4]
        0x1fff1b2e:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1b30:    00015285    .R..    DCD    86661
    $t
    $Ven$TT$L$$WaitRTCCount
        0x1fff1b34:    b403        ..      PUSH     {r0,r1}
        0x1fff1b36:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1b3c] = 0x8901
        0x1fff1b38:    9001        ..      STR      r0,[sp,#4]
        0x1fff1b3a:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1b3c:    00008901    ....    DCD    35073
    $t
    $Ven$TT$L$$set_sleep_flag
        0x1fff1b40:    b403        ..      PUSH     {r0,r1}
        0x1fff1b42:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1b48] = 0x16c01
        0x1fff1b44:    9001        ..      STR      r0,[sp,#4]
        0x1fff1b46:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1b48:    00016c01    .l..    DCD    93185
    $t
    $Ven$TT$L$$read_LL_remainder_time
        0x1fff1b4c:    b403        ..      PUSH     {r0,r1}
        0x1fff1b4e:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1b54] = 0x15cbd
        0x1fff1b50:    9001        ..      STR      r0,[sp,#4]
        0x1fff1b52:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1b54:    00015cbd    .\..    DCD    89277
    $t
    $Ven$TT$L$$ll_hw_set_rx_timeout_1st
        0x1fff1b58:    b403        ..      PUSH     {r0,r1}
        0x1fff1b5a:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1b60] = 0x11285
        0x1fff1b5c:    9001        ..      STR      r0,[sp,#4]
        0x1fff1b5e:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1b60:    00011285    ....    DCD    70277
    $t
    $Ven$TT$L$$enterSleepProcess0
        0x1fff1b64:    b403        ..      PUSH     {r0,r1}
        0x1fff1b66:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1b6c] = 0xaed1
        0x1fff1b68:    9001        ..      STR      r0,[sp,#4]
        0x1fff1b6a:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1b6c:    0000aed1    ....    DCD    44753
    $t
    $Ven$TT$L$$LL_ENC_AES128_Encrypt
        0x1fff1b70:    b403        ..      PUSH     {r0,r1}
        0x1fff1b72:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1b78] = 0x3fc5
        0x1fff1b74:    9001        ..      STR      r0,[sp,#4]
        0x1fff1b76:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1b78:    00003fc5    .?..    DCD    16325
    $t
    $Ven$TT$L$$osal_memcmp
        0x1fff1b7c:    b403        ..      PUSH     {r0,r1}
        0x1fff1b7e:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1b84] = 0x14ccd
        0x1fff1b80:    9001        ..      STR      r0,[sp,#4]
        0x1fff1b82:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1b84:    00014ccd    .L..    DCD    85197
    $t
    $Ven$TT$L$$__aeabi_memclr4
        0x1fff1b88:    b403        ..      PUSH     {r0,r1}
        0x1fff1b8a:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1b90] = 0xeb3
        0x1fff1b8c:    9001        ..      STR      r0,[sp,#4]
        0x1fff1b8e:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1b90:    00000eb3    ....    DCD    3763
    $t
    $Ven$TT$L$$__aeabi_memcpy4
        0x1fff1b94:    b403        ..      PUSH     {r0,r1}
        0x1fff1b96:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1b9c] = 0xe81
        0x1fff1b98:    9001        ..      STR      r0,[sp,#4]
        0x1fff1b9a:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1b9c:    00000e81    ....    DCD    3713
    $t
    $Ven$TT$L$$disableSleep
        0x1fff1ba0:    b403        ..      PUSH     {r0,r1}
        0x1fff1ba2:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1ba8] = 0xa921
        0x1fff1ba4:    9001        ..      STR      r0,[sp,#4]
        0x1fff1ba6:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1ba8:    0000a921    !...    DCD    43297
    $t
    $Ven$TT$L$$osal_mem_set_heap
        0x1fff1bac:    b403        ..      PUSH     {r0,r1}
        0x1fff1bae:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1bb4] = 0x14cb5
        0x1fff1bb0:    9001        ..      STR      r0,[sp,#4]
        0x1fff1bb2:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1bb4:    00014cb5    .L..    DCD    85173
    $t
    $Ven$TT$L$$spif_config
        0x1fff1bb8:    b403        ..      PUSH     {r0,r1}
        0x1fff1bba:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1bc0] = 0x16dc5
        0x1fff1bbc:    9001        ..      STR      r0,[sp,#4]
        0x1fff1bbe:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1bc0:    00016dc5    .m..    DCD    93637
    $t
    $Ven$TT$L$$spif_read_id
        0x1fff1bc4:    b403        ..      PUSH     {r0,r1}
        0x1fff1bc6:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1bcc] = 0x17209
        0x1fff1bc8:    9001        ..      STR      r0,[sp,#4]
        0x1fff1bca:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1bcc:    00017209    .r..    DCD    94729
    $t
    $Ven$TT$L$$llProcessTxData0
        0x1fff1bd0:    b403        ..      PUSH     {r0,r1}
        0x1fff1bd2:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1bd8] = 0xd4e9
        0x1fff1bd4:    9001        ..      STR      r0,[sp,#4]
        0x1fff1bd6:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1bd8:    0000d4e9    ....    DCD    54505
    $t
    $Ven$TT$L$$llReleaseConnId0
        0x1fff1bdc:    b403        ..      PUSH     {r0,r1}
        0x1fff1bde:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1be4] = 0xd579
        0x1fff1be0:    9001        ..      STR      r0,[sp,#4]
        0x1fff1be2:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1be4:    0000d579    y...    DCD    54649
    $t
    $Ven$TT$L$$llSlaveEvt_TaskEndOk0
        0x1fff1be8:    b403        ..      PUSH     {r0,r1}
        0x1fff1bea:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1bf0] = 0xffad
        0x1fff1bec:    9001        ..      STR      r0,[sp,#4]
        0x1fff1bee:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1bf0:    0000ffad    ....    DCD    65453
    $t
    $Ven$TT$L$$getTxBufferFree
        0x1fff1bf4:    b403        ..      PUSH     {r0,r1}
        0x1fff1bf6:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1bfc] = 0xb05d
        0x1fff1bf8:    9001        ..      STR      r0,[sp,#4]
        0x1fff1bfa:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1bfc:    0000b05d    ]...    DCD    45149
    $t
    $Ven$TT$L$$get_tx_write_ptr
        0x1fff1c00:    b403        ..      PUSH     {r0,r1}
        0x1fff1c02:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1c08] = 0xb0e1
        0x1fff1c04:    9001        ..      STR      r0,[sp,#4]
        0x1fff1c06:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1c08:    0000b0e1    ....    DCD    45281
    $t
    $Ven$TT$L$$LL_ENC_Encrypt
        0x1fff1c0c:    b403        ..      PUSH     {r0,r1}
        0x1fff1c0e:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1c14] = 0x4261
        0x1fff1c10:    9001        ..      STR      r0,[sp,#4]
        0x1fff1c12:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1c14:    00004261    aB..    DCD    16993
    $t
    $Ven$TT$L$$__aeabi_memcpy
        0x1fff1c18:    b403        ..      PUSH     {r0,r1}
        0x1fff1c1a:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1c20] = 0xe81
        0x1fff1c1c:    9001        ..      STR      r0,[sp,#4]
        0x1fff1c1e:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1c20:    00000e81    ....    DCD    3713
    $t
    $Ven$TT$L$$update_tx_write_ptr
        0x1fff1c24:    b403        ..      PUSH     {r0,r1}
        0x1fff1c26:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1c2c] = 0x17685
        0x1fff1c28:    9001        ..      STR      r0,[sp,#4]
        0x1fff1c2a:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1c2c:    00017685    .v..    DCD    95877
    $t
    $Ven$TT$L$$ll_hw_write_tfifo
        0x1fff1c30:    b403        ..      PUSH     {r0,r1}
        0x1fff1c32:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1c38] = 0x115c1
        0x1fff1c34:    9001        ..      STR      r0,[sp,#4]
        0x1fff1c36:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1c38:    000115c1    ....    DCD    71105
    $t
    $Ven$TT$L$$ll_hw_get_tfifo_wrptr
        0x1fff1c3c:    b403        ..      PUSH     {r0,r1}
        0x1fff1c3e:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1c44] = 0x10ccd
        0x1fff1c40:    9001        ..      STR      r0,[sp,#4]
        0x1fff1c42:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1c44:    00010ccd    ....    DCD    68813
    $t
    $Ven$TT$L$$getTxBufferSize
        0x1fff1c48:    b403        ..      PUSH     {r0,r1}
        0x1fff1c4a:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1c50] = 0xb071
        0x1fff1c4c:    9001        ..      STR      r0,[sp,#4]
        0x1fff1c4e:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1c50:    0000b071    q...    DCD    45169
    $t
    $Ven$TT$L$$get_tx_read_ptr
        0x1fff1c54:    b403        ..      PUSH     {r0,r1}
        0x1fff1c56:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1c5c] = 0xb0d9
        0x1fff1c58:    9001        ..      STR      r0,[sp,#4]
        0x1fff1c5a:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1c5c:    0000b0d9    ....    DCD    45273
    $t
    $Ven$TT$L$$update_tx_read_ptr
        0x1fff1c60:    b403        ..      PUSH     {r0,r1}
        0x1fff1c62:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1c68] = 0x17659
        0x1fff1c64:    9001        ..      STR      r0,[sp,#4]
        0x1fff1c66:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1c68:    00017659    Yv..    DCD    95833
    $t
    $Ven$TT$L$$llEnqueueCtrlPkt
        0x1fff1c6c:    b403        ..      PUSH     {r0,r1}
        0x1fff1c6e:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1c74] = 0xb953
        0x1fff1c70:    9001        ..      STR      r0,[sp,#4]
        0x1fff1c72:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1c74:    0000b953    S...    DCD    47443
    $t
    $Ven$TT$L$$ll_hw_set_loop_timeout
        0x1fff1c78:    b403        ..      PUSH     {r0,r1}
        0x1fff1c7a:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1c80] = 0x1118d
        0x1fff1c7c:    9001        ..      STR      r0,[sp,#4]
        0x1fff1c7e:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1c80:    0001118d    ....    DCD    70029
    $t
    $Ven$TT$L$$get_rx_write_ptr
        0x1fff1c84:    b403        ..      PUSH     {r0,r1}
        0x1fff1c86:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1c8c] = 0xb0b9
        0x1fff1c88:    9001        ..      STR      r0,[sp,#4]
        0x1fff1c8a:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1c8c:    0000b0b9    ....    DCD    45241
    $t
    $Ven$TT$L$$getRxBufferFree
        0x1fff1c90:    b403        ..      PUSH     {r0,r1}
        0x1fff1c92:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1c98] = 0xb01d
        0x1fff1c94:    9001        ..      STR      r0,[sp,#4]
        0x1fff1c96:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1c98:    0000b01d    ....    DCD    45085
    $t
    $Ven$TT$L$$set_max_length
        0x1fff1c9c:    b403        ..      PUSH     {r0,r1}
        0x1fff1c9e:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1ca4] = 0x16bed
        0x1fff1ca0:    9001        ..      STR      r0,[sp,#4]
        0x1fff1ca2:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1ca4:    00016bed    .k..    DCD    93165
    $t
    $Ven$TT$L$$ll_hw_read_tfifo_packet
        0x1fff1ca8:    b403        ..      PUSH     {r0,r1}
        0x1fff1caa:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1cb0] = 0x10fad
        0x1fff1cac:    9001        ..      STR      r0,[sp,#4]
        0x1fff1cae:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1cb0:    00010fad    ....    DCD    69549
    $t
    $Ven$TT$L$$osal_mem_alloc
        0x1fff1cb4:    b403        ..      PUSH     {r0,r1}
        0x1fff1cb6:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1cbc] = 0x14b3d
        0x1fff1cb8:    9001        ..      STR      r0,[sp,#4]
        0x1fff1cba:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1cbc:    00014b3d    =K..    DCD    84797
    $t
    $Ven$TT$L$$ll_read_rxfifo0
        0x1fff1cc0:    b403        ..      PUSH     {r0,r1}
        0x1fff1cc2:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1cc8] = 0x136cd
        0x1fff1cc4:    9001        ..      STR      r0,[sp,#4]
        0x1fff1cc6:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1cc8:    000136cd    .6..    DCD    79565
    $t
    $Ven$TT$L$$drv_irq_init
        0x1fff1ccc:    b403        ..      PUSH     {r0,r1}
        0x1fff1cce:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1cd4] = 0xa9c9
        0x1fff1cd0:    9001        ..      STR      r0,[sp,#4]
        0x1fff1cd2:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1cd4:    0000a9c9    ....    DCD    43465
    $t
    $Ven$TT$L$$__aeabi_uidivmod
        0x1fff1cd8:    b403        ..      PUSH     {r0,r1}
        0x1fff1cda:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1ce0] = 0xe09
        0x1fff1cdc:    9001        ..      STR      r0,[sp,#4]
        0x1fff1cde:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1ce0:    00000e09    ....    DCD    3593
    $t
    $Ven$TT$L$$osal_memset
        0x1fff1ce4:    b403        ..      PUSH     {r0,r1}
        0x1fff1ce6:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1cec] = 0x14d15
        0x1fff1ce8:    9001        ..      STR      r0,[sp,#4]
        0x1fff1cea:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1cec:    00014d15    .M..    DCD    85269
    $t
    $Ven$TT$L$$osal_pwrmgr_powerconserve0
        0x1fff1cf0:    b403        ..      PUSH     {r0,r1}
        0x1fff1cf2:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1cf8] = 0x14fd9
        0x1fff1cf4:    9001        ..      STR      r0,[sp,#4]
        0x1fff1cf6:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1cf8:    00014fd9    .O..    DCD    85977
    $t
    $Ven$TT$L$$ll_hw_set_crc_fmt
        0x1fff1cfc:    b403        ..      PUSH     {r0,r1}
        0x1fff1cfe:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1d04] = 0x1112d
        0x1fff1d00:    9001        ..      STR      r0,[sp,#4]
        0x1fff1d02:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1d04:    0001112d    -...    DCD    69933
    $t
    $Ven$TT$L$$ll_hw_ign_rfifo
        0x1fff1d08:    b403        ..      PUSH     {r0,r1}
        0x1fff1d0a:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1d10] = 0x10df9
        0x1fff1d0c:    9001        ..      STR      r0,[sp,#4]
        0x1fff1d0e:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1d10:    00010df9    ....    DCD    69113
    $t
    $Ven$TT$L$$ll_hw_set_pplus_pktfmt
        0x1fff1d14:    b403        ..      PUSH     {r0,r1}
        0x1fff1d16:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1d1c] = 0x111a1
        0x1fff1d18:    9001        ..      STR      r0,[sp,#4]
        0x1fff1d1a:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1d1c:    000111a1    ....    DCD    70049
    $t
    $Ven$TT$L$$ll_hw_set_srx
        0x1fff1d20:    b403        ..      PUSH     {r0,r1}
        0x1fff1d22:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1d28] = 0x112a5
        0x1fff1d24:    9001        ..      STR      r0,[sp,#4]
        0x1fff1d26:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1d28:    000112a5    ....    DCD    70309
    $t
    $Ven$TT$L$$ll_hw_set_trx_settle
        0x1fff1d2c:    b403        ..      PUSH     {r0,r1}
        0x1fff1d2e:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1d34] = 0x113dd
        0x1fff1d30:    9001        ..      STR      r0,[sp,#4]
        0x1fff1d32:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1d34:    000113dd    ....    DCD    70621
    $t
    $Ven$TT$L$$ll_hw_set_stx
        0x1fff1d38:    b403        ..      PUSH     {r0,r1}
        0x1fff1d3a:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1d40] = 0x112b9
        0x1fff1d3c:    9001        ..      STR      r0,[sp,#4]
        0x1fff1d3e:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1d40:    000112b9    ....    DCD    70329
    $t
    $Ven$TT$L$$ll_hw_set_trx
        0x1fff1d44:    b403        ..      PUSH     {r0,r1}
        0x1fff1d46:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1d4c] = 0x113c9
        0x1fff1d48:    9001        ..      STR      r0,[sp,#4]
        0x1fff1d4a:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1d4c:    000113c9    ....    DCD    70601
    $t
    $Ven$TT$L$$ll_hw_set_tx_rx_release
        0x1fff1d50:    b403        ..      PUSH     {r0,r1}
        0x1fff1d52:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1d58] = 0x11405
        0x1fff1d54:    9001        ..      STR      r0,[sp,#4]
        0x1fff1d56:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1d58:    00011405    ....    DCD    70661
    $t
    $Ven$TT$L$$ll_hw_set_rx_tx_interval
        0x1fff1d5c:    b403        ..      PUSH     {r0,r1}
        0x1fff1d5e:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1d64] = 0x11291
        0x1fff1d60:    9001        ..      STR      r0,[sp,#4]
        0x1fff1d62:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1d64:    00011291    ....    DCD    70289
    $t
    $Ven$TT$L$$ll_hw_set_tx_rx_interval
        0x1fff1d68:    b403        ..      PUSH     {r0,r1}
        0x1fff1d6a:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1d70] = 0x113f1
        0x1fff1d6c:    9001        ..      STR      r0,[sp,#4]
        0x1fff1d6e:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1d70:    000113f1    ....    DCD    70641
    $t
    $Ven$TT$L$$ll_hw_rst_tfifo
        0x1fff1d74:    b403        ..      PUSH     {r0,r1}
        0x1fff1d76:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1d7c] = 0x110e9
        0x1fff1d78:    9001        ..      STR      r0,[sp,#4]
        0x1fff1d7a:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1d7c:    000110e9    ....    DCD    69865
    $t
    $Ven$TT$L$$ll_hw_rst_rfifo
        0x1fff1d80:    b403        ..      PUSH     {r0,r1}
        0x1fff1d82:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1d88] = 0x110b1
        0x1fff1d84:    9001        ..      STR      r0,[sp,#4]
        0x1fff1d86:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1d88:    000110b1    ....    DCD    69809
    $t
    $Ven$TT$L$$osal_memcpy
        0x1fff1d8c:    b403        ..      PUSH     {r0,r1}
        0x1fff1d8e:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1d94] = 0x14ce9
        0x1fff1d90:    9001        ..      STR      r0,[sp,#4]
        0x1fff1d92:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1d94:    00014ce9    .L..    DCD    85225
    $t
    $Ven$TT$L$$ll_hw_tx2rx_timing_config
        0x1fff1d98:    b403        ..      PUSH     {r0,r1}
        0x1fff1d9a:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1da0] = 0x11489
        0x1fff1d9c:    9001        ..      STR      r0,[sp,#4]
        0x1fff1d9e:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1da0:    00011489    ....    DCD    70793
    $t
    $Ven$TT$L$$__ARM_common_switch8
        0x1fff1da4:    b403        ..      PUSH     {r0,r1}
        0x1fff1da6:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1dac] = 0x8961
        0x1fff1da8:    9001        ..      STR      r0,[sp,#4]
        0x1fff1daa:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1dac:    00008961    a...    DCD    35169
    $t
    $Ven$TT$L$$clk_get_pclk
        0x1fff1db0:    b403        ..      PUSH     {r0,r1}
        0x1fff1db2:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1db8] = 0xa5d1
        0x1fff1db4:    9001        ..      STR      r0,[sp,#4]
        0x1fff1db6:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1db8:    0000a5d1    ....    DCD    42449
    $t
    $Ven$TT$L$$osalTimeUpdate
        0x1fff1dbc:    b403        ..      PUSH     {r0,r1}
        0x1fff1dbe:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1dc4] = 0x144d5
        0x1fff1dc0:    9001        ..      STR      r0,[sp,#4]
        0x1fff1dc2:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1dc4:    000144d5    .D..    DCD    83157
    $t
    $Ven$TT$L$$set_timer
        0x1fff1dc8:    b403        ..      PUSH     {r0,r1}
        0x1fff1dca:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1dd0] = 0x16c2d
        0x1fff1dcc:    9001        ..      STR      r0,[sp,#4]
        0x1fff1dce:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1dd0:    00016c2d    -l..    DCD    93229
    $t
    $Ven$TT$L$$app_wakeup_process
        0x1fff1dd4:    b403        ..      PUSH     {r0,r1}
        0x1fff1dd6:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1ddc] = 0x9779
        0x1fff1dd8:    9001        ..      STR      r0,[sp,#4]
        0x1fff1dda:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1ddc:    00009779    y...    DCD    38777
    $t
    $Ven$TT$L$$ll_hw_set_empty_head
        0x1fff1de0:    b403        ..      PUSH     {r0,r1}
        0x1fff1de2:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1de8] = 0x11169
        0x1fff1de4:    9001        ..      STR      r0,[sp,#4]
        0x1fff1de6:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1de8:    00011169    i...    DCD    69993
    $t
    $Ven$TT$L$$ll_hw_set_timing
        0x1fff1dec:    b403        ..      PUSH     {r0,r1}
        0x1fff1dee:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1df4] = 0x112e5
        0x1fff1df0:    9001        ..      STR      r0,[sp,#4]
        0x1fff1df2:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1df4:    000112e5    ....    DCD    70373
    $t
    _func_xip_code_.LL_Disconnect1
    LL_Disconnect1
        0x1fff1df8:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff1dfa:    460c        .F      MOV      r4,r1
        0x1fff1dfc:    4605        .F      MOV      r5,r0
        0x1fff1dfe:    f7fffd7f    ....    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff1900
        0x1fff1e02:    4621        !F      MOV      r1,r4
        0x1fff1e04:    4628        (F      MOV      r0,r5
        0x1fff1e06:    f7fffd81    ....    BL       $Ven$TT$L$$LL_Disconnect0 ; 0x1fff190c
        0x1fff1e0a:    4604        .F      MOV      r4,r0
        0x1fff1e0c:    f7fffd84    ....    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff1918
        0x1fff1e10:    4620         F      MOV      r0,r4
        0x1fff1e12:    bd70        p.      POP      {r4-r6,pc}
    _func_xip_code_.LL_SetDataLengh1
    LL_SetDataLengh1
        0x1fff1e14:    b510        ..      PUSH     {r4,lr}
        0x1fff1e16:    29fb        .)      CMP      r1,#0xfb
        0x1fff1e18:    d808        ..      BHI      0x1fff1e2c ; LL_SetDataLengh1 + 24
        0x1fff1e1a:    4b08        .K      LDR      r3,[pc,#32] ; [0x1fff1e3c] = 0x848
        0x1fff1e1c:    429a        .B      CMP      r2,r3
        0x1fff1e1e:    d805        ..      BHI      0x1fff1e2c ; LL_SetDataLengh1 + 24
        0x1fff1e20:    291b        .)      CMP      r1,#0x1b
        0x1fff1e22:    d303        ..      BCC      0x1fff1e2c ; LL_SetDataLengh1 + 24
        0x1fff1e24:    23ff        .#      MOVS     r3,#0xff
        0x1fff1e26:    3349        I3      ADDS     r3,r3,#0x49
        0x1fff1e28:    429a        .B      CMP      r2,r3
        0x1fff1e2a:    d201        ..      BCS      0x1fff1e30 ; LL_SetDataLengh1 + 28
        0x1fff1e2c:    2030        0       MOVS     r0,#0x30
        0x1fff1e2e:    bd10        ..      POP      {r4,pc}
        0x1fff1e30:    4b03        .K      LDR      r3,[pc,#12] ; [0x1fff1e40] = 0x1fff1084
        0x1fff1e32:    8219        ..      STRH     r1,[r3,#0x10]
        0x1fff1e34:    825a        Z.      STRH     r2,[r3,#0x12]
        0x1fff1e36:    f7fffd75    ..u.    BL       $Ven$TT$L$$LL_SetDataLengh0 ; 0x1fff1924
        0x1fff1e3a:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff1e3c:    00000848    H...    DCD    2120
        0x1fff1e40:    1fff1084    ....    DCD    536809604
    $t
    _func_xip_code_.LL_TxData1
    LL_TxData1
        0x1fff1e44:    b5ff        ..      PUSH     {r0-r7,lr}
        0x1fff1e46:    460d        .F      MOV      r5,r1
        0x1fff1e48:    21a1        .!      MOVS     r1,#0xa1
        0x1fff1e4a:    0089        ..      LSLS     r1,r1,#2
        0x1fff1e4c:    4348        HC      MULS     r0,r1,r0
        0x1fff1e4e:    4923        #I      LDR      r1,[pc,#140] ; [0x1fff1edc] = 0x1fff0934
        0x1fff1e50:    b081        ..      SUB      sp,sp,#4
        0x1fff1e52:    6809        .h      LDR      r1,[r1,#0]
        0x1fff1e54:    461e        .F      MOV      r6,r3
        0x1fff1e56:    1844        D.      ADDS     r4,r0,r1
        0x1fff1e58:    2d00        .-      CMP      r5,#0
        0x1fff1e5a:    d009        ..      BEQ      0x1fff1e70 ; LL_TxData1 + 44
        0x1fff1e5c:    20ff        .       MOVS     r0,#0xff
        0x1fff1e5e:    30d9        .0      ADDS     r0,r0,#0xd9
        0x1fff1e60:    5b01        .[      LDRH     r1,[r0,r4]
        0x1fff1e62:    9803        ..      LDR      r0,[sp,#0xc]
        0x1fff1e64:    4281        .B      CMP      r1,r0
        0x1fff1e66:    d303        ..      BCC      0x1fff1e70 ; LL_TxData1 + 44
        0x1fff1e68:    2e00        ..      CMP      r6,#0
        0x1fff1e6a:    d004        ..      BEQ      0x1fff1e76 ; LL_TxData1 + 50
        0x1fff1e6c:    2e01        ..      CMP      r6,#1
        0x1fff1e6e:    d002        ..      BEQ      0x1fff1e76 ; LL_TxData1 + 50
        0x1fff1e70:    2012        .       MOVS     r0,#0x12
        0x1fff1e72:    b005        ..      ADD      sp,sp,#0x14
        0x1fff1e74:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff1e76:    78e0        .x      LDRB     r0,[r4,#3]
        0x1fff1e78:    2800        .(      CMP      r0,#0
        0x1fff1e7a:    d00a        ..      BEQ      0x1fff1e92 ; LL_TxData1 + 78
        0x1fff1e7c:    2005        .       MOVS     r0,#5
        0x1fff1e7e:    01c0        ..      LSLS     r0,r0,#7
        0x1fff1e80:    1827        '.      ADDS     r7,r4,r0
        0x1fff1e82:    4817        .H      LDR      r0,[pc,#92] ; [0x1fff1ee0] = 0x1fff0915
        0x1fff1e84:    78f9        .x      LDRB     r1,[r7,#3]
        0x1fff1e86:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff1e88:    1c80        ..      ADDS     r0,r0,#2
        0x1fff1e8a:    4281        .B      CMP      r1,r0
        0x1fff1e8c:    d303        ..      BCC      0x1fff1e96 ; LL_TxData1 + 82
        0x1fff1e8e:    2007        .       MOVS     r0,#7
        0x1fff1e90:    e7ef        ..      B        0x1fff1e72 ; LL_TxData1 + 46
        0x1fff1e92:    2002        .       MOVS     r0,#2
        0x1fff1e94:    e7ed        ..      B        0x1fff1e72 ; LL_TxData1 + 46
        0x1fff1e96:    f7fffd33    ..3.    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff1900
        0x1fff1e9a:    78f8        .x      LDRB     r0,[r7,#3]
        0x1fff1e9c:    1ea9        ..      SUBS     r1,r5,#2
        0x1fff1e9e:    1c40        @.      ADDS     r0,r0,#1
        0x1fff1ea0:    70f8        .p      STRB     r0,[r7,#3]
        0x1fff1ea2:    9803        ..      LDR      r0,[sp,#0xc]
        0x1fff1ea4:    7008        .p      STRB     r0,[r1,#0]
        0x1fff1ea6:    2e00        ..      CMP      r6,#0
        0x1fff1ea8:    d010        ..      BEQ      0x1fff1ecc ; LL_TxData1 + 136
        0x1fff1eaa:    2001        .       MOVS     r0,#1
        0x1fff1eac:    7048        Hp      STRB     r0,[r1,#1]
        0x1fff1eae:    4620         F      MOV      r0,r4
        0x1fff1eb0:    307c        |0      ADDS     r0,r0,#0x7c
        0x1fff1eb2:    1f09        ..      SUBS     r1,r1,#4
        0x1fff1eb4:    f7fffd3c    ..<.    BL       $Ven$TT$L$$llEnqueueDataQ ; 0x1fff1930
        0x1fff1eb8:    f7fffd2e    ....    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff1918
        0x1fff1ebc:    4809        .H      LDR      r0,[pc,#36] ; [0x1fff1ee4] = 0x1fff091c
        0x1fff1ebe:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff1ec0:    2808        .(      CMP      r0,#8
        0x1fff1ec2:    d005        ..      BEQ      0x1fff1ed0 ; LL_TxData1 + 140
        0x1fff1ec4:    2807        .(      CMP      r0,#7
        0x1fff1ec6:    d003        ..      BEQ      0x1fff1ed0 ; LL_TxData1 + 140
        0x1fff1ec8:    2000        .       MOVS     r0,#0
        0x1fff1eca:    e7d2        ..      B        0x1fff1e72 ; LL_TxData1 + 46
        0x1fff1ecc:    2002        .       MOVS     r0,#2
        0x1fff1ece:    e7ed        ..      B        0x1fff1eac ; LL_TxData1 + 104
        0x1fff1ed0:    2100        .!      MOVS     r1,#0
        0x1fff1ed2:    4620         F      MOV      r0,r4
        0x1fff1ed4:    f7fffd32    ..2.    BL       $Ven$TT$L$$llProcessTxData ; 0x1fff193c
        0x1fff1ed8:    e7f6        ..      B        0x1fff1ec8 ; LL_TxData1 + 132
    $d
        0x1fff1eda:    0000        ..      DCW    0
        0x1fff1edc:    1fff0934    4...    DCD    536807732
        0x1fff1ee0:    1fff0915    ....    DCD    536807701
        0x1fff1ee4:    1fff091c    ....    DCD    536807708
    $t
    _section_sram_code_
    irq_rx_handler
        0x1fff1ee8:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff1eea:    4a34        4J      LDR      r2,[pc,#208] ; [0x1fff1fbc] = 0x40004000
        0x1fff1eec:    b08a        ..      SUB      sp,sp,#0x28
        0x1fff1eee:    2801        .(      CMP      r0,#1
        0x1fff1ef0:    d100        ..      BNE      0x1fff1ef4 ; irq_rx_handler + 12
        0x1fff1ef2:    4a33        3J      LDR      r2,[pc,#204] ; [0x1fff1fc0] = 0x40009000
        0x1fff1ef4:    0143        C.      LSLS     r3,r0,#5
        0x1fff1ef6:    4833        3H      LDR      r0,[pc,#204] ; [0x1fff1fc4] = 0x1fff7238
        0x1fff1ef8:    466d        mF      MOV      r5,sp
        0x1fff1efa:    181c        ..      ADDS     r4,r3,r0
        0x1fff1efc:    7e20         ~      LDRB     r0,[r4,#0x18]
        0x1fff1efe:    2800        .(      CMP      r0,#0
        0x1fff1f00:    d00a        ..      BEQ      0x1fff1f18 ; irq_rx_handler + 48
        0x1fff1f02:    2084        .       MOVS     r0,#0x84
        0x1fff1f04:    5880        .X      LDR      r0,[r0,r2]
        0x1fff1f06:    b2c3        ..      UXTB     r3,r0
        0x1fff1f08:    2000        .       MOVS     r0,#0
        0x1fff1f0a:    e002        ..      B        0x1fff1f12 ; irq_rx_handler + 42
        0x1fff1f0c:    7816        .x      LDRB     r6,[r2,#0]
        0x1fff1f0e:    542e        .T      STRB     r6,[r5,r0]
        0x1fff1f10:    1c40        @.      ADDS     r0,r0,#1
        0x1fff1f12:    4298        .B      CMP      r0,r3
        0x1fff1f14:    dbfa        ..      BLT      0x1fff1f0c ; irq_rx_handler + 36
        0x1fff1f16:    e003        ..      B        0x1fff1f20 ; irq_rx_handler + 56
        0x1fff1f18:    7d10        .}      LDRB     r0,[r2,#0x14]
        0x1fff1f1a:    2301        .#      MOVS     r3,#1
        0x1fff1f1c:    7810        .x      LDRB     r0,[r2,#0]
        0x1fff1f1e:    7028        (p      STRB     r0,[r5,#0]
        0x1fff1f20:    69e2        .i      LDR      r2,[r4,#0x1c]
        0x1fff1f22:    2a00        .*      CMP      r2,#0
        0x1fff1f24:    d004        ..      BEQ      0x1fff1f30 ; irq_rx_handler + 72
        0x1fff1f26:    7529        )u      STRB     r1,[r5,#0x14]
        0x1fff1f28:    9506        ..      STR      r5,[sp,#0x18]
        0x1fff1f2a:    772b        +w      STRB     r3,[r5,#0x1c]
        0x1fff1f2c:    a805        ..      ADD      r0,sp,#0x14
        0x1fff1f2e:    4790        .G      BLX      r2
        0x1fff1f30:    b00a        ..      ADD      sp,sp,#0x28
        0x1fff1f32:    bd70        p.      POP      {r4-r6,pc}
    irq_tx_empty_handler
        0x1fff1f34:    b5fe        ..      PUSH     {r1-r7,lr}
        0x1fff1f36:    4604        .F      MOV      r4,r0
        0x1fff1f38:    0142        B.      LSLS     r2,r0,#5
        0x1fff1f3a:    4822        "H      LDR      r0,[pc,#136] ; [0x1fff1fc4] = 0x1fff7238
        0x1fff1f3c:    4d1f        .M      LDR      r5,[pc,#124] ; [0x1fff1fbc] = 0x40004000
        0x1fff1f3e:    1813        ..      ADDS     r3,r2,r0
        0x1fff1f40:    5c80        .\      LDRB     r0,[r0,r2]
        0x1fff1f42:    1d19        ..      ADDS     r1,r3,#4
        0x1fff1f44:    2800        .(      CMP      r0,#0
        0x1fff1f46:    d029        ).      BEQ      0x1fff1f9c ; irq_tx_empty_handler + 104
        0x1fff1f48:    7e18        .~      LDRB     r0,[r3,#0x18]
        0x1fff1f4a:    2800        .(      CMP      r0,#0
        0x1fff1f4c:    d026        &.      BEQ      0x1fff1f9c ; irq_tx_empty_handler + 104
        0x1fff1f4e:    7e98        .~      LDRB     r0,[r3,#0x1a]
        0x1fff1f50:    2800        .(      CMP      r0,#0
        0x1fff1f52:    d023        #.      BEQ      0x1fff1f9c ; irq_tx_empty_handler + 104
        0x1fff1f54:    7808        .x      LDRB     r0,[r1,#0]
        0x1fff1f56:    2802        .(      CMP      r0,#2
        0x1fff1f58:    d120         .      BNE      0x1fff1f9c ; irq_tx_empty_handler + 104
        0x1fff1f5a:    8888        ..      LDRH     r0,[r1,#4]
        0x1fff1f5c:    884a        J.      LDRH     r2,[r1,#2]
        0x1fff1f5e:    688e        .h      LDR      r6,[r1,#8]
        0x1fff1f60:    1a80        ..      SUBS     r0,r0,r2
        0x1fff1f62:    b282        ..      UXTH     r2,r0
        0x1fff1f64:    2a10        .*      CMP      r2,#0x10
        0x1fff1f66:    d901        ..      BLS      0x1fff1f6c ; irq_tx_empty_handler + 56
        0x1fff1f68:    2210        ."      MOVS     r2,#0x10
        0x1fff1f6a:    e001        ..      B        0x1fff1f70 ; irq_tx_empty_handler + 60
        0x1fff1f6c:    2a00        .*      CMP      r2,#0
        0x1fff1f6e:    d002        ..      BEQ      0x1fff1f76 ; irq_tx_empty_handler + 66
        0x1fff1f70:    2c01        .,      CMP      r4,#1
        0x1fff1f72:    d016        ..      BEQ      0x1fff1fa2 ; irq_tx_empty_handler + 110
        0x1fff1f74:    e01c        ..      B        0x1fff1fb0 ; irq_tx_empty_handler + 124
        0x1fff1f76:    2001        .       MOVS     r0,#1
        0x1fff1f78:    7008        .p      STRB     r0,[r1,#0]
        0x1fff1f7a:    2000        .       MOVS     r0,#0
        0x1fff1f7c:    8048        H.      STRH     r0,[r1,#2]
        0x1fff1f7e:    8088        ..      STRH     r0,[r1,#4]
        0x1fff1f80:    69d9        .i      LDR      r1,[r3,#0x1c]
        0x1fff1f82:    2900        .)      CMP      r1,#0
        0x1fff1f84:    d005        ..      BEQ      0x1fff1f92 ; irq_tx_empty_handler + 94
        0x1fff1f86:    4b10        .K      LDR      r3,[pc,#64] ; [0x1fff1fc8] = 0x1fff69f4
        0x1fff1f88:    466d        mF      MOV      r5,sp
        0x1fff1f8a:    cb0d        ..      LDM      r3,{r0,r2,r3}
        0x1fff1f8c:    c50d        ..      STM      r5!,{r0,r2,r3}
        0x1fff1f8e:    4668        hF      MOV      r0,sp
        0x1fff1f90:    4788        .G      BLX      r1
        0x1fff1f92:    2c00        .,      CMP      r4,#0
        0x1fff1f94:    d003        ..      BEQ      0x1fff1f9e ; irq_tx_empty_handler + 106
        0x1fff1f96:    2019        .       MOVS     r0,#0x19
        0x1fff1f98:    f002f96c    ..l.    BL       hal_pwrmgr_unlock ; 0x1fff4274
        0x1fff1f9c:    bdfe        ..      POP      {r1-r7,pc}
        0x1fff1f9e:    2008        .       MOVS     r0,#8
        0x1fff1fa0:    e7fa        ..      B        0x1fff1f98 ; irq_tx_empty_handler + 100
        0x1fff1fa2:    4d07        .M      LDR      r5,[pc,#28] ; [0x1fff1fc0] = 0x40009000
        0x1fff1fa4:    e004        ..      B        0x1fff1fb0 ; irq_tx_empty_handler + 124
        0x1fff1fa6:    8848        H.      LDRH     r0,[r1,#2]
        0x1fff1fa8:    1c43        C.      ADDS     r3,r0,#1
        0x1fff1faa:    804b        K.      STRH     r3,[r1,#2]
        0x1fff1fac:    5c30        0\      LDRB     r0,[r6,r0]
        0x1fff1fae:    7028        (p      STRB     r0,[r5,#0]
        0x1fff1fb0:    4610        .F      MOV      r0,r2
        0x1fff1fb2:    1e52        R.      SUBS     r2,r2,#1
        0x1fff1fb4:    b292        ..      UXTH     r2,r2
        0x1fff1fb6:    2800        .(      CMP      r0,#0
        0x1fff1fb8:    d1f5        ..      BNE      0x1fff1fa6 ; irq_tx_empty_handler + 114
        0x1fff1fba:    bdfe        ..      POP      {r1-r7,pc}
    $d
        0x1fff1fbc:    40004000    .@.@    DCD    1073758208
        0x1fff1fc0:    40009000    ...@    DCD    1073778688
        0x1fff1fc4:    1fff7238    8r..    DCD    536834616
        0x1fff1fc8:    1fff69f4    .i..    DCD    536832500
    $t
    _section_sram_code_
    hal_pwrmgr_enter_sleep_rtc_reset
        0x1fff1fcc:    4604        .F      MOV      r4,r0
        0x1fff1fce:    f7fffc97    ....    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff1900
        0x1fff1fd2:    490a        .I      LDR      r1,[pc,#40] ; [0x1fff1ffc] = 0x4000f000
        0x1fff1fd4:    69c8        .i      LDR      r0,[r1,#0x1c]
        0x1fff1fd6:    2240        @"      MOVS     r2,#0x40
        0x1fff1fd8:    4390        .C      BICS     r0,r0,r2
        0x1fff1fda:    61c8        .a      STR      r0,[r1,#0x1c]
        0x1fff1fdc:    4620         F      MOV      r0,r4
        0x1fff1fde:    f7fffcb3    ....    BL       $Ven$TT$L$$config_RTC ; 0x1fff1948
        0x1fff1fe2:    f002f89f    ....    BL       hal_pwrmgr_RAM_retention_clr ; 0x1fff4124
        0x1fff1fe6:    4805        .H      LDR      r0,[pc,#20] ; [0x1fff1ffc] = 0x4000f000
        0x1fff1fe8:    2100        .!      MOVS     r1,#0
        0x1fff1fea:    30c0        .0      ADDS     r0,r0,#0xc0
        0x1fff1fec:    6041        A`      STR      r1,[r0,#4]
        0x1fff1fee:    2104        .!      MOVS     r1,#4
        0x1fff1ff0:    6001        .`      STR      r1,[r0,#0]
        0x1fff1ff2:    2001        .       MOVS     r0,#1
        0x1fff1ff4:    f7fffcae    ....    BL       $Ven$TT$L$$enter_sleep_off_mode ; 0x1fff1954
        0x1fff1ff8:    e7fe        ..      B        0x1fff1ff8 ; hal_pwrmgr_enter_sleep_rtc_reset + 44
    $d
        0x1fff1ffa:    0000        ..      DCW    0
        0x1fff1ffc:    4000f000    ...@    DCD    1073803264
    $t
    _section_sram_code_
    spif_lock
        0x1fff2000:    b510        ..      PUSH     {r4,lr}
        0x1fff2002:    f7fffc7d    ..}.    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff1900
        0x1fff2006:    480d        .H      LDR      r0,[pc,#52] ; [0x1fff203c] = 0xe000e100
        0x1fff2008:    6804        .h      LDR      r4,[r0,#0]
        0x1fff200a:    4a0c        .J      LDR      r2,[pc,#48] ; [0x1fff203c] = 0xe000e100
        0x1fff200c:    1741        A.      ASRS     r1,r0,#29
        0x1fff200e:    3280        .2      ADDS     r2,r2,#0x80
        0x1fff2010:    6011        .`      STR      r1,[r2,#0]
        0x1fff2012:    490b        .I      LDR      r1,[pc,#44] ; [0x1fff2040] = 0x100010
        0x1fff2014:    6001        .`      STR      r1,[r0,#0]
        0x1fff2016:    2000        .       MOVS     r0,#0
        0x1fff2018:    f002fffc    ....    BL       ll_patch_restore ; 0x1fff5014
        0x1fff201c:    f7fffc7c    ..|.    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff1918
        0x1fff2020:    4620         F      MOV      r0,r4
        0x1fff2022:    bd10        ..      POP      {r4,pc}
    spif_unlock
        0x1fff2024:    b510        ..      PUSH     {r4,lr}
        0x1fff2026:    4604        .F      MOV      r4,r0
        0x1fff2028:    f7fffc6a    ..j.    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff1900
        0x1fff202c:    4803        .H      LDR      r0,[pc,#12] ; [0x1fff203c] = 0xe000e100
        0x1fff202e:    6004        .`      STR      r4,[r0,#0]
        0x1fff2030:    2001        .       MOVS     r0,#1
        0x1fff2032:    f002ffef    ....    BL       ll_patch_restore ; 0x1fff5014
        0x1fff2036:    f7fffc6f    ..o.    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff1918
        0x1fff203a:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff203c:    e000e100    ....    DCD    3758153984
        0x1fff2040:    00100010    ....    DCD    1048592
    $t
    _section_xip_code_
    LL_CreateConnCancel1
        0x1fff2044:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff2046:    f7fffc5b    ..[.    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff1900
        0x1fff204a:    4c90        .L      LDR      r4,[pc,#576] ; [0x1fff228c] = 0x1fff0998
        0x1fff204c:    2000        .       MOVS     r0,#0
        0x1fff204e:    6825        %h      LDR      r5,[r4,#0]
        0x1fff2050:    6020         `      STR      r0,[r4,#0]
        0x1fff2052:    f7fffc85    ....    BL       $Ven$TT$L$$LL_CreateConnCancel0 ; 0x1fff1960
        0x1fff2056:    4606        .F      MOV      r6,r0
        0x1fff2058:    6025        %`      STR      r5,[r4,#0]
        0x1fff205a:    f7fffc5d    ..].    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff1918
        0x1fff205e:    4630        0F      MOV      r0,r6
        0x1fff2060:    bd70        p.      POP      {r4-r6,pc}
    global_config_maxscanrsplen
        0x1fff2062:    498b        .I      LDR      r1,[pc,#556] ; [0x1fff2290] = 0x1fff6b80
        0x1fff2064:    68c9        .h      LDR      r1,[r1,#0xc]
        0x1fff2066:    31ff        .1      ADDS     r1,r1,#0xff
        0x1fff2068:    3181        .1      ADDS     r1,r1,#0x81
        0x1fff206a:    6588        .e      STR      r0,[r1,#0x58]
        0x1fff206c:    4770        pG      BX       lr
    init_config
        0x1fff206e:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff2070:    f001f824    ..$.    BL       _rom_efuse_version_init ; 0x1fff30bc
        0x1fff2074:    4d86        .M      LDR      r5,[pc,#536] ; [0x1fff2290] = 0x1fff6b80
        0x1fff2076:    4a87        .J      LDR      r2,[pc,#540] ; [0x1fff2294] = 0x1fff0a4a
        0x1fff2078:    7268        hr      STRB     r0,[r5,#9]
        0x1fff207a:    7811        .x      LDRB     r1,[r2,#0]
        0x1fff207c:    2902        .)      CMP      r1,#2
        0x1fff207e:    d903        ..      BLS      0x1fff2088 ; init_config + 26
        0x1fff2080:    2800        .(      CMP      r0,#0
        0x1fff2082:    d101        ..      BNE      0x1fff2088 ; init_config + 26
        0x1fff2084:    2001        .       MOVS     r0,#1
        0x1fff2086:    7010        .p      STRB     r0,[r2,#0]
        0x1fff2088:    4983        .I      LDR      r1,[pc,#524] ; [0x1fff2298] = 0x1fff0400
        0x1fff208a:    2000        .       MOVS     r0,#0
        0x1fff208c:    4604        .F      MOV      r4,r0
        0x1fff208e:    60e9        .`      STR      r1,[r5,#0xc]
        0x1fff2090:    0083        ..      LSLS     r3,r0,#2
        0x1fff2092:    1c40        @.      ADDS     r0,r0,#1
        0x1fff2094:    50cc        .P      STR      r4,[r1,r3]
        0x1fff2096:    28ff        .(      CMP      r0,#0xff
        0x1fff2098:    ddfa        ..      BLE      0x1fff2090 ; init_config + 34
        0x1fff209a:    68e8        .h      LDR      r0,[r5,#0xc]
        0x1fff209c:    497f        .I      LDR      r1,[pc,#508] ; [0x1fff229c] = 0x1fff7bc8
        0x1fff209e:    2388        .#      MOVS     r3,#0x88
        0x1fff20a0:    5019        .P      STR      r1,[r3,r0]
        0x1fff20a2:    497f        .I      LDR      r1,[pc,#508] ; [0x1fff22a0] = 0x46e
        0x1fff20a4:    62c1        .b      STR      r1,[r0,#0x2c]
        0x1fff20a6:    497f        .I      LDR      r1,[pc,#508] ; [0x1fff22a4] = 0x1fff6b24
        0x1fff20a8:    7809        .x      LDRB     r1,[r1,#0]
        0x1fff20aa:    2900        .)      CMP      r1,#0
        0x1fff20ac:    d002        ..      BEQ      0x1fff20b4 ; init_config + 70
        0x1fff20ae:    497c        |I      LDR      r1,[pc,#496] ; [0x1fff22a0] = 0x46e
        0x1fff20b0:    3111        .1      ADDS     r1,r1,#0x11
        0x1fff20b2:    62c1        .b      STR      r1,[r0,#0x2c]
        0x1fff20b4:    210a        .!      MOVS     r1,#0xa
        0x1fff20b6:    6501        .e      STR      r1,[r0,#0x50]
        0x1fff20b8:    7811        .x      LDRB     r1,[r2,#0]
        0x1fff20ba:    6381        .c      STR      r1,[r0,#0x38]
        0x1fff20bc:    497a        zI      LDR      r1,[pc,#488] ; [0x1fff22a8] = 0x73a
        0x1fff20be:    61c1        .a      STR      r1,[r0,#0x1c]
        0x1fff20c0:    f001fb4a    ..J.    BL       global_config_hclk_related ; 0x1fff3758
        0x1fff20c4:    68e9        .h      LDR      r1,[r5,#0xc]
        0x1fff20c6:    4879        yH      LDR      r0,[pc,#484] ; [0x1fff22ac] = 0x1c9c380
        0x1fff20c8:    6148        Ha      STR      r0,[r1,#0x14]
        0x1fff20ca:    2019        .       MOVS     r0,#0x19
        0x1fff20cc:    0180        ..      LSLS     r0,r0,#6
        0x1fff20ce:    6188        .a      STR      r0,[r1,#0x18]
        0x1fff20d0:    4608        .F      MOV      r0,r1
        0x1fff20d2:    2237        7"      MOVS     r2,#0x37
        0x1fff20d4:    3080        .0      ADDS     r0,r0,#0x80
        0x1fff20d6:    60c2        .`      STR      r2,[r0,#0xc]
        0x1fff20d8:    2308        .#      MOVS     r3,#8
        0x1fff20da:    2236        6"      MOVS     r2,#0x36
        0x1fff20dc:    640b        .d      STR      r3,[r1,#0x40]
        0x1fff20de:    63ca        .c      STR      r2,[r1,#0x3c]
        0x1fff20e0:    221e        ."      MOVS     r2,#0x1e
        0x1fff20e2:    644a        Jd      STR      r2,[r1,#0x44]
        0x1fff20e4:    2236        6"      MOVS     r2,#0x36
        0x1fff20e6:    6042        B`      STR      r2,[r0,#4]
        0x1fff20e8:    2232        2"      MOVS     r2,#0x32
        0x1fff20ea:    6002        .`      STR      r2,[r0,#0]
        0x1fff20ec:    223b        ;"      MOVS     r2,#0x3b
        0x1fff20ee:    6403        .d      STR      r3,[r0,#0x40]
        0x1fff20f0:    63c2        .c      STR      r2,[r0,#0x3c]
        0x1fff20f2:    2228        ("      MOVS     r2,#0x28
        0x1fff20f4:    6442        Bd      STR      r2,[r0,#0x44]
        0x1fff20f6:    2241        A"      MOVS     r2,#0x41
        0x1fff20f8:    64c2        .d      STR      r2,[r0,#0x4c]
        0x1fff20fa:    2239        9"      MOVS     r2,#0x39
        0x1fff20fc:    6482        .d      STR      r2,[r0,#0x48]
        0x1fff20fe:    2232        2"      MOVS     r2,#0x32
        0x1fff2100:    6543        Ce      STR      r3,[r0,#0x54]
        0x1fff2102:    6502        .e      STR      r2,[r0,#0x50]
        0x1fff2104:    2228        ("      MOVS     r2,#0x28
        0x1fff2106:    6582        .e      STR      r2,[r0,#0x58]
        0x1fff2108:    2202        ."      MOVS     r2,#2
        0x1fff210a:    6602        .f      STR      r2,[r0,#0x60]
        0x1fff210c:    2242        B"      MOVS     r2,#0x42
        0x1fff210e:    65c2        .e      STR      r2,[r0,#0x5c]
        0x1fff2110:    221e        ."      MOVS     r2,#0x1e
        0x1fff2112:    6683        .f      STR      r3,[r0,#0x68]
        0x1fff2114:    6642        Bf      STR      r2,[r0,#0x64]
        0x1fff2116:    2228        ("      MOVS     r2,#0x28
        0x1fff2118:    66c2        .f      STR      r2,[r0,#0x6c]
        0x1fff211a:    2220         "      MOVS     r2,#0x20
        0x1fff211c:    6742        Bg      STR      r2,[r0,#0x74]
        0x1fff211e:    2242        B"      MOVS     r2,#0x42
        0x1fff2120:    6702        .g      STR      r2,[r0,#0x70]
        0x1fff2122:    225a        Z"      MOVS     r2,#0x5a
        0x1fff2124:    6143        Ca      STR      r3,[r0,#0x14]
        0x1fff2126:    6102        .a      STR      r2,[r0,#0x10]
        0x1fff2128:    223c        <"      MOVS     r2,#0x3c
        0x1fff212a:    6182        .a      STR      r2,[r0,#0x18]
        0x1fff212c:    2219        ."      MOVS     r2,#0x19
        0x1fff212e:    0192        ..      LSLS     r2,r2,#6
        0x1fff2130:    600a        .`      STR      r2,[r1,#0]
        0x1fff2132:    4a5f        _J      LDR      r2,[pc,#380] ; [0x1fff22b0] = 0x29a
        0x1fff2134:    630a        .c      STR      r2,[r1,#0x30]
        0x1fff2136:    22ff        ."      MOVS     r2,#0xff
        0x1fff2138:    322d        -2      ADDS     r2,r2,#0x2d
        0x1fff213a:    608a        .`      STR      r2,[r1,#8]
        0x1fff213c:    60ca        .`      STR      r2,[r1,#0xc]
        0x1fff213e:    22ff        ."      MOVS     r2,#0xff
        0x1fff2140:    32f5        .2      ADDS     r2,r2,#0xf5
        0x1fff2142:    610a        .a      STR      r2,[r1,#0x10]
        0x1fff2144:    4a5b        [J      LDR      r2,[pc,#364] ; [0x1fff22b4] = 0xc350
        0x1fff2146:    648a        .d      STR      r2,[r1,#0x48]
        0x1fff2148:    227d        }"      MOVS     r2,#0x7d
        0x1fff214a:    00d2        ..      LSLS     r2,r2,#3
        0x1fff214c:    4e5a        ZN      LDR      r6,[pc,#360] ; [0x1fff22b8] = 0xa28
        0x1fff214e:    67c2        .g      STR      r2,[r0,#0x7c]
        0x1fff2150:    64ce        .d      STR      r6,[r1,#0x4c]
        0x1fff2152:    624a        Jb      STR      r2,[r1,#0x24]
        0x1fff2154:    4a59        YJ      LDR      r2,[pc,#356] ; [0x1fff22bc] = 0x186a
        0x1fff2156:    628a        .b      STR      r2,[r1,#0x28]
        0x1fff2158:    2232        2"      MOVS     r2,#0x32
        0x1fff215a:    65ca        .e      STR      r2,[r1,#0x5c]
        0x1fff215c:    2206        ."      MOVS     r2,#6
        0x1fff215e:    654a        Je      STR      r2,[r1,#0x54]
        0x1fff2160:    658a        .e      STR      r2,[r1,#0x58]
        0x1fff2162:    1dca        ..      ADDS     r2,r1,#7
        0x1fff2164:    32f9        .2      ADDS     r2,r2,#0xf9
        0x1fff2166:    2502        .%      MOVS     r5,#2
        0x1fff2168:    6013        .`      STR      r3,[r2,#0]
        0x1fff216a:    664d        Mf      STR      r5,[r1,#0x64]
        0x1fff216c:    254b        K%      MOVS     r5,#0x4b
        0x1fff216e:    00ed        ..      LSLS     r5,r5,#3
        0x1fff2170:    668d        .f      STR      r5,[r1,#0x68]
        0x1fff2172:    2509        .%      MOVS     r5,#9
        0x1fff2174:    66cd        .f      STR      r5,[r1,#0x6c]
        0x1fff2176:    4d52        RM      LDR      r5,[pc,#328] ; [0x1fff22c0] = 0x4e20
        0x1fff2178:    670d        .g      STR      r5,[r1,#0x70]
        0x1fff217a:    678c        .g      STR      r4,[r1,#0x78]
        0x1fff217c:    674b        Kg      STR      r3,[r1,#0x74]
        0x1fff217e:    10ab        ..      ASRS     r3,r5,#2
        0x1fff2180:    67cb        .g      STR      r3,[r1,#0x7c]
        0x1fff2182:    4f50        PO      LDR      r7,[pc,#320] ; [0x1fff22c4] = 0x1fff09f0
        0x1fff2184:    31ff        .1      ADDS     r1,r1,#0xff
        0x1fff2186:    603e        >`      STR      r6,[r7,#0]
        0x1fff2188:    4e4a        JN      LDR      r6,[pc,#296] ; [0x1fff22b4] = 0xc350
        0x1fff218a:    6286        .b      STR      r6,[r0,#0x28]
        0x1fff218c:    267d        }&      MOVS     r6,#0x7d
        0x1fff218e:    00f6        ..      LSLS     r6,r6,#3
        0x1fff2190:    6786        .g      STR      r6,[r0,#0x78]
        0x1fff2192:    2664        d&      MOVS     r6,#0x64
        0x1fff2194:    6246        Fb      STR      r6,[r0,#0x24]
        0x1fff2196:    2605        .&      MOVS     r6,#5
        0x1fff2198:    62c6        .b      STR      r6,[r0,#0x2c]
        0x1fff219a:    2602        .&      MOVS     r6,#2
        0x1fff219c:    6306        .c      STR      r6,[r0,#0x30]
        0x1fff219e:    26c8        .&      MOVS     r6,#0xc8
        0x1fff21a0:    6346        Fc      STR      r6,[r0,#0x34]
        0x1fff21a2:    6384        .c      STR      r4,[r0,#0x38]
        0x1fff21a4:    2038        8       MOVS     r0,#0x38
        0x1fff21a6:    6050        P`      STR      r0,[r2,#4]
        0x1fff21a8:    4847        GH      LDR      r0,[pc,#284] ; [0x1fff22c8] = 0x11004000
        0x1fff21aa:    6410        .d      STR      r0,[r2,#0x40]
        0x1fff21ac:    204b        K       MOVS     r0,#0x4b
        0x1fff21ae:    0180        ..      LSLS     r0,r0,#6
        0x1fff21b0:    6190        .a      STR      r0,[r2,#0x18]
        0x1fff21b2:    00b0        ..      LSLS     r0,r6,#2
        0x1fff21b4:    61d0        .a      STR      r0,[r2,#0x1c]
        0x1fff21b6:    1058        X.      ASRS     r0,r3,#1
        0x1fff21b8:    6210        .b      STR      r0,[r2,#0x20]
        0x1fff21ba:    207d        }       MOVS     r0,#0x7d
        0x1fff21bc:    0100        ..      LSLS     r0,r0,#4
        0x1fff21be:    6250        Pb      STR      r0,[r2,#0x24]
        0x1fff21c0:    66d4        .f      STR      r4,[r2,#0x6c]
        0x1fff21c2:    6595        .e      STR      r5,[r2,#0x58]
        0x1fff21c4:    6613        .f      STR      r3,[r2,#0x60]
        0x1fff21c6:    6453        Sd      STR      r3,[r2,#0x44]
        0x1fff21c8:    65d5        .e      STR      r5,[r2,#0x5c]
        0x1fff21ca:    6714        .g      STR      r4,[r2,#0x70]
        0x1fff21cc:    6753        Sg      STR      r3,[r2,#0x74]
        0x1fff21ce:    201e        .       MOVS     r0,#0x1e
        0x1fff21d0:    6690        .f      STR      r0,[r2,#0x68]
        0x1fff21d2:    483e        >H      LDR      r0,[pc,#248] ; [0x1fff22cc] = 0x5dc
        0x1fff21d4:    6790        .g      STR      r0,[r2,#0x78]
        0x1fff21d6:    483e        >H      LDR      r0,[pc,#248] ; [0x1fff22d0] = 0xf4240
        0x1fff21d8:    005b        [.      LSLS     r3,r3,#1
        0x1fff21da:    3181        .1      ADDS     r1,r1,#0x81
        0x1fff21dc:    67d0        .g      STR      r0,[r2,#0x7c]
        0x1fff21de:    600b        .`      STR      r3,[r1,#0]
        0x1fff21e0:    608b        .`      STR      r3,[r1,#8]
        0x1fff21e2:    6048        H`      STR      r0,[r1,#4]
        0x1fff21e4:    20ff        .       MOVS     r0,#0xff
        0x1fff21e6:    30f5        .0      ADDS     r0,r0,#0xf5
        0x1fff21e8:    60c8        .`      STR      r0,[r1,#0xc]
        0x1fff21ea:    6108        .a      STR      r0,[r1,#0x10]
        0x1fff21ec:    204b        K       MOVS     r0,#0x4b
        0x1fff21ee:    00c0        ..      LSLS     r0,r0,#3
        0x1fff21f0:    6310        .c      STR      r0,[r2,#0x30]
        0x1fff21f2:    650e        .e      STR      r6,[r1,#0x50]
        0x1fff21f4:    4838        8H      LDR      r0,[pc,#224] ; [0x1fff22d8] = 0x1fff0100
        0x1fff21f6:    4937        7I      LDR      r1,[pc,#220] ; [0x1fff22d4] = 0x1fff4b79
        0x1fff21f8:    4a27        'J      LDR      r2,[pc,#156] ; [0x1fff2298] = 0x1fff0400
        0x1fff21fa:    6081        .`      STR      r1,[r0,#8]
        0x1fff21fc:    4937        7I      LDR      r1,[pc,#220] ; [0x1fff22dc] = 0x1fff263d
        0x1fff21fe:    3a80        .:      SUBS     r2,r2,#0x80
        0x1fff2200:    6111        .a      STR      r1,[r2,#0x10]
        0x1fff2202:    4935        5I      LDR      r1,[pc,#212] ; [0x1fff22d8] = 0x1fff0100
        0x1fff2204:    4a36        6J      LDR      r2,[pc,#216] ; [0x1fff22e0] = 0x1fff5cfd
        0x1fff2206:    3180        .1      ADDS     r1,r1,#0x80
        0x1fff2208:    628a        .b      STR      r2,[r1,#0x28]
        0x1fff220a:    4a36        6J      LDR      r2,[pc,#216] ; [0x1fff22e4] = 0x1fff5fd1
        0x1fff220c:    62ca        .b      STR      r2,[r1,#0x2c]
        0x1fff220e:    4a36        6J      LDR      r2,[pc,#216] ; [0x1fff22e8] = 0x1fff2349
        0x1fff2210:    6182        .a      STR      r2,[r0,#0x18]
        0x1fff2212:    4a36        6J      LDR      r2,[pc,#216] ; [0x1fff22ec] = 0x1fff24dd
        0x1fff2214:    62c2        .b      STR      r2,[r0,#0x2c]
        0x1fff2216:    4a36        6J      LDR      r2,[pc,#216] ; [0x1fff22f0] = 0x1fff2365
        0x1fff2218:    6302        .c      STR      r2,[r0,#0x30]
        0x1fff221a:    4a2f        /J      LDR      r2,[pc,#188] ; [0x1fff22d8] = 0x1fff0100
        0x1fff221c:    4835        5H      LDR      r0,[pc,#212] ; [0x1fff22f4] = 0x1fff3689
        0x1fff221e:    3a40        @:      SUBS     r2,r2,#0x40
        0x1fff2220:    6350        Pc      STR      r0,[r2,#0x34]
        0x1fff2222:    4835        5H      LDR      r0,[pc,#212] ; [0x1fff22f8] = 0x1fff3449
        0x1fff2224:    63d0        .c      STR      r0,[r2,#0x3c]
        0x1fff2226:    4835        5H      LDR      r0,[pc,#212] ; [0x1fff22fc] = 0x1fff6881
        0x1fff2228:    61c8        .a      STR      r0,[r1,#0x1c]
        0x1fff222a:    4835        5H      LDR      r0,[pc,#212] ; [0x1fff2300] = 0x1fff666d
        0x1fff222c:    6390        .c      STR      r0,[r2,#0x38]
        0x1fff222e:    492a        *I      LDR      r1,[pc,#168] ; [0x1fff22d8] = 0x1fff0100
        0x1fff2230:    4834        4H      LDR      r0,[pc,#208] ; [0x1fff2304] = 0x1fff45f1
        0x1fff2232:    3140        @1      ADDS     r1,r1,#0x40
        0x1fff2234:    6188        .a      STR      r0,[r1,#0x18]
        0x1fff2236:    4935        5I      LDR      r1,[pc,#212] ; [0x1fff230c] = 0x1fff0200
        0x1fff2238:    4833        3H      LDR      r0,[pc,#204] ; [0x1fff2308] = 0x1fff1e15
        0x1fff223a:    6088        .`      STR      r0,[r1,#8]
        0x1fff223c:    4826        &H      LDR      r0,[pc,#152] ; [0x1fff22d8] = 0x1fff0100
        0x1fff223e:    4934        4I      LDR      r1,[pc,#208] ; [0x1fff2310] = 0x1fff46ad
        0x1fff2240:    3880        .8      SUBS     r0,r0,#0x80
        0x1fff2242:    6041        A`      STR      r1,[r0,#4]
        0x1fff2244:    4933        3I      LDR      r1,[pc,#204] ; [0x1fff2314] = 0x1fff48fd
        0x1fff2246:    4a24        $J      LDR      r2,[pc,#144] ; [0x1fff22d8] = 0x1fff0100
        0x1fff2248:    6341        Ac      STR      r1,[r0,#0x34]
        0x1fff224a:    4933        3I      LDR      r1,[pc,#204] ; [0x1fff2318] = 0x1fff2865
        0x1fff224c:    3ac0        .:      SUBS     r2,r2,#0xc0
        0x1fff224e:    60d1        .`      STR      r1,[r2,#0xc]
        0x1fff2250:    4933        3I      LDR      r1,[pc,#204] ; [0x1fff2320] = 0x1fff0000
        0x1fff2252:    4b32        2K      LDR      r3,[pc,#200] ; [0x1fff231c] = 0x1fff1df9
        0x1fff2254:    4c20         L      LDR      r4,[pc,#128] ; [0x1fff22d8] = 0x1fff0100
        0x1fff2256:    63cb        .c      STR      r3,[r1,#0x3c]
        0x1fff2258:    4b32        2K      LDR      r3,[pc,#200] ; [0x1fff2324] = 0x1fff5655
        0x1fff225a:    3c40        @<      SUBS     r4,r4,#0x40
        0x1fff225c:    6323        #c      STR      r3,[r4,#0x30]
        0x1fff225e:    4b32        2K      LDR      r3,[pc,#200] ; [0x1fff2328] = 0x1fff47c1
        0x1fff2260:    6293        .b      STR      r3,[r2,#0x28]
        0x1fff2262:    4a32        2J      LDR      r2,[pc,#200] ; [0x1fff232c] = 0x1fff4e55
        0x1fff2264:    63c2        .c      STR      r2,[r0,#0x3c]
        0x1fff2266:    4a32        2J      LDR      r2,[pc,#200] ; [0x1fff2330] = 0x1fff47f9
        0x1fff2268:    60c2        .`      STR      r2,[r0,#0xc]
        0x1fff226a:    4a32        2J      LDR      r2,[pc,#200] ; [0x1fff2334] = 0x1fff284d
        0x1fff226c:    634a        Jc      STR      r2,[r1,#0x34]
        0x1fff226e:    4a32        2J      LDR      r2,[pc,#200] ; [0x1fff2338] = 0x1fff4701
        0x1fff2270:    60e2        .`      STR      r2,[r4,#0xc]
        0x1fff2272:    4a32        2J      LDR      r2,[pc,#200] ; [0x1fff233c] = 0x1fff1e45
        0x1fff2274:    638a        .c      STR      r2,[r1,#0x38]
        0x1fff2276:    4a32        2J      LDR      r2,[pc,#200] ; [0x1fff2340] = 0x1fff27f9
        0x1fff2278:    630a        .c      STR      r2,[r1,#0x30]
        0x1fff227a:    4932        2I      LDR      r1,[pc,#200] ; [0x1fff2344] = 0x1fff5111
        0x1fff227c:    6381        .c      STR      r1,[r0,#0x38]
        0x1fff227e:    f7fffb75    ..u.    BL       $Ven$TT$L$$enableSleep ; 0x1fff196c
        0x1fff2282:    2001        .       MOVS     r0,#1
        0x1fff2284:    f7fffb78    ..x.    BL       $Ven$TT$L$$setSleepMode ; 0x1fff1978
        0x1fff2288:    bdf8        ..      POP      {r3-r7,pc}
    $d
        0x1fff228a:    0000        ..      DCW    0
        0x1fff228c:    1fff0998    ....    DCD    536807832
        0x1fff2290:    1fff6b80    .k..    DCD    536832896
        0x1fff2294:    1fff0a4a    J...    DCD    536808010
        0x1fff2298:    1fff0400    ....    DCD    536806400
        0x1fff229c:    1fff7bc8    .{..    DCD    536837064
        0x1fff22a0:    0000046e    n...    DCD    1134
        0x1fff22a4:    1fff6b24    $k..    DCD    536832804
        0x1fff22a8:    0000073a    :...    DCD    1850
        0x1fff22ac:    01c9c380    ....    DCD    30000000
        0x1fff22b0:    0000029a    ....    DCD    666
        0x1fff22b4:    0000c350    P...    DCD    50000
        0x1fff22b8:    00000a28    (...    DCD    2600
        0x1fff22bc:    0000186a    j...    DCD    6250
        0x1fff22c0:    00004e20     N..    DCD    20000
        0x1fff22c4:    1fff09f0    ....    DCD    536807920
        0x1fff22c8:    11004000    .@..    DCD    285229056
        0x1fff22cc:    000005dc    ....    DCD    1500
        0x1fff22d0:    000f4240    @B..    DCD    1000000
        0x1fff22d4:    1fff4b79    yK..    DCD    536824697
        0x1fff22d8:    1fff0100    ....    DCD    536805632
        0x1fff22dc:    1fff263d    =&..    DCD    536815165
        0x1fff22e0:    1fff5cfd    .\..    DCD    536829181
        0x1fff22e4:    1fff5fd1    ._..    DCD    536829905
        0x1fff22e8:    1fff2349    I#..    DCD    536814409
        0x1fff22ec:    1fff24dd    .$..    DCD    536814813
        0x1fff22f0:    1fff2365    e#..    DCD    536814437
        0x1fff22f4:    1fff3689    .6..    DCD    536819337
        0x1fff22f8:    1fff3449    I4..    DCD    536818761
        0x1fff22fc:    1fff6881    .h..    DCD    536832129
        0x1fff2300:    1fff666d    mf..    DCD    536831597
        0x1fff2304:    1fff45f1    .E..    DCD    536823281
        0x1fff2308:    1fff1e15    ....    DCD    536813077
        0x1fff230c:    1fff0200    ....    DCD    536805888
        0x1fff2310:    1fff46ad    .F..    DCD    536823469
        0x1fff2314:    1fff48fd    .H..    DCD    536824061
        0x1fff2318:    1fff2865    e(..    DCD    536815717
        0x1fff231c:    1fff1df9    ....    DCD    536813049
        0x1fff2320:    1fff0000    ....    DCD    536805376
        0x1fff2324:    1fff5655    UV..    DCD    536827477
        0x1fff2328:    1fff47c1    .G..    DCD    536823745
        0x1fff232c:    1fff4e55    UN..    DCD    536825429
        0x1fff2330:    1fff47f9    .G..    DCD    536823801
        0x1fff2334:    1fff284d    M(..    DCD    536815693
        0x1fff2338:    1fff4701    .G..    DCD    536823553
        0x1fff233c:    1fff1e45    E...    DCD    536813125
        0x1fff2340:    1fff27f9    .'..    DCD    536815609
        0x1fff2344:    1fff5111    .Q..    DCD    536826129
    $t
    i.LL_ENC_AES128_Encrypt1
    LL_ENC_AES128_Encrypt1
        0x1fff2348:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff234a:    2401        .$      MOVS     r4,#1
        0x1fff234c:    07a4        ..      LSLS     r4,r4,#30
        0x1fff234e:    68a3        .h      LDR      r3,[r4,#8]
        0x1fff2350:    2510        .%      MOVS     r5,#0x10
        0x1fff2352:    432b        +C      ORRS     r3,r3,r5
        0x1fff2354:    60a3        .`      STR      r3,[r4,#8]
        0x1fff2356:    f7fffb15    ....    BL       $Ven$TT$L$$LL_ENC_AES128_Encrypt0 ; 0x1fff1984
        0x1fff235a:    68a0        .h      LDR      r0,[r4,#8]
        0x1fff235c:    43a8        .C      BICS     r0,r0,r5
        0x1fff235e:    60a0        .`      STR      r0,[r4,#8]
        0x1fff2360:    bd70        p.      POP      {r4-r6,pc}
        0x1fff2362:    0000        ..      MOVS     r0,r0
    i.LL_ENC_Decrypt1
    LL_ENC_Decrypt1
        0x1fff2364:    b5ff        ..      PUSH     {r0-r7,lr}
        0x1fff2366:    4606        .F      MOV      r6,r0
        0x1fff2368:    2001        .       MOVS     r0,#1
        0x1fff236a:    0780        ..      LSLS     r0,r0,#30
        0x1fff236c:    6881        .h      LDR      r1,[r0,#8]
        0x1fff236e:    b081        ..      SUB      sp,sp,#4
        0x1fff2370:    461d        .F      MOV      r5,r3
        0x1fff2372:    2210        ."      MOVS     r2,#0x10
        0x1fff2374:    4311        .C      ORRS     r1,r1,r2
        0x1fff2376:    6081        .`      STR      r1,[r0,#8]
        0x1fff2378:    4f55        UO      LDR      r7,[pc,#340] ; [0x1fff24d0] = 0x40040000
        0x1fff237a:    2000        .       MOVS     r0,#0
        0x1fff237c:    6038        8`      STR      r0,[r7,#0]
        0x1fff237e:    4630        0F      MOV      r0,r6
        0x1fff2380:    30d7        .0      ADDS     r0,r0,#0xd7
        0x1fff2382:    f7fffb05    ....    BL       $Ven$TT$L$$LL_ENC_LoadKey ; 0x1fff1990
        0x1fff2386:    209d        .       MOVS     r0,#0x9d
        0x1fff2388:    0080        ..      LSLS     r0,r0,#2
        0x1fff238a:    4634        4F      MOV      r4,r6
        0x1fff238c:    5980        .Y      LDR      r0,[r0,r6]
        0x1fff238e:    36ff        .6      ADDS     r6,r6,#0xff
        0x1fff2390:    34ca        .4      ADDS     r4,r4,#0xca
        0x1fff2392:    3601        .6      ADDS     r6,#1
        0x1fff2394:    2800        .(      CMP      r0,#0
        0x1fff2396:    6830        0h      LDR      r0,[r6,#0]
        0x1fff2398:    4622        "F      MOV      r2,r4
        0x1fff239a:    d02c        ,.      BEQ      0x1fff23f6 ; LL_ENC_Decrypt1 + 146
        0x1fff239c:    2101        .!      MOVS     r1,#1
        0x1fff239e:    f7fffafd    ....    BL       $Ven$TT$L$$LL_ENC_GenerateNonce ; 0x1fff199c
        0x1fff23a2:    4f4b        KO      LDR      r7,[pc,#300] ; [0x1fff24d0] = 0x40040000
        0x1fff23a4:    7820         x      LDRB     r0,[r4,#0]
        0x1fff23a6:    63f8        .c      STR      r0,[r7,#0x3c]
        0x1fff23a8:    1c64        d.      ADDS     r4,r4,#1
        0x1fff23aa:    4620         F      MOV      r0,r4
        0x1fff23ac:    f7fffafc    ....    BL       $Ven$TT$L$$__aeabi_uread4 ; 0x1fff19a8
        0x1fff23b0:    ba00        ..      REV      r0,r0
        0x1fff23b2:    0a00        ..      LSRS     r0,r0,#8
        0x1fff23b4:    78e1        .x      LDRB     r1,[r4,#3]
        0x1fff23b6:    0200        ..      LSLS     r0,r0,#8
        0x1fff23b8:    4308        .C      ORRS     r0,r0,r1
        0x1fff23ba:    63b8        .c      STR      r0,[r7,#0x38]
        0x1fff23bc:    1d24        $.      ADDS     r4,r4,#4
        0x1fff23be:    4620         F      MOV      r0,r4
        0x1fff23c0:    f7fffaf2    ....    BL       $Ven$TT$L$$__aeabi_uread4 ; 0x1fff19a8
        0x1fff23c4:    ba00        ..      REV      r0,r0
        0x1fff23c6:    0a00        ..      LSRS     r0,r0,#8
        0x1fff23c8:    78e1        .x      LDRB     r1,[r4,#3]
        0x1fff23ca:    0200        ..      LSLS     r0,r0,#8
        0x1fff23cc:    4308        .C      ORRS     r0,r0,r1
        0x1fff23ce:    6378        xc      STR      r0,[r7,#0x34]
        0x1fff23d0:    1d24        $.      ADDS     r4,r4,#4
        0x1fff23d2:    4620         F      MOV      r0,r4
        0x1fff23d4:    f7fffae8    ....    BL       $Ven$TT$L$$__aeabi_uread4 ; 0x1fff19a8
        0x1fff23d8:    ba00        ..      REV      r0,r0
        0x1fff23da:    0a00        ..      LSRS     r0,r0,#8
        0x1fff23dc:    78e1        .x      LDRB     r1,[r4,#3]
        0x1fff23de:    0200        ..      LSLS     r0,r0,#8
        0x1fff23e0:    4308        .C      ORRS     r0,r0,r1
        0x1fff23e2:    6338        8c      STR      r0,[r7,#0x30]
        0x1fff23e4:    9803        ..      LDR      r0,[sp,#0xc]
        0x1fff23e6:    9902        ..      LDR      r1,[sp,#8]
        0x1fff23e8:    0200        ..      LSLS     r0,r0,#8
        0x1fff23ea:    4308        .C      ORRS     r0,r0,r1
        0x1fff23ec:    60f8        .`      STR      r0,[r7,#0xc]
        0x1fff23ee:    9f03        ..      LDR      r7,[sp,#0xc]
        0x1fff23f0:    2400        .$      MOVS     r4,#0
        0x1fff23f2:    1d3f        ?.      ADDS     r7,r7,#4
        0x1fff23f4:    e00e        ..      B        0x1fff2414 ; LL_ENC_Decrypt1 + 176
        0x1fff23f6:    2100        .!      MOVS     r1,#0
        0x1fff23f8:    e7d1        ..      B        0x1fff239e ; LL_ENC_Decrypt1 + 58
        0x1fff23fa:    1928        (.      ADDS     r0,r5,r4
        0x1fff23fc:    1c40        @.      ADDS     r0,r0,#1
        0x1fff23fe:    f7fffad3    ....    BL       $Ven$TT$L$$__aeabi_uread4 ; 0x1fff19a8
        0x1fff2402:    0201        ..      LSLS     r1,r0,#8
        0x1fff2404:    5d28        (]      LDRB     r0,[r5,r4]
        0x1fff2406:    4301        .C      ORRS     r1,r1,r0
        0x1fff2408:    4832        2H      LDR      r0,[pc,#200] ; [0x1fff24d4] = 0x40040100
        0x1fff240a:    1820         .      ADDS     r0,r4,r0
        0x1fff240c:    6001        .`      STR      r1,[r0,#0]
        0x1fff240e:    1d24        $.      ADDS     r4,r4,#4
        0x1fff2410:    b2a4        ..      UXTH     r4,r4
        0x1fff2412:    1f3f        ?.      SUBS     r7,r7,#4
        0x1fff2414:    2f04        ./      CMP      r7,#4
        0x1fff2416:    daf0        ..      BGE      0x1fff23fa ; LL_ENC_Decrypt1 + 150
        0x1fff2418:    2f03        ./      CMP      r7,#3
        0x1fff241a:    d004        ..      BEQ      0x1fff2426 ; LL_ENC_Decrypt1 + 194
        0x1fff241c:    2f02        ./      CMP      r7,#2
        0x1fff241e:    d008        ..      BEQ      0x1fff2432 ; LL_ENC_Decrypt1 + 206
        0x1fff2420:    2f01        ./      CMP      r7,#1
        0x1fff2422:    d00c        ..      BEQ      0x1fff243e ; LL_ENC_Decrypt1 + 218
        0x1fff2424:    e011        ..      B        0x1fff244a ; LL_ENC_Decrypt1 + 230
        0x1fff2426:    1928        (.      ADDS     r0,r5,r4
        0x1fff2428:    f7fffabe    ....    BL       $Ven$TT$L$$__aeabi_uread4 ; 0x1fff19a8
        0x1fff242c:    0201        ..      LSLS     r1,r0,#8
        0x1fff242e:    0a09        ..      LSRS     r1,r1,#8
        0x1fff2430:    e006        ..      B        0x1fff2440 ; LL_ENC_Decrypt1 + 220
        0x1fff2432:    1929        ).      ADDS     r1,r5,r4
        0x1fff2434:    7848        Hx      LDRB     r0,[r1,#1]
        0x1fff2436:    780a        .x      LDRB     r2,[r1,#0]
        0x1fff2438:    0201        ..      LSLS     r1,r0,#8
        0x1fff243a:    4311        .C      ORRS     r1,r1,r2
        0x1fff243c:    e000        ..      B        0x1fff2440 ; LL_ENC_Decrypt1 + 220
        0x1fff243e:    5d29        )]      LDRB     r1,[r5,r4]
        0x1fff2440:    4824        $H      LDR      r0,[pc,#144] ; [0x1fff24d4] = 0x40040100
        0x1fff2442:    1820         .      ADDS     r0,r4,r0
        0x1fff2444:    6001        .`      STR      r1,[r0,#0]
        0x1fff2446:    1d24        $.      ADDS     r4,r4,#4
        0x1fff2448:    b2a4        ..      UXTH     r4,r4
        0x1fff244a:    2100        .!      MOVS     r1,#0
        0x1fff244c:    4f21        !O      LDR      r7,[pc,#132] ; [0x1fff24d4] = 0x40040100
        0x1fff244e:    e002        ..      B        0x1fff2456 ; LL_ENC_Decrypt1 + 242
        0x1fff2450:    19e0        ..      ADDS     r0,r4,r7
        0x1fff2452:    6001        .`      STR      r1,[r0,#0]
        0x1fff2454:    1d24        $.      ADDS     r4,r4,#4
        0x1fff2456:    2cff        .,      CMP      r4,#0xff
        0x1fff2458:    ddfa        ..      BLE      0x1fff2450 ; LL_ENC_Decrypt1 + 236
        0x1fff245a:    481d        .H      LDR      r0,[pc,#116] ; [0x1fff24d0] = 0x40040000
        0x1fff245c:    4a1e        .J      LDR      r2,[pc,#120] ; [0x1fff24d8] = 0xf08
        0x1fff245e:    6042        B`      STR      r2,[r0,#4]
        0x1fff2460:    220f        ."      MOVS     r2,#0xf
        0x1fff2462:    6102        .a      STR      r2,[r0,#0x10]
        0x1fff2464:    2201        ."      MOVS     r2,#1
        0x1fff2466:    6002        .`      STR      r2,[r0,#0]
        0x1fff2468:    6942        Bi      LDR      r2,[r0,#0x14]
        0x1fff246a:    2a00        .*      CMP      r2,#0
        0x1fff246c:    d0fc        ..      BEQ      0x1fff2468 ; LL_ENC_Decrypt1 + 260
        0x1fff246e:    6942        Bi      LDR      r2,[r0,#0x14]
        0x1fff2470:    0793        ..      LSLS     r3,r2,#30
        0x1fff2472:    d401        ..      BMI      0x1fff2478 ; LL_ENC_Decrypt1 + 276
        0x1fff2474:    0752        R.      LSLS     r2,r2,#29
        0x1fff2476:    d408        ..      BMI      0x1fff248a ; LL_ENC_Decrypt1 + 294
        0x1fff2478:    2001        .       MOVS     r0,#1
        0x1fff247a:    0780        ..      LSLS     r0,r0,#30
        0x1fff247c:    6882        .h      LDR      r2,[r0,#8]
        0x1fff247e:    2110        .!      MOVS     r1,#0x10
        0x1fff2480:    438a        .C      BICS     r2,r2,r1
        0x1fff2482:    6082        .`      STR      r2,[r0,#8]
        0x1fff2484:    2000        .       MOVS     r0,#0
        0x1fff2486:    b005        ..      ADD      sp,sp,#0x14
        0x1fff2488:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff248a:    6001        .`      STR      r1,[r0,#0]
        0x1fff248c:    2000        .       MOVS     r0,#0
        0x1fff248e:    9a03        ..      LDR      r2,[sp,#0xc]
        0x1fff2490:    e011        ..      B        0x1fff24b6 ; LL_ENC_Decrypt1 + 338
        0x1fff2492:    19c1        ..      ADDS     r1,r0,r7
        0x1fff2494:    6809        .h      LDR      r1,[r1,#0]
        0x1fff2496:    5429        )T      STRB     r1,[r5,r0]
        0x1fff2498:    1c40        @.      ADDS     r0,r0,#1
        0x1fff249a:    b280        ..      UXTH     r0,r0
        0x1fff249c:    0a0b        ..      LSRS     r3,r1,#8
        0x1fff249e:    542b        +T      STRB     r3,[r5,r0]
        0x1fff24a0:    1c40        @.      ADDS     r0,r0,#1
        0x1fff24a2:    0c0b        ..      LSRS     r3,r1,#16
        0x1fff24a4:    b280        ..      UXTH     r0,r0
        0x1fff24a6:    542b        +T      STRB     r3,[r5,r0]
        0x1fff24a8:    1c40        @.      ADDS     r0,r0,#1
        0x1fff24aa:    b280        ..      UXTH     r0,r0
        0x1fff24ac:    0e09        ..      LSRS     r1,r1,#24
        0x1fff24ae:    5429        )T      STRB     r1,[r5,r0]
        0x1fff24b0:    1c40        @.      ADDS     r0,r0,#1
        0x1fff24b2:    b280        ..      UXTH     r0,r0
        0x1fff24b4:    1f12        ..      SUBS     r2,r2,#4
        0x1fff24b6:    2a00        .*      CMP      r2,#0
        0x1fff24b8:    dceb        ..      BGT      0x1fff2492 ; LL_ENC_Decrypt1 + 302
        0x1fff24ba:    6830        0h      LDR      r0,[r6,#0]
        0x1fff24bc:    1c40        @.      ADDS     r0,r0,#1
        0x1fff24be:    6030        0`      STR      r0,[r6,#0]
        0x1fff24c0:    2001        .       MOVS     r0,#1
        0x1fff24c2:    0780        ..      LSLS     r0,r0,#30
        0x1fff24c4:    6882        .h      LDR      r2,[r0,#8]
        0x1fff24c6:    2110        .!      MOVS     r1,#0x10
        0x1fff24c8:    438a        .C      BICS     r2,r2,r1
        0x1fff24ca:    6082        .`      STR      r2,[r0,#8]
        0x1fff24cc:    2001        .       MOVS     r0,#1
        0x1fff24ce:    e7da        ..      B        0x1fff2486 ; LL_ENC_Decrypt1 + 290
    $d
        0x1fff24d0:    40040000    ...@    DCD    1074003968
        0x1fff24d4:    40040100    ...@    DCD    1074004224
        0x1fff24d8:    00000f08    ....    DCD    3848
    $t
    i.LL_ENC_Encrypt1
    LL_ENC_Encrypt1
        0x1fff24dc:    b5ff        ..      PUSH     {r0-r7,lr}
        0x1fff24de:    4605        .F      MOV      r5,r0
        0x1fff24e0:    2001        .       MOVS     r0,#1
        0x1fff24e2:    0780        ..      LSLS     r0,r0,#30
        0x1fff24e4:    6881        .h      LDR      r1,[r0,#8]
        0x1fff24e6:    b081        ..      SUB      sp,sp,#4
        0x1fff24e8:    461e        .F      MOV      r6,r3
        0x1fff24ea:    2210        ."      MOVS     r2,#0x10
        0x1fff24ec:    4311        .C      ORRS     r1,r1,r2
        0x1fff24ee:    6081        .`      STR      r1,[r0,#8]
        0x1fff24f0:    4f50        PO      LDR      r7,[pc,#320] ; [0x1fff2634] = 0x40040000
        0x1fff24f2:    2000        .       MOVS     r0,#0
        0x1fff24f4:    6038        8`      STR      r0,[r7,#0]
        0x1fff24f6:    4628        (F      MOV      r0,r5
        0x1fff24f8:    30d7        .0      ADDS     r0,r0,#0xd7
        0x1fff24fa:    f7fffa49    ..I.    BL       $Ven$TT$L$$LL_ENC_LoadKey ; 0x1fff1990
        0x1fff24fe:    209d        .       MOVS     r0,#0x9d
        0x1fff2500:    0080        ..      LSLS     r0,r0,#2
        0x1fff2502:    462c        ,F      MOV      r4,r5
        0x1fff2504:    5940        @Y      LDR      r0,[r0,r5]
        0x1fff2506:    34ca        .4      ADDS     r4,r4,#0xca
        0x1fff2508:    3580        .5      ADDS     r5,r5,#0x80
        0x1fff250a:    2800        .(      CMP      r0,#0
        0x1fff250c:    6fe8        .o      LDR      r0,[r5,#0x7c]
        0x1fff250e:    4622        "F      MOV      r2,r4
        0x1fff2510:    d02b        +.      BEQ      0x1fff256a ; LL_ENC_Encrypt1 + 142
        0x1fff2512:    2100        .!      MOVS     r1,#0
        0x1fff2514:    f7fffa42    ..B.    BL       $Ven$TT$L$$LL_ENC_GenerateNonce ; 0x1fff199c
        0x1fff2518:    4f46        FO      LDR      r7,[pc,#280] ; [0x1fff2634] = 0x40040000
        0x1fff251a:    7820         x      LDRB     r0,[r4,#0]
        0x1fff251c:    63f8        .c      STR      r0,[r7,#0x3c]
        0x1fff251e:    1c64        d.      ADDS     r4,r4,#1
        0x1fff2520:    4620         F      MOV      r0,r4
        0x1fff2522:    f7fffa41    ..A.    BL       $Ven$TT$L$$__aeabi_uread4 ; 0x1fff19a8
        0x1fff2526:    ba00        ..      REV      r0,r0
        0x1fff2528:    0a00        ..      LSRS     r0,r0,#8
        0x1fff252a:    78e1        .x      LDRB     r1,[r4,#3]
        0x1fff252c:    0200        ..      LSLS     r0,r0,#8
        0x1fff252e:    4308        .C      ORRS     r0,r0,r1
        0x1fff2530:    63b8        .c      STR      r0,[r7,#0x38]
        0x1fff2532:    1d24        $.      ADDS     r4,r4,#4
        0x1fff2534:    4620         F      MOV      r0,r4
        0x1fff2536:    f7fffa37    ..7.    BL       $Ven$TT$L$$__aeabi_uread4 ; 0x1fff19a8
        0x1fff253a:    ba00        ..      REV      r0,r0
        0x1fff253c:    0a00        ..      LSRS     r0,r0,#8
        0x1fff253e:    78e1        .x      LDRB     r1,[r4,#3]
        0x1fff2540:    0200        ..      LSLS     r0,r0,#8
        0x1fff2542:    4308        .C      ORRS     r0,r0,r1
        0x1fff2544:    6378        xc      STR      r0,[r7,#0x34]
        0x1fff2546:    1d24        $.      ADDS     r4,r4,#4
        0x1fff2548:    4620         F      MOV      r0,r4
        0x1fff254a:    f7fffa2d    ..-.    BL       $Ven$TT$L$$__aeabi_uread4 ; 0x1fff19a8
        0x1fff254e:    ba00        ..      REV      r0,r0
        0x1fff2550:    0a00        ..      LSRS     r0,r0,#8
        0x1fff2552:    78e1        .x      LDRB     r1,[r4,#3]
        0x1fff2554:    0200        ..      LSLS     r0,r0,#8
        0x1fff2556:    4308        .C      ORRS     r0,r0,r1
        0x1fff2558:    6338        8c      STR      r0,[r7,#0x30]
        0x1fff255a:    9803        ..      LDR      r0,[sp,#0xc]
        0x1fff255c:    9902        ..      LDR      r1,[sp,#8]
        0x1fff255e:    0200        ..      LSLS     r0,r0,#8
        0x1fff2560:    4308        .C      ORRS     r0,r0,r1
        0x1fff2562:    60f8        .`      STR      r0,[r7,#0xc]
        0x1fff2564:    2400        .$      MOVS     r4,#0
        0x1fff2566:    9f03        ..      LDR      r7,[sp,#0xc]
        0x1fff2568:    e00e        ..      B        0x1fff2588 ; LL_ENC_Encrypt1 + 172
        0x1fff256a:    2101        .!      MOVS     r1,#1
        0x1fff256c:    e7d2        ..      B        0x1fff2514 ; LL_ENC_Encrypt1 + 56
        0x1fff256e:    1930        0.      ADDS     r0,r6,r4
        0x1fff2570:    1c40        @.      ADDS     r0,r0,#1
        0x1fff2572:    f7fffa19    ....    BL       $Ven$TT$L$$__aeabi_uread4 ; 0x1fff19a8
        0x1fff2576:    0201        ..      LSLS     r1,r0,#8
        0x1fff2578:    5d30        0]      LDRB     r0,[r6,r4]
        0x1fff257a:    4301        .C      ORRS     r1,r1,r0
        0x1fff257c:    482e        .H      LDR      r0,[pc,#184] ; [0x1fff2638] = 0x40040100
        0x1fff257e:    1820         .      ADDS     r0,r4,r0
        0x1fff2580:    6001        .`      STR      r1,[r0,#0]
        0x1fff2582:    1d24        $.      ADDS     r4,r4,#4
        0x1fff2584:    b2a4        ..      UXTH     r4,r4
        0x1fff2586:    1f3f        ?.      SUBS     r7,r7,#4
        0x1fff2588:    2f04        ./      CMP      r7,#4
        0x1fff258a:    daf0        ..      BGE      0x1fff256e ; LL_ENC_Encrypt1 + 146
        0x1fff258c:    2f03        ./      CMP      r7,#3
        0x1fff258e:    d004        ..      BEQ      0x1fff259a ; LL_ENC_Encrypt1 + 190
        0x1fff2590:    2f02        ./      CMP      r7,#2
        0x1fff2592:    d008        ..      BEQ      0x1fff25a6 ; LL_ENC_Encrypt1 + 202
        0x1fff2594:    2f01        ./      CMP      r7,#1
        0x1fff2596:    d00f        ..      BEQ      0x1fff25b8 ; LL_ENC_Encrypt1 + 220
        0x1fff2598:    e014        ..      B        0x1fff25c4 ; LL_ENC_Encrypt1 + 232
        0x1fff259a:    1930        0.      ADDS     r0,r6,r4
        0x1fff259c:    f7fffa04    ....    BL       $Ven$TT$L$$__aeabi_uread4 ; 0x1fff19a8
        0x1fff25a0:    0201        ..      LSLS     r1,r0,#8
        0x1fff25a2:    0a09        ..      LSRS     r1,r1,#8
        0x1fff25a4:    e009        ..      B        0x1fff25ba ; LL_ENC_Encrypt1 + 222
        0x1fff25a6:    1931        1.      ADDS     r1,r6,r4
        0x1fff25a8:    7848        Hx      LDRB     r0,[r1,#1]
        0x1fff25aa:    7809        .x      LDRB     r1,[r1,#0]
        0x1fff25ac:    0200        ..      LSLS     r0,r0,#8
        0x1fff25ae:    4308        .C      ORRS     r0,r0,r1
        0x1fff25b0:    4921        !I      LDR      r1,[pc,#132] ; [0x1fff2638] = 0x40040100
        0x1fff25b2:    1861        a.      ADDS     r1,r4,r1
        0x1fff25b4:    6008        .`      STR      r0,[r1,#0]
        0x1fff25b6:    e003        ..      B        0x1fff25c0 ; LL_ENC_Encrypt1 + 228
        0x1fff25b8:    5d31        1]      LDRB     r1,[r6,r4]
        0x1fff25ba:    481f        .H      LDR      r0,[pc,#124] ; [0x1fff2638] = 0x40040100
        0x1fff25bc:    1820         .      ADDS     r0,r4,r0
        0x1fff25be:    6001        .`      STR      r1,[r0,#0]
        0x1fff25c0:    1d24        $.      ADDS     r4,r4,#4
        0x1fff25c2:    b2a4        ..      UXTH     r4,r4
        0x1fff25c4:    2100        .!      MOVS     r1,#0
        0x1fff25c6:    4b1c        .K      LDR      r3,[pc,#112] ; [0x1fff2638] = 0x40040100
        0x1fff25c8:    e002        ..      B        0x1fff25d0 ; LL_ENC_Encrypt1 + 244
        0x1fff25ca:    18e0        ..      ADDS     r0,r4,r3
        0x1fff25cc:    6001        .`      STR      r1,[r0,#0]
        0x1fff25ce:    1d24        $.      ADDS     r4,r4,#4
        0x1fff25d0:    2cff        .,      CMP      r4,#0xff
        0x1fff25d2:    ddfa        ..      BLE      0x1fff25ca ; LL_ENC_Encrypt1 + 238
        0x1fff25d4:    220f        ."      MOVS     r2,#0xf
        0x1fff25d6:    4817        .H      LDR      r0,[pc,#92] ; [0x1fff2634] = 0x40040000
        0x1fff25d8:    0212        ..      LSLS     r2,r2,#8
        0x1fff25da:    6042        B`      STR      r2,[r0,#4]
        0x1fff25dc:    220f        ."      MOVS     r2,#0xf
        0x1fff25de:    6102        .a      STR      r2,[r0,#0x10]
        0x1fff25e0:    2201        ."      MOVS     r2,#1
        0x1fff25e2:    6002        .`      STR      r2,[r0,#0]
        0x1fff25e4:    6942        Bi      LDR      r2,[r0,#0x14]
        0x1fff25e6:    2a00        .*      CMP      r2,#0
        0x1fff25e8:    d0fc        ..      BEQ      0x1fff25e4 ; LL_ENC_Encrypt1 + 264
        0x1fff25ea:    6001        .`      STR      r1,[r0,#0]
        0x1fff25ec:    9a03        ..      LDR      r2,[sp,#0xc]
        0x1fff25ee:    2000        .       MOVS     r0,#0
        0x1fff25f0:    1d12        ..      ADDS     r2,r2,#4
        0x1fff25f2:    e011        ..      B        0x1fff2618 ; LL_ENC_Encrypt1 + 316
        0x1fff25f4:    18c1        ..      ADDS     r1,r0,r3
        0x1fff25f6:    6809        .h      LDR      r1,[r1,#0]
        0x1fff25f8:    5431        1T      STRB     r1,[r6,r0]
        0x1fff25fa:    1c40        @.      ADDS     r0,r0,#1
        0x1fff25fc:    b280        ..      UXTH     r0,r0
        0x1fff25fe:    0a0c        ..      LSRS     r4,r1,#8
        0x1fff2600:    5434        4T      STRB     r4,[r6,r0]
        0x1fff2602:    1c40        @.      ADDS     r0,r0,#1
        0x1fff2604:    0c0c        ..      LSRS     r4,r1,#16
        0x1fff2606:    b280        ..      UXTH     r0,r0
        0x1fff2608:    5434        4T      STRB     r4,[r6,r0]
        0x1fff260a:    1c40        @.      ADDS     r0,r0,#1
        0x1fff260c:    b280        ..      UXTH     r0,r0
        0x1fff260e:    0e09        ..      LSRS     r1,r1,#24
        0x1fff2610:    5431        1T      STRB     r1,[r6,r0]
        0x1fff2612:    1c40        @.      ADDS     r0,r0,#1
        0x1fff2614:    b280        ..      UXTH     r0,r0
        0x1fff2616:    1f12        ..      SUBS     r2,r2,#4
        0x1fff2618:    2a00        .*      CMP      r2,#0
        0x1fff261a:    dceb        ..      BGT      0x1fff25f4 ; LL_ENC_Encrypt1 + 280
        0x1fff261c:    6fe8        .o      LDR      r0,[r5,#0x7c]
        0x1fff261e:    1c40        @.      ADDS     r0,r0,#1
        0x1fff2620:    67e8        .g      STR      r0,[r5,#0x7c]
        0x1fff2622:    2001        .       MOVS     r0,#1
        0x1fff2624:    0780        ..      LSLS     r0,r0,#30
        0x1fff2626:    6882        .h      LDR      r2,[r0,#8]
        0x1fff2628:    2110        .!      MOVS     r1,#0x10
        0x1fff262a:    438a        .C      BICS     r2,r2,r1
        0x1fff262c:    6082        .`      STR      r2,[r0,#8]
        0x1fff262e:    b005        ..      ADD      sp,sp,#0x14
        0x1fff2630:    bdf0        ..      POP      {r4-r7,pc}
    $d
        0x1fff2632:    0000        ..      DCW    0
        0x1fff2634:    40040000    ...@    DCD    1074003968
        0x1fff2638:    40040100    ...@    DCD    1074004224
    $t
    i.LL_IRQHandler1
    LL_IRQHandler1
        0x1fff263c:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff263e:    f7fff9b9    ....    BL       $Ven$TT$L$$read_current_fine_time ; 0x1fff19b4
        0x1fff2642:    4964        dI      LDR      r1,[pc,#400] ; [0x1fff27d4] = 0x1fff099c
        0x1fff2644:    6008        .`      STR      r0,[r1,#0]
        0x1fff2646:    2004        .       MOVS     r0,#4
        0x1fff2648:    f7fff9ba    ....    BL       $Ven$TT$L$$ll_debug_output ; 0x1fff19c0
        0x1fff264c:    f7fff9be    ....    BL       $Ven$TT$L$$ll_hw_get_irq_status ; 0x1fff19cc
        0x1fff2650:    4605        .F      MOV      r5,r0
        0x1fff2652:    07c0        ..      LSLS     r0,r0,#31
        0x1fff2654:    d015        ..      BEQ      0x1fff2682 ; LL_IRQHandler1 + 70
        0x1fff2656:    4960        `I      LDR      r1,[pc,#384] ; [0x1fff27d8] = 0x1fff0998
        0x1fff2658:    2000        .       MOVS     r0,#0
        0x1fff265a:    6008        .`      STR      r0,[r1,#0]
        0x1fff265c:    485f        _H      LDR      r0,[pc,#380] ; [0x1fff27dc] = 0x1fff0990
        0x1fff265e:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff2660:    2801        .(      CMP      r0,#1
        0x1fff2662:    d011        ..      BEQ      0x1fff2688 ; LL_IRQHandler1 + 76
        0x1fff2664:    2803        .(      CMP      r0,#3
        0x1fff2666:    d013        ..      BEQ      0x1fff2690 ; LL_IRQHandler1 + 84
        0x1fff2668:    2804        .(      CMP      r0,#4
        0x1fff266a:    d015        ..      BEQ      0x1fff2698 ; LL_IRQHandler1 + 92
        0x1fff266c:    2802        .(      CMP      r0,#2
        0x1fff266e:    d017        ..      BEQ      0x1fff26a0 ; LL_IRQHandler1 + 100
        0x1fff2670:    2805        .(      CMP      r0,#5
        0x1fff2672:    d019        ..      BEQ      0x1fff26a8 ; LL_IRQHandler1 + 108
        0x1fff2674:    f7fff9b0    ....    BL       $Ven$TT$L$$ll_hw_get_tr_mode ; 0x1fff19d8
        0x1fff2678:    4f59        YO      LDR      r7,[pc,#356] ; [0x1fff27e0] = 0x1fff091c
        0x1fff267a:    4604        .F      MOV      r4,r0
        0x1fff267c:    2801        .(      CMP      r0,#1
        0x1fff267e:    d01a        ..      BEQ      0x1fff26b6 ; LL_IRQHandler1 + 122
        0x1fff2680:    e01e        ..      B        0x1fff26c0 ; LL_IRQHandler1 + 132
        0x1fff2682:    f7fff9af    ....    BL       $Ven$TT$L$$ll_hw_clr_irq ; 0x1fff19e4
        0x1fff2686:    bdf8        ..      POP      {r3-r7,pc}
        0x1fff2688:    4628        (F      MOV      r0,r5
        0x1fff268a:    f7fff9b1    ....    BL       $Ven$TT$L$$ll_processExtAdvIRQ ; 0x1fff19f0
        0x1fff268e:    e00e        ..      B        0x1fff26ae ; LL_IRQHandler1 + 114
        0x1fff2690:    4628        (F      MOV      r0,r5
        0x1fff2692:    f7fff9b3    ....    BL       $Ven$TT$L$$ll_processExtScanIRQ ; 0x1fff19fc
        0x1fff2696:    e00a        ..      B        0x1fff26ae ; LL_IRQHandler1 + 114
        0x1fff2698:    4628        (F      MOV      r0,r5
        0x1fff269a:    f7fff9b5    ....    BL       $Ven$TT$L$$ll_processExtInitIRQ ; 0x1fff1a08
        0x1fff269e:    e006        ..      B        0x1fff26ae ; LL_IRQHandler1 + 114
        0x1fff26a0:    4628        (F      MOV      r0,r5
        0x1fff26a2:    f7fff9b7    ....    BL       $Ven$TT$L$$ll_processPrdAdvIRQ ; 0x1fff1a14
        0x1fff26a6:    e002        ..      B        0x1fff26ae ; LL_IRQHandler1 + 114
        0x1fff26a8:    4628        (F      MOV      r0,r5
        0x1fff26aa:    f7fff9b9    ....    BL       $Ven$TT$L$$ll_processPrdScanIRQ ; 0x1fff1a20
        0x1fff26ae:    b240        @.      SXTB     r0,r0
        0x1fff26b0:    2801        .(      CMP      r0,#1
        0x1fff26b2:    d0e8        ..      BEQ      0x1fff2686 ; LL_IRQHandler1 + 74
        0x1fff26b4:    e05f        _.      B        0x1fff2776 ; LL_IRQHandler1 + 314
        0x1fff26b6:    7838        8x      LDRB     r0,[r7,#0]
        0x1fff26b8:    2805        .(      CMP      r0,#5
        0x1fff26ba:    d009        ..      BEQ      0x1fff26d0 ; LL_IRQHandler1 + 148
        0x1fff26bc:    2806        .(      CMP      r0,#6
        0x1fff26be:    d007        ..      BEQ      0x1fff26d0 ; LL_IRQHandler1 + 148
        0x1fff26c0:    4848        HH      LDR      r0,[pc,#288] ; [0x1fff27e4] = 0x1fff0923
        0x1fff26c2:    4e49        IN      LDR      r6,[pc,#292] ; [0x1fff27e8] = 0x1fff0ba6
        0x1fff26c4:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff26c6:    2802        .(      CMP      r0,#2
        0x1fff26c8:    d006        ..      BEQ      0x1fff26d8 ; LL_IRQHandler1 + 156
        0x1fff26ca:    2805        .(      CMP      r0,#5
        0x1fff26cc:    d004        ..      BEQ      0x1fff26d8 ; LL_IRQHandler1 + 156
        0x1fff26ce:    e009        ..      B        0x1fff26e4 ; LL_IRQHandler1 + 168
        0x1fff26d0:    4628        (F      MOV      r0,r5
        0x1fff26d2:    f002fcc9    ....    BL       ll_processBasicIRQ_SRX ; 0x1fff5068
        0x1fff26d6:    e04e        N.      B        0x1fff2776 ; LL_IRQHandler1 + 314
        0x1fff26d8:    2c00        .,      CMP      r4,#0
        0x1fff26da:    d006        ..      BEQ      0x1fff26ea ; LL_IRQHandler1 + 174
        0x1fff26dc:    2802        .(      CMP      r0,#2
        0x1fff26de:    d008        ..      BEQ      0x1fff26f2 ; LL_IRQHandler1 + 182
        0x1fff26e0:    2805        .(      CMP      r0,#5
        0x1fff26e2:    d006        ..      BEQ      0x1fff26f2 ; LL_IRQHandler1 + 182
        0x1fff26e4:    2c02        .,      CMP      r4,#2
        0x1fff26e6:    d00e        ..      BEQ      0x1fff2706 ; LL_IRQHandler1 + 202
        0x1fff26e8:    e005        ..      B        0x1fff26f6 ; LL_IRQHandler1 + 186
        0x1fff26ea:    4628        (F      MOV      r0,r5
        0x1fff26ec:    f002fce0    ....    BL       ll_processBasicIRQ_secondaryAdvSTX ; 0x1fff50b0
        0x1fff26f0:    e041        A.      B        0x1fff2776 ; LL_IRQHandler1 + 314
        0x1fff26f2:    2c02        .,      CMP      r4,#2
        0x1fff26f4:    d002        ..      BEQ      0x1fff26fc ; LL_IRQHandler1 + 192
        0x1fff26f6:    2c01        .,      CMP      r4,#1
        0x1fff26f8:    d013        ..      BEQ      0x1fff2722 ; LL_IRQHandler1 + 230
        0x1fff26fa:    e016        ..      B        0x1fff272a ; LL_IRQHandler1 + 238
        0x1fff26fc:    7bb1        .{      LDRB     r1,[r6,#0xe]
        0x1fff26fe:    2900        .)      CMP      r1,#0
        0x1fff2700:    d007        ..      BEQ      0x1fff2712 ; LL_IRQHandler1 + 214
        0x1fff2702:    2902        .)      CMP      r1,#2
        0x1fff2704:    d005        ..      BEQ      0x1fff2712 ; LL_IRQHandler1 + 214
        0x1fff2706:    7839        9x      LDRB     r1,[r7,#0]
        0x1fff2708:    2905        .)      CMP      r1,#5
        0x1fff270a:    d006        ..      BEQ      0x1fff271a ; LL_IRQHandler1 + 222
        0x1fff270c:    2801        .(      CMP      r0,#1
        0x1fff270e:    d01a        ..      BEQ      0x1fff2746 ; LL_IRQHandler1 + 266
        0x1fff2710:    e00b        ..      B        0x1fff272a ; LL_IRQHandler1 + 238
        0x1fff2712:    4628        (F      MOV      r0,r5
        0x1fff2714:    f002fcd8    ....    BL       ll_processBasicIRQ_secondaryAdvTRX ; 0x1fff50c8
        0x1fff2718:    e018        ..      B        0x1fff274c ; LL_IRQHandler1 + 272
        0x1fff271a:    4628        (F      MOV      r0,r5
        0x1fff271c:    f002fcb0    ....    BL       ll_processBasicIRQ_ScanTRX ; 0x1fff5080
        0x1fff2720:    e014        ..      B        0x1fff274c ; LL_IRQHandler1 + 272
        0x1fff2722:    2801        .(      CMP      r0,#1
        0x1fff2724:    d007        ..      BEQ      0x1fff2736 ; LL_IRQHandler1 + 250
        0x1fff2726:    2806        .(      CMP      r0,#6
        0x1fff2728:    d009        ..      BEQ      0x1fff273e ; LL_IRQHandler1 + 258
        0x1fff272a:    4628        (F      MOV      r0,r5
        0x1fff272c:    f7fff97e    ..~.    BL       $Ven$TT$L$$ll_processBasicIRQ ; 0x1fff1a2c
        0x1fff2730:    2c02        .,      CMP      r4,#2
        0x1fff2732:    d00b        ..      BEQ      0x1fff274c ; LL_IRQHandler1 + 272
        0x1fff2734:    e01f        ..      B        0x1fff2776 ; LL_IRQHandler1 + 314
        0x1fff2736:    4628        (F      MOV      r0,r5
        0x1fff2738:    f002fcde    ....    BL       ll_processBasicIRQ_secondaryScanSRX ; 0x1fff50f8
        0x1fff273c:    e01b        ..      B        0x1fff2776 ; LL_IRQHandler1 + 314
        0x1fff273e:    4628        (F      MOV      r0,r5
        0x1fff2740:    f002fcce    ....    BL       ll_processBasicIRQ_secondaryInitSRX ; 0x1fff50e0
        0x1fff2744:    e017        ..      B        0x1fff2776 ; LL_IRQHandler1 + 314
        0x1fff2746:    4628        (F      MOV      r0,r5
        0x1fff2748:    f002fca6    ....    BL       ll_processBasicIRQ_secScanTRX ; 0x1fff5098
        0x1fff274c:    7838        8x      LDRB     r0,[r7,#0]
        0x1fff274e:    2801        .(      CMP      r0,#1
        0x1fff2750:    d111        ..      BNE      0x1fff2776 ; LL_IRQHandler1 + 314
        0x1fff2752:    0568        h.      LSLS     r0,r5,#21
        0x1fff2754:    d40f        ..      BMI      0x1fff2776 ; LL_IRQHandler1 + 314
        0x1fff2756:    7b70        p{      LDRB     r0,[r6,#0xd]
        0x1fff2758:    07c1        ..      LSLS     r1,r0,#31
        0x1fff275a:    d001        ..      BEQ      0x1fff2760 ; LL_IRQHandler1 + 292
        0x1fff275c:    2025        %       MOVS     r0,#0x25
        0x1fff275e:    e004        ..      B        0x1fff276a ; LL_IRQHandler1 + 302
        0x1fff2760:    0780        ..      LSLS     r0,r0,#30
        0x1fff2762:    d501        ..      BPL      0x1fff2768 ; LL_IRQHandler1 + 300
        0x1fff2764:    2026        &       MOVS     r0,#0x26
        0x1fff2766:    e000        ..      B        0x1fff276a ; LL_IRQHandler1 + 302
        0x1fff2768:    2027        '       MOVS     r0,#0x27
        0x1fff276a:    7d31        1}      LDRB     r1,[r6,#0x14]
        0x1fff276c:    4281        .B      CMP      r1,r0
        0x1fff276e:    d902        ..      BLS      0x1fff2776 ; LL_IRQHandler1 + 314
        0x1fff2770:    2032        2       MOVS     r0,#0x32
        0x1fff2772:    f7fff961    ..a.    BL       $Ven$TT$L$$ll_schedule_next_event ; 0x1fff1a38
        0x1fff2776:    4c1b        .L      LDR      r4,[pc,#108] ; [0x1fff27e4] = 0x1fff0923
        0x1fff2778:    7820         x      LDRB     r0,[r4,#0]
        0x1fff277a:    2804        .(      CMP      r0,#4
        0x1fff277c:    d004        ..      BEQ      0x1fff2788 ; LL_IRQHandler1 + 332
        0x1fff277e:    2803        .(      CMP      r0,#3
        0x1fff2780:    d01a        ..      BEQ      0x1fff27b8 ; LL_IRQHandler1 + 380
        0x1fff2782:    2807        .(      CMP      r0,#7
        0x1fff2784:    d01d        ..      BEQ      0x1fff27c2 ; LL_IRQHandler1 + 390
        0x1fff2786:    e020         .      B        0x1fff27ca ; LL_IRQHandler1 + 398
        0x1fff2788:    f7fff95c    ..\.    BL       $Ven$TT$L$$llSecAdvAllow ; 0x1fff1a44
        0x1fff278c:    2800        .(      CMP      r0,#0
        0x1fff278e:    d01c        ..      BEQ      0x1fff27ca ; LL_IRQHandler1 + 398
        0x1fff2790:    f7fff95e    ..^.    BL       $Ven$TT$L$$llSetupSecAdvEvt ; 0x1fff1a50
        0x1fff2794:    2058        X       MOVS     r0,#0x58
        0x1fff2796:    f7fff961    ..a.    BL       $Ven$TT$L$$ll_hw_set_rx_timeout ; 0x1fff1a5c
        0x1fff279a:    7820         x      LDRB     r0,[r4,#0]
        0x1fff279c:    2800        .(      CMP      r0,#0
        0x1fff279e:    d001        ..      BEQ      0x1fff27a4 ; LL_IRQHandler1 + 360
        0x1fff27a0:    2002        .       MOVS     r0,#2
        0x1fff27a2:    7020         p      STRB     r0,[r4,#0]
        0x1fff27a4:    4811        .H      LDR      r0,[pc,#68] ; [0x1fff27ec] = 0x1fff6b80
        0x1fff27a6:    7840        @x      LDRB     r0,[r0,#1]
        0x1fff27a8:    2800        .(      CMP      r0,#0
        0x1fff27aa:    d00e        ..      BEQ      0x1fff27ca ; LL_IRQHandler1 + 398
        0x1fff27ac:    7820         x      LDRB     r0,[r4,#0]
        0x1fff27ae:    2800        .(      CMP      r0,#0
        0x1fff27b0:    d10b        ..      BNE      0x1fff27ca ; LL_IRQHandler1 + 398
        0x1fff27b2:    2003        .       MOVS     r0,#3
        0x1fff27b4:    7020         p      STRB     r0,[r4,#0]
        0x1fff27b6:    e008        ..      B        0x1fff27ca ; LL_IRQHandler1 + 398
        0x1fff27b8:    480d        .H      LDR      r0,[pc,#52] ; [0x1fff27f0] = 0x1fff0bbc
        0x1fff27ba:    7c80        .|      LDRB     r0,[r0,#0x12]
        0x1fff27bc:    f7fff954    ..T.    BL       $Ven$TT$L$$llSetupSecScan ; 0x1fff1a68
        0x1fff27c0:    e003        ..      B        0x1fff27ca ; LL_IRQHandler1 + 398
        0x1fff27c2:    480c        .H      LDR      r0,[pc,#48] ; [0x1fff27f4] = 0x1fff0bd4
        0x1fff27c4:    7b80        .{      LDRB     r0,[r0,#0xe]
        0x1fff27c6:    f7fff955    ..U.    BL       $Ven$TT$L$$llSetupSecInit ; 0x1fff1a74
        0x1fff27ca:    2003        .       MOVS     r0,#3
        0x1fff27cc:    f7fff8f8    ....    BL       $Ven$TT$L$$ll_debug_output ; 0x1fff19c0
        0x1fff27d0:    bdf8        ..      POP      {r3-r7,pc}
    $d
        0x1fff27d2:    0000        ..      DCW    0
        0x1fff27d4:    1fff099c    ....    DCD    536807836
        0x1fff27d8:    1fff0998    ....    DCD    536807832
        0x1fff27dc:    1fff0990    ....    DCD    536807824
        0x1fff27e0:    1fff091c    ....    DCD    536807708
        0x1fff27e4:    1fff0923    #...    DCD    536807715
        0x1fff27e8:    1fff0ba6    ....    DCD    536808358
        0x1fff27ec:    1fff6b80    .k..    DCD    536832896
        0x1fff27f0:    1fff0bbc    ....    DCD    536808380
        0x1fff27f4:    1fff0bd4    ....    DCD    536808404
    $t
    i.LL_ProcessEvent1
    LL_ProcessEvent1
        0x1fff27f8:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff27fa:    460c        .F      MOV      r4,r1
        0x1fff27fc:    4910        .I      LDR      r1,[pc,#64] ; [0x1fff2840] = 0x9de
        0x1fff27fe:    420c        .B      TST      r4,r1
        0x1fff2800:    d11a        ..      BNE      0x1fff2838 ; LL_ProcessEvent1 + 64
        0x1fff2802:    0561        a.      LSLS     r1,r4,#21
        0x1fff2804:    d518        ..      BPL      0x1fff2838 ; LL_ProcessEvent1 + 64
        0x1fff2806:    2500        .%      MOVS     r5,#0
        0x1fff2808:    480e        .H      LDR      r0,[pc,#56] ; [0x1fff2844] = 0x1fff7758
        0x1fff280a:    00af        ..      LSLS     r7,r5,#2
        0x1fff280c:    183e        >.      ADDS     r6,r7,r0
        0x1fff280e:    7871        qx      LDRB     r1,[r6,#1]
        0x1fff2810:    2901        .)      CMP      r1,#1
        0x1fff2812:    d109        ..      BNE      0x1fff2828 ; LL_ProcessEvent1 + 48
        0x1fff2814:    5dc1        .]      LDRB     r1,[r0,r7]
        0x1fff2816:    8870        p.      LDRH     r0,[r6,#2]
        0x1fff2818:    f7fff932    ..2.    BL       $Ven$TT$L$$LL_DisconnectCback ; 0x1fff1a80
        0x1fff281c:    480a        .H      LDR      r0,[pc,#40] ; [0x1fff2848] = 0xffff
        0x1fff281e:    8070        p.      STRH     r0,[r6,#2]
        0x1fff2820:    4908        .I      LDR      r1,[pc,#32] ; [0x1fff2844] = 0x1fff7758
        0x1fff2822:    2000        .       MOVS     r0,#0
        0x1fff2824:    55c8        .U      STRB     r0,[r1,r7]
        0x1fff2826:    7070        pp      STRB     r0,[r6,#1]
        0x1fff2828:    1c6d        m.      ADDS     r5,r5,#1
        0x1fff282a:    b2ed        ..      UXTB     r5,r5
        0x1fff282c:    2d10        .-      CMP      r5,#0x10
        0x1fff282e:    d3eb        ..      BCC      0x1fff2808 ; LL_ProcessEvent1 + 16
        0x1fff2830:    2001        .       MOVS     r0,#1
        0x1fff2832:    0280        ..      LSLS     r0,r0,#10
        0x1fff2834:    4060        `@      EORS     r0,r0,r4
        0x1fff2836:    bdf8        ..      POP      {r3-r7,pc}
        0x1fff2838:    4621        !F      MOV      r1,r4
        0x1fff283a:    f7fff927    ..'.    BL       $Ven$TT$L$$LL_ProcessEvent0 ; 0x1fff1a8c
        0x1fff283e:    bdf8        ..      POP      {r3-r7,pc}
    $d
        0x1fff2840:    000009de    ....    DCD    2526
        0x1fff2844:    1fff7758    Xw..    DCD    536835928
        0x1fff2848:    0000ffff    ....    DCD    65535
    $t
    i.LL_Reset1
    LL_Reset1
        0x1fff284c:    b510        ..      PUSH     {r4,lr}
        0x1fff284e:    2001        .       MOVS     r0,#1
        0x1fff2850:    f002ff28    ..(.    BL       patch_linkBuf_init ; 0x1fff56a4
        0x1fff2854:    f7fff920    .. .    BL       $Ven$TT$L$$LL_Reset0 ; 0x1fff1a98
        0x1fff2858:    4604        .F      MOV      r4,r0
        0x1fff285a:    2000        .       MOVS     r0,#0
        0x1fff285c:    f002ff22    ..".    BL       patch_linkBuf_init ; 0x1fff56a4
        0x1fff2860:    4620         F      MOV      r0,r4
        0x1fff2862:    bd10        ..      POP      {r4,pc}
    i.LL_set_default_conn_params1
    LL_set_default_conn_params1
        0x1fff2864:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff2866:    4604        .F      MOV      r4,r0
        0x1fff2868:    f7fff91c    ....    BL       $Ven$TT$L$$LL_set_default_conn_params0 ; 0x1fff1aa4
        0x1fff286c:    1de2        ..      ADDS     r2,r4,#7
        0x1fff286e:    32ff        .2      ADDS     r2,r2,#0xff
        0x1fff2870:    32fa        .2      ADDS     r2,r2,#0xfa
        0x1fff2872:    6fd0        .o      LDR      r0,[r2,#0x7c]
        0x1fff2874:    2100        .!      MOVS     r1,#0
        0x1fff2876:    0c00        ..      LSRS     r0,r0,#16
        0x1fff2878:    0400        ..      LSLS     r0,r0,#16
        0x1fff287a:    67d0        .g      STR      r0,[r2,#0x7c]
        0x1fff287c:    4610        .F      MOV      r0,r2
        0x1fff287e:    3880        .8      SUBS     r0,r0,#0x80
        0x1fff2880:    008b        ..      LSLS     r3,r1,#2
        0x1fff2882:    191b        ..      ADDS     r3,r3,r4
        0x1fff2884:    33ff        .3      ADDS     r3,r3,#0xff
        0x1fff2886:    3301        .3      ADDS     r3,#1
        0x1fff2888:    6ac5        .j      LDR      r5,[r0,#0x2c]
        0x1fff288a:    1c49        I.      ADDS     r1,r1,#1
        0x1fff288c:    66dd        .f      STR      r5,[r3,#0x6c]
        0x1fff288e:    2908        .)      CMP      r1,#8
        0x1fff2890:    dbf6        ..      BLT      0x1fff2880 ; LL_set_default_conn_params1 + 28
        0x1fff2892:    2100        .!      MOVS     r1,#0
        0x1fff2894:    008b        ..      LSLS     r3,r1,#2
        0x1fff2896:    191b        ..      ADDS     r3,r3,r4
        0x1fff2898:    33ff        .3      ADDS     r3,r3,#0xff
        0x1fff289a:    3381        .3      ADDS     r3,r3,#0x81
        0x1fff289c:    6ac5        .j      LDR      r5,[r0,#0x2c]
        0x1fff289e:    1c49        I.      ADDS     r1,r1,#1
        0x1fff28a0:    60dd        .`      STR      r5,[r3,#0xc]
        0x1fff28a2:    2908        .)      CMP      r1,#8
        0x1fff28a4:    dbf6        ..      BLT      0x1fff2894 ; LL_set_default_conn_params1 + 48
        0x1fff28a6:    2001        .       MOVS     r0,#1
        0x1fff28a8:    64d0        .d      STR      r0,[r2,#0x4c]
        0x1fff28aa:    bd70        p.      POP      {r4-r6,pc}
    i.NVIC_EnableIRQ
    NVIC_EnableIRQ
        0x1fff28ac:    06c1        ..      LSLS     r1,r0,#27
        0x1fff28ae:    0ec9        ..      LSRS     r1,r1,#27
        0x1fff28b0:    2001        .       MOVS     r0,#1
        0x1fff28b2:    4088        .@      LSLS     r0,r0,r1
        0x1fff28b4:    4901        .I      LDR      r1,[pc,#4] ; [0x1fff28bc] = 0xe000e100
        0x1fff28b6:    6008        .`      STR      r0,[r1,#0]
        0x1fff28b8:    4770        pG      BX       lr
    $d
        0x1fff28ba:    0000        ..      DCW    0
        0x1fff28bc:    e000e100    ....    DCD    3758153984
    $t
    i.PPP_IRQHandler
    PPP_IRQHandler
        0x1fff28c0:    b5f0        ..      PUSH     {r4-r7,lr}
        0x1fff28c2:    b085        ..      SUB      sp,sp,#0x14
        0x1fff28c4:    f7fff876    ..v.    BL       $Ven$TT$L$$read_current_fine_time ; 0x1fff19b4
        0x1fff28c8:    4d3c        <M      LDR      r5,[pc,#240] ; [0x1fff29bc] = 0x1fff6b2c
        0x1fff28ca:    60a8        .`      STR      r0,[r5,#8]
        0x1fff28cc:    f7fff87e    ..~.    BL       $Ven$TT$L$$ll_hw_get_irq_status ; 0x1fff19cc
        0x1fff28d0:    4604        .F      MOV      r4,r0
        0x1fff28d2:    07c0        ..      LSLS     r0,r0,#31
        0x1fff28d4:    d011        ..      BEQ      0x1fff28fa ; PPP_IRQHandler + 58
        0x1fff28d6:    493a        :I      LDR      r1,[pc,#232] ; [0x1fff29c0] = 0x1fff0998
        0x1fff28d8:    2000        .       MOVS     r0,#0
        0x1fff28da:    6008        .`      STR      r0,[r1,#0]
        0x1fff28dc:    f7fff810    ....    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff1900
        0x1fff28e0:    f7fff87a    ..z.    BL       $Ven$TT$L$$ll_hw_get_tr_mode ; 0x1fff19d8
        0x1fff28e4:    4937        7I      LDR      r1,[pc,#220] ; [0x1fff29c4] = 0x1fff7220
        0x1fff28e6:    2800        .(      CMP      r0,#0
        0x1fff28e8:    d00b        ..      BEQ      0x1fff2902 ; PPP_IRQHandler + 66
        0x1fff28ea:    460f        .F      MOV      r7,r1
        0x1fff28ec:    3f0c        .?      SUBS     r7,r7,#0xc
        0x1fff28ee:    462e        .F      MOV      r6,r5
        0x1fff28f0:    2801        .(      CMP      r0,#1
        0x1fff28f2:    d00b        ..      BEQ      0x1fff290c ; PPP_IRQHandler + 76
        0x1fff28f4:    2802        .(      CMP      r0,#2
        0x1fff28f6:    d031        1.      BEQ      0x1fff295c ; PPP_IRQHandler + 156
        0x1fff28f8:    e051        Q.      B        0x1fff299e ; PPP_IRQHandler + 222
        0x1fff28fa:    f7fff873    ..s.    BL       $Ven$TT$L$$ll_hw_clr_irq ; 0x1fff19e4
        0x1fff28fe:    b005        ..      ADD      sp,sp,#0x14
        0x1fff2900:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff2902:    7808        .x      LDRB     r0,[r1,#0]
        0x1fff2904:    2800        .(      CMP      r0,#0
        0x1fff2906:    d14a        J.      BNE      0x1fff299e ; PPP_IRQHandler + 222
        0x1fff2908:    2104        .!      MOVS     r1,#4
        0x1fff290a:    e045        E.      B        0x1fff2998 ; PPP_IRQHandler + 216
        0x1fff290c:    7808        .x      LDRB     r0,[r1,#0]
        0x1fff290e:    2801        .(      CMP      r0,#1
        0x1fff2910:    d145        E.      BNE      0x1fff299e ; PPP_IRQHandler + 222
        0x1fff2912:    4a2a        *J      LDR      r2,[pc,#168] ; [0x1fff29bc] = 0x1fff6b2c
        0x1fff2914:    1d11        ..      ADDS     r1,r2,#4
        0x1fff2916:    1ec8        ..      SUBS     r0,r1,#3
        0x1fff2918:    f003fbae    ....    BL       rf_phy_get_pktFoot ; 0x1fff6078
        0x1fff291c:    78f8        .x      LDRB     r0,[r7,#3]
        0x1fff291e:    2800        .(      CMP      r0,#0
        0x1fff2920:    d013        ..      BEQ      0x1fff294a ; PPP_IRQHandler + 138
        0x1fff2922:    0560        `.      LSLS     r0,r4,#21
        0x1fff2924:    d50f        ..      BPL      0x1fff2946 ; PPP_IRQHandler + 134
        0x1fff2926:    ab02        ..      ADD      r3,sp,#8
        0x1fff2928:    aa01        ..      ADD      r2,sp,#4
        0x1fff292a:    a903        ..      ADD      r1,sp,#0xc
        0x1fff292c:    4826        &H      LDR      r0,[pc,#152] ; [0x1fff29c8] = 0x1fff6ff4
        0x1fff292e:    f7fff8bf    ....    BL       $Ven$TT$L$$ll_hw_read_rfifo ; 0x1fff1ab0
        0x1fff2932:    4b22        "K      LDR      r3,[pc,#136] ; [0x1fff29bc] = 0x1fff6b2c
        0x1fff2934:    9600        ..      STR      r6,[sp,#0]
        0x1fff2936:    1d1b        ..      ADDS     r3,r3,#4
        0x1fff2938:    1eda        ..      SUBS     r2,r3,#3
        0x1fff293a:    9902        ..      LDR      r1,[sp,#8]
        0x1fff293c:    9801        ..      LDR      r0,[sp,#4]
        0x1fff293e:    f003fbb3    ....    BL       rf_phy_get_pktFoot_fromPkt ; 0x1fff60a8
        0x1fff2942:    f003f85b    ..[.    BL       phy_rx_data_check ; 0x1fff59fc
        0x1fff2946:    2108        .!      MOVS     r1,#8
        0x1fff2948:    e026        &.      B        0x1fff2998 ; PPP_IRQHandler + 216
        0x1fff294a:    0760        `.      LSLS     r0,r4,#29
        0x1fff294c:    d4fb        ..      BMI      0x1fff2946 ; PPP_IRQHandler + 134
        0x1fff294e:    ab02        ..      ADD      r3,sp,#8
        0x1fff2950:    aa01        ..      ADD      r2,sp,#4
        0x1fff2952:    a903        ..      ADD      r1,sp,#0xc
        0x1fff2954:    481c        .H      LDR      r0,[pc,#112] ; [0x1fff29c8] = 0x1fff6ff4
        0x1fff2956:    f7fff8b1    ....    BL       $Ven$TT$L$$ll_hw_read_rfifo_pplus ; 0x1fff1abc
        0x1fff295a:    e7ea        ..      B        0x1fff2932 ; PPP_IRQHandler + 114
        0x1fff295c:    7808        .x      LDRB     r0,[r1,#0]
        0x1fff295e:    2802        .(      CMP      r0,#2
        0x1fff2960:    d11d        ..      BNE      0x1fff299e ; PPP_IRQHandler + 222
        0x1fff2962:    4a16        .J      LDR      r2,[pc,#88] ; [0x1fff29bc] = 0x1fff6b2c
        0x1fff2964:    1d11        ..      ADDS     r1,r2,#4
        0x1fff2966:    1ec8        ..      SUBS     r0,r1,#3
        0x1fff2968:    f003fb86    ....    BL       rf_phy_get_pktFoot ; 0x1fff6078
        0x1fff296c:    78f8        .x      LDRB     r0,[r7,#3]
        0x1fff296e:    2800        .(      CMP      r0,#0
        0x1fff2970:    d01a        ..      BEQ      0x1fff29a8 ; PPP_IRQHandler + 232
        0x1fff2972:    0560        `.      LSLS     r0,r4,#21
        0x1fff2974:    d50f        ..      BPL      0x1fff2996 ; PPP_IRQHandler + 214
        0x1fff2976:    ab02        ..      ADD      r3,sp,#8
        0x1fff2978:    aa01        ..      ADD      r2,sp,#4
        0x1fff297a:    a903        ..      ADD      r1,sp,#0xc
        0x1fff297c:    4812        .H      LDR      r0,[pc,#72] ; [0x1fff29c8] = 0x1fff6ff4
        0x1fff297e:    f7fff897    ....    BL       $Ven$TT$L$$ll_hw_read_rfifo ; 0x1fff1ab0
        0x1fff2982:    4b0e        .K      LDR      r3,[pc,#56] ; [0x1fff29bc] = 0x1fff6b2c
        0x1fff2984:    9600        ..      STR      r6,[sp,#0]
        0x1fff2986:    1d1b        ..      ADDS     r3,r3,#4
        0x1fff2988:    1eda        ..      SUBS     r2,r3,#3
        0x1fff298a:    9902        ..      LDR      r1,[sp,#8]
        0x1fff298c:    9801        ..      LDR      r0,[sp,#4]
        0x1fff298e:    f003fb8b    ....    BL       rf_phy_get_pktFoot_fromPkt ; 0x1fff60a8
        0x1fff2992:    f003f833    ..3.    BL       phy_rx_data_check ; 0x1fff59fc
        0x1fff2996:    2110        .!      MOVS     r1,#0x10
        0x1fff2998:    78a8        .x      LDRB     r0,[r5,#2]
        0x1fff299a:    f7fff895    ....    BL       $Ven$TT$L$$osal_set_event ; 0x1fff1ac8
        0x1fff299e:    f7fff821    ..!.    BL       $Ven$TT$L$$ll_hw_clr_irq ; 0x1fff19e4
        0x1fff29a2:    f7feffb9    ....    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff1918
        0x1fff29a6:    e7aa        ..      B        0x1fff28fe ; PPP_IRQHandler + 62
        0x1fff29a8:    0760        `.      LSLS     r0,r4,#29
        0x1fff29aa:    d4f4        ..      BMI      0x1fff2996 ; PPP_IRQHandler + 214
        0x1fff29ac:    ab02        ..      ADD      r3,sp,#8
        0x1fff29ae:    aa01        ..      ADD      r2,sp,#4
        0x1fff29b0:    a903        ..      ADD      r1,sp,#0xc
        0x1fff29b2:    4805        .H      LDR      r0,[pc,#20] ; [0x1fff29c8] = 0x1fff6ff4
        0x1fff29b4:    f7fff882    ....    BL       $Ven$TT$L$$ll_hw_read_rfifo_pplus ; 0x1fff1abc
        0x1fff29b8:    e7e3        ..      B        0x1fff2982 ; PPP_IRQHandler + 194
    $d
        0x1fff29ba:    0000        ..      DCW    0
        0x1fff29bc:    1fff6b2c    ,k..    DCD    536832812
        0x1fff29c0:    1fff0998    ....    DCD    536807832
        0x1fff29c4:    1fff7220     r..    DCD    536834592
        0x1fff29c8:    1fff6ff4    .o..    DCD    536834036
    $t
    i.PropProtocol_Init
    PropProtocol_Init
        0x1fff29cc:    b5f0        ..      PUSH     {r4-r7,lr}
        0x1fff29ce:    4f4a        JO      LDR      r7,[pc,#296] ; [0x1fff2af8] = 0x1fff6b2c
        0x1fff29d0:    b085        ..      SUB      sp,sp,#0x14
        0x1fff29d2:    70b8        .p      STRB     r0,[r7,#2]
        0x1fff29d4:    494a        JI      LDR      r1,[pc,#296] ; [0x1fff2b00] = 0x1fff0380
        0x1fff29d6:    4849        IH      LDR      r0,[pc,#292] ; [0x1fff2afc] = 0x1fff28c1
        0x1fff29d8:    6108        .a      STR      r0,[r1,#0x10]
        0x1fff29da:    2206        ."      MOVS     r2,#6
        0x1fff29dc:    a903        ..      ADD      r1,sp,#0xc
        0x1fff29de:    4849        IH      LDR      r0,[pc,#292] ; [0x1fff2b04] = 0x11004000
        0x1fff29e0:    f001f80e    ....    BL       hal_flash_read ; 0x1fff3a00
        0x1fff29e4:    4669        iF      MOV      r1,sp
        0x1fff29e6:    4638        8F      MOV      r0,r7
        0x1fff29e8:    7b09        .{      LDRB     r1,[r1,#0xc]
        0x1fff29ea:    300c        .0      ADDS     r0,r0,#0xc
        0x1fff29ec:    70c1        .p      STRB     r1,[r0,#3]
        0x1fff29ee:    4669        iF      MOV      r1,sp
        0x1fff29f0:    7b49        I{      LDRB     r1,[r1,#0xd]
        0x1fff29f2:    7081        .p      STRB     r1,[r0,#2]
        0x1fff29f4:    4669        iF      MOV      r1,sp
        0x1fff29f6:    7b89        .{      LDRB     r1,[r1,#0xe]
        0x1fff29f8:    7041        Ap      STRB     r1,[r0,#1]
        0x1fff29fa:    4669        iF      MOV      r1,sp
        0x1fff29fc:    7bc9        .{      LDRB     r1,[r1,#0xf]
        0x1fff29fe:    7001        .p      STRB     r1,[r0,#0]
        0x1fff2a00:    4669        iF      MOV      r1,sp
        0x1fff2a02:    7c09        .|      LDRB     r1,[r1,#0x10]
        0x1fff2a04:    7141        Aq      STRB     r1,[r0,#5]
        0x1fff2a06:    4669        iF      MOV      r1,sp
        0x1fff2a08:    7c49        I|      LDRB     r1,[r1,#0x11]
        0x1fff2a0a:    7101        .q      STRB     r1,[r0,#4]
        0x1fff2a0c:    2000        .       MOVS     r0,#0
        0x1fff2a0e:    4a3e        >J      LDR      r2,[pc,#248] ; [0x1fff2b08] = 0x1fff70f4
        0x1fff2a10:    4601        .F      MOV      r1,r0
        0x1fff2a12:    5411        .T      STRB     r1,[r2,r0]
        0x1fff2a14:    1c40        @.      ADDS     r0,r0,#1
        0x1fff2a16:    b2c0        ..      UXTB     r0,r0
        0x1fff2a18:    28ff        .(      CMP      r0,#0xff
        0x1fff2a1a:    d3fa        ..      BCC      0x1fff2a12 ; PropProtocol_Init + 70
        0x1fff2a1c:    483b        ;H      LDR      r0,[pc,#236] ; [0x1fff2b0c] = 0x1fff71f4
        0x1fff2a1e:    2402        .$      MOVS     r4,#2
        0x1fff2a20:    7004        .p      STRB     r4,[r0,#0]
        0x1fff2a22:    2501        .%      MOVS     r5,#1
        0x1fff2a24:    7045        Ep      STRB     r5,[r0,#1]
        0x1fff2a26:    2206        ."      MOVS     r2,#6
        0x1fff2a28:    7082        .p      STRB     r2,[r0,#2]
        0x1fff2a2a:    221b        ."      MOVS     r2,#0x1b
        0x1fff2a2c:    70c2        .p      STRB     r2,[r0,#3]
        0x1fff2a2e:    26ff        .&      MOVS     r6,#0xff
        0x1fff2a30:    7106        .q      STRB     r6,[r0,#4]
        0x1fff2a32:    2204        ."      MOVS     r2,#4
        0x1fff2a34:    7142        Bq      STRB     r2,[r0,#5]
        0x1fff2a36:    2205        ."      MOVS     r2,#5
        0x1fff2a38:    7182        .q      STRB     r2,[r0,#6]
        0x1fff2a3a:    71c5        .q      STRB     r5,[r0,#7]
        0x1fff2a3c:    7204        .r      STRB     r4,[r0,#8]
        0x1fff2a3e:    2203        ."      MOVS     r2,#3
        0x1fff2a40:    7242        Br      STRB     r2,[r0,#9]
        0x1fff2a42:    23cc        .#      MOVS     r3,#0xcc
        0x1fff2a44:    7283        .r      STRB     r3,[r0,#0xa]
        0x1fff2a46:    72c1        .r      STRB     r1,[r0,#0xb]
        0x1fff2a48:    7302        .s      STRB     r2,[r0,#0xc]
        0x1fff2a4a:    23aa        .#      MOVS     r3,#0xaa
        0x1fff2a4c:    7343        Cs      STRB     r3,[r0,#0xd]
        0x1fff2a4e:    7381        .s      STRB     r1,[r0,#0xe]
        0x1fff2a50:    2193        .!      MOVS     r1,#0x93
        0x1fff2a52:    73c1        .s      STRB     r1,[r0,#0xf]
        0x1fff2a54:    7403        .t      STRB     r3,[r0,#0x10]
        0x1fff2a56:    2167        g!      MOVS     r1,#0x67
        0x1fff2a58:    7441        At      STRB     r1,[r0,#0x11]
        0x1fff2a5a:    21f7        .!      MOVS     r1,#0xf7
        0x1fff2a5c:    7481        .t      STRB     r1,[r0,#0x12]
        0x1fff2a5e:    21db        .!      MOVS     r1,#0xdb
        0x1fff2a60:    74c1        .t      STRB     r1,[r0,#0x13]
        0x1fff2a62:    2134        4!      MOVS     r1,#0x34
        0x1fff2a64:    7501        .u      STRB     r1,[r0,#0x14]
        0x1fff2a66:    21c4        .!      MOVS     r1,#0xc4
        0x1fff2a68:    7541        Au      STRB     r1,[r0,#0x15]
        0x1fff2a6a:    7582        .u      STRB     r2,[r0,#0x16]
        0x1fff2a6c:    218e        .!      MOVS     r1,#0x8e
        0x1fff2a6e:    75c1        .u      STRB     r1,[r0,#0x17]
        0x1fff2a70:    215c        \!      MOVS     r1,#0x5c
        0x1fff2a72:    7601        .v      STRB     r1,[r0,#0x18]
        0x1fff2a74:    210b        .!      MOVS     r1,#0xb
        0x1fff2a76:    7641        Av      STRB     r1,[r0,#0x19]
        0x1fff2a78:    7683        .v      STRB     r3,[r0,#0x1a]
        0x1fff2a7a:    2197        .!      MOVS     r1,#0x97
        0x1fff2a7c:    76c1        .v      STRB     r1,[r0,#0x1b]
        0x1fff2a7e:    2130        0!      MOVS     r1,#0x30
        0x1fff2a80:    7701        .w      STRB     r1,[r0,#0x1c]
        0x1fff2a82:    2156        V!      MOVS     r1,#0x56
        0x1fff2a84:    7741        Aw      STRB     r1,[r0,#0x1d]
        0x1fff2a86:    21e6        .!      MOVS     r1,#0xe6
        0x1fff2a88:    7781        .w      STRB     r1,[r0,#0x1e]
        0x1fff2a8a:    a021        !.      ADR      r0,{pc}+0x86 ; 0x1fff2b10
        0x1fff2a8c:    6800        .h      LDR      r0,[r0,#0]
        0x1fff2a8e:    9000        ..      STR      r0,[sp,#0]
        0x1fff2a90:    4819        .H      LDR      r0,[pc,#100] ; [0x1fff2af8] = 0x1fff6b2c
        0x1fff2a92:    231f        .#      MOVS     r3,#0x1f
        0x1fff2a94:    4a1d        .J      LDR      r2,[pc,#116] ; [0x1fff2b0c] = 0x1fff71f4
        0x1fff2a96:    4669        iF      MOV      r1,sp
        0x1fff2a98:    300c        .0      ADDS     r0,r0,#0xc
        0x1fff2a9a:    f003f83d    ..=.    BL       phy_tx_buf_updata ; 0x1fff5b18
        0x1fff2a9e:    4630        0F      MOV      r0,r6
        0x1fff2aa0:    4e1a        .N      LDR      r6,[pc,#104] ; [0x1fff2b0c] = 0x1fff71f4
        0x1fff2aa2:    4a1f        .J      LDR      r2,[pc,#124] ; [0x1fff2b20] = 0x9c4
        0x1fff2aa4:    362c        ,6      ADDS     r6,r6,#0x2c
        0x1fff2aa6:    7030        0p      STRB     r0,[r6,#0]
        0x1fff2aa8:    2064        d       MOVS     r0,#0x64
        0x1fff2aaa:    6070        p`      STR      r0,[r6,#4]
        0x1fff2aac:    2041        A       MOVS     r0,#0x41
        0x1fff2aae:    60b0        .`      STR      r0,[r6,#8]
        0x1fff2ab0:    20ff        .       MOVS     r0,#0xff
        0x1fff2ab2:    30f5        .0      ADDS     r0,r0,#0xf5
        0x1fff2ab4:    8230        0.      STRH     r0,[r6,#0x10]
        0x1fff2ab6:    4817        .H      LDR      r0,[pc,#92] ; [0x1fff2b14] = 0x4e20
        0x1fff2ab8:    81f0        ..      STRH     r0,[r6,#0xe]
        0x1fff2aba:    4628        (F      MOV      r0,r5
        0x1fff2abc:    4635        5F      MOV      r5,r6
        0x1fff2abe:    7334        4s      STRB     r4,[r6,#0xc]
        0x1fff2ac0:    3d0c        .=      SUBS     r5,r5,#0xc
        0x1fff2ac2:    7028        (p      STRB     r0,[r5,#0]
        0x1fff2ac4:    2025        %       MOVS     r0,#0x25
        0x1fff2ac6:    7068        hp      STRB     r0,[r5,#1]
        0x1fff2ac8:    70ec        .p      STRB     r4,[r5,#3]
        0x1fff2aca:    4813        .H      LDR      r0,[pc,#76] ; [0x1fff2b18] = 0x555555
        0x1fff2acc:    6068        h`      STR      r0,[r5,#4]
        0x1fff2ace:    2053        S       MOVS     r0,#0x53
        0x1fff2ad0:    70a8        .p      STRB     r0,[r5,#2]
        0x1fff2ad2:    4812        .H      LDR      r0,[pc,#72] ; [0x1fff2b1c] = 0x8e89bed6
        0x1fff2ad4:    60a8        .`      STR      r0,[r5,#8]
        0x1fff2ad6:    2102        .!      MOVS     r1,#2
        0x1fff2ad8:    78b8        .x      LDRB     r0,[r7,#2]
        0x1fff2ada:    f7fefffb    ....    BL       $Ven$TT$L$$osal_start_timerEx ; 0x1fff1ad4
        0x1fff2ade:    78e8        .x      LDRB     r0,[r5,#3]
        0x1fff2ae0:    78aa        .x      LDRB     r2,[r5,#2]
        0x1fff2ae2:    466b        kF      MOV      r3,sp
        0x1fff2ae4:    6869        ih      LDR      r1,[r5,#4]
        0x1fff2ae6:    c307        ..      STM      r3!,{r0-r2}
        0x1fff2ae8:    7b32        2{      LDRB     r2,[r6,#0xc]
        0x1fff2aea:    7831        1x      LDRB     r1,[r6,#0]
        0x1fff2aec:    a00d        ..      ADR      r0,{pc}+0x38 ; 0x1fff2b24
        0x1fff2aee:    68ab        .h      LDR      r3,[r5,#8]
        0x1fff2af0:    f000fd4a    ..J.    BL       dbg_printf ; 0x1fff3588
        0x1fff2af4:    b005        ..      ADD      sp,sp,#0x14
        0x1fff2af6:    bdf0        ..      POP      {r4-r7,pc}
    $d
        0x1fff2af8:    1fff6b2c    ,k..    DCD    536832812
        0x1fff2afc:    1fff28c1    .(..    DCD    536815809
        0x1fff2b00:    1fff0380    ....    DCD    536806272
        0x1fff2b04:    11004000    .@..    DCD    285229056
        0x1fff2b08:    1fff70f4    .p..    DCD    536834292
        0x1fff2b0c:    1fff71f4    .q..    DCD    536834548
        0x1fff2b10:    00002500    .%..    DCD    9472
        0x1fff2b14:    00004e20     N..    DCD    20000
        0x1fff2b18:    00555555    UUU.    DCD    5592405
        0x1fff2b1c:    8e89bed6    ....    DCD    2391391958
        0x1fff2b20:    000009c4    ....    DCD    2500
        0x1fff2b24:    5948505b    [PHY    DCD    1497911387
        0x1fff2b28:    6e69205d    ] in    DCD    1852383325
        0x1fff2b2c:    64207469    it d    DCD    1679848553
        0x1fff2b30:    20656e6f    one     DCD    543518319
        0x1fff2b34:    72206425    %d r    DCD    1914725413
        0x1fff2b38:    6e686366    fchn    DCD    1852334950
        0x1fff2b3c:    53206425    %d S    DCD    1394631717
        0x1fff2b40:    38255b57    W[%8    DCD    941972311
        0x1fff2b44:    43205d78    x] C    DCD    1126194552
        0x1fff2b48:    255b4352    RC[%    DCD    626738002
        0x1fff2b4c:    38252064    d %8    DCD    941957220
        0x1fff2b50:    57205d78    x] W    DCD    1461738872
        0x1fff2b54:    32255b54    T[%2    DCD    841309012
        0x1fff2b58:    000a5d78    x]..    DCD    679288
    $t
    i.PropProtocol_ProcessEvent
    PropProtocol_ProcessEvent
        0x1fff2b5c:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff2b5e:    4e32        2N      LDR      r6,[pc,#200] ; [0x1fff2c28] = 0x1fff7214
        0x1fff2b60:    4832        2H      LDR      r0,[pc,#200] ; [0x1fff2c2c] = 0x1fff6b2c
        0x1fff2b62:    4635        5F      MOV      r5,r6
        0x1fff2b64:    460c        .F      MOV      r4,r1
        0x1fff2b66:    07ca        ..      LSLS     r2,r1,#31
        0x1fff2b68:    350c        .5      ADDS     r5,r5,#0xc
        0x1fff2b6a:    7829        )x      LDRB     r1,[r5,#0]
        0x1fff2b6c:    7880        .x      LDRB     r0,[r0,#2]
        0x1fff2b6e:    2702        .'      MOVS     r7,#2
        0x1fff2b70:    2a00        .*      CMP      r2,#0
        0x1fff2b72:    d013        ..      BEQ      0x1fff2b9c ; PropProtocol_ProcessEvent + 64
        0x1fff2b74:    29ff        .)      CMP      r1,#0xff
        0x1fff2b76:    d005        ..      BEQ      0x1fff2b84 ; PropProtocol_ProcessEvent + 40
        0x1fff2b78:    2214        ."      MOVS     r2,#0x14
        0x1fff2b7a:    2101        .!      MOVS     r1,#1
        0x1fff2b7c:    f7feffaa    ....    BL       $Ven$TT$L$$osal_start_timerEx ; 0x1fff1ad4
        0x1fff2b80:    2001        .       MOVS     r0,#1
        0x1fff2b82:    e04d        M.      B        0x1fff2c20 ; PropProtocol_ProcessEvent + 196
        0x1fff2b84:    2000        .       MOVS     r0,#0
        0x1fff2b86:    7028        (p      STRB     r0,[r5,#0]
        0x1fff2b88:    732f        /s      STRB     r7,[r5,#0xc]
        0x1fff2b8a:    2053        S       MOVS     r0,#0x53
        0x1fff2b8c:    70b0        .p      STRB     r0,[r6,#2]
        0x1fff2b8e:    f002ff01    ....    BL       phy_rf_tx ; 0x1fff5994
        0x1fff2b92:    4826        &H      LDR      r0,[pc,#152] ; [0x1fff2c2c] = 0x1fff6b2c
        0x1fff2b94:    2101        .!      MOVS     r1,#1
        0x1fff2b96:    7880        .x      LDRB     r0,[r0,#2]
        0x1fff2b98:    686a        jh      LDR      r2,[r5,#4]
        0x1fff2b9a:    e7ef        ..      B        0x1fff2b7c ; PropProtocol_ProcessEvent + 32
        0x1fff2b9c:    07a2        ..      LSLS     r2,r4,#30
        0x1fff2b9e:    d517        ..      BPL      0x1fff2bd0 ; PropProtocol_ProcessEvent + 116
        0x1fff2ba0:    29ff        .)      CMP      r1,#0xff
        0x1fff2ba2:    d006        ..      BEQ      0x1fff2bb2 ; PropProtocol_ProcessEvent + 86
        0x1fff2ba4:    2205        ."      MOVS     r2,#5
        0x1fff2ba6:    2102        .!      MOVS     r1,#2
        0x1fff2ba8:    f7feff94    ....    BL       $Ven$TT$L$$osal_start_timerEx ; 0x1fff1ad4
        0x1fff2bac:    4620         F      MOV      r0,r4
        0x1fff2bae:    4078        x@      EORS     r0,r0,r7
        0x1fff2bb0:    bdf8        ..      POP      {r3-r7,pc}
        0x1fff2bb2:    2001        .       MOVS     r0,#1
        0x1fff2bb4:    7028        (p      STRB     r0,[r5,#0]
        0x1fff2bb6:    732f        /s      STRB     r7,[r5,#0xc]
        0x1fff2bb8:    f7fefefc    ....    BL       $Ven$TT$L$$read_current_fine_time ; 0x1fff19b4
        0x1fff2bbc:    6168        ha      STR      r0,[r5,#0x14]
        0x1fff2bbe:    2053        S       MOVS     r0,#0x53
        0x1fff2bc0:    70b0        .p      STRB     r0,[r6,#2]
        0x1fff2bc2:    f002fec1    ....    BL       phy_rf_rx ; 0x1fff5948
        0x1fff2bc6:    4819        .H      LDR      r0,[pc,#100] ; [0x1fff2c2c] = 0x1fff6b2c
        0x1fff2bc8:    2102        .!      MOVS     r1,#2
        0x1fff2bca:    7880        .x      LDRB     r0,[r0,#2]
        0x1fff2bcc:    68aa        .h      LDR      r2,[r5,#8]
        0x1fff2bce:    e7eb        ..      B        0x1fff2ba8 ; PropProtocol_ProcessEvent + 76
        0x1fff2bd0:    06a0        ..      LSLS     r0,r4,#26
        0x1fff2bd2:    d503        ..      BPL      0x1fff2bdc ; PropProtocol_ProcessEvent + 128
        0x1fff2bd4:    f002ff24    ..$.    BL       phy_rx_data_process ; 0x1fff5a20
        0x1fff2bd8:    2020                MOVS     r0,#0x20
        0x1fff2bda:    e021        !.      B        0x1fff2c20 ; PropProtocol_ProcessEvent + 196
        0x1fff2bdc:    0760        `.      LSLS     r0,r4,#29
        0x1fff2bde:    d516        ..      BPL      0x1fff2c0e ; PropProtocol_ProcessEvent + 178
        0x1fff2be0:    7b28        ({      LDRB     r0,[r5,#0xc]
        0x1fff2be2:    2802        .(      CMP      r0,#2
        0x1fff2be4:    d004        ..      BEQ      0x1fff2bf0 ; PropProtocol_ProcessEvent + 148
        0x1fff2be6:    281a        .(      CMP      r0,#0x1a
        0x1fff2be8:    d006        ..      BEQ      0x1fff2bf8 ; PropProtocol_ProcessEvent + 156
        0x1fff2bea:    2850        P(      CMP      r0,#0x50
        0x1fff2bec:    d00b        ..      BEQ      0x1fff2c06 ; PropProtocol_ProcessEvent + 170
        0x1fff2bee:    e00c        ..      B        0x1fff2c0a ; PropProtocol_ProcessEvent + 174
        0x1fff2bf0:    201a        .       MOVS     r0,#0x1a
        0x1fff2bf2:    7328        (s      STRB     r0,[r5,#0xc]
        0x1fff2bf4:    2033        3       MOVS     r0,#0x33
        0x1fff2bf6:    e002        ..      B        0x1fff2bfe ; PropProtocol_ProcessEvent + 162
        0x1fff2bf8:    2050        P       MOVS     r0,#0x50
        0x1fff2bfa:    7328        (s      STRB     r0,[r5,#0xc]
        0x1fff2bfc:    2073        s       MOVS     r0,#0x73
        0x1fff2bfe:    70b0        .p      STRB     r0,[r6,#2]
        0x1fff2c00:    f002fec8    ....    BL       phy_rf_tx ; 0x1fff5994
        0x1fff2c04:    e001        ..      B        0x1fff2c0a ; PropProtocol_ProcessEvent + 174
        0x1fff2c06:    20ff        .       MOVS     r0,#0xff
        0x1fff2c08:    7028        (p      STRB     r0,[r5,#0]
        0x1fff2c0a:    2004        .       MOVS     r0,#4
        0x1fff2c0c:    e008        ..      B        0x1fff2c20 ; PropProtocol_ProcessEvent + 196
        0x1fff2c0e:    0720         .      LSLS     r0,r4,#28
        0x1fff2c10:    d503        ..      BPL      0x1fff2c1a ; PropProtocol_ProcessEvent + 190
        0x1fff2c12:    f002ffd5    ....    BL       process_rx_done_evt ; 0x1fff5bc0
        0x1fff2c16:    2008        .       MOVS     r0,#8
        0x1fff2c18:    e002        ..      B        0x1fff2c20 ; PropProtocol_ProcessEvent + 196
        0x1fff2c1a:    06e0        ..      LSLS     r0,r4,#27
        0x1fff2c1c:    d502        ..      BPL      0x1fff2c24 ; PropProtocol_ProcessEvent + 200
        0x1fff2c1e:    2010        .       MOVS     r0,#0x10
        0x1fff2c20:    4060        `@      EORS     r0,r0,r4
        0x1fff2c22:    bdf8        ..      POP      {r3-r7,pc}
        0x1fff2c24:    2000        .       MOVS     r0,#0
        0x1fff2c26:    bdf8        ..      POP      {r3-r7,pc}
    $d
        0x1fff2c28:    1fff7214    .r..    DCD    536834580
        0x1fff2c2c:    1fff6b2c    ,k..    DCD    536832812
    $t
    i.SystemInit
    SystemInit
        0x1fff2c30:    4902        .I      LDR      r1,[pc,#8] ; [0x1fff2c3c] = 0x1fff6b7c
        0x1fff2c32:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff2c38] = 0x17d7840
        0x1fff2c34:    6008        .`      STR      r0,[r1,#0]
        0x1fff2c36:    4770        pG      BX       lr
    $d
        0x1fff2c38:    017d7840    @x}.    DCD    25000000
        0x1fff2c3c:    1fff6b7c    |k..    DCD    536832892
    $t
    i.__NVIC_EnableIRQ
    __NVIC_EnableIRQ
        0x1fff2c40:    2800        .(      CMP      r0,#0
        0x1fff2c42:    db05        ..      BLT      0x1fff2c50 ; __NVIC_EnableIRQ + 16
        0x1fff2c44:    06c1        ..      LSLS     r1,r0,#27
        0x1fff2c46:    0ec9        ..      LSRS     r1,r1,#27
        0x1fff2c48:    2001        .       MOVS     r0,#1
        0x1fff2c4a:    4088        .@      LSLS     r0,r0,r1
        0x1fff2c4c:    4901        .I      LDR      r1,[pc,#4] ; [0x1fff2c54] = 0xe000e100
        0x1fff2c4e:    6008        .`      STR      r0,[r1,#0]
        0x1fff2c50:    4770        pG      BX       lr
    $d
        0x1fff2c52:    0000        ..      DCW    0
        0x1fff2c54:    e000e100    ....    DCD    3758153984
    $t
    i.__NVIC_SetPriority
    __NVIC_SetPriority
        0x1fff2c58:    0783        ..      LSLS     r3,r0,#30
        0x1fff2c5a:    22ff        ."      MOVS     r2,#0xff
        0x1fff2c5c:    0edb        ..      LSRS     r3,r3,#27
        0x1fff2c5e:    409a        .@      LSLS     r2,r2,r3
        0x1fff2c60:    0789        ..      LSLS     r1,r1,#30
        0x1fff2c62:    0e09        ..      LSRS     r1,r1,#24
        0x1fff2c64:    4099        .@      LSLS     r1,r1,r3
        0x1fff2c66:    2800        .(      CMP      r0,#0
        0x1fff2c68:    db08        ..      BLT      0x1fff2c7c ; __NVIC_SetPriority + 36
        0x1fff2c6a:    0883        ..      LSRS     r3,r0,#2
        0x1fff2c6c:    4809        .H      LDR      r0,[pc,#36] ; [0x1fff2c94] = 0xe000e400
        0x1fff2c6e:    009b        ..      LSLS     r3,r3,#2
        0x1fff2c70:    181b        ..      ADDS     r3,r3,r0
        0x1fff2c72:    6818        .h      LDR      r0,[r3,#0]
        0x1fff2c74:    4390        .C      BICS     r0,r0,r2
        0x1fff2c76:    4308        .C      ORRS     r0,r0,r1
        0x1fff2c78:    6018        .`      STR      r0,[r3,#0]
        0x1fff2c7a:    4770        pG      BX       lr
        0x1fff2c7c:    0700        ..      LSLS     r0,r0,#28
        0x1fff2c7e:    0f00        ..      LSRS     r0,r0,#28
        0x1fff2c80:    3808        .8      SUBS     r0,r0,#8
        0x1fff2c82:    0883        ..      LSRS     r3,r0,#2
        0x1fff2c84:    4804        .H      LDR      r0,[pc,#16] ; [0x1fff2c98] = 0xe000ed00
        0x1fff2c86:    009b        ..      LSLS     r3,r3,#2
        0x1fff2c88:    181b        ..      ADDS     r3,r3,r0
        0x1fff2c8a:    69d8        .i      LDR      r0,[r3,#0x1c]
        0x1fff2c8c:    4390        .C      BICS     r0,r0,r2
        0x1fff2c8e:    4308        .C      ORRS     r0,r0,r1
        0x1fff2c90:    61d8        .a      STR      r0,[r3,#0x1c]
        0x1fff2c92:    4770        pG      BX       lr
    $d
        0x1fff2c94:    e000e400    ....    DCD    3758154752
        0x1fff2c98:    e000ed00    ....    DCD    3758157056
    $t
    i.__NVIC_SetPriority
    __NVIC_SetPriority
        0x1fff2c9c:    0783        ..      LSLS     r3,r0,#30
        0x1fff2c9e:    22ff        ."      MOVS     r2,#0xff
        0x1fff2ca0:    0edb        ..      LSRS     r3,r3,#27
        0x1fff2ca2:    409a        .@      LSLS     r2,r2,r3
        0x1fff2ca4:    0789        ..      LSLS     r1,r1,#30
        0x1fff2ca6:    0e09        ..      LSRS     r1,r1,#24
        0x1fff2ca8:    4099        .@      LSLS     r1,r1,r3
        0x1fff2caa:    2800        .(      CMP      r0,#0
        0x1fff2cac:    db08        ..      BLT      0x1fff2cc0 ; __NVIC_SetPriority + 36
        0x1fff2cae:    0883        ..      LSRS     r3,r0,#2
        0x1fff2cb0:    4809        .H      LDR      r0,[pc,#36] ; [0x1fff2cd8] = 0xe000e400
        0x1fff2cb2:    009b        ..      LSLS     r3,r3,#2
        0x1fff2cb4:    181b        ..      ADDS     r3,r3,r0
        0x1fff2cb6:    6818        .h      LDR      r0,[r3,#0]
        0x1fff2cb8:    4390        .C      BICS     r0,r0,r2
        0x1fff2cba:    4308        .C      ORRS     r0,r0,r1
        0x1fff2cbc:    6018        .`      STR      r0,[r3,#0]
        0x1fff2cbe:    4770        pG      BX       lr
        0x1fff2cc0:    0700        ..      LSLS     r0,r0,#28
        0x1fff2cc2:    0f00        ..      LSRS     r0,r0,#28
        0x1fff2cc4:    3808        .8      SUBS     r0,r0,#8
        0x1fff2cc6:    0883        ..      LSRS     r3,r0,#2
        0x1fff2cc8:    4804        .H      LDR      r0,[pc,#16] ; [0x1fff2cdc] = 0xe000ed00
        0x1fff2cca:    009b        ..      LSLS     r3,r3,#2
        0x1fff2ccc:    181b        ..      ADDS     r3,r3,r0
        0x1fff2cce:    69d8        .i      LDR      r0,[r3,#0x1c]
        0x1fff2cd0:    4390        .C      BICS     r0,r0,r2
        0x1fff2cd2:    4308        .C      ORRS     r0,r0,r1
        0x1fff2cd4:    61d8        .a      STR      r0,[r3,#0x1c]
        0x1fff2cd6:    4770        pG      BX       lr
    $d
        0x1fff2cd8:    e000e400    ....    DCD    3758154752
        0x1fff2cdc:    e000ed00    ....    DCD    3758157056
    $t
    i.__NVIC_SetPriority
    __NVIC_SetPriority
        0x1fff2ce0:    0783        ..      LSLS     r3,r0,#30
        0x1fff2ce2:    22ff        ."      MOVS     r2,#0xff
        0x1fff2ce4:    0edb        ..      LSRS     r3,r3,#27
        0x1fff2ce6:    409a        .@      LSLS     r2,r2,r3
        0x1fff2ce8:    0789        ..      LSLS     r1,r1,#30
        0x1fff2cea:    0e09        ..      LSRS     r1,r1,#24
        0x1fff2cec:    4099        .@      LSLS     r1,r1,r3
        0x1fff2cee:    2800        .(      CMP      r0,#0
        0x1fff2cf0:    db08        ..      BLT      0x1fff2d04 ; __NVIC_SetPriority + 36
        0x1fff2cf2:    0883        ..      LSRS     r3,r0,#2
        0x1fff2cf4:    4809        .H      LDR      r0,[pc,#36] ; [0x1fff2d1c] = 0xe000e400
        0x1fff2cf6:    009b        ..      LSLS     r3,r3,#2
        0x1fff2cf8:    181b        ..      ADDS     r3,r3,r0
        0x1fff2cfa:    6818        .h      LDR      r0,[r3,#0]
        0x1fff2cfc:    4390        .C      BICS     r0,r0,r2
        0x1fff2cfe:    4308        .C      ORRS     r0,r0,r1
        0x1fff2d00:    6018        .`      STR      r0,[r3,#0]
        0x1fff2d02:    4770        pG      BX       lr
        0x1fff2d04:    0700        ..      LSLS     r0,r0,#28
        0x1fff2d06:    0f00        ..      LSRS     r0,r0,#28
        0x1fff2d08:    3808        .8      SUBS     r0,r0,#8
        0x1fff2d0a:    0883        ..      LSRS     r3,r0,#2
        0x1fff2d0c:    4804        .H      LDR      r0,[pc,#16] ; [0x1fff2d20] = 0xe000ed00
        0x1fff2d0e:    009b        ..      LSLS     r3,r3,#2
        0x1fff2d10:    181b        ..      ADDS     r3,r3,r0
        0x1fff2d12:    69d8        .i      LDR      r0,[r3,#0x1c]
        0x1fff2d14:    4390        .C      BICS     r0,r0,r2
        0x1fff2d16:    4308        .C      ORRS     r0,r0,r1
        0x1fff2d18:    61d8        .a      STR      r0,[r3,#0x1c]
        0x1fff2d1a:    4770        pG      BX       lr
    $d
        0x1fff2d1c:    e000e400    ....    DCD    3758154752
        0x1fff2d20:    e000ed00    ....    DCD    3758157056
    $t
    i.__scatterload_copy
    __scatterload_copy
        0x1fff2d24:    e002        ..      B        0x1fff2d2c ; __scatterload_copy + 8
        0x1fff2d26:    c808        ..      LDM      r0!,{r3}
        0x1fff2d28:    1f12        ..      SUBS     r2,r2,#4
        0x1fff2d2a:    c108        ..      STM      r1!,{r3}
        0x1fff2d2c:    2a00        .*      CMP      r2,#0
        0x1fff2d2e:    d1fa        ..      BNE      0x1fff2d26 ; __scatterload_copy + 2
        0x1fff2d30:    4770        pG      BX       lr
    i.__scatterload_null
    __scatterload_null
        0x1fff2d32:    4770        pG      BX       lr
    i.__scatterload_zeroinit
    __scatterload_zeroinit
        0x1fff2d34:    2000        .       MOVS     r0,#0
        0x1fff2d36:    e001        ..      B        0x1fff2d3c ; __scatterload_zeroinit + 8
        0x1fff2d38:    c101        ..      STM      r1!,{r0}
        0x1fff2d3a:    1f12        ..      SUBS     r2,r2,#4
        0x1fff2d3c:    2a00        .*      CMP      r2,#0
        0x1fff2d3e:    d1fb        ..      BNE      0x1fff2d38 ; __scatterload_zeroinit + 4
        0x1fff2d40:    4770        pG      BX       lr
        0x1fff2d42:    0000        ..      MOVS     r0,r0
    i.__wdt_init
    __wdt_init
        0x1fff2d44:    4802        .H      LDR      r0,[pc,#8] ; [0x1fff2d50] = 0x1fff0340
        0x1fff2d46:    69c0        .i      LDR      r0,[r0,#0x1c]
        0x1fff2d48:    2800        .(      CMP      r0,#0
        0x1fff2d4a:    d000        ..      BEQ      0x1fff2d4e ; __wdt_init + 10
        0x1fff2d4c:    4700        .G      BX       r0
        0x1fff2d4e:    4770        pG      BX       lr
    $d
        0x1fff2d50:    1fff0340    @...    DCD    536806208
    $t
    i._clk_apply_setting1
    _clk_apply_setting1
        0x1fff2d54:    b5ff        ..      PUSH     {r0-r7,lr}
        0x1fff2d56:    4607        .F      MOV      r7,r0
        0x1fff2d58:    2001        .       MOVS     r0,#1
        0x1fff2d5a:    0780        ..      LSLS     r0,r0,#30
        0x1fff2d5c:    6881        .h      LDR      r1,[r0,#8]
        0x1fff2d5e:    b083        ..      SUB      sp,sp,#0xc
        0x1fff2d60:    461c        .F      MOV      r4,r3
        0x1fff2d62:    4615        .F      MOV      r5,r2
        0x1fff2d64:    9102        ..      STR      r1,[sp,#8]
        0x1fff2d66:    6946        Fi      LDR      r6,[r0,#0x14]
        0x1fff2d68:    4939        9I      LDR      r1,[pc,#228] ; [0x1fff2e50] = 0xe000e100
        0x1fff2d6a:    6809        .h      LDR      r1,[r1,#0]
        0x1fff2d6c:    4a38        8J      LDR      r2,[pc,#224] ; [0x1fff2e50] = 0xe000e100
        0x1fff2d6e:    0049        I.      LSLS     r1,r1,#1
        0x1fff2d70:    0849        I.      LSRS     r1,r1,#1
        0x1fff2d72:    9101        ..      STR      r1,[sp,#4]
        0x1fff2d74:    2100        .!      MOVS     r1,#0
        0x1fff2d76:    43c9        .C      MVNS     r1,r1
        0x1fff2d78:    3280        .2      ADDS     r2,r2,#0x80
        0x1fff2d7a:    6011        .`      STR      r1,[r2,#0]
        0x1fff2d7c:    4a35        5J      LDR      r2,[pc,#212] ; [0x1fff2e54] = 0xe000e200
        0x1fff2d7e:    6812        .h      LDR      r2,[r2,#0]
        0x1fff2d80:    0052        R.      LSLS     r2,r2,#1
        0x1fff2d82:    0852        R.      LSRS     r2,r2,#1
        0x1fff2d84:    9200        ..      STR      r2,[sp,#0]
        0x1fff2d86:    4a33        3J      LDR      r2,[pc,#204] ; [0x1fff2e54] = 0xe000e200
        0x1fff2d88:    3280        .2      ADDS     r2,r2,#0x80
        0x1fff2d8a:    6011        .`      STR      r1,[r2,#0]
        0x1fff2d8c:    4932        2I      LDR      r1,[pc,#200] ; [0x1fff2e58] = 0x80001
        0x1fff2d8e:    6081        .`      STR      r1,[r0,#8]
        0x1fff2d90:    2121        !!      MOVS     r1,#0x21
        0x1fff2d92:    6141        Aa      STR      r1,[r0,#0x14]
        0x1fff2d94:    201f        .       MOVS     r0,#0x1f
        0x1fff2d96:    f7fffd89    ....    BL       NVIC_EnableIRQ ; 0x1fff28ac
        0x1fff2d9a:    07e2        ..      LSLS     r2,r4,#31
        0x1fff2d9c:    2180        .!      MOVS     r1,#0x80
        0x1fff2d9e:    482f        /H      LDR      r0,[pc,#188] ; [0x1fff2e5c] = 0x4000f040
        0x1fff2da0:    2a00        .*      CMP      r2,#0
        0x1fff2da2:    d002        ..      BEQ      0x1fff2daa ; _clk_apply_setting1 + 86
        0x1fff2da4:    6842        Bh      LDR      r2,[r0,#4]
        0x1fff2da6:    430a        .C      ORRS     r2,r2,r1
        0x1fff2da8:    6042        B`      STR      r2,[r0,#4]
        0x1fff2daa:    07a2        ..      LSLS     r2,r4,#30
        0x1fff2dac:    d504        ..      BPL      0x1fff2db8 ; _clk_apply_setting1 + 100
        0x1fff2dae:    6842        Bh      LDR      r2,[r0,#4]
        0x1fff2db0:    23ff        .#      MOVS     r3,#0xff
        0x1fff2db2:    3301        .3      ADDS     r3,#1
        0x1fff2db4:    431a        .C      ORRS     r2,r2,r3
        0x1fff2db6:    6042        B`      STR      r2,[r0,#4]
        0x1fff2db8:    2d00        .-      CMP      r5,#0
        0x1fff2dba:    d00c        ..      BEQ      0x1fff2dd6 ; _clk_apply_setting1 + 130
        0x1fff2dbc:    072a        *.      LSLS     r2,r5,#28
        0x1fff2dbe:    0f52        R.      LSRS     r2,r2,#29
        0x1fff2dc0:    d004        ..      BEQ      0x1fff2dcc ; _clk_apply_setting1 + 120
        0x1fff2dc2:    2201        ."      MOVS     r2,#1
        0x1fff2dc4:    4314        .C      ORRS     r4,r4,r2
        0x1fff2dc6:    6842        Bh      LDR      r2,[r0,#4]
        0x1fff2dc8:    430a        .C      ORRS     r2,r2,r1
        0x1fff2dca:    6042        B`      STR      r2,[r0,#4]
        0x1fff2dcc:    6841        Ah      LDR      r1,[r0,#4]
        0x1fff2dce:    072a        *.      LSLS     r2,r5,#28
        0x1fff2dd0:    0bd2        ..      LSRS     r2,r2,#15
        0x1fff2dd2:    4311        .C      ORRS     r1,r1,r2
        0x1fff2dd4:    6041        A`      STR      r1,[r0,#4]
        0x1fff2dd6:    4921        !I      LDR      r1,[pc,#132] ; [0x1fff2e5c] = 0x4000f040
        0x1fff2dd8:    3940        @9      SUBS     r1,r1,#0x40
        0x1fff2dda:    6bca        .k      LDR      r2,[r1,#0x3c]
        0x1fff2ddc:    0152        R.      LSLS     r2,r2,#5
        0x1fff2dde:    0f52        R.      LSRS     r2,r2,#29
        0x1fff2de0:    42ba        .B      CMP      r2,r7
        0x1fff2de2:    d006        ..      BEQ      0x1fff2df2 ; _clk_apply_setting1 + 158
        0x1fff2de4:    6bca        .k      LDR      r2,[r1,#0x3c]
        0x1fff2de6:    2307        .#      MOVS     r3,#7
        0x1fff2de8:    061b        ..      LSLS     r3,r3,#24
        0x1fff2dea:    439a        .C      BICS     r2,r2,r3
        0x1fff2dec:    063b        ;.      LSLS     r3,r7,#24
        0x1fff2dee:    431a        .C      ORRS     r2,r2,r3
        0x1fff2df0:    63ca        .c      STR      r2,[r1,#0x3c]
        0x1fff2df2:    6bca        .k      LDR      r2,[r1,#0x3c]
        0x1fff2df4:    0753        S.      LSLS     r3,r2,#29
        0x1fff2df6:    9a04        ..      LDR      r2,[sp,#0x10]
        0x1fff2df8:    0f5b        [.      LSRS     r3,r3,#29
        0x1fff2dfa:    4293        .B      CMP      r3,r2
        0x1fff2dfc:    d005        ..      BEQ      0x1fff2e0a ; _clk_apply_setting1 + 182
        0x1fff2dfe:    6bca        .k      LDR      r2,[r1,#0x3c]
        0x1fff2e00:    9b04        ..      LDR      r3,[sp,#0x10]
        0x1fff2e02:    08d2        ..      LSRS     r2,r2,#3
        0x1fff2e04:    00d2        ..      LSLS     r2,r2,#3
        0x1fff2e06:    431a        .C      ORRS     r2,r2,r3
        0x1fff2e08:    63ca        .c      STR      r2,[r1,#0x3c]
        0x1fff2e0a:    6841        Ah      LDR      r1,[r0,#4]
        0x1fff2e0c:    22ff        ."      MOVS     r2,#0xff
        0x1fff2e0e:    3281        .2      ADDS     r2,r2,#0x81
        0x1fff2e10:    4391        .C      BICS     r1,r1,r2
        0x1fff2e12:    01e2        ..      LSLS     r2,r4,#7
        0x1fff2e14:    4311        .C      ORRS     r1,r1,r2
        0x1fff2e16:    6041        A`      STR      r1,[r0,#4]
        0x1fff2e18:    6841        Ah      LDR      r1,[r0,#4]
        0x1fff2e1a:    220f        ."      MOVS     r2,#0xf
        0x1fff2e1c:    0352        R.      LSLS     r2,r2,#13
        0x1fff2e1e:    4391        .C      BICS     r1,r1,r2
        0x1fff2e20:    036a        j.      LSLS     r2,r5,#13
        0x1fff2e22:    4311        .C      ORRS     r1,r1,r2
        0x1fff2e24:    6041        A`      STR      r1,[r0,#4]
        0x1fff2e26:    480c        .H      LDR      r0,[pc,#48] ; [0x1fff2e58] = 0x80001
        0x1fff2e28:    9902        ..      LDR      r1,[sp,#8]
        0x1fff2e2a:    4301        .C      ORRS     r1,r1,r0
        0x1fff2e2c:    0780        ..      LSLS     r0,r0,#30
        0x1fff2e2e:    6081        .`      STR      r1,[r0,#8]
        0x1fff2e30:    2101        .!      MOVS     r1,#1
        0x1fff2e32:    430e        .C      ORRS     r6,r6,r1
        0x1fff2e34:    6146        Fa      STR      r6,[r0,#0x14]
        0x1fff2e36:    0041        A.      LSLS     r1,r0,#1
        0x1fff2e38:    4805        .H      LDR      r0,[pc,#20] ; [0x1fff2e50] = 0xe000e100
        0x1fff2e3a:    3080        .0      ADDS     r0,r0,#0x80
        0x1fff2e3c:    6001        .`      STR      r1,[r0,#0]
        0x1fff2e3e:    4905        .I      LDR      r1,[pc,#20] ; [0x1fff2e54] = 0xe000e200
        0x1fff2e40:    9800        ..      LDR      r0,[sp,#0]
        0x1fff2e42:    6008        .`      STR      r0,[r1,#0]
        0x1fff2e44:    4902        .I      LDR      r1,[pc,#8] ; [0x1fff2e50] = 0xe000e100
        0x1fff2e46:    9801        ..      LDR      r0,[sp,#4]
        0x1fff2e48:    6008        .`      STR      r0,[r1,#0]
        0x1fff2e4a:    b007        ..      ADD      sp,sp,#0x1c
        0x1fff2e4c:    bdf0        ..      POP      {r4-r7,pc}
    $d
        0x1fff2e4e:    0000        ..      DCW    0
        0x1fff2e50:    e000e100    ....    DCD    3758153984
        0x1fff2e54:    e000e200    ....    DCD    3758154240
        0x1fff2e58:    00080001    ....    DCD    524289
        0x1fff2e5c:    4000f040    @..@    DCD    1073803328
    $t
    i._efuse_chip_version_check
    _efuse_chip_version_check
        0x1fff2e60:    b51c        ..      PUSH     {r2-r4,lr}
        0x1fff2e62:    4669        iF      MOV      r1,sp
        0x1fff2e64:    2001        .       MOVS     r0,#1
        0x1fff2e66:    f7fefe3b    ..;.    BL       $Ven$TT$L$$efuse_read ; 0x1fff1ae0
        0x1fff2e6a:    2001        .       MOVS     r0,#1
        0x1fff2e6c:    9000        ..      STR      r0,[sp,#0]
        0x1fff2e6e:    4803        .H      LDR      r0,[pc,#12] ; [0x1fff2e7c] = 0xbbb
        0x1fff2e70:    9001        ..      STR      r0,[sp,#4]
        0x1fff2e72:    f000fc2b    ..+.    BL       finidv ; 0x1fff36cc
        0x1fff2e76:    2001        .       MOVS     r0,#1
        0x1fff2e78:    bd1c        ..      POP      {r2-r4,pc}
    $d
        0x1fff2e7a:    0000        ..      DCW    0
        0x1fff2e7c:    00000bbb    ....    DCD    3003
    $t
    i._hard_fault
    _hard_fault
        0x1fff2e80:    b508        ..      PUSH     {r3,lr}
        0x1fff2e82:    4f33        3O      LDR      r7,[pc,#204] ; [0x1fff2f50] = 0x1fff0000
        0x1fff2e84:    4604        .F      MOV      r4,r0
        0x1fff2e86:    68f8        .h      LDR      r0,[r7,#0xc]
        0x1fff2e88:    2500        .%      MOVS     r5,#0
        0x1fff2e8a:    7806        .x      LDRB     r6,[r0,#0]
        0x1fff2e8c:    20e1        .       MOVS     r0,#0xe1
        0x1fff2e8e:    462b        +F      MOV      r3,r5
        0x1fff2e90:    2212        ."      MOVS     r2,#0x12
        0x1fff2e92:    2105        .!      MOVS     r1,#5
        0x1fff2e94:    0240        @.      LSLS     r0,r0,#9
        0x1fff2e96:    f7fefe29    ..).    BL       $Ven$TT$L$$rom_uart_init ; 0x1fff1aec
        0x1fff2e9a:    a02e        ..      ADR      r0,{pc}+0xba ; 0x1fff2f54
        0x1fff2e9c:    f7fefe2c    ..,.    BL       $Ven$TT$L$$log_printf ; 0x1fff1af8
        0x1fff2ea0:    6b20         k      LDR      r0,[r4,#0x30]
        0x1fff2ea2:    9000        ..      STR      r0,[sp,#0]
        0x1fff2ea4:    4621        !F      MOV      r1,r4
        0x1fff2ea6:    3124        $1      ADDS     r1,r1,#0x24
        0x1fff2ea8:    c90e        ..      LDM      r1,{r1-r3}
        0x1fff2eaa:    a030        0.      ADR      r0,{pc}+0xc2 ; 0x1fff2f6c
        0x1fff2eac:    f7fefe24    ..$.    BL       $Ven$TT$L$$log_printf ; 0x1fff1af8
        0x1fff2eb0:    6920         i      LDR      r0,[r4,#0x10]
        0x1fff2eb2:    9000        ..      STR      r0,[sp,#0]
        0x1fff2eb4:    1d21        !.      ADDS     r1,r4,#4
        0x1fff2eb6:    c90e        ..      LDM      r1,{r1-r3}
        0x1fff2eb8:    a037        7.      ADR      r0,{pc}+0xe0 ; 0x1fff2f98
        0x1fff2eba:    f7fefe1d    ....    BL       $Ven$TT$L$$log_printf ; 0x1fff1af8
        0x1fff2ebe:    6a20         j      LDR      r0,[r4,#0x20]
        0x1fff2ec0:    9000        ..      STR      r0,[sp,#0]
        0x1fff2ec2:    4621        !F      MOV      r1,r4
        0x1fff2ec4:    3114        .1      ADDS     r1,r1,#0x14
        0x1fff2ec6:    c90e        ..      LDM      r1,{r1-r3}
        0x1fff2ec8:    a03e        >.      ADR      r0,{pc}+0xfc ; 0x1fff2fc4
        0x1fff2eca:    f7fefe15    ....    BL       $Ven$TT$L$$log_printf ; 0x1fff1af8
        0x1fff2ece:    6be0        .k      LDR      r0,[r4,#0x3c]
        0x1fff2ed0:    9000        ..      STR      r0,[sp,#0]
        0x1fff2ed2:    a047        G.      ADR      r0,{pc}+0x11e ; 0x1fff2ff0
        0x1fff2ed4:    6ba3        .k      LDR      r3,[r4,#0x38]
        0x1fff2ed6:    6822        "h      LDR      r2,[r4,#0]
        0x1fff2ed8:    6b61        ak      LDR      r1,[r4,#0x34]
        0x1fff2eda:    f7fefe0d    ....    BL       $Ven$TT$L$$log_printf ; 0x1fff1af8
        0x1fff2ede:    a04f        O.      ADR      r0,{pc}+0x13e ; 0x1fff301c
        0x1fff2ee0:    6c21        !l      LDR      r1,[r4,#0x40]
        0x1fff2ee2:    f7fefe09    ....    BL       $Ven$TT$L$$log_printf ; 0x1fff1af8
        0x1fff2ee6:    4851        QH      LDR      r0,[pc,#324] ; [0x1fff302c] = 0xe000ed00
        0x1fff2ee8:    6841        Ah      LDR      r1,[r0,#4]
        0x1fff2eea:    a051        Q.      ADR      r0,{pc}+0x146 ; 0x1fff3030
        0x1fff2eec:    f7fefe04    ....    BL       $Ven$TT$L$$log_printf ; 0x1fff1af8
        0x1fff2ef0:    4853        SH      LDR      r0,[pc,#332] ; [0x1fff3040] = 0x1fff08b4
        0x1fff2ef2:    7801        .x      LDRB     r1,[r0,#0]
        0x1fff2ef4:    42b1        .B      CMP      r1,r6
        0x1fff2ef6:    d202        ..      BCS      0x1fff2efe ; _hard_fault + 126
        0x1fff2ef8:    68b8        .h      LDR      r0,[r7,#8]
        0x1fff2efa:    008a        ..      LSLS     r2,r1,#2
        0x1fff2efc:    5885        .X      LDR      r5,[r0,r2]
        0x1fff2efe:    4851        QH      LDR      r0,[pc,#324] ; [0x1fff3044] = 0x1fff0860
        0x1fff2f00:    460e        .F      MOV      r6,r1
        0x1fff2f02:    6807        .h      LDR      r7,[r0,#0]
        0x1fff2f04:    f7fefdfe    ....    BL       $Ven$TT$L$$rtc_get_counter ; 0x1fff1b04
        0x1fff2f08:    9000        ..      STR      r0,[sp,#0]
        0x1fff2f0a:    463b        ;F      MOV      r3,r7
        0x1fff2f0c:    462a        *F      MOV      r2,r5
        0x1fff2f0e:    4631        1F      MOV      r1,r6
        0x1fff2f10:    a04d        M.      ADR      r0,{pc}+0x138 ; 0x1fff3048
        0x1fff2f12:    f7fefdf1    ....    BL       $Ven$TT$L$$log_printf ; 0x1fff1af8
        0x1fff2f16:    a059        Y.      ADR      r0,{pc}+0x166 ; 0x1fff307c
        0x1fff2f18:    f7fefdee    ....    BL       $Ven$TT$L$$log_printf ; 0x1fff1af8
        0x1fff2f1c:    4e61        aN      LDR      r6,[pc,#388] ; [0x1fff30a4] = 0x1ffffffc
        0x1fff2f1e:    6825        %h      LDR      r5,[r4,#0]
        0x1fff2f20:    4035        5@      ANDS     r5,r5,r6
        0x1fff2f22:    2400        .$      MOVS     r4,#0
        0x1fff2f24:    1929        ).      ADDS     r1,r5,r4
        0x1fff2f26:    42b1        .B      CMP      r1,r6
        0x1fff2f28:    d80b        ..      BHI      0x1fff2f42 ; _hard_fault + 194
        0x1fff2f2a:    0720         .      LSLS     r0,r4,#28
        0x1fff2f2c:    d102        ..      BNE      0x1fff2f34 ; _hard_fault + 180
        0x1fff2f2e:    a05e        ^.      ADR      r0,{pc}+0x17a ; 0x1fff30a8
        0x1fff2f30:    f7fefde2    ....    BL       $Ven$TT$L$$log_printf ; 0x1fff1af8
        0x1fff2f34:    5929        )Y      LDR      r1,[r5,r4]
        0x1fff2f36:    a05e        ^.      ADR      r0,{pc}+0x17a ; 0x1fff30b0
        0x1fff2f38:    f7fefdde    ....    BL       $Ven$TT$L$$log_printf ; 0x1fff1af8
        0x1fff2f3c:    1d24        $.      ADDS     r4,r4,#4
        0x1fff2f3e:    2cff        .,      CMP      r4,#0xff
        0x1fff2f40:    ddf0        ..      BLE      0x1fff2f24 ; _hard_fault + 164
        0x1fff2f42:    485d        ]H      LDR      r0,[pc,#372] ; [0x1fff30b8] = 0x1fff6b78
        0x1fff2f44:    6800        .h      LDR      r0,[r0,#0]
        0x1fff2f46:    2800        .(      CMP      r0,#0
        0x1fff2f48:    d000        ..      BEQ      0x1fff2f4c ; _hard_fault + 204
        0x1fff2f4a:    4780        .G      BLX      r0
        0x1fff2f4c:    e7fe        ..      B        0x1fff2f4c ; _hard_fault + 204
    $d
        0x1fff2f4e:    0000        ..      DCW    0
        0x1fff2f50:    1fff0000    ....    DCD    536805376
        0x1fff2f54:    61485b0a    .[Ha    DCD    1632131850
        0x1fff2f58:    66206472    rd f    DCD    1713398898
        0x1fff2f5c:    746c7561    ault    DCD    1953264993
        0x1fff2f60:    6e616820     han    DCD    1851877408
        0x1fff2f64:    72656c64    dler    DCD    1919249508
        0x1fff2f68:    00000a5d    ]...    DCD    2653
        0x1fff2f6c:    522d3052    R0-R    DCD    1378693202
        0x1fff2f70:    20202033    3       DCD    538976307
        0x1fff2f74:    20202020            DCD    538976288
        0x1fff2f78:    30203d20     = 0    DCD    807419168
        0x1fff2f7c:    38302578    x%08    DCD    942679416
        0x1fff2f80:    78302078    x 0x    DCD    2016419960
        0x1fff2f84:    78383025    %08x    DCD    2016948261
        0x1fff2f88:    25783020     0x%    DCD    628633632
        0x1fff2f8c:    20783830    08x     DCD    544749616
        0x1fff2f90:    30257830    0x%0    DCD    807761968
        0x1fff2f94:    000a7838    8x..    DCD    686136
        0x1fff2f98:    522d3452    R4-R    DCD    1378694226
        0x1fff2f9c:    20202037    7       DCD    538976311
        0x1fff2fa0:    20202020            DCD    538976288
        0x1fff2fa4:    30203d20     = 0    DCD    807419168
        0x1fff2fa8:    38302578    x%08    DCD    942679416
        0x1fff2fac:    78302078    x 0x    DCD    2016419960
        0x1fff2fb0:    78383025    %08x    DCD    2016948261
        0x1fff2fb4:    25783020     0x%    DCD    628633632
        0x1fff2fb8:    20783830    08x     DCD    544749616
        0x1fff2fbc:    30257830    0x%0    DCD    807761968
        0x1fff2fc0:    000a7838    8x..    DCD    686136
        0x1fff2fc4:    522d3852    R8-R    DCD    1378695250
        0x1fff2fc8:    20203131    11      DCD    538980657
        0x1fff2fcc:    20202020            DCD    538976288
        0x1fff2fd0:    30203d20     = 0    DCD    807419168
        0x1fff2fd4:    38302578    x%08    DCD    942679416
        0x1fff2fd8:    78302078    x 0x    DCD    2016419960
        0x1fff2fdc:    78383025    %08x    DCD    2016948261
        0x1fff2fe0:    25783020     0x%    DCD    628633632
        0x1fff2fe4:    20783830    08x     DCD    544749616
        0x1fff2fe8:    30257830    0x%0    DCD    807761968
        0x1fff2fec:    000a7838    8x..    DCD    686136
        0x1fff2ff0:    2c323152    R12,    DCD    741486930
        0x1fff2ff4:    4c2c5053    SP,L    DCD    1277972563
        0x1fff2ff8:    43502c52    R,PC    DCD    1129327698
        0x1fff2ffc:    30203d20     = 0    DCD    807419168
        0x1fff3000:    38302578    x%08    DCD    942679416
        0x1fff3004:    78302078    x 0x    DCD    2016419960
        0x1fff3008:    78383025    %08x    DCD    2016948261
        0x1fff300c:    25783020     0x%    DCD    628633632
        0x1fff3010:    20783830    08x     DCD    544749616
        0x1fff3014:    30257830    0x%0    DCD    807761968
        0x1fff3018:    000a7838    8x..    DCD    686136
        0x1fff301c:    20525350    PSR     DCD    542266192
        0x1fff3020:    30203d20     = 0    DCD    807419168
        0x1fff3024:    38302578    x%08    DCD    942679416
        0x1fff3028:    00202078    x  .    DCD    2105464
        0x1fff302c:    e000ed00    ....    DCD    3758157056
        0x1fff3030:    52534349    ICSR    DCD    1381188425
        0x1fff3034:    30203d20     = 0    DCD    807419168
        0x1fff3038:    38302578    x%08    DCD    942679416
        0x1fff303c:    00000a78    x...    DCD    2680
        0x1fff3040:    1fff08b4    ....    DCD    536807604
        0x1fff3044:    1fff0860    `...    DCD    536807520
        0x1fff3048:    41534f5b    [OSA    DCD    1095978843
        0x1fff304c:    64695d4c    L]id    DCD    1684626764
        0x1fff3050:    64252078    x %d    DCD    1680154744
        0x1fff3054:    6e754620     Fun    DCD    1853179424
        0x1fff3058:    78302063    c 0x    DCD    2016419939
        0x1fff305c:    78383025    %08x    DCD    2016948261
        0x1fff3060:    73797320     sys    DCD    1937339168
        0x1fff3064:    6b636974    tick    DCD    1801677172
        0x1fff3068:    38302520     %08    DCD    942679328
        0x1fff306c:    74722078    x rt    DCD    1953636472
        0x1fff3070:    30252063    c %0    DCD    807739491
        0x1fff3074:    200a7838    8x.     DCD    537557048
        0x1fff3078:    00000000    ....    DCD    0
        0x1fff307c:    2d2d2d2d    ----    DCD    757935405
        0x1fff3080:    2d2d2d2d    ----    DCD    757935405
        0x1fff3084:    642d2d2d    ---d    DCD    1680682285
        0x1fff3088:    20706d75    ump     DCD    544238965
        0x1fff308c:    63617473    stac    DCD    1667331187
        0x1fff3090:    2d2d2d6b    k---    DCD    757935467
        0x1fff3094:    2d2d2d2d    ----    DCD    757935405
        0x1fff3098:    2d2d2d2d    ----    DCD    757935405
        0x1fff309c:    0a2d2d2d    ---.    DCD    170732845
        0x1fff30a0:    00000000    ....    DCD    0
        0x1fff30a4:    1ffffffc    ....    DCD    536870908
        0x1fff30a8:    30255b0a    .[%0    DCD    807754506
        0x1fff30ac:    005d5838    8X].    DCD    6117432
        0x1fff30b0:    78383025    %08x    DCD    2016948261
        0x1fff30b4:    00000020     ...    DCD    32
        0x1fff30b8:    1fff6b78    xk..    DCD    536832888
    $t
    i._rom_efuse_version_init
    _rom_efuse_version_init
        0x1fff30bc:    b51c        ..      PUSH     {r2-r4,lr}
        0x1fff30be:    4669        iF      MOV      r1,sp
        0x1fff30c0:    2003        .       MOVS     r0,#3
        0x1fff30c2:    f7fefd0d    ....    BL       $Ven$TT$L$$efuse_read ; 0x1fff1ae0
        0x1fff30c6:    4668        hF      MOV      r0,sp
        0x1fff30c8:    f001fa94    ....    BL       lib_efuse_load ; 0x1fff45f4
        0x1fff30cc:    9800        ..      LDR      r0,[sp,#0]
        0x1fff30ce:    2800        .(      CMP      r0,#0
        0x1fff30d0:    d102        ..      BNE      0x1fff30d8 ; _rom_efuse_version_init + 28
        0x1fff30d2:    9801        ..      LDR      r0,[sp,#4]
        0x1fff30d4:    2800        .(      CMP      r0,#0
        0x1fff30d6:    d000        ..      BEQ      0x1fff30da ; _rom_efuse_version_init + 30
        0x1fff30d8:    2001        .       MOVS     r0,#1
        0x1fff30da:    bd1c        ..      POP      {r2-r4,pc}
    i._rom_sec_boot_init
    _rom_sec_boot_init
        0x1fff30dc:    b510        ..      PUSH     {r4,lr}
        0x1fff30de:    f000fa6b    ..k.    BL       efuse_init ; 0x1fff35b8
        0x1fff30e2:    f7fffebd    ....    BL       _efuse_chip_version_check ; 0x1fff2e60
        0x1fff30e6:    2800        .(      CMP      r0,#0
        0x1fff30e8:    d002        ..      BEQ      0x1fff30f0 ; _rom_sec_boot_init + 20
        0x1fff30ea:    4802        .H      LDR      r0,[pc,#8] ; [0x1fff30f4] = 0xa2e1
        0x1fff30ec:    4780        .G      BLX      r0
        0x1fff30ee:    bd10        ..      POP      {r4,pc}
        0x1fff30f0:    e7fe        ..      B        0x1fff30f0 ; _rom_sec_boot_init + 20
    $d
        0x1fff30f2:    0000        ..      DCW    0
        0x1fff30f4:    0000a2e1    ....    DCD    41697
    $t
    i._uart_putc
    _uart_putc
        0x1fff30f8:    460a        .F      MOV      r2,r1
        0x1fff30fa:    b510        ..      PUSH     {r4,lr}
        0x1fff30fc:    4601        .F      MOV      r1,r0
        0x1fff30fe:    2000        .       MOVS     r0,#0
        0x1fff3100:    f001fa08    ....    BL       hal_uart_send_buff ; 0x1fff4514
        0x1fff3104:    bd10        ..      POP      {r4,pc}
        0x1fff3106:    0000        ..      MOVS     r0,r0
    i.aon_register_init
    aon_register_init
        0x1fff3108:    480e        .H      LDR      r0,[pc,#56] ; [0x1fff3144] = 0x4000f000
        0x1fff310a:    490d        .I      LDR      r1,[pc,#52] ; [0x1fff3140] = 0x6000c00
        0x1fff310c:    6081        .`      STR      r1,[r0,#8]
        0x1fff310e:    2100        .!      MOVS     r1,#0
        0x1fff3110:    60c1        .`      STR      r1,[r0,#0xc]
        0x1fff3112:    221b        ."      MOVS     r2,#0x1b
        0x1fff3114:    0352        R.      LSLS     r2,r2,#13
        0x1fff3116:    6102        .a      STR      r2,[r0,#0x10]
        0x1fff3118:    224d        M"      MOVS     r2,#0x4d
        0x1fff311a:    03d2        ..      LSLS     r2,r2,#15
        0x1fff311c:    6142        Ba      STR      r2,[r0,#0x14]
        0x1fff311e:    4a0a        .J      LDR      r2,[pc,#40] ; [0x1fff3148] = 0x1064040
        0x1fff3120:    6182        .a      STR      r2,[r0,#0x18]
        0x1fff3122:    4a0a        .J      LDR      r2,[pc,#40] ; [0x1fff314c] = 0x1ffab
        0x1fff3124:    61c2        .a      STR      r2,[r0,#0x1c]
        0x1fff3126:    6201        .b      STR      r1,[r0,#0x20]
        0x1fff3128:    6241        Ab      STR      r1,[r0,#0x24]
        0x1fff312a:    62c1        .b      STR      r1,[r0,#0x2c]
        0x1fff312c:    6301        .c      STR      r1,[r0,#0x30]
        0x1fff312e:    6341        Ac      STR      r1,[r0,#0x34]
        0x1fff3130:    4804        .H      LDR      r0,[pc,#16] ; [0x1fff3144] = 0x4000f000
        0x1fff3132:    3080        .0      ADDS     r0,r0,#0x80
        0x1fff3134:    6201        .b      STR      r1,[r0,#0x20]
        0x1fff3136:    6241        Ab      STR      r1,[r0,#0x24]
        0x1fff3138:    6281        .b      STR      r1,[r0,#0x28]
        0x1fff313a:    2101        .!      MOVS     r1,#1
        0x1fff313c:    6381        .c      STR      r1,[r0,#0x38]
        0x1fff313e:    4770        pG      BX       lr
    $d
        0x1fff3140:    06000c00    ....    DCD    100666368
        0x1fff3144:    4000f000    ...@    DCD    1073803264
        0x1fff3148:    01064040    @@..    DCD    17186880
        0x1fff314c:    0001ffab    ....    DCD    130987
    $t
    i.app_main
    app_main
        0x1fff3150:    b510        ..      PUSH     {r4,lr}
        0x1fff3152:    f7fefcdd    ....    BL       $Ven$TT$L$$osal_init_system ; 0x1fff1b10
        0x1fff3156:    2001        .       MOVS     r0,#1
        0x1fff3158:    f7fefce0    ....    BL       $Ven$TT$L$$osal_pwrmgr_device ; 0x1fff1b1c
        0x1fff315c:    f7fefce4    ....    BL       $Ven$TT$L$$osal_start_system ; 0x1fff1b28
        0x1fff3160:    2000        .       MOVS     r0,#0
        0x1fff3162:    bd10        ..      POP      {r4,pc}
    i.check_16MXtal_by_rcTracking
    check_16MXtal_by_rcTracking
        0x1fff3164:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff3166:    484e        NH      LDR      r0,[pc,#312] ; [0x1fff32a0] = 0x4000f0c0
        0x1fff3168:    6840        @h      LDR      r0,[r0,#4]
        0x1fff316a:    43c0        .C      MVNS     r0,r0
        0x1fff316c:    0600        ..      LSLS     r0,r0,#24
        0x1fff316e:    d503        ..      BPL      0x1fff3178 ; check_16MXtal_by_rcTracking + 20
        0x1fff3170:    203c        <       MOVS     r0,#0x3c
        0x1fff3172:    f7fefcdf    ....    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b34
        0x1fff3176:    bdf8        ..      POP      {r3-r7,pc}
        0x1fff3178:    f7fefcc4    ....    BL       $Ven$TT$L$$rtc_get_counter ; 0x1fff1b04
        0x1fff317c:    4d48        HM      LDR      r5,[pc,#288] ; [0x1fff32a0] = 0x4000f0c0
        0x1fff317e:    9000        ..      STR      r0,[sp,#0]
        0x1fff3180:    3d80        .=      SUBS     r5,r5,#0x80
        0x1fff3182:    6828        (h      LDR      r0,[r5,#0]
        0x1fff3184:    2101        .!      MOVS     r1,#1
        0x1fff3186:    0489        ..      LSLS     r1,r1,#18
        0x1fff3188:    4308        .C      ORRS     r0,r0,r1
        0x1fff318a:    6028        (`      STR      r0,[r5,#0]
        0x1fff318c:    69e8        .i      LDR      r0,[r5,#0x1c]
        0x1fff318e:    4945        EI      LDR      r1,[pc,#276] ; [0x1fff32a4] = 0xfffefe00
        0x1fff3190:    4008        .@      ANDS     r0,r0,r1
        0x1fff3192:    3028        (0      ADDS     r0,r0,#0x28
        0x1fff3194:    61e8        .a      STR      r0,[r5,#0x1c]
        0x1fff3196:    2003        .       MOVS     r0,#3
        0x1fff3198:    f7fefccc    ....    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b34
        0x1fff319c:    6a68        hj      LDR      r0,[r5,#0x24]
        0x1fff319e:    03c7        ..      LSLS     r7,r0,#15
        0x1fff31a0:    0bff        ..      LSRS     r7,r7,#15
        0x1fff31a2:    2003        .       MOVS     r0,#3
        0x1fff31a4:    f7fefcc6    ....    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b34
        0x1fff31a8:    6a68        hj      LDR      r0,[r5,#0x24]
        0x1fff31aa:    03c4        ..      LSLS     r4,r0,#15
        0x1fff31ac:    0be4        ..      LSRS     r4,r4,#15
        0x1fff31ae:    2003        .       MOVS     r0,#3
        0x1fff31b0:    f7fefcc0    ....    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b34
        0x1fff31b4:    6a68        hj      LDR      r0,[r5,#0x24]
        0x1fff31b6:    03c6        ..      LSLS     r6,r0,#15
        0x1fff31b8:    0bf6        ..      LSRS     r6,r6,#15
        0x1fff31ba:    42a7        .B      CMP      r7,r4
        0x1fff31bc:    d301        ..      BCC      0x1fff31c2 ; check_16MXtal_by_rcTracking + 94
        0x1fff31be:    4620         F      MOV      r0,r4
        0x1fff31c0:    e000        ..      B        0x1fff31c4 ; check_16MXtal_by_rcTracking + 96
        0x1fff31c2:    4638        8F      MOV      r0,r7
        0x1fff31c4:    42b0        .B      CMP      r0,r6
        0x1fff31c6:    d300        ..      BCC      0x1fff31ca ; check_16MXtal_by_rcTracking + 102
        0x1fff31c8:    4630        0F      MOV      r0,r6
        0x1fff31ca:    42a7        .B      CMP      r7,r4
        0x1fff31cc:    d301        ..      BCC      0x1fff31d2 ; check_16MXtal_by_rcTracking + 110
        0x1fff31ce:    4639        9F      MOV      r1,r7
        0x1fff31d0:    e000        ..      B        0x1fff31d4 ; check_16MXtal_by_rcTracking + 112
        0x1fff31d2:    4621        !F      MOV      r1,r4
        0x1fff31d4:    42b1        .B      CMP      r1,r6
        0x1fff31d6:    d200        ..      BCS      0x1fff31da ; check_16MXtal_by_rcTracking + 118
        0x1fff31d8:    4631        1F      MOV      r1,r6
        0x1fff31da:    4a33        3J      LDR      r2,[pc,#204] ; [0x1fff32a8] = 0xfffffc91
        0x1fff31dc:    18ba        ..      ADDS     r2,r7,r2
        0x1fff31de:    2ac3        .*      CMP      r2,#0xc3
        0x1fff31e0:    d226        &.      BCS      0x1fff3230 ; check_16MXtal_by_rcTracking + 204
        0x1fff31e2:    4b31        1K      LDR      r3,[pc,#196] ; [0x1fff32a8] = 0xfffffc91
        0x1fff31e4:    43db        .C      MVNS     r3,r3
        0x1fff31e6:    429c        .B      CMP      r4,r3
        0x1fff31e8:    d922        ".      BLS      0x1fff3230 ; check_16MXtal_by_rcTracking + 204
        0x1fff31ea:    4a30        0J      LDR      r2,[pc,#192] ; [0x1fff32ac] = 0x432
        0x1fff31ec:    4294        .B      CMP      r4,r2
        0x1fff31ee:    d21f        ..      BCS      0x1fff3230 ; check_16MXtal_by_rcTracking + 204
        0x1fff31f0:    429e        .B      CMP      r6,r3
        0x1fff31f2:    d91d        ..      BLS      0x1fff3230 ; check_16MXtal_by_rcTracking + 204
        0x1fff31f4:    4296        .B      CMP      r6,r2
        0x1fff31f6:    d21b        ..      BCS      0x1fff3230 ; check_16MXtal_by_rcTracking + 204
        0x1fff31f8:    1a08        ..      SUBS     r0,r1,r0
        0x1fff31fa:    2813        .(      CMP      r0,#0x13
        0x1fff31fc:    d218        ..      BCS      0x1fff3230 ; check_16MXtal_by_rcTracking + 204
        0x1fff31fe:    4828        (H      LDR      r0,[pc,#160] ; [0x1fff32a0] = 0x4000f0c0
        0x1fff3200:    6842        Bh      LDR      r2,[r0,#4]
        0x1fff3202:    210c        .!      MOVS     r1,#0xc
        0x1fff3204:    438a        .C      BICS     r2,r2,r1
        0x1fff3206:    6042        B`      STR      r2,[r0,#4]
        0x1fff3208:    6841        Ah      LDR      r1,[r0,#4]
        0x1fff320a:    22ff        ."      MOVS     r2,#0xff
        0x1fff320c:    0212        ..      LSLS     r2,r2,#8
        0x1fff320e:    4391        .C      BICS     r1,r1,r2
        0x1fff3210:    6041        A`      STR      r1,[r0,#4]
        0x1fff3212:    2014        .       MOVS     r0,#0x14
        0x1fff3214:    f7fefc8e    ....    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b34
        0x1fff3218:    4821        !H      LDR      r0,[pc,#132] ; [0x1fff32a0] = 0x4000f0c0
        0x1fff321a:    3880        .8      SUBS     r0,r0,#0x80
        0x1fff321c:    6a41        Aj      LDR      r1,[r0,#0x24]
        0x1fff321e:    69c2        .i      LDR      r2,[r0,#0x1c]
        0x1fff3220:    03c9        ..      LSLS     r1,r1,#15
        0x1fff3222:    0bc9        ..      LSRS     r1,r1,#15
        0x1fff3224:    2308        .#      MOVS     r3,#8
        0x1fff3226:    439a        .C      BICS     r2,r2,r3
        0x1fff3228:    61c2        .a      STR      r2,[r0,#0x1c]
        0x1fff322a:    4821        !H      LDR      r0,[pc,#132] ; [0x1fff32b0] = 0x1fff6b80
        0x1fff322c:    6281        .b      STR      r1,[r0,#0x28]
        0x1fff322e:    bdf8        ..      POP      {r3-r7,pc}
        0x1fff3230:    4627        'F      MOV      r7,r4
        0x1fff3232:    4634        4F      MOV      r4,r6
        0x1fff3234:    2003        .       MOVS     r0,#3
        0x1fff3236:    f7fefc7d    ..}.    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b34
        0x1fff323a:    4819        .H      LDR      r0,[pc,#100] ; [0x1fff32a0] = 0x4000f0c0
        0x1fff323c:    3880        .8      SUBS     r0,r0,#0x80
        0x1fff323e:    6a40        @j      LDR      r0,[r0,#0x24]
        0x1fff3240:    03c6        ..      LSLS     r6,r0,#15
        0x1fff3242:    0bf6        ..      LSRS     r6,r6,#15
        0x1fff3244:    f7fefc5e    ..^.    BL       $Ven$TT$L$$rtc_get_counter ; 0x1fff1b04
        0x1fff3248:    9900        ..      LDR      r1,[sp,#0]
        0x1fff324a:    4288        .B      CMP      r0,r1
        0x1fff324c:    d301        ..      BCC      0x1fff3252 ; check_16MXtal_by_rcTracking + 238
        0x1fff324e:    1a40        @.      SUBS     r0,r0,r1
        0x1fff3250:    e001        ..      B        0x1fff3256 ; check_16MXtal_by_rcTracking + 242
        0x1fff3252:    1a40        @.      SUBS     r0,r0,r1
        0x1fff3254:    1e40        @.      SUBS     r0,r0,#1
        0x1fff3256:    4917        .I      LDR      r1,[pc,#92] ; [0x1fff32b4] = 0xce4
        0x1fff3258:    4288        .B      CMP      r0,r1
        0x1fff325a:    d3ae        ..      BCC      0x1fff31ba ; check_16MXtal_by_rcTracking + 86
        0x1fff325c:    4810        .H      LDR      r0,[pc,#64] ; [0x1fff32a0] = 0x4000f0c0
        0x1fff325e:    6841        Ah      LDR      r1,[r0,#4]
        0x1fff3260:    0409        ..      LSLS     r1,r1,#16
        0x1fff3262:    0e0d        ..      LSRS     r5,r1,#24
        0x1fff3264:    6841        Ah      LDR      r1,[r0,#4]
        0x1fff3266:    22ff        ."      MOVS     r2,#0xff
        0x1fff3268:    0212        ..      LSLS     r2,r2,#8
        0x1fff326a:    4391        .C      BICS     r1,r1,r2
        0x1fff326c:    1c6a        j.      ADDS     r2,r5,#1
        0x1fff326e:    0612        ..      LSLS     r2,r2,#24
        0x1fff3270:    0c12        ..      LSRS     r2,r2,#16
        0x1fff3272:    4311        .C      ORRS     r1,r1,r2
        0x1fff3274:    6041        A`      STR      r1,[r0,#4]
        0x1fff3276:    6841        Ah      LDR      r1,[r0,#4]
        0x1fff3278:    220c        ."      MOVS     r2,#0xc
        0x1fff327a:    4391        .C      BICS     r1,r1,r2
        0x1fff327c:    1d09        ..      ADDS     r1,r1,#4
        0x1fff327e:    6041        A`      STR      r1,[r0,#4]
        0x1fff3280:    2000        .       MOVS     r0,#0
        0x1fff3282:    f7fefc5d    ..].    BL       $Ven$TT$L$$set_sleep_flag ; 0x1fff1b40
        0x1fff3286:    2d64        d-      CMP      r5,#0x64
        0x1fff3288:    d302        ..      BCC      0x1fff3290 ; check_16MXtal_by_rcTracking + 300
        0x1fff328a:    4805        .H      LDR      r0,[pc,#20] ; [0x1fff32a0] = 0x4000f0c0
        0x1fff328c:    2100        .!      MOVS     r1,#0
        0x1fff328e:    6041        A`      STR      r1,[r0,#4]
        0x1fff3290:    2d06        .-      CMP      r5,#6
        0x1fff3292:    d300        ..      BCC      0x1fff3296 ; check_16MXtal_by_rcTracking + 306
        0x1fff3294:    2506        .%      MOVS     r5,#6
        0x1fff3296:    4807        .H      LDR      r0,[pc,#28] ; [0x1fff32b4] = 0xce4
        0x1fff3298:    40a8        .@      LSLS     r0,r0,r5
        0x1fff329a:    f7fefe97    ....    BL       hal_pwrmgr_enter_sleep_rtc_reset ; 0x1fff1fcc
        0x1fff329e:    e78c        ..      B        0x1fff31ba ; check_16MXtal_by_rcTracking + 86
    $d
        0x1fff32a0:    4000f0c0    ...@    DCD    1073803456
        0x1fff32a4:    fffefe00    ....    DCD    4294901248
        0x1fff32a8:    fffffc91    ....    DCD    4294966417
        0x1fff32ac:    00000432    2...    DCD    1074
        0x1fff32b0:    1fff6b80    .k..    DCD    536832896
        0x1fff32b4:    00000ce4    ....    DCD    3300
    $t
    i.check_96MXtal_by_rcTracking
    check_96MXtal_by_rcTracking
        0x1fff32b8:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff32ba:    483d        =H      LDR      r0,[pc,#244] ; [0x1fff33b0] = 0x4000f0c0
        0x1fff32bc:    6840        @h      LDR      r0,[r0,#4]
        0x1fff32be:    4c3c        <L      LDR      r4,[pc,#240] ; [0x1fff33b0] = 0x4000f0c0
        0x1fff32c0:    0600        ..      LSLS     r0,r0,#24
        0x1fff32c2:    3c80        .<      SUBS     r4,r4,#0x80
        0x1fff32c4:    2180        .!      MOVS     r1,#0x80
        0x1fff32c6:    2800        .(      CMP      r0,#0
        0x1fff32c8:    db06        ..      BLT      0x1fff32d8 ; check_96MXtal_by_rcTracking + 32
        0x1fff32ca:    6860        `h      LDR      r0,[r4,#4]
        0x1fff32cc:    4308        .C      ORRS     r0,r0,r1
        0x1fff32ce:    6060        ``      STR      r0,[r4,#4]
        0x1fff32d0:    2003        .       MOVS     r0,#3
        0x1fff32d2:    f7fefc2f    ../.    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b34
        0x1fff32d6:    bdf8        ..      POP      {r3-r7,pc}
        0x1fff32d8:    4d36        6M      LDR      r5,[pc,#216] ; [0x1fff33b4] = 0x1fff6b80
        0x1fff32da:    2000        .       MOVS     r0,#0
        0x1fff32dc:    6328        (c      STR      r0,[r5,#0x30]
        0x1fff32de:    6820         h      LDR      r0,[r4,#0]
        0x1fff32e0:    2201        ."      MOVS     r2,#1
        0x1fff32e2:    0492        ..      LSLS     r2,r2,#18
        0x1fff32e4:    4310        .C      ORRS     r0,r0,r2
        0x1fff32e6:    6020         `      STR      r0,[r4,#0]
        0x1fff32e8:    4f33        3O      LDR      r7,[pc,#204] ; [0x1fff33b8] = 0xfffefe00
        0x1fff32ea:    6860        `h      LDR      r0,[r4,#4]
        0x1fff32ec:    2180        .!      MOVS     r1,#0x80
        0x1fff32ee:    4308        .C      ORRS     r0,r0,r1
        0x1fff32f0:    6060        ``      STR      r0,[r4,#4]
        0x1fff32f2:    2003        .       MOVS     r0,#3
        0x1fff32f4:    f7fefc1e    ....    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b34
        0x1fff32f8:    6b28        (k      LDR      r0,[r5,#0x30]
        0x1fff32fa:    1c40        @.      ADDS     r0,r0,#1
        0x1fff32fc:    6328        (c      STR      r0,[r5,#0x30]
        0x1fff32fe:    6860        `h      LDR      r0,[r4,#4]
        0x1fff3300:    2101        .!      MOVS     r1,#1
        0x1fff3302:    0409        ..      LSLS     r1,r1,#16
        0x1fff3304:    4308        .C      ORRS     r0,r0,r1
        0x1fff3306:    6060        ``      STR      r0,[r4,#4]
        0x1fff3308:    2600        .&      MOVS     r6,#0
        0x1fff330a:    69e0        .i      LDR      r0,[r4,#0x1c]
        0x1fff330c:    492b        +I      LDR      r1,[pc,#172] ; [0x1fff33bc] = 0x10028
        0x1fff330e:    4038        8@      ANDS     r0,r0,r7
        0x1fff3310:    1840        @.      ADDS     r0,r0,r1
        0x1fff3312:    61e0        .a      STR      r0,[r4,#0x1c]
        0x1fff3314:    2003        .       MOVS     r0,#3
        0x1fff3316:    f7fefc0d    ....    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b34
        0x1fff331a:    6a60        `j      LDR      r0,[r4,#0x24]
        0x1fff331c:    69e1        .i      LDR      r1,[r4,#0x1c]
        0x1fff331e:    03c0        ..      LSLS     r0,r0,#15
        0x1fff3320:    0bc0        ..      LSRS     r0,r0,#15
        0x1fff3322:    2208        ."      MOVS     r2,#8
        0x1fff3324:    4391        .C      BICS     r1,r1,r2
        0x1fff3326:    61e1        .a      STR      r1,[r4,#0x1c]
        0x1fff3328:    6aa9        .j      LDR      r1,[r5,#0x28]
        0x1fff332a:    2206        ."      MOVS     r2,#6
        0x1fff332c:    4351        QC      MULS     r1,r2,r1
        0x1fff332e:    4281        .B      CMP      r1,r0
        0x1fff3330:    d301        ..      BCC      0x1fff3336 ; check_96MXtal_by_rcTracking + 126
        0x1fff3332:    1a09        ..      SUBS     r1,r1,r0
        0x1fff3334:    e000        ..      B        0x1fff3338 ; check_96MXtal_by_rcTracking + 128
        0x1fff3336:    1a41        A.      SUBS     r1,r0,r1
        0x1fff3338:    293c        <)      CMP      r1,#0x3c
        0x1fff333a:    d209        ..      BCS      0x1fff3350 ; check_96MXtal_by_rcTracking + 152
        0x1fff333c:    69e2        .i      LDR      r2,[r4,#0x1c]
        0x1fff333e:    2101        .!      MOVS     r1,#1
        0x1fff3340:    0409        ..      LSLS     r1,r1,#16
        0x1fff3342:    438a        .C      BICS     r2,r2,r1
        0x1fff3344:    61e2        .a      STR      r2,[r4,#0x1c]
        0x1fff3346:    6862        bh      LDR      r2,[r4,#4]
        0x1fff3348:    438a        .C      BICS     r2,r2,r1
        0x1fff334a:    6062        b`      STR      r2,[r4,#4]
        0x1fff334c:    62e8        .b      STR      r0,[r5,#0x2c]
        0x1fff334e:    bdf8        ..      POP      {r3-r7,pc}
        0x1fff3350:    1c76        v.      ADDS     r6,r6,#1
        0x1fff3352:    b2f6        ..      UXTB     r6,r6
        0x1fff3354:    2e05        ..      CMP      r6,#5
        0x1fff3356:    d3d8        ..      BCC      0x1fff330a ; check_96MXtal_by_rcTracking + 82
        0x1fff3358:    69e1        .i      LDR      r1,[r4,#0x1c]
        0x1fff335a:    2001        .       MOVS     r0,#1
        0x1fff335c:    0400        ..      LSLS     r0,r0,#16
        0x1fff335e:    4381        .C      BICS     r1,r1,r0
        0x1fff3360:    61e1        .a      STR      r1,[r4,#0x1c]
        0x1fff3362:    6861        ah      LDR      r1,[r4,#4]
        0x1fff3364:    4381        .C      BICS     r1,r1,r0
        0x1fff3366:    6061        a`      STR      r1,[r4,#4]
        0x1fff3368:    6b28        (k      LDR      r0,[r5,#0x30]
        0x1fff336a:    462e        .F      MOV      r6,r5
        0x1fff336c:    2805        .(      CMP      r0,#5
        0x1fff336e:    d307        ..      BCC      0x1fff3380 ; check_96MXtal_by_rcTracking + 200
        0x1fff3370:    f3bf8f4f    ..O.    DSB      
        0x1fff3374:    4913        .I      LDR      r1,[pc,#76] ; [0x1fff33c4] = 0xe000ed00
        0x1fff3376:    4812        .H      LDR      r0,[pc,#72] ; [0x1fff33c0] = 0x5fa0004
        0x1fff3378:    60c8        .`      STR      r0,[r1,#0xc]
        0x1fff337a:    f3bf8f4f    ..O.    DSB      
        0x1fff337e:    e7fe        ..      B        0x1fff337e ; check_96MXtal_by_rcTracking + 198
        0x1fff3380:    6860        `h      LDR      r0,[r4,#4]
        0x1fff3382:    2180        .!      MOVS     r1,#0x80
        0x1fff3384:    4388        .C      BICS     r0,r0,r1
        0x1fff3386:    6060        ``      STR      r0,[r4,#4]
        0x1fff3388:    2003        .       MOVS     r0,#3
        0x1fff338a:    f7fefbd3    ....    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b34
        0x1fff338e:    69e0        .i      LDR      r0,[r4,#0x1c]
        0x1fff3390:    4038        8@      ANDS     r0,r0,r7
        0x1fff3392:    3028        (0      ADDS     r0,r0,#0x28
        0x1fff3394:    61e0        .a      STR      r0,[r4,#0x1c]
        0x1fff3396:    2003        .       MOVS     r0,#3
        0x1fff3398:    f7fefbcc    ....    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b34
        0x1fff339c:    6a60        `j      LDR      r0,[r4,#0x24]
        0x1fff339e:    03c0        ..      LSLS     r0,r0,#15
        0x1fff33a0:    0bc0        ..      LSRS     r0,r0,#15
        0x1fff33a2:    62b0        .b      STR      r0,[r6,#0x28]
        0x1fff33a4:    69e1        .i      LDR      r1,[r4,#0x1c]
        0x1fff33a6:    2008        .       MOVS     r0,#8
        0x1fff33a8:    4381        .C      BICS     r1,r1,r0
        0x1fff33aa:    61e1        .a      STR      r1,[r4,#0x1c]
        0x1fff33ac:    e79d        ..      B        0x1fff32ea ; check_96MXtal_by_rcTracking + 50
    $d
        0x1fff33ae:    0000        ..      DCW    0
        0x1fff33b0:    4000f0c0    ...@    DCD    1073803456
        0x1fff33b4:    1fff6b80    .k..    DCD    536832896
        0x1fff33b8:    fffefe00    ....    DCD    4294901248
        0x1fff33bc:    00010028    (...    DCD    65576
        0x1fff33c0:    05fa0004    ....    DCD    100270084
        0x1fff33c4:    e000ed00    ....    DCD    3758157056
    $t
    i.clk_init
    clk_init
        0x1fff33c8:    b5fe        ..      PUSH     {r1-r7,lr}
        0x1fff33ca:    4604        .F      MOV      r4,r0
        0x1fff33cc:    4819        .H      LDR      r0,[pc,#100] ; [0x1fff3434] = 0x4000f000
        0x1fff33ce:    6bc1        .k      LDR      r1,[r0,#0x3c]
        0x1fff33d0:    4d19        .M      LDR      r5,[pc,#100] ; [0x1fff3438] = 0x17be0
        0x1fff33d2:    0749        I.      LSLS     r1,r1,#29
        0x1fff33d4:    0ec9        ..      LSRS     r1,r1,#27
        0x1fff33d6:    5869        iX      LDR      r1,[r5,r1]
        0x1fff33d8:    4a16        .J      LDR      r2,[pc,#88] ; [0x1fff3434] = 0x4000f000
        0x1fff33da:    0bc9        ..      LSRS     r1,r1,#15
        0x1fff33dc:    3240        @2      ADDS     r2,r2,#0x40
        0x1fff33de:    9100        ..      STR      r1,[sp,#0]
        0x1fff33e0:    6811        .h      LDR      r1,[r2,#0]
        0x1fff33e2:    0349        I.      LSLS     r1,r1,#13
        0x1fff33e4:    d404        ..      BMI      0x1fff33f0 ; clk_init + 40
        0x1fff33e6:    6811        .h      LDR      r1,[r2,#0]
        0x1fff33e8:    2301        .#      MOVS     r3,#1
        0x1fff33ea:    049b        ..      LSLS     r3,r3,#18
        0x1fff33ec:    4319        .C      ORRS     r1,r1,r3
        0x1fff33ee:    6011        .`      STR      r1,[r2,#0]
        0x1fff33f0:    6bc1        .k      LDR      r1,[r0,#0x3c]
        0x1fff33f2:    2218        ."      MOVS     r2,#0x18
        0x1fff33f4:    4311        .C      ORRS     r1,r1,r2
        0x1fff33f6:    63c1        .c      STR      r1,[r0,#0x3c]
        0x1fff33f8:    6bc0        .k      LDR      r0,[r0,#0x3c]
        0x1fff33fa:    4f10        .O      LDR      r7,[pc,#64] ; [0x1fff343c] = 0x8c01
        0x1fff33fc:    0140        @.      LSLS     r0,r0,#5
        0x1fff33fe:    0f40        @.      LSRS     r0,r0,#29
        0x1fff3400:    9001        ..      STR      r0,[sp,#4]
        0x1fff3402:    47b8        .G      BLX      r7
        0x1fff3404:    4606        .F      MOV      r6,r0
        0x1fff3406:    4620         F      MOV      r0,r4
        0x1fff3408:    47b8        .G      BLX      r7
        0x1fff340a:    4306        .C      ORRS     r6,r6,r0
        0x1fff340c:    490c        .I      LDR      r1,[pc,#48] ; [0x1fff3440] = 0x8aa9
        0x1fff340e:    07f0        ..      LSLS     r0,r6,#31
        0x1fff3410:    0fc0        ..      LSRS     r0,r0,#31
        0x1fff3412:    4788        .G      BLX      r1
        0x1fff3414:    4603        .F      MOV      r3,r0
        0x1fff3416:    00a0        ..      LSLS     r0,r4,#2
        0x1fff3418:    490a        .I      LDR      r1,[pc,#40] ; [0x1fff3444] = 0x1fff0874
        0x1fff341a:    5828        (X      LDR      r0,[r5,r0]
        0x1fff341c:    6008        .`      STR      r0,[r1,#0]
        0x1fff341e:    9800        ..      LDR      r0,[sp,#0]
        0x1fff3420:    1e41        A.      SUBS     r1,r0,#1
        0x1fff3422:    9100        ..      STR      r1,[sp,#0]
        0x1fff3424:    d2fb        ..      BCS      0x1fff341e ; clk_init + 86
        0x1fff3426:    4632        2F      MOV      r2,r6
        0x1fff3428:    4621        !F      MOV      r1,r4
        0x1fff342a:    9801        ..      LDR      r0,[sp,#4]
        0x1fff342c:    f7fffc92    ....    BL       _clk_apply_setting1 ; 0x1fff2d54
        0x1fff3430:    2000        .       MOVS     r0,#0
        0x1fff3432:    bdfe        ..      POP      {r1-r7,pc}
    $d
        0x1fff3434:    4000f000    ...@    DCD    1073803264
        0x1fff3438:    00017be0    .{..    DCD    97248
        0x1fff343c:    00008c01    ....    DCD    35841
        0x1fff3440:    00008aa9    ....    DCD    35497
        0x1fff3444:    1fff0874    t...    DCD    536807540
    $t
    i.config_RTC1
    config_RTC1
        0x1fff3448:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff344a:    4606        .F      MOV      r6,r0
        0x1fff344c:    2001        .       MOVS     r0,#1
        0x1fff344e:    f7fefb71    ..q.    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b34
        0x1fff3452:    4d21        !M      LDR      r5,[pc,#132] ; [0x1fff34d8] = 0x1fff091c
        0x1fff3454:    4f21        !O      LDR      r7,[pc,#132] ; [0x1fff34dc] = 0x1fff6b80
        0x1fff3456:    7828        (x      LDRB     r0,[r5,#0]
        0x1fff3458:    4c21        !L      LDR      r4,[pc,#132] ; [0x1fff34e0] = 0x1fff08e4
        0x1fff345a:    2800        .(      CMP      r0,#0
        0x1fff345c:    d016        ..      BEQ      0x1fff348c ; config_RTC1 + 68
        0x1fff345e:    f7fefb75    ..u.    BL       $Ven$TT$L$$read_LL_remainder_time ; 0x1fff1b4c
        0x1fff3462:    6020         `      STR      r0,[r4,#0]
        0x1fff3464:    f001f8bc    ....    BL       isTimer5Running ; 0x1fff45e0
        0x1fff3468:    2800        .(      CMP      r0,#0
        0x1fff346a:    d002        ..      BEQ      0x1fff3472 ; config_RTC1 + 42
        0x1fff346c:    f002fc40    ..@.    BL       read_TIM5_remainder_timer ; 0x1fff5cf0
        0x1fff3470:    6178        xa      STR      r0,[r7,#0x14]
        0x1fff3472:    491c        .I      LDR      r1,[pc,#112] ; [0x1fff34e4] = 0x4000f000
        0x1fff3474:    6a8b        .j      LDR      r3,[r1,#0x28]
        0x1fff3476:    481c        .H      LDR      r0,[pc,#112] ; [0x1fff34e8] = 0x1fff0a34
        0x1fff3478:    6003        .`      STR      r3,[r0,#0]
        0x1fff347a:    481c        .H      LDR      r0,[pc,#112] ; [0x1fff34ec] = 0x40001000
        0x1fff347c:    6ac7        .j      LDR      r7,[r0,#0x2c]
        0x1fff347e:    4a1c        .J      LDR      r2,[pc,#112] ; [0x1fff34f0] = 0x1fff0a18
        0x1fff3480:    6812        .h      LDR      r2,[r2,#0]
        0x1fff3482:    4297        .B      CMP      r7,r2
        0x1fff3484:    d205        ..      BCS      0x1fff3492 ; config_RTC1 + 74
        0x1fff3486:    6ac0        .j      LDR      r0,[r0,#0x2c]
        0x1fff3488:    1a10        ..      SUBS     r0,r2,r0
        0x1fff348a:    e003        ..      B        0x1fff3494 ; config_RTC1 + 76
        0x1fff348c:    68f8        .h      LDR      r0,[r7,#0xc]
        0x1fff348e:    6940        @i      LDR      r0,[r0,#0x14]
        0x1fff3490:    e7e7        ..      B        0x1fff3462 ; config_RTC1 + 26
        0x1fff3492:    2000        .       MOVS     r0,#0
        0x1fff3494:    4a17        .J      LDR      r2,[pc,#92] ; [0x1fff34f4] = 0x1fff0a1c
        0x1fff3496:    6010        .`      STR      r0,[r2,#0]
        0x1fff3498:    1998        ..      ADDS     r0,r3,r6
        0x1fff349a:    62c8        .b      STR      r0,[r1,#0x2c]
        0x1fff349c:    6a48        Hj      LDR      r0,[r1,#0x24]
        0x1fff349e:    2229        )"      MOVS     r2,#0x29
        0x1fff34a0:    03d2        ..      LSLS     r2,r2,#15
        0x1fff34a2:    4310        .C      ORRS     r0,r0,r2
        0x1fff34a4:    6248        Hb      STR      r0,[r1,#0x24]
        0x1fff34a6:    7828        (x      LDRB     r0,[r5,#0]
        0x1fff34a8:    2800        .(      CMP      r0,#0
        0x1fff34aa:    d012        ..      BEQ      0x1fff34d2 ; config_RTC1 + 138
        0x1fff34ac:    4812        .H      LDR      r0,[pc,#72] ; [0x1fff34f8] = 0x1fff0a4a
        0x1fff34ae:    7801        .x      LDRB     r1,[r0,#0]
        0x1fff34b0:    2902        .)      CMP      r1,#2
        0x1fff34b2:    d008        ..      BEQ      0x1fff34c6 ; config_RTC1 + 126
        0x1fff34b4:    7801        .x      LDRB     r1,[r0,#0]
        0x1fff34b6:    2901        .)      CMP      r1,#1
        0x1fff34b8:    d008        ..      BEQ      0x1fff34cc ; config_RTC1 + 132
        0x1fff34ba:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff34bc:    2803        .(      CMP      r0,#3
        0x1fff34be:    6820         h      LDR      r0,[r4,#0]
        0x1fff34c0:    d008        ..      BEQ      0x1fff34d4 ; config_RTC1 + 140
        0x1fff34c2:    1ec0        ..      SUBS     r0,r0,#3
        0x1fff34c4:    e004        ..      B        0x1fff34d0 ; config_RTC1 + 136
        0x1fff34c6:    6820         h      LDR      r0,[r4,#0]
        0x1fff34c8:    380f        .8      SUBS     r0,r0,#0xf
        0x1fff34ca:    e001        ..      B        0x1fff34d0 ; config_RTC1 + 136
        0x1fff34cc:    6820         h      LDR      r0,[r4,#0]
        0x1fff34ce:    3808        .8      SUBS     r0,r0,#8
        0x1fff34d0:    6020         `      STR      r0,[r4,#0]
        0x1fff34d2:    bdf8        ..      POP      {r3-r7,pc}
        0x1fff34d4:    1f40        @.      SUBS     r0,r0,#5
        0x1fff34d6:    e7fb        ..      B        0x1fff34d0 ; config_RTC1 + 136
    $d
        0x1fff34d8:    1fff091c    ....    DCD    536807708
        0x1fff34dc:    1fff6b80    .k..    DCD    536832896
        0x1fff34e0:    1fff08e4    ....    DCD    536807652
        0x1fff34e4:    4000f000    ...@    DCD    1073803264
        0x1fff34e8:    1fff0a34    4...    DCD    536807988
        0x1fff34ec:    40001000    ...@    DCD    1073745920
        0x1fff34f0:    1fff0a18    ....    DCD    536807960
        0x1fff34f4:    1fff0a1c    ....    DCD    536807964
        0x1fff34f8:    1fff0a4a    J...    DCD    536808010
    $t
    i.cusum_advance_slave_rx_window
    cusum_advance_slave_rx_window
        0x1fff34fc:    b510        ..      PUSH     {r4,lr}
        0x1fff34fe:    481e        .H      LDR      r0,[pc,#120] ; [0x1fff3578] = 0x1fff0d30
        0x1fff3500:    21a1        .!      MOVS     r1,#0xa1
        0x1fff3502:    7880        .x      LDRB     r0,[r0,#2]
        0x1fff3504:    0089        ..      LSLS     r1,r1,#2
        0x1fff3506:    4348        HC      MULS     r0,r1,r0
        0x1fff3508:    491c        .I      LDR      r1,[pc,#112] ; [0x1fff357c] = 0x1fff0934
        0x1fff350a:    23a1        .#      MOVS     r3,#0xa1
        0x1fff350c:    6809        .h      LDR      r1,[r1,#0]
        0x1fff350e:    009b        ..      LSLS     r3,r3,#2
        0x1fff3510:    1844        D.      ADDS     r4,r0,r1
        0x1fff3512:    2191        .!      MOVS     r1,#0x91
        0x1fff3514:    0089        ..      LSLS     r1,r1,#2
        0x1fff3516:    590a        .Y      LDR      r2,[r1,r4]
        0x1fff3518:    4917        .I      LDR      r1,[pc,#92] ; [0x1fff3578] = 0x1fff0d30
        0x1fff351a:    2000        .       MOVS     r0,#0
        0x1fff351c:    7889        .x      LDRB     r1,[r1,#2]
        0x1fff351e:    4359        YC      MULS     r1,r3,r1
        0x1fff3520:    4b16        .K      LDR      r3,[pc,#88] ; [0x1fff357c] = 0x1fff0934
        0x1fff3522:    681b        .h      LDR      r3,[r3,#0]
        0x1fff3524:    18c9        ..      ADDS     r1,r1,r3
        0x1fff3526:    8ec9        ..      LDRH     r1,[r1,#0x36]
        0x1fff3528:    2a00        .*      CMP      r2,#0
        0x1fff352a:    d01e        ..      BEQ      0x1fff356a ; cusum_advance_slave_rx_window + 110
        0x1fff352c:    4814        .H      LDR      r0,[pc,#80] ; [0x1fff3580] = 0x1fff6b80
        0x1fff352e:    68c0        .h      LDR      r0,[r0,#0xc]
        0x1fff3530:    30ff        .0      ADDS     r0,r0,#0xff
        0x1fff3532:    3001        .0      ADDS     r0,#1
        0x1fff3534:    2a01        .*      CMP      r2,#1
        0x1fff3536:    d00c        ..      BEQ      0x1fff3552 ; cusum_advance_slave_rx_window + 86
        0x1fff3538:    4b11        .K      LDR      r3,[pc,#68] ; [0x1fff3580] = 0x1fff6b80
        0x1fff353a:    68db        .h      LDR      r3,[r3,#0xc]
        0x1fff353c:    33ff        .3      ADDS     r3,r3,#0xff
        0x1fff353e:    3381        .3      ADDS     r3,r3,#0x81
        0x1fff3540:    2a06        .*      CMP      r2,#6
        0x1fff3542:    d808        ..      BHI      0x1fff3556 ; cusum_advance_slave_rx_window + 90
        0x1fff3544:    7964        dy      LDRB     r4,[r4,#5]
        0x1fff3546:    2c01        .,      CMP      r4,#1
        0x1fff3548:    d005        ..      BEQ      0x1fff3556 ; cusum_advance_slave_rx_window + 90
        0x1fff354a:    4c0d        .L      LDR      r4,[pc,#52] ; [0x1fff3580] = 0x1fff6b80
        0x1fff354c:    3452        R4      ADDS     r4,r4,#0x52
        0x1fff354e:    5d12        .]      LDRB     r2,[r2,r4]
        0x1fff3550:    e004        ..      B        0x1fff355c ; cusum_advance_slave_rx_window + 96
        0x1fff3552:    6b00        .k      LDR      r0,[r0,#0x30]
        0x1fff3554:    e009        ..      B        0x1fff356a ; cusum_advance_slave_rx_window + 110
        0x1fff3556:    4a0a        .J      LDR      r2,[pc,#40] ; [0x1fff3580] = 0x1fff6b80
        0x1fff3558:    3254        T2      ADDS     r2,r2,#0x54
        0x1fff355a:    7912        .y      LDRB     r2,[r2,#4]
        0x1fff355c:    6d1b        .m      LDR      r3,[r3,#0x50]
        0x1fff355e:    6b00        .k      LDR      r0,[r0,#0x30]
        0x1fff3560:    435a        ZC      MULS     r2,r3,r2
        0x1fff3562:    0a0b        ..      LSRS     r3,r1,#8
        0x1fff3564:    1c5b        [.      ADDS     r3,r3,#1
        0x1fff3566:    435a        ZC      MULS     r2,r3,r2
        0x1fff3568:    1810        ..      ADDS     r0,r2,r0
        0x1fff356a:    4a06        .J      LDR      r2,[pc,#24] ; [0x1fff3584] = 0x753
        0x1fff356c:    08c9        ..      LSRS     r1,r1,#3
        0x1fff356e:    4351        QC      MULS     r1,r2,r1
        0x1fff3570:    4281        .B      CMP      r1,r0
        0x1fff3572:    d800        ..      BHI      0x1fff3576 ; cusum_advance_slave_rx_window + 122
        0x1fff3574:    4608        .F      MOV      r0,r1
        0x1fff3576:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff3578:    1fff0d30    0...    DCD    536808752
        0x1fff357c:    1fff0934    4...    DCD    536807732
        0x1fff3580:    1fff6b80    .k..    DCD    536832896
        0x1fff3584:    00000753    S...    DCD    1875
    $t
    i.dbg_printf
    dbg_printf
        0x1fff3588:    b40f        ..      PUSH     {r0-r3}
        0x1fff358a:    b510        ..      PUSH     {r4,lr}
        0x1fff358c:    aa03        ..      ADD      r2,sp,#0xc
        0x1fff358e:    4804        .H      LDR      r0,[pc,#16] ; [0x1fff35a0] = 0x1fff30f9
        0x1fff3590:    9902        ..      LDR      r1,[sp,#8]
        0x1fff3592:    f001fdff    ....    BL       log_vsprintf ; 0x1fff5194
        0x1fff3596:    bc10        ..      POP      {r4}
        0x1fff3598:    bc08        ..      POP      {r3}
        0x1fff359a:    b004        ..      ADD      sp,sp,#0x10
        0x1fff359c:    4718        .G      BX       r3
    $d
        0x1fff359e:    0000        ..      DCW    0
        0x1fff35a0:    1fff30f9    .0..    DCD    536817913
    $t
    i.dbg_printf_init
    dbg_printf_init
        0x1fff35a4:    b538        8.      PUSH     {r3-r5,lr}
        0x1fff35a6:    4b03        .K      LDR      r3,[pc,#12] ; [0x1fff35b4] = 0x1fff6a8c
        0x1fff35a8:    2400        .$      MOVS     r4,#0
        0x1fff35aa:    cb0f        ..      LDM      r3,{r0-r3}
        0x1fff35ac:    9400        ..      STR      r4,[sp,#0]
        0x1fff35ae:    f000ff7f    ....    BL       hal_uart_init ; 0x1fff44b0
        0x1fff35b2:    bd38        8.      POP      {r3-r5,pc}
    $d
        0x1fff35b4:    1fff6a8c    .j..    DCD    536832652
    $t
    i.efuse_init
    efuse_init
        0x1fff35b8:    4903        .I      LDR      r1,[pc,#12] ; [0x1fff35c8] = 0x4000f040
        0x1fff35ba:    2000        .       MOVS     r0,#0
        0x1fff35bc:    6148        Ha      STR      r0,[r1,#0x14]
        0x1fff35be:    4903        .I      LDR      r1,[pc,#12] ; [0x1fff35cc] = 0x4000f140
        0x1fff35c0:    6008        .`      STR      r0,[r1,#0]
        0x1fff35c2:    6048        H`      STR      r0,[r1,#4]
        0x1fff35c4:    4770        pG      BX       lr
    $d
        0x1fff35c6:    0000        ..      DCW    0
        0x1fff35c8:    4000f040    @..@    DCD    1073803328
        0x1fff35cc:    4000f140    @..@    DCD    1073803584
    $t
    i.enlarge_rx_timeout_1st
    enlarge_rx_timeout_1st
        0x1fff35d0:    b51c        ..      PUSH     {r2-r4,lr}
        0x1fff35d2:    4827        'H      LDR      r0,[pc,#156] ; [0x1fff3670] = 0x1fff0d30
        0x1fff35d4:    21a1        .!      MOVS     r1,#0xa1
        0x1fff35d6:    7880        .x      LDRB     r0,[r0,#2]
        0x1fff35d8:    0089        ..      LSLS     r1,r1,#2
        0x1fff35da:    4348        HC      MULS     r0,r1,r0
        0x1fff35dc:    4925        %I      LDR      r1,[pc,#148] ; [0x1fff3674] = 0x1fff0934
        0x1fff35de:    6809        .h      LDR      r1,[r1,#0]
        0x1fff35e0:    1844        D.      ADDS     r4,r0,r1
        0x1fff35e2:    4825        %H      LDR      r0,[pc,#148] ; [0x1fff3678] = 0x40031000
        0x1fff35e4:    6a40        @j      LDR      r0,[r0,#0x24]
        0x1fff35e6:    b280        ..      UXTH     r0,r0
        0x1fff35e8:    9000        ..      STR      r0,[sp,#0]
        0x1fff35ea:    2091        .       MOVS     r0,#0x91
        0x1fff35ec:    0080        ..      LSLS     r0,r0,#2
        0x1fff35ee:    5901        .Y      LDR      r1,[r0,r4]
        0x1fff35f0:    2900        .)      CMP      r1,#0
        0x1fff35f2:    d00f        ..      BEQ      0x1fff3614 ; enlarge_rx_timeout_1st + 68
        0x1fff35f4:    4821        !H      LDR      r0,[pc,#132] ; [0x1fff367c] = 0x1fff6b80
        0x1fff35f6:    68c0        .h      LDR      r0,[r0,#0xc]
        0x1fff35f8:    30ff        .0      ADDS     r0,r0,#0xff
        0x1fff35fa:    3001        .0      ADDS     r0,#1
        0x1fff35fc:    2901        .)      CMP      r1,#1
        0x1fff35fe:    d00e        ..      BEQ      0x1fff361e ; enlarge_rx_timeout_1st + 78
        0x1fff3600:    4a1e        .J      LDR      r2,[pc,#120] ; [0x1fff367c] = 0x1fff6b80
        0x1fff3602:    68d2        .h      LDR      r2,[r2,#0xc]
        0x1fff3604:    32ff        .2      ADDS     r2,r2,#0xff
        0x1fff3606:    3281        .2      ADDS     r2,r2,#0x81
        0x1fff3608:    2906        .)      CMP      r1,#6
        0x1fff360a:    d80a        ..      BHI      0x1fff3622 ; enlarge_rx_timeout_1st + 82
        0x1fff360c:    4b1b        .K      LDR      r3,[pc,#108] ; [0x1fff367c] = 0x1fff6b80
        0x1fff360e:    3352        R3      ADDS     r3,r3,#0x52
        0x1fff3610:    5cc9        .\      LDRB     r1,[r1,r3]
        0x1fff3612:    e009        ..      B        0x1fff3628 ; enlarge_rx_timeout_1st + 88
        0x1fff3614:    8c60        `.      LDRH     r0,[r4,#0x22]
        0x1fff3616:    8ee1        ..      LDRH     r1,[r4,#0x36]
        0x1fff3618:    4348        HC      MULS     r0,r1,r0
        0x1fff361a:    1040        @.      ASRS     r0,r0,#1
        0x1fff361c:    e00d        ..      B        0x1fff363a ; enlarge_rx_timeout_1st + 106
        0x1fff361e:    6b00        .k      LDR      r0,[r0,#0x30]
        0x1fff3620:    e00a        ..      B        0x1fff3638 ; enlarge_rx_timeout_1st + 104
        0x1fff3622:    4916        .I      LDR      r1,[pc,#88] ; [0x1fff367c] = 0x1fff6b80
        0x1fff3624:    3154        T1      ADDS     r1,r1,#0x54
        0x1fff3626:    7909        .y      LDRB     r1,[r1,#4]
        0x1fff3628:    6d12        .m      LDR      r2,[r2,#0x50]
        0x1fff362a:    6b00        .k      LDR      r0,[r0,#0x30]
        0x1fff362c:    4351        QC      MULS     r1,r2,r1
        0x1fff362e:    8ee2        ..      LDRH     r2,[r4,#0x36]
        0x1fff3630:    0a12        ..      LSRS     r2,r2,#8
        0x1fff3632:    1c52        R.      ADDS     r2,r2,#1
        0x1fff3634:    4351        QC      MULS     r1,r2,r1
        0x1fff3636:    1808        ..      ADDS     r0,r1,r0
        0x1fff3638:    0040        @.      LSLS     r0,r0,#1
        0x1fff363a:    9900        ..      LDR      r1,[sp,#0]
        0x1fff363c:    1840        @.      ADDS     r0,r0,r1
        0x1fff363e:    9000        ..      STR      r0,[sp,#0]
        0x1fff3640:    f7ffff5c    ..\.    BL       cusum_advance_slave_rx_window ; 0x1fff34fc
        0x1fff3644:    9001        ..      STR      r0,[sp,#4]
        0x1fff3646:    9901        ..      LDR      r1,[sp,#4]
        0x1fff3648:    9800        ..      LDR      r0,[sp,#0]
        0x1fff364a:    4b0d        .K      LDR      r3,[pc,#52] ; [0x1fff3680] = 0x753
        0x1fff364c:    1a42        B.      SUBS     r2,r0,r1
        0x1fff364e:    69e0        .i      LDR      r0,[r4,#0x1c]
        0x1fff3650:    08c1        ..      LSRS     r1,r0,#3
        0x1fff3652:    4359        YC      MULS     r1,r3,r1
        0x1fff3654:    428a        .B      CMP      r2,r1
        0x1fff3656:    d801        ..      BHI      0x1fff365c ; enlarge_rx_timeout_1st + 140
        0x1fff3658:    9800        ..      LDR      r0,[sp,#0]
        0x1fff365a:    e005        ..      B        0x1fff3668 ; enlarge_rx_timeout_1st + 152
        0x1fff365c:    4909        .I      LDR      r1,[pc,#36] ; [0x1fff3684] = 0x271
        0x1fff365e:    0840        @.      LSRS     r0,r0,#1
        0x1fff3660:    4348        HC      MULS     r0,r1,r0
        0x1fff3662:    9901        ..      LDR      r1,[sp,#4]
        0x1fff3664:    1840        @.      ADDS     r0,r0,r1
        0x1fff3666:    9000        ..      STR      r0,[sp,#0]
        0x1fff3668:    f7fefa76    ..v.    BL       $Ven$TT$L$$ll_hw_set_rx_timeout_1st ; 0x1fff1b58
        0x1fff366c:    bd1c        ..      POP      {r2-r4,pc}
    $d
        0x1fff366e:    0000        ..      DCW    0
        0x1fff3670:    1fff0d30    0...    DCD    536808752
        0x1fff3674:    1fff0934    4...    DCD    536807732
        0x1fff3678:    40031000    ...@    DCD    1073942528
        0x1fff367c:    1fff6b80    .k..    DCD    536832896
        0x1fff3680:    00000753    S...    DCD    1875
        0x1fff3684:    00000271    q...    DCD    625
    $t
    i.enterSleepProcess1
    enterSleepProcess1
        0x1fff3688:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff368a:    4c0d        .L      LDR      r4,[pc,#52] ; [0x1fff36c0] = 0x1fff6b80
        0x1fff368c:    4605        .F      MOV      r5,r0
        0x1fff368e:    68e0        .h      LDR      r0,[r4,#0xc]
        0x1fff3690:    8d80        ..      LDRH     r0,[r0,#0x2c]
        0x1fff3692:    0540        @.      LSLS     r0,r0,#21
        0x1fff3694:    d505        ..      BPL      0x1fff36a2 ; enterSleepProcess1 + 26
        0x1fff3696:    480b        .H      LDR      r0,[pc,#44] ; [0x1fff36c4] = 0x4000f040
        0x1fff3698:    6a40        @j      LDR      r0,[r0,#0x24]
        0x1fff369a:    03c0        ..      LSLS     r0,r0,#15
        0x1fff369c:    0bc0        ..      LSRS     r0,r0,#15
        0x1fff369e:    f002fafb    ....    BL       rc32k_cap_cal ; 0x1fff5c98
        0x1fff36a2:    2000        .       MOVS     r0,#0
        0x1fff36a4:    f001ffe2    ....    BL       osal_search_active_task ; 0x1fff566c
        0x1fff36a8:    2800        .(      CMP      r0,#0
        0x1fff36aa:    d008        ..      BEQ      0x1fff36be ; enterSleepProcess1 + 54
        0x1fff36ac:    4806        .H      LDR      r0,[pc,#24] ; [0x1fff36c8] = 0x1fff8000
        0x1fff36ae:    6801        .h      LDR      r1,[r0,#0]
        0x1fff36b0:    68e0        .h      LDR      r0,[r4,#0xc]
        0x1fff36b2:    30ff        .0      ADDS     r0,r0,#0xff
        0x1fff36b4:    3081        .0      ADDS     r0,r0,#0x81
        0x1fff36b6:    6541        Ae      STR      r1,[r0,#0x54]
        0x1fff36b8:    4628        (F      MOV      r0,r5
        0x1fff36ba:    f7fefa53    ..S.    BL       $Ven$TT$L$$enterSleepProcess0 ; 0x1fff1b64
        0x1fff36be:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x1fff36c0:    1fff6b80    .k..    DCD    536832896
        0x1fff36c4:    4000f040    @..@    DCD    1073803328
        0x1fff36c8:    1fff8000    ....    DCD    536838144
    $t
    i.finidv
    finidv
        0x1fff36cc:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff36ce:    b08a        ..      SUB      sp,sp,#0x28
        0x1fff36d0:    2400        .$      MOVS     r4,#0
        0x1fff36d2:    4d1e        .M      LDR      r5,[pc,#120] ; [0x1fff374c] = 0x1fff6be9
        0x1fff36d4:    9404        ..      STR      r4,[sp,#0x10]
        0x1fff36d6:    9405        ..      STR      r4,[sp,#0x14]
        0x1fff36d8:    7828        (x      LDRB     r0,[r5,#0]
        0x1fff36da:    2801        .(      CMP      r0,#1
        0x1fff36dc:    d006        ..      BEQ      0x1fff36ec ; finidv + 32
        0x1fff36de:    a904        ..      ADD      r1,sp,#0x10
        0x1fff36e0:    2001        .       MOVS     r0,#1
        0x1fff36e2:    f7fef9fd    ....    BL       $Ven$TT$L$$efuse_read ; 0x1fff1ae0
        0x1fff36e6:    2800        .(      CMP      r0,#0
        0x1fff36e8:    d002        ..      BEQ      0x1fff36f0 ; finidv + 36
        0x1fff36ea:    2000        .       MOVS     r0,#0
        0x1fff36ec:    b00a        ..      ADD      sp,sp,#0x28
        0x1fff36ee:    bd70        p.      POP      {r4-r6,pc}
        0x1fff36f0:    9804        ..      LDR      r0,[sp,#0x10]
        0x1fff36f2:    9000        ..      STR      r0,[sp,#0]
        0x1fff36f4:    9805        ..      LDR      r0,[sp,#0x14]
        0x1fff36f6:    9001        ..      STR      r0,[sp,#4]
        0x1fff36f8:    4815        .H      LDR      r0,[pc,#84] ; [0x1fff3750] = 0x11002900
        0x1fff36fa:    6881        .h      LDR      r1,[r0,#8]
        0x1fff36fc:    9102        ..      STR      r1,[sp,#8]
        0x1fff36fe:    68c0        .h      LDR      r0,[r0,#0xc]
        0x1fff3700:    4913        .I      LDR      r1,[pc,#76] ; [0x1fff3750] = 0x11002900
        0x1fff3702:    9003        ..      STR      r0,[sp,#0xc]
        0x1fff3704:    aa06        ..      ADD      r2,sp,#0x18
        0x1fff3706:    3110        .1      ADDS     r1,r1,#0x10
        0x1fff3708:    4668        hF      MOV      r0,sp
        0x1fff370a:    f7fefa31    ..1.    BL       $Ven$TT$L$$LL_ENC_AES128_Encrypt ; 0x1fff1b70
        0x1fff370e:    4e10        .N      LDR      r6,[pc,#64] ; [0x1fff3750] = 0x11002900
        0x1fff3710:    2210        ."      MOVS     r2,#0x10
        0x1fff3712:    3620         6      ADDS     r6,r6,#0x20
        0x1fff3714:    4631        1F      MOV      r1,r6
        0x1fff3716:    a806        ..      ADD      r0,sp,#0x18
        0x1fff3718:    f7fefa30    ..0.    BL       $Ven$TT$L$$osal_memcmp ; 0x1fff1b7c
        0x1fff371c:    2800        .(      CMP      r0,#0
        0x1fff371e:    d011        ..      BEQ      0x1fff3744 ; finidv + 120
        0x1fff3720:    2001        .       MOVS     r0,#1
        0x1fff3722:    7028        (p      STRB     r0,[r5,#0]
        0x1fff3724:    4a0b        .J      LDR      r2,[pc,#44] ; [0x1fff3754] = 0x1fff77b8
        0x1fff3726:    4631        1F      MOV      r1,r6
        0x1fff3728:    4668        hF      MOV      r0,sp
        0x1fff372a:    f7fefa21    ..!.    BL       $Ven$TT$L$$LL_ENC_AES128_Encrypt ; 0x1fff1b70
        0x1fff372e:    9404        ..      STR      r4,[sp,#0x10]
        0x1fff3730:    2000        .       MOVS     r0,#0
        0x1fff3732:    4669        iF      MOV      r1,sp
        0x1fff3734:    9405        ..      STR      r4,[sp,#0x14]
        0x1fff3736:    0082        ..      LSLS     r2,r0,#2
        0x1fff3738:    1c40        @.      ADDS     r0,r0,#1
        0x1fff373a:    508c        .P      STR      r4,[r1,r2]
        0x1fff373c:    2804        .(      CMP      r0,#4
        0x1fff373e:    dbfa        ..      BLT      0x1fff3736 ; finidv + 106
        0x1fff3740:    2001        .       MOVS     r0,#1
        0x1fff3742:    e7d3        ..      B        0x1fff36ec ; finidv + 32
        0x1fff3744:    20ff        .       MOVS     r0,#0xff
        0x1fff3746:    7028        (p      STRB     r0,[r5,#0]
        0x1fff3748:    e7cf        ..      B        0x1fff36ea ; finidv + 30
    $d
        0x1fff374a:    0000        ..      DCW    0
        0x1fff374c:    1fff6be9    .k..    DCD    536833001
        0x1fff3750:    11002900    .)..    DCD    285223168
        0x1fff3754:    1fff77b8    .w..    DCD    536836024
    $t
    i.global_config_hclk_related
    global_config_hclk_related
        0x1fff3758:    b510        ..      PUSH     {r4,lr}
        0x1fff375a:    4822        "H      LDR      r0,[pc,#136] ; [0x1fff37e4] = 0x1fff0a4a
        0x1fff375c:    7803        .x      LDRB     r3,[r0,#0]
        0x1fff375e:    4922        "I      LDR      r1,[pc,#136] ; [0x1fff37e8] = 0x1fff6b80
        0x1fff3760:    2210        ."      MOVS     r2,#0x10
        0x1fff3762:    68c9        .h      LDR      r1,[r1,#0xc]
        0x1fff3764:    2b02        .+      CMP      r3,#2
        0x1fff3766:    d008        ..      BEQ      0x1fff377a ; global_config_hclk_related + 34
        0x1fff3768:    7803        .x      LDRB     r3,[r0,#0]
        0x1fff376a:    2b01        .+      CMP      r3,#1
        0x1fff376c:    d005        ..      BEQ      0x1fff377a ; global_config_hclk_related + 34
        0x1fff376e:    7803        .x      LDRB     r3,[r0,#0]
        0x1fff3770:    2b03        .+      CMP      r3,#3
        0x1fff3772:    d002        ..      BEQ      0x1fff377a ; global_config_hclk_related + 34
        0x1fff3774:    7803        .x      LDRB     r3,[r0,#0]
        0x1fff3776:    2b04        .+      CMP      r3,#4
        0x1fff3778:    d100        ..      BNE      0x1fff377c ; global_config_hclk_related + 36
        0x1fff377a:    620a        .b      STR      r2,[r1,#0x20]
        0x1fff377c:    7804        .x      LDRB     r4,[r0,#0]
        0x1fff377e:    230e        .#      MOVS     r3,#0xe
        0x1fff3780:    2c02        .,      CMP      r4,#2
        0x1fff3782:    d009        ..      BEQ      0x1fff3798 ; global_config_hclk_related + 64
        0x1fff3784:    7804        .x      LDRB     r4,[r0,#0]
        0x1fff3786:    2c01        .,      CMP      r4,#1
        0x1fff3788:    d008        ..      BEQ      0x1fff379c ; global_config_hclk_related + 68
        0x1fff378a:    7804        .x      LDRB     r4,[r0,#0]
        0x1fff378c:    2c03        .,      CMP      r4,#3
        0x1fff378e:    d007        ..      BEQ      0x1fff37a0 ; global_config_hclk_related + 72
        0x1fff3790:    7804        .x      LDRB     r4,[r0,#0]
        0x1fff3792:    2c04        .,      CMP      r4,#4
        0x1fff3794:    d006        ..      BEQ      0x1fff37a4 ; global_config_hclk_related + 76
        0x1fff3796:    e007        ..      B        0x1fff37a8 ; global_config_hclk_related + 80
        0x1fff3798:    241b        .$      MOVS     r4,#0x1b
        0x1fff379a:    e004        ..      B        0x1fff37a6 ; global_config_hclk_related + 78
        0x1fff379c:    2412        .$      MOVS     r4,#0x12
        0x1fff379e:    e002        ..      B        0x1fff37a6 ; global_config_hclk_related + 78
        0x1fff37a0:    604b        K`      STR      r3,[r1,#4]
        0x1fff37a2:    e001        ..      B        0x1fff37a8 ; global_config_hclk_related + 80
        0x1fff37a4:    240c        .$      MOVS     r4,#0xc
        0x1fff37a6:    604c        L`      STR      r4,[r1,#4]
        0x1fff37a8:    7804        .x      LDRB     r4,[r0,#0]
        0x1fff37aa:    490f        .I      LDR      r1,[pc,#60] ; [0x1fff37e8] = 0x1fff6b80
        0x1fff37ac:    68c9        .h      LDR      r1,[r1,#0xc]
        0x1fff37ae:    3180        .1      ADDS     r1,r1,#0x80
        0x1fff37b0:    2c02        .,      CMP      r4,#2
        0x1fff37b2:    d00b        ..      BEQ      0x1fff37cc ; global_config_hclk_related + 116
        0x1fff37b4:    7804        .x      LDRB     r4,[r0,#0]
        0x1fff37b6:    2c01        .,      CMP      r4,#1
        0x1fff37b8:    d00c        ..      BEQ      0x1fff37d4 ; global_config_hclk_related + 124
        0x1fff37ba:    7804        .x      LDRB     r4,[r0,#0]
        0x1fff37bc:    2c03        .,      CMP      r4,#3
        0x1fff37be:    d00e        ..      BEQ      0x1fff37de ; global_config_hclk_related + 134
        0x1fff37c0:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff37c2:    2804        .(      CMP      r0,#4
        0x1fff37c4:    d101        ..      BNE      0x1fff37ca ; global_config_hclk_related + 114
        0x1fff37c6:    61cb        .a      STR      r3,[r1,#0x1c]
        0x1fff37c8:    620a        .b      STR      r2,[r1,#0x20]
        0x1fff37ca:    bd10        ..      POP      {r4,pc}
        0x1fff37cc:    201f        .       MOVS     r0,#0x1f
        0x1fff37ce:    61c8        .a      STR      r0,[r1,#0x1c]
        0x1fff37d0:    2021        !       MOVS     r0,#0x21
        0x1fff37d2:    e002        ..      B        0x1fff37da ; global_config_hclk_related + 130
        0x1fff37d4:    2014        .       MOVS     r0,#0x14
        0x1fff37d6:    61c8        .a      STR      r0,[r1,#0x1c]
        0x1fff37d8:    2018        .       MOVS     r0,#0x18
        0x1fff37da:    6208        .b      STR      r0,[r1,#0x20]
        0x1fff37dc:    bd10        ..      POP      {r4,pc}
        0x1fff37de:    2013        .       MOVS     r0,#0x13
        0x1fff37e0:    61ca        .a      STR      r2,[r1,#0x1c]
        0x1fff37e2:    e7fa        ..      B        0x1fff37da ; global_config_hclk_related + 130
    $d
        0x1fff37e4:    1fff0a4a    J...    DCD    536808010
        0x1fff37e8:    1fff6b80    .k..    DCD    536832896
    $t
    i.hal_GPIO_IRQHandler
    hal_GPIO_IRQHandler
    __tagsym$$used
        0x1fff37ec:    b510        ..      PUSH     {r4,lr}
        0x1fff37ee:    4804        .H      LDR      r0,[pc,#16] ; [0x1fff3800] = 0x40008000
        0x1fff37f0:    6bc1        .k      LDR      r1,[r0,#0x3c]
        0x1fff37f2:    4a03        .J      LDR      r2,[pc,#12] ; [0x1fff3800] = 0x40008000
        0x1fff37f4:    3240        @2      ADDS     r2,r2,#0x40
        0x1fff37f6:    6810        .h      LDR      r0,[r2,#0]
        0x1fff37f8:    60d0        .`      STR      r0,[r2,#0xc]
        0x1fff37fa:    f000fbf9    ....    BL       hal_gpioin_event ; 0x1fff3ff0
        0x1fff37fe:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff3800:    40008000    ...@    DCD    1073774592
    $t
    i.hal_TIMER5_IRQHandler
    hal_TIMER5_IRQHandler
    __tagsym$$used
        0x1fff3804:    4806        .H      LDR      r0,[pc,#24] ; [0x1fff3820] = 0x40001040
        0x1fff3806:    6a00        .j      LDR      r0,[r0,#0x20]
        0x1fff3808:    07c0        ..      LSLS     r0,r0,#31
        0x1fff380a:    d008        ..      BEQ      0x1fff381e ; hal_TIMER5_IRQHandler + 26
        0x1fff380c:    4804        .H      LDR      r0,[pc,#16] ; [0x1fff3820] = 0x40001040
        0x1fff380e:    3010        .0      ADDS     r0,r0,#0x10
        0x1fff3810:    68c0        .h      LDR      r0,[r0,#0xc]
        0x1fff3812:    4804        .H      LDR      r0,[pc,#16] ; [0x1fff3824] = 0x1fff6b40
        0x1fff3814:    6801        .h      LDR      r1,[r0,#0]
        0x1fff3816:    2900        .)      CMP      r1,#0
        0x1fff3818:    d001        ..      BEQ      0x1fff381e ; hal_TIMER5_IRQHandler + 26
        0x1fff381a:    2005        .       MOVS     r0,#5
        0x1fff381c:    4708        .G      BX       r1
        0x1fff381e:    4770        pG      BX       lr
    $d
        0x1fff3820:    40001040    @..@    DCD    1073745984
        0x1fff3824:    1fff6b40    @k..    DCD    536832832
    $t
    i.hal_TIMER6_IRQHandler
    hal_TIMER6_IRQHandler
    __tagsym$$used
        0x1fff3828:    4806        .H      LDR      r0,[pc,#24] ; [0x1fff3844] = 0x40001040
        0x1fff382a:    6b40        @k      LDR      r0,[r0,#0x34]
        0x1fff382c:    07c0        ..      LSLS     r0,r0,#31
        0x1fff382e:    d008        ..      BEQ      0x1fff3842 ; hal_TIMER6_IRQHandler + 26
        0x1fff3830:    4804        .H      LDR      r0,[pc,#16] ; [0x1fff3844] = 0x40001040
        0x1fff3832:    3024        $0      ADDS     r0,r0,#0x24
        0x1fff3834:    68c0        .h      LDR      r0,[r0,#0xc]
        0x1fff3836:    4804        .H      LDR      r0,[pc,#16] ; [0x1fff3848] = 0x1fff6b40
        0x1fff3838:    6801        .h      LDR      r1,[r0,#0]
        0x1fff383a:    2900        .)      CMP      r1,#0
        0x1fff383c:    d001        ..      BEQ      0x1fff3842 ; hal_TIMER6_IRQHandler + 26
        0x1fff383e:    2006        .       MOVS     r0,#6
        0x1fff3840:    4708        .G      BX       r1
        0x1fff3842:    4770        pG      BX       lr
    $d
        0x1fff3844:    40001040    @..@    DCD    1073745984
        0x1fff3848:    1fff6b40    @k..    DCD    536832832
    $t
    i.hal_UART0_IRQHandler
    hal_UART0_IRQHandler
    __tagsym$$used
        0x1fff384c:    b510        ..      PUSH     {r4,lr}
        0x1fff384e:    480f        .H      LDR      r0,[pc,#60] ; [0x1fff388c] = 0x40004000
        0x1fff3850:    6880        .h      LDR      r0,[r0,#8]
        0x1fff3852:    0700        ..      LSLS     r0,r0,#28
        0x1fff3854:    0f00        ..      LSRS     r0,r0,#28
        0x1fff3856:    2806        .(      CMP      r0,#6
        0x1fff3858:    d008        ..      BEQ      0x1fff386c ; hal_UART0_IRQHandler + 32
        0x1fff385a:    dc08        ..      BGT      0x1fff386e ; hal_UART0_IRQHandler + 34
        0x1fff385c:    2802        .(      CMP      r0,#2
        0x1fff385e:    d00c        ..      BEQ      0x1fff387a ; hal_UART0_IRQHandler + 46
        0x1fff3860:    2804        .(      CMP      r0,#4
        0x1fff3862:    d103        ..      BNE      0x1fff386c ; hal_UART0_IRQHandler + 32
        0x1fff3864:    2101        .!      MOVS     r1,#1
        0x1fff3866:    2000        .       MOVS     r0,#0
        0x1fff3868:    f7fefb3e    ..>.    BL       irq_rx_handler ; 0x1fff1ee8
        0x1fff386c:    bd10        ..      POP      {r4,pc}
        0x1fff386e:    2807        .(      CMP      r0,#7
        0x1fff3870:    d007        ..      BEQ      0x1fff3882 ; hal_UART0_IRQHandler + 54
        0x1fff3872:    280c        .(      CMP      r0,#0xc
        0x1fff3874:    d1fa        ..      BNE      0x1fff386c ; hal_UART0_IRQHandler + 32
        0x1fff3876:    2102        .!      MOVS     r1,#2
        0x1fff3878:    e7f5        ..      B        0x1fff3866 ; hal_UART0_IRQHandler + 26
        0x1fff387a:    2000        .       MOVS     r0,#0
        0x1fff387c:    f7fefb5a    ..Z.    BL       irq_tx_empty_handler ; 0x1fff1f34
        0x1fff3880:    bd10        ..      POP      {r4,pc}
        0x1fff3882:    4802        .H      LDR      r0,[pc,#8] ; [0x1fff388c] = 0x40004000
        0x1fff3884:    3040        @0      ADDS     r0,r0,#0x40
        0x1fff3886:    6bc0        .k      LDR      r0,[r0,#0x3c]
        0x1fff3888:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff388a:    0000        ..      DCW    0
        0x1fff388c:    40004000    .@.@    DCD    1073758208
    $t
    i.hal_UART1_IRQHandler
    hal_UART1_IRQHandler
    __tagsym$$used
        0x1fff3890:    b510        ..      PUSH     {r4,lr}
        0x1fff3892:    480f        .H      LDR      r0,[pc,#60] ; [0x1fff38d0] = 0x40009000
        0x1fff3894:    6880        .h      LDR      r0,[r0,#8]
        0x1fff3896:    0700        ..      LSLS     r0,r0,#28
        0x1fff3898:    0f00        ..      LSRS     r0,r0,#28
        0x1fff389a:    2806        .(      CMP      r0,#6
        0x1fff389c:    d008        ..      BEQ      0x1fff38b0 ; hal_UART1_IRQHandler + 32
        0x1fff389e:    dc08        ..      BGT      0x1fff38b2 ; hal_UART1_IRQHandler + 34
        0x1fff38a0:    2802        .(      CMP      r0,#2
        0x1fff38a2:    d00c        ..      BEQ      0x1fff38be ; hal_UART1_IRQHandler + 46
        0x1fff38a4:    2804        .(      CMP      r0,#4
        0x1fff38a6:    d103        ..      BNE      0x1fff38b0 ; hal_UART1_IRQHandler + 32
        0x1fff38a8:    2101        .!      MOVS     r1,#1
        0x1fff38aa:    2001        .       MOVS     r0,#1
        0x1fff38ac:    f7fefb1c    ....    BL       irq_rx_handler ; 0x1fff1ee8
        0x1fff38b0:    bd10        ..      POP      {r4,pc}
        0x1fff38b2:    2807        .(      CMP      r0,#7
        0x1fff38b4:    d007        ..      BEQ      0x1fff38c6 ; hal_UART1_IRQHandler + 54
        0x1fff38b6:    280c        .(      CMP      r0,#0xc
        0x1fff38b8:    d1fa        ..      BNE      0x1fff38b0 ; hal_UART1_IRQHandler + 32
        0x1fff38ba:    2102        .!      MOVS     r1,#2
        0x1fff38bc:    e7f5        ..      B        0x1fff38aa ; hal_UART1_IRQHandler + 26
        0x1fff38be:    2001        .       MOVS     r0,#1
        0x1fff38c0:    f7fefb38    ..8.    BL       irq_tx_empty_handler ; 0x1fff1f34
        0x1fff38c4:    bd10        ..      POP      {r4,pc}
        0x1fff38c6:    4802        .H      LDR      r0,[pc,#8] ; [0x1fff38d0] = 0x40009000
        0x1fff38c8:    3040        @0      ADDS     r0,r0,#0x40
        0x1fff38ca:    6bc0        .k      LDR      r0,[r0,#0x3c]
        0x1fff38cc:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff38ce:    0000        ..      DCW    0
        0x1fff38d0:    40009000    ...@    DCD    1073778688
    $t
    i.hal_cache_tag_flush
    hal_cache_tag_flush
        0x1fff38d4:    b538        8.      PUSH     {r3-r5,lr}
        0x1fff38d6:    f7fef813    ....    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff1900
        0x1fff38da:    2201        ."      MOVS     r2,#1
        0x1fff38dc:    0792        ..      LSLS     r2,r2,#30
        0x1fff38de:    6a93        .j      LDR      r3,[r2,#0x28]
        0x1fff38e0:    2408        .$      MOVS     r4,#8
        0x1fff38e2:    9400        ..      STR      r4,[sp,#0]
        0x1fff38e4:    2b00        .+      CMP      r3,#0
        0x1fff38e6:    d101        ..      BNE      0x1fff38ec ; hal_cache_tag_flush + 24
        0x1fff38e8:    2001        .       MOVS     r0,#1
        0x1fff38ea:    6290        .b      STR      r0,[r2,#0x28]
        0x1fff38ec:    480a        .H      LDR      r0,[pc,#40] ; [0x1fff3918] = 0x4000c000
        0x1fff38ee:    2102        .!      MOVS     r1,#2
        0x1fff38f0:    6001        .`      STR      r1,[r0,#0]
        0x1fff38f2:    9900        ..      LDR      r1,[sp,#0]
        0x1fff38f4:    1e4d        M.      SUBS     r5,r1,#1
        0x1fff38f6:    9500        ..      STR      r5,[sp,#0]
        0x1fff38f8:    d2fb        ..      BCS      0x1fff38f2 ; hal_cache_tag_flush + 30
        0x1fff38fa:    2103        .!      MOVS     r1,#3
        0x1fff38fc:    6001        .`      STR      r1,[r0,#0]
        0x1fff38fe:    9400        ..      STR      r4,[sp,#0]
        0x1fff3900:    1e64        d.      SUBS     r4,r4,#1
        0x1fff3902:    9400        ..      STR      r4,[sp,#0]
        0x1fff3904:    d2fc        ..      BCS      0x1fff3900 ; hal_cache_tag_flush + 44
        0x1fff3906:    2100        .!      MOVS     r1,#0
        0x1fff3908:    6001        .`      STR      r1,[r0,#0]
        0x1fff390a:    2b00        .+      CMP      r3,#0
        0x1fff390c:    d100        ..      BNE      0x1fff3910 ; hal_cache_tag_flush + 60
        0x1fff390e:    6291        .b      STR      r1,[r2,#0x28]
        0x1fff3910:    f7fef802    ....    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff1918
        0x1fff3914:    bd38        8.      POP      {r3-r5,pc}
    $d
        0x1fff3916:    0000        ..      DCW    0
        0x1fff3918:    4000c000    ...@    DCD    1073790976
    $t
    i.hal_clk_gate_disable
    hal_clk_gate_disable
        0x1fff391c:    2101        .!      MOVS     r1,#1
        0x1fff391e:    0789        ..      LSLS     r1,r1,#30
        0x1fff3920:    2201        ."      MOVS     r2,#1
        0x1fff3922:    2820         (      CMP      r0,#0x20
        0x1fff3924:    d204        ..      BCS      0x1fff3930 ; hal_clk_gate_disable + 20
        0x1fff3926:    688b        .h      LDR      r3,[r1,#8]
        0x1fff3928:    4082        .@      LSLS     r2,r2,r0
        0x1fff392a:    4393        .C      BICS     r3,r3,r2
        0x1fff392c:    608b        .`      STR      r3,[r1,#8]
        0x1fff392e:    4770        pG      BX       lr
        0x1fff3930:    2840        @(      CMP      r0,#0x40
        0x1fff3932:    d205        ..      BCS      0x1fff3940 ; hal_clk_gate_disable + 36
        0x1fff3934:    694b        Ki      LDR      r3,[r1,#0x14]
        0x1fff3936:    3820         8      SUBS     r0,r0,#0x20
        0x1fff3938:    4082        .@      LSLS     r2,r2,r0
        0x1fff393a:    4393        .C      BICS     r3,r3,r2
        0x1fff393c:    614b        Ka      STR      r3,[r1,#0x14]
        0x1fff393e:    4770        pG      BX       lr
        0x1fff3940:    2860        `(      CMP      r0,#0x60
        0x1fff3942:    d2fc        ..      BCS      0x1fff393e ; hal_clk_gate_disable + 34
        0x1fff3944:    6a0b        .j      LDR      r3,[r1,#0x20]
        0x1fff3946:    3840        @8      SUBS     r0,r0,#0x40
        0x1fff3948:    4082        .@      LSLS     r2,r2,r0
        0x1fff394a:    4393        .C      BICS     r3,r3,r2
        0x1fff394c:    620b        .b      STR      r3,[r1,#0x20]
        0x1fff394e:    4770        pG      BX       lr
    i.hal_clk_gate_enable
    hal_clk_gate_enable
        0x1fff3950:    2201        ."      MOVS     r2,#1
        0x1fff3952:    0792        ..      LSLS     r2,r2,#30
        0x1fff3954:    2101        .!      MOVS     r1,#1
        0x1fff3956:    2820         (      CMP      r0,#0x20
        0x1fff3958:    d204        ..      BCS      0x1fff3964 ; hal_clk_gate_enable + 20
        0x1fff395a:    6893        .h      LDR      r3,[r2,#8]
        0x1fff395c:    4081        .@      LSLS     r1,r1,r0
        0x1fff395e:    430b        .C      ORRS     r3,r3,r1
        0x1fff3960:    6093        .`      STR      r3,[r2,#8]
        0x1fff3962:    4770        pG      BX       lr
        0x1fff3964:    2840        @(      CMP      r0,#0x40
        0x1fff3966:    d205        ..      BCS      0x1fff3974 ; hal_clk_gate_enable + 36
        0x1fff3968:    6953        Si      LDR      r3,[r2,#0x14]
        0x1fff396a:    3820         8      SUBS     r0,r0,#0x20
        0x1fff396c:    4081        .@      LSLS     r1,r1,r0
        0x1fff396e:    430b        .C      ORRS     r3,r3,r1
        0x1fff3970:    6153        Sa      STR      r3,[r2,#0x14]
        0x1fff3972:    4770        pG      BX       lr
        0x1fff3974:    2860        `(      CMP      r0,#0x60
        0x1fff3976:    d2fc        ..      BCS      0x1fff3972 ; hal_clk_gate_enable + 34
        0x1fff3978:    6a13        .j      LDR      r3,[r2,#0x20]
        0x1fff397a:    3840        @8      SUBS     r0,r0,#0x40
        0x1fff397c:    4081        .@      LSLS     r1,r1,r0
        0x1fff397e:    430b        .C      ORRS     r3,r3,r1
        0x1fff3980:    6213        .b      STR      r3,[r2,#0x20]
        0x1fff3982:    4770        pG      BX       lr
    i.hal_clk_reset
    hal_clk_reset
        0x1fff3984:    2101        .!      MOVS     r1,#1
        0x1fff3986:    b510        ..      PUSH     {r4,lr}
        0x1fff3988:    0789        ..      LSLS     r1,r1,#30
        0x1fff398a:    2201        ."      MOVS     r2,#1
        0x1fff398c:    2820         (      CMP      r0,#0x20
        0x1fff398e:    d213        ..      BCS      0x1fff39b8 ; hal_clk_reset + 52
        0x1fff3990:    4603        .F      MOV      r3,r0
        0x1fff3992:    3b15        .;      SUBS     r3,r3,#0x15
        0x1fff3994:    2b01        .+      CMP      r3,#1
        0x1fff3996:    d807        ..      BHI      0x1fff39a8 ; hal_clk_reset + 36
        0x1fff3998:    680a        .h      LDR      r2,[r1,#0]
        0x1fff399a:    2020                MOVS     r0,#0x20
        0x1fff399c:    4382        .C      BICS     r2,r2,r0
        0x1fff399e:    600a        .`      STR      r2,[r1,#0]
        0x1fff39a0:    680a        .h      LDR      r2,[r1,#0]
        0x1fff39a2:    4302        .C      ORRS     r2,r2,r0
        0x1fff39a4:    600a        .`      STR      r2,[r1,#0]
        0x1fff39a6:    bd10        ..      POP      {r4,pc}
        0x1fff39a8:    680b        .h      LDR      r3,[r1,#0]
        0x1fff39aa:    4082        .@      LSLS     r2,r2,r0
        0x1fff39ac:    4393        .C      BICS     r3,r3,r2
        0x1fff39ae:    600b        .`      STR      r3,[r1,#0]
        0x1fff39b0:    6808        .h      LDR      r0,[r1,#0]
        0x1fff39b2:    4310        .C      ORRS     r0,r0,r2
        0x1fff39b4:    6008        .`      STR      r0,[r1,#0]
        0x1fff39b6:    bd10        ..      POP      {r4,pc}
        0x1fff39b8:    2840        @(      CMP      r0,#0x40
        0x1fff39ba:    d214        ..      BCS      0x1fff39e6 ; hal_clk_reset + 98
        0x1fff39bc:    4603        .F      MOV      r3,r0
        0x1fff39be:    3b35        5;      SUBS     r3,r3,#0x35
        0x1fff39c0:    2b03        .+      CMP      r3,#3
        0x1fff39c2:    d807        ..      BHI      0x1fff39d4 ; hal_clk_reset + 80
        0x1fff39c4:    68ca        .h      LDR      r2,[r1,#0xc]
        0x1fff39c6:    2010        .       MOVS     r0,#0x10
        0x1fff39c8:    4382        .C      BICS     r2,r2,r0
        0x1fff39ca:    60ca        .`      STR      r2,[r1,#0xc]
        0x1fff39cc:    68ca        .h      LDR      r2,[r1,#0xc]
        0x1fff39ce:    4302        .C      ORRS     r2,r2,r0
        0x1fff39d0:    60ca        .`      STR      r2,[r1,#0xc]
        0x1fff39d2:    bd10        ..      POP      {r4,pc}
        0x1fff39d4:    68cb        .h      LDR      r3,[r1,#0xc]
        0x1fff39d6:    3820         8      SUBS     r0,r0,#0x20
        0x1fff39d8:    4082        .@      LSLS     r2,r2,r0
        0x1fff39da:    4393        .C      BICS     r3,r3,r2
        0x1fff39dc:    60cb        .`      STR      r3,[r1,#0xc]
        0x1fff39de:    68c8        .h      LDR      r0,[r1,#0xc]
        0x1fff39e0:    4310        .C      ORRS     r0,r0,r2
        0x1fff39e2:    60c8        .`      STR      r0,[r1,#0xc]
        0x1fff39e4:    bd10        ..      POP      {r4,pc}
        0x1fff39e6:    2860        `(      CMP      r0,#0x60
        0x1fff39e8:    d2fc        ..      BCS      0x1fff39e4 ; hal_clk_reset + 96
        0x1fff39ea:    6a4b        Kj      LDR      r3,[r1,#0x24]
        0x1fff39ec:    2442        B$      MOVS     r4,#0x42
        0x1fff39ee:    1a20         .      SUBS     r0,r4,r0
        0x1fff39f0:    4082        .@      LSLS     r2,r2,r0
        0x1fff39f2:    4393        .C      BICS     r3,r3,r2
        0x1fff39f4:    624b        Kb      STR      r3,[r1,#0x24]
        0x1fff39f6:    6a48        Hj      LDR      r0,[r1,#0x24]
        0x1fff39f8:    4310        .C      ORRS     r0,r0,r2
        0x1fff39fa:    6248        Hb      STR      r0,[r1,#0x24]
        0x1fff39fc:    bd10        ..      POP      {r4,pc}
        0x1fff39fe:    0000        ..      MOVS     r0,r0
    i.hal_flash_read
    hal_flash_read
        0x1fff3a00:    b5f7        ..      PUSH     {r0-r2,r4-r7,lr}
        0x1fff3a02:    b084        ..      SUB      sp,sp,#0x10
        0x1fff3a04:    4617        .F      MOV      r7,r2
        0x1fff3a06:    4604        .F      MOV      r4,r0
        0x1fff3a08:    f7fefafa    ....    BL       spif_lock ; 0x1fff2000
        0x1fff3a0c:    9002        ..      STR      r0,[sp,#8]
        0x1fff3a0e:    0360        `.      LSLS     r0,r4,#13
        0x1fff3a10:    2111        .!      MOVS     r1,#0x11
        0x1fff3a12:    0b40        @.      LSRS     r0,r0,#13
        0x1fff3a14:    0609        ..      LSLS     r1,r1,#24
        0x1fff3a16:    1840        @.      ADDS     r0,r0,r1
        0x1fff3a18:    018d        ..      LSLS     r5,r1,#6
        0x1fff3a1a:    9001        ..      STR      r0,[sp,#4]
        0x1fff3a1c:    6aae        .j      LDR      r6,[r5,#0x28]
        0x1fff3a1e:    0220         .      LSLS     r0,r4,#8
        0x1fff3a20:    0a00        ..      LSRS     r0,r0,#8
        0x1fff3a22:    4921        !I      LDR      r1,[pc,#132] ; [0x1fff3aa8] = 0x7ffff
        0x1fff3a24:    9000        ..      STR      r0,[sp,#0]
        0x1fff3a26:    4288        .B      CMP      r0,r1
        0x1fff3a28:    d909        ..      BLS      0x1fff3a3e ; hal_flash_read + 62
        0x1fff3a2a:    201f        .       MOVS     r0,#0x1f
        0x1fff3a2c:    04c0        ..      LSLS     r0,r0,#19
        0x1fff3a2e:    4004        .@      ANDS     r4,r4,r0
        0x1fff3a30:    d005        ..      BEQ      0x1fff3a3e ; hal_flash_read + 62
        0x1fff3a32:    481e        .H      LDR      r0,[pc,#120] ; [0x1fff3aac] = 0x4000c800
        0x1fff3a34:    6244        Db      STR      r4,[r0,#0x24]
        0x1fff3a36:    6801        .h      LDR      r1,[r0,#0]
        0x1fff3a38:    13aa        ..      ASRS     r2,r5,#14
        0x1fff3a3a:    4311        .C      ORRS     r1,r1,r2
        0x1fff3a3c:    6001        .`      STR      r1,[r0,#0]
        0x1fff3a3e:    2e00        ..      CMP      r6,#0
        0x1fff3a40:    d109        ..      BNE      0x1fff3a56 ; hal_flash_read + 86
        0x1fff3a42:    f7fdff5d    ..].    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff1900
        0x1fff3a46:    491a        .I      LDR      r1,[pc,#104] ; [0x1fff3ab0] = 0x4000c000
        0x1fff3a48:    2002        .       MOVS     r0,#2
        0x1fff3a4a:    6008        .`      STR      r0,[r1,#0]
        0x1fff3a4c:    6268        hb      STR      r0,[r5,#0x24]
        0x1fff3a4e:    2001        .       MOVS     r0,#1
        0x1fff3a50:    62a8        .b      STR      r0,[r5,#0x28]
        0x1fff3a52:    f7fdff61    ..a.    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff1918
        0x1fff3a56:    2000        .       MOVS     r0,#0
        0x1fff3a58:    e004        ..      B        0x1fff3a64 ; hal_flash_read + 100
        0x1fff3a5a:    9901        ..      LDR      r1,[sp,#4]
        0x1fff3a5c:    5c0a        .\      LDRB     r2,[r1,r0]
        0x1fff3a5e:    9905        ..      LDR      r1,[sp,#0x14]
        0x1fff3a60:    540a        .T      STRB     r2,[r1,r0]
        0x1fff3a62:    1c40        @.      ADDS     r0,r0,#1
        0x1fff3a64:    42b8        .B      CMP      r0,r7
        0x1fff3a66:    d3f8        ..      BCC      0x1fff3a5a ; hal_flash_read + 90
        0x1fff3a68:    2700        .'      MOVS     r7,#0
        0x1fff3a6a:    2e00        ..      CMP      r6,#0
        0x1fff3a6c:    d108        ..      BNE      0x1fff3a80 ; hal_flash_read + 128
        0x1fff3a6e:    f7fdff47    ..G.    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff1900
        0x1fff3a72:    480f        .H      LDR      r0,[pc,#60] ; [0x1fff3ab0] = 0x4000c000
        0x1fff3a74:    6007        .`      STR      r7,[r0,#0]
        0x1fff3a76:    2003        .       MOVS     r0,#3
        0x1fff3a78:    6268        hb      STR      r0,[r5,#0x24]
        0x1fff3a7a:    62af        .b      STR      r7,[r5,#0x28]
        0x1fff3a7c:    f7fdff4c    ..L.    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff1918
        0x1fff3a80:    4909        .I      LDR      r1,[pc,#36] ; [0x1fff3aa8] = 0x7ffff
        0x1fff3a82:    9800        ..      LDR      r0,[sp,#0]
        0x1fff3a84:    4288        .B      CMP      r0,r1
        0x1fff3a86:    d908        ..      BLS      0x1fff3a9a ; hal_flash_read + 154
        0x1fff3a88:    2c00        .,      CMP      r4,#0
        0x1fff3a8a:    d006        ..      BEQ      0x1fff3a9a ; hal_flash_read + 154
        0x1fff3a8c:    4807        .H      LDR      r0,[pc,#28] ; [0x1fff3aac] = 0x4000c800
        0x1fff3a8e:    6247        Gb      STR      r7,[r0,#0x24]
        0x1fff3a90:    6802        .h      LDR      r2,[r0,#0]
        0x1fff3a92:    2101        .!      MOVS     r1,#1
        0x1fff3a94:    0409        ..      LSLS     r1,r1,#16
        0x1fff3a96:    438a        .C      BICS     r2,r2,r1
        0x1fff3a98:    6002        .`      STR      r2,[r0,#0]
        0x1fff3a9a:    9802        ..      LDR      r0,[sp,#8]
        0x1fff3a9c:    f7fefac2    ....    BL       spif_unlock ; 0x1fff2024
        0x1fff3aa0:    2000        .       MOVS     r0,#0
        0x1fff3aa2:    b007        ..      ADD      sp,sp,#0x1c
        0x1fff3aa4:    bdf0        ..      POP      {r4-r7,pc}
    $d
        0x1fff3aa6:    0000        ..      DCW    0
        0x1fff3aa8:    0007ffff    ....    DCD    524287
        0x1fff3aac:    4000c800    ...@    DCD    1073793024
        0x1fff3ab0:    4000c000    ...@    DCD    1073790976
    $t
    i.hal_gpio_cfg_analog_io
    hal_gpio_cfg_analog_io
        0x1fff3ab4:    b530        0.      PUSH     {r4,r5,lr}
        0x1fff3ab6:    1fc2        ..      SUBS     r2,r0,#7
        0x1fff3ab8:    2a0a        .*      CMP      r2,#0xa
        0x1fff3aba:    d301        ..      BCC      0x1fff3ac0 ; hal_gpio_cfg_analog_io + 12
        0x1fff3abc:    2006        .       MOVS     r0,#6
        0x1fff3abe:    bd30        0.      POP      {r4,r5,pc}
        0x1fff3ac0:    2816        .(      CMP      r0,#0x16
        0x1fff3ac2:    d901        ..      BLS      0x1fff3ac8 ; hal_gpio_cfg_analog_io + 20
        0x1fff3ac4:    2005        .       MOVS     r0,#5
        0x1fff3ac6:    bd30        0.      POP      {r4,r5,pc}
        0x1fff3ac8:    2401        .$      MOVS     r4,#1
        0x1fff3aca:    4d07        .M      LDR      r5,[pc,#28] ; [0x1fff3ae8] = 0x40003800
        0x1fff3acc:    4094        .@      LSLS     r4,r4,r2
        0x1fff3ace:    2900        .)      CMP      r1,#0
        0x1fff3ad0:    d005        ..      BEQ      0x1fff3ade ; hal_gpio_cfg_analog_io + 42
        0x1fff3ad2:    2100        .!      MOVS     r1,#0
        0x1fff3ad4:    f000f8d2    ....    BL       hal_gpio_pull_set ; 0x1fff3c7c
        0x1fff3ad8:    6828        (h      LDR      r0,[r5,#0]
        0x1fff3ada:    4320         C      ORRS     r0,r0,r4
        0x1fff3adc:    e001        ..      B        0x1fff3ae2 ; hal_gpio_cfg_analog_io + 46
        0x1fff3ade:    6828        (h      LDR      r0,[r5,#0]
        0x1fff3ae0:    43a0        .C      BICS     r0,r0,r4
        0x1fff3ae2:    6028        (`      STR      r0,[r5,#0]
        0x1fff3ae4:    2000        .       MOVS     r0,#0
        0x1fff3ae6:    bd30        0.      POP      {r4,r5,pc}
    $d
        0x1fff3ae8:    40003800    .8.@    DCD    1073756160
    $t
    i.hal_gpio_fmux
    hal_gpio_fmux
        0x1fff3aec:    2816        .(      CMP      r0,#0x16
        0x1fff3aee:    d809        ..      BHI      0x1fff3b04 ; hal_gpio_fmux + 24
        0x1fff3af0:    4a05        .J      LDR      r2,[pc,#20] ; [0x1fff3b08] = 0x40003800
        0x1fff3af2:    2301        .#      MOVS     r3,#1
        0x1fff3af4:    4083        .@      LSLS     r3,r3,r0
        0x1fff3af6:    68d0        .h      LDR      r0,[r2,#0xc]
        0x1fff3af8:    2900        .)      CMP      r1,#0
        0x1fff3afa:    d001        ..      BEQ      0x1fff3b00 ; hal_gpio_fmux + 20
        0x1fff3afc:    4318        .C      ORRS     r0,r0,r3
        0x1fff3afe:    e000        ..      B        0x1fff3b02 ; hal_gpio_fmux + 22
        0x1fff3b00:    4398        .C      BICS     r0,r0,r3
        0x1fff3b02:    60d0        .`      STR      r0,[r2,#0xc]
        0x1fff3b04:    4770        pG      BX       lr
    $d
        0x1fff3b06:    0000        ..      DCW    0
        0x1fff3b08:    40003800    .8.@    DCD    1073756160
    $t
    i.hal_gpio_fmux_set
    hal_gpio_fmux_set
        0x1fff3b0c:    b5f3        ..      PUSH     {r0,r1,r4-r7,lr}
        0x1fff3b0e:    4606        .F      MOV      r6,r0
        0x1fff3b10:    28ff        .(      CMP      r0,#0xff
        0x1fff3b12:    d019        ..      BEQ      0x1fff3b48 ; hal_gpio_fmux_set + 60
        0x1fff3b14:    07b0        ..      LSLS     r0,r6,#30
        0x1fff3b16:    0ec4        ..      LSRS     r4,r0,#27
        0x1fff3b18:    08b7        ..      LSRS     r7,r6,#2
        0x1fff3b1a:    1d65        e.      ADDS     r5,r4,#5
        0x1fff3b1c:    4630        0F      MOV      r0,r6
        0x1fff3b1e:    f000fa0d    ....    BL       hal_gpioin_disable ; 0x1fff3f3c
        0x1fff3b22:    480a        .H      LDR      r0,[pc,#40] ; [0x1fff3b4c] = 0x40003800
        0x1fff3b24:    00b9        ..      LSLS     r1,r7,#2
        0x1fff3b26:    1809        ..      ADDS     r1,r1,r0
        0x1fff3b28:    6988        .i      LDR      r0,[r1,#0x18]
        0x1fff3b2a:    1b2b        +.      SUBS     r3,r5,r4
        0x1fff3b2c:    2201        ."      MOVS     r2,#1
        0x1fff3b2e:    1c5b        [.      ADDS     r3,r3,#1
        0x1fff3b30:    409a        .@      LSLS     r2,r2,r3
        0x1fff3b32:    1e52        R.      SUBS     r2,r2,#1
        0x1fff3b34:    40a2        .@      LSLS     r2,r2,r4
        0x1fff3b36:    4390        .C      BICS     r0,r0,r2
        0x1fff3b38:    9a01        ..      LDR      r2,[sp,#4]
        0x1fff3b3a:    40a2        .@      LSLS     r2,r2,r4
        0x1fff3b3c:    4310        .C      ORRS     r0,r0,r2
        0x1fff3b3e:    6188        .a      STR      r0,[r1,#0x18]
        0x1fff3b40:    2101        .!      MOVS     r1,#1
        0x1fff3b42:    4630        0F      MOV      r0,r6
        0x1fff3b44:    f7ffffd2    ....    BL       hal_gpio_fmux ; 0x1fff3aec
        0x1fff3b48:    bdfc        ..      POP      {r2-r7,pc}
    $d
        0x1fff3b4a:    0000        ..      DCW    0
        0x1fff3b4c:    40003800    .8.@    DCD    1073756160
    $t
    i.hal_gpio_init
    hal_gpio_init
        0x1fff3b50:    b510        ..      PUSH     {r4,lr}
        0x1fff3b52:    4c11        .L      LDR      r4,[pc,#68] ; [0x1fff3b98] = 0x1fff7278
        0x1fff3b54:    7820         x      LDRB     r0,[r4,#0]
        0x1fff3b56:    2800        .(      CMP      r0,#0
        0x1fff3b58:    d001        ..      BEQ      0x1fff3b5e ; hal_gpio_init + 14
        0x1fff3b5a:    2007        .       MOVS     r0,#7
        0x1fff3b5c:    bd10        ..      POP      {r4,pc}
        0x1fff3b5e:    21ff        .!      MOVS     r1,#0xff
        0x1fff3b60:    3131        11      ADDS     r1,r1,#0x31
        0x1fff3b62:    480d        .H      LDR      r0,[pc,#52] ; [0x1fff3b98] = 0x1fff7278
        0x1fff3b64:    f7fef810    ....    BL       $Ven$TT$L$$__aeabi_memclr4 ; 0x1fff1b88
        0x1fff3b68:    2001        .       MOVS     r0,#1
        0x1fff3b6a:    7020         p      STRB     r0,[r4,#0]
        0x1fff3b6c:    490b        .I      LDR      r1,[pc,#44] ; [0x1fff3b9c] = 0x40008000
        0x1fff3b6e:    2000        .       MOVS     r0,#0
        0x1fff3b70:    6308        .c      STR      r0,[r1,#0x30]
        0x1fff3b72:    6348        Hc      STR      r0,[r1,#0x34]
        0x1fff3b74:    490a        .I      LDR      r1,[pc,#40] ; [0x1fff3ba0] = 0x4000f080
        0x1fff3b76:    6208        .b      STR      r0,[r1,#0x20]
        0x1fff3b78:    6248        Hb      STR      r0,[r1,#0x24]
        0x1fff3b7a:    2102        .!      MOVS     r1,#2
        0x1fff3b7c:    2010        .       MOVS     r0,#0x10
        0x1fff3b7e:    f7fff88d    ....    BL       __NVIC_SetPriority ; 0x1fff2c9c
        0x1fff3b82:    2010        .       MOVS     r0,#0x10
        0x1fff3b84:    f7fff85c    ..\.    BL       __NVIC_EnableIRQ ; 0x1fff2c40
        0x1fff3b88:    4a06        .J      LDR      r2,[pc,#24] ; [0x1fff3ba4] = 0x1fff3e01
        0x1fff3b8a:    4907        .I      LDR      r1,[pc,#28] ; [0x1fff3ba8] = 0x1fff3d69
        0x1fff3b8c:    200d        .       MOVS     r0,#0xd
        0x1fff3b8e:    f000fb29    ..).    BL       hal_pwrmgr_register ; 0x1fff41e4
        0x1fff3b92:    2000        .       MOVS     r0,#0
        0x1fff3b94:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff3b96:    0000        ..      DCW    0
        0x1fff3b98:    1fff7278    xr..    DCD    536834680
        0x1fff3b9c:    40008000    ...@    DCD    1073774592
        0x1fff3ba0:    4000f080    ...@    DCD    1073803392
        0x1fff3ba4:    1fff3e01    .>..    DCD    536821249
        0x1fff3ba8:    1fff3d69    i=..    DCD    536821097
    $t
    i.hal_gpio_interrupt_enable
    hal_gpio_interrupt_enable
        0x1fff3bac:    b510        ..      PUSH     {r4,lr}
        0x1fff3bae:    2816        .(      CMP      r0,#0x16
        0x1fff3bb0:    d901        ..      BLS      0x1fff3bb6 ; hal_gpio_interrupt_enable + 10
        0x1fff3bb2:    2005        .       MOVS     r0,#5
        0x1fff3bb4:    bd10        ..      POP      {r4,pc}
        0x1fff3bb6:    4b0c        .K      LDR      r3,[pc,#48] ; [0x1fff3be8] = 0x40008000
        0x1fff3bb8:    6b9c        .k      LDR      r4,[r3,#0x38]
        0x1fff3bba:    2201        ."      MOVS     r2,#1
        0x1fff3bbc:    4082        .@      LSLS     r2,r2,r0
        0x1fff3bbe:    4610        .F      MOV      r0,r2
        0x1fff3bc0:    4320         C      ORRS     r0,r0,r4
        0x1fff3bc2:    6398        .c      STR      r0,[r3,#0x38]
        0x1fff3bc4:    6b58        Xk      LDR      r0,[r3,#0x34]
        0x1fff3bc6:    4390        .C      BICS     r0,r0,r2
        0x1fff3bc8:    6358        Xc      STR      r0,[r3,#0x34]
        0x1fff3bca:    6bdc        .k      LDR      r4,[r3,#0x3c]
        0x1fff3bcc:    2901        .)      CMP      r1,#1
        0x1fff3bce:    d007        ..      BEQ      0x1fff3be0 ; hal_gpio_interrupt_enable + 52
        0x1fff3bd0:    4620         F      MOV      r0,r4
        0x1fff3bd2:    4390        .C      BICS     r0,r0,r2
        0x1fff3bd4:    63d8        .c      STR      r0,[r3,#0x3c]
        0x1fff3bd6:    6b18        .k      LDR      r0,[r3,#0x30]
        0x1fff3bd8:    4302        .C      ORRS     r2,r2,r0
        0x1fff3bda:    631a        .c      STR      r2,[r3,#0x30]
        0x1fff3bdc:    2000        .       MOVS     r0,#0
        0x1fff3bde:    bd10        ..      POP      {r4,pc}
        0x1fff3be0:    4610        .F      MOV      r0,r2
        0x1fff3be2:    4320         C      ORRS     r0,r0,r4
        0x1fff3be4:    e7f6        ..      B        0x1fff3bd4 ; hal_gpio_interrupt_enable + 40
    $d
        0x1fff3be6:    0000        ..      DCW    0
        0x1fff3be8:    40008000    ...@    DCD    1073774592
    $t
    i.hal_gpio_pin2pin3_control
    hal_gpio_pin2pin3_control
        0x1fff3bec:    4b05        .K      LDR      r3,[pc,#20] ; [0x1fff3c04] = 0x40003800
        0x1fff3bee:    2201        ."      MOVS     r2,#1
        0x1fff3bf0:    1e80        ..      SUBS     r0,r0,#2
        0x1fff3bf2:    4082        .@      LSLS     r2,r2,r0
        0x1fff3bf4:    6958        Xi      LDR      r0,[r3,#0x14]
        0x1fff3bf6:    2900        .)      CMP      r1,#0
        0x1fff3bf8:    d001        ..      BEQ      0x1fff3bfe ; hal_gpio_pin2pin3_control + 18
        0x1fff3bfa:    4310        .C      ORRS     r0,r0,r2
        0x1fff3bfc:    e000        ..      B        0x1fff3c00 ; hal_gpio_pin2pin3_control + 20
        0x1fff3bfe:    4390        .C      BICS     r0,r0,r2
        0x1fff3c00:    6158        Xa      STR      r0,[r3,#0x14]
        0x1fff3c02:    4770        pG      BX       lr
    $d
        0x1fff3c04:    40003800    .8.@    DCD    1073756160
    $t
    i.hal_gpio_pin_init
    hal_gpio_pin_init
        0x1fff3c08:    b5f0        ..      PUSH     {r4-r7,lr}
        0x1fff3c0a:    460f        .F      MOV      r7,r1
        0x1fff3c0c:    4604        .F      MOV      r4,r0
        0x1fff3c0e:    2816        .(      CMP      r0,#0x16
        0x1fff3c10:    d901        ..      BLS      0x1fff3c16 ; hal_gpio_pin_init + 14
        0x1fff3c12:    2005        .       MOVS     r0,#5
        0x1fff3c14:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff3c16:    4817        .H      LDR      r0,[pc,#92] ; [0x1fff3c74] = 0x1fff7278
        0x1fff3c18:    2501        .%      MOVS     r5,#1
        0x1fff3c1a:    1906        ..      ADDS     r6,r0,r4
        0x1fff3c1c:    7871        qx      LDRB     r1,[r6,#1]
        0x1fff3c1e:    40a5        .@      LSLS     r5,r5,r4
        0x1fff3c20:    2901        .)      CMP      r1,#1
        0x1fff3c22:    d104        ..      BNE      0x1fff3c2e ; hal_gpio_pin_init + 38
        0x1fff3c24:    6980        .i      LDR      r0,[r0,#0x18]
        0x1fff3c26:    4228        (B      TST      r0,r5
        0x1fff3c28:    d001        ..      BEQ      0x1fff3c2e ; hal_gpio_pin_init + 38
        0x1fff3c2a:    2f00        ./      CMP      r7,#0
        0x1fff3c2c:    d008        ..      BEQ      0x1fff3c40 ; hal_gpio_pin_init + 56
        0x1fff3c2e:    2100        .!      MOVS     r1,#0
        0x1fff3c30:    4620         F      MOV      r0,r4
        0x1fff3c32:    f7ffff5b    ..[.    BL       hal_gpio_fmux ; 0x1fff3aec
        0x1fff3c36:    2c02        .,      CMP      r4,#2
        0x1fff3c38:    d004        ..      BEQ      0x1fff3c44 ; hal_gpio_pin_init + 60
        0x1fff3c3a:    2c03        .,      CMP      r4,#3
        0x1fff3c3c:    d002        ..      BEQ      0x1fff3c44 ; hal_gpio_pin_init + 60
        0x1fff3c3e:    e005        ..      B        0x1fff3c4c ; hal_gpio_pin_init + 68
        0x1fff3c40:    2006        .       MOVS     r0,#6
        0x1fff3c42:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff3c44:    2101        .!      MOVS     r1,#1
        0x1fff3c46:    4620         F      MOV      r0,r4
        0x1fff3c48:    f7ffffd0    ....    BL       hal_gpio_pin2pin3_control ; 0x1fff3bec
        0x1fff3c4c:    2100        .!      MOVS     r1,#0
        0x1fff3c4e:    4620         F      MOV      r0,r4
        0x1fff3c50:    f7ffff30    ..0.    BL       hal_gpio_cfg_analog_io ; 0x1fff3ab4
        0x1fff3c54:    4808        .H      LDR      r0,[pc,#32] ; [0x1fff3c78] = 0x40008000
        0x1fff3c56:    2f01        ./      CMP      r7,#1
        0x1fff3c58:    d006        ..      BEQ      0x1fff3c68 ; hal_gpio_pin_init + 96
        0x1fff3c5a:    6841        Ah      LDR      r1,[r0,#4]
        0x1fff3c5c:    43a9        .C      BICS     r1,r1,r5
        0x1fff3c5e:    6041        A`      STR      r1,[r0,#4]
        0x1fff3c60:    2002        .       MOVS     r0,#2
        0x1fff3c62:    7070        pp      STRB     r0,[r6,#1]
        0x1fff3c64:    2000        .       MOVS     r0,#0
        0x1fff3c66:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff3c68:    6842        Bh      LDR      r2,[r0,#4]
        0x1fff3c6a:    2101        .!      MOVS     r1,#1
        0x1fff3c6c:    432a        *C      ORRS     r2,r2,r5
        0x1fff3c6e:    6042        B`      STR      r2,[r0,#4]
        0x1fff3c70:    7071        qp      STRB     r1,[r6,#1]
        0x1fff3c72:    e7f7        ..      B        0x1fff3c64 ; hal_gpio_pin_init + 92
    $d
        0x1fff3c74:    1fff7278    xr..    DCD    536834680
        0x1fff3c78:    40008000    ...@    DCD    1073774592
    $t
    i.hal_gpio_pull_set
    hal_gpio_pull_set
        0x1fff3c7c:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff3c7e:    2816        .(      CMP      r0,#0x16
        0x1fff3c80:    d816        ..      BHI      0x1fff3cb0 ; hal_gpio_pull_set + 52
        0x1fff3c82:    0042        B.      LSLS     r2,r0,#1
        0x1fff3c84:    4b10        .K      LDR      r3,[pc,#64] ; [0x1fff3cc8] = 0x1fff6a17
        0x1fff3c86:    1882        ..      ADDS     r2,r0,r2
        0x1fff3c88:    5c9e        .\      LDRB     r6,[r3,r2]
        0x1fff3c8a:    18d2        ..      ADDS     r2,r2,r3
        0x1fff3c8c:    7854        Tx      LDRB     r4,[r2,#1]
        0x1fff3c8e:    7893        .x      LDRB     r3,[r2,#2]
        0x1fff3c90:    4d0e        .M      LDR      r5,[pc,#56] ; [0x1fff3ccc] = 0x4000f000
        0x1fff3c92:    2201        ."      MOVS     r2,#1
        0x1fff3c94:    2813        .(      CMP      r0,#0x13
        0x1fff3c96:    d20c        ..      BCS      0x1fff3cb2 ; hal_gpio_pull_set + 54
        0x1fff3c98:    00b0        ..      LSLS     r0,r6,#2
        0x1fff3c9a:    1945        E.      ADDS     r5,r0,r5
        0x1fff3c9c:    68a8        .h      LDR      r0,[r5,#8]
        0x1fff3c9e:    1ae4        ..      SUBS     r4,r4,r3
        0x1fff3ca0:    1c64        d.      ADDS     r4,r4,#1
        0x1fff3ca2:    40a2        .@      LSLS     r2,r2,r4
        0x1fff3ca4:    1e52        R.      SUBS     r2,r2,#1
        0x1fff3ca6:    409a        .@      LSLS     r2,r2,r3
        0x1fff3ca8:    4390        .C      BICS     r0,r0,r2
        0x1fff3caa:    4099        .@      LSLS     r1,r1,r3
        0x1fff3cac:    4308        .C      ORRS     r0,r0,r1
        0x1fff3cae:    60a8        .`      STR      r0,[r5,#8]
        0x1fff3cb0:    bd70        p.      POP      {r4-r6,pc}
        0x1fff3cb2:    6968        hi      LDR      r0,[r5,#0x14]
        0x1fff3cb4:    1ae4        ..      SUBS     r4,r4,r3
        0x1fff3cb6:    1c64        d.      ADDS     r4,r4,#1
        0x1fff3cb8:    40a2        .@      LSLS     r2,r2,r4
        0x1fff3cba:    1e52        R.      SUBS     r2,r2,#1
        0x1fff3cbc:    409a        .@      LSLS     r2,r2,r3
        0x1fff3cbe:    4390        .C      BICS     r0,r0,r2
        0x1fff3cc0:    4099        .@      LSLS     r1,r1,r3
        0x1fff3cc2:    4308        .C      ORRS     r0,r0,r1
        0x1fff3cc4:    6168        ha      STR      r0,[r5,#0x14]
        0x1fff3cc6:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x1fff3cc8:    1fff6a17    .j..    DCD    536832535
        0x1fff3ccc:    4000f000    ...@    DCD    1073803264
    $t
    i.hal_gpio_read
    hal_gpio_read
        0x1fff3cd0:    2816        .(      CMP      r0,#0x16
        0x1fff3cd2:    d901        ..      BLS      0x1fff3cd8 ; hal_gpio_read + 8
        0x1fff3cd4:    2001        .       MOVS     r0,#1
        0x1fff3cd6:    4770        pG      BX       lr
        0x1fff3cd8:    4907        .I      LDR      r1,[pc,#28] ; [0x1fff3cf8] = 0x40008000
        0x1fff3cda:    684a        Jh      LDR      r2,[r1,#4]
        0x1fff3cdc:    2301        .#      MOVS     r3,#1
        0x1fff3cde:    4083        .@      LSLS     r3,r3,r0
        0x1fff3ce0:    421a        .B      TST      r2,r3
        0x1fff3ce2:    d001        ..      BEQ      0x1fff3ce8 ; hal_gpio_read + 24
        0x1fff3ce4:    6809        .h      LDR      r1,[r1,#0]
        0x1fff3ce6:    e002        ..      B        0x1fff3cee ; hal_gpio_read + 30
        0x1fff3ce8:    4903        .I      LDR      r1,[pc,#12] ; [0x1fff3cf8] = 0x40008000
        0x1fff3cea:    3140        @1      ADDS     r1,r1,#0x40
        0x1fff3cec:    6909        .i      LDR      r1,[r1,#0x10]
        0x1fff3cee:    40c1        .@      LSRS     r1,r1,r0
        0x1fff3cf0:    07c8        ..      LSLS     r0,r1,#31
        0x1fff3cf2:    0fc0        ..      LSRS     r0,r0,#31
        0x1fff3cf4:    4770        pG      BX       lr
    $d
        0x1fff3cf6:    0000        ..      DCW    0
        0x1fff3cf8:    40008000    ...@    DCD    1073774592
    $t
    i.hal_gpio_retention_enable
    hal_gpio_retention_enable
        0x1fff3cfc:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff3cfe:    2816        .(      CMP      r0,#0x16
        0x1fff3d00:    d827        '.      BHI      0x1fff3d52 ; hal_gpio_retention_enable + 86
        0x1fff3d02:    4c18        .L      LDR      r4,[pc,#96] ; [0x1fff3d64] = 0x1fff6a5c
        0x1fff3d04:    0046        F.      LSLS     r6,r0,#1
        0x1fff3d06:    4a16        .J      LDR      r2,[pc,#88] ; [0x1fff3d60] = 0x4000f000
        0x1fff3d08:    1935        5.      ADDS     r5,r6,r4
        0x1fff3d0a:    2301        .#      MOVS     r3,#1
        0x1fff3d0c:    2900        .)      CMP      r1,#0
        0x1fff3d0e:    d012        ..      BEQ      0x1fff3d36 ; hal_gpio_retention_enable + 58
        0x1fff3d10:    2814        .(      CMP      r0,#0x14
        0x1fff3d12:    d00b        ..      BEQ      0x1fff3d2c ; hal_gpio_retention_enable + 48
        0x1fff3d14:    2815        .(      CMP      r0,#0x15
        0x1fff3d16:    d009        ..      BEQ      0x1fff3d2c ; hal_gpio_retention_enable + 48
        0x1fff3d18:    2816        .(      CMP      r0,#0x16
        0x1fff3d1a:    d007        ..      BEQ      0x1fff3d2c ; hal_gpio_retention_enable + 48
        0x1fff3d1c:    57a0        .W      LDRSB    r0,[r4,r6]
        0x1fff3d1e:    0080        ..      LSLS     r0,r0,#2
        0x1fff3d20:    1880        ..      ADDS     r0,r0,r2
        0x1fff3d22:    6881        .h      LDR      r1,[r0,#8]
        0x1fff3d24:    786a        jx      LDRB     r2,[r5,#1]
        0x1fff3d26:    4093        .@      LSLS     r3,r3,r2
        0x1fff3d28:    4319        .C      ORRS     r1,r1,r3
        0x1fff3d2a:    e011        ..      B        0x1fff3d50 ; hal_gpio_retention_enable + 84
        0x1fff3d2c:    6950        Pi      LDR      r0,[r2,#0x14]
        0x1fff3d2e:    7869        ix      LDRB     r1,[r5,#1]
        0x1fff3d30:    408b        .@      LSLS     r3,r3,r1
        0x1fff3d32:    4318        .C      ORRS     r0,r0,r3
        0x1fff3d34:    e012        ..      B        0x1fff3d5c ; hal_gpio_retention_enable + 96
        0x1fff3d36:    2814        .(      CMP      r0,#0x14
        0x1fff3d38:    d00c        ..      BEQ      0x1fff3d54 ; hal_gpio_retention_enable + 88
        0x1fff3d3a:    2815        .(      CMP      r0,#0x15
        0x1fff3d3c:    d00a        ..      BEQ      0x1fff3d54 ; hal_gpio_retention_enable + 88
        0x1fff3d3e:    2816        .(      CMP      r0,#0x16
        0x1fff3d40:    d008        ..      BEQ      0x1fff3d54 ; hal_gpio_retention_enable + 88
        0x1fff3d42:    57a0        .W      LDRSB    r0,[r4,r6]
        0x1fff3d44:    0080        ..      LSLS     r0,r0,#2
        0x1fff3d46:    1880        ..      ADDS     r0,r0,r2
        0x1fff3d48:    6881        .h      LDR      r1,[r0,#8]
        0x1fff3d4a:    786a        jx      LDRB     r2,[r5,#1]
        0x1fff3d4c:    4093        .@      LSLS     r3,r3,r2
        0x1fff3d4e:    4399        .C      BICS     r1,r1,r3
        0x1fff3d50:    6081        .`      STR      r1,[r0,#8]
        0x1fff3d52:    bd70        p.      POP      {r4-r6,pc}
        0x1fff3d54:    6950        Pi      LDR      r0,[r2,#0x14]
        0x1fff3d56:    7869        ix      LDRB     r1,[r5,#1]
        0x1fff3d58:    408b        .@      LSLS     r3,r3,r1
        0x1fff3d5a:    4398        .C      BICS     r0,r0,r3
        0x1fff3d5c:    6150        Pa      STR      r0,[r2,#0x14]
        0x1fff3d5e:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x1fff3d60:    4000f000    ...@    DCD    1073803264
        0x1fff3d64:    1fff6a5c    \j..    DCD    536832604
    $t
    i.hal_gpio_sleep_handler
    hal_gpio_sleep_handler
        0x1fff3d68:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff3d6a:    2400        .$      MOVS     r4,#0
        0x1fff3d6c:    4d12        .M      LDR      r5,[pc,#72] ; [0x1fff3db8] = 0x1fff7278
        0x1fff3d6e:    2601        .&      MOVS     r6,#1
        0x1fff3d70:    192f        /.      ADDS     r7,r5,r4
        0x1fff3d72:    7878        xx      LDRB     r0,[r7,#1]
        0x1fff3d74:    2801        .(      CMP      r0,#1
        0x1fff3d76:    d108        ..      BNE      0x1fff3d8a ; hal_gpio_sleep_handler + 34
        0x1fff3d78:    4631        1F      MOV      r1,r6
        0x1fff3d7a:    69a8        .i      LDR      r0,[r5,#0x18]
        0x1fff3d7c:    40a1        .@      LSLS     r1,r1,r4
        0x1fff3d7e:    4208        .B      TST      r0,r1
        0x1fff3d80:    d016        ..      BEQ      0x1fff3db0 ; hal_gpio_sleep_handler + 72
        0x1fff3d82:    b2e0        ..      UXTB     r0,r4
        0x1fff3d84:    2101        .!      MOVS     r1,#1
        0x1fff3d86:    f7ffffb9    ....    BL       hal_gpio_retention_enable ; 0x1fff3cfc
        0x1fff3d8a:    7878        xx      LDRB     r0,[r7,#1]
        0x1fff3d8c:    2802        .(      CMP      r0,#2
        0x1fff3d8e:    d10f        ..      BNE      0x1fff3db0 ; hal_gpio_sleep_handler + 72
        0x1fff3d90:    b2e0        ..      UXTB     r0,r4
        0x1fff3d92:    f7ffff9d    ....    BL       hal_gpio_read ; 0x1fff3cd0
        0x1fff3d96:    4070        p@      EORS     r0,r0,r6
        0x1fff3d98:    b2e2        ..      UXTB     r2,r4
        0x1fff3d9a:    4601        .F      MOV      r1,r0
        0x1fff3d9c:    4610        .F      MOV      r0,r2
        0x1fff3d9e:    f000f87b    ..{.    BL       hal_gpio_wakeup_set ; 0x1fff3e98
        0x1fff3da2:    b2e0        ..      UXTB     r0,r4
        0x1fff3da4:    f7ffff94    ....    BL       hal_gpio_read ; 0x1fff3cd0
        0x1fff3da8:    210c        .!      MOVS     r1,#0xc
        0x1fff3daa:    4361        aC      MULS     r1,r4,r1
        0x1fff3dac:    1949        I.      ADDS     r1,r1,r5
        0x1fff3dae:    7748        Hw      STRB     r0,[r1,#0x1d]
        0x1fff3db0:    1c64        d.      ADDS     r4,r4,#1
        0x1fff3db2:    2c17        .,      CMP      r4,#0x17
        0x1fff3db4:    dbdc        ..      BLT      0x1fff3d70 ; hal_gpio_sleep_handler + 8
        0x1fff3db6:    bdf8        ..      POP      {r3-r7,pc}
    $d
        0x1fff3db8:    1fff7278    xr..    DCD    536834680
    $t
    i.hal_gpio_wakeup_control
    hal_gpio_wakeup_control
        0x1fff3dbc:    b510        ..      PUSH     {r4,lr}
        0x1fff3dbe:    4c0f        .L      LDR      r4,[pc,#60] ; [0x1fff3dfc] = 0x1fff6a00
        0x1fff3dc0:    4a0d        .J      LDR      r2,[pc,#52] ; [0x1fff3df8] = 0x4000f080
        0x1fff3dc2:    2301        .#      MOVS     r3,#1
        0x1fff3dc4:    5c24        $\      LDRB     r4,[r4,r0]
        0x1fff3dc6:    2814        .(      CMP      r0,#0x14
        0x1fff3dc8:    d209        ..      BCS      0x1fff3dde ; hal_gpio_wakeup_control + 34
        0x1fff3dca:    6a10        .j      LDR      r0,[r2,#0x20]
        0x1fff3dcc:    2900        .)      CMP      r1,#0
        0x1fff3dce:    d002        ..      BEQ      0x1fff3dd6 ; hal_gpio_wakeup_control + 26
        0x1fff3dd0:    40a3        .@      LSLS     r3,r3,r4
        0x1fff3dd2:    4318        .C      ORRS     r0,r0,r3
        0x1fff3dd4:    e001        ..      B        0x1fff3dda ; hal_gpio_wakeup_control + 30
        0x1fff3dd6:    40a3        .@      LSLS     r3,r3,r4
        0x1fff3dd8:    4398        .C      BICS     r0,r0,r3
        0x1fff3dda:    6210        .b      STR      r0,[r2,#0x20]
        0x1fff3ddc:    bd10        ..      POP      {r4,pc}
        0x1fff3dde:    6a50        Pj      LDR      r0,[r2,#0x24]
        0x1fff3de0:    2900        .)      CMP      r1,#0
        0x1fff3de2:    d003        ..      BEQ      0x1fff3dec ; hal_gpio_wakeup_control + 48
        0x1fff3de4:    3c20         <      SUBS     r4,r4,#0x20
        0x1fff3de6:    40a3        .@      LSLS     r3,r3,r4
        0x1fff3de8:    4318        .C      ORRS     r0,r0,r3
        0x1fff3dea:    e002        ..      B        0x1fff3df2 ; hal_gpio_wakeup_control + 54
        0x1fff3dec:    3c20         <      SUBS     r4,r4,#0x20
        0x1fff3dee:    40a3        .@      LSLS     r3,r3,r4
        0x1fff3df0:    4398        .C      BICS     r0,r0,r3
        0x1fff3df2:    6250        Pb      STR      r0,[r2,#0x24]
        0x1fff3df4:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff3df6:    0000        ..      DCW    0
        0x1fff3df8:    4000f080    ...@    DCD    1073803392
        0x1fff3dfc:    1fff6a00    .j..    DCD    536832512
    $t
    i.hal_gpio_wakeup_handler
    hal_gpio_wakeup_handler
        0x1fff3e00:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff3e02:    2102        .!      MOVS     r1,#2
        0x1fff3e04:    2010        .       MOVS     r0,#0x10
        0x1fff3e06:    f7feff49    ..I.    BL       __NVIC_SetPriority ; 0x1fff2c9c
        0x1fff3e0a:    2010        .       MOVS     r0,#0x10
        0x1fff3e0c:    f7feff18    ....    BL       __NVIC_EnableIRQ ; 0x1fff2c40
        0x1fff3e10:    4d20         M      LDR      r5,[pc,#128] ; [0x1fff3e94] = 0x1fff7278
        0x1fff3e12:    2400        .$      MOVS     r4,#0
        0x1fff3e14:    192e        ..      ADDS     r6,r5,r4
        0x1fff3e16:    7870        px      LDRB     r0,[r6,#1]
        0x1fff3e18:    2800        .(      CMP      r0,#0
        0x1fff3e1a:    d01a        ..      BEQ      0x1fff3e52 ; hal_gpio_wakeup_handler + 82
        0x1fff3e1c:    2c02        .,      CMP      r4,#2
        0x1fff3e1e:    d001        ..      BEQ      0x1fff3e24 ; hal_gpio_wakeup_handler + 36
        0x1fff3e20:    2c03        .,      CMP      r4,#3
        0x1fff3e22:    d103        ..      BNE      0x1fff3e2c ; hal_gpio_wakeup_handler + 44
        0x1fff3e24:    b2e0        ..      UXTB     r0,r4
        0x1fff3e26:    2101        .!      MOVS     r1,#1
        0x1fff3e28:    f7fffee0    ....    BL       hal_gpio_pin2pin3_control ; 0x1fff3bec
        0x1fff3e2c:    7870        px      LDRB     r0,[r6,#1]
        0x1fff3e2e:    2801        .(      CMP      r0,#1
        0x1fff3e30:    d10f        ..      BNE      0x1fff3e52 ; hal_gpio_wakeup_handler + 82
        0x1fff3e32:    2101        .!      MOVS     r1,#1
        0x1fff3e34:    69a8        .i      LDR      r0,[r5,#0x18]
        0x1fff3e36:    40a1        .@      LSLS     r1,r1,r4
        0x1fff3e38:    4208        .B      TST      r0,r1
        0x1fff3e3a:    d00a        ..      BEQ      0x1fff3e52 ; hal_gpio_wakeup_handler + 82
        0x1fff3e3c:    b2e0        ..      UXTB     r0,r4
        0x1fff3e3e:    f7ffff47    ..G.    BL       hal_gpio_read ; 0x1fff3cd0
        0x1fff3e42:    4601        .F      MOV      r1,r0
        0x1fff3e44:    b2e0        ..      UXTB     r0,r4
        0x1fff3e46:    f000f865    ..e.    BL       hal_gpio_write ; 0x1fff3f14
        0x1fff3e4a:    b2e0        ..      UXTB     r0,r4
        0x1fff3e4c:    2100        .!      MOVS     r1,#0
        0x1fff3e4e:    f7ffff55    ..U.    BL       hal_gpio_retention_enable ; 0x1fff3cfc
        0x1fff3e52:    200c        .       MOVS     r0,#0xc
        0x1fff3e54:    4360        `C      MULS     r0,r4,r0
        0x1fff3e56:    1940        @.      ADDS     r0,r0,r5
        0x1fff3e58:    7f00        ..      LDRB     r0,[r0,#0x1c]
        0x1fff3e5a:    2800        .(      CMP      r0,#0
        0x1fff3e5c:    d016        ..      BEQ      0x1fff3e8c ; hal_gpio_wakeup_handler + 140
        0x1fff3e5e:    b2e0        ..      UXTB     r0,r4
        0x1fff3e60:    f000f890    ....    BL       hal_gpioin_enable ; 0x1fff3f84
        0x1fff3e64:    b2e6        ..      UXTB     r6,r4
        0x1fff3e66:    2e16        ..      CMP      r6,#0x16
        0x1fff3e68:    d810        ..      BHI      0x1fff3e8c ; hal_gpio_wakeup_handler + 140
        0x1fff3e6a:    4630        0F      MOV      r0,r6
        0x1fff3e6c:    f7ffff30    ..0.    BL       hal_gpio_read ; 0x1fff3cd0
        0x1fff3e70:    2800        .(      CMP      r0,#0
        0x1fff3e72:    d001        ..      BEQ      0x1fff3e78 ; hal_gpio_wakeup_handler + 120
        0x1fff3e74:    2101        .!      MOVS     r1,#1
        0x1fff3e76:    e000        ..      B        0x1fff3e7a ; hal_gpio_wakeup_handler + 122
        0x1fff3e78:    2100        .!      MOVS     r1,#0
        0x1fff3e7a:    220c        ."      MOVS     r2,#0xc
        0x1fff3e7c:    4372        rC      MULS     r2,r6,r2
        0x1fff3e7e:    1952        R.      ADDS     r2,r2,r5
        0x1fff3e80:    7f52        R.      LDRB     r2,[r2,#0x1d]
        0x1fff3e82:    4282        .B      CMP      r2,r0
        0x1fff3e84:    d002        ..      BEQ      0x1fff3e8c ; hal_gpio_wakeup_handler + 140
        0x1fff3e86:    4630        0F      MOV      r0,r6
        0x1fff3e88:    f000f8e6    ....    BL       hal_gpioin_event_pin ; 0x1fff4058
        0x1fff3e8c:    1c64        d.      ADDS     r4,r4,#1
        0x1fff3e8e:    2c17        .,      CMP      r4,#0x17
        0x1fff3e90:    dbc0        ..      BLT      0x1fff3e14 ; hal_gpio_wakeup_handler + 20
        0x1fff3e92:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x1fff3e94:    1fff7278    xr..    DCD    536834680
    $t
    i.hal_gpio_wakeup_set
    hal_gpio_wakeup_set
        0x1fff3e98:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff3e9a:    2816        .(      CMP      r0,#0x16
        0x1fff3e9c:    d82e        ..      BHI      0x1fff3efc ; hal_gpio_wakeup_set + 100
        0x1fff3e9e:    0042        B.      LSLS     r2,r0,#1
        0x1fff3ea0:    1883        ..      ADDS     r3,r0,r2
        0x1fff3ea2:    4a18        .J      LDR      r2,[pc,#96] ; [0x1fff3f04] = 0x1fff6a17
        0x1fff3ea4:    5cd5        .\      LDRB     r5,[r2,r3]
        0x1fff3ea6:    189a        ..      ADDS     r2,r3,r2
        0x1fff3ea8:    7892        .x      LDRB     r2,[r2,#2]
        0x1fff3eaa:    1e52        R.      SUBS     r2,r2,#1
        0x1fff3eac:    b2d4        ..      UXTB     r4,r2
        0x1fff3eae:    4a16        .J      LDR      r2,[pc,#88] ; [0x1fff3f08] = 0x1fff7278
        0x1fff3eb0:    1812        ..      ADDS     r2,r2,r0
        0x1fff3eb2:    7852        Rx      LDRB     r2,[r2,#1]
        0x1fff3eb4:    2a02        .*      CMP      r2,#2
        0x1fff3eb6:    d121        !.      BNE      0x1fff3efc ; hal_gpio_wakeup_set + 100
        0x1fff3eb8:    4e14        .N      LDR      r6,[pc,#80] ; [0x1fff3f0c] = 0x40008000
        0x1fff3eba:    6bb7        .k      LDR      r7,[r6,#0x38]
        0x1fff3ebc:    2201        ."      MOVS     r2,#1
        0x1fff3ebe:    4613        .F      MOV      r3,r2
        0x1fff3ec0:    4083        .@      LSLS     r3,r3,r0
        0x1fff3ec2:    431f        .C      ORRS     r7,r7,r3
        0x1fff3ec4:    63b7        .c      STR      r7,[r6,#0x38]
        0x1fff3ec6:    4b12        .K      LDR      r3,[pc,#72] ; [0x1fff3f10] = 0x4000f000
        0x1fff3ec8:    2813        .(      CMP      r0,#0x13
        0x1fff3eca:    d20e        ..      BCS      0x1fff3eea ; hal_gpio_wakeup_set + 82
        0x1fff3ecc:    2900        .)      CMP      r1,#0
        0x1fff3ece:    d006        ..      BEQ      0x1fff3ede ; hal_gpio_wakeup_set + 70
        0x1fff3ed0:    00a9        ..      LSLS     r1,r5,#2
        0x1fff3ed2:    18c9        ..      ADDS     r1,r1,r3
        0x1fff3ed4:    688b        .h      LDR      r3,[r1,#8]
        0x1fff3ed6:    40a2        .@      LSLS     r2,r2,r4
        0x1fff3ed8:    4393        .C      BICS     r3,r3,r2
        0x1fff3eda:    608b        .`      STR      r3,[r1,#8]
        0x1fff3edc:    e00b        ..      B        0x1fff3ef6 ; hal_gpio_wakeup_set + 94
        0x1fff3ede:    00a9        ..      LSLS     r1,r5,#2
        0x1fff3ee0:    18c9        ..      ADDS     r1,r1,r3
        0x1fff3ee2:    688b        .h      LDR      r3,[r1,#8]
        0x1fff3ee4:    40a2        .@      LSLS     r2,r2,r4
        0x1fff3ee6:    4313        .C      ORRS     r3,r3,r2
        0x1fff3ee8:    e7f7        ..      B        0x1fff3eda ; hal_gpio_wakeup_set + 66
        0x1fff3eea:    2900        .)      CMP      r1,#0
        0x1fff3eec:    6959        Yi      LDR      r1,[r3,#0x14]
        0x1fff3eee:    d006        ..      BEQ      0x1fff3efe ; hal_gpio_wakeup_set + 102
        0x1fff3ef0:    40a2        .@      LSLS     r2,r2,r4
        0x1fff3ef2:    4391        .C      BICS     r1,r1,r2
        0x1fff3ef4:    6159        Ya      STR      r1,[r3,#0x14]
        0x1fff3ef6:    2101        .!      MOVS     r1,#1
        0x1fff3ef8:    f7ffff60    ..`.    BL       hal_gpio_wakeup_control ; 0x1fff3dbc
        0x1fff3efc:    bdf8        ..      POP      {r3-r7,pc}
        0x1fff3efe:    40a2        .@      LSLS     r2,r2,r4
        0x1fff3f00:    4311        .C      ORRS     r1,r1,r2
        0x1fff3f02:    e7f7        ..      B        0x1fff3ef4 ; hal_gpio_wakeup_set + 92
    $d
        0x1fff3f04:    1fff6a17    .j..    DCD    536832535
        0x1fff3f08:    1fff7278    xr..    DCD    536834680
        0x1fff3f0c:    40008000    ...@    DCD    1073774592
        0x1fff3f10:    4000f000    ...@    DCD    1073803264
    $t
    i.hal_gpio_write
    hal_gpio_write
        0x1fff3f14:    b500        ..      PUSH     {lr}
        0x1fff3f16:    2816        .(      CMP      r0,#0x16
        0x1fff3f18:    d80c        ..      BHI      0x1fff3f34 ; hal_gpio_write + 32
        0x1fff3f1a:    2301        .#      MOVS     r3,#1
        0x1fff3f1c:    4a06        .J      LDR      r2,[pc,#24] ; [0x1fff3f38] = 0x40008000
        0x1fff3f1e:    4083        .@      LSLS     r3,r3,r0
        0x1fff3f20:    2900        .)      CMP      r1,#0
        0x1fff3f22:    6811        .h      LDR      r1,[r2,#0]
        0x1fff3f24:    d001        ..      BEQ      0x1fff3f2a ; hal_gpio_write + 22
        0x1fff3f26:    4319        .C      ORRS     r1,r1,r3
        0x1fff3f28:    e000        ..      B        0x1fff3f2c ; hal_gpio_write + 24
        0x1fff3f2a:    4399        .C      BICS     r1,r1,r3
        0x1fff3f2c:    6011        .`      STR      r1,[r2,#0]
        0x1fff3f2e:    2101        .!      MOVS     r1,#1
        0x1fff3f30:    f7fffe6a    ..j.    BL       hal_gpio_pin_init ; 0x1fff3c08
        0x1fff3f34:    bd00        ..      POP      {pc}
    $d
        0x1fff3f36:    0000        ..      DCW    0
        0x1fff3f38:    40008000    ...@    DCD    1073774592
    $t
    i.hal_gpioin_disable
    hal_gpioin_disable
        0x1fff3f3c:    b530        0.      PUSH     {r4,r5,lr}
        0x1fff3f3e:    4604        .F      MOV      r4,r0
        0x1fff3f40:    480e        .H      LDR      r0,[pc,#56] ; [0x1fff3f7c] = 0x1fff7294
        0x1fff3f42:    2c16        .,      CMP      r4,#0x16
        0x1fff3f44:    d901        ..      BLS      0x1fff3f4a ; hal_gpioin_disable + 14
        0x1fff3f46:    2005        .       MOVS     r0,#5
        0x1fff3f48:    bd30        0.      POP      {r4,r5,pc}
        0x1fff3f4a:    210c        .!      MOVS     r1,#0xc
        0x1fff3f4c:    2500        .%      MOVS     r5,#0
        0x1fff3f4e:    4361        aC      MULS     r1,r4,r1
        0x1fff3f50:    5445        ET      STRB     r5,[r0,r1]
        0x1fff3f52:    480a        .H      LDR      r0,[pc,#40] ; [0x1fff3f7c] = 0x1fff7294
        0x1fff3f54:    4629        )F      MOV      r1,r5
        0x1fff3f56:    381c        .8      SUBS     r0,r0,#0x1c
        0x1fff3f58:    1900        ..      ADDS     r0,r0,r4
        0x1fff3f5a:    7045        Ep      STRB     r5,[r0,#1]
        0x1fff3f5c:    4620         F      MOV      r0,r4
        0x1fff3f5e:    f7fffe53    ..S.    BL       hal_gpio_pin_init ; 0x1fff3c08
        0x1fff3f62:    4907        .I      LDR      r1,[pc,#28] ; [0x1fff3f80] = 0x40008000
        0x1fff3f64:    6b4a        Jk      LDR      r2,[r1,#0x34]
        0x1fff3f66:    2001        .       MOVS     r0,#1
        0x1fff3f68:    40a0        .@      LSLS     r0,r0,r4
        0x1fff3f6a:    4382        .C      BICS     r2,r2,r0
        0x1fff3f6c:    4302        .C      ORRS     r2,r2,r0
        0x1fff3f6e:    634a        Jc      STR      r2,[r1,#0x34]
        0x1fff3f70:    6b0a        .k      LDR      r2,[r1,#0x30]
        0x1fff3f72:    4382        .C      BICS     r2,r2,r0
        0x1fff3f74:    630a        .c      STR      r2,[r1,#0x30]
        0x1fff3f76:    4628        (F      MOV      r0,r5
        0x1fff3f78:    bd30        0.      POP      {r4,r5,pc}
    $d
        0x1fff3f7a:    0000        ..      DCW    0
        0x1fff3f7c:    1fff7294    .r..    DCD    536834708
        0x1fff3f80:    40008000    ...@    DCD    1073774592
    $t
    i.hal_gpioin_enable
    hal_gpioin_enable
        0x1fff3f84:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff3f86:    4604        .F      MOV      r4,r0
        0x1fff3f88:    4818        .H      LDR      r0,[pc,#96] ; [0x1fff3fec] = 0x1fff7294
        0x1fff3f8a:    2600        .&      MOVS     r6,#0
        0x1fff3f8c:    2c16        .,      CMP      r4,#0x16
        0x1fff3f8e:    d901        ..      BLS      0x1fff3f94 ; hal_gpioin_enable + 16
        0x1fff3f90:    2005        .       MOVS     r0,#5
        0x1fff3f92:    bd70        p.      POP      {r4-r6,pc}
        0x1fff3f94:    4621        !F      MOV      r1,r4
        0x1fff3f96:    220c        ."      MOVS     r2,#0xc
        0x1fff3f98:    4351        QC      MULS     r1,r2,r1
        0x1fff3f9a:    180d        ..      ADDS     r5,r1,r0
        0x1fff3f9c:    686a        jh      LDR      r2,[r5,#4]
        0x1fff3f9e:    2a00        .*      CMP      r2,#0
        0x1fff3fa0:    d102        ..      BNE      0x1fff3fa8 ; hal_gpioin_enable + 36
        0x1fff3fa2:    68aa        .h      LDR      r2,[r5,#8]
        0x1fff3fa4:    2a00        .*      CMP      r2,#0
        0x1fff3fa6:    d01c        ..      BEQ      0x1fff3fe2 ; hal_gpioin_enable + 94
        0x1fff3fa8:    4b10        .K      LDR      r3,[pc,#64] ; [0x1fff3fec] = 0x1fff7294
        0x1fff3faa:    2202        ."      MOVS     r2,#2
        0x1fff3fac:    3b1c        .;      SUBS     r3,r3,#0x1c
        0x1fff3fae:    191b        ..      ADDS     r3,r3,r4
        0x1fff3fb0:    705a        Zp      STRB     r2,[r3,#1]
        0x1fff3fb2:    2201        ."      MOVS     r2,#1
        0x1fff3fb4:    5442        BT      STRB     r2,[r0,r1]
        0x1fff3fb6:    2100        .!      MOVS     r1,#0
        0x1fff3fb8:    4620         F      MOV      r0,r4
        0x1fff3fba:    f7fffe25    ..%.    BL       hal_gpio_pin_init ; 0x1fff3c08
        0x1fff3fbe:    6868        hh      LDR      r0,[r5,#4]
        0x1fff3fc0:    2800        .(      CMP      r0,#0
        0x1fff3fc2:    d008        ..      BEQ      0x1fff3fd6 ; hal_gpioin_enable + 82
        0x1fff3fc4:    68a8        .h      LDR      r0,[r5,#8]
        0x1fff3fc6:    2800        .(      CMP      r0,#0
        0x1fff3fc8:    d00d        ..      BEQ      0x1fff3fe6 ; hal_gpioin_enable + 98
        0x1fff3fca:    4620         F      MOV      r0,r4
        0x1fff3fcc:    f7fffe80    ....    BL       hal_gpio_read ; 0x1fff3cd0
        0x1fff3fd0:    2800        .(      CMP      r0,#0
        0x1fff3fd2:    d008        ..      BEQ      0x1fff3fe6 ; hal_gpioin_enable + 98
        0x1fff3fd4:    2600        .&      MOVS     r6,#0
        0x1fff3fd6:    4631        1F      MOV      r1,r6
        0x1fff3fd8:    4620         F      MOV      r0,r4
        0x1fff3fda:    f7fffde7    ....    BL       hal_gpio_interrupt_enable ; 0x1fff3bac
        0x1fff3fde:    2000        .       MOVS     r0,#0
        0x1fff3fe0:    bd70        p.      POP      {r4-r6,pc}
        0x1fff3fe2:    2012        .       MOVS     r0,#0x12
        0x1fff3fe4:    bd70        p.      POP      {r4-r6,pc}
        0x1fff3fe6:    2601        .&      MOVS     r6,#1
        0x1fff3fe8:    e7f5        ..      B        0x1fff3fd6 ; hal_gpioin_enable + 82
    $d
        0x1fff3fea:    0000        ..      DCW    0
        0x1fff3fec:    1fff7294    .r..    DCD    536834708
    $t
    i.hal_gpioin_event
    hal_gpioin_event
        0x1fff3ff0:    b5f3        ..      PUSH     {r0,r1,r4-r7,lr}
        0x1fff3ff2:    4e18        .N      LDR      r6,[pc,#96] ; [0x1fff4054] = 0x1fff7294
        0x1fff3ff4:    2400        .$      MOVS     r4,#0
        0x1fff3ff6:    b081        ..      SUB      sp,sp,#4
        0x1fff3ff8:    4607        .F      MOV      r7,r0
        0x1fff3ffa:    2501        .%      MOVS     r5,#1
        0x1fff3ffc:    4628        (F      MOV      r0,r5
        0x1fff3ffe:    40a0        .@      LSLS     r0,r0,r4
        0x1fff4000:    4238        8B      TST      r0,r7
        0x1fff4002:    d023        #.      BEQ      0x1fff404c ; hal_gpioin_event + 92
        0x1fff4004:    9902        ..      LDR      r1,[sp,#8]
        0x1fff4006:    4008        .@      ANDS     r0,r0,r1
        0x1fff4008:    d000        ..      BEQ      0x1fff400c ; hal_gpioin_event + 28
        0x1fff400a:    2001        .       MOVS     r0,#1
        0x1fff400c:    9000        ..      STR      r0,[sp,#0]
        0x1fff400e:    b2e0        ..      UXTB     r0,r4
        0x1fff4010:    9900        ..      LDR      r1,[sp,#0]
        0x1fff4012:    f000f821    ..!.    BL       hal_gpioin_event_pin ; 0x1fff4058
        0x1fff4016:    200c        .       MOVS     r0,#0xc
        0x1fff4018:    4360        `C      MULS     r0,r4,r0
        0x1fff401a:    1980        ..      ADDS     r0,r0,r6
        0x1fff401c:    6841        Ah      LDR      r1,[r0,#4]
        0x1fff401e:    6880        .h      LDR      r0,[r0,#8]
        0x1fff4020:    2900        .)      CMP      r1,#0
        0x1fff4022:    d00e        ..      BEQ      0x1fff4042 ; hal_gpioin_event + 82
        0x1fff4024:    2800        .(      CMP      r0,#0
        0x1fff4026:    d007        ..      BEQ      0x1fff4038 ; hal_gpioin_event + 72
        0x1fff4028:    9800        ..      LDR      r0,[sp,#0]
        0x1fff402a:    2800        .(      CMP      r0,#0
        0x1fff402c:    d002        ..      BEQ      0x1fff4034 ; hal_gpioin_event + 68
        0x1fff402e:    2100        .!      MOVS     r1,#0
        0x1fff4030:    b2e0        ..      UXTB     r0,r4
        0x1fff4032:    e003        ..      B        0x1fff403c ; hal_gpioin_event + 76
        0x1fff4034:    2101        .!      MOVS     r1,#1
        0x1fff4036:    e7fb        ..      B        0x1fff4030 ; hal_gpioin_event + 64
        0x1fff4038:    b2e0        ..      UXTB     r0,r4
        0x1fff403a:    2101        .!      MOVS     r1,#1
        0x1fff403c:    f7fffdb6    ....    BL       hal_gpio_interrupt_enable ; 0x1fff3bac
        0x1fff4040:    e004        ..      B        0x1fff404c ; hal_gpioin_event + 92
        0x1fff4042:    2800        .(      CMP      r0,#0
        0x1fff4044:    d002        ..      BEQ      0x1fff404c ; hal_gpioin_event + 92
        0x1fff4046:    b2e0        ..      UXTB     r0,r4
        0x1fff4048:    2100        .!      MOVS     r1,#0
        0x1fff404a:    e7f7        ..      B        0x1fff403c ; hal_gpioin_event + 76
        0x1fff404c:    1c64        d.      ADDS     r4,r4,#1
        0x1fff404e:    2c17        .,      CMP      r4,#0x17
        0x1fff4050:    dbd4        ..      BLT      0x1fff3ffc ; hal_gpioin_event + 12
        0x1fff4052:    bdfe        ..      POP      {r1-r7,pc}
    $d
        0x1fff4054:    1fff7294    .r..    DCD    536834708
    $t
    i.hal_gpioin_event_pin
    hal_gpioin_event_pin
        0x1fff4058:    4a08        .J      LDR      r2,[pc,#32] ; [0x1fff407c] = 0x1fff7294
        0x1fff405a:    2816        .(      CMP      r0,#0x16
        0x1fff405c:    d80d        ..      BHI      0x1fff407a ; hal_gpioin_event_pin + 34
        0x1fff405e:    230c        .#      MOVS     r3,#0xc
        0x1fff4060:    4343        CC      MULS     r3,r0,r3
        0x1fff4062:    189b        ..      ADDS     r3,r3,r2
        0x1fff4064:    685a        Zh      LDR      r2,[r3,#4]
        0x1fff4066:    2a00        .*      CMP      r2,#0
        0x1fff4068:    d001        ..      BEQ      0x1fff406e ; hal_gpioin_event_pin + 22
        0x1fff406a:    2901        .)      CMP      r1,#1
        0x1fff406c:    d004        ..      BEQ      0x1fff4078 ; hal_gpioin_event_pin + 32
        0x1fff406e:    689a        .h      LDR      r2,[r3,#8]
        0x1fff4070:    2a00        .*      CMP      r2,#0
        0x1fff4072:    d002        ..      BEQ      0x1fff407a ; hal_gpioin_event_pin + 34
        0x1fff4074:    2900        .)      CMP      r1,#0
        0x1fff4076:    d100        ..      BNE      0x1fff407a ; hal_gpioin_event_pin + 34
        0x1fff4078:    4710        .G      BX       r2
        0x1fff407a:    4770        pG      BX       lr
    $d
        0x1fff407c:    1fff7294    .r..    DCD    536834708
    $t
    i.hal_low_power_io_init
    hal_low_power_io_init
        0x1fff4080:    b530        0.      PUSH     {r4,r5,lr}
        0x1fff4082:    b085        ..      SUB      sp,sp,#0x14
        0x1fff4084:    2214        ."      MOVS     r2,#0x14
        0x1fff4086:    4917        .I      LDR      r1,[pc,#92] ; [0x1fff40e4] = 0x1fff69e0
        0x1fff4088:    4668        hF      MOV      r0,sp
        0x1fff408a:    f7fdfd83    ....    BL       $Ven$TT$L$$__aeabi_memcpy4 ; 0x1fff1b94
        0x1fff408e:    2400        .$      MOVS     r4,#0
        0x1fff4090:    466d        mF      MOV      r5,sp
        0x1fff4092:    0060        `.      LSLS     r0,r4,#1
        0x1fff4094:    1941        A.      ADDS     r1,r0,r5
        0x1fff4096:    7849        Ix      LDRB     r1,[r1,#1]
        0x1fff4098:    5c28        (\      LDRB     r0,[r5,r0]
        0x1fff409a:    f7fffdef    ....    BL       hal_gpio_pull_set ; 0x1fff3c7c
        0x1fff409e:    1c64        d.      ADDS     r4,r4,#1
        0x1fff40a0:    b2e4        ..      UXTB     r4,r4
        0x1fff40a2:    2c0a        .,      CMP      r4,#0xa
        0x1fff40a4:    d3f5        ..      BCC      0x1fff4092 ; hal_low_power_io_init + 18
        0x1fff40a6:    4810        .H      LDR      r0,[pc,#64] ; [0x1fff40e8] = 0x4000f000
        0x1fff40a8:    6941        Ai      LDR      r1,[r0,#0x14]
        0x1fff40aa:    00c2        ..      LSLS     r2,r0,#3
        0x1fff40ac:    4391        .C      BICS     r1,r1,r2
        0x1fff40ae:    2205        ."      MOVS     r2,#5
        0x1fff40b0:    0412        ..      LSLS     r2,r2,#16
        0x1fff40b2:    1889        ..      ADDS     r1,r1,r2
        0x1fff40b4:    6141        Aa      STR      r1,[r0,#0x14]
        0x1fff40b6:    6941        Ai      LDR      r1,[r0,#0x14]
        0x1fff40b8:    2201        ."      MOVS     r2,#1
        0x1fff40ba:    0652        R.      LSLS     r2,r2,#25
        0x1fff40bc:    4311        .C      ORRS     r1,r1,r2
        0x1fff40be:    6141        Aa      STR      r1,[r0,#0x14]
        0x1fff40c0:    6941        Ai      LDR      r1,[r0,#0x14]
        0x1fff40c2:    2203        ."      MOVS     r2,#3
        0x1fff40c4:    0552        R.      LSLS     r2,r2,#21
        0x1fff40c6:    4391        .C      BICS     r1,r1,r2
        0x1fff40c8:    2201        ."      MOVS     r2,#1
        0x1fff40ca:    0552        R.      LSLS     r2,r2,#21
        0x1fff40cc:    1889        ..      ADDS     r1,r1,r2
        0x1fff40ce:    6141        Aa      STR      r1,[r0,#0x14]
        0x1fff40d0:    2001        .       MOVS     r0,#1
        0x1fff40d2:    f000f815    ....    BL       hal_pwrmgr_RAM_retention ; 0x1fff4100
        0x1fff40d6:    f000f82f    ../.    BL       hal_pwrmgr_RAM_retention_set ; 0x1fff4138
        0x1fff40da:    f000f807    ....    BL       hal_pwrmgr_LowCurrentLdo_enable ; 0x1fff40ec
        0x1fff40de:    b005        ..      ADD      sp,sp,#0x14
        0x1fff40e0:    bd30        0.      POP      {r4,r5,pc}
    $d
        0x1fff40e2:    0000        ..      DCW    0
        0x1fff40e4:    1fff69e0    .i..    DCD    536832480
        0x1fff40e8:    4000f000    ...@    DCD    1073803264
    $t
    i.hal_pwrmgr_LowCurrentLdo_enable
    hal_pwrmgr_LowCurrentLdo_enable
        0x1fff40ec:    4803        .H      LDR      r0,[pc,#12] ; [0x1fff40fc] = 0x4000f000
        0x1fff40ee:    6941        Ai      LDR      r1,[r0,#0x14]
        0x1fff40f0:    2201        ."      MOVS     r2,#1
        0x1fff40f2:    0692        ..      LSLS     r2,r2,#26
        0x1fff40f4:    4391        .C      BICS     r1,r1,r2
        0x1fff40f6:    6141        Aa      STR      r1,[r0,#0x14]
        0x1fff40f8:    200f        .       MOVS     r0,#0xf
        0x1fff40fa:    4770        pG      BX       lr
    $d
        0x1fff40fc:    4000f000    ...@    DCD    1073803264
    $t
    i.hal_pwrmgr_RAM_retention
    hal_pwrmgr_RAM_retention
        0x1fff4100:    4907        .I      LDR      r1,[pc,#28] ; [0x1fff4120] = 0x1fff6b45
        0x1fff4102:    0943        C.      LSRS     r3,r0,#5
        0x1fff4104:    780a        .x      LDRB     r2,[r1,#0]
        0x1fff4106:    08d2        ..      LSRS     r2,r2,#3
        0x1fff4108:    00d2        ..      LSLS     r2,r2,#3
        0x1fff410a:    2b00        .+      CMP      r3,#0
        0x1fff410c:    d002        ..      BEQ      0x1fff4114 ; hal_pwrmgr_RAM_retention + 20
        0x1fff410e:    700a        .p      STRB     r2,[r1,#0]
        0x1fff4110:    2006        .       MOVS     r0,#6
        0x1fff4112:    4770        pG      BX       lr
        0x1fff4114:    0740        @.      LSLS     r0,r0,#29
        0x1fff4116:    0f40        @.      LSRS     r0,r0,#29
        0x1fff4118:    4302        .C      ORRS     r2,r2,r0
        0x1fff411a:    700a        .p      STRB     r2,[r1,#0]
        0x1fff411c:    2000        .       MOVS     r0,#0
        0x1fff411e:    4770        pG      BX       lr
    $d
        0x1fff4120:    1fff6b45    Ek..    DCD    536832837
    $t
    i.hal_pwrmgr_RAM_retention_clr
    hal_pwrmgr_RAM_retention_clr
        0x1fff4124:    4803        .H      LDR      r0,[pc,#12] ; [0x1fff4134] = 0x4000f000
        0x1fff4126:    69c1        .i      LDR      r1,[r0,#0x1c]
        0x1fff4128:    221f        ."      MOVS     r2,#0x1f
        0x1fff412a:    0452        R.      LSLS     r2,r2,#17
        0x1fff412c:    4391        .C      BICS     r1,r1,r2
        0x1fff412e:    61c1        .a      STR      r1,[r0,#0x1c]
        0x1fff4130:    2000        .       MOVS     r0,#0
        0x1fff4132:    4770        pG      BX       lr
    $d
        0x1fff4134:    4000f000    ...@    DCD    1073803264
    $t
    i.hal_pwrmgr_RAM_retention_set
    hal_pwrmgr_RAM_retention_set
        0x1fff4138:    4806        .H      LDR      r0,[pc,#24] ; [0x1fff4154] = 0x4000f000
        0x1fff413a:    69c1        .i      LDR      r1,[r0,#0x1c]
        0x1fff413c:    221f        ."      MOVS     r2,#0x1f
        0x1fff413e:    0452        R.      LSLS     r2,r2,#17
        0x1fff4140:    4391        .C      BICS     r1,r1,r2
        0x1fff4142:    4a05        .J      LDR      r2,[pc,#20] ; [0x1fff4158] = 0x1fff6b45
        0x1fff4144:    7812        .x      LDRB     r2,[r2,#0]
        0x1fff4146:    0752        R.      LSLS     r2,r2,#29
        0x1fff4148:    0b12        ..      LSRS     r2,r2,#12
        0x1fff414a:    4311        .C      ORRS     r1,r1,r2
        0x1fff414c:    61c1        .a      STR      r1,[r0,#0x1c]
        0x1fff414e:    2000        .       MOVS     r0,#0
        0x1fff4150:    4770        pG      BX       lr
    $d
        0x1fff4152:    0000        ..      DCW    0
        0x1fff4154:    4000f000    ...@    DCD    1073803264
        0x1fff4158:    1fff6b45    Ek..    DCD    536832837
    $t
    i.hal_pwrmgr_init
    hal_pwrmgr_init
        0x1fff415c:    b510        ..      PUSH     {r4,lr}
        0x1fff415e:    2178        x!      MOVS     r1,#0x78
        0x1fff4160:    4808        .H      LDR      r0,[pc,#32] ; [0x1fff4184] = 0x1fff73a8
        0x1fff4162:    f7fdfd11    ....    BL       $Ven$TT$L$$__aeabi_memclr4 ; 0x1fff1b88
        0x1fff4166:    4808        .H      LDR      r0,[pc,#32] ; [0x1fff4188] = 0x1fff6b44
        0x1fff4168:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff416a:    2801        .(      CMP      r0,#1
        0x1fff416c:    d003        ..      BEQ      0x1fff4176 ; hal_pwrmgr_init + 26
        0x1fff416e:    2802        .(      CMP      r0,#2
        0x1fff4170:    d004        ..      BEQ      0x1fff417c ; hal_pwrmgr_init + 32
        0x1fff4172:    2804        .(      CMP      r0,#4
        0x1fff4174:    d104        ..      BNE      0x1fff4180 ; hal_pwrmgr_init + 36
        0x1fff4176:    f7fdfd13    ....    BL       $Ven$TT$L$$disableSleep ; 0x1fff1ba0
        0x1fff417a:    e001        ..      B        0x1fff4180 ; hal_pwrmgr_init + 36
        0x1fff417c:    f7fdfbf6    ....    BL       $Ven$TT$L$$enableSleep ; 0x1fff196c
        0x1fff4180:    2000        .       MOVS     r0,#0
        0x1fff4182:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff4184:    1fff73a8    .s..    DCD    536834984
        0x1fff4188:    1fff6b44    Dk..    DCD    536832836
    $t
    i.hal_pwrmgr_lock
    hal_pwrmgr_lock
        0x1fff418c:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff418e:    4605        .F      MOV      r5,r0
        0x1fff4190:    4812        .H      LDR      r0,[pc,#72] ; [0x1fff41dc] = 0x1fff6b44
        0x1fff4192:    2412        .$      MOVS     r4,#0x12
        0x1fff4194:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff4196:    2801        .(      CMP      r0,#1
        0x1fff4198:    d015        ..      BEQ      0x1fff41c6 ; hal_pwrmgr_lock + 58
        0x1fff419a:    2804        .(      CMP      r0,#4
        0x1fff419c:    d013        ..      BEQ      0x1fff41c6 ; hal_pwrmgr_lock + 58
        0x1fff419e:    f7fdfbaf    ....    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff1900
        0x1fff41a2:    480f        .H      LDR      r0,[pc,#60] ; [0x1fff41e0] = 0x1fff73a8
        0x1fff41a4:    2100        .!      MOVS     r1,#0
        0x1fff41a6:    220c        ."      MOVS     r2,#0xc
        0x1fff41a8:    434a        JC      MULS     r2,r1,r2
        0x1fff41aa:    5c82        .\      LDRB     r2,[r0,r2]
        0x1fff41ac:    2a00        .*      CMP      r2,#0
        0x1fff41ae:    d011        ..      BEQ      0x1fff41d4 ; hal_pwrmgr_lock + 72
        0x1fff41b0:    42aa        .B      CMP      r2,r5
        0x1fff41b2:    d10c        ..      BNE      0x1fff41ce ; hal_pwrmgr_lock + 66
        0x1fff41b4:    230c        .#      MOVS     r3,#0xc
        0x1fff41b6:    4359        YC      MULS     r1,r3,r1
        0x1fff41b8:    2201        ."      MOVS     r2,#1
        0x1fff41ba:    1808        ..      ADDS     r0,r1,r0
        0x1fff41bc:    7042        Bp      STRB     r2,[r0,#1]
        0x1fff41be:    f7fdfcef    ....    BL       $Ven$TT$L$$disableSleep ; 0x1fff1ba0
        0x1fff41c2:    2400        .$      MOVS     r4,#0
        0x1fff41c4:    e006        ..      B        0x1fff41d4 ; hal_pwrmgr_lock + 72
        0x1fff41c6:    f7fdfceb    ....    BL       $Ven$TT$L$$disableSleep ; 0x1fff1ba0
        0x1fff41ca:    2000        .       MOVS     r0,#0
        0x1fff41cc:    bd70        p.      POP      {r4-r6,pc}
        0x1fff41ce:    1c49        I.      ADDS     r1,r1,#1
        0x1fff41d0:    290a        .)      CMP      r1,#0xa
        0x1fff41d2:    dbe8        ..      BLT      0x1fff41a6 ; hal_pwrmgr_lock + 26
        0x1fff41d4:    f7fdfba0    ....    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff1918
        0x1fff41d8:    4620         F      MOV      r0,r4
        0x1fff41da:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x1fff41dc:    1fff6b44    Dk..    DCD    536832836
        0x1fff41e0:    1fff73a8    .s..    DCD    536834984
    $t
    i.hal_pwrmgr_register
    hal_pwrmgr_register
        0x1fff41e4:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff41e6:    4c12        .L      LDR      r4,[pc,#72] ; [0x1fff4230] = 0x1fff73a8
        0x1fff41e8:    2300        .#      MOVS     r3,#0
        0x1fff41ea:    250c        .%      MOVS     r5,#0xc
        0x1fff41ec:    435d        ]C      MULS     r5,r3,r5
        0x1fff41ee:    5d65        e]      LDRB     r5,[r4,r5]
        0x1fff41f0:    4285        .B      CMP      r5,r0
        0x1fff41f2:    d101        ..      BNE      0x1fff41f8 ; hal_pwrmgr_register + 20
        0x1fff41f4:    2007        .       MOVS     r0,#7
        0x1fff41f6:    bd70        p.      POP      {r4-r6,pc}
        0x1fff41f8:    2d00        .-      CMP      r5,#0
        0x1fff41fa:    d004        ..      BEQ      0x1fff4206 ; hal_pwrmgr_register + 34
        0x1fff41fc:    1c5b        [.      ADDS     r3,r3,#1
        0x1fff41fe:    2b0a        .+      CMP      r3,#0xa
        0x1fff4200:    dbf3        ..      BLT      0x1fff41ea ; hal_pwrmgr_register + 6
        0x1fff4202:    2003        .       MOVS     r0,#3
        0x1fff4204:    bd70        p.      POP      {r4-r6,pc}
        0x1fff4206:    250c        .%      MOVS     r5,#0xc
        0x1fff4208:    436b        kC      MULS     r3,r5,r3
        0x1fff420a:    191b        ..      ADDS     r3,r3,r4
        0x1fff420c:    4c09        .L      LDR      r4,[pc,#36] ; [0x1fff4234] = 0x1fff6b45
        0x1fff420e:    7825        %x      LDRB     r5,[r4,#0]
        0x1fff4210:    076e        n.      LSLS     r6,r5,#29
        0x1fff4212:    08ed        ..      LSRS     r5,r5,#3
        0x1fff4214:    1c6d        m.      ADDS     r5,r5,#1
        0x1fff4216:    0f76        v.      LSRS     r6,r6,#29
        0x1fff4218:    00ed        ..      LSLS     r5,r5,#3
        0x1fff421a:    432e        .C      ORRS     r6,r6,r5
        0x1fff421c:    7026        &p      STRB     r6,[r4,#0]
        0x1fff421e:    2b00        .+      CMP      r3,#0
        0x1fff4220:    d0ef        ..      BEQ      0x1fff4202 ; hal_pwrmgr_register + 30
        0x1fff4222:    2400        .$      MOVS     r4,#0
        0x1fff4224:    705c        \p      STRB     r4,[r3,#1]
        0x1fff4226:    7018        .p      STRB     r0,[r3,#0]
        0x1fff4228:    609a        .`      STR      r2,[r3,#8]
        0x1fff422a:    4620         F      MOV      r0,r4
        0x1fff422c:    6059        Y`      STR      r1,[r3,#4]
        0x1fff422e:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x1fff4230:    1fff73a8    .s..    DCD    536834984
        0x1fff4234:    1fff6b45    Ek..    DCD    536832837
    $t
    i.hal_pwrmgr_sleep_process
    hal_pwrmgr_sleep_process
    __tagsym$$used
        0x1fff4238:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff423a:    f7ffff7d    ..}.    BL       hal_pwrmgr_RAM_retention_set ; 0x1fff4138
        0x1fff423e:    480b        .H      LDR      r0,[pc,#44] ; [0x1fff426c] = 0x1fff6b45
        0x1fff4240:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff4242:    08c4        ..      LSRS     r4,r0,#3
        0x1fff4244:    1e64        d.      SUBS     r4,r4,#1
        0x1fff4246:    d40d        ..      BMI      0x1fff4264 ; hal_pwrmgr_sleep_process + 44
        0x1fff4248:    4d09        .M      LDR      r5,[pc,#36] ; [0x1fff4270] = 0x1fff73a8
        0x1fff424a:    4620         F      MOV      r0,r4
        0x1fff424c:    210c        .!      MOVS     r1,#0xc
        0x1fff424e:    4348        HC      MULS     r0,r1,r0
        0x1fff4250:    5c29        )\      LDRB     r1,[r5,r0]
        0x1fff4252:    2900        .)      CMP      r1,#0
        0x1fff4254:    d008        ..      BEQ      0x1fff4268 ; hal_pwrmgr_sleep_process + 48
        0x1fff4256:    1940        @.      ADDS     r0,r0,r5
        0x1fff4258:    6840        @h      LDR      r0,[r0,#4]
        0x1fff425a:    2800        .(      CMP      r0,#0
        0x1fff425c:    d000        ..      BEQ      0x1fff4260 ; hal_pwrmgr_sleep_process + 40
        0x1fff425e:    4780        .G      BLX      r0
        0x1fff4260:    1e64        d.      SUBS     r4,r4,#1
        0x1fff4262:    d5f2        ..      BPL      0x1fff424a ; hal_pwrmgr_sleep_process + 18
        0x1fff4264:    2000        .       MOVS     r0,#0
        0x1fff4266:    bd70        p.      POP      {r4-r6,pc}
        0x1fff4268:    2012        .       MOVS     r0,#0x12
        0x1fff426a:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x1fff426c:    1fff6b45    Ek..    DCD    536832837
        0x1fff4270:    1fff73a8    .s..    DCD    536834984
    $t
    i.hal_pwrmgr_unlock
    hal_pwrmgr_unlock
        0x1fff4274:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff4276:    4605        .F      MOV      r5,r0
        0x1fff4278:    4816        .H      LDR      r0,[pc,#88] ; [0x1fff42d4] = 0x1fff6b44
        0x1fff427a:    2400        .$      MOVS     r4,#0
        0x1fff427c:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff427e:    2801        .(      CMP      r0,#1
        0x1fff4280:    d011        ..      BEQ      0x1fff42a6 ; hal_pwrmgr_unlock + 50
        0x1fff4282:    2804        .(      CMP      r0,#4
        0x1fff4284:    d00f        ..      BEQ      0x1fff42a6 ; hal_pwrmgr_unlock + 50
        0x1fff4286:    f7fdfb3b    ..;.    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff1900
        0x1fff428a:    2100        .!      MOVS     r1,#0
        0x1fff428c:    4a12        .J      LDR      r2,[pc,#72] ; [0x1fff42d8] = 0x1fff73a8
        0x1fff428e:    460b        .F      MOV      r3,r1
        0x1fff4290:    4608        .F      MOV      r0,r1
        0x1fff4292:    260c        .&      MOVS     r6,#0xc
        0x1fff4294:    4370        pC      MULS     r0,r6,r0
        0x1fff4296:    5c16        .\      LDRB     r6,[r2,r0]
        0x1fff4298:    2e00        ..      CMP      r6,#0
        0x1fff429a:    d00f        ..      BEQ      0x1fff42bc ; hal_pwrmgr_unlock + 72
        0x1fff429c:    42ae        .B      CMP      r6,r5
        0x1fff429e:    d105        ..      BNE      0x1fff42ac ; hal_pwrmgr_unlock + 56
        0x1fff42a0:    1880        ..      ADDS     r0,r0,r2
        0x1fff42a2:    7043        Cp      STRB     r3,[r0,#1]
        0x1fff42a4:    e007        ..      B        0x1fff42b6 ; hal_pwrmgr_unlock + 66
        0x1fff42a6:    f7fdfc7b    ..{.    BL       $Ven$TT$L$$disableSleep ; 0x1fff1ba0
        0x1fff42aa:    e00d        ..      B        0x1fff42c8 ; hal_pwrmgr_unlock + 84
        0x1fff42ac:    1880        ..      ADDS     r0,r0,r2
        0x1fff42ae:    7840        @x      LDRB     r0,[r0,#1]
        0x1fff42b0:    2800        .(      CMP      r0,#0
        0x1fff42b2:    d000        ..      BEQ      0x1fff42b6 ; hal_pwrmgr_unlock + 66
        0x1fff42b4:    1c64        d.      ADDS     r4,r4,#1
        0x1fff42b6:    1c49        I.      ADDS     r1,r1,#1
        0x1fff42b8:    290a        .)      CMP      r1,#0xa
        0x1fff42ba:    dbe9        ..      BLT      0x1fff4290 ; hal_pwrmgr_unlock + 28
        0x1fff42bc:    2c00        .,      CMP      r4,#0
        0x1fff42be:    d005        ..      BEQ      0x1fff42cc ; hal_pwrmgr_unlock + 88
        0x1fff42c0:    f7fdfc6e    ..n.    BL       $Ven$TT$L$$disableSleep ; 0x1fff1ba0
        0x1fff42c4:    f7fdfb28    ..(.    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff1918
        0x1fff42c8:    2000        .       MOVS     r0,#0
        0x1fff42ca:    bd70        p.      POP      {r4-r6,pc}
        0x1fff42cc:    f7fdfb4e    ..N.    BL       $Ven$TT$L$$enableSleep ; 0x1fff196c
        0x1fff42d0:    e7f8        ..      B        0x1fff42c4 ; hal_pwrmgr_unlock + 80
    $d
        0x1fff42d2:    0000        ..      DCW    0
        0x1fff42d4:    1fff6b44    Dk..    DCD    536832836
        0x1fff42d8:    1fff73a8    .s..    DCD    536834984
    $t
    i.hal_pwrmgr_wakeup_process
    hal_pwrmgr_wakeup_process
    __tagsym$$used
        0x1fff42dc:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff42de:    481c        .H      LDR      r0,[pc,#112] ; [0x1fff4350] = 0x1fff6b44
        0x1fff42e0:    2101        .!      MOVS     r1,#1
        0x1fff42e2:    0789        ..      LSLS     r1,r1,#30
        0x1fff42e4:    6842        Bh      LDR      r2,[r0,#4]
        0x1fff42e6:    608a        .`      STR      r2,[r1,#8]
        0x1fff42e8:    6882        .h      LDR      r2,[r0,#8]
        0x1fff42ea:    2301        .#      MOVS     r3,#1
        0x1fff42ec:    431a        .C      ORRS     r2,r2,r3
        0x1fff42ee:    614a        Ja      STR      r2,[r1,#0x14]
        0x1fff42f0:    4918        .I      LDR      r1,[pc,#96] ; [0x1fff4354] = 0x4000f080
        0x1fff42f2:    6b0a        .k      LDR      r2,[r1,#0x30]
        0x1fff42f4:    60c2        .`      STR      r2,[r0,#0xc]
        0x1fff42f6:    6b49        Ik      LDR      r1,[r1,#0x34]
        0x1fff42f8:    6101        .a      STR      r1,[r0,#0x10]
        0x1fff42fa:    2100        .!      MOVS     r1,#0
        0x1fff42fc:    2004        .       MOVS     r0,#4
        0x1fff42fe:    f7fefcef    ....    BL       __NVIC_SetPriority ; 0x1fff2ce0
        0x1fff4302:    2101        .!      MOVS     r1,#1
        0x1fff4304:    2014        .       MOVS     r0,#0x14
        0x1fff4306:    f7fefceb    ....    BL       __NVIC_SetPriority ; 0x1fff2ce0
        0x1fff430a:    2101        .!      MOVS     r1,#1
        0x1fff430c:    2015        .       MOVS     r0,#0x15
        0x1fff430e:    f7fefce7    ....    BL       __NVIC_SetPriority ; 0x1fff2ce0
        0x1fff4312:    2101        .!      MOVS     r1,#1
        0x1fff4314:    2017        .       MOVS     r0,#0x17
        0x1fff4316:    f7fefce3    ....    BL       __NVIC_SetPriority ; 0x1fff2ce0
        0x1fff431a:    f001fa0f    ....    BL       peripheral_interrupt_restore_default ; 0x1fff573c
        0x1fff431e:    4e0c        .N      LDR      r6,[pc,#48] ; [0x1fff4350] = 0x1fff6b44
        0x1fff4320:    2400        .$      MOVS     r4,#0
        0x1fff4322:    4d0d        .M      LDR      r5,[pc,#52] ; [0x1fff4358] = 0x1fff73a8
        0x1fff4324:    1c76        v.      ADDS     r6,r6,#1
        0x1fff4326:    e00b        ..      B        0x1fff4340 ; hal_pwrmgr_wakeup_process + 100
        0x1fff4328:    4620         F      MOV      r0,r4
        0x1fff432a:    210c        .!      MOVS     r1,#0xc
        0x1fff432c:    4348        HC      MULS     r0,r1,r0
        0x1fff432e:    5c29        )\      LDRB     r1,[r5,r0]
        0x1fff4330:    2900        .)      CMP      r1,#0
        0x1fff4332:    d00b        ..      BEQ      0x1fff434c ; hal_pwrmgr_wakeup_process + 112
        0x1fff4334:    1940        @.      ADDS     r0,r0,r5
        0x1fff4336:    6880        .h      LDR      r0,[r0,#8]
        0x1fff4338:    2800        .(      CMP      r0,#0
        0x1fff433a:    d000        ..      BEQ      0x1fff433e ; hal_pwrmgr_wakeup_process + 98
        0x1fff433c:    4780        .G      BLX      r0
        0x1fff433e:    1c64        d.      ADDS     r4,r4,#1
        0x1fff4340:    7830        0x      LDRB     r0,[r6,#0]
        0x1fff4342:    08c0        ..      LSRS     r0,r0,#3
        0x1fff4344:    42a0        .B      CMP      r0,r4
        0x1fff4346:    dcef        ..      BGT      0x1fff4328 ; hal_pwrmgr_wakeup_process + 76
        0x1fff4348:    2000        .       MOVS     r0,#0
        0x1fff434a:    bd70        p.      POP      {r4-r6,pc}
        0x1fff434c:    2012        .       MOVS     r0,#0x12
        0x1fff434e:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x1fff4350:    1fff6b44    Dk..    DCD    536832836
        0x1fff4354:    4000f080    ...@    DCD    1073803392
        0x1fff4358:    1fff73a8    .s..    DCD    536834984
    $t
    i.hal_rc32k_clk_tracking_init
    hal_rc32k_clk_tracking_init
        0x1fff435c:    b510        ..      PUSH     {r4,lr}
        0x1fff435e:    4906        .I      LDR      r1,[pc,#24] ; [0x1fff4378] = 0x1fff0a14
        0x1fff4360:    4804        .H      LDR      r0,[pc,#16] ; [0x1fff4374] = 0x1e84
        0x1fff4362:    6008        .`      STR      r0,[r1,#0]
        0x1fff4364:    4905        .I      LDR      r1,[pc,#20] ; [0x1fff437c] = 0x1fff0a38
        0x1fff4366:    6008        .`      STR      r0,[r1,#0]
        0x1fff4368:    f7fefece    ....    BL       aon_register_init ; 0x1fff3108
        0x1fff436c:    4904        .I      LDR      r1,[pc,#16] ; [0x1fff4380] = 0x4000f0c0
        0x1fff436e:    2000        .       MOVS     r0,#0
        0x1fff4370:    6048        H`      STR      r0,[r1,#4]
        0x1fff4372:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff4374:    00001e84    ....    DCD    7812
        0x1fff4378:    1fff0a14    ....    DCD    536807956
        0x1fff437c:    1fff0a38    8...    DCD    536807992
        0x1fff4380:    4000f0c0    ...@    DCD    1073803456
    $t
    i.hal_rfphy_init
    hal_rfphy_init
        0x1fff4384:    b510        ..      PUSH     {r4,lr}
        0x1fff4386:    4916        .I      LDR      r1,[pc,#88] ; [0x1fff43e0] = 0x1fff0a48
        0x1fff4388:    200a        .       MOVS     r0,#0xa
        0x1fff438a:    7008        .p      STRB     r0,[r1,#0]
        0x1fff438c:    4915        .I      LDR      r1,[pc,#84] ; [0x1fff43e4] = 0x1fff0a49
        0x1fff438e:    2001        .       MOVS     r0,#1
        0x1fff4390:    7008        .p      STRB     r0,[r1,#0]
        0x1fff4392:    4915        .I      LDR      r1,[pc,#84] ; [0x1fff43e8] = 0x1fff0a68
        0x1fff4394:    2000        .       MOVS     r0,#0
        0x1fff4396:    7008        .p      STRB     r0,[r1,#0]
        0x1fff4398:    4814        .H      LDR      r0,[pc,#80] ; [0x1fff43ec] = 0x4000f080
        0x1fff439a:    6bc1        .k      LDR      r1,[r0,#0x3c]
        0x1fff439c:    0949        I.      LSRS     r1,r1,#5
        0x1fff439e:    0149        I.      LSLS     r1,r1,#5
        0x1fff43a0:    3109        .1      ADDS     r1,r1,#9
        0x1fff43a2:    63c1        .c      STR      r1,[r0,#0x3c]
        0x1fff43a4:    6bc1        .k      LDR      r1,[r0,#0x3c]
        0x1fff43a6:    2260        `"      MOVS     r2,#0x60
        0x1fff43a8:    4311        .C      ORRS     r1,r1,r2
        0x1fff43aa:    63c1        .c      STR      r1,[r0,#0x3c]
        0x1fff43ac:    f7ffffd6    ....    BL       hal_rc32k_clk_tracking_init ; 0x1fff435c
        0x1fff43b0:    f000f820    .. .    BL       hal_rom_boot_init ; 0x1fff43f4
        0x1fff43b4:    2100        .!      MOVS     r1,#0
        0x1fff43b6:    2004        .       MOVS     r0,#4
        0x1fff43b8:    f7fefc4e    ..N.    BL       __NVIC_SetPriority ; 0x1fff2c58
        0x1fff43bc:    2101        .!      MOVS     r1,#1
        0x1fff43be:    2014        .       MOVS     r0,#0x14
        0x1fff43c0:    f7fefc4a    ..J.    BL       __NVIC_SetPriority ; 0x1fff2c58
        0x1fff43c4:    2101        .!      MOVS     r1,#1
        0x1fff43c6:    2015        .       MOVS     r0,#0x15
        0x1fff43c8:    f7fefc46    ..F.    BL       __NVIC_SetPriority ; 0x1fff2c58
        0x1fff43cc:    2101        .!      MOVS     r1,#1
        0x1fff43ce:    2017        .       MOVS     r0,#0x17
        0x1fff43d0:    f7fefc42    ..B.    BL       __NVIC_SetPriority ; 0x1fff2c58
        0x1fff43d4:    2101        .!      MOVS     r1,#1
        0x1fff43d6:    0289        ..      LSLS     r1,r1,#10
        0x1fff43d8:    4805        .H      LDR      r0,[pc,#20] ; [0x1fff43f0] = 0x1fff6bf4
        0x1fff43da:    f7fdfbe7    ....    BL       $Ven$TT$L$$osal_mem_set_heap ; 0x1fff1bac
        0x1fff43de:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff43e0:    1fff0a48    H...    DCD    536808008
        0x1fff43e4:    1fff0a49    I...    DCD    536808009
        0x1fff43e8:    1fff0a68    h...    DCD    536808040
        0x1fff43ec:    4000f080    ...@    DCD    1073803392
        0x1fff43f0:    1fff6bf4    .k..    DCD    536833012
    $t
    i.hal_rom_boot_init
    hal_rom_boot_init
        0x1fff43f4:    b510        ..      PUSH     {r4,lr}
        0x1fff43f6:    f7fefe71    ..q.    BL       _rom_sec_boot_init ; 0x1fff30dc
        0x1fff43fa:    bd10        ..      POP      {r4,pc}
    i.hal_rtc_clock_config
    hal_rtc_clock_config
        0x1fff43fc:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff43fe:    2540        @%      MOVS     r5,#0x40
        0x1fff4400:    4c1c        .L      LDR      r4,[pc,#112] ; [0x1fff4474] = 0x4000f000
        0x1fff4402:    2801        .(      CMP      r0,#1
        0x1fff4404:    d002        ..      BEQ      0x1fff440c ; hal_rtc_clock_config + 16
        0x1fff4406:    2800        .(      CMP      r0,#0
        0x1fff4408:    d011        ..      BEQ      0x1fff442e ; hal_rtc_clock_config + 50
        0x1fff440a:    e027        '.      B        0x1fff445c ; hal_rtc_clock_config + 96
        0x1fff440c:    6960        `i      LDR      r0,[r4,#0x14]
        0x1fff440e:    2105        .!      MOVS     r1,#5
        0x1fff4410:    0140        @.      LSLS     r0,r0,#5
        0x1fff4412:    0940        @.      LSRS     r0,r0,#5
        0x1fff4414:    06c9        ..      LSLS     r1,r1,#27
        0x1fff4416:    1840        @.      ADDS     r0,r0,r1
        0x1fff4418:    6160        `a      STR      r0,[r4,#0x14]
        0x1fff441a:    69e0        .i      LDR      r0,[r4,#0x1c]
        0x1fff441c:    4916        .I      LDR      r1,[pc,#88] ; [0x1fff4478] = 0xfffe007f
        0x1fff441e:    4008        .@      ANDS     r0,r0,r1
        0x1fff4420:    4916        .I      LDR      r1,[pc,#88] ; [0x1fff447c] = 0x1fd80
        0x1fff4422:    1840        @.      ADDS     r0,r0,r1
        0x1fff4424:    61e0        .a      STR      r0,[r4,#0x1c]
        0x1fff4426:    69e0        .i      LDR      r0,[r4,#0x1c]
        0x1fff4428:    4328        (C      ORRS     r0,r0,r5
        0x1fff442a:    61e0        .a      STR      r0,[r4,#0x1c]
        0x1fff442c:    e016        ..      B        0x1fff445c ; hal_rtc_clock_config + 96
        0x1fff442e:    2100        .!      MOVS     r1,#0
        0x1fff4430:    200a        .       MOVS     r0,#0xa
        0x1fff4432:    f7fffc23    ..#.    BL       hal_gpio_pull_set ; 0x1fff3c7c
        0x1fff4436:    2100        .!      MOVS     r1,#0
        0x1fff4438:    200b        .       MOVS     r0,#0xb
        0x1fff443a:    f7fffc1f    ....    BL       hal_gpio_pull_set ; 0x1fff3c7c
        0x1fff443e:    69e0        .i      LDR      r0,[r4,#0x1c]
        0x1fff4440:    2103        .!      MOVS     r1,#3
        0x1fff4442:    0209        ..      LSLS     r1,r1,#8
        0x1fff4444:    4308        .C      ORRS     r0,r0,r1
        0x1fff4446:    61e0        .a      STR      r0,[r4,#0x1c]
        0x1fff4448:    69e0        .i      LDR      r0,[r4,#0x1c]
        0x1fff444a:    43a8        .C      BICS     r0,r0,r5
        0x1fff444c:    61e0        .a      STR      r0,[r4,#0x1c]
        0x1fff444e:    6960        `i      LDR      r0,[r4,#0x14]
        0x1fff4450:    210b        .!      MOVS     r1,#0xb
        0x1fff4452:    0140        @.      LSLS     r0,r0,#5
        0x1fff4454:    0940        @.      LSRS     r0,r0,#5
        0x1fff4456:    0709        ..      LSLS     r1,r1,#28
        0x1fff4458:    1840        @.      ADDS     r0,r0,r1
        0x1fff445a:    6160        `a      STR      r0,[r4,#0x14]
        0x1fff445c:    6960        `i      LDR      r0,[r4,#0x14]
        0x1fff445e:    2101        .!      MOVS     r1,#1
        0x1fff4460:    0709        ..      LSLS     r1,r1,#28
        0x1fff4462:    4308        .C      ORRS     r0,r0,r1
        0x1fff4464:    6160        `a      STR      r0,[r4,#0x14]
        0x1fff4466:    69a0        .i      LDR      r0,[r4,#0x18]
        0x1fff4468:    2103        .!      MOVS     r1,#3
        0x1fff446a:    0449        I.      LSLS     r1,r1,#17
        0x1fff446c:    4388        .C      BICS     r0,r0,r1
        0x1fff446e:    61a0        .a      STR      r0,[r4,#0x18]
        0x1fff4470:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x1fff4472:    0000        ..      DCW    0
        0x1fff4474:    4000f000    ...@    DCD    1073803264
        0x1fff4478:    fffe007f    ....    DCD    4294836351
        0x1fff447c:    0001fd80    ....    DCD    130432
    $t
    i.hal_spif_cache_init
    hal_spif_cache_init
        0x1fff4480:    b510        ..      PUSH     {r4,lr}
        0x1fff4482:    4905        .I      LDR      r1,[pc,#20] ; [0x1fff4498] = 0x1fff6b64
        0x1fff4484:    6048        H`      STR      r0,[r1,#4]
        0x1fff4486:    f000f855    ..U.    BL       hw_spif_cache_config ; 0x1fff4534
        0x1fff448a:    4a04        .J      LDR      r2,[pc,#16] ; [0x1fff449c] = 0x1fff4535
        0x1fff448c:    2100        .!      MOVS     r1,#0
        0x1fff448e:    2013        .       MOVS     r0,#0x13
        0x1fff4490:    f7fffea8    ....    BL       hal_pwrmgr_register ; 0x1fff41e4
        0x1fff4494:    2000        .       MOVS     r0,#0
        0x1fff4496:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff4498:    1fff6b64    dk..    DCD    536832868
        0x1fff449c:    1fff4535    5E..    DCD    536823093
    $t
    i.hal_system_clock_change_process
    hal_system_clock_change_process
        0x1fff44a0:    4802        .H      LDR      r0,[pc,#8] ; [0x1fff44ac] = 0x1fff0340
        0x1fff44a2:    6a00        .j      LDR      r0,[r0,#0x20]
        0x1fff44a4:    2800        .(      CMP      r0,#0
        0x1fff44a6:    d000        ..      BEQ      0x1fff44aa ; hal_system_clock_change_process + 10
        0x1fff44a8:    4700        .G      BX       r0
        0x1fff44aa:    4770        pG      BX       lr
    $d
        0x1fff44ac:    1fff0340    @...    DCD    536806208
    $t
    i.hal_uart_init
    hal_uart_init
        0x1fff44b0:    b5ff        ..      PUSH     {r0-r7,lr}
        0x1fff44b2:    b081        ..      SUB      sp,sp,#4
        0x1fff44b4:    9f0a        ..      LDR      r7,[sp,#0x28]
        0x1fff44b6:    4d14        .M      LDR      r5,[pc,#80] ; [0x1fff4508] = 0x1fff7238
        0x1fff44b8:    017e        ~.      LSLS     r6,r7,#5
        0x1fff44ba:    5da8        .]      LDRB     r0,[r5,r6]
        0x1fff44bc:    2800        .(      CMP      r0,#0
        0x1fff44be:    d002        ..      BEQ      0x1fff44c6 ; hal_uart_init + 22
        0x1fff44c0:    2011        .       MOVS     r0,#0x11
        0x1fff44c2:    b005        ..      ADD      sp,sp,#0x14
        0x1fff44c4:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff44c6:    4668        hF      MOV      r0,sp
        0x1fff44c8:    7b40        @{      LDRB     r0,[r0,#0xd]
        0x1fff44ca:    2800        .(      CMP      r0,#0
        0x1fff44cc:    d001        ..      BEQ      0x1fff44d2 ; hal_uart_init + 34
        0x1fff44ce:    2005        .       MOVS     r0,#5
        0x1fff44d0:    e7f7        ..      B        0x1fff44c2 ; hal_uart_init + 18
        0x1fff44d2:    1974        t.      ADDS     r4,r6,r5
        0x1fff44d4:    2120         !      MOVS     r1,#0x20
        0x1fff44d6:    4620         F      MOV      r0,r4
        0x1fff44d8:    f7fdfb56    ..V.    BL       $Ven$TT$L$$__aeabi_memclr4 ; 0x1fff1b88
        0x1fff44dc:    a801        ..      ADD      r0,sp,#4
        0x1fff44de:    c80f        ..      LDM      r0,{r0-r3}
        0x1fff44e0:    3410        .4      ADDS     r4,r4,#0x10
        0x1fff44e2:    c40f        ..      STM      r4!,{r0-r3}
        0x1fff44e4:    4638        8F      MOV      r0,r7
        0x1fff44e6:    f001ffe3    ....    BL       uart_hw_init ; 0x1fff64b0
        0x1fff44ea:    2001        .       MOVS     r0,#1
        0x1fff44ec:    55a8        .U      STRB     r0,[r5,r6]
        0x1fff44ee:    2f00        ./      CMP      r7,#0
        0x1fff44f0:    d006        ..      BEQ      0x1fff4500 ; hal_uart_init + 80
        0x1fff44f2:    4a06        .J      LDR      r2,[pc,#24] ; [0x1fff450c] = 0x1fff6663
        0x1fff44f4:    2100        .!      MOVS     r1,#0
        0x1fff44f6:    2019        .       MOVS     r0,#0x19
        0x1fff44f8:    f7fffe74    ..t.    BL       hal_pwrmgr_register ; 0x1fff41e4
        0x1fff44fc:    2000        .       MOVS     r0,#0
        0x1fff44fe:    e7e0        ..      B        0x1fff44c2 ; hal_uart_init + 18
        0x1fff4500:    2100        .!      MOVS     r1,#0
        0x1fff4502:    4a03        .J      LDR      r2,[pc,#12] ; [0x1fff4510] = 0x1fff6659
        0x1fff4504:    2008        .       MOVS     r0,#8
        0x1fff4506:    e7f7        ..      B        0x1fff44f8 ; hal_uart_init + 72
    $d
        0x1fff4508:    1fff7238    8r..    DCD    536834616
        0x1fff450c:    1fff6663    cf..    DCD    536831587
        0x1fff4510:    1fff6659    Yf..    DCD    536831577
    $t
    i.hal_uart_send_buff
    hal_uart_send_buff
        0x1fff4514:    b510        ..      PUSH     {r4,lr}
        0x1fff4516:    4c06        .L      LDR      r4,[pc,#24] ; [0x1fff4530] = 0x1fff7238
        0x1fff4518:    0143        C.      LSLS     r3,r0,#5
        0x1fff451a:    191b        ..      ADDS     r3,r3,r4
        0x1fff451c:    7e9b        .~      LDRB     r3,[r3,#0x1a]
        0x1fff451e:    2b00        .+      CMP      r3,#0
        0x1fff4520:    d002        ..      BEQ      0x1fff4528 ; hal_uart_send_buff + 20
        0x1fff4522:    f001ff27    ..'.    BL       txmit_buf_use_tx_buf ; 0x1fff6374
        0x1fff4526:    bd10        ..      POP      {r4,pc}
        0x1fff4528:    f001feee    ....    BL       txmit_buf_polling ; 0x1fff6308
        0x1fff452c:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff452e:    0000        ..      DCW    0
        0x1fff4530:    1fff7238    8r..    DCD    536834616
    $t
    i.hw_spif_cache_config
    hw_spif_cache_config
        0x1fff4534:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff4536:    4823        #H      LDR      r0,[pc,#140] ; [0x1fff45c4] = 0x1fff0a4a
        0x1fff4538:    7801        .x      LDRB     r1,[r0,#0]
        0x1fff453a:    2902        .)      CMP      r1,#2
        0x1fff453c:    d901        ..      BLS      0x1fff4542 ; hw_spif_cache_config + 14
        0x1fff453e:    2004        .       MOVS     r0,#4
        0x1fff4540:    e000        ..      B        0x1fff4544 ; hw_spif_cache_config + 16
        0x1fff4542:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff4544:    4920         I      LDR      r1,[pc,#128] ; [0x1fff45c8] = 0x1fff6b68
        0x1fff4546:    4b21        !K      LDR      r3,[pc,#132] ; [0x1fff45cc] = 0x802006b
        0x1fff4548:    680a        .h      LDR      r2,[r1,#0]
        0x1fff454a:    2101        .!      MOVS     r1,#1
        0x1fff454c:    2400        .$      MOVS     r4,#0
        0x1fff454e:    429a        .B      CMP      r2,r3
        0x1fff4550:    d101        ..      BNE      0x1fff4556 ; hw_spif_cache_config + 34
        0x1fff4552:    9100        ..      STR      r1,[sp,#0]
        0x1fff4554:    e000        ..      B        0x1fff4558 ; hw_spif_cache_config + 36
        0x1fff4556:    9400        ..      STR      r4,[sp,#0]
        0x1fff4558:    2300        .#      MOVS     r3,#0
        0x1fff455a:    2101        .!      MOVS     r1,#1
        0x1fff455c:    f7fdfb2c    ..,.    BL       $Ven$TT$L$$spif_config ; 0x1fff1bb8
        0x1fff4560:    491c        .I      LDR      r1,[pc,#112] ; [0x1fff45d4] = 0x4000c800
        0x1fff4562:    481b        .H      LDR      r0,[pc,#108] ; [0x1fff45d0] = 0xff010005
        0x1fff4564:    6388        .c      STR      r0,[r1,#0x38]
        0x1fff4566:    481b        .H      LDR      r0,[pc,#108] ; [0x1fff45d4] = 0x4000c800
        0x1fff4568:    3040        @0      ADDS     r0,r0,#0x40
        0x1fff456a:    6104        .a      STR      r4,[r0,#0x10]
        0x1fff456c:    2110        .!      MOVS     r1,#0x10
        0x1fff456e:    6141        Aa      STR      r1,[r0,#0x14]
        0x1fff4570:    2602        .&      MOVS     r6,#2
        0x1fff4572:    6186        .a      STR      r6,[r0,#0x18]
        0x1fff4574:    0388        ..      LSLS     r0,r1,#14
        0x1fff4576:    4918        .I      LDR      r1,[pc,#96] ; [0x1fff45d8] = 0xe000e180
        0x1fff4578:    6008        .`      STR      r0,[r1,#0]
        0x1fff457a:    f3bf8f4f    ..O.    DSB      
        0x1fff457e:    f3bf8f6f    ..o.    ISB      
        0x1fff4582:    4816        .H      LDR      r0,[pc,#88] ; [0x1fff45dc] = 0xe000e410
        0x1fff4584:    6801        .h      LDR      r1,[r0,#0]
        0x1fff4586:    22ff        ."      MOVS     r2,#0xff
        0x1fff4588:    0412        ..      LSLS     r2,r2,#16
        0x1fff458a:    4391        .C      BICS     r1,r1,r2
        0x1fff458c:    05b2        ..      LSLS     r2,r6,#22
        0x1fff458e:    4311        .C      ORRS     r1,r1,r2
        0x1fff4590:    6001        .`      STR      r1,[r0,#0]
        0x1fff4592:    2064        d       MOVS     r0,#0x64
        0x1fff4594:    9000        ..      STR      r0,[sp,#0]
        0x1fff4596:    2041        A       MOVS     r0,#0x41
        0x1fff4598:    f7fff9da    ....    BL       hal_clk_gate_enable ; 0x1fff3950
        0x1fff459c:    2040        @       MOVS     r0,#0x40
        0x1fff459e:    f7fff9d7    ....    BL       hal_clk_gate_enable ; 0x1fff3950
        0x1fff45a2:    0775        u.      LSLS     r5,r6,#29
        0x1fff45a4:    626e        nb      STR      r6,[r5,#0x24]
        0x1fff45a6:    9800        ..      LDR      r0,[sp,#0]
        0x1fff45a8:    1e41        A.      SUBS     r1,r0,#1
        0x1fff45aa:    9100        ..      STR      r1,[sp,#0]
        0x1fff45ac:    d2fb        ..      BCS      0x1fff45a6 ; hw_spif_cache_config + 114
        0x1fff45ae:    2003        .       MOVS     r0,#3
        0x1fff45b0:    6268        hb      STR      r0,[r5,#0x24]
        0x1fff45b2:    f7fff98f    ....    BL       hal_cache_tag_flush ; 0x1fff38d4
        0x1fff45b6:    62ac        .b      STR      r4,[r5,#0x28]
        0x1fff45b8:    4803        .H      LDR      r0,[pc,#12] ; [0x1fff45c8] = 0x1fff6b68
        0x1fff45ba:    1d00        ..      ADDS     r0,r0,#4
        0x1fff45bc:    f7fdfb02    ....    BL       $Ven$TT$L$$spif_read_id ; 0x1fff1bc4
        0x1fff45c0:    bdf8        ..      POP      {r3-r7,pc}
    $d
        0x1fff45c2:    0000        ..      DCW    0
        0x1fff45c4:    1fff0a4a    J...    DCD    536808010
        0x1fff45c8:    1fff6b68    hk..    DCD    536832872
        0x1fff45cc:    0802006b    k...    DCD    134348907
        0x1fff45d0:    ff010005    ....    DCD    4278255621
        0x1fff45d4:    4000c800    ...@    DCD    1073793024
        0x1fff45d8:    e000e180    ....    DCD    3758154112
        0x1fff45dc:    e000e410    ....    DCD    3758154768
    $t
    i.isTimer5Running
    isTimer5Running
        0x1fff45e0:    4802        .H      LDR      r0,[pc,#8] ; [0x1fff45ec] = 0x40001040
        0x1fff45e2:    6980        .i      LDR      r0,[r0,#0x18]
        0x1fff45e4:    07c0        ..      LSLS     r0,r0,#31
        0x1fff45e6:    d000        ..      BEQ      0x1fff45ea ; isTimer5Running + 10
        0x1fff45e8:    2001        .       MOVS     r0,#1
        0x1fff45ea:    4770        pG      BX       lr
    $d
        0x1fff45ec:    40001040    @..@    DCD    1073745984
    $t
    i.l2capPocessFragmentTxData
    l2capPocessFragmentTxData
        0x1fff45f0:    4770        pG      BX       lr
        0x1fff45f2:    0000        ..      MOVS     r0,r0
    i.lib_efuse_load
    lib_efuse_load
        0x1fff45f4:    b530        0.      PUSH     {r4,r5,lr}
        0x1fff45f6:    c80a        ..      LDM      r0!,{r1,r3}
        0x1fff45f8:    4a28        (J      LDR      r2,[pc,#160] ; [0x1fff469c] = 0x1fff6bec
        0x1fff45fa:    074c        L.      LSLS     r4,r1,#29
        0x1fff45fc:    6810        .h      LDR      r0,[r2,#0]
        0x1fff45fe:    0fa4        ..      LSRS     r4,r4,#30
        0x1fff4600:    0880        ..      LSRS     r0,r0,#2
        0x1fff4602:    0080        ..      LSLS     r0,r0,#2
        0x1fff4604:    4320         C      ORRS     r0,r0,r4
        0x1fff4606:    08cc        ..      LSRS     r4,r1,#3
        0x1fff4608:    07e5        ..      LSLS     r5,r4,#31
        0x1fff460a:    2404        .$      MOVS     r4,#4
        0x1fff460c:    6010        .`      STR      r0,[r2,#0]
        0x1fff460e:    2d00        .-      CMP      r5,#0
        0x1fff4610:    d03c        <.      BEQ      0x1fff468c ; lib_efuse_load + 152
        0x1fff4612:    43a0        .C      BICS     r0,r0,r4
        0x1fff4614:    2478        x$      MOVS     r4,#0x78
        0x1fff4616:    43a0        .C      BICS     r0,r0,r4
        0x1fff4618:    060c        ..      LSLS     r4,r1,#24
        0x1fff461a:    0f24        $.      LSRS     r4,r4,#28
        0x1fff461c:    00e4        ..      LSLS     r4,r4,#3
        0x1fff461e:    4320         C      ORRS     r0,r0,r4
        0x1fff4620:    240f        .$      MOVS     r4,#0xf
        0x1fff4622:    01e4        ..      LSLS     r4,r4,#7
        0x1fff4624:    43a0        .C      BICS     r0,r0,r4
        0x1fff4626:    050c        ..      LSLS     r4,r1,#20
        0x1fff4628:    0f24        $.      LSRS     r4,r4,#28
        0x1fff462a:    01e4        ..      LSLS     r4,r4,#7
        0x1fff462c:    4320         C      ORRS     r0,r0,r4
        0x1fff462e:    0b0c        ..      LSRS     r4,r1,#12
        0x1fff4630:    07e5        ..      LSLS     r5,r4,#31
        0x1fff4632:    4c1b        .L      LDR      r4,[pc,#108] ; [0x1fff46a0] = 0x800
        0x1fff4634:    6010        .`      STR      r0,[r2,#0]
        0x1fff4636:    d02b        +.      BEQ      0x1fff4690 ; lib_efuse_load + 156
        0x1fff4638:    43a0        .C      BICS     r0,r0,r4
        0x1fff463a:    4c1a        .L      LDR      r4,[pc,#104] ; [0x1fff46a4] = 0xffc00fff
        0x1fff463c:    4020         @      ANDS     r0,r0,r4
        0x1fff463e:    024c        L.      LSLS     r4,r1,#9
        0x1fff4640:    0da4        ..      LSRS     r4,r4,#22
        0x1fff4642:    0324        $.      LSLS     r4,r4,#12
        0x1fff4644:    4320         C      ORRS     r0,r0,r4
        0x1fff4646:    240f        .$      MOVS     r4,#0xf
        0x1fff4648:    05a4        ..      LSLS     r4,r4,#22
        0x1fff464a:    43a0        .C      BICS     r0,r0,r4
        0x1fff464c:    014c        L.      LSLS     r4,r1,#5
        0x1fff464e:    0f24        $.      LSRS     r4,r4,#28
        0x1fff4650:    05a4        ..      LSLS     r4,r4,#22
        0x1fff4652:    4320         C      ORRS     r0,r0,r4
        0x1fff4654:    019c        ..      LSLS     r4,r3,#6
        0x1fff4656:    0ec9        ..      LSRS     r1,r1,#27
        0x1fff4658:    0864        d.      LSRS     r4,r4,#1
        0x1fff465a:    4321        !C      ORRS     r1,r1,r4
        0x1fff465c:    c203        ..      STM      r2!,{r0,r1}
        0x1fff465e:    0e99        ..      LSRS     r1,r3,#26
        0x1fff4660:    07cc        ..      LSLS     r4,r1,#31
        0x1fff4662:    2101        .!      MOVS     r1,#1
        0x1fff4664:    0689        ..      LSLS     r1,r1,#26
        0x1fff4666:    3a08        .:      SUBS     r2,r2,#8
        0x1fff4668:    2c00        .,      CMP      r4,#0
        0x1fff466a:    d013        ..      BEQ      0x1fff4694 ; lib_efuse_load + 160
        0x1fff466c:    4388        .C      BICS     r0,r0,r1
        0x1fff466e:    0ed9        ..      LSRS     r1,r3,#27
        0x1fff4670:    07cc        ..      LSLS     r4,r1,#31
        0x1fff4672:    490d        .I      LDR      r1,[pc,#52] ; [0x1fff46a8] = 0x8000000
        0x1fff4674:    6010        .`      STR      r0,[r2,#0]
        0x1fff4676:    d00f        ..      BEQ      0x1fff4698 ; lib_efuse_load + 164
        0x1fff4678:    4388        .C      BICS     r0,r0,r1
        0x1fff467a:    2103        .!      MOVS     r1,#3
        0x1fff467c:    0709        ..      LSLS     r1,r1,#28
        0x1fff467e:    4388        .C      BICS     r0,r0,r1
        0x1fff4680:    0099        ..      LSLS     r1,r3,#2
        0x1fff4682:    0f89        ..      LSRS     r1,r1,#30
        0x1fff4684:    0709        ..      LSLS     r1,r1,#28
        0x1fff4686:    4308        .C      ORRS     r0,r0,r1
        0x1fff4688:    6010        .`      STR      r0,[r2,#0]
        0x1fff468a:    bd30        0.      POP      {r4,r5,pc}
        0x1fff468c:    4320         C      ORRS     r0,r0,r4
        0x1fff468e:    e7c1        ..      B        0x1fff4614 ; lib_efuse_load + 32
        0x1fff4690:    4320         C      ORRS     r0,r0,r4
        0x1fff4692:    e7d2        ..      B        0x1fff463a ; lib_efuse_load + 70
        0x1fff4694:    4308        .C      ORRS     r0,r0,r1
        0x1fff4696:    e7ea        ..      B        0x1fff466e ; lib_efuse_load + 122
        0x1fff4698:    4308        .C      ORRS     r0,r0,r1
        0x1fff469a:    e7ee        ..      B        0x1fff467a ; lib_efuse_load + 134
    $d
        0x1fff469c:    1fff6bec    .k..    DCD    536833004
        0x1fff46a0:    00000800    ....    DCD    2048
        0x1fff46a4:    ffc00fff    ....    DCD    4290777087
        0x1fff46a8:    08000000    ....    DCD    134217728
    $t
    i.llProcessTxData1
    llProcessTxData1
        0x1fff46ac:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff46ae:    4605        .F      MOV      r5,r0
        0x1fff46b0:    4812        .H      LDR      r0,[pc,#72] ; [0x1fff46fc] = 0x1fff6b80
        0x1fff46b2:    460f        .F      MOV      r7,r1
        0x1fff46b4:    78c0        .x      LDRB     r0,[r0,#3]
        0x1fff46b6:    4281        .B      CMP      r1,r0
        0x1fff46b8:    d11f        ..      BNE      0x1fff46fa ; llProcessTxData1 + 78
        0x1fff46ba:    78e8        .x      LDRB     r0,[r5,#3]
        0x1fff46bc:    2800        .(      CMP      r0,#0
        0x1fff46be:    d018        ..      BEQ      0x1fff46f2 ; llProcessTxData1 + 70
        0x1fff46c0:    2400        .$      MOVS     r4,#0
        0x1fff46c2:    00a0        ..      LSLS     r0,r4,#2
        0x1fff46c4:    1946        F.      ADDS     r6,r0,r5
        0x1fff46c6:    36ff        .6      ADDS     r6,r6,#0xff
        0x1fff46c8:    3681        .6      ADDS     r6,r6,#0x81
        0x1fff46ca:    68f1        .h      LDR      r1,[r6,#0xc]
        0x1fff46cc:    2900        .)      CMP      r1,#0
        0x1fff46ce:    d00d        ..      BEQ      0x1fff46ec ; llProcessTxData1 + 64
        0x1fff46d0:    6808        .h      LDR      r0,[r1,#0]
        0x1fff46d2:    2800        .(      CMP      r0,#0
        0x1fff46d4:    d10a        ..      BNE      0x1fff46ec ; llProcessTxData1 + 64
        0x1fff46d6:    7928        (y      LDRB     r0,[r5,#4]
        0x1fff46d8:    f000fc74    ..t.    BL       ll_osal_mem_free ; 0x1fff4fc4
        0x1fff46dc:    2000        .       MOVS     r0,#0
        0x1fff46de:    60f0        .`      STR      r0,[r6,#0xc]
        0x1fff46e0:    2005        .       MOVS     r0,#5
        0x1fff46e2:    01c0        ..      LSLS     r0,r0,#7
        0x1fff46e4:    1828        (.      ADDS     r0,r5,r0
        0x1fff46e6:    7841        Ax      LDRB     r1,[r0,#1]
        0x1fff46e8:    1e49        I.      SUBS     r1,r1,#1
        0x1fff46ea:    7041        Ap      STRB     r1,[r0,#1]
        0x1fff46ec:    1c64        d.      ADDS     r4,r4,#1
        0x1fff46ee:    2c08        .,      CMP      r4,#8
        0x1fff46f0:    dbe7        ..      BLT      0x1fff46c2 ; llProcessTxData1 + 22
        0x1fff46f2:    4639        9F      MOV      r1,r7
        0x1fff46f4:    4628        (F      MOV      r0,r5
        0x1fff46f6:    f7fdfa6b    ..k.    BL       $Ven$TT$L$$llProcessTxData0 ; 0x1fff1bd0
        0x1fff46fa:    bdf8        ..      POP      {r3-r7,pc}
    $d
        0x1fff46fc:    1fff6b80    .k..    DCD    536832896
    $t
    i.llReleaseConnId1
    llReleaseConnId1
        0x1fff4700:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff4702:    4607        .F      MOV      r7,r0
        0x1fff4704:    4605        .F      MOV      r5,r0
        0x1fff4706:    37ff        .7      ADDS     r7,r7,#0xff
        0x1fff4708:    2005        .       MOVS     r0,#5
        0x1fff470a:    2600        .&      MOVS     r6,#0
        0x1fff470c:    3781        .7      ADDS     r7,r7,#0x81
        0x1fff470e:    01c0        ..      LSLS     r0,r0,#7
        0x1fff4710:    182c        ,.      ADDS     r4,r5,r0
        0x1fff4712:    00b0        ..      LSLS     r0,r6,#2
        0x1fff4714:    1940        @.      ADDS     r0,r0,r5
        0x1fff4716:    30ff        .0      ADDS     r0,r0,#0xff
        0x1fff4718:    3001        .0      ADDS     r0,#1
        0x1fff471a:    9000        ..      STR      r0,[sp,#0]
        0x1fff471c:    6ec1        .n      LDR      r1,[r0,#0x6c]
        0x1fff471e:    2900        .)      CMP      r1,#0
        0x1fff4720:    d005        ..      BEQ      0x1fff472e ; llReleaseConnId1 + 46
        0x1fff4722:    7928        (y      LDRB     r0,[r5,#4]
        0x1fff4724:    f000fc4e    ..N.    BL       ll_osal_mem_free ; 0x1fff4fc4
        0x1fff4728:    7820         x      LDRB     r0,[r4,#0]
        0x1fff472a:    1e40        @.      SUBS     r0,r0,#1
        0x1fff472c:    7020         p      STRB     r0,[r4,#0]
        0x1fff472e:    9800        ..      LDR      r0,[sp,#0]
        0x1fff4730:    6af9        .j      LDR      r1,[r7,#0x2c]
        0x1fff4732:    1c76        v.      ADDS     r6,r6,#1
        0x1fff4734:    66c1        .f      STR      r1,[r0,#0x6c]
        0x1fff4736:    2e08        ..      CMP      r6,#8
        0x1fff4738:    dbeb        ..      BLT      0x1fff4712 ; llReleaseConnId1 + 18
        0x1fff473a:    2600        .&      MOVS     r6,#0
        0x1fff473c:    00b0        ..      LSLS     r0,r6,#2
        0x1fff473e:    1940        @.      ADDS     r0,r0,r5
        0x1fff4740:    30ff        .0      ADDS     r0,r0,#0xff
        0x1fff4742:    3081        .0      ADDS     r0,r0,#0x81
        0x1fff4744:    9000        ..      STR      r0,[sp,#0]
        0x1fff4746:    68c1        .h      LDR      r1,[r0,#0xc]
        0x1fff4748:    2900        .)      CMP      r1,#0
        0x1fff474a:    d005        ..      BEQ      0x1fff4758 ; llReleaseConnId1 + 88
        0x1fff474c:    7928        (y      LDRB     r0,[r5,#4]
        0x1fff474e:    f000fc39    ..9.    BL       ll_osal_mem_free ; 0x1fff4fc4
        0x1fff4752:    7860        `x      LDRB     r0,[r4,#1]
        0x1fff4754:    1e40        @.      SUBS     r0,r0,#1
        0x1fff4756:    7060        `p      STRB     r0,[r4,#1]
        0x1fff4758:    9800        ..      LDR      r0,[sp,#0]
        0x1fff475a:    6af9        .j      LDR      r1,[r7,#0x2c]
        0x1fff475c:    1c76        v.      ADDS     r6,r6,#1
        0x1fff475e:    60c1        .`      STR      r1,[r0,#0xc]
        0x1fff4760:    2e08        ..      CMP      r6,#8
        0x1fff4762:    dbeb        ..      BLT      0x1fff473c ; llReleaseConnId1 + 60
        0x1fff4764:    2600        .&      MOVS     r6,#0
        0x1fff4766:    00b0        ..      LSLS     r0,r6,#2
        0x1fff4768:    1947        G.      ADDS     r7,r0,r5
        0x1fff476a:    37ff        .7      ADDS     r7,r7,#0xff
        0x1fff476c:    3781        .7      ADDS     r7,r7,#0x81
        0x1fff476e:    6b39        9k      LDR      r1,[r7,#0x30]
        0x1fff4770:    2900        .)      CMP      r1,#0
        0x1fff4772:    d005        ..      BEQ      0x1fff4780 ; llReleaseConnId1 + 128
        0x1fff4774:    7928        (y      LDRB     r0,[r5,#4]
        0x1fff4776:    f000fc25    ..%.    BL       ll_osal_mem_free ; 0x1fff4fc4
        0x1fff477a:    78a0        .x      LDRB     r0,[r4,#2]
        0x1fff477c:    1e40        @.      SUBS     r0,r0,#1
        0x1fff477e:    70a0        .p      STRB     r0,[r4,#2]
        0x1fff4780:    2000        .       MOVS     r0,#0
        0x1fff4782:    1c76        v.      ADDS     r6,r6,#1
        0x1fff4784:    6338        8c      STR      r0,[r7,#0x30]
        0x1fff4786:    2e08        ..      CMP      r6,#8
        0x1fff4788:    dbed        ..      BLT      0x1fff4766 ; llReleaseConnId1 + 102
        0x1fff478a:    4628        (F      MOV      r0,r5
        0x1fff478c:    f000f888    ....    BL       ll_flow_ctrl_restore ; 0x1fff48a0
        0x1fff4790:    4628        (F      MOV      r0,r5
        0x1fff4792:    f7fdfa23    ..#.    BL       $Ven$TT$L$$llReleaseConnId0 ; 0x1fff1bdc
        0x1fff4796:    2100        .!      MOVS     r1,#0
        0x1fff4798:    4608        .F      MOV      r0,r1
        0x1fff479a:    008a        ..      LSLS     r2,r1,#2
        0x1fff479c:    1952        R.      ADDS     r2,r2,r5
        0x1fff479e:    32ff        .2      ADDS     r2,r2,#0xff
        0x1fff47a0:    3201        .2      ADDS     r2,#1
        0x1fff47a2:    1c49        I.      ADDS     r1,r1,#1
        0x1fff47a4:    66d0        .f      STR      r0,[r2,#0x6c]
        0x1fff47a6:    2908        .)      CMP      r1,#8
        0x1fff47a8:    dbf7        ..      BLT      0x1fff479a ; llReleaseConnId1 + 154
        0x1fff47aa:    2100        .!      MOVS     r1,#0
        0x1fff47ac:    008a        ..      LSLS     r2,r1,#2
        0x1fff47ae:    1952        R.      ADDS     r2,r2,r5
        0x1fff47b0:    32ff        .2      ADDS     r2,r2,#0xff
        0x1fff47b2:    3281        .2      ADDS     r2,r2,#0x81
        0x1fff47b4:    1c49        I.      ADDS     r1,r1,#1
        0x1fff47b6:    60d0        .`      STR      r0,[r2,#0xc]
        0x1fff47b8:    2908        .)      CMP      r1,#8
        0x1fff47ba:    dbf7        ..      BLT      0x1fff47ac ; llReleaseConnId1 + 172
        0x1fff47bc:    70e0        .p      STRB     r0,[r4,#3]
        0x1fff47be:    bdf8        ..      POP      {r3-r7,pc}
    i.llSlaveEvt_TaskEndOk1
    llSlaveEvt_TaskEndOk1
        0x1fff47c0:    b510        ..      PUSH     {r4,lr}
        0x1fff47c2:    480b        .H      LDR      r0,[pc,#44] ; [0x1fff47f0] = 0x1fff0d30
        0x1fff47c4:    21a1        .!      MOVS     r1,#0xa1
        0x1fff47c6:    7880        .x      LDRB     r0,[r0,#2]
        0x1fff47c8:    0089        ..      LSLS     r1,r1,#2
        0x1fff47ca:    4348        HC      MULS     r0,r1,r0
        0x1fff47cc:    4909        .I      LDR      r1,[pc,#36] ; [0x1fff47f4] = 0x1fff0934
        0x1fff47ce:    6809        .h      LDR      r1,[r1,#0]
        0x1fff47d0:    1840        @.      ADDS     r0,r0,r1
        0x1fff47d2:    7841        Ax      LDRB     r1,[r0,#1]
        0x1fff47d4:    2900        .)      CMP      r1,#0
        0x1fff47d6:    d007        ..      BEQ      0x1fff47e8 ; llSlaveEvt_TaskEndOk1 + 40
        0x1fff47d8:    30ff        .0      ADDS     r0,r0,#0xff
        0x1fff47da:    30ff        .0      ADDS     r0,r0,#0xff
        0x1fff47dc:    3002        .0      ADDS     r0,#2
        0x1fff47de:    6cc1        .l      LDR      r1,[r0,#0x4c]
        0x1fff47e0:    2900        .)      CMP      r1,#0
        0x1fff47e2:    d001        ..      BEQ      0x1fff47e8 ; llSlaveEvt_TaskEndOk1 + 40
        0x1fff47e4:    2100        .!      MOVS     r1,#0
        0x1fff47e6:    64c1        .d      STR      r1,[r0,#0x4c]
        0x1fff47e8:    f7fdf9fe    ....    BL       $Ven$TT$L$$llSlaveEvt_TaskEndOk0 ; 0x1fff1be8
        0x1fff47ec:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff47ee:    0000        ..      DCW    0
        0x1fff47f0:    1fff0d30    0...    DCD    536808752
        0x1fff47f4:    1fff0934    4...    DCD    536807732
    $t
    i.llWriteTxData1
    llWriteTxData1
        0x1fff47f8:    b5ff        ..      PUSH     {r0-r7,lr}
        0x1fff47fa:    4604        .F      MOV      r4,r0
        0x1fff47fc:    3060        `0      ADDS     r0,r0,#0x60
        0x1fff47fe:    7ec0        .~      LDRB     r0,[r0,#0x1b]
        0x1fff4800:    2507        .%      MOVS     r5,#7
        0x1fff4802:    b081        ..      SUB      sp,sp,#4
        0x1fff4804:    4617        .F      MOV      r7,r2
        0x1fff4806:    2801        .(      CMP      r0,#1
        0x1fff4808:    d142        B.      BNE      0x1fff4890 ; llWriteTxData1 + 152
        0x1fff480a:    4620         F      MOV      r0,r4
        0x1fff480c:    f7fdf9f2    ....    BL       $Ven$TT$L$$getTxBufferFree ; 0x1fff1bf4
        0x1fff4810:    2800        .(      CMP      r0,#0
        0x1fff4812:    d03d        =.      BEQ      0x1fff4890 ; llWriteTxData1 + 152
        0x1fff4814:    4821        !H      LDR      r0,[pc,#132] ; [0x1fff489c] = 0x1fff0917
        0x1fff4816:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff4818:    2800        .(      CMP      r0,#0
        0x1fff481a:    d03c        <.      BEQ      0x1fff4896 ; llWriteTxData1 + 158
        0x1fff481c:    26ff        .&      MOVS     r6,#0xff
        0x1fff481e:    3611        .6      ADDS     r6,r6,#0x11
        0x1fff4820:    4620         F      MOV      r0,r4
        0x1fff4822:    f7fdf9ed    ....    BL       $Ven$TT$L$$get_tx_write_ptr ; 0x1fff1c00
        0x1fff4826:    9000        ..      STR      r0,[sp,#0]
        0x1fff4828:    7920         y      LDRB     r0,[r4,#4]
        0x1fff482a:    2200        ."      MOVS     r2,#0
        0x1fff482c:    4631        1F      MOV      r1,r6
        0x1fff482e:    f000fb7f    ....    BL       ll_osal_mem_alloc ; 0x1fff4f30
        0x1fff4832:    9900        ..      LDR      r1,[sp,#0]
        0x1fff4834:    0089        ..      LSLS     r1,r1,#2
        0x1fff4836:    190e        ..      ADDS     r6,r1,r4
        0x1fff4838:    36ff        .6      ADDS     r6,r6,#0xff
        0x1fff483a:    3601        .6      ADDS     r6,#1
        0x1fff483c:    66f0        .f      STR      r0,[r6,#0x6c]
        0x1fff483e:    2800        .(      CMP      r0,#0
        0x1fff4840:    d026        &.      BEQ      0x1fff4890 ; llWriteTxData1 + 152
        0x1fff4842:    20a6        .       MOVS     r0,#0xa6
        0x1fff4844:    5d00        .]      LDRB     r0,[r0,r4]
        0x1fff4846:    2800        .(      CMP      r0,#0
        0x1fff4848:    d007        ..      BEQ      0x1fff485a ; llWriteTxData1 + 98
        0x1fff484a:    463a        :F      MOV      r2,r7
        0x1fff484c:    4620         F      MOV      r0,r4
        0x1fff484e:    9b04        ..      LDR      r3,[sp,#0x10]
        0x1fff4850:    9902        ..      LDR      r1,[sp,#8]
        0x1fff4852:    f7fdf9db    ....    BL       $Ven$TT$L$$LL_ENC_Encrypt ; 0x1fff1c0c
        0x1fff4856:    1d3f        ?.      ADDS     r7,r7,#4
        0x1fff4858:    b2ff        ..      UXTB     r7,r7
        0x1fff485a:    2005        .       MOVS     r0,#5
        0x1fff485c:    01c0        ..      LSLS     r0,r0,#7
        0x1fff485e:    1825        %.      ADDS     r5,r4,r0
        0x1fff4860:    7828        (x      LDRB     r0,[r5,#0]
        0x1fff4862:    463a        :F      MOV      r2,r7
        0x1fff4864:    1c40        @.      ADDS     r0,r0,#1
        0x1fff4866:    7028        (p      STRB     r0,[r5,#0]
        0x1fff4868:    9902        ..      LDR      r1,[sp,#8]
        0x1fff486a:    0238        8.      LSLS     r0,r7,#8
        0x1fff486c:    4308        .C      ORRS     r0,r0,r1
        0x1fff486e:    6ef1        .n      LDR      r1,[r6,#0x6c]
        0x1fff4870:    8088        ..      STRH     r0,[r1,#4]
        0x1fff4872:    6ef0        .n      LDR      r0,[r6,#0x6c]
        0x1fff4874:    9904        ..      LDR      r1,[sp,#0x10]
        0x1fff4876:    1d80        ..      ADDS     r0,r0,#6
        0x1fff4878:    f7fdf9ce    ....    BL       $Ven$TT$L$$__aeabi_memcpy ; 0x1fff1c18
        0x1fff487c:    6ef1        .n      LDR      r1,[r6,#0x6c]
        0x1fff487e:    2001        .       MOVS     r0,#1
        0x1fff4880:    6008        .`      STR      r0,[r1,#0]
        0x1fff4882:    4620         F      MOV      r0,r4
        0x1fff4884:    f7fdf9ce    ....    BL       $Ven$TT$L$$update_tx_write_ptr ; 0x1fff1c24
        0x1fff4888:    78e8        .x      LDRB     r0,[r5,#3]
        0x1fff488a:    1e40        @.      SUBS     r0,r0,#1
        0x1fff488c:    70e8        .p      STRB     r0,[r5,#3]
        0x1fff488e:    2500        .%      MOVS     r5,#0
        0x1fff4890:    4628        (F      MOV      r0,r5
        0x1fff4892:    b005        ..      ADD      sp,sp,#0x14
        0x1fff4894:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff4896:    2634        4&      MOVS     r6,#0x34
        0x1fff4898:    e7c2        ..      B        0x1fff4820 ; llWriteTxData1 + 40
    $d
        0x1fff489a:    0000        ..      DCW    0
        0x1fff489c:    1fff0917    ....    DCD    536807703
    $t
    i.ll_flow_ctrl_restore
    ll_flow_ctrl_restore
        0x1fff48a0:    b510        ..      PUSH     {r4,lr}
        0x1fff48a2:    7901        .y      LDRB     r1,[r0,#4]
        0x1fff48a4:    4a13        .J      LDR      r2,[pc,#76] ; [0x1fff48f4] = 0x1fff7578
        0x1fff48a6:    0049        I.      LSLS     r1,r1,#1
        0x1fff48a8:    5c51        Q\      LDRB     r1,[r2,r1]
        0x1fff48aa:    2900        .)      CMP      r1,#0
        0x1fff48ac:    d020         .      BEQ      0x1fff48f0 ; ll_flow_ctrl_restore + 80
        0x1fff48ae:    4912        .I      LDR      r1,[pc,#72] ; [0x1fff48f8] = 0x40031040
        0x1fff48b0:    680b        .h      LDR      r3,[r1,#0]
        0x1fff48b2:    158c        ..      ASRS     r4,r1,#22
        0x1fff48b4:    43a3        .C      BICS     r3,r3,r4
        0x1fff48b6:    600b        .`      STR      r3,[r1,#0]
        0x1fff48b8:    4601        .F      MOV      r1,r0
        0x1fff48ba:    31ff        .1      ADDS     r1,r1,#0xff
        0x1fff48bc:    3121        !1      ADDS     r1,r1,#0x21
        0x1fff48be:    460b        .F      MOV      r3,r1
        0x1fff48c0:    7d09        .}      LDRB     r1,[r1,#0x14]
        0x1fff48c2:    2402        .$      MOVS     r4,#2
        0x1fff48c4:    4021        !@      ANDS     r1,r1,r4
        0x1fff48c6:    7904        .y      LDRB     r4,[r0,#4]
        0x1fff48c8:    0064        d.      LSLS     r4,r4,#1
        0x1fff48ca:    18a4        ..      ADDS     r4,r4,r2
        0x1fff48cc:    7864        dx      LDRB     r4,[r4,#1]
        0x1fff48ce:    4321        !C      ORRS     r1,r1,r4
        0x1fff48d0:    7519        .u      STRB     r1,[r3,#0x14]
        0x1fff48d2:    4b09        .K      LDR      r3,[pc,#36] ; [0x1fff48f8] = 0x40031040
        0x1fff48d4:    3b40        @;      SUBS     r3,r3,#0x40
        0x1fff48d6:    6bdc        .k      LDR      r4,[r3,#0x3c]
        0x1fff48d8:    08a4        ..      LSRS     r4,r4,#2
        0x1fff48da:    00a4        ..      LSLS     r4,r4,#2
        0x1fff48dc:    430c        .C      ORRS     r4,r4,r1
        0x1fff48de:    63dc        .c      STR      r4,[r3,#0x3c]
        0x1fff48e0:    7903        .y      LDRB     r3,[r0,#4]
        0x1fff48e2:    2100        .!      MOVS     r1,#0
        0x1fff48e4:    005b        [.      LSLS     r3,r3,#1
        0x1fff48e6:    54d1        .T      STRB     r1,[r2,r3]
        0x1fff48e8:    7900        .y      LDRB     r0,[r0,#4]
        0x1fff48ea:    0040        @.      LSLS     r0,r0,#1
        0x1fff48ec:    1880        ..      ADDS     r0,r0,r2
        0x1fff48ee:    7041        Ap      STRB     r1,[r0,#1]
        0x1fff48f0:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff48f2:    0000        ..      DCW    0
        0x1fff48f4:    1fff7578    xu..    DCD    536835448
        0x1fff48f8:    40031040    @..@    DCD    1073942592
    $t
    i.ll_generateTxBuffer1
    ll_generateTxBuffer1
        0x1fff48fc:    b5f3        ..      PUSH     {r0,r1,r4-r7,lr}
        0x1fff48fe:    4607        .F      MOV      r7,r0
        0x1fff4900:    4898        .H      LDR      r0,[pc,#608] ; [0x1fff4b64] = 0x1fff0d30
        0x1fff4902:    21a1        .!      MOVS     r1,#0xa1
        0x1fff4904:    7880        .x      LDRB     r0,[r0,#2]
        0x1fff4906:    0089        ..      LSLS     r1,r1,#2
        0x1fff4908:    4348        HC      MULS     r0,r1,r0
        0x1fff490a:    4997        .I      LDR      r1,[pc,#604] ; [0x1fff4b68] = 0x1fff0934
        0x1fff490c:    b089        ..      SUB      sp,sp,#0x24
        0x1fff490e:    6809        .h      LDR      r1,[r1,#0]
        0x1fff4910:    2600        .&      MOVS     r6,#0
        0x1fff4912:    1844        D.      ADDS     r4,r0,r1
        0x1fff4914:    4620         F      MOV      r0,r4
        0x1fff4916:    30ff        .0      ADDS     r0,r0,#0xff
        0x1fff4918:    3021        !0      ADDS     r0,r0,#0x21
        0x1fff491a:    9006        ..      STR      r0,[sp,#0x18]
        0x1fff491c:    7d40        @}      LDRB     r0,[r0,#0x15]
        0x1fff491e:    2832        2(      CMP      r0,#0x32
        0x1fff4920:    d022        ".      BEQ      0x1fff4968 ; ll_generateTxBuffer1 + 108
        0x1fff4922:    2822        "(      CMP      r0,#0x22
        0x1fff4924:    d020         .      BEQ      0x1fff4968 ; ll_generateTxBuffer1 + 108
        0x1fff4926:    4625        %F      MOV      r5,r4
        0x1fff4928:    35ff        .5      ADDS     r5,r5,#0xff
        0x1fff492a:    3581        .5      ADDS     r5,r5,#0x81
        0x1fff492c:    6ae8        .j      LDR      r0,[r5,#0x2c]
        0x1fff492e:    6801        .h      LDR      r1,[r0,#0]
        0x1fff4930:    2900        .)      CMP      r1,#0
        0x1fff4932:    d009        ..      BEQ      0x1fff4948 ; ll_generateTxBuffer1 + 76
        0x1fff4934:    8881        ..      LDRH     r1,[r0,#4]
        0x1fff4936:    1d00        ..      ADDS     r0,r0,#4
        0x1fff4938:    0a09        ..      LSRS     r1,r1,#8
        0x1fff493a:    1c89        ..      ADDS     r1,r1,#2
        0x1fff493c:    f7fdf978    ..x.    BL       $Ven$TT$L$$ll_hw_write_tfifo ; 0x1fff1c30
        0x1fff4940:    6ae9        .j      LDR      r1,[r5,#0x2c]
        0x1fff4942:    2000        .       MOVS     r0,#0
        0x1fff4944:    1c76        v.      ADDS     r6,r6,#1
        0x1fff4946:    6008        .`      STR      r0,[r1,#0]
        0x1fff4948:    f7fdf978    ..x.    BL       $Ven$TT$L$$ll_hw_get_tfifo_wrptr ; 0x1fff1c3c
        0x1fff494c:    990a        ..      LDR      r1,[sp,#0x28]
        0x1fff494e:    2500        .%      MOVS     r5,#0
        0x1fff4950:    8008        ..      STRH     r0,[r1,#0]
        0x1fff4952:    4620         F      MOV      r0,r4
        0x1fff4954:    30ff        .0      ADDS     r0,r0,#0xff
        0x1fff4956:    30c1        .0      ADDS     r0,r0,#0xc1
        0x1fff4958:    9007        ..      STR      r0,[sp,#0x1c]
        0x1fff495a:    7c00        .|      LDRB     r0,[r0,#0x10]
        0x1fff495c:    2800        .(      CMP      r0,#0
        0x1fff495e:    d029        ).      BEQ      0x1fff49b4 ; ll_generateTxBuffer1 + 184
        0x1fff4960:    42b8        .B      CMP      r0,r7
        0x1fff4962:    dc27        '.      BGT      0x1fff49b4 ; ll_generateTxBuffer1 + 184
        0x1fff4964:    2000        .       MOVS     r0,#0
        0x1fff4966:    e018        ..      B        0x1fff499a ; ll_generateTxBuffer1 + 158
        0x1fff4968:    4980        .I      LDR      r1,[pc,#512] ; [0x1fff4b6c] = 0x40031400
        0x1fff496a:    2001        .       MOVS     r0,#1
        0x1fff496c:    6008        .`      STR      r0,[r1,#0]
        0x1fff496e:    20ff        .       MOVS     r0,#0xff
        0x1fff4970:    30ad        .0      ADDS     r0,r0,#0xad
        0x1fff4972:    2100        .!      MOVS     r1,#0
        0x1fff4974:    5900        .Y      LDR      r0,[r0,r4]
        0x1fff4976:    2601        .&      MOVS     r6,#1
        0x1fff4978:    6001        .`      STR      r1,[r0,#0]
        0x1fff497a:    e7e5        ..      B        0x1fff4948 ; ll_generateTxBuffer1 + 76
        0x1fff497c:    0080        ..      LSLS     r0,r0,#2
        0x1fff497e:    1900        ..      ADDS     r0,r0,r4
        0x1fff4980:    30ff        .0      ADDS     r0,r0,#0xff
        0x1fff4982:    3081        .0      ADDS     r0,r0,#0x81
        0x1fff4984:    6b00        .k      LDR      r0,[r0,#0x30]
        0x1fff4986:    1c6d        m.      ADDS     r5,r5,#1
        0x1fff4988:    8881        ..      LDRH     r1,[r0,#4]
        0x1fff498a:    b2ed        ..      UXTB     r5,r5
        0x1fff498c:    0a09        ..      LSRS     r1,r1,#8
        0x1fff498e:    1d00        ..      ADDS     r0,r0,#4
        0x1fff4990:    1c89        ..      ADDS     r1,r1,#2
        0x1fff4992:    f7fdf94d    ..M.    BL       $Ven$TT$L$$ll_hw_write_tfifo ; 0x1fff1c30
        0x1fff4996:    9800        ..      LDR      r0,[sp,#0]
        0x1fff4998:    1c40        @.      ADDS     r0,r0,#1
        0x1fff499a:    9000        ..      STR      r0,[sp,#0]
        0x1fff499c:    9807        ..      LDR      r0,[sp,#0x1c]
        0x1fff499e:    7c01        .|      LDRB     r1,[r0,#0x10]
        0x1fff49a0:    9800        ..      LDR      r0,[sp,#0]
        0x1fff49a2:    4281        .B      CMP      r1,r0
        0x1fff49a4:    dcea        ..      BGT      0x1fff497c ; ll_generateTxBuffer1 + 128
        0x1fff49a6:    9807        ..      LDR      r0,[sp,#0x1c]
        0x1fff49a8:    7c00        .|      LDRB     r0,[r0,#0x10]
        0x1fff49aa:    1a3f        ?.      SUBS     r7,r7,r0
        0x1fff49ac:    1986        ..      ADDS     r6,r0,r6
        0x1fff49ae:    9807        ..      LDR      r0,[sp,#0x1c]
        0x1fff49b0:    2100        .!      MOVS     r1,#0
        0x1fff49b2:    7401        .t      STRB     r1,[r0,#0x10]
        0x1fff49b4:    496e        nI      LDR      r1,[pc,#440] ; [0x1fff4b70] = 0x1fff10e0
        0x1fff49b6:    2000        .       MOVS     r0,#0
        0x1fff49b8:    70c8        .p      STRB     r0,[r1,#3]
        0x1fff49ba:    20ff        .       MOVS     r0,#0xff
        0x1fff49bc:    30ad        .0      ADDS     r0,r0,#0xad
        0x1fff49be:    5900        .Y      LDR      r0,[r0,r4]
        0x1fff49c0:    6801        .h      LDR      r1,[r0,#0]
        0x1fff49c2:    2900        .)      CMP      r1,#0
        0x1fff49c4:    d003        ..      BEQ      0x1fff49ce ; ll_generateTxBuffer1 + 210
        0x1fff49c6:    7900        .y      LDRB     r0,[r0,#4]
        0x1fff49c8:    43c0        .C      MVNS     r0,r0
        0x1fff49ca:    0780        ..      LSLS     r0,r0,#30
        0x1fff49cc:    d03a        :.      BEQ      0x1fff4a44 ; ll_generateTxBuffer1 + 328
        0x1fff49ce:    9806        ..      LDR      r0,[sp,#0x18]
        0x1fff49d0:    7dc0        .}      LDRB     r0,[r0,#0x17]
        0x1fff49d2:    2800        .(      CMP      r0,#0
        0x1fff49d4:    d036        6.      BEQ      0x1fff4a44 ; ll_generateTxBuffer1 + 328
        0x1fff49d6:    9806        ..      LDR      r0,[sp,#0x18]
        0x1fff49d8:    7d80        .}      LDRB     r0,[r0,#0x16]
        0x1fff49da:    2800        .(      CMP      r0,#0
        0x1fff49dc:    d132        2.      BNE      0x1fff4a44 ; ll_generateTxBuffer1 + 328
        0x1fff49de:    9807        ..      LDR      r0,[sp,#0x1c]
        0x1fff49e0:    7c00        .|      LDRB     r0,[r0,#0x10]
        0x1fff49e2:    42b8        .B      CMP      r0,r7
        0x1fff49e4:    da2e        ..      BGE      0x1fff4a44 ; ll_generateTxBuffer1 + 328
        0x1fff49e6:    485f        _H      LDR      r0,[pc,#380] ; [0x1fff4b64] = 0x1fff0d30
        0x1fff49e8:    7881        .x      LDRB     r1,[r0,#2]
        0x1fff49ea:    201c        .       MOVS     r0,#0x1c
        0x1fff49ec:    4341        AC      MULS     r1,r0,r1
        0x1fff49ee:    4861        aH      LDR      r0,[pc,#388] ; [0x1fff4b74] = 0x1fff7598
        0x1fff49f0:    1808        ..      ADDS     r0,r1,r0
        0x1fff49f2:    7a01        .z      LDRB     r1,[r0,#8]
        0x1fff49f4:    2900        .)      CMP      r1,#0
        0x1fff49f6:    d125        %.      BNE      0x1fff4a44 ; ll_generateTxBuffer1 + 328
        0x1fff49f8:    2101        .!      MOVS     r1,#1
        0x1fff49fa:    7201        .r      STRB     r1,[r0,#8]
        0x1fff49fc:    00a9        ..      LSLS     r1,r5,#2
        0x1fff49fe:    1909        ..      ADDS     r1,r1,r4
        0x1fff4a00:    31ff        .1      ADDS     r1,r1,#0xff
        0x1fff4a02:    68c0        .h      LDR      r0,[r0,#0xc]
        0x1fff4a04:    3181        .1      ADDS     r1,r1,#0x81
        0x1fff4a06:    6308        .c      STR      r0,[r1,#0x30]
        0x1fff4a08:    2800        .(      CMP      r0,#0
        0x1fff4a0a:    d01f        ..      BEQ      0x1fff4a4c ; ll_generateTxBuffer1 + 336
        0x1fff4a0c:    2005        .       MOVS     r0,#5
        0x1fff4a0e:    01c0        ..      LSLS     r0,r0,#7
        0x1fff4a10:    1820         .      ADDS     r0,r4,r0
        0x1fff4a12:    7881        .x      LDRB     r1,[r0,#2]
        0x1fff4a14:    1c6d        m.      ADDS     r5,r5,#1
        0x1fff4a16:    1c49        I.      ADDS     r1,r1,#1
        0x1fff4a18:    7081        .p      STRB     r1,[r0,#2]
        0x1fff4a1a:    20ff        .       MOVS     r0,#0xff
        0x1fff4a1c:    3049        I0      ADDS     r0,r0,#0x49
        0x1fff4a1e:    5b00        .[      LDRH     r0,[r0,r4]
        0x1fff4a20:    b2ed        ..      UXTB     r5,r5
        0x1fff4a22:    0a01        ..      LSRS     r1,r0,#8
        0x1fff4a24:    4620         F      MOV      r0,r4
        0x1fff4a26:    30ff        .0      ADDS     r0,r0,#0xff
        0x1fff4a28:    3049        I0      ADDS     r0,r0,#0x49
        0x1fff4a2a:    1c89        ..      ADDS     r1,r1,#2
        0x1fff4a2c:    f7fdf900    ....    BL       $Ven$TT$L$$ll_hw_write_tfifo ; 0x1fff1c30
        0x1fff4a30:    9806        ..      LDR      r0,[sp,#0x18]
        0x1fff4a32:    2100        .!      MOVS     r1,#0
        0x1fff4a34:    75c1        .u      STRB     r1,[r0,#0x17]
        0x1fff4a36:    9806        ..      LDR      r0,[sp,#0x18]
        0x1fff4a38:    2101        .!      MOVS     r1,#1
        0x1fff4a3a:    7581        .u      STRB     r1,[r0,#0x16]
        0x1fff4a3c:    484c        LH      LDR      r0,[pc,#304] ; [0x1fff4b70] = 0x1fff10e0
        0x1fff4a3e:    1c76        v.      ADDS     r6,r6,#1
        0x1fff4a40:    70c1        .p      STRB     r1,[r0,#3]
        0x1fff4a42:    1e7f        ..      SUBS     r7,r7,#1
        0x1fff4a44:    9807        ..      LDR      r0,[sp,#0x1c]
        0x1fff4a46:    7c00        .|      LDRB     r0,[r0,#0x10]
        0x1fff4a48:    2800        .(      CMP      r0,#0
        0x1fff4a4a:    d002        ..      BEQ      0x1fff4a52 ; ll_generateTxBuffer1 + 342
        0x1fff4a4c:    4630        0F      MOV      r0,r6
        0x1fff4a4e:    b00b        ..      ADD      sp,sp,#0x2c
        0x1fff4a50:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff4a52:    4620         F      MOV      r0,r4
        0x1fff4a54:    f7fdf8f8    ....    BL       $Ven$TT$L$$getTxBufferSize ; 0x1fff1c48
        0x1fff4a58:    9004        ..      STR      r0,[sp,#0x10]
        0x1fff4a5a:    2800        .(      CMP      r0,#0
        0x1fff4a5c:    dd3b        ;.      BLE      0x1fff4ad6 ; ll_generateTxBuffer1 + 474
        0x1fff4a5e:    2f00        ./      CMP      r7,#0
        0x1fff4a60:    dd39        9.      BLE      0x1fff4ad6 ; ll_generateTxBuffer1 + 474
        0x1fff4a62:    2000        .       MOVS     r0,#0
        0x1fff4a64:    e031        1.      B        0x1fff4aca ; ll_generateTxBuffer1 + 462
        0x1fff4a66:    4620         F      MOV      r0,r4
        0x1fff4a68:    f7fdf8f4    ....    BL       $Ven$TT$L$$get_tx_read_ptr ; 0x1fff1c54
        0x1fff4a6c:    0080        ..      LSLS     r0,r0,#2
        0x1fff4a6e:    1900        ..      ADDS     r0,r0,r4
        0x1fff4a70:    30ff        .0      ADDS     r0,r0,#0xff
        0x1fff4a72:    3001        .0      ADDS     r0,#1
        0x1fff4a74:    9007        ..      STR      r0,[sp,#0x1c]
        0x1fff4a76:    6ec0        .n      LDR      r0,[r0,#0x6c]
        0x1fff4a78:    8881        ..      LDRH     r1,[r0,#4]
        0x1fff4a7a:    1d00        ..      ADDS     r0,r0,#4
        0x1fff4a7c:    0a09        ..      LSRS     r1,r1,#8
        0x1fff4a7e:    1c89        ..      ADDS     r1,r1,#2
        0x1fff4a80:    f7fdf8d6    ....    BL       $Ven$TT$L$$ll_hw_write_tfifo ; 0x1fff1c30
        0x1fff4a84:    2800        .(      CMP      r0,#0
        0x1fff4a86:    d01e        ..      BEQ      0x1fff4ac6 ; ll_generateTxBuffer1 + 458
        0x1fff4a88:    9807        ..      LDR      r0,[sp,#0x1c]
        0x1fff4a8a:    6ec1        .n      LDR      r1,[r0,#0x6c]
        0x1fff4a8c:    00a8        ..      LSLS     r0,r5,#2
        0x1fff4a8e:    1900        ..      ADDS     r0,r0,r4
        0x1fff4a90:    30ff        .0      ADDS     r0,r0,#0xff
        0x1fff4a92:    3081        .0      ADDS     r0,r0,#0x81
        0x1fff4a94:    6301        .c      STR      r1,[r0,#0x30]
        0x1fff4a96:    9907        ..      LDR      r1,[sp,#0x1c]
        0x1fff4a98:    2000        .       MOVS     r0,#0
        0x1fff4a9a:    66c8        .f      STR      r0,[r1,#0x6c]
        0x1fff4a9c:    2005        .       MOVS     r0,#5
        0x1fff4a9e:    01c0        ..      LSLS     r0,r0,#7
        0x1fff4aa0:    1820         .      ADDS     r0,r4,r0
        0x1fff4aa2:    7881        .x      LDRB     r1,[r0,#2]
        0x1fff4aa4:    1c6d        m.      ADDS     r5,r5,#1
        0x1fff4aa6:    1c49        I.      ADDS     r1,r1,#1
        0x1fff4aa8:    7081        .p      STRB     r1,[r0,#2]
        0x1fff4aaa:    7801        .x      LDRB     r1,[r0,#0]
        0x1fff4aac:    b2ed        ..      UXTB     r5,r5
        0x1fff4aae:    1e49        I.      SUBS     r1,r1,#1
        0x1fff4ab0:    7001        .p      STRB     r1,[r0,#0]
        0x1fff4ab2:    4620         F      MOV      r0,r4
        0x1fff4ab4:    f7fdf8d4    ....    BL       $Ven$TT$L$$update_tx_read_ptr ; 0x1fff1c60
        0x1fff4ab8:    1de1        ..      ADDS     r1,r4,#7
        0x1fff4aba:    31ff        .1      ADDS     r1,r1,#0xff
        0x1fff4abc:    31fa        .1      ADDS     r1,r1,#0xfa
        0x1fff4abe:    6a08        .j      LDR      r0,[r1,#0x20]
        0x1fff4ac0:    1c40        @.      ADDS     r0,r0,#1
        0x1fff4ac2:    1c76        v.      ADDS     r6,r6,#1
        0x1fff4ac4:    6208        .b      STR      r0,[r1,#0x20]
        0x1fff4ac6:    9800        ..      LDR      r0,[sp,#0]
        0x1fff4ac8:    1c40        @.      ADDS     r0,r0,#1
        0x1fff4aca:    9904        ..      LDR      r1,[sp,#0x10]
        0x1fff4acc:    9000        ..      STR      r0,[sp,#0]
        0x1fff4ace:    4288        .B      CMP      r0,r1
        0x1fff4ad0:    da01        ..      BGE      0x1fff4ad6 ; ll_generateTxBuffer1 + 474
        0x1fff4ad2:    42b8        .B      CMP      r0,r7
        0x1fff4ad4:    dbc7        ..      BLT      0x1fff4a66 ; ll_generateTxBuffer1 + 362
        0x1fff4ad6:    4923        #I      LDR      r1,[pc,#140] ; [0x1fff4b64] = 0x1fff0d30
        0x1fff4ad8:    221c        ."      MOVS     r2,#0x1c
        0x1fff4ada:    7888        .x      LDRB     r0,[r1,#2]
        0x1fff4adc:    4b25        %K      LDR      r3,[pc,#148] ; [0x1fff4b74] = 0x1fff7598
        0x1fff4ade:    4350        PC      MULS     r0,r2,r0
        0x1fff4ae0:    18c2        ..      ADDS     r2,r0,r3
        0x1fff4ae2:    7a10        .z      LDRB     r0,[r2,#8]
        0x1fff4ae4:    2800        .(      CMP      r0,#0
        0x1fff4ae6:    d022        ".      BEQ      0x1fff4b2e ; ll_generateTxBuffer1 + 562
        0x1fff4ae8:    2000        .       MOVS     r0,#0
        0x1fff4aea:    1e69        i.      SUBS     r1,r5,#1
        0x1fff4aec:    e01d        ..      B        0x1fff4b2a ; ll_generateTxBuffer1 + 558
        0x1fff4aee:    0083        ..      LSLS     r3,r0,#2
        0x1fff4af0:    191b        ..      ADDS     r3,r3,r4
        0x1fff4af2:    33ff        .3      ADDS     r3,r3,#0xff
        0x1fff4af4:    3381        .3      ADDS     r3,r3,#0x81
        0x1fff4af6:    6b1b        .k      LDR      r3,[r3,#0x30]
        0x1fff4af8:    68d7        .h      LDR      r7,[r2,#0xc]
        0x1fff4afa:    42bb        .B      CMP      r3,r7
        0x1fff4afc:    d114        ..      BNE      0x1fff4b28 ; ll_generateTxBuffer1 + 556
        0x1fff4afe:    4288        .B      CMP      r0,r1
        0x1fff4b00:    d012        ..      BEQ      0x1fff4b28 ; ll_generateTxBuffer1 + 556
        0x1fff4b02:    00a9        ..      LSLS     r1,r5,#2
        0x1fff4b04:    190a        ..      ADDS     r2,r1,r4
        0x1fff4b06:    0080        ..      LSLS     r0,r0,#2
        0x1fff4b08:    32ff        .2      ADDS     r2,r2,#0xff
        0x1fff4b0a:    1900        ..      ADDS     r0,r0,r4
        0x1fff4b0c:    3281        .2      ADDS     r2,r2,#0x81
        0x1fff4b0e:    30ff        .0      ADDS     r0,r0,#0xff
        0x1fff4b10:    3081        .0      ADDS     r0,r0,#0x81
        0x1fff4b12:    6ad1        .j      LDR      r1,[r2,#0x2c]
        0x1fff4b14:    6301        .c      STR      r1,[r0,#0x30]
        0x1fff4b16:    4813        .H      LDR      r0,[pc,#76] ; [0x1fff4b64] = 0x1fff0d30
        0x1fff4b18:    7881        .x      LDRB     r1,[r0,#2]
        0x1fff4b1a:    201c        .       MOVS     r0,#0x1c
        0x1fff4b1c:    4341        AC      MULS     r1,r0,r1
        0x1fff4b1e:    4815        .H      LDR      r0,[pc,#84] ; [0x1fff4b74] = 0x1fff7598
        0x1fff4b20:    1808        ..      ADDS     r0,r1,r0
        0x1fff4b22:    68c0        .h      LDR      r0,[r0,#0xc]
        0x1fff4b24:    62d0        .b      STR      r0,[r2,#0x2c]
        0x1fff4b26:    e002        ..      B        0x1fff4b2e ; ll_generateTxBuffer1 + 562
        0x1fff4b28:    1c40        @.      ADDS     r0,r0,#1
        0x1fff4b2a:    42a8        .B      CMP      r0,r5
        0x1fff4b2c:    dbdf        ..      BLT      0x1fff4aee ; ll_generateTxBuffer1 + 498
        0x1fff4b2e:    2009        .       MOVS     r0,#9
        0x1fff4b30:    0180        ..      LSLS     r0,r0,#6
        0x1fff4b32:    1820         .      ADDS     r0,r4,r0
        0x1fff4b34:    7e81        .~      LDRB     r1,[r0,#0x1a]
        0x1fff4b36:    2900        .)      CMP      r1,#0
        0x1fff4b38:    d011        ..      BEQ      0x1fff4b5e ; ll_generateTxBuffer1 + 610
        0x1fff4b3a:    7d01        .}      LDRB     r1,[r0,#0x14]
        0x1fff4b3c:    2900        .)      CMP      r1,#0
        0x1fff4b3e:    d00e        ..      BEQ      0x1fff4b5e ; ll_generateTxBuffer1 + 610
        0x1fff4b40:    8e42        B.      LDRH     r2,[r0,#0x32]
        0x1fff4b42:    2a00        .*      CMP      r2,#0
        0x1fff4b44:    d00b        ..      BEQ      0x1fff4b5e ; ll_generateTxBuffer1 + 610
        0x1fff4b46:    7f81        ..      LDRB     r1,[r0,#0x1e]
        0x1fff4b48:    4291        .B      CMP      r1,r2
        0x1fff4b4a:    d202        ..      BCS      0x1fff4b52 ; ll_generateTxBuffer1 + 598
        0x1fff4b4c:    1c49        I.      ADDS     r1,r1,#1
        0x1fff4b4e:    7781        .w      STRB     r1,[r0,#0x1e]
        0x1fff4b50:    e005        ..      B        0x1fff4b5e ; ll_generateTxBuffer1 + 610
        0x1fff4b52:    2100        .!      MOVS     r1,#0
        0x1fff4b54:    7781        .w      STRB     r1,[r0,#0x1e]
        0x1fff4b56:    211a        .!      MOVS     r1,#0x1a
        0x1fff4b58:    4620         F      MOV      r0,r4
        0x1fff4b5a:    f7fdf887    ....    BL       $Ven$TT$L$$llEnqueueCtrlPkt ; 0x1fff1c6c
        0x1fff4b5e:    b2b0        ..      UXTH     r0,r6
        0x1fff4b60:    e775        u.      B        0x1fff4a4e ; ll_generateTxBuffer1 + 338
    $d
        0x1fff4b62:    0000        ..      DCW    0
        0x1fff4b64:    1fff0d30    0...    DCD    536808752
        0x1fff4b68:    1fff0934    4...    DCD    536807732
        0x1fff4b6c:    40031400    ...@    DCD    1073943552
        0x1fff4b70:    1fff10e0    ....    DCD    536809696
        0x1fff4b74:    1fff7598    .u..    DCD    536835480
    $t
    i.ll_hw_go1
    ll_hw_go1
        0x1fff4b78:    b5f0        ..      PUSH     {r4-r7,lr}
        0x1fff4b7a:    b089        ..      SUB      sp,sp,#0x24
        0x1fff4b7c:    f7fcff2c    ..,.    BL       $Ven$TT$L$$ll_hw_get_tr_mode ; 0x1fff19d8
        0x1fff4b80:    4605        .F      MOV      r5,r0
        0x1fff4b82:    489a        .H      LDR      r0,[pc,#616] ; [0x1fff4dec] = 0x1fff0d30
        0x1fff4b84:    21a1        .!      MOVS     r1,#0xa1
        0x1fff4b86:    7880        .x      LDRB     r0,[r0,#2]
        0x1fff4b88:    0089        ..      LSLS     r1,r1,#2
        0x1fff4b8a:    4348        HC      MULS     r0,r1,r0
        0x1fff4b8c:    4998        .I      LDR      r1,[pc,#608] ; [0x1fff4df0] = 0x1fff0934
        0x1fff4b8e:    6809        .h      LDR      r1,[r1,#0]
        0x1fff4b90:    1844        D.      ADDS     r4,r0,r1
        0x1fff4b92:    4898        .H      LDR      r0,[pc,#608] ; [0x1fff4df4] = 0x1fff0998
        0x1fff4b94:    6800        .h      LDR      r0,[r0,#0]
        0x1fff4b96:    2801        .(      CMP      r0,#1
        0x1fff4b98:    d103        ..      BNE      0x1fff4ba2 ; ll_hw_go1 + 42
        0x1fff4b9a:    4897        .H      LDR      r0,[pc,#604] ; [0x1fff4df8] = 0x1fff0ffc
        0x1fff4b9c:    6d81        .m      LDR      r1,[r0,#0x58]
        0x1fff4b9e:    1c49        I.      ADDS     r1,r1,#1
        0x1fff4ba0:    6581        .e      STR      r1,[r0,#0x58]
        0x1fff4ba2:    2d05        .-      CMP      r5,#5
        0x1fff4ba4:    d001        ..      BEQ      0x1fff4baa ; ll_hw_go1 + 50
        0x1fff4ba6:    2d04        .-      CMP      r5,#4
        0x1fff4ba8:    d102        ..      BNE      0x1fff4bb0 ; ll_hw_go1 + 56
        0x1fff4baa:    4620         F      MOV      r0,r4
        0x1fff4bac:    f7fffe78    ..x.    BL       ll_flow_ctrl_restore ; 0x1fff48a0
        0x1fff4bb0:    f7fcff00    ....    BL       $Ven$TT$L$$read_current_fine_time ; 0x1fff19b4
        0x1fff4bb4:    4991        .I      LDR      r1,[pc,#580] ; [0x1fff4dfc] = 0x1fff6b80
        0x1fff4bb6:    4a92        .J      LDR      r2,[pc,#584] ; [0x1fff4e00] = 0x3fff
        0x1fff4bb8:    6108        .a      STR      r0,[r1,#0x10]
        0x1fff4bba:    4892        .H      LDR      r0,[pc,#584] ; [0x1fff4e04] = 0x40031000
        0x1fff4bbc:    6142        Ba      STR      r2,[r0,#0x14]
        0x1fff4bbe:    2201        ."      MOVS     r2,#1
        0x1fff4bc0:    60c2        .`      STR      r2,[r0,#0xc]
        0x1fff4bc2:    6002        .`      STR      r2,[r0,#0]
        0x1fff4bc4:    2d05        .-      CMP      r5,#5
        0x1fff4bc6:    d017        ..      BEQ      0x1fff4bf8 ; ll_hw_go1 + 128
        0x1fff4bc8:    2d04        .-      CMP      r5,#4
        0x1fff4bca:    d17d        }.      BNE      0x1fff4cc8 ; ll_hw_go1 + 336
        0x1fff4bcc:    8ee0        ..      LDRH     r0,[r4,#0x36]
        0x1fff4bce:    4a8e        .J      LDR      r2,[pc,#568] ; [0x1fff4e08] = 0x271
        0x1fff4bd0:    68c9        .h      LDR      r1,[r1,#0xc]
        0x1fff4bd2:    4350        PC      MULS     r0,r2,r0
        0x1fff4bd4:    22ff        ."      MOVS     r2,#0xff
        0x1fff4bd6:    32df        .2      ADDS     r2,r2,#0xdf
        0x1fff4bd8:    5b12        .[      LDRH     r2,[r2,r4]
        0x1fff4bda:    1a80        ..      SUBS     r0,r0,r2
        0x1fff4bdc:    22f8        ."      MOVS     r2,#0xf8
        0x1fff4bde:    5852        RX      LDR      r2,[r2,r1]
        0x1fff4be0:    6c89        .l      LDR      r1,[r1,#0x48]
        0x1fff4be2:    1a80        ..      SUBS     r0,r0,r2
        0x1fff4be4:    4a81        .J      LDR      r2,[pc,#516] ; [0x1fff4dec] = 0x1fff0d30
        0x1fff4be6:    7852        Rx      LDRB     r2,[r2,#1]
        0x1fff4be8:    0852        R.      LSRS     r2,r2,#1
        0x1fff4bea:    40d0        .@      LSRS     r0,r0,r2
        0x1fff4bec:    4281        .B      CMP      r1,r0
        0x1fff4bee:    d200        ..      BCS      0x1fff4bf2 ; ll_hw_go1 + 122
        0x1fff4bf0:    4608        .F      MOV      r0,r1
        0x1fff4bf2:    f7fdf841    ..A.    BL       $Ven$TT$L$$ll_hw_set_loop_timeout ; 0x1fff1c78
        0x1fff4bf6:    e004        ..      B        0x1fff4c02 ; ll_hw_go1 + 138
        0x1fff4bf8:    7960        `y      LDRB     r0,[r4,#5]
        0x1fff4bfa:    2801        .(      CMP      r0,#1
        0x1fff4bfc:    d001        ..      BEQ      0x1fff4c02 ; ll_hw_go1 + 138
        0x1fff4bfe:    f7fefce7    ....    BL       enlarge_rx_timeout_1st ; 0x1fff35d0
        0x1fff4c02:    f7fcfed7    ....    BL       $Ven$TT$L$$read_current_fine_time ; 0x1fff19b4
        0x1fff4c06:    9006        ..      STR      r0,[sp,#0x18]
        0x1fff4c08:    4880        .H      LDR      r0,[pc,#512] ; [0x1fff4e0c] = 0x1fff0917
        0x1fff4c0a:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff4c0c:    2800        .(      CMP      r0,#0
        0x1fff4c0e:    d005        ..      BEQ      0x1fff4c1c ; ll_hw_go1 + 164
        0x1fff4c10:    20ff        .       MOVS     r0,#0xff
        0x1fff4c12:    3011        .0      ADDS     r0,r0,#0x11
        0x1fff4c14:    2700        .'      MOVS     r7,#0
        0x1fff4c16:    463e        >F      MOV      r6,r7
        0x1fff4c18:    9000        ..      STR      r0,[sp,#0]
        0x1fff4c1a:    e033        3.      B        0x1fff4c84 ; ll_hw_go1 + 268
        0x1fff4c1c:    2034        4       MOVS     r0,#0x34
        0x1fff4c1e:    e7f9        ..      B        0x1fff4c14 ; ll_hw_go1 + 156
        0x1fff4c20:    4620         F      MOV      r0,r4
        0x1fff4c22:    f7fdf82f    ../.    BL       $Ven$TT$L$$get_rx_write_ptr ; 0x1fff1c84
        0x1fff4c26:    1981        ..      ADDS     r1,r0,r6
        0x1fff4c28:    4879        yH      LDR      r0,[pc,#484] ; [0x1fff4e10] = 0x1fff0916
        0x1fff4c2a:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff4c2c:    4281        .B      CMP      r1,r0
        0x1fff4c2e:    4620         F      MOV      r0,r4
        0x1fff4c30:    d203        ..      BCS      0x1fff4c3a ; ll_hw_go1 + 194
        0x1fff4c32:    f7fdf827    ..'.    BL       $Ven$TT$L$$get_rx_write_ptr ; 0x1fff1c84
        0x1fff4c36:    1980        ..      ADDS     r0,r0,r6
        0x1fff4c38:    e005        ..      B        0x1fff4c46 ; ll_hw_go1 + 206
        0x1fff4c3a:    f7fdf823    ..#.    BL       $Ven$TT$L$$get_rx_write_ptr ; 0x1fff1c84
        0x1fff4c3e:    1981        ..      ADDS     r1,r0,r6
        0x1fff4c40:    4873        sH      LDR      r0,[pc,#460] ; [0x1fff4e10] = 0x1fff0916
        0x1fff4c42:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff4c44:    1a08        ..      SUBS     r0,r1,r0
        0x1fff4c46:    b2c0        ..      UXTB     r0,r0
        0x1fff4c48:    9007        ..      STR      r0,[sp,#0x1c]
        0x1fff4c4a:    4868        hH      LDR      r0,[pc,#416] ; [0x1fff4dec] = 0x1fff0d30
        0x1fff4c4c:    2202        ."      MOVS     r2,#2
        0x1fff4c4e:    7880        .x      LDRB     r0,[r0,#2]
        0x1fff4c50:    9900        ..      LDR      r1,[sp,#0]
        0x1fff4c52:    f000f96d    ..m.    BL       ll_osal_mem_alloc ; 0x1fff4f30
        0x1fff4c56:    9907        ..      LDR      r1,[sp,#0x1c]
        0x1fff4c58:    0089        ..      LSLS     r1,r1,#2
        0x1fff4c5a:    1909        ..      ADDS     r1,r1,r4
        0x1fff4c5c:    31ff        .1      ADDS     r1,r1,#0xff
        0x1fff4c5e:    3181        .1      ADDS     r1,r1,#0x81
        0x1fff4c60:    60c8        .`      STR      r0,[r1,#0xc]
        0x1fff4c62:    2800        .(      CMP      r0,#0
        0x1fff4c64:    d013        ..      BEQ      0x1fff4c8e ; ll_hw_go1 + 278
        0x1fff4c66:    2005        .       MOVS     r0,#5
        0x1fff4c68:    01c0        ..      LSLS     r0,r0,#7
        0x1fff4c6a:    1820         .      ADDS     r0,r4,r0
        0x1fff4c6c:    7842        Bx      LDRB     r2,[r0,#1]
        0x1fff4c6e:    1c7f        ..      ADDS     r7,r7,#1
        0x1fff4c70:    1c52        R.      ADDS     r2,r2,#1
        0x1fff4c72:    7042        Bp      STRB     r2,[r0,#1]
        0x1fff4c74:    2000        .       MOVS     r0,#0
        0x1fff4c76:    68ca        .h      LDR      r2,[r1,#0xc]
        0x1fff4c78:    1c76        v.      ADDS     r6,r6,#1
        0x1fff4c7a:    6010        .`      STR      r0,[r2,#0]
        0x1fff4c7c:    68c9        .h      LDR      r1,[r1,#0xc]
        0x1fff4c7e:    b2ff        ..      UXTB     r7,r7
        0x1fff4c80:    8088        ..      STRH     r0,[r1,#4]
        0x1fff4c82:    b2f6        ..      UXTB     r6,r6
        0x1fff4c84:    4620         F      MOV      r0,r4
        0x1fff4c86:    f7fdf803    ....    BL       $Ven$TT$L$$getRxBufferFree ; 0x1fff1c90
        0x1fff4c8a:    42b0        .B      CMP      r0,r6
        0x1fff4c8c:    d8c8        ..      BHI      0x1fff4c20 ; ll_hw_go1 + 168
        0x1fff4c8e:    485d        ]H      LDR      r0,[pc,#372] ; [0x1fff4e04] = 0x40031000
        0x1fff4c90:    21ff        .!      MOVS     r1,#0xff
        0x1fff4c92:    0409        ..      LSLS     r1,r1,#16
        0x1fff4c94:    6842        Bh      LDR      r2,[r0,#4]
        0x1fff4c96:    2f00        ./      CMP      r7,#0
        0x1fff4c98:    d004        ..      BEQ      0x1fff4ca4 ; ll_hw_go1 + 300
        0x1fff4c9a:    438a        .C      BICS     r2,r2,r1
        0x1fff4c9c:    0439        9.      LSLS     r1,r7,#16
        0x1fff4c9e:    430a        .C      ORRS     r2,r2,r1
        0x1fff4ca0:    6042        B`      STR      r2,[r0,#4]
        0x1fff4ca2:    e025        %.      B        0x1fff4cf0 ; ll_hw_go1 + 376
        0x1fff4ca4:    438a        .C      BICS     r2,r2,r1
        0x1fff4ca6:    2101        .!      MOVS     r1,#1
        0x1fff4ca8:    0409        ..      LSLS     r1,r1,#16
        0x1fff4caa:    1851        Q.      ADDS     r1,r2,r1
        0x1fff4cac:    6041        A`      STR      r1,[r0,#4]
        0x1fff4cae:    7921        !y      LDRB     r1,[r4,#4]
        0x1fff4cb0:    2001        .       MOVS     r0,#1
        0x1fff4cb2:    004a        J.      LSLS     r2,r1,#1
        0x1fff4cb4:    4957        WI      LDR      r1,[pc,#348] ; [0x1fff4e14] = 0x1fff7578
        0x1fff4cb6:    5488        .T      STRB     r0,[r1,r2]
        0x1fff4cb8:    20ff        .       MOVS     r0,#0xff
        0x1fff4cba:    3035        50      ADDS     r0,r0,#0x35
        0x1fff4cbc:    5d00        .]      LDRB     r0,[r0,r4]
        0x1fff4cbe:    7922        "y      LDRB     r2,[r4,#4]
        0x1fff4cc0:    07c0        ..      LSLS     r0,r0,#31
        0x1fff4cc2:    0fc0        ..      LSRS     r0,r0,#31
        0x1fff4cc4:    0052        R.      LSLS     r2,r2,#1
        0x1fff4cc6:    e000        ..      B        0x1fff4cca ; ll_hw_go1 + 338
        0x1fff4cc8:    e015        ..      B        0x1fff4cf6 ; ll_hw_go1 + 382
        0x1fff4cca:    1852        R.      ADDS     r2,r2,r1
        0x1fff4ccc:    7050        Pp      STRB     r0,[r2,#1]
        0x1fff4cce:    484d        MH      LDR      r0,[pc,#308] ; [0x1fff4e04] = 0x40031000
        0x1fff4cd0:    3040        @0      ADDS     r0,r0,#0x40
        0x1fff4cd2:    6802        .h      LDR      r2,[r0,#0]
        0x1fff4cd4:    1583        ..      ASRS     r3,r0,#22
        0x1fff4cd6:    431a        .C      ORRS     r2,r2,r3
        0x1fff4cd8:    6002        .`      STR      r2,[r0,#0]
        0x1fff4cda:    6802        .h      LDR      r2,[r0,#0]
        0x1fff4cdc:    7923        #y      LDRB     r3,[r4,#4]
        0x1fff4cde:    0852        R.      LSRS     r2,r2,#1
        0x1fff4ce0:    0052        R.      LSLS     r2,r2,#1
        0x1fff4ce2:    005b        [.      LSLS     r3,r3,#1
        0x1fff4ce4:    1859        Y.      ADDS     r1,r3,r1
        0x1fff4ce6:    7849        Ix      LDRB     r1,[r1,#1]
        0x1fff4ce8:    430a        .C      ORRS     r2,r2,r1
        0x1fff4cea:    6002        .`      STR      r2,[r0,#0]
        0x1fff4cec:    2102        .!      MOVS     r1,#2
        0x1fff4cee:    6281        .b      STR      r1,[r0,#0x28]
        0x1fff4cf0:    9806        ..      LDR      r0,[sp,#0x18]
        0x1fff4cf2:    f000fa2b    ..+.    BL       llbuf_alloc_time_statics ; 0x1fff514c
        0x1fff4cf6:    4948        HI      LDR      r1,[pc,#288] ; [0x1fff4e18] = 0x40030080
        0x1fff4cf8:    6b48        Hk      LDR      r0,[r1,#0x34]
        0x1fff4cfa:    4a48        HJ      LDR      r2,[pc,#288] ; [0x1fff4e1c] = 0x1fff098c
        0x1fff4cfc:    b2c0        ..      UXTB     r0,r0
        0x1fff4cfe:    7812        .x      LDRB     r2,[r2,#0]
        0x1fff4d00:    2a00        .*      CMP      r2,#0
        0x1fff4d02:    d117        ..      BNE      0x1fff4d34 ; ll_hw_go1 + 444
        0x1fff4d04:    4a46        FJ      LDR      r2,[pc,#280] ; [0x1fff4e20] = 0x1fff0a68
        0x1fff4d06:    2300        .#      MOVS     r3,#0
        0x1fff4d08:    56d3        .V      LDRSB    r3,[r2,r3]
        0x1fff4d0a:    2b00        .+      CMP      r3,#0
        0x1fff4d0c:    4b45        EK      LDR      r3,[pc,#276] ; [0x1fff4e24] = 0
        0x1fff4d0e:    56d3        .V      LDRSB    r3,[r2,r3]
        0x1fff4d10:    db06        ..      BLT      0x1fff4d20 ; ll_hw_go1 + 424
        0x1fff4d12:    041b        ..      LSLS     r3,r3,#16
        0x1fff4d14:    2600        .&      MOVS     r6,#0
        0x1fff4d16:    5796        .W      LDRSB    r6,[r2,r6]
        0x1fff4d18:    0232        2.      LSLS     r2,r6,#8
        0x1fff4d1a:    189a        ..      ADDS     r2,r3,r2
        0x1fff4d1c:    1812        ..      ADDS     r2,r2,r0
        0x1fff4d1e:    e008        ..      B        0x1fff4d32 ; ll_hw_go1 + 442
        0x1fff4d20:    33ff        .3      ADDS     r3,r3,#0xff
        0x1fff4d22:    041b        ..      LSLS     r3,r3,#16
        0x1fff4d24:    2600        .&      MOVS     r6,#0
        0x1fff4d26:    5796        .W      LDRSB    r6,[r2,r6]
        0x1fff4d28:    0232        2.      LSLS     r2,r6,#8
        0x1fff4d2a:    189a        ..      ADDS     r2,r3,r2
        0x1fff4d2c:    4b3e        >K      LDR      r3,[pc,#248] ; [0x1fff4e28] = 0xfeff
        0x1fff4d2e:    1812        ..      ADDS     r2,r2,r0
        0x1fff4d30:    18d2        ..      ADDS     r2,r2,r3
        0x1fff4d32:    634a        Jc      STR      r2,[r1,#0x34]
        0x1fff4d34:    2802        .(      CMP      r0,#2
        0x1fff4d36:    d201        ..      BCS      0x1fff4d3c ; ll_hw_go1 + 452
        0x1fff4d38:    2002        .       MOVS     r0,#2
        0x1fff4d3a:    e002        ..      B        0x1fff4d42 ; ll_hw_go1 + 458
        0x1fff4d3c:    2850        P(      CMP      r0,#0x50
        0x1fff4d3e:    d900        ..      BLS      0x1fff4d42 ; ll_hw_go1 + 458
        0x1fff4d40:    2050        P       MOVS     r0,#0x50
        0x1fff4d42:    4a3a        :J      LDR      r2,[pc,#232] ; [0x1fff4e2c] = 0x1fff0a49
        0x1fff4d44:    7812        .x      LDRB     r2,[r2,#0]
        0x1fff4d46:    2a02        .*      CMP      r2,#2
        0x1fff4d48:    d011        ..      BEQ      0x1fff4d6e ; ll_hw_go1 + 502
        0x1fff4d4a:    4a39        9J      LDR      r2,[pc,#228] ; [0x1fff4e30] = 0x1fff0a44
        0x1fff4d4c:    7816        .x      LDRB     r6,[r2,#0]
        0x1fff4d4e:    4b39        9K      LDR      r3,[pc,#228] ; [0x1fff4e34] = 0x1fff0a45
        0x1fff4d50:    781f        .x      LDRB     r7,[r3,#0]
        0x1fff4d52:    42be        .B      CMP      r6,r7
        0x1fff4d54:    d90f        ..      BLS      0x1fff4d76 ; ll_hw_go1 + 510
        0x1fff4d56:    7816        .x      LDRB     r6,[r2,#0]
        0x1fff4d58:    781b        .x      LDRB     r3,[r3,#0]
        0x1fff4d5a:    1af3        ..      SUBS     r3,r6,r3
        0x1fff4d5c:    1e80        ..      SUBS     r0,r0,#2
        0x1fff4d5e:    1040        @.      ASRS     r0,r0,#1
        0x1fff4d60:    4343        CC      MULS     r3,r0,r3
        0x1fff4d62:    7810        .x      LDRB     r0,[r2,#0]
        0x1fff4d64:    0140        @.      LSLS     r0,r0,#5
        0x1fff4d66:    1ac0        ..      SUBS     r0,r0,r3
        0x1fff4d68:    3010        .0      ADDS     r0,r0,#0x10
        0x1fff4d6a:    1140        @.      ASRS     r0,r0,#5
        0x1fff4d6c:    e004        ..      B        0x1fff4d78 ; ll_hw_go1 + 512
        0x1fff4d6e:    4a32        2J      LDR      r2,[pc,#200] ; [0x1fff4e38] = 0x1fff0a46
        0x1fff4d70:    7816        .x      LDRB     r6,[r2,#0]
        0x1fff4d72:    4b32        2K      LDR      r3,[pc,#200] ; [0x1fff4e3c] = 0x1fff0a47
        0x1fff4d74:    e7ec        ..      B        0x1fff4d50 ; ll_hw_go1 + 472
        0x1fff4d76:    7810        .x      LDRB     r0,[r2,#0]
        0x1fff4d78:    694a        Ji      LDR      r2,[r1,#0x14]
        0x1fff4d7a:    0a12        ..      LSRS     r2,r2,#8
        0x1fff4d7c:    0212        ..      LSLS     r2,r2,#8
        0x1fff4d7e:    4310        .C      ORRS     r0,r0,r2
        0x1fff4d80:    6148        Ha      STR      r0,[r1,#0x14]
        0x1fff4d82:    2d05        .-      CMP      r5,#5
        0x1fff4d84:    d001        ..      BEQ      0x1fff4d8a ; ll_hw_go1 + 530
        0x1fff4d86:    2d04        .-      CMP      r5,#4
        0x1fff4d88:    d116        ..      BNE      0x1fff4db8 ; ll_hw_go1 + 576
        0x1fff4d8a:    482d        -H      LDR      r0,[pc,#180] ; [0x1fff4e40] = 0x1fff08f9
        0x1fff4d8c:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff4d8e:    2800        .(      CMP      r0,#0
        0x1fff4d90:    d006        ..      BEQ      0x1fff4da0 ; ll_hw_go1 + 552
        0x1fff4d92:    482c        ,H      LDR      r0,[pc,#176] ; [0x1fff4e44] = 0x1fff0922
        0x1fff4d94:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff4d96:    2800        .(      CMP      r0,#0
        0x1fff4d98:    d002        ..      BEQ      0x1fff4da0 ; ll_hw_go1 + 552
        0x1fff4d9a:    2000        .       MOVS     r0,#0
        0x1fff4d9c:    f7fcff7e    ..~.    BL       $Ven$TT$L$$set_max_length ; 0x1fff1c9c
        0x1fff4da0:    34ff        .4      ADDS     r4,r4,#0xff
        0x1fff4da2:    34ff        .4      ADDS     r4,r4,#0xff
        0x1fff4da4:    3402        .4      ADDS     r4,#2
        0x1fff4da6:    7b20         {      LDRB     r0,[r4,#0xc]
        0x1fff4da8:    2804        .(      CMP      r0,#4
        0x1fff4daa:    d001        ..      BEQ      0x1fff4db0 ; ll_hw_go1 + 568
        0x1fff4dac:    2803        .(      CMP      r0,#3
        0x1fff4dae:    d103        ..      BNE      0x1fff4db8 ; ll_hw_go1 + 576
        0x1fff4db0:    20ff        .       MOVS     r0,#0xff
        0x1fff4db2:    305f        _0      ADDS     r0,r0,#0x5f
        0x1fff4db4:    f7fcfe52    ..R.    BL       $Ven$TT$L$$ll_hw_set_rx_timeout ; 0x1fff1a5c
        0x1fff4db8:    2d02        .-      CMP      r5,#2
        0x1fff4dba:    d112        ..      BNE      0x1fff4de2 ; ll_hw_go1 + 618
        0x1fff4dbc:    4822        "H      LDR      r0,[pc,#136] ; [0x1fff4e48] = 0x1fff091c
        0x1fff4dbe:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff4dc0:    2801        .(      CMP      r0,#1
        0x1fff4dc2:    d007        ..      BEQ      0x1fff4dd4 ; ll_hw_go1 + 604
        0x1fff4dc4:    2803        .(      CMP      r0,#3
        0x1fff4dc6:    d005        ..      BEQ      0x1fff4dd4 ; ll_hw_go1 + 604
        0x1fff4dc8:    2802        .(      CMP      r0,#2
        0x1fff4dca:    d003        ..      BEQ      0x1fff4dd4 ; ll_hw_go1 + 604
        0x1fff4dcc:    481f        .H      LDR      r0,[pc,#124] ; [0x1fff4e4c] = 0x1fff0923
        0x1fff4dce:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff4dd0:    2802        .(      CMP      r0,#2
        0x1fff4dd2:    d106        ..      BNE      0x1fff4de2 ; ll_hw_go1 + 618
        0x1fff4dd4:    4811        .H      LDR      r0,[pc,#68] ; [0x1fff4e1c] = 0x1fff098c
        0x1fff4dd6:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff4dd8:    2800        .(      CMP      r0,#0
        0x1fff4dda:    d102        ..      BNE      0x1fff4de2 ; ll_hw_go1 + 618
        0x1fff4ddc:    206c        l       MOVS     r0,#0x6c
        0x1fff4dde:    f7fcfe3d    ..=.    BL       $Ven$TT$L$$ll_hw_set_rx_timeout ; 0x1fff1a5c
        0x1fff4de2:    491b        .I      LDR      r1,[pc,#108] ; [0x1fff4e50] = 0x1fff0bbc
        0x1fff4de4:    2001        .       MOVS     r0,#1
        0x1fff4de6:    82c8        ..      STRH     r0,[r1,#0x16]
        0x1fff4de8:    b009        ..      ADD      sp,sp,#0x24
        0x1fff4dea:    bdf0        ..      POP      {r4-r7,pc}
    $d
        0x1fff4dec:    1fff0d30    0...    DCD    536808752
        0x1fff4df0:    1fff0934    4...    DCD    536807732
        0x1fff4df4:    1fff0998    ....    DCD    536807832
        0x1fff4df8:    1fff0ffc    ....    DCD    536809468
        0x1fff4dfc:    1fff6b80    .k..    DCD    536832896
        0x1fff4e00:    00003fff    .?..    DCD    16383
        0x1fff4e04:    40031000    ...@    DCD    1073942528
        0x1fff4e08:    00000271    q...    DCD    625
        0x1fff4e0c:    1fff0917    ....    DCD    536807703
        0x1fff4e10:    1fff0916    ....    DCD    536807702
        0x1fff4e14:    1fff7578    xu..    DCD    536835448
        0x1fff4e18:    40030080    ...@    DCD    1073938560
        0x1fff4e1c:    1fff098c    ....    DCD    536807820
        0x1fff4e20:    1fff0a68    h...    DCD    536808040
        0x1fff4e24:    00000000    ....    DCD    0
        0x1fff4e28:    0000feff    ....    DCD    65279
        0x1fff4e2c:    1fff0a49    I...    DCD    536808009
        0x1fff4e30:    1fff0a44    D...    DCD    536808004
        0x1fff4e34:    1fff0a45    E...    DCD    536808005
        0x1fff4e38:    1fff0a46    F...    DCD    536808006
        0x1fff4e3c:    1fff0a47    G...    DCD    536808007
        0x1fff4e40:    1fff08f9    ....    DCD    536807673
        0x1fff4e44:    1fff0922    "...    DCD    536807714
        0x1fff4e48:    1fff091c    ....    DCD    536807708
        0x1fff4e4c:    1fff0923    #...    DCD    536807715
        0x1fff4e50:    1fff0bbc    ....    DCD    536808380
    $t
    i.ll_hw_read_tfifo_rtlp1
    ll_hw_read_tfifo_rtlp1
        0x1fff4e54:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff4e56:    4831        1H      LDR      r0,[pc,#196] ; [0x1fff4f1c] = 0x1fff0d30
        0x1fff4e58:    21a1        .!      MOVS     r1,#0xa1
        0x1fff4e5a:    7880        .x      LDRB     r0,[r0,#2]
        0x1fff4e5c:    0089        ..      LSLS     r1,r1,#2
        0x1fff4e5e:    4348        HC      MULS     r0,r1,r0
        0x1fff4e60:    492f        /I      LDR      r1,[pc,#188] ; [0x1fff4f20] = 0x1fff0934
        0x1fff4e62:    6809        .h      LDR      r1,[r1,#0]
        0x1fff4e64:    1844        D.      ADDS     r4,r0,r1
        0x1fff4e66:    4626        &F      MOV      r6,r4
        0x1fff4e68:    36ff        .6      ADDS     r6,r6,#0xff
        0x1fff4e6a:    3681        .6      ADDS     r6,r6,#0x81
        0x1fff4e6c:    2000        .       MOVS     r0,#0
        0x1fff4e6e:    6af1        .j      LDR      r1,[r6,#0x2c]
        0x1fff4e70:    4635        5F      MOV      r5,r6
        0x1fff4e72:    3540        @5      ADDS     r5,r5,#0x40
        0x1fff4e74:    6008        .`      STR      r0,[r1,#0]
        0x1fff4e76:    7428        (t      STRB     r0,[r5,#0x10]
        0x1fff4e78:    482a        *H      LDR      r0,[pc,#168] ; [0x1fff4f24] = 0x40031040
        0x1fff4e7a:    68c1        .h      LDR      r1,[r0,#0xc]
        0x1fff4e7c:    054a        J.      LSLS     r2,r1,#21
        0x1fff4e7e:    6901        .i      LDR      r1,[r0,#0x10]
        0x1fff4e80:    0d52        R.      LSRS     r2,r2,#21
        0x1fff4e82:    0149        I.      LSLS     r1,r1,#5
        0x1fff4e84:    0d4b        K.      LSRS     r3,r1,#21
        0x1fff4e86:    69c1        .i      LDR      r1,[r0,#0x1c]
        0x1fff4e88:    4f27        'O      LDR      r7,[pc,#156] ; [0x1fff4f28] = 0x7ff0000
        0x1fff4e8a:    4039        9@      ANDS     r1,r1,r7
        0x1fff4e8c:    4311        .C      ORRS     r1,r1,r2
        0x1fff4e8e:    61c1        .a      STR      r1,[r0,#0x1c]
        0x1fff4e90:    1a9f        ..      SUBS     r7,r3,r2
        0x1fff4e92:    e01e        ..      B        0x1fff4ed2 ; ll_hw_read_tfifo_rtlp1 + 126
        0x1fff4e94:    6af0        .j      LDR      r0,[r6,#0x2c]
        0x1fff4e96:    6801        .h      LDR      r1,[r0,#0]
        0x1fff4e98:    2900        .)      CMP      r1,#0
        0x1fff4e9a:    d01e        ..      BEQ      0x1fff4eda ; ll_hw_read_tfifo_rtlp1 + 134
        0x1fff4e9c:    4923        #I      LDR      r1,[pc,#140] ; [0x1fff4f2c] = 0x1fff0915
        0x1fff4e9e:    7c28        (|      LDRB     r0,[r5,#0x10]
        0x1fff4ea0:    7809        .x      LDRB     r1,[r1,#0]
        0x1fff4ea2:    4288        .B      CMP      r0,r1
        0x1fff4ea4:    d215        ..      BCS      0x1fff4ed2 ; ll_hw_read_tfifo_rtlp1 + 126
        0x1fff4ea6:    0080        ..      LSLS     r0,r0,#2
        0x1fff4ea8:    1900        ..      ADDS     r0,r0,r4
        0x1fff4eaa:    30ff        .0      ADDS     r0,r0,#0xff
        0x1fff4eac:    3081        .0      ADDS     r0,r0,#0x81
        0x1fff4eae:    6b00        .k      LDR      r0,[r0,#0x30]
        0x1fff4eb0:    2800        .(      CMP      r0,#0
        0x1fff4eb2:    d00e        ..      BEQ      0x1fff4ed2 ; ll_hw_read_tfifo_rtlp1 + 126
        0x1fff4eb4:    1d00        ..      ADDS     r0,r0,#4
        0x1fff4eb6:    f7fcfef7    ....    BL       $Ven$TT$L$$ll_hw_read_tfifo_packet ; 0x1fff1ca8
        0x1fff4eba:    1a3f        ?.      SUBS     r7,r7,r0
        0x1fff4ebc:    7c28        (|      LDRB     r0,[r5,#0x10]
        0x1fff4ebe:    0081        ..      LSLS     r1,r0,#2
        0x1fff4ec0:    1909        ..      ADDS     r1,r1,r4
        0x1fff4ec2:    31ff        .1      ADDS     r1,r1,#0xff
        0x1fff4ec4:    3181        .1      ADDS     r1,r1,#0x81
        0x1fff4ec6:    6b09        .k      LDR      r1,[r1,#0x30]
        0x1fff4ec8:    8889        ..      LDRH     r1,[r1,#4]
        0x1fff4eca:    0a09        ..      LSRS     r1,r1,#8
        0x1fff4ecc:    d001        ..      BEQ      0x1fff4ed2 ; ll_hw_read_tfifo_rtlp1 + 126
        0x1fff4ece:    1c40        @.      ADDS     r0,r0,#1
        0x1fff4ed0:    7428        (t      STRB     r0,[r5,#0x10]
        0x1fff4ed2:    2f00        ./      CMP      r7,#0
        0x1fff4ed4:    dcde        ..      BGT      0x1fff4e94 ; ll_hw_read_tfifo_rtlp1 + 64
        0x1fff4ed6:    7c2d        -|      LDRB     r5,[r5,#0x10]
        0x1fff4ed8:    e01c        ..      B        0x1fff4f14 ; ll_hw_read_tfifo_rtlp1 + 192
        0x1fff4eda:    1d00        ..      ADDS     r0,r0,#4
        0x1fff4edc:    f7fcfee4    ....    BL       $Ven$TT$L$$ll_hw_read_tfifo_packet ; 0x1fff1ca8
        0x1fff4ee0:    1a3f        ?.      SUBS     r7,r7,r0
        0x1fff4ee2:    6af1        .j      LDR      r1,[r6,#0x2c]
        0x1fff4ee4:    2001        .       MOVS     r0,#1
        0x1fff4ee6:    6008        .`      STR      r0,[r1,#0]
        0x1fff4ee8:    e7f3        ..      B        0x1fff4ed2 ; ll_hw_read_tfifo_rtlp1 + 126
        0x1fff4eea:    00a8        ..      LSLS     r0,r5,#2
        0x1fff4eec:    1906        ..      ADDS     r6,r0,r4
        0x1fff4eee:    36ff        .6      ADDS     r6,r6,#0xff
        0x1fff4ef0:    3681        .6      ADDS     r6,r6,#0x81
        0x1fff4ef2:    6b31        1k      LDR      r1,[r6,#0x30]
        0x1fff4ef4:    2900        .)      CMP      r1,#0
        0x1fff4ef6:    d00b        ..      BEQ      0x1fff4f10 ; ll_hw_read_tfifo_rtlp1 + 188
        0x1fff4ef8:    4808        .H      LDR      r0,[pc,#32] ; [0x1fff4f1c] = 0x1fff0d30
        0x1fff4efa:    7880        .x      LDRB     r0,[r0,#2]
        0x1fff4efc:    f000f862    ..b.    BL       ll_osal_mem_free ; 0x1fff4fc4
        0x1fff4f00:    2000        .       MOVS     r0,#0
        0x1fff4f02:    6330        0c      STR      r0,[r6,#0x30]
        0x1fff4f04:    2005        .       MOVS     r0,#5
        0x1fff4f06:    01c0        ..      LSLS     r0,r0,#7
        0x1fff4f08:    1820         .      ADDS     r0,r4,r0
        0x1fff4f0a:    7881        .x      LDRB     r1,[r0,#2]
        0x1fff4f0c:    1e49        I.      SUBS     r1,r1,#1
        0x1fff4f0e:    7081        .p      STRB     r1,[r0,#2]
        0x1fff4f10:    1c6d        m.      ADDS     r5,r5,#1
        0x1fff4f12:    b2ed        ..      UXTB     r5,r5
        0x1fff4f14:    2d08        .-      CMP      r5,#8
        0x1fff4f16:    d3e8        ..      BCC      0x1fff4eea ; ll_hw_read_tfifo_rtlp1 + 150
        0x1fff4f18:    bdf8        ..      POP      {r3-r7,pc}
    $d
        0x1fff4f1a:    0000        ..      DCW    0
        0x1fff4f1c:    1fff0d30    0...    DCD    536808752
        0x1fff4f20:    1fff0934    4...    DCD    536807732
        0x1fff4f24:    40031040    @..@    DCD    1073942592
        0x1fff4f28:    07ff0000    ....    DCD    134152192
        0x1fff4f2c:    1fff0915    ....    DCD    536807701
    $t
    i.ll_osal_mem_alloc
    ll_osal_mem_alloc
        0x1fff4f30:    b5f7        ..      PUSH     {r0-r2,r4-r7,lr}
        0x1fff4f32:    b084        ..      SUB      sp,sp,#0x10
        0x1fff4f34:    460c        .F      MOV      r4,r1
        0x1fff4f36:    f7fcfce3    ....    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff1900
        0x1fff4f3a:    4d1c        .M      LDR      r5,[pc,#112] ; [0x1fff4fac] = 0x1fff08d8
        0x1fff4f3c:    4e1c        .N      LDR      r6,[pc,#112] ; [0x1fff4fb0] = 0x1fff08d4
        0x1fff4f3e:    6828        (h      LDR      r0,[r5,#0]
        0x1fff4f40:    9002        ..      STR      r0,[sp,#8]
        0x1fff4f42:    6830        0h      LDR      r0,[r6,#0]
        0x1fff4f44:    4f1b        .O      LDR      r7,[pc,#108] ; [0x1fff4fb4] = 0x1fff08dc
        0x1fff4f46:    9001        ..      STR      r0,[sp,#4]
        0x1fff4f48:    6838        8h      LDR      r0,[r7,#0]
        0x1fff4f4a:    9000        ..      STR      r0,[sp,#0]
        0x1fff4f4c:    481a        .H      LDR      r0,[pc,#104] ; [0x1fff4fb8] = 0x1fff6b80
        0x1fff4f4e:    6b81        .k      LDR      r1,[r0,#0x38]
        0x1fff4f50:    6029        )`      STR      r1,[r5,#0]
        0x1fff4f52:    6bc1        .k      LDR      r1,[r0,#0x3c]
        0x1fff4f54:    6031        1`      STR      r1,[r6,#0]
        0x1fff4f56:    6c00        .l      LDR      r0,[r0,#0x40]
        0x1fff4f58:    6038        8`      STR      r0,[r7,#0]
        0x1fff4f5a:    4818        .H      LDR      r0,[pc,#96] ; [0x1fff4fbc] = 0x1fff08d0
        0x1fff4f5c:    2100        .!      MOVS     r1,#0
        0x1fff4f5e:    7001        .p      STRB     r1,[r0,#0]
        0x1fff4f60:    4620         F      MOV      r0,r4
        0x1fff4f62:    f7fcfea7    ....    BL       $Ven$TT$L$$osal_mem_alloc ; 0x1fff1cb4
        0x1fff4f66:    4604        .F      MOV      r4,r0
        0x1fff4f68:    9802        ..      LDR      r0,[sp,#8]
        0x1fff4f6a:    6028        (`      STR      r0,[r5,#0]
        0x1fff4f6c:    9801        ..      LDR      r0,[sp,#4]
        0x1fff4f6e:    6030        0`      STR      r0,[r6,#0]
        0x1fff4f70:    9800        ..      LDR      r0,[sp,#0]
        0x1fff4f72:    6038        8`      STR      r0,[r7,#0]
        0x1fff4f74:    4811        .H      LDR      r0,[pc,#68] ; [0x1fff4fbc] = 0x1fff08d0
        0x1fff4f76:    2201        ."      MOVS     r2,#1
        0x1fff4f78:    7002        .p      STRB     r2,[r0,#0]
        0x1fff4f7a:    9904        ..      LDR      r1,[sp,#0x10]
        0x1fff4f7c:    4b10        .K      LDR      r3,[pc,#64] ; [0x1fff4fc0] = 0x1fff7598
        0x1fff4f7e:    251c        .%      MOVS     r5,#0x1c
        0x1fff4f80:    4369        iC      MULS     r1,r5,r1
        0x1fff4f82:    18c9        ..      ADDS     r1,r1,r3
        0x1fff4f84:    2c00        .,      CMP      r4,#0
        0x1fff4f86:    d003        ..      BEQ      0x1fff4f90 ; ll_osal_mem_alloc + 96
        0x1fff4f88:    7e08        .~      LDRB     r0,[r1,#0x18]
        0x1fff4f8a:    1c40        @.      ADDS     r0,r0,#1
        0x1fff4f8c:    7608        .v      STRB     r0,[r1,#0x18]
        0x1fff4f8e:    e007        ..      B        0x1fff4fa0 ; ll_osal_mem_alloc + 112
        0x1fff4f90:    9806        ..      LDR      r0,[sp,#0x18]
        0x1fff4f92:    00c0        ..      LSLS     r0,r0,#3
        0x1fff4f94:    5c0b        .\      LDRB     r3,[r1,r0]
        0x1fff4f96:    2b00        .+      CMP      r3,#0
        0x1fff4f98:    d102        ..      BNE      0x1fff4fa0 ; ll_osal_mem_alloc + 112
        0x1fff4f9a:    540a        .T      STRB     r2,[r1,r0]
        0x1fff4f9c:    1808        ..      ADDS     r0,r1,r0
        0x1fff4f9e:    6844        Dh      LDR      r4,[r0,#4]
        0x1fff4fa0:    f7fcfcba    ....    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff1918
        0x1fff4fa4:    4620         F      MOV      r0,r4
        0x1fff4fa6:    b007        ..      ADD      sp,sp,#0x1c
        0x1fff4fa8:    bdf0        ..      POP      {r4-r7,pc}
    $d
        0x1fff4faa:    0000        ..      DCW    0
        0x1fff4fac:    1fff08d8    ....    DCD    536807640
        0x1fff4fb0:    1fff08d4    ....    DCD    536807636
        0x1fff4fb4:    1fff08dc    ....    DCD    536807644
        0x1fff4fb8:    1fff6b80    .k..    DCD    536832896
        0x1fff4fbc:    1fff08d0    ....    DCD    536807632
        0x1fff4fc0:    1fff7598    .u..    DCD    536835480
    $t
    i.ll_osal_mem_free
    ll_osal_mem_free
        0x1fff4fc4:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff4fc6:    460c        .F      MOV      r4,r1
        0x1fff4fc8:    4605        .F      MOV      r5,r0
        0x1fff4fca:    f7fcfc99    ....    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff1900
        0x1fff4fce:    4810        .H      LDR      r0,[pc,#64] ; [0x1fff5010] = 0x1fff7598
        0x1fff4fd0:    211c        .!      MOVS     r1,#0x1c
        0x1fff4fd2:    2200        ."      MOVS     r2,#0
        0x1fff4fd4:    434d        MC      MULS     r5,r1,r5
        0x1fff4fd6:    1828        (.      ADDS     r0,r5,r0
        0x1fff4fd8:    00d1        ..      LSLS     r1,r2,#3
        0x1fff4fda:    5c43        C\      LDRB     r3,[r0,r1]
        0x1fff4fdc:    2b00        .+      CMP      r3,#0
        0x1fff4fde:    d009        ..      BEQ      0x1fff4ff4 ; ll_osal_mem_free + 48
        0x1fff4fe0:    1841        A.      ADDS     r1,r0,r1
        0x1fff4fe2:    6849        Ih      LDR      r1,[r1,#4]
        0x1fff4fe4:    42a1        .B      CMP      r1,r4
        0x1fff4fe6:    d105        ..      BNE      0x1fff4ff4 ; ll_osal_mem_free + 48
        0x1fff4fe8:    2100        .!      MOVS     r1,#0
        0x1fff4fea:    00d2        ..      LSLS     r2,r2,#3
        0x1fff4fec:    5481        .T      STRB     r1,[r0,r2]
        0x1fff4fee:    f7fcfc93    ....    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff1918
        0x1fff4ff2:    bd70        p.      POP      {r4-r6,pc}
        0x1fff4ff4:    1c52        R.      ADDS     r2,r2,#1
        0x1fff4ff6:    b2d2        ..      UXTB     r2,r2
        0x1fff4ff8:    2a03        .*      CMP      r2,#3
        0x1fff4ffa:    d3ed        ..      BCC      0x1fff4fd8 ; ll_osal_mem_free + 20
        0x1fff4ffc:    1f24        $.      SUBS     r4,r4,#4
        0x1fff4ffe:    8821        !.      LDRH     r1,[r4,#0]
        0x1fff5000:    0449        I.      LSLS     r1,r1,#17
        0x1fff5002:    0c49        I.      LSRS     r1,r1,#17
        0x1fff5004:    8021        !.      STRH     r1,[r4,#0]
        0x1fff5006:    7e01        .~      LDRB     r1,[r0,#0x18]
        0x1fff5008:    1e49        I.      SUBS     r1,r1,#1
        0x1fff500a:    7601        .v      STRB     r1,[r0,#0x18]
        0x1fff500c:    e7ef        ..      B        0x1fff4fee ; ll_osal_mem_free + 42
    $d
        0x1fff500e:    0000        ..      DCW    0
        0x1fff5010:    1fff7598    .u..    DCD    536835480
    $t
    i.ll_patch_restore
    ll_patch_restore
        0x1fff5014:    b5f0        ..      PUSH     {r4-r7,lr}
        0x1fff5016:    4a11        .J      LDR      r2,[pc,#68] ; [0x1fff505c] = 0x1fff6bd9
        0x1fff5018:    4b11        .K      LDR      r3,[pc,#68] ; [0x1fff5060] = 0x1fff742c
        0x1fff501a:    4912        .I      LDR      r1,[pc,#72] ; [0x1fff5064] = 0x1fff0000
        0x1fff501c:    2800        .(      CMP      r0,#0
        0x1fff501e:    d00e        ..      BEQ      0x1fff503e ; ll_patch_restore + 42
        0x1fff5020:    2000        .       MOVS     r0,#0
        0x1fff5022:    5c14        .\      LDRB     r4,[r2,r0]
        0x1fff5024:    2c00        .,      CMP      r4,#0
        0x1fff5026:    d006        ..      BEQ      0x1fff5036 ; ll_patch_restore + 34
        0x1fff5028:    0085        ..      LSLS     r5,r0,#2
        0x1fff502a:    595d        ]Y      LDR      r5,[r3,r5]
        0x1fff502c:    2d00        .-      CMP      r5,#0
        0x1fff502e:    d002        ..      BEQ      0x1fff5036 ; ll_patch_restore + 34
        0x1fff5030:    00a4        ..      LSLS     r4,r4,#2
        0x1fff5032:    1864        d.      ADDS     r4,r4,r1
        0x1fff5034:    6025        %`      STR      r5,[r4,#0]
        0x1fff5036:    1c40        @.      ADDS     r0,r0,#1
        0x1fff5038:    2810        .(      CMP      r0,#0x10
        0x1fff503a:    dbf2        ..      BLT      0x1fff5022 ; ll_patch_restore + 14
        0x1fff503c:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff503e:    2000        .       MOVS     r0,#0
        0x1fff5040:    4604        .F      MOV      r4,r0
        0x1fff5042:    5c15        .\      LDRB     r5,[r2,r0]
        0x1fff5044:    2d00        .-      CMP      r5,#0
        0x1fff5046:    d005        ..      BEQ      0x1fff5054 ; ll_patch_restore + 64
        0x1fff5048:    00ad        ..      LSLS     r5,r5,#2
        0x1fff504a:    186d        m.      ADDS     r5,r5,r1
        0x1fff504c:    0087        ..      LSLS     r7,r0,#2
        0x1fff504e:    682e        .h      LDR      r6,[r5,#0]
        0x1fff5050:    51de        .Q      STR      r6,[r3,r7]
        0x1fff5052:    602c        ,`      STR      r4,[r5,#0]
        0x1fff5054:    1c40        @.      ADDS     r0,r0,#1
        0x1fff5056:    2810        .(      CMP      r0,#0x10
        0x1fff5058:    dbf3        ..      BLT      0x1fff5042 ; ll_patch_restore + 46
        0x1fff505a:    bdf0        ..      POP      {r4-r7,pc}
    $d
        0x1fff505c:    1fff6bd9    .k..    DCD    536832985
        0x1fff5060:    1fff742c    ,t..    DCD    536835116
        0x1fff5064:    1fff0000    ....    DCD    536805376
    $t
    i.ll_processBasicIRQ_SRX
    ll_processBasicIRQ_SRX
        0x1fff5068:    b510        ..      PUSH     {r4,lr}
        0x1fff506a:    4904        .I      LDR      r1,[pc,#16] ; [0x1fff507c] = 0x1fff0280
        0x1fff506c:    6809        .h      LDR      r1,[r1,#0]
        0x1fff506e:    2900        .)      CMP      r1,#0
        0x1fff5070:    d001        ..      BEQ      0x1fff5076 ; ll_processBasicIRQ_SRX + 14
        0x1fff5072:    4788        .G      BLX      r1
        0x1fff5074:    bd10        ..      POP      {r4,pc}
        0x1fff5076:    f7fcfcd9    ....    BL       $Ven$TT$L$$ll_processBasicIRQ ; 0x1fff1a2c
        0x1fff507a:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff507c:    1fff0280    ....    DCD    536806016
    $t
    i.ll_processBasicIRQ_ScanTRX
    ll_processBasicIRQ_ScanTRX
        0x1fff5080:    b510        ..      PUSH     {r4,lr}
        0x1fff5082:    4904        .I      LDR      r1,[pc,#16] ; [0x1fff5094] = 0x1fff0280
        0x1fff5084:    6889        .h      LDR      r1,[r1,#8]
        0x1fff5086:    2900        .)      CMP      r1,#0
        0x1fff5088:    d001        ..      BEQ      0x1fff508e ; ll_processBasicIRQ_ScanTRX + 14
        0x1fff508a:    4788        .G      BLX      r1
        0x1fff508c:    bd10        ..      POP      {r4,pc}
        0x1fff508e:    f7fcfccd    ....    BL       $Ven$TT$L$$ll_processBasicIRQ ; 0x1fff1a2c
        0x1fff5092:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff5094:    1fff0280    ....    DCD    536806016
    $t
    i.ll_processBasicIRQ_secScanTRX
    ll_processBasicIRQ_secScanTRX
        0x1fff5098:    b510        ..      PUSH     {r4,lr}
        0x1fff509a:    4904        .I      LDR      r1,[pc,#16] ; [0x1fff50ac] = 0x1fff0280
        0x1fff509c:    6989        .i      LDR      r1,[r1,#0x18]
        0x1fff509e:    2900        .)      CMP      r1,#0
        0x1fff50a0:    d001        ..      BEQ      0x1fff50a6 ; ll_processBasicIRQ_secScanTRX + 14
        0x1fff50a2:    4788        .G      BLX      r1
        0x1fff50a4:    bd10        ..      POP      {r4,pc}
        0x1fff50a6:    f7fcfcc1    ....    BL       $Ven$TT$L$$ll_processBasicIRQ ; 0x1fff1a2c
        0x1fff50aa:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff50ac:    1fff0280    ....    DCD    536806016
    $t
    i.ll_processBasicIRQ_secondaryAdvSTX
    ll_processBasicIRQ_secondaryAdvSTX
        0x1fff50b0:    b510        ..      PUSH     {r4,lr}
        0x1fff50b2:    4904        .I      LDR      r1,[pc,#16] ; [0x1fff50c4] = 0x1fff0280
        0x1fff50b4:    6949        Ii      LDR      r1,[r1,#0x14]
        0x1fff50b6:    2900        .)      CMP      r1,#0
        0x1fff50b8:    d001        ..      BEQ      0x1fff50be ; ll_processBasicIRQ_secondaryAdvSTX + 14
        0x1fff50ba:    4788        .G      BLX      r1
        0x1fff50bc:    bd10        ..      POP      {r4,pc}
        0x1fff50be:    f7fcfcb5    ....    BL       $Ven$TT$L$$ll_processBasicIRQ ; 0x1fff1a2c
        0x1fff50c2:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff50c4:    1fff0280    ....    DCD    536806016
    $t
    i.ll_processBasicIRQ_secondaryAdvTRX
    ll_processBasicIRQ_secondaryAdvTRX
        0x1fff50c8:    b510        ..      PUSH     {r4,lr}
        0x1fff50ca:    4904        .I      LDR      r1,[pc,#16] ; [0x1fff50dc] = 0x1fff0280
        0x1fff50cc:    6849        Ih      LDR      r1,[r1,#4]
        0x1fff50ce:    2900        .)      CMP      r1,#0
        0x1fff50d0:    d001        ..      BEQ      0x1fff50d6 ; ll_processBasicIRQ_secondaryAdvTRX + 14
        0x1fff50d2:    4788        .G      BLX      r1
        0x1fff50d4:    bd10        ..      POP      {r4,pc}
        0x1fff50d6:    f7fcfca9    ....    BL       $Ven$TT$L$$ll_processBasicIRQ ; 0x1fff1a2c
        0x1fff50da:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff50dc:    1fff0280    ....    DCD    536806016
    $t
    i.ll_processBasicIRQ_secondaryInitSRX
    ll_processBasicIRQ_secondaryInitSRX
        0x1fff50e0:    b510        ..      PUSH     {r4,lr}
        0x1fff50e2:    4904        .I      LDR      r1,[pc,#16] ; [0x1fff50f4] = 0x1fff0280
        0x1fff50e4:    6909        .i      LDR      r1,[r1,#0x10]
        0x1fff50e6:    2900        .)      CMP      r1,#0
        0x1fff50e8:    d001        ..      BEQ      0x1fff50ee ; ll_processBasicIRQ_secondaryInitSRX + 14
        0x1fff50ea:    4788        .G      BLX      r1
        0x1fff50ec:    bd10        ..      POP      {r4,pc}
        0x1fff50ee:    f7fcfc9d    ....    BL       $Ven$TT$L$$ll_processBasicIRQ ; 0x1fff1a2c
        0x1fff50f2:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff50f4:    1fff0280    ....    DCD    536806016
    $t
    i.ll_processBasicIRQ_secondaryScanSRX
    ll_processBasicIRQ_secondaryScanSRX
        0x1fff50f8:    b510        ..      PUSH     {r4,lr}
        0x1fff50fa:    4904        .I      LDR      r1,[pc,#16] ; [0x1fff510c] = 0x1fff0280
        0x1fff50fc:    68c9        .h      LDR      r1,[r1,#0xc]
        0x1fff50fe:    2900        .)      CMP      r1,#0
        0x1fff5100:    d001        ..      BEQ      0x1fff5106 ; ll_processBasicIRQ_secondaryScanSRX + 14
        0x1fff5102:    4788        .G      BLX      r1
        0x1fff5104:    bd10        ..      POP      {r4,pc}
        0x1fff5106:    f7fcfc91    ....    BL       $Ven$TT$L$$ll_processBasicIRQ ; 0x1fff1a2c
        0x1fff510a:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff510c:    1fff0280    ....    DCD    536806016
    $t
    i.ll_read_rxfifo1
    ll_read_rxfifo1
        0x1fff5110:    b510        ..      PUSH     {r4,lr}
        0x1fff5112:    480a        .H      LDR      r0,[pc,#40] ; [0x1fff513c] = 0x1fff0d30
        0x1fff5114:    21a1        .!      MOVS     r1,#0xa1
        0x1fff5116:    7880        .x      LDRB     r0,[r0,#2]
        0x1fff5118:    0089        ..      LSLS     r1,r1,#2
        0x1fff511a:    4348        HC      MULS     r0,r1,r0
        0x1fff511c:    4908        .I      LDR      r1,[pc,#32] ; [0x1fff5140] = 0x1fff0934
        0x1fff511e:    6809        .h      LDR      r1,[r1,#0]
        0x1fff5120:    1840        @.      ADDS     r0,r0,r1
        0x1fff5122:    7900        .y      LDRB     r0,[r0,#4]
        0x1fff5124:    4907        .I      LDR      r1,[pc,#28] ; [0x1fff5144] = 0x1fff7578
        0x1fff5126:    0040        @.      LSLS     r0,r0,#1
        0x1fff5128:    5c08        .\      LDRB     r0,[r1,r0]
        0x1fff512a:    2800        .(      CMP      r0,#0
        0x1fff512c:    d003        ..      BEQ      0x1fff5136 ; ll_read_rxfifo1 + 38
        0x1fff512e:    4906        .I      LDR      r1,[pc,#24] ; [0x1fff5148] = 0x1fff10e0
        0x1fff5130:    2000        .       MOVS     r0,#0
        0x1fff5132:    7188        .q      STRB     r0,[r1,#6]
        0x1fff5134:    bd10        ..      POP      {r4,pc}
        0x1fff5136:    f7fcfdc3    ....    BL       $Ven$TT$L$$ll_read_rxfifo0 ; 0x1fff1cc0
        0x1fff513a:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff513c:    1fff0d30    0...    DCD    536808752
        0x1fff5140:    1fff0934    4...    DCD    536807732
        0x1fff5144:    1fff7578    xu..    DCD    536835448
        0x1fff5148:    1fff10e0    ....    DCD    536809696
    $t
    i.llbuf_alloc_time_statics
    llbuf_alloc_time_statics
        0x1fff514c:    b510        ..      PUSH     {r4,lr}
        0x1fff514e:    4604        .F      MOV      r4,r0
        0x1fff5150:    f7fcfc30    ..0.    BL       $Ven$TT$L$$read_current_fine_time ; 0x1fff19b4
        0x1fff5154:    42a0        .B      CMP      r0,r4
        0x1fff5156:    d303        ..      BCC      0x1fff5160 ; llbuf_alloc_time_statics + 20
        0x1fff5158:    f7fcfc2c    ..,.    BL       $Ven$TT$L$$read_current_fine_time ; 0x1fff19b4
        0x1fff515c:    1b01        ..      SUBS     r1,r0,r4
        0x1fff515e:    e004        ..      B        0x1fff516a ; llbuf_alloc_time_statics + 30
        0x1fff5160:    f7fcfc28    ..(.    BL       $Ven$TT$L$$read_current_fine_time ; 0x1fff19b4
        0x1fff5164:    4909        .I      LDR      r1,[pc,#36] ; [0x1fff518c] = 0x3fffff
        0x1fff5166:    1b09        ..      SUBS     r1,r1,r4
        0x1fff5168:    1841        A.      ADDS     r1,r0,r1
        0x1fff516a:    4809        .H      LDR      r0,[pc,#36] ; [0x1fff5190] = 0x1fff6b80
        0x1fff516c:    6a02        .j      LDR      r2,[r0,#0x20]
        0x1fff516e:    4291        .B      CMP      r1,r2
        0x1fff5170:    d200        ..      BCS      0x1fff5174 ; llbuf_alloc_time_statics + 40
        0x1fff5172:    6201        .b      STR      r1,[r0,#0x20]
        0x1fff5174:    69c2        .i      LDR      r2,[r0,#0x1c]
        0x1fff5176:    4291        .B      CMP      r1,r2
        0x1fff5178:    d900        ..      BLS      0x1fff517c ; llbuf_alloc_time_statics + 48
        0x1fff517a:    61c1        .a      STR      r1,[r0,#0x1c]
        0x1fff517c:    6a42        Bj      LDR      r2,[r0,#0x24]
        0x1fff517e:    00d3        ..      LSLS     r3,r2,#3
        0x1fff5180:    1a9a        ..      SUBS     r2,r3,r2
        0x1fff5182:    1851        Q.      ADDS     r1,r2,r1
        0x1fff5184:    08c9        ..      LSRS     r1,r1,#3
        0x1fff5186:    6241        Ab      STR      r1,[r0,#0x24]
        0x1fff5188:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff518a:    0000        ..      DCW    0
        0x1fff518c:    003fffff    ..?.    DCD    4194303
        0x1fff5190:    1fff6b80    .k..    DCD    536832896
    $t
    i.log_vsprintf
    log_vsprintf
        0x1fff5194:    b5f7        ..      PUSH     {r0-r2,r4-r7,lr}
        0x1fff5196:    4606        .F      MOV      r6,r0
        0x1fff5198:    b086        ..      SUB      sp,sp,#0x18
        0x1fff519a:    2000        .       MOVS     r0,#0
        0x1fff519c:    9004        ..      STR      r0,[sp,#0x10]
        0x1fff519e:    9003        ..      STR      r0,[sp,#0xc]
        0x1fff51a0:    9807        ..      LDR      r0,[sp,#0x1c]
        0x1fff51a2:    e110        ..      B        0x1fff53c6 ; log_vsprintf + 562
        0x1fff51a4:    2925        %)      CMP      r1,#0x25
        0x1fff51a6:    d00a        ..      BEQ      0x1fff51be ; log_vsprintf + 42
        0x1fff51a8:    9904        ..      LDR      r1,[sp,#0x10]
        0x1fff51aa:    2900        .)      CMP      r1,#0
        0x1fff51ac:    d001        ..      BEQ      0x1fff51b2 ; log_vsprintf + 30
        0x1fff51ae:    9803        ..      LDR      r0,[sp,#0xc]
        0x1fff51b0:    e002        ..      B        0x1fff51b8 ; log_vsprintf + 36
        0x1fff51b2:    9004        ..      STR      r0,[sp,#0x10]
        0x1fff51b4:    2000        .       MOVS     r0,#0
        0x1fff51b6:    9003        ..      STR      r0,[sp,#0xc]
        0x1fff51b8:    1c40        @.      ADDS     r0,r0,#1
        0x1fff51ba:    9003        ..      STR      r0,[sp,#0xc]
        0x1fff51bc:    e100        ..      B        0x1fff53c0 ; log_vsprintf + 556
        0x1fff51be:    9803        ..      LDR      r0,[sp,#0xc]
        0x1fff51c0:    2800        .(      CMP      r0,#0
        0x1fff51c2:    d005        ..      BEQ      0x1fff51d0 ; log_vsprintf + 60
        0x1fff51c4:    b281        ..      UXTH     r1,r0
        0x1fff51c6:    9804        ..      LDR      r0,[sp,#0x10]
        0x1fff51c8:    47b0        .G      BLX      r6
        0x1fff51ca:    2000        .       MOVS     r0,#0
        0x1fff51cc:    9004        ..      STR      r0,[sp,#0x10]
        0x1fff51ce:    9003        ..      STR      r0,[sp,#0xc]
        0x1fff51d0:    2500        .%      MOVS     r5,#0
        0x1fff51d2:    2204        ."      MOVS     r2,#4
        0x1fff51d4:    2308        .#      MOVS     r3,#8
        0x1fff51d6:    2110        .!      MOVS     r1,#0x10
        0x1fff51d8:    9807        ..      LDR      r0,[sp,#0x1c]
        0x1fff51da:    1c40        @.      ADDS     r0,r0,#1
        0x1fff51dc:    9007        ..      STR      r0,[sp,#0x1c]
        0x1fff51de:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff51e0:    282b        +(      CMP      r0,#0x2b
        0x1fff51e2:    d019        ..      BEQ      0x1fff5218 ; log_vsprintf + 132
        0x1fff51e4:    dc04        ..      BGT      0x1fff51f0 ; log_vsprintf + 92
        0x1fff51e6:    2820         (      CMP      r0,#0x20
        0x1fff51e8:    d018        ..      BEQ      0x1fff521c ; log_vsprintf + 136
        0x1fff51ea:    2823        #(      CMP      r0,#0x23
        0x1fff51ec:    d104        ..      BNE      0x1fff51f8 ; log_vsprintf + 100
        0x1fff51ee:    e017        ..      B        0x1fff5220 ; log_vsprintf + 140
        0x1fff51f0:    282d        -(      CMP      r0,#0x2d
        0x1fff51f2:    d00f        ..      BEQ      0x1fff5214 ; log_vsprintf + 128
        0x1fff51f4:    2830        0(      CMP      r0,#0x30
        0x1fff51f6:    d015        ..      BEQ      0x1fff5224 ; log_vsprintf + 144
        0x1fff51f8:    9a07        ..      LDR      r2,[sp,#0x1c]
        0x1fff51fa:    2700        .'      MOVS     r7,#0
        0x1fff51fc:    7810        .x      LDRB     r0,[r2,#0]
        0x1fff51fe:    43ff        .C      MVNS     r7,r7
        0x1fff5200:    4603        .F      MOV      r3,r0
        0x1fff5202:    3b30        0;      SUBS     r3,r3,#0x30
        0x1fff5204:    463c        <F      MOV      r4,r7
        0x1fff5206:    2b09        .+      CMP      r3,#9
        0x1fff5208:    d80f        ..      BHI      0x1fff522a ; log_vsprintf + 150
        0x1fff520a:    a807        ..      ADD      r0,sp,#0x1c
        0x1fff520c:    f001f86c    ..l.    BL       skip_atoi ; 0x1fff62e8
        0x1fff5210:    4604        .F      MOV      r4,r0
        0x1fff5212:    e015        ..      B        0x1fff5240 ; log_vsprintf + 172
        0x1fff5214:    430d        .C      ORRS     r5,r5,r1
        0x1fff5216:    e7df        ..      B        0x1fff51d8 ; log_vsprintf + 68
        0x1fff5218:    4315        .C      ORRS     r5,r5,r2
        0x1fff521a:    e7dd        ..      B        0x1fff51d8 ; log_vsprintf + 68
        0x1fff521c:    431d        .C      ORRS     r5,r5,r3
        0x1fff521e:    e7db        ..      B        0x1fff51d8 ; log_vsprintf + 68
        0x1fff5220:    2020                MOVS     r0,#0x20
        0x1fff5222:    e000        ..      B        0x1fff5226 ; log_vsprintf + 146
        0x1fff5224:    2001        .       MOVS     r0,#1
        0x1fff5226:    4305        .C      ORRS     r5,r5,r0
        0x1fff5228:    e7d6        ..      B        0x1fff51d8 ; log_vsprintf + 68
        0x1fff522a:    282a        *(      CMP      r0,#0x2a
        0x1fff522c:    d108        ..      BNE      0x1fff5240 ; log_vsprintf + 172
        0x1fff522e:    1c52        R.      ADDS     r2,r2,#1
        0x1fff5230:    9808        ..      LDR      r0,[sp,#0x20]
        0x1fff5232:    9207        ..      STR      r2,[sp,#0x1c]
        0x1fff5234:    c810        ..      LDM      r0!,{r4}
        0x1fff5236:    9008        ..      STR      r0,[sp,#0x20]
        0x1fff5238:    2c00        .,      CMP      r4,#0
        0x1fff523a:    da01        ..      BGE      0x1fff5240 ; log_vsprintf + 172
        0x1fff523c:    4264        dB      RSBS     r4,r4,#0
        0x1fff523e:    430d        .C      ORRS     r5,r5,r1
        0x1fff5240:    9907        ..      LDR      r1,[sp,#0x1c]
        0x1fff5242:    4638        8F      MOV      r0,r7
        0x1fff5244:    780a        .x      LDRB     r2,[r1,#0]
        0x1fff5246:    2a2e        .*      CMP      r2,#0x2e
        0x1fff5248:    d114        ..      BNE      0x1fff5274 ; log_vsprintf + 224
        0x1fff524a:    1c49        I.      ADDS     r1,r1,#1
        0x1fff524c:    9107        ..      STR      r1,[sp,#0x1c]
        0x1fff524e:    7808        .x      LDRB     r0,[r1,#0]
        0x1fff5250:    4602        .F      MOV      r2,r0
        0x1fff5252:    3a30        0:      SUBS     r2,r2,#0x30
        0x1fff5254:    2a09        .*      CMP      r2,#9
        0x1fff5256:    d803        ..      BHI      0x1fff5260 ; log_vsprintf + 204
        0x1fff5258:    a807        ..      ADD      r0,sp,#0x1c
        0x1fff525a:    f001f845    ..E.    BL       skip_atoi ; 0x1fff62e8
        0x1fff525e:    e006        ..      B        0x1fff526e ; log_vsprintf + 218
        0x1fff5260:    282a        *(      CMP      r0,#0x2a
        0x1fff5262:    d106        ..      BNE      0x1fff5272 ; log_vsprintf + 222
        0x1fff5264:    1c49        I.      ADDS     r1,r1,#1
        0x1fff5266:    9107        ..      STR      r1,[sp,#0x1c]
        0x1fff5268:    9908        ..      LDR      r1,[sp,#0x20]
        0x1fff526a:    c901        ..      LDM      r1!,{r0}
        0x1fff526c:    9108        ..      STR      r1,[sp,#0x20]
        0x1fff526e:    2800        .(      CMP      r0,#0
        0x1fff5270:    da00        ..      BGE      0x1fff5274 ; log_vsprintf + 224
        0x1fff5272:    2000        .       MOVS     r0,#0
        0x1fff5274:    9a07        ..      LDR      r2,[sp,#0x1c]
        0x1fff5276:    4639        9F      MOV      r1,r7
        0x1fff5278:    7817        .x      LDRB     r7,[r2,#0]
        0x1fff527a:    2f68        h/      CMP      r7,#0x68
        0x1fff527c:    d003        ..      BEQ      0x1fff5286 ; log_vsprintf + 242
        0x1fff527e:    2f6c        l/      CMP      r7,#0x6c
        0x1fff5280:    d001        ..      BEQ      0x1fff5286 ; log_vsprintf + 242
        0x1fff5282:    2f4c        L/      CMP      r7,#0x4c
        0x1fff5284:    d102        ..      BNE      0x1fff528c ; log_vsprintf + 248
        0x1fff5286:    1c52        R.      ADDS     r2,r2,#1
        0x1fff5288:    4639        9F      MOV      r1,r7
        0x1fff528a:    9207        ..      STR      r2,[sp,#0x1c]
        0x1fff528c:    9b07        ..      LDR      r3,[sp,#0x1c]
        0x1fff528e:    220a        ."      MOVS     r2,#0xa
        0x1fff5290:    781b        .x      LDRB     r3,[r3,#0]
        0x1fff5292:    2b6e        n+      CMP      r3,#0x6e
        0x1fff5294:    d02c        ,.      BEQ      0x1fff52f0 ; log_vsprintf + 348
        0x1fff5296:    dc0c        ..      BGT      0x1fff52b2 ; log_vsprintf + 286
        0x1fff5298:    2b63        c+      CMP      r3,#0x63
        0x1fff529a:    d02a        *.      BEQ      0x1fff52f2 ; log_vsprintf + 350
        0x1fff529c:    dc04        ..      BGT      0x1fff52a8 ; log_vsprintf + 276
        0x1fff529e:    2b41        A+      CMP      r3,#0x41
        0x1fff52a0:    d026        &.      BEQ      0x1fff52f0 ; log_vsprintf + 348
        0x1fff52a2:    2b58        X+      CMP      r3,#0x58
        0x1fff52a4:    d111        ..      BNE      0x1fff52ca ; log_vsprintf + 310
        0x1fff52a6:    e09b        ..      B        0x1fff53e0 ; log_vsprintf + 588
        0x1fff52a8:    2b64        d+      CMP      r3,#0x64
        0x1fff52aa:    d001        ..      BEQ      0x1fff52b0 ; log_vsprintf + 284
        0x1fff52ac:    2b69        i+      CMP      r3,#0x69
        0x1fff52ae:    d10c        ..      BNE      0x1fff52ca ; log_vsprintf + 310
        0x1fff52b0:    e09a        ..      B        0x1fff53e8 ; log_vsprintf + 596
        0x1fff52b2:    2b73        s+      CMP      r3,#0x73
        0x1fff52b4:    d03d        =.      BEQ      0x1fff5332 ; log_vsprintf + 414
        0x1fff52b6:    dc04        ..      BGT      0x1fff52c2 ; log_vsprintf + 302
        0x1fff52b8:    2b6f        o+      CMP      r3,#0x6f
        0x1fff52ba:    d077        w.      BEQ      0x1fff53ac ; log_vsprintf + 536
        0x1fff52bc:    2b70        p+      CMP      r3,#0x70
        0x1fff52be:    d104        ..      BNE      0x1fff52ca ; log_vsprintf + 310
        0x1fff52c0:    e064        d.      B        0x1fff538c ; log_vsprintf + 504
        0x1fff52c2:    2b75        u+      CMP      r3,#0x75
        0x1fff52c4:    d073        s.      BEQ      0x1fff53ae ; log_vsprintf + 538
        0x1fff52c6:    2b78        x+      CMP      r3,#0x78
        0x1fff52c8:    d06f        o.      BEQ      0x1fff53aa ; log_vsprintf + 534
        0x1fff52ca:    2b25        %+      CMP      r3,#0x25
        0x1fff52cc:    d009        ..      BEQ      0x1fff52e2 ; log_vsprintf + 334
        0x1fff52ce:    2025        %       MOVS     r0,#0x25
        0x1fff52d0:    4669        iF      MOV      r1,sp
        0x1fff52d2:    7208        .r      STRB     r0,[r1,#8]
        0x1fff52d4:    2101        .!      MOVS     r1,#1
        0x1fff52d6:    a802        ..      ADD      r0,sp,#8
        0x1fff52d8:    47b0        .G      BLX      r6
        0x1fff52da:    9807        ..      LDR      r0,[sp,#0x1c]
        0x1fff52dc:    7801        .x      LDRB     r1,[r0,#0]
        0x1fff52de:    2900        .)      CMP      r1,#0
        0x1fff52e0:    d075        u.      BEQ      0x1fff53ce ; log_vsprintf + 570
        0x1fff52e2:    9807        ..      LDR      r0,[sp,#0x1c]
        0x1fff52e4:    4669        iF      MOV      r1,sp
        0x1fff52e6:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff52e8:    7208        .r      STRB     r0,[r1,#8]
        0x1fff52ea:    2101        .!      MOVS     r1,#1
        0x1fff52ec:    a802        ..      ADD      r0,sp,#8
        0x1fff52ee:    47b0        .G      BLX      r6
        0x1fff52f0:    e066        f.      B        0x1fff53c0 ; log_vsprintf + 556
        0x1fff52f2:    06e8        ..      LSLS     r0,r5,#27
        0x1fff52f4:    d409        ..      BMI      0x1fff530a ; log_vsprintf + 374
        0x1fff52f6:    2520         %      MOVS     r5,#0x20
        0x1fff52f8:    1e64        d.      SUBS     r4,r4,#1
        0x1fff52fa:    2c00        .,      CMP      r4,#0
        0x1fff52fc:    dd05        ..      BLE      0x1fff530a ; log_vsprintf + 374
        0x1fff52fe:    4668        hF      MOV      r0,sp
        0x1fff5300:    7205        .r      STRB     r5,[r0,#8]
        0x1fff5302:    2101        .!      MOVS     r1,#1
        0x1fff5304:    a802        ..      ADD      r0,sp,#8
        0x1fff5306:    47b0        .G      BLX      r6
        0x1fff5308:    e7f6        ..      B        0x1fff52f8 ; log_vsprintf + 356
        0x1fff530a:    9808        ..      LDR      r0,[sp,#0x20]
        0x1fff530c:    466a        jF      MOV      r2,sp
        0x1fff530e:    7801        .x      LDRB     r1,[r0,#0]
        0x1fff5310:    7211        .r      STRB     r1,[r2,#8]
        0x1fff5312:    1d00        ..      ADDS     r0,r0,#4
        0x1fff5314:    9008        ..      STR      r0,[sp,#0x20]
        0x1fff5316:    2101        .!      MOVS     r1,#1
        0x1fff5318:    a802        ..      ADD      r0,sp,#8
        0x1fff531a:    47b0        .G      BLX      r6
        0x1fff531c:    2520         %      MOVS     r5,#0x20
        0x1fff531e:    e004        ..      B        0x1fff532a ; log_vsprintf + 406
        0x1fff5320:    4668        hF      MOV      r0,sp
        0x1fff5322:    7205        .r      STRB     r5,[r0,#8]
        0x1fff5324:    2101        .!      MOVS     r1,#1
        0x1fff5326:    a802        ..      ADD      r0,sp,#8
        0x1fff5328:    47b0        .G      BLX      r6
        0x1fff532a:    1e64        d.      SUBS     r4,r4,#1
        0x1fff532c:    2c00        .,      CMP      r4,#0
        0x1fff532e:    dcf7        ..      BGT      0x1fff5320 ; log_vsprintf + 396
        0x1fff5330:    e046        F.      B        0x1fff53c0 ; log_vsprintf + 556
        0x1fff5332:    9a08        ..      LDR      r2,[sp,#0x20]
        0x1fff5334:    ca02        ..      LDM      r2!,{r1}
        0x1fff5336:    9208        ..      STR      r2,[sp,#0x20]
        0x1fff5338:    9100        ..      STR      r1,[sp,#0]
        0x1fff533a:    2900        .)      CMP      r1,#0
        0x1fff533c:    d101        ..      BNE      0x1fff5342 ; log_vsprintf + 430
        0x1fff533e:    a12d        -.      ADR      r1,{pc}+0xb6 ; 0x1fff53f4
        0x1fff5340:    9100        ..      STR      r1,[sp,#0]
        0x1fff5342:    460a        .F      MOV      r2,r1
        0x1fff5344:    e000        ..      B        0x1fff5348 ; log_vsprintf + 436
        0x1fff5346:    1c49        I.      ADDS     r1,r1,#1
        0x1fff5348:    780b        .x      LDRB     r3,[r1,#0]
        0x1fff534a:    2b00        .+      CMP      r3,#0
        0x1fff534c:    d001        ..      BEQ      0x1fff5352 ; log_vsprintf + 446
        0x1fff534e:    1e40        @.      SUBS     r0,r0,#1
        0x1fff5350:    d2f9        ..      BCS      0x1fff5346 ; log_vsprintf + 434
        0x1fff5352:    1a8f        ..      SUBS     r7,r1,r2
        0x1fff5354:    06e8        ..      LSLS     r0,r5,#27
        0x1fff5356:    d40a        ..      BMI      0x1fff536e ; log_vsprintf + 474
        0x1fff5358:    2520         %      MOVS     r5,#0x20
        0x1fff535a:    4620         F      MOV      r0,r4
        0x1fff535c:    1e64        d.      SUBS     r4,r4,#1
        0x1fff535e:    42b8        .B      CMP      r0,r7
        0x1fff5360:    dd05        ..      BLE      0x1fff536e ; log_vsprintf + 474
        0x1fff5362:    4668        hF      MOV      r0,sp
        0x1fff5364:    7205        .r      STRB     r5,[r0,#8]
        0x1fff5366:    2101        .!      MOVS     r1,#1
        0x1fff5368:    a802        ..      ADD      r0,sp,#8
        0x1fff536a:    47b0        .G      BLX      r6
        0x1fff536c:    e7f5        ..      B        0x1fff535a ; log_vsprintf + 454
        0x1fff536e:    b2b9        ..      UXTH     r1,r7
        0x1fff5370:    9800        ..      LDR      r0,[sp,#0]
        0x1fff5372:    47b0        .G      BLX      r6
        0x1fff5374:    2520         %      MOVS     r5,#0x20
        0x1fff5376:    e004        ..      B        0x1fff5382 ; log_vsprintf + 494
        0x1fff5378:    4668        hF      MOV      r0,sp
        0x1fff537a:    7205        .r      STRB     r5,[r0,#8]
        0x1fff537c:    2101        .!      MOVS     r1,#1
        0x1fff537e:    a802        ..      ADD      r0,sp,#8
        0x1fff5380:    47b0        .G      BLX      r6
        0x1fff5382:    4620         F      MOV      r0,r4
        0x1fff5384:    1e64        d.      SUBS     r4,r4,#1
        0x1fff5386:    42b8        .B      CMP      r0,r7
        0x1fff5388:    dcf6        ..      BGT      0x1fff5378 ; log_vsprintf + 484
        0x1fff538a:    e019        ..      B        0x1fff53c0 ; log_vsprintf + 556
        0x1fff538c:    1c61        a.      ADDS     r1,r4,#1
        0x1fff538e:    d102        ..      BNE      0x1fff5396 ; log_vsprintf + 514
        0x1fff5390:    2408        .$      MOVS     r4,#8
        0x1fff5392:    2101        .!      MOVS     r1,#1
        0x1fff5394:    430d        .C      ORRS     r5,r5,r1
        0x1fff5396:    9000        ..      STR      r0,[sp,#0]
        0x1fff5398:    9808        ..      LDR      r0,[sp,#0x20]
        0x1fff539a:    9501        ..      STR      r5,[sp,#4]
        0x1fff539c:    c802        ..      LDM      r0!,{r1}
        0x1fff539e:    4623        #F      MOV      r3,r4
        0x1fff53a0:    2210        ."      MOVS     r2,#0x10
        0x1fff53a2:    9008        ..      STR      r0,[sp,#0x20]
        0x1fff53a4:    e009        ..      B        0x1fff53ba ; log_vsprintf + 550
        0x1fff53a6:    e001        ..      B        0x1fff53ac ; log_vsprintf + 536
        0x1fff53a8:    e001        ..      B        0x1fff53ae ; log_vsprintf + 538
        0x1fff53aa:    e01b        ..      B        0x1fff53e4 ; log_vsprintf + 592
        0x1fff53ac:    2208        ."      MOVS     r2,#8
        0x1fff53ae:    9b08        ..      LDR      r3,[sp,#0x20]
        0x1fff53b0:    cb02        ..      LDM      r3!,{r1}
        0x1fff53b2:    9308        ..      STR      r3,[sp,#0x20]
        0x1fff53b4:    9501        ..      STR      r5,[sp,#4]
        0x1fff53b6:    9000        ..      STR      r0,[sp,#0]
        0x1fff53b8:    4623        #F      MOV      r3,r4
        0x1fff53ba:    4630        0F      MOV      r0,r6
        0x1fff53bc:    f000f884    ....    BL       number ; 0x1fff54c8
        0x1fff53c0:    9807        ..      LDR      r0,[sp,#0x1c]
        0x1fff53c2:    1c40        @.      ADDS     r0,r0,#1
        0x1fff53c4:    9007        ..      STR      r0,[sp,#0x1c]
        0x1fff53c6:    7801        .x      LDRB     r1,[r0,#0]
        0x1fff53c8:    2900        .)      CMP      r1,#0
        0x1fff53ca:    d001        ..      BEQ      0x1fff53d0 ; log_vsprintf + 572
        0x1fff53cc:    e6ea        ..      B        0x1fff51a4 ; log_vsprintf + 16
        0x1fff53ce:    e00e        ..      B        0x1fff53ee ; log_vsprintf + 602
        0x1fff53d0:    9803        ..      LDR      r0,[sp,#0xc]
        0x1fff53d2:    2800        .(      CMP      r0,#0
        0x1fff53d4:    d002        ..      BEQ      0x1fff53dc ; log_vsprintf + 584
        0x1fff53d6:    b281        ..      UXTH     r1,r0
        0x1fff53d8:    9804        ..      LDR      r0,[sp,#0x10]
        0x1fff53da:    47b0        .G      BLX      r6
        0x1fff53dc:    b009        ..      ADD      sp,sp,#0x24
        0x1fff53de:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff53e0:    2240        @"      MOVS     r2,#0x40
        0x1fff53e2:    4315        .C      ORRS     r5,r5,r2
        0x1fff53e4:    2210        ."      MOVS     r2,#0x10
        0x1fff53e6:    e7e2        ..      B        0x1fff53ae ; log_vsprintf + 538
        0x1fff53e8:    2302        .#      MOVS     r3,#2
        0x1fff53ea:    431d        .C      ORRS     r5,r5,r3
        0x1fff53ec:    e7df        ..      B        0x1fff53ae ; log_vsprintf + 538
        0x1fff53ee:    1e40        @.      SUBS     r0,r0,#1
        0x1fff53f0:    9007        ..      STR      r0,[sp,#0x1c]
        0x1fff53f2:    e7e5        ..      B        0x1fff53c0 ; log_vsprintf + 556
    $d
        0x1fff53f4:    4c554e3c    <NUL    DCD    1280659004
        0x1fff53f8:    00003e4c    L>..    DCD    15948
    $t
    i.main
    main
        0x1fff53fc:    b57c        |.      PUSH     {r2-r6,lr}
        0x1fff53fe:    4c19        .L      LDR      r4,[pc,#100] ; [0x1fff5464] = 0x1fff0a4a
        0x1fff5400:    2002        .       MOVS     r0,#2
        0x1fff5402:    7020         p      STRB     r0,[r4,#0]
        0x1fff5404:    4d18        .M      LDR      r5,[pc,#96] ; [0x1fff5468] = 0x1fff6b24
        0x1fff5406:    2001        .       MOVS     r0,#1
        0x1fff5408:    7028        (p      STRB     r0,[r5,#0]
        0x1fff540a:    f7fcfc5f    .._.    BL       $Ven$TT$L$$drv_irq_init ; 0x1fff1ccc
        0x1fff540e:    f7fcfe2e    ....    BL       init_config ; 0x1fff206e
        0x1fff5412:    f7feffb7    ....    BL       hal_rfphy_init ; 0x1fff4384
        0x1fff5416:    f7fefe33    ..3.    BL       hal_low_power_io_init ; 0x1fff4080
        0x1fff541a:    7820         x      LDRB     r0,[r4,#0]
        0x1fff541c:    f7fdffd4    ....    BL       clk_init ; 0x1fff33c8
        0x1fff5420:    7828        (x      LDRB     r0,[r5,#0]
        0x1fff5422:    f7feffeb    ....    BL       hal_rtc_clock_config ; 0x1fff43fc
        0x1fff5426:    f7fefe99    ....    BL       hal_pwrmgr_init ; 0x1fff415c
        0x1fff542a:    4810        .H      LDR      r0,[pc,#64] ; [0x1fff546c] = 0x1fff69dc
        0x1fff542c:    6800        .h      LDR      r0,[r0,#0]
        0x1fff542e:    f7fff827    ..'.    BL       hal_spif_cache_init ; 0x1fff4480
        0x1fff5432:    f7fef8b7    ....    BL       dbg_printf_init ; 0x1fff35a4
        0x1fff5436:    f7fefb8b    ....    BL       hal_gpio_init ; 0x1fff3b50
        0x1fff543a:    490d        .I      LDR      r1,[pc,#52] ; [0x1fff5470] = 0x30103
        0x1fff543c:    a00d        ..      ADR      r0,{pc}+0x38 ; 0x1fff5474
        0x1fff543e:    f7fef8a3    ....    BL       dbg_printf ; 0x1fff3588
        0x1fff5442:    4912        .I      LDR      r1,[pc,#72] ; [0x1fff548c] = 0x1fff0a45
        0x1fff5444:    7809        .x      LDRB     r1,[r1,#0]
        0x1fff5446:    4812        .H      LDR      r0,[pc,#72] ; [0x1fff5490] = 0x1fff0a44
        0x1fff5448:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff544a:    9101        ..      STR      r1,[sp,#4]
        0x1fff544c:    9000        ..      STR      r0,[sp,#0]
        0x1fff544e:    7823        #x      LDRB     r3,[r4,#0]
        0x1fff5450:    782a        *x      LDRB     r2,[r5,#0]
        0x1fff5452:    4810        .H      LDR      r0,[pc,#64] ; [0x1fff5494] = 0x1fff0a4b
        0x1fff5454:    7801        .x      LDRB     r1,[r0,#0]
        0x1fff5456:    a010        ..      ADR      r0,{pc}+0x42 ; 0x1fff5498
        0x1fff5458:    f7fef896    ....    BL       dbg_printf ; 0x1fff3588
        0x1fff545c:    f7fdfe78    ..x.    BL       app_main ; 0x1fff3150
        0x1fff5460:    2000        .       MOVS     r0,#0
        0x1fff5462:    bd7c        |.      POP      {r2-r6,pc}
    $d
        0x1fff5464:    1fff0a4a    J...    DCD    536808010
        0x1fff5468:    1fff6b24    $k..    DCD    536832804
        0x1fff546c:    1fff69dc    .i..    DCD    536832476
        0x1fff5470:    00030103    ....    DCD    196867
        0x1fff5474:    204b4453    SDK     DCD    541803603
        0x1fff5478:    73726556    Vers    DCD    1936876886
        0x1fff547c:    206e6f69    ion     DCD    544108393
        0x1fff5480:    25204449    ID %    DCD    622871625
        0x1fff5484:    20783830    08x     DCD    544749616
        0x1fff5488:    0000000a    ....    DCD    10
        0x1fff548c:    1fff0a45    E...    DCD    536808005
        0x1fff5490:    1fff0a44    D...    DCD    536808004
        0x1fff5494:    1fff0a4b    K...    DCD    536808011
        0x1fff5498:    6c436672    rfCl    DCD    1816356466
        0x1fff549c:    6425206b    k %d    DCD    1680154731
        0x1fff54a0:    43637220     rcC    DCD    1130590752
        0x1fff54a4:    25206b6c    lk %    DCD    622881644
        0x1fff54a8:    79732064    d sy    DCD    2037588068
        0x1fff54ac:    6b6c4373    sClk    DCD    1802257267
        0x1fff54b0:    20642520     %d     DCD    543434016
        0x1fff54b4:    61437074    tpCa    DCD    1631809652
        0x1fff54b8:    30255b70    p[%0    DCD    807754608
        0x1fff54bc:    25207832    2x %    DCD    622884914
        0x1fff54c0:    5d783230    02x]    DCD    1568158256
        0x1fff54c4:    0000000a    ....    DCD    10
    $t
    i.number
    number
        0x1fff54c8:    b5ff        ..      PUSH     {r0-r7,lr}
        0x1fff54ca:    4607        .F      MOV      r7,r0
        0x1fff54cc:    4857        WH      LDR      r0,[pc,#348] ; [0x1fff562c] = 0x1fff6b5c
        0x1fff54ce:    b097        ..      SUB      sp,sp,#0x5c
        0x1fff54d0:    9d21        !.      LDR      r5,[sp,#0x84]
        0x1fff54d2:    6800        .h      LDR      r0,[r0,#0]
        0x1fff54d4:    9015        ..      STR      r0,[sp,#0x54]
        0x1fff54d6:    461e        .F      MOV      r6,r3
        0x1fff54d8:    460a        .F      MOV      r2,r1
        0x1fff54da:    0668        h.      LSLS     r0,r5,#25
        0x1fff54dc:    d502        ..      BPL      0x1fff54e4 ; number + 28
        0x1fff54de:    4853        SH      LDR      r0,[pc,#332] ; [0x1fff562c] = 0x1fff6b5c
        0x1fff54e0:    6840        @h      LDR      r0,[r0,#4]
        0x1fff54e2:    9015        ..      STR      r0,[sp,#0x54]
        0x1fff54e4:    06e8        ..      LSLS     r0,r5,#27
        0x1fff54e6:    d501        ..      BPL      0x1fff54ec ; number + 36
        0x1fff54e8:    086d        m.      LSRS     r5,r5,#1
        0x1fff54ea:    006d        m.      LSLS     r5,r5,#1
        0x1fff54ec:    9819        ..      LDR      r0,[sp,#0x64]
        0x1fff54ee:    1e80        ..      SUBS     r0,r0,#2
        0x1fff54f0:    2823        #(      CMP      r0,#0x23
        0x1fff54f2:    d270        p.      BCS      0x1fff55d6 ; number + 270
        0x1fff54f4:    07e8        ..      LSLS     r0,r5,#31
        0x1fff54f6:    d001        ..      BEQ      0x1fff54fc ; number + 52
        0x1fff54f8:    2130        0!      MOVS     r1,#0x30
        0x1fff54fa:    e000        ..      B        0x1fff54fe ; number + 54
        0x1fff54fc:    2120         !      MOVS     r1,#0x20
        0x1fff54fe:    a810        ..      ADD      r0,sp,#0x40
        0x1fff5500:    7301        .s      STRB     r1,[r0,#0xc]
        0x1fff5502:    2100        .!      MOVS     r1,#0
        0x1fff5504:    7201        .r      STRB     r1,[r0,#8]
        0x1fff5506:    07a8        ..      LSLS     r0,r5,#30
        0x1fff5508:    d510        ..      BPL      0x1fff552c ; number + 100
        0x1fff550a:    2a00        .*      CMP      r2,#0
        0x1fff550c:    da04        ..      BGE      0x1fff5518 ; number + 80
        0x1fff550e:    202d        -       MOVS     r0,#0x2d
        0x1fff5510:    a910        ..      ADD      r1,sp,#0x40
        0x1fff5512:    7208        .r      STRB     r0,[r1,#8]
        0x1fff5514:    4252        RB      RSBS     r2,r2,#0
        0x1fff5516:    e008        ..      B        0x1fff552a ; number + 98
        0x1fff5518:    0768        h.      LSLS     r0,r5,#29
        0x1fff551a:    d501        ..      BPL      0x1fff5520 ; number + 88
        0x1fff551c:    202b        +       MOVS     r0,#0x2b
        0x1fff551e:    e002        ..      B        0x1fff5526 ; number + 94
        0x1fff5520:    0728        (.      LSLS     r0,r5,#28
        0x1fff5522:    d503        ..      BPL      0x1fff552c ; number + 100
        0x1fff5524:    2020                MOVS     r0,#0x20
        0x1fff5526:    a910        ..      ADD      r1,sp,#0x40
        0x1fff5528:    7208        .r      STRB     r0,[r1,#8]
        0x1fff552a:    1e5e        ^.      SUBS     r6,r3,#1
        0x1fff552c:    06a8        ..      LSLS     r0,r5,#26
        0x1fff552e:    d508        ..      BPL      0x1fff5542 ; number + 122
        0x1fff5530:    9819        ..      LDR      r0,[sp,#0x64]
        0x1fff5532:    2810        .(      CMP      r0,#0x10
        0x1fff5534:    d002        ..      BEQ      0x1fff553c ; number + 116
        0x1fff5536:    2808        .(      CMP      r0,#8
        0x1fff5538:    d002        ..      BEQ      0x1fff5540 ; number + 120
        0x1fff553a:    e002        ..      B        0x1fff5542 ; number + 122
        0x1fff553c:    1eb6        ..      SUBS     r6,r6,#2
        0x1fff553e:    e000        ..      B        0x1fff5542 ; number + 122
        0x1fff5540:    1e76        v.      SUBS     r6,r6,#1
        0x1fff5542:    2400        .$      MOVS     r4,#0
        0x1fff5544:    2a00        .*      CMP      r2,#0
        0x1fff5546:    d014        ..      BEQ      0x1fff5572 ; number + 170
        0x1fff5548:    4610        .F      MOV      r0,r2
        0x1fff554a:    9919        ..      LDR      r1,[sp,#0x64]
        0x1fff554c:    f7fcfbc4    ....    BL       $Ven$TT$L$$__aeabi_uidivmod ; 0x1fff1cd8
        0x1fff5550:    9a15        ..      LDR      r2,[sp,#0x54]
        0x1fff5552:    5c52        R\      LDRB     r2,[r2,r1]
        0x1fff5554:    a901        ..      ADD      r1,sp,#4
        0x1fff5556:    550a        .U      STRB     r2,[r1,r4]
        0x1fff5558:    1c64        d.      ADDS     r4,r4,#1
        0x1fff555a:    0002        ..      MOVS     r2,r0
        0x1fff555c:    d1f4        ..      BNE      0x1fff5548 ; number + 128
        0x1fff555e:    9820         .      LDR      r0,[sp,#0x80]
        0x1fff5560:    4284        .B      CMP      r4,r0
        0x1fff5562:    dd00        ..      BLE      0x1fff5566 ; number + 158
        0x1fff5564:    9420         .      STR      r4,[sp,#0x80]
        0x1fff5566:    9820         .      LDR      r0,[sp,#0x80]
        0x1fff5568:    1a36        6.      SUBS     r6,r6,r0
        0x1fff556a:    2011        .       MOVS     r0,#0x11
        0x1fff556c:    4205        .B      TST      r5,r0
        0x1fff556e:    d00b        ..      BEQ      0x1fff5588 ; number + 192
        0x1fff5570:    e00e        ..      B        0x1fff5590 ; number + 200
        0x1fff5572:    2030        0       MOVS     r0,#0x30
        0x1fff5574:    4669        iF      MOV      r1,sp
        0x1fff5576:    7108        .q      STRB     r0,[r1,#4]
        0x1fff5578:    2401        .$      MOVS     r4,#1
        0x1fff557a:    e7f0        ..      B        0x1fff555e ; number + 150
        0x1fff557c:    2020                MOVS     r0,#0x20
        0x1fff557e:    4669        iF      MOV      r1,sp
        0x1fff5580:    7008        .p      STRB     r0,[r1,#0]
        0x1fff5582:    2101        .!      MOVS     r1,#1
        0x1fff5584:    4668        hF      MOV      r0,sp
        0x1fff5586:    47b8        .G      BLX      r7
        0x1fff5588:    4630        0F      MOV      r0,r6
        0x1fff558a:    1e76        v.      SUBS     r6,r6,#1
        0x1fff558c:    2800        .(      CMP      r0,#0
        0x1fff558e:    dcf5        ..      BGT      0x1fff557c ; number + 180
        0x1fff5590:    a810        ..      ADD      r0,sp,#0x40
        0x1fff5592:    7a00        .z      LDRB     r0,[r0,#8]
        0x1fff5594:    2800        .(      CMP      r0,#0
        0x1fff5596:    d002        ..      BEQ      0x1fff559e ; number + 214
        0x1fff5598:    2101        .!      MOVS     r1,#1
        0x1fff559a:    a812        ..      ADD      r0,sp,#0x48
        0x1fff559c:    47b8        .G      BLX      r7
        0x1fff559e:    06a8        ..      LSLS     r0,r5,#26
        0x1fff55a0:    d516        ..      BPL      0x1fff55d0 ; number + 264
        0x1fff55a2:    9819        ..      LDR      r0,[sp,#0x64]
        0x1fff55a4:    2808        .(      CMP      r0,#8
        0x1fff55a6:    d002        ..      BEQ      0x1fff55ae ; number + 230
        0x1fff55a8:    2810        .(      CMP      r0,#0x10
        0x1fff55aa:    d002        ..      BEQ      0x1fff55b2 ; number + 234
        0x1fff55ac:    e010        ..      B        0x1fff55d0 ; number + 264
        0x1fff55ae:    2030        0       MOVS     r0,#0x30
        0x1fff55b0:    e009        ..      B        0x1fff55c6 ; number + 254
        0x1fff55b2:    2030        0       MOVS     r0,#0x30
        0x1fff55b4:    4669        iF      MOV      r1,sp
        0x1fff55b6:    7008        .p      STRB     r0,[r1,#0]
        0x1fff55b8:    2101        .!      MOVS     r1,#1
        0x1fff55ba:    4668        hF      MOV      r0,sp
        0x1fff55bc:    47b8        .G      BLX      r7
        0x1fff55be:    481b        .H      LDR      r0,[pc,#108] ; [0x1fff562c] = 0x1fff6b5c
        0x1fff55c0:    6800        .h      LDR      r0,[r0,#0]
        0x1fff55c2:    3020         0      ADDS     r0,r0,#0x20
        0x1fff55c4:    7840        @x      LDRB     r0,[r0,#1]
        0x1fff55c6:    4669        iF      MOV      r1,sp
        0x1fff55c8:    7008        .p      STRB     r0,[r1,#0]
        0x1fff55ca:    2101        .!      MOVS     r1,#1
        0x1fff55cc:    4668        hF      MOV      r0,sp
        0x1fff55ce:    47b8        .G      BLX      r7
        0x1fff55d0:    06e8        ..      LSLS     r0,r5,#27
        0x1fff55d2:    d504        ..      BPL      0x1fff55de ; number + 278
        0x1fff55d4:    e007        ..      B        0x1fff55e6 ; number + 286
        0x1fff55d6:    e027        '.      B        0x1fff5628 ; number + 352
        0x1fff55d8:    2101        .!      MOVS     r1,#1
        0x1fff55da:    a813        ..      ADD      r0,sp,#0x4c
        0x1fff55dc:    47b8        .G      BLX      r7
        0x1fff55de:    4630        0F      MOV      r0,r6
        0x1fff55e0:    1e76        v.      SUBS     r6,r6,#1
        0x1fff55e2:    2800        .(      CMP      r0,#0
        0x1fff55e4:    dcf8        ..      BGT      0x1fff55d8 ; number + 272
        0x1fff55e6:    2530        0%      MOVS     r5,#0x30
        0x1fff55e8:    9920         .      LDR      r1,[sp,#0x80]
        0x1fff55ea:    1e48        H.      SUBS     r0,r1,#1
        0x1fff55ec:    9020         .      STR      r0,[sp,#0x80]
        0x1fff55ee:    42a1        .B      CMP      r1,r4
        0x1fff55f0:    dd0b        ..      BLE      0x1fff560a ; number + 322
        0x1fff55f2:    4668        hF      MOV      r0,sp
        0x1fff55f4:    7005        .p      STRB     r5,[r0,#0]
        0x1fff55f6:    2101        .!      MOVS     r1,#1
        0x1fff55f8:    47b8        .G      BLX      r7
        0x1fff55fa:    e7f5        ..      B        0x1fff55e8 ; number + 288
        0x1fff55fc:    5d28        (]      LDRB     r0,[r5,r4]
        0x1fff55fe:    4669        iF      MOV      r1,sp
        0x1fff5600:    7008        .p      STRB     r0,[r1,#0]
        0x1fff5602:    2101        .!      MOVS     r1,#1
        0x1fff5604:    4668        hF      MOV      r0,sp
        0x1fff5606:    47b8        .G      BLX      r7
        0x1fff5608:    e000        ..      B        0x1fff560c ; number + 324
        0x1fff560a:    ad01        ..      ADD      r5,sp,#4
        0x1fff560c:    4620         F      MOV      r0,r4
        0x1fff560e:    1e64        d.      SUBS     r4,r4,#1
        0x1fff5610:    2800        .(      CMP      r0,#0
        0x1fff5612:    dcf3        ..      BGT      0x1fff55fc ; number + 308
        0x1fff5614:    2420         $      MOVS     r4,#0x20
        0x1fff5616:    4630        0F      MOV      r0,r6
        0x1fff5618:    1e76        v.      SUBS     r6,r6,#1
        0x1fff561a:    2800        .(      CMP      r0,#0
        0x1fff561c:    dd04        ..      BLE      0x1fff5628 ; number + 352
        0x1fff561e:    4668        hF      MOV      r0,sp
        0x1fff5620:    7004        .p      STRB     r4,[r0,#0]
        0x1fff5622:    2101        .!      MOVS     r1,#1
        0x1fff5624:    47b8        .G      BLX      r7
        0x1fff5626:    e7f6        ..      B        0x1fff5616 ; number + 334
        0x1fff5628:    b01b        ..      ADD      sp,sp,#0x6c
        0x1fff562a:    bdf0        ..      POP      {r4-r7,pc}
    $d
        0x1fff562c:    1fff6b5c    \k..    DCD    536832860
    $t
    i.osalInitTasks
    osalInitTasks
        0x1fff5630:    b510        ..      PUSH     {r4,lr}
        0x1fff5632:    2400        .$      MOVS     r4,#0
        0x1fff5634:    2002        .       MOVS     r0,#2
        0x1fff5636:    f7fcfb3d    ..=.    BL       $Ven$TT$L$$osal_mem_alloc ; 0x1fff1cb4
        0x1fff563a:    4905        .I      LDR      r1,[pc,#20] ; [0x1fff5650] = 0x1fff6b28
        0x1fff563c:    2202        ."      MOVS     r2,#2
        0x1fff563e:    6008        .`      STR      r0,[r1,#0]
        0x1fff5640:    2100        .!      MOVS     r1,#0
        0x1fff5642:    f7fcfb4f    ..O.    BL       $Ven$TT$L$$osal_memset ; 0x1fff1ce4
        0x1fff5646:    4620         F      MOV      r0,r4
        0x1fff5648:    f7fdf9c0    ....    BL       PropProtocol_Init ; 0x1fff29cc
        0x1fff564c:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff564e:    0000        ..      DCW    0
        0x1fff5650:    1fff6b28    (k..    DCD    536832808
    $t
    i.osal_idle_task0
    osal_idle_task0
        0x1fff5654:    b510        ..      PUSH     {r4,lr}
        0x1fff5656:    4804        .H      LDR      r0,[pc,#16] ; [0x1fff5668] = 0x40002000
        0x1fff5658:    7801        .x      LDRB     r1,[r0,#0]
        0x1fff565a:    07c9        ..      LSLS     r1,r1,#31
        0x1fff565c:    d001        ..      BEQ      0x1fff5662 ; osal_idle_task0 + 14
        0x1fff565e:    2176        v!      MOVS     r1,#0x76
        0x1fff5660:    60c1        .`      STR      r1,[r0,#0xc]
        0x1fff5662:    f7fcfb45    ..E.    BL       $Ven$TT$L$$osal_pwrmgr_powerconserve0 ; 0x1fff1cf0
        0x1fff5666:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff5668:    40002000    . .@    DCD    1073750016
    $t
    i.osal_search_active_task
    osal_search_active_task
        0x1fff566c:    b510        ..      PUSH     {r4,lr}
        0x1fff566e:    4a0c        .J      LDR      r2,[pc,#48] ; [0x1fff56a0] = 0x1fff0000
        0x1fff5670:    2100        .!      MOVS     r1,#0
        0x1fff5672:    68d3        .h      LDR      r3,[r2,#0xc]
        0x1fff5674:    6912        .i      LDR      r2,[r2,#0x10]
        0x1fff5676:    781b        .x      LDRB     r3,[r3,#0]
        0x1fff5678:    6812        .h      LDR      r2,[r2,#0]
        0x1fff567a:    2a00        .*      CMP      r2,#0
        0x1fff567c:    d003        ..      BEQ      0x1fff5686 ; osal_search_active_task + 26
        0x1fff567e:    004c        L.      LSLS     r4,r1,#1
        0x1fff5680:    5b14        .[      LDRH     r4,[r2,r4]
        0x1fff5682:    2c00        .,      CMP      r4,#0
        0x1fff5684:    d103        ..      BNE      0x1fff568e ; osal_search_active_task + 34
        0x1fff5686:    1c49        I.      ADDS     r1,r1,#1
        0x1fff5688:    b2c9        ..      UXTB     r1,r1
        0x1fff568a:    4299        .B      CMP      r1,r3
        0x1fff568c:    d3f5        ..      BCC      0x1fff567a ; osal_search_active_task + 14
        0x1fff568e:    4299        .B      CMP      r1,r3
        0x1fff5690:    d204        ..      BCS      0x1fff569c ; osal_search_active_task + 48
        0x1fff5692:    2800        .(      CMP      r0,#0
        0x1fff5694:    d000        ..      BEQ      0x1fff5698 ; osal_search_active_task + 44
        0x1fff5696:    7001        .p      STRB     r1,[r0,#0]
        0x1fff5698:    2000        .       MOVS     r0,#0
        0x1fff569a:    bd10        ..      POP      {r4,pc}
        0x1fff569c:    2001        .       MOVS     r0,#1
        0x1fff569e:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff56a0:    1fff0000    ....    DCD    536805376
    $t
    i.patch_linkBuf_init
    patch_linkBuf_init
        0x1fff56a4:    b5f0        ..      PUSH     {r4-r7,lr}
        0x1fff56a6:    4e23        #N      LDR      r6,[pc,#140] ; [0x1fff5734] = 0x1fff0934
        0x1fff56a8:    4b23        #K      LDR      r3,[pc,#140] ; [0x1fff5738] = 0x1fff0914
        0x1fff56aa:    2800        .(      CMP      r0,#0
        0x1fff56ac:    d022        ".      BEQ      0x1fff56f4 ; patch_linkBuf_init + 80
        0x1fff56ae:    2100        .!      MOVS     r1,#0
        0x1fff56b0:    e01c        ..      B        0x1fff56ec ; patch_linkBuf_init + 72
        0x1fff56b2:    20a1        .       MOVS     r0,#0xa1
        0x1fff56b4:    0080        ..      LSLS     r0,r0,#2
        0x1fff56b6:    6832        2h      LDR      r2,[r6,#0]
        0x1fff56b8:    4348        HC      MULS     r0,r1,r0
        0x1fff56ba:    1880        ..      ADDS     r0,r0,r2
        0x1fff56bc:    4604        .F      MOV      r4,r0
        0x1fff56be:    2200        ."      MOVS     r2,#0
        0x1fff56c0:    34ff        .4      ADDS     r4,r4,#0xff
        0x1fff56c2:    3481        .4      ADDS     r4,r4,#0x81
        0x1fff56c4:    0097        ..      LSLS     r7,r2,#2
        0x1fff56c6:    183f        ?.      ADDS     r7,r7,r0
        0x1fff56c8:    37ff        .7      ADDS     r7,r7,#0xff
        0x1fff56ca:    3701        .7      ADDS     r7,#1
        0x1fff56cc:    6ae5        .j      LDR      r5,[r4,#0x2c]
        0x1fff56ce:    1c52        R.      ADDS     r2,r2,#1
        0x1fff56d0:    66fd        .f      STR      r5,[r7,#0x6c]
        0x1fff56d2:    2a08        .*      CMP      r2,#8
        0x1fff56d4:    dbf6        ..      BLT      0x1fff56c4 ; patch_linkBuf_init + 32
        0x1fff56d6:    2200        ."      MOVS     r2,#0
        0x1fff56d8:    0097        ..      LSLS     r7,r2,#2
        0x1fff56da:    183f        ?.      ADDS     r7,r7,r0
        0x1fff56dc:    37ff        .7      ADDS     r7,r7,#0xff
        0x1fff56de:    3781        .7      ADDS     r7,r7,#0x81
        0x1fff56e0:    6ae5        .j      LDR      r5,[r4,#0x2c]
        0x1fff56e2:    1c52        R.      ADDS     r2,r2,#1
        0x1fff56e4:    60fd        .`      STR      r5,[r7,#0xc]
        0x1fff56e6:    2a08        .*      CMP      r2,#8
        0x1fff56e8:    dbf6        ..      BLT      0x1fff56d8 ; patch_linkBuf_init + 52
        0x1fff56ea:    1c49        I.      ADDS     r1,r1,#1
        0x1fff56ec:    7818        .x      LDRB     r0,[r3,#0]
        0x1fff56ee:    4281        .B      CMP      r1,r0
        0x1fff56f0:    dbdf        ..      BLT      0x1fff56b2 ; patch_linkBuf_init + 14
        0x1fff56f2:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff56f4:    2100        .!      MOVS     r1,#0
        0x1fff56f6:    4608        .F      MOV      r0,r1
        0x1fff56f8:    e017        ..      B        0x1fff572a ; patch_linkBuf_init + 134
        0x1fff56fa:    22a1        ."      MOVS     r2,#0xa1
        0x1fff56fc:    0092        ..      LSLS     r2,r2,#2
        0x1fff56fe:    6834        4h      LDR      r4,[r6,#0]
        0x1fff5700:    434a        JC      MULS     r2,r1,r2
        0x1fff5702:    1914        ..      ADDS     r4,r2,r4
        0x1fff5704:    2200        ."      MOVS     r2,#0
        0x1fff5706:    0095        ..      LSLS     r5,r2,#2
        0x1fff5708:    192d        -.      ADDS     r5,r5,r4
        0x1fff570a:    35ff        .5      ADDS     r5,r5,#0xff
        0x1fff570c:    3501        .5      ADDS     r5,#1
        0x1fff570e:    1c52        R.      ADDS     r2,r2,#1
        0x1fff5710:    66e8        .f      STR      r0,[r5,#0x6c]
        0x1fff5712:    2a08        .*      CMP      r2,#8
        0x1fff5714:    dbf7        ..      BLT      0x1fff5706 ; patch_linkBuf_init + 98
        0x1fff5716:    2200        ."      MOVS     r2,#0
        0x1fff5718:    0095        ..      LSLS     r5,r2,#2
        0x1fff571a:    192d        -.      ADDS     r5,r5,r4
        0x1fff571c:    35ff        .5      ADDS     r5,r5,#0xff
        0x1fff571e:    3581        .5      ADDS     r5,r5,#0x81
        0x1fff5720:    1c52        R.      ADDS     r2,r2,#1
        0x1fff5722:    60e8        .`      STR      r0,[r5,#0xc]
        0x1fff5724:    2a08        .*      CMP      r2,#8
        0x1fff5726:    dbf7        ..      BLT      0x1fff5718 ; patch_linkBuf_init + 116
        0x1fff5728:    1c49        I.      ADDS     r1,r1,#1
        0x1fff572a:    781a        .x      LDRB     r2,[r3,#0]
        0x1fff572c:    4291        .B      CMP      r1,r2
        0x1fff572e:    dbe4        ..      BLT      0x1fff56fa ; patch_linkBuf_init + 86
        0x1fff5730:    bdf0        ..      POP      {r4-r7,pc}
    $d
        0x1fff5732:    0000        ..      DCW    0
        0x1fff5734:    1fff0934    4...    DCD    536807732
        0x1fff5738:    1fff0914    ....    DCD    536807700
    $t
    i.peripheral_interrupt_restore_default
    peripheral_interrupt_restore_default
        0x1fff573c:    b510        ..      PUSH     {r4,lr}
        0x1fff573e:    2102        .!      MOVS     r1,#2
        0x1fff5740:    2005        .       MOVS     r0,#5
        0x1fff5742:    f7fdfacd    ....    BL       __NVIC_SetPriority ; 0x1fff2ce0
        0x1fff5746:    2102        .!      MOVS     r1,#2
        0x1fff5748:    200a        .       MOVS     r0,#0xa
        0x1fff574a:    f7fdfac9    ....    BL       __NVIC_SetPriority ; 0x1fff2ce0
        0x1fff574e:    2102        .!      MOVS     r1,#2
        0x1fff5750:    200b        .       MOVS     r0,#0xb
        0x1fff5752:    f7fdfac5    ....    BL       __NVIC_SetPriority ; 0x1fff2ce0
        0x1fff5756:    2102        .!      MOVS     r1,#2
        0x1fff5758:    2011        .       MOVS     r0,#0x11
        0x1fff575a:    f7fdfac1    ....    BL       __NVIC_SetPriority ; 0x1fff2ce0
        0x1fff575e:    2102        .!      MOVS     r1,#2
        0x1fff5760:    200c        .       MOVS     r0,#0xc
        0x1fff5762:    f7fdfabd    ....    BL       __NVIC_SetPriority ; 0x1fff2ce0
        0x1fff5766:    2102        .!      MOVS     r1,#2
        0x1fff5768:    200d        .       MOVS     r0,#0xd
        0x1fff576a:    f7fdfab9    ....    BL       __NVIC_SetPriority ; 0x1fff2ce0
        0x1fff576e:    2102        .!      MOVS     r1,#2
        0x1fff5770:    200e        .       MOVS     r0,#0xe
        0x1fff5772:    f7fdfab5    ....    BL       __NVIC_SetPriority ; 0x1fff2ce0
        0x1fff5776:    2102        .!      MOVS     r1,#2
        0x1fff5778:    200f        .       MOVS     r0,#0xf
        0x1fff577a:    f7fdfab1    ....    BL       __NVIC_SetPriority ; 0x1fff2ce0
        0x1fff577e:    2102        .!      MOVS     r1,#2
        0x1fff5780:    2010        .       MOVS     r0,#0x10
        0x1fff5782:    f7fdfaad    ....    BL       __NVIC_SetPriority ; 0x1fff2ce0
        0x1fff5786:    2102        .!      MOVS     r1,#2
        0x1fff5788:    2013        .       MOVS     r0,#0x13
        0x1fff578a:    f7fdfaa9    ....    BL       __NVIC_SetPriority ; 0x1fff2ce0
        0x1fff578e:    2102        .!      MOVS     r1,#2
        0x1fff5790:    2018        .       MOVS     r0,#0x18
        0x1fff5792:    f7fdfaa5    ....    BL       __NVIC_SetPriority ; 0x1fff2ce0
        0x1fff5796:    2102        .!      MOVS     r1,#2
        0x1fff5798:    2019        .       MOVS     r0,#0x19
        0x1fff579a:    f7fdfaa1    ....    BL       __NVIC_SetPriority ; 0x1fff2ce0
        0x1fff579e:    2102        .!      MOVS     r1,#2
        0x1fff57a0:    201d        .       MOVS     r0,#0x1d
        0x1fff57a2:    f7fdfa9d    ....    BL       __NVIC_SetPriority ; 0x1fff2ce0
        0x1fff57a6:    bd10        ..      POP      {r4,pc}
    i.phy_hw_go
    phy_hw_go
        0x1fff57a8:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff57aa:    481c        .H      LDR      r0,[pc,#112] ; [0x1fff581c] = 0x1fff0998
        0x1fff57ac:    6800        .h      LDR      r0,[r0,#0]
        0x1fff57ae:    2801        .(      CMP      r0,#1
        0x1fff57b0:    d102        ..      BNE      0x1fff57b8 ; phy_hw_go + 16
        0x1fff57b2:    a01b        ..      ADR      r0,{pc}+0x6e ; 0x1fff5820
        0x1fff57b4:    f7fdfee8    ....    BL       dbg_printf ; 0x1fff3588
        0x1fff57b8:    481e        .H      LDR      r0,[pc,#120] ; [0x1fff5834] = 0x40031000
        0x1fff57ba:    491d        .I      LDR      r1,[pc,#116] ; [0x1fff5830] = 0x3fff
        0x1fff57bc:    6141        Aa      STR      r1,[r0,#0x14]
        0x1fff57be:    2101        .!      MOVS     r1,#1
        0x1fff57c0:    60c1        .`      STR      r1,[r0,#0xc]
        0x1fff57c2:    6001        .`      STR      r1,[r0,#0]
        0x1fff57c4:    491c        .I      LDR      r1,[pc,#112] ; [0x1fff5838] = 0x40030080
        0x1fff57c6:    6b48        Hk      LDR      r0,[r1,#0x34]
        0x1fff57c8:    b2c0        ..      UXTB     r0,r0
        0x1fff57ca:    2802        .(      CMP      r0,#2
        0x1fff57cc:    d201        ..      BCS      0x1fff57d2 ; phy_hw_go + 42
        0x1fff57ce:    2002        .       MOVS     r0,#2
        0x1fff57d0:    e002        ..      B        0x1fff57d8 ; phy_hw_go + 48
        0x1fff57d2:    2850        P(      CMP      r0,#0x50
        0x1fff57d4:    d900        ..      BLS      0x1fff57d8 ; phy_hw_go + 48
        0x1fff57d6:    2050        P       MOVS     r0,#0x50
        0x1fff57d8:    4a18        .J      LDR      r2,[pc,#96] ; [0x1fff583c] = 0x1fff7214
        0x1fff57da:    7812        .x      LDRB     r2,[r2,#0]
        0x1fff57dc:    2a02        .*      CMP      r2,#2
        0x1fff57de:    d011        ..      BEQ      0x1fff5804 ; phy_hw_go + 92
        0x1fff57e0:    4a17        .J      LDR      r2,[pc,#92] ; [0x1fff5840] = 0x1fff0a44
        0x1fff57e2:    7814        .x      LDRB     r4,[r2,#0]
        0x1fff57e4:    4b17        .K      LDR      r3,[pc,#92] ; [0x1fff5844] = 0x1fff0a45
        0x1fff57e6:    781d        .x      LDRB     r5,[r3,#0]
        0x1fff57e8:    42ac        .B      CMP      r4,r5
        0x1fff57ea:    d915        ..      BLS      0x1fff5818 ; phy_hw_go + 112
        0x1fff57ec:    7814        .x      LDRB     r4,[r2,#0]
        0x1fff57ee:    781b        .x      LDRB     r3,[r3,#0]
        0x1fff57f0:    1ae3        ..      SUBS     r3,r4,r3
        0x1fff57f2:    1e80        ..      SUBS     r0,r0,#2
        0x1fff57f4:    1040        @.      ASRS     r0,r0,#1
        0x1fff57f6:    4343        CC      MULS     r3,r0,r3
        0x1fff57f8:    7810        .x      LDRB     r0,[r2,#0]
        0x1fff57fa:    0140        @.      LSLS     r0,r0,#5
        0x1fff57fc:    1ac0        ..      SUBS     r0,r0,r3
        0x1fff57fe:    3010        .0      ADDS     r0,r0,#0x10
        0x1fff5800:    1140        @.      ASRS     r0,r0,#5
        0x1fff5802:    e003        ..      B        0x1fff580c ; phy_hw_go + 100
        0x1fff5804:    4a10        .J      LDR      r2,[pc,#64] ; [0x1fff5848] = 0x1fff0a46
        0x1fff5806:    7814        .x      LDRB     r4,[r2,#0]
        0x1fff5808:    4b10        .K      LDR      r3,[pc,#64] ; [0x1fff584c] = 0x1fff0a47
        0x1fff580a:    e7ec        ..      B        0x1fff57e6 ; phy_hw_go + 62
        0x1fff580c:    694a        Ji      LDR      r2,[r1,#0x14]
        0x1fff580e:    0a12        ..      LSRS     r2,r2,#8
        0x1fff5810:    0212        ..      LSLS     r2,r2,#8
        0x1fff5812:    4310        .C      ORRS     r0,r0,r2
        0x1fff5814:    6148        Ha      STR      r0,[r1,#0x14]
        0x1fff5816:    bd70        p.      POP      {r4-r6,pc}
        0x1fff5818:    7810        .x      LDRB     r0,[r2,#0]
        0x1fff581a:    e7f7        ..      B        0x1fff580c ; phy_hw_go + 100
    $d
        0x1fff581c:    1fff0998    ....    DCD    536807832
        0x1fff5820:    5948505b    [PHY    DCD    1497911387
        0x1fff5824:    49525420     TRI    DCD    1230132256
        0x1fff5828:    52452047    G ER    DCD    1380261959
        0x1fff582c:    000a5d52    R]..    DCD    679250
        0x1fff5830:    00003fff    .?..    DCD    16383
        0x1fff5834:    40031000    ...@    DCD    1073942528
        0x1fff5838:    40030080    ...@    DCD    1073938560
        0x1fff583c:    1fff7214    .r..    DCD    536834580
        0x1fff5840:    1fff0a44    D...    DCD    536808004
        0x1fff5844:    1fff0a45    E...    DCD    536808005
        0x1fff5848:    1fff0a46    F...    DCD    536808006
        0x1fff584c:    1fff0a47    G...    DCD    536808007
    $t
    i.phy_hw_pktFmt_Config
    phy_hw_pktFmt_Config
        0x1fff5850:    b537        7.      PUSH     {r0-r2,r4,r5,lr}
        0x1fff5852:    4668        hF      MOV      r0,sp
        0x1fff5854:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff5856:    f000fae5    ....    BL       rf_phy_bb_cfg ; 0x1fff5e24
        0x1fff585a:    4668        hF      MOV      r0,sp
        0x1fff585c:    78c0        .x      LDRB     r0,[r0,#3]
        0x1fff585e:    4c10        .L      LDR      r4,[pc,#64] ; [0x1fff58a0] = 0x40030040
        0x1fff5860:    2800        .(      CMP      r0,#0
        0x1fff5862:    d016        ..      BEQ      0x1fff5892 ; phy_hw_pktFmt_Config + 66
        0x1fff5864:    4601        .F      MOV      r1,r0
        0x1fff5866:    f7fcfa49    ..I.    BL       $Ven$TT$L$$ll_hw_set_crc_fmt ; 0x1fff1cfc
        0x1fff586a:    68a0        .h      LDR      r0,[r4,#8]
        0x1fff586c:    9901        ..      LDR      r1,[sp,#4]
        0x1fff586e:    0e00        ..      LSRS     r0,r0,#24
        0x1fff5870:    0600        ..      LSLS     r0,r0,#24
        0x1fff5872:    4308        .C      ORRS     r0,r0,r1
        0x1fff5874:    60a0        .`      STR      r0,[r4,#8]
        0x1fff5876:    2002        .       MOVS     r0,#2
        0x1fff5878:    f7fcfa46    ..F.    BL       $Ven$TT$L$$ll_hw_ign_rfifo ; 0x1fff1d08
        0x1fff587c:    68a0        .h      LDR      r0,[r4,#8]
        0x1fff587e:    4669        iF      MOV      r1,sp
        0x1fff5880:    0200        ..      LSLS     r0,r0,#8
        0x1fff5882:    7889        .x      LDRB     r1,[r1,#2]
        0x1fff5884:    0a00        ..      LSRS     r0,r0,#8
        0x1fff5886:    0609        ..      LSLS     r1,r1,#24
        0x1fff5888:    4308        .C      ORRS     r0,r0,r1
        0x1fff588a:    60a0        .`      STR      r0,[r4,#8]
        0x1fff588c:    9802        ..      LDR      r0,[sp,#8]
        0x1fff588e:    60e0        .`      STR      r0,[r4,#0xc]
        0x1fff5890:    bd3e        >.      POP      {r1-r5,pc}
        0x1fff5892:    4668        hF      MOV      r0,sp
        0x1fff5894:    7840        @x      LDRB     r0,[r0,#1]
        0x1fff5896:    f7fcfa3d    ..=.    BL       $Ven$TT$L$$ll_hw_set_pplus_pktfmt ; 0x1fff1d14
        0x1fff589a:    2000        .       MOVS     r0,#0
        0x1fff589c:    e7ec        ..      B        0x1fff5878 ; phy_hw_pktFmt_Config + 40
    $d
        0x1fff589e:    0000        ..      DCW    0
        0x1fff58a0:    40030040    @..@    DCD    1073938496
    $t
    i.phy_hw_set_srx
    phy_hw_set_srx
        0x1fff58a4:    b510        ..      PUSH     {r4,lr}
        0x1fff58a6:    f7fcf8d9    ....    BL       $Ven$TT$L$$ll_hw_set_rx_timeout ; 0x1fff1a5c
        0x1fff58aa:    f7fcfa39    ..9.    BL       $Ven$TT$L$$ll_hw_set_srx ; 0x1fff1d20
        0x1fff58ae:    223c        <"      MOVS     r2,#0x3c
        0x1fff58b0:    2108        .!      MOVS     r1,#8
        0x1fff58b2:    205a        Z       MOVS     r0,#0x5a
        0x1fff58b4:    f7fcfa3a    ..:.    BL       $Ven$TT$L$$ll_hw_set_trx_settle ; 0x1fff1d2c
        0x1fff58b8:    bd10        ..      POP      {r4,pc}
    i.phy_hw_set_stx
    phy_hw_set_stx
        0x1fff58ba:    b510        ..      PUSH     {r4,lr}
        0x1fff58bc:    f7fcfa3c    ..<.    BL       $Ven$TT$L$$ll_hw_set_stx ; 0x1fff1d38
        0x1fff58c0:    223c        <"      MOVS     r2,#0x3c
        0x1fff58c2:    2108        .!      MOVS     r1,#8
        0x1fff58c4:    205a        Z       MOVS     r0,#0x5a
        0x1fff58c6:    f7fcfa31    ..1.    BL       $Ven$TT$L$$ll_hw_set_trx_settle ; 0x1fff1d2c
        0x1fff58ca:    bd10        ..      POP      {r4,pc}
    i.phy_hw_set_trx
    phy_hw_set_trx
        0x1fff58cc:    b510        ..      PUSH     {r4,lr}
        0x1fff58ce:    f7fcf8c5    ....    BL       $Ven$TT$L$$ll_hw_set_rx_timeout ; 0x1fff1a5c
        0x1fff58d2:    f7fcfa37    ..7.    BL       $Ven$TT$L$$ll_hw_set_trx ; 0x1fff1d44
        0x1fff58d6:    223c        <"      MOVS     r2,#0x3c
        0x1fff58d8:    2108        .!      MOVS     r1,#8
        0x1fff58da:    205a        Z       MOVS     r0,#0x5a
        0x1fff58dc:    f7fcfa26    ..&.    BL       $Ven$TT$L$$ll_hw_set_trx_settle ; 0x1fff1d2c
        0x1fff58e0:    bd10        ..      POP      {r4,pc}
        0x1fff58e2:    0000        ..      MOVS     r0,r0
    i.phy_hw_stop
    phy_hw_stop
        0x1fff58e4:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff58e6:    2400        .$      MOVS     r4,#0
        0x1fff58e8:    2021        !       MOVS     r0,#0x21
        0x1fff58ea:    f7fcf8b7    ....    BL       $Ven$TT$L$$ll_hw_set_rx_timeout ; 0x1fff1a5c
        0x1fff58ee:    4d08        .M      LDR      r5,[pc,#32] ; [0x1fff5910] = 0x1fff0998
        0x1fff58f0:    e00a        ..      B        0x1fff5908 ; phy_hw_stop + 36
        0x1fff58f2:    2003        .       MOVS     r0,#3
        0x1fff58f4:    f7fcf91e    ....    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b34
        0x1fff58f8:    1c64        d.      ADDS     r4,r4,#1
        0x1fff58fa:    b2e4        ..      UXTB     r4,r4
        0x1fff58fc:    2c0a        .,      CMP      r4,#0xa
        0x1fff58fe:    d903        ..      BLS      0x1fff5908 ; phy_hw_stop + 36
        0x1fff5900:    a004        ..      ADR      r0,{pc}+0x14 ; 0x1fff5914
        0x1fff5902:    f7fdfe41    ..A.    BL       dbg_printf ; 0x1fff3588
        0x1fff5906:    bd70        p.      POP      {r4-r6,pc}
        0x1fff5908:    6828        (h      LDR      r0,[r5,#0]
        0x1fff590a:    2800        .(      CMP      r0,#0
        0x1fff590c:    d1f1        ..      BNE      0x1fff58f2 ; phy_hw_stop + 14
        0x1fff590e:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x1fff5910:    1fff0998    ....    DCD    536807832
        0x1fff5914:    5948505b    [PHY    DCD    1497911387
        0x1fff5918:    4f545320     STO    DCD    1330926368
        0x1fff591c:    52452050    P ER    DCD    1380261968
        0x1fff5920:    000a5d52    R]..    DCD    679250
    $t
    i.phy_hw_timing_setting
    phy_hw_timing_setting
        0x1fff5924:    b510        ..      PUSH     {r4,lr}
        0x1fff5926:    2101        .!      MOVS     r1,#1
        0x1fff5928:    200a        .       MOVS     r0,#0xa
        0x1fff592a:    f7fcfa11    ....    BL       $Ven$TT$L$$ll_hw_set_tx_rx_release ; 0x1fff1d50
        0x1fff592e:    203c        <       MOVS     r0,#0x3c
        0x1fff5930:    f7fcfa14    ....    BL       $Ven$TT$L$$ll_hw_set_rx_tx_interval ; 0x1fff1d5c
        0x1fff5934:    2042        B       MOVS     r0,#0x42
        0x1fff5936:    f7fcfa17    ....    BL       $Ven$TT$L$$ll_hw_set_tx_rx_interval ; 0x1fff1d68
        0x1fff593a:    2234        4"      MOVS     r2,#0x34
        0x1fff593c:    2108        .!      MOVS     r1,#8
        0x1fff593e:    2039        9       MOVS     r0,#0x39
        0x1fff5940:    f7fcf9f4    ....    BL       $Ven$TT$L$$ll_hw_set_trx_settle ; 0x1fff1d2c
        0x1fff5944:    bd10        ..      POP      {r4,pc}
        0x1fff5946:    0000        ..      MOVS     r0,r0
    i.phy_rf_rx
    phy_rf_rx
        0x1fff5948:    b510        ..      PUSH     {r4,lr}
        0x1fff594a:    f7ffffcb    ....    BL       phy_hw_stop ; 0x1fff58e4
        0x1fff594e:    f7fbffd7    ....    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff1900
        0x1fff5952:    480e        .H      LDR      r0,[pc,#56] ; [0x1fff598c] = 0x1fff7214
        0x1fff5954:    c807        ..      LDM      r0,{r0-r2}
        0x1fff5956:    f7ffff7b    ..{.    BL       phy_hw_pktFmt_Config ; 0x1fff5850
        0x1fff595a:    f7ffffe3    ....    BL       phy_hw_timing_setting ; 0x1fff5924
        0x1fff595e:    4c0b        .L      LDR      r4,[pc,#44] ; [0x1fff598c] = 0x1fff7214
        0x1fff5960:    340c        .4      ADDS     r4,r4,#0xc
        0x1fff5962:    7b20         {      LDRB     r0,[r4,#0xc]
        0x1fff5964:    f000f8b4    ....    BL       phy_set_channel ; 0x1fff5ad0
        0x1fff5968:    89e0        ..      LDRH     r0,[r4,#0xe]
        0x1fff596a:    f7ffff9b    ....    BL       phy_hw_set_srx ; 0x1fff58a4
        0x1fff596e:    f7fcfa01    ....    BL       $Ven$TT$L$$ll_hw_rst_tfifo ; 0x1fff1d74
        0x1fff5972:    f7fcfa05    ....    BL       $Ven$TT$L$$ll_hw_rst_rfifo ; 0x1fff1d80
        0x1fff5976:    20ff        .       MOVS     r0,#0xff
        0x1fff5978:    f7fcf990    ....    BL       $Ven$TT$L$$set_max_length ; 0x1fff1c9c
        0x1fff597c:    f7ffff14    ....    BL       phy_hw_go ; 0x1fff57a8
        0x1fff5980:    4903        .I      LDR      r1,[pc,#12] ; [0x1fff5990] = 0x1fff0998
        0x1fff5982:    2001        .       MOVS     r0,#1
        0x1fff5984:    6008        .`      STR      r0,[r1,#0]
        0x1fff5986:    f7fbffc7    ....    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff1918
        0x1fff598a:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff598c:    1fff7214    .r..    DCD    536834580
        0x1fff5990:    1fff0998    ....    DCD    536807832
    $t
    i.phy_rf_tx
    phy_rf_tx
        0x1fff5994:    b510        ..      PUSH     {r4,lr}
        0x1fff5996:    f7ffffa5    ....    BL       phy_hw_stop ; 0x1fff58e4
        0x1fff599a:    f7fbffb1    ....    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff1900
        0x1fff599e:    4814        .H      LDR      r0,[pc,#80] ; [0x1fff59f0] = 0x1fff7214
        0x1fff59a0:    c807        ..      LDM      r0,{r0-r2}
        0x1fff59a2:    f7ffff55    ..U.    BL       phy_hw_pktFmt_Config ; 0x1fff5850
        0x1fff59a6:    f7ffffbd    ....    BL       phy_hw_timing_setting ; 0x1fff5924
        0x1fff59aa:    4c11        .L      LDR      r4,[pc,#68] ; [0x1fff59f0] = 0x1fff7214
        0x1fff59ac:    340c        .4      ADDS     r4,r4,#0xc
        0x1fff59ae:    7b20         {      LDRB     r0,[r4,#0xc]
        0x1fff59b0:    f000f88e    ....    BL       phy_set_channel ; 0x1fff5ad0
        0x1fff59b4:    7820         x      LDRB     r0,[r4,#0]
        0x1fff59b6:    2802        .(      CMP      r0,#2
        0x1fff59b8:    d015        ..      BEQ      0x1fff59e6 ; phy_rf_tx + 82
        0x1fff59ba:    f7ffff7e    ..~.    BL       phy_hw_set_stx ; 0x1fff58ba
        0x1fff59be:    f7fcf9d9    ....    BL       $Ven$TT$L$$ll_hw_rst_tfifo ; 0x1fff1d74
        0x1fff59c2:    f7fcf9dd    ....    BL       $Ven$TT$L$$ll_hw_rst_rfifo ; 0x1fff1d80
        0x1fff59c6:    20ff        .       MOVS     r0,#0xff
        0x1fff59c8:    f7fcf968    ..h.    BL       $Ven$TT$L$$set_max_length ; 0x1fff1c9c
        0x1fff59cc:    4809        .H      LDR      r0,[pc,#36] ; [0x1fff59f4] = 0x1fff70f4
        0x1fff59ce:    7841        Ax      LDRB     r1,[r0,#1]
        0x1fff59d0:    1c89        ..      ADDS     r1,r1,#2
        0x1fff59d2:    f7fcf92d    ..-.    BL       $Ven$TT$L$$ll_hw_write_tfifo ; 0x1fff1c30
        0x1fff59d6:    f7fffee7    ....    BL       phy_hw_go ; 0x1fff57a8
        0x1fff59da:    4907        .I      LDR      r1,[pc,#28] ; [0x1fff59f8] = 0x1fff0998
        0x1fff59dc:    2001        .       MOVS     r0,#1
        0x1fff59de:    6008        .`      STR      r0,[r1,#0]
        0x1fff59e0:    f7fbff9a    ....    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff1918
        0x1fff59e4:    bd10        ..      POP      {r4,pc}
        0x1fff59e6:    8a20         .      LDRH     r0,[r4,#0x10]
        0x1fff59e8:    f7ffff70    ..p.    BL       phy_hw_set_trx ; 0x1fff58cc
        0x1fff59ec:    e7e7        ..      B        0x1fff59be ; phy_rf_tx + 42
    $d
        0x1fff59ee:    0000        ..      DCW    0
        0x1fff59f0:    1fff7214    .r..    DCD    536834580
        0x1fff59f4:    1fff70f4    .p..    DCD    536834292
        0x1fff59f8:    1fff0998    ....    DCD    536807832
    $t
    i.phy_rx_data_check
    phy_rx_data_check
        0x1fff59fc:    b510        ..      PUSH     {r4,lr}
        0x1fff59fe:    4806        .H      LDR      r0,[pc,#24] ; [0x1fff5a18] = 0x1fff7220
        0x1fff5a00:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff5a02:    2803        .(      CMP      r0,#3
        0x1fff5a04:    d006        ..      BEQ      0x1fff5a14 ; phy_rx_data_check + 24
        0x1fff5a06:    4805        .H      LDR      r0,[pc,#20] ; [0x1fff5a1c] = 0x1fff6b2c
        0x1fff5a08:    2120         !      MOVS     r1,#0x20
        0x1fff5a0a:    7880        .x      LDRB     r0,[r0,#2]
        0x1fff5a0c:    f7fcf85c    ..\.    BL       $Ven$TT$L$$osal_set_event ; 0x1fff1ac8
        0x1fff5a10:    2000        .       MOVS     r0,#0
        0x1fff5a12:    bd10        ..      POP      {r4,pc}
        0x1fff5a14:    2001        .       MOVS     r0,#1
        0x1fff5a16:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff5a18:    1fff7220     r..    DCD    536834592
        0x1fff5a1c:    1fff6b2c    ,k..    DCD    536832812
    $t
    i.phy_rx_data_process
    phy_rx_data_process
        0x1fff5a20:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff5a22:    4815        .H      LDR      r0,[pc,#84] ; [0x1fff5a78] = 0x1fff7214
        0x1fff5a24:    4e15        .N      LDR      r6,[pc,#84] ; [0x1fff5a7c] = 0x1fff6ff4
        0x1fff5a26:    78c1        .x      LDRB     r1,[r0,#3]
        0x1fff5a28:    2900        .)      CMP      r1,#0
        0x1fff5a2a:    d017        ..      BEQ      0x1fff5a5c ; phy_rx_data_process + 60
        0x1fff5a2c:    7875        ux      LDRB     r5,[r6,#1]
        0x1fff5a2e:    4c14        .L      LDR      r4,[pc,#80] ; [0x1fff5a80] = 0x1fff6b2c
        0x1fff5a30:    7860        `x      LDRB     r0,[r4,#1]
        0x1fff5a32:    2800        .(      CMP      r0,#0
        0x1fff5a34:    d01f        ..      BEQ      0x1fff5a76 ; phy_rx_data_process + 86
        0x1fff5a36:    2828        ((      CMP      r0,#0x28
        0x1fff5a38:    d21d        ..      BCS      0x1fff5a76 ; phy_rx_data_process + 86
        0x1fff5a3a:    a012        ..      ADR      r0,{pc}+0x4a ; 0x1fff5a84
        0x1fff5a3c:    f7fdfda4    ....    BL       dbg_printf ; 0x1fff3588
        0x1fff5a40:    480d        .H      LDR      r0,[pc,#52] ; [0x1fff5a78] = 0x1fff7214
        0x1fff5a42:    88a2        ..      LDRH     r2,[r4,#4]
        0x1fff5a44:    300c        .0      ADDS     r0,r0,#0xc
        0x1fff5a46:    3aff        .:      SUBS     r2,r2,#0xff
        0x1fff5a48:    7b03        .{      LDRB     r3,[r0,#0xc]
        0x1fff5a4a:    3aff        .:      SUBS     r2,r2,#0xff
        0x1fff5a4c:    7861        ax      LDRB     r1,[r4,#1]
        0x1fff5a4e:    a014        ..      ADR      r0,{pc}+0x52 ; 0x1fff5aa0
        0x1fff5a50:    3a02        .:      SUBS     r2,#2
        0x1fff5a52:    f7fdfd99    ....    BL       dbg_printf ; 0x1fff3588
        0x1fff5a56:    2400        .$      MOVS     r4,#0
        0x1fff5a58:    1cad        ..      ADDS     r5,r5,#2
        0x1fff5a5a:    e007        ..      B        0x1fff5a6c ; phy_rx_data_process + 76
        0x1fff5a5c:    7845        Ex      LDRB     r5,[r0,#1]
        0x1fff5a5e:    e7e6        ..      B        0x1fff5a2e ; phy_rx_data_process + 14
        0x1fff5a60:    5d31        1]      LDRB     r1,[r6,r4]
        0x1fff5a62:    a018        ..      ADR      r0,{pc}+0x62 ; 0x1fff5ac4
        0x1fff5a64:    f7fdfd90    ....    BL       dbg_printf ; 0x1fff3588
        0x1fff5a68:    1c64        d.      ADDS     r4,r4,#1
        0x1fff5a6a:    b2e4        ..      UXTB     r4,r4
        0x1fff5a6c:    42ac        .B      CMP      r4,r5
        0x1fff5a6e:    d3f7        ..      BCC      0x1fff5a60 ; phy_rx_data_process + 64
        0x1fff5a70:    a016        ..      ADR      r0,{pc}+0x5c ; 0x1fff5acc
        0x1fff5a72:    f7fdfd89    ....    BL       dbg_printf ; 0x1fff3588
        0x1fff5a76:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x1fff5a78:    1fff7214    .r..    DCD    536834580
        0x1fff5a7c:    1fff6ff4    .o..    DCD    536834036
        0x1fff5a80:    1fff6b2c    ,k..    DCD    536832812
        0x1fff5a84:    2d2d2d2d    ----    DCD    757935405
        0x1fff5a88:    2d2d2d2d    ----    DCD    757935405
        0x1fff5a8c:    2d2d2d2d    ----    DCD    757935405
        0x1fff5a90:    2d2d2d2d    ----    DCD    757935405
        0x1fff5a94:    2d2d2d2d    ----    DCD    757935405
        0x1fff5a98:    2d2d2d2d    ----    DCD    757935405
        0x1fff5a9c:    00000a2d    -...    DCD    2605
        0x1fff5aa0:    5948505b    [PHY    DCD    1497911387
        0x1fff5aa4:    5d585220     RX]    DCD    1566069280
        0x1fff5aa8:    252d5b20     [-%    DCD    623729440
        0x1fff5aac:    64643330    03dd    DCD    1684288304
        0x1fff5ab0:    25206d62    bm %    DCD    622882146
        0x1fff5ab4:    484b6434    4dKH    DCD    1212900404
        0x1fff5ab8:    3025207a    z %0    DCD    807739514
        0x1fff5abc:    43206432    2d C    DCD    1126196274
        0x1fff5ac0:    00205d48    H] .    DCD    2121032
        0x1fff5ac4:    78323025    %02x    DCD    2016555045
        0x1fff5ac8:    00000020     ...    DCD    32
        0x1fff5acc:    0000000a    ....    DCD    10
    $t
    i.phy_set_channel
    phy_set_channel
        0x1fff5ad0:    b510        ..      PUSH     {r4,lr}
        0x1fff5ad2:    490d        .I      LDR      r1,[pc,#52] ; [0x1fff5b08] = 0x1fff0a68
        0x1fff5ad4:    2300        .#      MOVS     r3,#0
        0x1fff5ad6:    56cb        .V      LDRSB    r3,[r1,r3]
        0x1fff5ad8:    4a0c        .J      LDR      r2,[pc,#48] ; [0x1fff5b0c] = 0x40030080
        0x1fff5ada:    2b00        .+      CMP      r3,#0
        0x1fff5adc:    4b0c        .K      LDR      r3,[pc,#48] ; [0x1fff5b10] = 0
        0x1fff5ade:    56cb        .V      LDRSB    r3,[r1,r3]
        0x1fff5ae0:    db06        ..      BLT      0x1fff5af0 ; phy_set_channel + 32
        0x1fff5ae2:    041b        ..      LSLS     r3,r3,#16
        0x1fff5ae4:    2400        .$      MOVS     r4,#0
        0x1fff5ae6:    570c        .W      LDRSB    r4,[r1,r4]
        0x1fff5ae8:    0221        !.      LSLS     r1,r4,#8
        0x1fff5aea:    1859        Y.      ADDS     r1,r3,r1
        0x1fff5aec:    1808        ..      ADDS     r0,r1,r0
        0x1fff5aee:    e008        ..      B        0x1fff5b02 ; phy_set_channel + 50
        0x1fff5af0:    33ff        .3      ADDS     r3,r3,#0xff
        0x1fff5af2:    041b        ..      LSLS     r3,r3,#16
        0x1fff5af4:    2400        .$      MOVS     r4,#0
        0x1fff5af6:    570c        .W      LDRSB    r4,[r1,r4]
        0x1fff5af8:    0221        !.      LSLS     r1,r4,#8
        0x1fff5afa:    1859        Y.      ADDS     r1,r3,r1
        0x1fff5afc:    1808        ..      ADDS     r0,r1,r0
        0x1fff5afe:    4905        .I      LDR      r1,[pc,#20] ; [0x1fff5b14] = 0xfeff
        0x1fff5b00:    1840        @.      ADDS     r0,r0,r1
        0x1fff5b02:    6350        Pc      STR      r0,[r2,#0x34]
        0x1fff5b04:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff5b06:    0000        ..      DCW    0
        0x1fff5b08:    1fff0a68    h...    DCD    536808040
        0x1fff5b0c:    40030080    ...@    DCD    1073938560
        0x1fff5b10:    00000000    ....    DCD    0
        0x1fff5b14:    0000feff    ....    DCD    65279
    $t
    i.phy_tx_buf_updata
    phy_tx_buf_updata
        0x1fff5b18:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff5b1a:    4617        .F      MOV      r7,r2
        0x1fff5b1c:    4604        .F      MOV      r4,r0
        0x1fff5b1e:    461e        .F      MOV      r6,r3
        0x1fff5b20:    2202        ."      MOVS     r2,#2
        0x1fff5b22:    4812        .H      LDR      r0,[pc,#72] ; [0x1fff5b6c] = 0x1fff70f4
        0x1fff5b24:    f7fcf932    ..2.    BL       $Ven$TT$L$$osal_memcpy ; 0x1fff1d8c
        0x1fff5b28:    4d10        .M      LDR      r5,[pc,#64] ; [0x1fff5b6c] = 0x1fff70f4
        0x1fff5b2a:    2206        ."      MOVS     r2,#6
        0x1fff5b2c:    4621        !F      MOV      r1,r4
        0x1fff5b2e:    1ca8        ..      ADDS     r0,r5,#2
        0x1fff5b30:    f7fcf92c    ..,.    BL       $Ven$TT$L$$osal_memcpy ; 0x1fff1d8c
        0x1fff5b34:    4628        (F      MOV      r0,r5
        0x1fff5b36:    4632        2F      MOV      r2,r6
        0x1fff5b38:    4639        9F      MOV      r1,r7
        0x1fff5b3a:    3008        .0      ADDS     r0,r0,#8
        0x1fff5b3c:    f7fcf926    ..&.    BL       $Ven$TT$L$$osal_memcpy ; 0x1fff1d8c
        0x1fff5b40:    a00b        ..      ADR      r0,{pc}+0x30 ; 0x1fff5b70
        0x1fff5b42:    f7fdfd21    ..!.    BL       dbg_printf ; 0x1fff3588
        0x1fff5b46:    a017        ..      ADR      r0,{pc}+0x5e ; 0x1fff5ba4
        0x1fff5b48:    f7fdfd1e    ....    BL       dbg_printf ; 0x1fff3588
        0x1fff5b4c:    2400        .$      MOVS     r4,#0
        0x1fff5b4e:    e005        ..      B        0x1fff5b5c ; phy_tx_buf_updata + 68
        0x1fff5b50:    5d29        )]      LDRB     r1,[r5,r4]
        0x1fff5b52:    a019        ..      ADR      r0,{pc}+0x66 ; 0x1fff5bb8
        0x1fff5b54:    f7fdfd18    ....    BL       dbg_printf ; 0x1fff3588
        0x1fff5b58:    1c64        d.      ADDS     r4,r4,#1
        0x1fff5b5a:    b2e4        ..      UXTB     r4,r4
        0x1fff5b5c:    7868        hx      LDRB     r0,[r5,#1]
        0x1fff5b5e:    1c80        ..      ADDS     r0,r0,#2
        0x1fff5b60:    42a0        .B      CMP      r0,r4
        0x1fff5b62:    d8f5        ..      BHI      0x1fff5b50 ; phy_tx_buf_updata + 56
        0x1fff5b64:    a002        ..      ADR      r0,{pc}+0xc ; 0x1fff5b70
        0x1fff5b66:    f7fdfd0f    ....    BL       dbg_printf ; 0x1fff3588
        0x1fff5b6a:    bdf8        ..      POP      {r3-r7,pc}
    $d
        0x1fff5b6c:    1fff70f4    .p..    DCD    536834292
        0x1fff5b70:    2d2d2d0a    .---    DCD    757935370
        0x1fff5b74:    2d2d2d2d    ----    DCD    757935405
        0x1fff5b78:    2d2d2d2d    ----    DCD    757935405
        0x1fff5b7c:    2d2d2d2d    ----    DCD    757935405
        0x1fff5b80:    2d2d2d2d    ----    DCD    757935405
        0x1fff5b84:    2d2d2d2d    ----    DCD    757935405
        0x1fff5b88:    2d2d2d2d    ----    DCD    757935405
        0x1fff5b8c:    2d2d2d2d    ----    DCD    757935405
        0x1fff5b90:    2d2d2d2d    ----    DCD    757935405
        0x1fff5b94:    2d2d2d2d    ----    DCD    757935405
        0x1fff5b98:    2d2d2d2d    ----    DCD    757935405
        0x1fff5b9c:    2d2d2d2d    ----    DCD    757935405
        0x1fff5ba0:    0000000a    ....    DCD    10
        0x1fff5ba4:    20594850    PHY     DCD    542722128
        0x1fff5ba8:    20465542    BUF     DCD    541480258
        0x1fff5bac:    44207854    Tx D    DCD    1142978644
        0x1fff5bb0:    0a706d75    ump.    DCD    175140213
        0x1fff5bb4:    00000000    ....    DCD    0
        0x1fff5bb8:    78323025    %02x    DCD    2016555045
        0x1fff5bbc:    00000020     ...    DCD    32
    $t
    i.process_rx_done_evt
    process_rx_done_evt
        0x1fff5bc0:    b510        ..      PUSH     {r4,lr}
        0x1fff5bc2:    f7fbfef7    ....    BL       $Ven$TT$L$$read_current_fine_time ; 0x1fff19b4
        0x1fff5bc6:    4912        .I      LDR      r1,[pc,#72] ; [0x1fff5c10] = 0x1fff7220
        0x1fff5bc8:    694a        Ji      LDR      r2,[r1,#0x14]
        0x1fff5bca:    4282        .B      CMP      r2,r0
        0x1fff5bcc:    d801        ..      BHI      0x1fff5bd2 ; process_rx_done_evt + 18
        0x1fff5bce:    1a82        ..      SUBS     r2,r0,r2
        0x1fff5bd0:    e002        ..      B        0x1fff5bd8 ; process_rx_done_evt + 24
        0x1fff5bd2:    4b10        .K      LDR      r3,[pc,#64] ; [0x1fff5c14] = 0x3fffff
        0x1fff5bd4:    1a9a        ..      SUBS     r2,r3,r2
        0x1fff5bd6:    1812        ..      ADDS     r2,r2,r0
        0x1fff5bd8:    89cb        ..      LDRH     r3,[r1,#0xe]
        0x1fff5bda:    429a        .B      CMP      r2,r3
        0x1fff5bdc:    d202        ..      BCS      0x1fff5be4 ; process_rx_done_evt + 36
        0x1fff5bde:    f7fffeb3    ....    BL       phy_rf_rx ; 0x1fff5948
        0x1fff5be2:    bd10        ..      POP      {r4,pc}
        0x1fff5be4:    6148        Ha      STR      r0,[r1,#0x14]
        0x1fff5be6:    4a0a        .J      LDR      r2,[pc,#40] ; [0x1fff5c10] = 0x1fff7220
        0x1fff5be8:    7b08        .{      LDRB     r0,[r1,#0xc]
        0x1fff5bea:    3a0c        .:      SUBS     r2,r2,#0xc
        0x1fff5bec:    2802        .(      CMP      r0,#2
        0x1fff5bee:    d006        ..      BEQ      0x1fff5bfe ; process_rx_done_evt + 62
        0x1fff5bf0:    281a        .(      CMP      r0,#0x1a
        0x1fff5bf2:    d008        ..      BEQ      0x1fff5c06 ; process_rx_done_evt + 70
        0x1fff5bf4:    2850        P(      CMP      r0,#0x50
        0x1fff5bf6:    d1f4        ..      BNE      0x1fff5be2 ; process_rx_done_evt + 34
        0x1fff5bf8:    20ff        .       MOVS     r0,#0xff
        0x1fff5bfa:    7008        .p      STRB     r0,[r1,#0]
        0x1fff5bfc:    bd10        ..      POP      {r4,pc}
        0x1fff5bfe:    201a        .       MOVS     r0,#0x1a
        0x1fff5c00:    7308        .s      STRB     r0,[r1,#0xc]
        0x1fff5c02:    2033        3       MOVS     r0,#0x33
        0x1fff5c04:    e002        ..      B        0x1fff5c0c ; process_rx_done_evt + 76
        0x1fff5c06:    2050        P       MOVS     r0,#0x50
        0x1fff5c08:    7308        .s      STRB     r0,[r1,#0xc]
        0x1fff5c0a:    2073        s       MOVS     r0,#0x73
        0x1fff5c0c:    7090        .p      STRB     r0,[r2,#2]
        0x1fff5c0e:    e7e6        ..      B        0x1fff5bde ; process_rx_done_evt + 30
    $d
        0x1fff5c10:    1fff7220     r..    DCD    536834592
        0x1fff5c14:    003fffff    ..?.    DCD    4194303
    $t
    i.rc32k_calibration
    rc32k_calibration
        0x1fff5c18:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff5c1a:    481e        .H      LDR      r0,[pc,#120] ; [0x1fff5c94] = 0x4000f0c0
        0x1fff5c1c:    6841        Ah      LDR      r1,[r0,#4]
        0x1fff5c1e:    0609        ..      LSLS     r1,r1,#24
        0x1fff5c20:    d501        ..      BPL      0x1fff5c26 ; rc32k_calibration + 14
        0x1fff5c22:    2000        .       MOVS     r0,#0
        0x1fff5c24:    bdf8        ..      POP      {r3-r7,pc}
        0x1fff5c26:    6841        Ah      LDR      r1,[r0,#4]
        0x1fff5c28:    2280        ."      MOVS     r2,#0x80
        0x1fff5c2a:    4311        .C      ORRS     r1,r1,r2
        0x1fff5c2c:    6041        A`      STR      r1,[r0,#4]
        0x1fff5c2e:    4d19        .M      LDR      r5,[pc,#100] ; [0x1fff5c94] = 0x4000f0c0
        0x1fff5c30:    260a        .&      MOVS     r6,#0xa
        0x1fff5c32:    2700        .'      MOVS     r7,#0
        0x1fff5c34:    3d80        .=      SUBS     r5,r5,#0x80
        0x1fff5c36:    69e8        .i      LDR      r0,[r5,#0x1c]
        0x1fff5c38:    0840        @.      LSRS     r0,r0,#1
        0x1fff5c3a:    0040        @.      LSLS     r0,r0,#1
        0x1fff5c3c:    61e8        .a      STR      r0,[r5,#0x1c]
        0x1fff5c3e:    2006        .       MOVS     r0,#6
        0x1fff5c40:    f7fbff78    ..x.    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b34
        0x1fff5c44:    4c13        .L      LDR      r4,[pc,#76] ; [0x1fff5c94] = 0x4000f0c0
        0x1fff5c46:    3cc0        .<      SUBS     r4,r4,#0xc0
        0x1fff5c48:    69a0        .i      LDR      r0,[r4,#0x18]
        0x1fff5c4a:    2180        .!      MOVS     r1,#0x80
        0x1fff5c4c:    4308        .C      ORRS     r0,r0,r1
        0x1fff5c4e:    61a0        .a      STR      r0,[r4,#0x18]
        0x1fff5c50:    69e8        .i      LDR      r0,[r5,#0x1c]
        0x1fff5c52:    2101        .!      MOVS     r1,#1
        0x1fff5c54:    4308        .C      ORRS     r0,r0,r1
        0x1fff5c56:    61e8        .a      STR      r0,[r5,#0x1c]
        0x1fff5c58:    e002        ..      B        0x1fff5c60 ; rc32k_calibration + 72
        0x1fff5c5a:    2008        .       MOVS     r0,#8
        0x1fff5c5c:    f7fbff6a    ..j.    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b34
        0x1fff5c60:    6aa8        .j      LDR      r0,[r5,#0x28]
        0x1fff5c62:    0580        ..      LSLS     r0,r0,#22
        0x1fff5c64:    d404        ..      BMI      0x1fff5c70 ; rc32k_calibration + 88
        0x1fff5c66:    4630        0F      MOV      r0,r6
        0x1fff5c68:    1e76        v.      SUBS     r6,r6,#1
        0x1fff5c6a:    b2f6        ..      UXTB     r6,r6
        0x1fff5c6c:    2800        .(      CMP      r0,#0
        0x1fff5c6e:    d1f4        ..      BNE      0x1fff5c5a ; rc32k_calibration + 66
        0x1fff5c70:    2e00        ..      CMP      r6,#0
        0x1fff5c72:    d007        ..      BEQ      0x1fff5c84 ; rc32k_calibration + 108
        0x1fff5c74:    6a28        (j      LDR      r0,[r5,#0x20]
        0x1fff5c76:    217e        ~!      MOVS     r1,#0x7e
        0x1fff5c78:    0bc7        ..      LSRS     r7,r0,#15
        0x1fff5c7a:    69a0        .i      LDR      r0,[r4,#0x18]
        0x1fff5c7c:    400f        .@      ANDS     r7,r7,r1
        0x1fff5c7e:    4388        .C      BICS     r0,r0,r1
        0x1fff5c80:    4338        8C      ORRS     r0,r0,r7
        0x1fff5c82:    61a0        .a      STR      r0,[r4,#0x18]
        0x1fff5c84:    69a1        .i      LDR      r1,[r4,#0x18]
        0x1fff5c86:    2080        .       MOVS     r0,#0x80
        0x1fff5c88:    4381        .C      BICS     r1,r1,r0
        0x1fff5c8a:    61a1        .a      STR      r1,[r4,#0x18]
        0x1fff5c8c:    0638        8.      LSLS     r0,r7,#24
        0x1fff5c8e:    0e40        @.      LSRS     r0,r0,#25
        0x1fff5c90:    bdf8        ..      POP      {r3-r7,pc}
    $d
        0x1fff5c92:    0000        ..      DCW    0
        0x1fff5c94:    4000f0c0    ...@    DCD    1073803456
    $t
    i.rc32k_cap_cal
    rc32k_cap_cal
        0x1fff5c98:    4b12        .K      LDR      r3,[pc,#72] ; [0x1fff5ce4] = 0x200b
        0x1fff5c9a:    b510        ..      PUSH     {r4,lr}
        0x1fff5c9c:    4912        .I      LDR      r1,[pc,#72] ; [0x1fff5ce8] = 0x4000f000
        0x1fff5c9e:    227e        ~"      MOVS     r2,#0x7e
        0x1fff5ca0:    4298        .B      CMP      r0,r3
        0x1fff5ca2:    d90a        ..      BLS      0x1fff5cba ; rc32k_cap_cal + 34
        0x1fff5ca4:    698b        .i      LDR      r3,[r1,#0x18]
        0x1fff5ca6:    065b        [.      LSLS     r3,r3,#25
        0x1fff5ca8:    0e9b        ..      LSRS     r3,r3,#26
        0x1fff5caa:    d006        ..      BEQ      0x1fff5cba ; rc32k_cap_cal + 34
        0x1fff5cac:    6988        .i      LDR      r0,[r1,#0x18]
        0x1fff5cae:    698b        .i      LDR      r3,[r1,#0x18]
        0x1fff5cb0:    0640        @.      LSLS     r0,r0,#25
        0x1fff5cb2:    0e80        ..      LSRS     r0,r0,#26
        0x1fff5cb4:    4393        .C      BICS     r3,r3,r2
        0x1fff5cb6:    1e40        @.      SUBS     r0,r0,#1
        0x1fff5cb8:    e00c        ..      B        0x1fff5cd4 ; rc32k_cap_cal + 60
        0x1fff5cba:    4b0c        .K      LDR      r3,[pc,#48] ; [0x1fff5cec] = 0x1cfd
        0x1fff5cbc:    4298        .B      CMP      r0,r3
        0x1fff5cbe:    d20f        ..      BCS      0x1fff5ce0 ; rc32k_cap_cal + 72
        0x1fff5cc0:    6988        .i      LDR      r0,[r1,#0x18]
        0x1fff5cc2:    4010        .@      ANDS     r0,r0,r2
        0x1fff5cc4:    287e        ~(      CMP      r0,#0x7e
        0x1fff5cc6:    d20b        ..      BCS      0x1fff5ce0 ; rc32k_cap_cal + 72
        0x1fff5cc8:    6988        .i      LDR      r0,[r1,#0x18]
        0x1fff5cca:    698b        .i      LDR      r3,[r1,#0x18]
        0x1fff5ccc:    0640        @.      LSLS     r0,r0,#25
        0x1fff5cce:    0e80        ..      LSRS     r0,r0,#26
        0x1fff5cd0:    4393        .C      BICS     r3,r3,r2
        0x1fff5cd2:    1c40        @.      ADDS     r0,r0,#1
        0x1fff5cd4:    0040        @.      LSLS     r0,r0,#1
        0x1fff5cd6:    4303        .C      ORRS     r3,r3,r0
        0x1fff5cd8:    618b        .a      STR      r3,[r1,#0x18]
        0x1fff5cda:    2003        .       MOVS     r0,#3
        0x1fff5cdc:    f7fbff2a    ..*.    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b34
        0x1fff5ce0:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff5ce2:    0000        ..      DCW    0
        0x1fff5ce4:    0000200b    . ..    DCD    8203
        0x1fff5ce8:    4000f000    ...@    DCD    1073803264
        0x1fff5cec:    00001cfd    ....    DCD    7421
    $t
    i.read_TIM5_remainder_timer
    read_TIM5_remainder_timer
        0x1fff5cf0:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff5cf8] = 0x40001040
        0x1fff5cf2:    6940        @i      LDR      r0,[r0,#0x14]
        0x1fff5cf4:    0880        ..      LSRS     r0,r0,#2
        0x1fff5cf6:    4770        pG      BX       lr
    $d
        0x1fff5cf8:    40001040    @..@    DCD    1073745984
    $t
    i.rf_calibrate1
    rf_calibrate1
        0x1fff5cfc:    b510        ..      PUSH     {r4,lr}
        0x1fff5cfe:    f000fa3f    ..?.    BL       rf_tpCal_gen_cap_arrary ; 0x1fff6180
        0x1fff5d02:    f7ffff89    ....    BL       rc32k_calibration ; 0x1fff5c18
        0x1fff5d06:    bd10        ..      POP      {r4,pc}
    i.rf_phy_ana_cfg
    rf_phy_ana_cfg
        0x1fff5d08:    b530        0.      PUSH     {r4,r5,lr}
        0x1fff5d0a:    4839        9H      LDR      r0,[pc,#228] ; [0x1fff5df0] = 0x4000f040
        0x1fff5d0c:    6801        .h      LDR      r1,[r0,#0]
        0x1fff5d0e:    2201        ."      MOVS     r2,#1
        0x1fff5d10:    0492        ..      LSLS     r2,r2,#18
        0x1fff5d12:    4311        .C      ORRS     r1,r1,r2
        0x1fff5d14:    6001        .`      STR      r1,[r0,#0]
        0x1fff5d16:    6841        Ah      LDR      r1,[r0,#4]
        0x1fff5d18:    2203        ."      MOVS     r2,#3
        0x1fff5d1a:    0612        ..      LSLS     r2,r2,#24
        0x1fff5d1c:    4391        .C      BICS     r1,r1,r2
        0x1fff5d1e:    4a35        5J      LDR      r2,[pc,#212] ; [0x1fff5df4] = 0x1fff0a4c
        0x1fff5d20:    7813        .x      LDRB     r3,[r2,#0]
        0x1fff5d22:    061b        ..      LSLS     r3,r3,#24
        0x1fff5d24:    4319        .C      ORRS     r1,r1,r3
        0x1fff5d26:    6041        A`      STR      r1,[r0,#4]
        0x1fff5d28:    6843        Ch      LDR      r3,[r0,#4]
        0x1fff5d2a:    2103        .!      MOVS     r1,#3
        0x1fff5d2c:    0589        ..      LSLS     r1,r1,#22
        0x1fff5d2e:    438b        .C      BICS     r3,r3,r1
        0x1fff5d30:    4931        1I      LDR      r1,[pc,#196] ; [0x1fff5df8] = 0x1fff0a4b
        0x1fff5d32:    780c        .x      LDRB     r4,[r1,#0]
        0x1fff5d34:    05a4        ..      LSLS     r4,r4,#22
        0x1fff5d36:    4323        #C      ORRS     r3,r3,r4
        0x1fff5d38:    6043        C`      STR      r3,[r0,#4]
        0x1fff5d3a:    6843        Ch      LDR      r3,[r0,#4]
        0x1fff5d3c:    2460        `$      MOVS     r4,#0x60
        0x1fff5d3e:    4323        #C      ORRS     r3,r3,r4
        0x1fff5d40:    6043        C`      STR      r3,[r0,#4]
        0x1fff5d42:    7813        .x      LDRB     r3,[r2,#0]
        0x1fff5d44:    2b02        .+      CMP      r3,#2
        0x1fff5d46:    d008        ..      BEQ      0x1fff5d5a ; rf_phy_ana_cfg + 82
        0x1fff5d48:    7813        .x      LDRB     r3,[r2,#0]
        0x1fff5d4a:    2b01        .+      CMP      r3,#1
        0x1fff5d4c:    d005        ..      BEQ      0x1fff5d5a ; rf_phy_ana_cfg + 82
        0x1fff5d4e:    780b        .x      LDRB     r3,[r1,#0]
        0x1fff5d50:    2b02        .+      CMP      r3,#2
        0x1fff5d52:    d002        ..      BEQ      0x1fff5d5a ; rf_phy_ana_cfg + 82
        0x1fff5d54:    780b        .x      LDRB     r3,[r1,#0]
        0x1fff5d56:    2b01        .+      CMP      r3,#1
        0x1fff5d58:    d104        ..      BNE      0x1fff5d64 ; rf_phy_ana_cfg + 92
        0x1fff5d5a:    6843        Ch      LDR      r3,[r0,#4]
        0x1fff5d5c:    24ff        .$      MOVS     r4,#0xff
        0x1fff5d5e:    3401        .4      ADDS     r4,#1
        0x1fff5d60:    4323        #C      ORRS     r3,r3,r4
        0x1fff5d62:    6043        C`      STR      r3,[r0,#4]
        0x1fff5d64:    7812        .x      LDRB     r2,[r2,#0]
        0x1fff5d66:    2a03        .*      CMP      r2,#3
        0x1fff5d68:    d002        ..      BEQ      0x1fff5d70 ; rf_phy_ana_cfg + 104
        0x1fff5d6a:    780a        .x      LDRB     r2,[r1,#0]
        0x1fff5d6c:    2a03        .*      CMP      r2,#3
        0x1fff5d6e:    d103        ..      BNE      0x1fff5d78 ; rf_phy_ana_cfg + 112
        0x1fff5d70:    6842        Bh      LDR      r2,[r0,#4]
        0x1fff5d72:    2380        .#      MOVS     r3,#0x80
        0x1fff5d74:    431a        .C      ORRS     r2,r2,r3
        0x1fff5d76:    6042        B`      STR      r2,[r0,#4]
        0x1fff5d78:    6842        Bh      LDR      r2,[r0,#4]
        0x1fff5d7a:    2303        .#      MOVS     r3,#3
        0x1fff5d7c:    049b        ..      LSLS     r3,r3,#18
        0x1fff5d7e:    431a        .C      ORRS     r2,r2,r3
        0x1fff5d80:    6042        B`      STR      r2,[r0,#4]
        0x1fff5d82:    780b        .x      LDRB     r3,[r1,#0]
        0x1fff5d84:    2201        ."      MOVS     r2,#1
        0x1fff5d86:    05d2        ..      LSLS     r2,r2,#23
        0x1fff5d88:    481c        .H      LDR      r0,[pc,#112] ; [0x1fff5dfc] = 0x40030080
        0x1fff5d8a:    2b00        .+      CMP      r3,#0
        0x1fff5d8c:    d103        ..      BNE      0x1fff5d96 ; rf_phy_ana_cfg + 142
        0x1fff5d8e:    4b1c        .K      LDR      r3,[pc,#112] ; [0x1fff5e00] = 0x1fff0a4a
        0x1fff5d90:    781b        .x      LDRB     r3,[r3,#0]
        0x1fff5d92:    2b03        .+      CMP      r3,#3
        0x1fff5d94:    d01b        ..      BEQ      0x1fff5dce ; rf_phy_ana_cfg + 198
        0x1fff5d96:    68c3        .h      LDR      r3,[r0,#0xc]
        0x1fff5d98:    4393        .C      BICS     r3,r3,r2
        0x1fff5d9a:    60c3        .`      STR      r3,[r0,#0xc]
        0x1fff5d9c:    4a17        .J      LDR      r2,[pc,#92] ; [0x1fff5dfc] = 0x40030080
        0x1fff5d9e:    4b19        .K      LDR      r3,[pc,#100] ; [0x1fff5e04] = 0x20000bc0
        0x1fff5da0:    3240        @2      ADDS     r2,r2,#0x40
        0x1fff5da2:    60d3        .`      STR      r3,[r2,#0xc]
        0x1fff5da4:    23ff        .#      MOVS     r3,#0xff
        0x1fff5da6:    3361        a3      ADDS     r3,r3,#0x61
        0x1fff5da8:    6113        .a      STR      r3,[r2,#0x10]
        0x1fff5daa:    4c17        .L      LDR      r4,[pc,#92] ; [0x1fff5e08] = 0x76a3e7a
        0x1fff5dac:    6154        Ta      STR      r4,[r2,#0x14]
        0x1fff5dae:    4b17        .K      LDR      r3,[pc,#92] ; [0x1fff5e0c] = 0x4890000
        0x1fff5db0:    6193        .a      STR      r3,[r2,#0x18]
        0x1fff5db2:    25ff        .%      MOVS     r5,#0xff
        0x1fff5db4:    4b11        .K      LDR      r3,[pc,#68] ; [0x1fff5dfc] = 0x40030080
        0x1fff5db6:    3581        .5      ADDS     r5,r5,#0x81
        0x1fff5db8:    3380        .3      ADDS     r3,r3,#0x80
        0x1fff5dba:    605d        ]`      STR      r5,[r3,#4]
        0x1fff5dbc:    609c        .`      STR      r4,[r3,#8]
        0x1fff5dbe:    4c14        .L      LDR      r4,[pc,#80] ; [0x1fff5e10] = 0x4898000
        0x1fff5dc0:    60dc        .`      STR      r4,[r3,#0xc]
        0x1fff5dc2:    4b14        .K      LDR      r3,[pc,#80] ; [0x1fff5e14] = 0x24cc
        0x1fff5dc4:    6003        .`      STR      r3,[r0,#0]
        0x1fff5dc6:    7809        .x      LDRB     r1,[r1,#0]
        0x1fff5dc8:    2900        .)      CMP      r1,#0
        0x1fff5dca:    d003        ..      BEQ      0x1fff5dd4 ; rf_phy_ana_cfg + 204
        0x1fff5dcc:    e006        ..      B        0x1fff5ddc ; rf_phy_ana_cfg + 212
        0x1fff5dce:    68c3        .h      LDR      r3,[r0,#0xc]
        0x1fff5dd0:    4313        .C      ORRS     r3,r3,r2
        0x1fff5dd2:    e7e2        ..      B        0x1fff5d9a ; rf_phy_ana_cfg + 146
        0x1fff5dd4:    6801        .h      LDR      r1,[r0,#0]
        0x1fff5dd6:    2301        .#      MOVS     r3,#1
        0x1fff5dd8:    4319        .C      ORRS     r1,r1,r3
        0x1fff5dda:    6001        .`      STR      r1,[r0,#0]
        0x1fff5ddc:    490e        .I      LDR      r1,[pc,#56] ; [0x1fff5e18] = 0x1fff0a48
        0x1fff5dde:    7809        .x      LDRB     r1,[r1,#0]
        0x1fff5de0:    4b0e        .K      LDR      r3,[pc,#56] ; [0x1fff5e1c] = 0x825
        0x1fff5de2:    06c9        ..      LSLS     r1,r1,#27
        0x1fff5de4:    0bc9        ..      LSRS     r1,r1,#15
        0x1fff5de6:    18c9        ..      ADDS     r1,r1,r3
        0x1fff5de8:    6381        .c      STR      r1,[r0,#0x38]
        0x1fff5dea:    480d        .H      LDR      r0,[pc,#52] ; [0x1fff5e20] = 0x1a6fc2f
        0x1fff5dec:    61d0        .a      STR      r0,[r2,#0x1c]
        0x1fff5dee:    bd30        0.      POP      {r4,r5,pc}
    $d
        0x1fff5df0:    4000f040    @..@    DCD    1073803328
        0x1fff5df4:    1fff0a4c    L...    DCD    536808012
        0x1fff5df8:    1fff0a4b    K...    DCD    536808011
        0x1fff5dfc:    40030080    ...@    DCD    1073938560
        0x1fff5e00:    1fff0a4a    J...    DCD    536808010
        0x1fff5e04:    20000bc0    ...     DCD    536873920
        0x1fff5e08:    076a3e7a    z>j.    DCD    124403322
        0x1fff5e0c:    04890000    ....    DCD    76087296
        0x1fff5e10:    04898000    ....    DCD    76120064
        0x1fff5e14:    000024cc    .$..    DCD    9420
        0x1fff5e18:    1fff0a48    H...    DCD    536808008
        0x1fff5e1c:    00000825    %...    DCD    2085
        0x1fff5e20:    01a6fc2f    /...    DCD    27720751
    $t
    i.rf_phy_bb_cfg
    rf_phy_bb_cfg
        0x1fff5e24:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff5e26:    0005        ..      MOVS     r5,r0
        0x1fff5e28:    4a4c        LJ      LDR      r2,[pc,#304] ; [0x1fff5f5c] = 0x44500
        0x1fff5e2a:    484d        MH      LDR      r0,[pc,#308] ; [0x1fff5f60] = 0x400300c0
        0x1fff5e2c:    4b4d        MK      LDR      r3,[pc,#308] ; [0x1fff5f64] = 0x1c0000
        0x1fff5e2e:    4c4e        NL      LDR      r4,[pc,#312] ; [0x1fff5f68] = 0x1fff0a4b
        0x1fff5e30:    494e        NI      LDR      r1,[pc,#312] ; [0x1fff5f6c] = 0x40030080
        0x1fff5e32:    d036        6.      BEQ      0x1fff5ea2 ; rf_phy_bb_cfg + 126
        0x1fff5e34:    2d02        .-      CMP      r5,#2
        0x1fff5e36:    d034        4.      BEQ      0x1fff5ea2 ; rf_phy_bb_cfg + 126
        0x1fff5e38:    1586        ..      ASRS     r6,r0,#22
        0x1fff5e3a:    02b7        ..      LSLS     r7,r6,#10
        0x1fff5e3c:    6206        .b      STR      r6,[r0,#0x20]
        0x1fff5e3e:    6986        .i      LDR      r6,[r0,#0x18]
        0x1fff5e40:    439e        .C      BICS     r6,r6,r3
        0x1fff5e42:    19f3        ..      ADDS     r3,r6,r7
        0x1fff5e44:    6183        .a      STR      r3,[r0,#0x18]
        0x1fff5e46:    7820         x      LDRB     r0,[r4,#0]
        0x1fff5e48:    2800        .(      CMP      r0,#0
        0x1fff5e4a:    d035        5.      BEQ      0x1fff5eb8 ; rf_phy_bb_cfg + 148
        0x1fff5e4c:    2011        .       MOVS     r0,#0x11
        0x1fff5e4e:    0340        @.      LSLS     r0,r0,#13
        0x1fff5e50:    6108        .a      STR      r0,[r1,#0x10]
        0x1fff5e52:    4847        GH      LDR      r0,[pc,#284] ; [0x1fff5f70] = 0x1000002
        0x1fff5e54:    6308        .c      STR      r0,[r1,#0x30]
        0x1fff5e56:    4847        GH      LDR      r0,[pc,#284] ; [0x1fff5f74] = 0x1fff0a44
        0x1fff5e58:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff5e5a:    2201        ."      MOVS     r2,#1
        0x1fff5e5c:    0312        ..      LSLS     r2,r2,#12
        0x1fff5e5e:    1880        ..      ADDS     r0,r0,r2
        0x1fff5e60:    6148        Ha      STR      r0,[r1,#0x14]
        0x1fff5e62:    4e42        BN      LDR      r6,[pc,#264] ; [0x1fff5f6c] = 0x40030080
        0x1fff5e64:    4c41        AL      LDR      r4,[pc,#260] ; [0x1fff5f6c] = 0x40030080
        0x1fff5e66:    4b44        DK      LDR      r3,[pc,#272] ; [0x1fff5f78] = 0xb2800
        0x1fff5e68:    3e80        .>      SUBS     r6,r6,#0x80
        0x1fff5e6a:    3c40        @<      SUBS     r4,r4,#0x40
        0x1fff5e6c:    2d00        .-      CMP      r5,#0
        0x1fff5e6e:    d028        (.      BEQ      0x1fff5ec2 ; rf_phy_bb_cfg + 158
        0x1fff5e70:    2165        e!      MOVS     r1,#0x65
        0x1fff5e72:    4a42        BJ      LDR      r2,[pc,#264] ; [0x1fff5f7c] = 0x37555555
        0x1fff5e74:    02c9        ..      LSLS     r1,r1,#11
        0x1fff5e76:    4842        BH      LDR      r0,[pc,#264] ; [0x1fff5f80] = 0x8e89bed6
        0x1fff5e78:    2d01        .-      CMP      r5,#1
        0x1fff5e7a:    d02f        /.      BEQ      0x1fff5edc ; rf_phy_bb_cfg + 184
        0x1fff5e7c:    2d02        .-      CMP      r5,#2
        0x1fff5e7e:    d032        2.      BEQ      0x1fff5ee6 ; rf_phy_bb_cfg + 194
        0x1fff5e80:    2d03        .-      CMP      r5,#3
        0x1fff5e82:    d05b        [.      BEQ      0x1fff5f3c ; rf_phy_bb_cfg + 280
        0x1fff5e84:    2d04        .-      CMP      r5,#4
        0x1fff5e86:    d059        Y.      BEQ      0x1fff5f3c ; rf_phy_bb_cfg + 280
        0x1fff5e88:    493e        >I      LDR      r1,[pc,#248] ; [0x1fff5f84] = 0x42068000
        0x1fff5e8a:    1869        i.      ADDS     r1,r5,r1
        0x1fff5e8c:    6031        1`      STR      r1,[r6,#0]
        0x1fff5e8e:    493e        >I      LDR      r1,[pc,#248] ; [0x1fff5f88] = 0x555555
        0x1fff5e90:    60a1        .`      STR      r1,[r4,#8]
        0x1fff5e92:    6023        #`      STR      r3,[r4,#0]
        0x1fff5e94:    60e0        .`      STR      r0,[r4,#0xc]
        0x1fff5e96:    2102        .!      MOVS     r1,#2
        0x1fff5e98:    4608        .F      MOV      r0,r1
        0x1fff5e9a:    f7fbff2f    ../.    BL       $Ven$TT$L$$ll_hw_set_crc_fmt ; 0x1fff1cfc
        0x1fff5e9e:    483b        ;H      LDR      r0,[pc,#236] ; [0x1fff5f8c] = 0x22085580
        0x1fff5ea0:    e02c        ,.      B        0x1fff5efc ; rf_phy_bb_cfg + 216
        0x1fff5ea2:    2680        .&      MOVS     r6,#0x80
        0x1fff5ea4:    6206        .b      STR      r6,[r0,#0x20]
        0x1fff5ea6:    6986        .i      LDR      r6,[r0,#0x18]
        0x1fff5ea8:    439e        .C      BICS     r6,r6,r3
        0x1fff5eaa:    2301        .#      MOVS     r3,#1
        0x1fff5eac:    04db        ..      LSLS     r3,r3,#19
        0x1fff5eae:    18f3        ..      ADDS     r3,r6,r3
        0x1fff5eb0:    6183        .a      STR      r3,[r0,#0x18]
        0x1fff5eb2:    7820         x      LDRB     r0,[r4,#0]
        0x1fff5eb4:    2800        .(      CMP      r0,#0
        0x1fff5eb6:    d001        ..      BEQ      0x1fff5ebc ; rf_phy_bb_cfg + 152
        0x1fff5eb8:    610a        .a      STR      r2,[r1,#0x10]
        0x1fff5eba:    e7ca        ..      B        0x1fff5e52 ; rf_phy_bb_cfg + 46
        0x1fff5ebc:    2087        .       MOVS     r0,#0x87
        0x1fff5ebe:    0300        ..      LSLS     r0,r0,#12
        0x1fff5ec0:    e7c6        ..      B        0x1fff5e50 ; rf_phy_bb_cfg + 44
        0x1fff5ec2:    4833        3H      LDR      r0,[pc,#204] ; [0x1fff5f90] = 0x78068000
        0x1fff5ec4:    6030        0`      STR      r0,[r6,#0]
        0x1fff5ec6:    2000        .       MOVS     r0,#0
        0x1fff5ec8:    60a0        .`      STR      r0,[r4,#8]
        0x1fff5eca:    6023        #`      STR      r3,[r4,#0]
        0x1fff5ecc:    4831        1H      LDR      r0,[pc,#196] ; [0x1fff5f94] = 0x3675ee07
        0x1fff5ece:    60e0        .`      STR      r0,[r4,#0xc]
        0x1fff5ed0:    2103        .!      MOVS     r1,#3
        0x1fff5ed2:    4608        .F      MOV      r0,r1
        0x1fff5ed4:    f7fbff12    ....    BL       $Ven$TT$L$$ll_hw_set_crc_fmt ; 0x1fff1cfc
        0x1fff5ed8:    482f        /H      LDR      r0,[pc,#188] ; [0x1fff5f98] = 0x22086680
        0x1fff5eda:    e00f        ..      B        0x1fff5efc ; rf_phy_bb_cfg + 216
        0x1fff5edc:    4b2f        /K      LDR      r3,[pc,#188] ; [0x1fff5f9c] = 0x3d068001
        0x1fff5ede:    6033        3`      STR      r3,[r6,#0]
        0x1fff5ee0:    60a2        .`      STR      r2,[r4,#8]
        0x1fff5ee2:    6021        !`      STR      r1,[r4,#0]
        0x1fff5ee4:    e7d6        ..      B        0x1fff5e94 ; rf_phy_bb_cfg + 112
        0x1fff5ee6:    4b2d        -K      LDR      r3,[pc,#180] ; [0x1fff5f9c] = 0x3d068001
        0x1fff5ee8:    1c5b        [.      ADDS     r3,r3,#1
        0x1fff5eea:    6033        3`      STR      r3,[r6,#0]
        0x1fff5eec:    60a2        .`      STR      r2,[r4,#8]
        0x1fff5eee:    6021        !`      STR      r1,[r4,#0]
        0x1fff5ef0:    60e0        .`      STR      r0,[r4,#0xc]
        0x1fff5ef2:    2102        .!      MOVS     r1,#2
        0x1fff5ef4:    4608        .F      MOV      r0,r1
        0x1fff5ef6:    f7fbff01    ....    BL       $Ven$TT$L$$ll_hw_set_crc_fmt ; 0x1fff1cfc
        0x1fff5efa:    4829        )H      LDR      r0,[pc,#164] ; [0x1fff5fa0] = 0x22084580
        0x1fff5efc:    6120         a      STR      r0,[r4,#0x10]
        0x1fff5efe:    68f0        .h      LDR      r0,[r6,#0xc]
        0x1fff5f00:    21ff        .!      MOVS     r1,#0xff
        0x1fff5f02:    4308        .C      ORRS     r0,r0,r1
        0x1fff5f04:    60f0        .`      STR      r0,[r6,#0xc]
        0x1fff5f06:    4827        'H      LDR      r0,[pc,#156] ; [0x1fff5fa4] = 0x545c9ca4
        0x1fff5f08:    6160        `a      STR      r0,[r4,#0x14]
        0x1fff5f0a:    4827        'H      LDR      r0,[pc,#156] ; [0x1fff5fa8] = 0x4243444c
        0x1fff5f0c:    61a0        .a      STR      r0,[r4,#0x18]
        0x1fff5f0e:    4827        'H      LDR      r0,[pc,#156] ; [0x1fff5fac] = 0x464c5241
        0x1fff5f10:    61e0        .a      STR      r0,[r4,#0x1c]
        0x1fff5f12:    4827        'H      LDR      r0,[pc,#156] ; [0x1fff5fb0] = 0x2e343a40
        0x1fff5f14:    6220         b      STR      r0,[r4,#0x20]
        0x1fff5f16:    4827        'H      LDR      r0,[pc,#156] ; [0x1fff5fb4] = 0x557f0028
        0x1fff5f18:    6260        `b      STR      r0,[r4,#0x24]
        0x1fff5f1a:    4827        'H      LDR      r0,[pc,#156] ; [0x1fff5fb8] = 0x3d43494f
        0x1fff5f1c:    62a0        .b      STR      r0,[r4,#0x28]
        0x1fff5f1e:    4827        'H      LDR      r0,[pc,#156] ; [0x1fff5fbc] = 0x4c2b3137
        0x1fff5f20:    62e0        .b      STR      r0,[r4,#0x2c]
        0x1fff5f22:    4827        'H      LDR      r0,[pc,#156] ; [0x1fff5fc0] = 0x343a4046
        0x1fff5f24:    6320         c      STR      r0,[r4,#0x30]
        0x1fff5f26:    4827        'H      LDR      r0,[pc,#156] ; [0x1fff5fc4] = 0x1c22282e
        0x1fff5f28:    6360        `c      STR      r0,[r4,#0x34]
        0x1fff5f2a:    20e0        .       MOVS     r0,#0xe0
        0x1fff5f2c:    2d01        .-      CMP      r5,#1
        0x1fff5f2e:    d00d        ..      BEQ      0x1fff5f4c ; rf_phy_bb_cfg + 296
        0x1fff5f30:    6821        !h      LDR      r1,[r4,#0]
        0x1fff5f32:    2d02        .-      CMP      r5,#2
        0x1fff5f34:    d00e        ..      BEQ      0x1fff5f54 ; rf_phy_bb_cfg + 304
        0x1fff5f36:    4381        .C      BICS     r1,r1,r0
        0x1fff5f38:    6021        !`      STR      r1,[r4,#0]
        0x1fff5f3a:    bdf8        ..      POP      {r3-r7,pc}
        0x1fff5f3c:    4b22        "K      LDR      r3,[pc,#136] ; [0x1fff5fc8] = 0x98068000
        0x1fff5f3e:    18eb        ..      ADDS     r3,r5,r3
        0x1fff5f40:    6033        3`      STR      r3,[r6,#0]
        0x1fff5f42:    4b22        "K      LDR      r3,[pc,#136] ; [0x1fff5fcc] = 0x50985a54
        0x1fff5f44:    6073        s`      STR      r3,[r6,#4]
        0x1fff5f46:    6021        !`      STR      r1,[r4,#0]
        0x1fff5f48:    60a2        .`      STR      r2,[r4,#8]
        0x1fff5f4a:    e7a3        ..      B        0x1fff5e94 ; rf_phy_bb_cfg + 112
        0x1fff5f4c:    6821        !h      LDR      r1,[r4,#0]
        0x1fff5f4e:    4381        .C      BICS     r1,r1,r0
        0x1fff5f50:    3120         1      ADDS     r1,r1,#0x20
        0x1fff5f52:    e7f1        ..      B        0x1fff5f38 ; rf_phy_bb_cfg + 276
        0x1fff5f54:    4381        .C      BICS     r1,r1,r0
        0x1fff5f56:    3140        @1      ADDS     r1,r1,#0x40
        0x1fff5f58:    e7ee        ..      B        0x1fff5f38 ; rf_phy_bb_cfg + 276
    $d
        0x1fff5f5a:    0000        ..      DCW    0
        0x1fff5f5c:    00044500    .E..    DCD    279808
        0x1fff5f60:    400300c0    ...@    DCD    1073938624
        0x1fff5f64:    001c0000    ....    DCD    1835008
        0x1fff5f68:    1fff0a4b    K...    DCD    536808011
        0x1fff5f6c:    40030080    ...@    DCD    1073938560
        0x1fff5f70:    01000002    ....    DCD    16777218
        0x1fff5f74:    1fff0a44    D...    DCD    536808004
        0x1fff5f78:    000b2800    .(..    DCD    731136
        0x1fff5f7c:    37555555    UUU7    DCD    928339285
        0x1fff5f80:    8e89bed6    ....    DCD    2391391958
        0x1fff5f84:    42068000    ...B    DCD    1107722240
        0x1fff5f88:    00555555    UUU.    DCD    5592405
        0x1fff5f8c:    22085580    .U."    DCD    570971520
        0x1fff5f90:    78068000    ...x    DCD    2013691904
        0x1fff5f94:    3675ee07    ..u6    DCD    913698311
        0x1fff5f98:    22086680    .f."    DCD    570975872
        0x1fff5f9c:    3d068001    ...=    DCD    1023836161
        0x1fff5fa0:    22084580    .E."    DCD    570967424
        0x1fff5fa4:    545c9ca4    ..\T    DCD    1415355556
        0x1fff5fa8:    4243444c    LDCB    DCD    1111704652
        0x1fff5fac:    464c5241    ARLF    DCD    1179406913
        0x1fff5fb0:    2e343a40    @:4.    DCD    775174720
        0x1fff5fb4:    557f0028    (..U    DCD    1434386472
        0x1fff5fb8:    3d43494f    OIC=    DCD    1027819855
        0x1fff5fbc:    4c2b3137    71+L    DCD    1277899063
        0x1fff5fc0:    343a4046    F@:4    DCD    876232774
        0x1fff5fc4:    1c22282e    .(".    DCD    472000558
        0x1fff5fc8:    98068000    ....    DCD    2550562816
        0x1fff5fcc:    50985a54    TZ.P    DCD    1352161876
    $t
    i.rf_phy_change_cfg0
    rf_phy_change_cfg0
        0x1fff5fd0:    b5f0        ..      PUSH     {r4-r7,lr}
        0x1fff5fd2:    4b22        "K      LDR      r3,[pc,#136] ; [0x1fff605c] = 0x400300c0
        0x1fff5fd4:    4d21        !M      LDR      r5,[pc,#132] ; [0x1fff605c] = 0x400300c0
        0x1fff5fd6:    4921        !I      LDR      r1,[pc,#132] ; [0x1fff605c] = 0x400300c0
        0x1fff5fd8:    2680        .&      MOVS     r6,#0x80
        0x1fff5fda:    4a20         J      LDR      r2,[pc,#128] ; [0x1fff605c] = 0x400300c0
        0x1fff5fdc:    2707        .'      MOVS     r7,#7
        0x1fff5fde:    04bf        ..      LSLS     r7,r7,#18
        0x1fff5fe0:    3b40        @;      SUBS     r3,r3,#0x40
        0x1fff5fe2:    3dc0        .=      SUBS     r5,r5,#0xc0
        0x1fff5fe4:    24e0        .$      MOVS     r4,#0xe0
        0x1fff5fe6:    3980        .9      SUBS     r1,r1,#0x80
        0x1fff5fe8:    2802        .(      CMP      r0,#2
        0x1fff5fea:    6216        .b      STR      r6,[r2,#0x20]
        0x1fff5fec:    6996        .i      LDR      r6,[r2,#0x18]
        0x1fff5fee:    d014        ..      BEQ      0x1fff601a ; rf_phy_change_cfg0 + 74
        0x1fff5ff0:    43be        .C      BICS     r6,r6,r7
        0x1fff5ff2:    2701        .'      MOVS     r7,#1
        0x1fff5ff4:    04bf        ..      LSLS     r7,r7,#18
        0x1fff5ff6:    19f6        ..      ADDS     r6,r6,r7
        0x1fff5ff8:    6196        .a      STR      r6,[r2,#0x18]
        0x1fff5ffa:    4a19        .J      LDR      r2,[pc,#100] ; [0x1fff6060] = 0x1fff0a4b
        0x1fff5ffc:    7812        .x      LDRB     r2,[r2,#0]
        0x1fff5ffe:    2a00        .*      CMP      r2,#0
        0x1fff6000:    d01e        ..      BEQ      0x1fff6040 ; rf_phy_change_cfg0 + 112
        0x1fff6002:    107a        z.      ASRS     r2,r7,#1
        0x1fff6004:    611a        .a      STR      r2,[r3,#0x10]
        0x1fff6006:    2801        .(      CMP      r0,#1
        0x1fff6008:    d01e        ..      BEQ      0x1fff6048 ; rf_phy_change_cfg0 + 120
        0x1fff600a:    4a16        .J      LDR      r2,[pc,#88] ; [0x1fff6064] = 0x98068000
        0x1fff600c:    1880        ..      ADDS     r0,r0,r2
        0x1fff600e:    6028        (`      STR      r0,[r5,#0]
        0x1fff6010:    4815        .H      LDR      r0,[pc,#84] ; [0x1fff6068] = 0x22085580
        0x1fff6012:    6108        .a      STR      r0,[r1,#0x10]
        0x1fff6014:    6808        .h      LDR      r0,[r1,#0]
        0x1fff6016:    43a0        .C      BICS     r0,r0,r4
        0x1fff6018:    e014        ..      B        0x1fff6044 ; rf_phy_change_cfg0 + 116
        0x1fff601a:    2001        .       MOVS     r0,#1
        0x1fff601c:    43be        .C      BICS     r6,r6,r7
        0x1fff601e:    04c0        ..      LSLS     r0,r0,#19
        0x1fff6020:    1836        6.      ADDS     r6,r6,r0
        0x1fff6022:    6196        .a      STR      r6,[r2,#0x18]
        0x1fff6024:    4a0e        .J      LDR      r2,[pc,#56] ; [0x1fff6060] = 0x1fff0a4b
        0x1fff6026:    7812        .x      LDRB     r2,[r2,#0]
        0x1fff6028:    2a00        .*      CMP      r2,#0
        0x1fff602a:    d000        ..      BEQ      0x1fff602e ; rf_phy_change_cfg0 + 94
        0x1fff602c:    1040        @.      ASRS     r0,r0,#1
        0x1fff602e:    6118        .a      STR      r0,[r3,#0x10]
        0x1fff6030:    480e        .H      LDR      r0,[pc,#56] ; [0x1fff606c] = 0x3d068002
        0x1fff6032:    6028        (`      STR      r0,[r5,#0]
        0x1fff6034:    480e        .H      LDR      r0,[pc,#56] ; [0x1fff6070] = 0x22084580
        0x1fff6036:    6108        .a      STR      r0,[r1,#0x10]
        0x1fff6038:    6808        .h      LDR      r0,[r1,#0]
        0x1fff603a:    43a0        .C      BICS     r0,r0,r4
        0x1fff603c:    3040        @0      ADDS     r0,r0,#0x40
        0x1fff603e:    e001        ..      B        0x1fff6044 ; rf_phy_change_cfg0 + 116
        0x1fff6040:    611f        .a      STR      r7,[r3,#0x10]
        0x1fff6042:    e7e0        ..      B        0x1fff6006 ; rf_phy_change_cfg0 + 54
        0x1fff6044:    6008        .`      STR      r0,[r1,#0]
        0x1fff6046:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff6048:    4808        .H      LDR      r0,[pc,#32] ; [0x1fff606c] = 0x3d068002
        0x1fff604a:    1e40        @.      SUBS     r0,r0,#1
        0x1fff604c:    6028        (`      STR      r0,[r5,#0]
        0x1fff604e:    4809        .H      LDR      r0,[pc,#36] ; [0x1fff6074] = 0x22086680
        0x1fff6050:    6108        .a      STR      r0,[r1,#0x10]
        0x1fff6052:    6808        .h      LDR      r0,[r1,#0]
        0x1fff6054:    43a0        .C      BICS     r0,r0,r4
        0x1fff6056:    3020         0      ADDS     r0,r0,#0x20
        0x1fff6058:    e7f4        ..      B        0x1fff6044 ; rf_phy_change_cfg0 + 116
    $d
        0x1fff605a:    0000        ..      DCW    0
        0x1fff605c:    400300c0    ...@    DCD    1073938624
        0x1fff6060:    1fff0a4b    K...    DCD    536808011
        0x1fff6064:    98068000    ....    DCD    2550562816
        0x1fff6068:    22085580    .U."    DCD    570971520
        0x1fff606c:    3d068002    ...=    DCD    1023836162
        0x1fff6070:    22084580    .E."    DCD    570967424
        0x1fff6074:    22086680    .f."    DCD    570975872
    $t
    i.rf_phy_get_pktFoot
    rf_phy_get_pktFoot
        0x1fff6078:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff607a:    4b0a        .K      LDR      r3,[pc,#40] ; [0x1fff60a4] = 0x400300c0
        0x1fff607c:    6a5c        \j      LDR      r4,[r3,#0x24]
        0x1fff607e:    6a9d        .j      LDR      r5,[r3,#0x28]
        0x1fff6080:    05a3        ..      LSLS     r3,r4,#22
        0x1fff6082:    2601        .&      MOVS     r6,#1
        0x1fff6084:    0d9b        ..      LSRS     r3,r3,#22
        0x1fff6086:    0276        v.      LSLS     r6,r6,#9
        0x1fff6088:    42b3        .B      CMP      r3,r6
        0x1fff608a:    d901        ..      BLS      0x1fff6090 ; rf_phy_get_pktFoot + 24
        0x1fff608c:    1b9b        ..      SUBS     r3,r3,r6
        0x1fff608e:    e002        ..      B        0x1fff6096 ; rf_phy_get_pktFoot + 30
        0x1fff6090:    33ff        .3      ADDS     r3,r3,#0xff
        0x1fff6092:    33ff        .3      ADDS     r3,r3,#0xff
        0x1fff6094:    3302        .3      ADDS     r3,#2
        0x1fff6096:    800b        ..      STRH     r3,[r1,#0]
        0x1fff6098:    0e29        ).      LSRS     r1,r5,#24
        0x1fff609a:    7001        .p      STRB     r1,[r0,#0]
        0x1fff609c:    0e20         .      LSRS     r0,r4,#24
        0x1fff609e:    7010        .p      STRB     r0,[r2,#0]
        0x1fff60a0:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x1fff60a2:    0000        ..      DCW    0
        0x1fff60a4:    400300c0    ...@    DCD    1073938624
    $t
    i.rf_phy_get_pktFoot_fromPkt
    rf_phy_get_pktFoot_fromPkt
        0x1fff60a8:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff60aa:    0584        ..      LSLS     r4,r0,#22
        0x1fff60ac:    2601        .&      MOVS     r6,#1
        0x1fff60ae:    0da4        ..      LSRS     r4,r4,#22
        0x1fff60b0:    0276        v.      LSLS     r6,r6,#9
        0x1fff60b2:    9d04        ..      LDR      r5,[sp,#0x10]
        0x1fff60b4:    42b4        .B      CMP      r4,r6
        0x1fff60b6:    d901        ..      BLS      0x1fff60bc ; rf_phy_get_pktFoot_fromPkt + 20
        0x1fff60b8:    1ba4        ..      SUBS     r4,r4,r6
        0x1fff60ba:    e002        ..      B        0x1fff60c2 ; rf_phy_get_pktFoot_fromPkt + 26
        0x1fff60bc:    34ff        .4      ADDS     r4,r4,#0xff
        0x1fff60be:    34ff        .4      ADDS     r4,r4,#0xff
        0x1fff60c0:    3402        .4      ADDS     r4,#2
        0x1fff60c2:    0e09        ..      LSRS     r1,r1,#24
        0x1fff60c4:    801c        ..      STRH     r4,[r3,#0]
        0x1fff60c6:    7011        .p      STRB     r1,[r2,#0]
        0x1fff60c8:    0e00        ..      LSRS     r0,r0,#24
        0x1fff60ca:    7028        (p      STRB     r0,[r5,#0]
        0x1fff60cc:    bd70        p.      POP      {r4-r6,pc}
        0x1fff60ce:    0000        ..      MOVS     r0,r0
    i.rf_phy_ini
    rf_phy_ini
        0x1fff60d0:    b510        ..      PUSH     {r4,lr}
        0x1fff60d2:    490a        .I      LDR      r1,[pc,#40] ; [0x1fff60fc] = 0x1fff0a4b
        0x1fff60d4:    2000        .       MOVS     r0,#0
        0x1fff60d6:    7008        .p      STRB     r0,[r1,#0]
        0x1fff60d8:    4909        .I      LDR      r1,[pc,#36] ; [0x1fff6100] = 0x1fff0a4c
        0x1fff60da:    2002        .       MOVS     r0,#2
        0x1fff60dc:    7008        .p      STRB     r0,[r1,#0]
        0x1fff60de:    f7fffe13    ....    BL       rf_phy_ana_cfg ; 0x1fff5d08
        0x1fff60e2:    4808        .H      LDR      r0,[pc,#32] ; [0x1fff6104] = 0x1fff0a48
        0x1fff60e4:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff60e6:    f000f811    ....    BL       rf_phy_set_txPower ; 0x1fff610c
        0x1fff60ea:    4c07        .L      LDR      r4,[pc,#28] ; [0x1fff6108] = 0x1fff0a49
        0x1fff60ec:    7820         x      LDRB     r0,[r4,#0]
        0x1fff60ee:    f7fffe99    ....    BL       rf_phy_bb_cfg ; 0x1fff5e24
        0x1fff60f2:    7820         x      LDRB     r0,[r4,#0]
        0x1fff60f4:    f7fbfe50    ..P.    BL       $Ven$TT$L$$ll_hw_tx2rx_timing_config ; 0x1fff1d98
        0x1fff60f8:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff60fa:    0000        ..      DCW    0
        0x1fff60fc:    1fff0a4b    K...    DCD    536808011
        0x1fff6100:    1fff0a4c    L...    DCD    536808012
        0x1fff6104:    1fff0a48    H...    DCD    536808008
        0x1fff6108:    1fff0a49    I...    DCD    536808009
    $t
    i.rf_phy_set_txPower
    rf_phy_set_txPower
        0x1fff610c:    b5f0        ..      PUSH     {r4-r7,lr}
        0x1fff610e:    4a1a        .J      LDR      r2,[pc,#104] ; [0x1fff6178] = 0x4000f000
        0x1fff6110:    2303        .#      MOVS     r3,#3
        0x1fff6112:    2507        .%      MOVS     r5,#7
        0x1fff6114:    00d6        ..      LSLS     r6,r2,#3
        0x1fff6116:    4919        .I      LDR      r1,[pc,#100] ; [0x1fff617c] = 0x400300c0
        0x1fff6118:    029b        ..      LSLS     r3,r3,#10
        0x1fff611a:    2460        `$      MOVS     r4,#0x60
        0x1fff611c:    01ed        ..      LSLS     r5,r5,#7
        0x1fff611e:    6957        Wi      LDR      r7,[r2,#0x14]
        0x1fff6120:    283f        ?(      CMP      r0,#0x3f
        0x1fff6122:    d01a        ..      BEQ      0x1fff615a ; rf_phy_set_txPower + 78
        0x1fff6124:    43b7        .C      BICS     r7,r7,r6
        0x1fff6126:    2605        .&      MOVS     r6,#5
        0x1fff6128:    0436        6.      LSLS     r6,r6,#16
        0x1fff612a:    19be        ..      ADDS     r6,r7,r6
        0x1fff612c:    6156        Va      STR      r6,[r2,#0x14]
        0x1fff612e:    68ca        .h      LDR      r2,[r1,#0xc]
        0x1fff6130:    439a        .C      BICS     r2,r2,r3
        0x1fff6132:    14cb        ..      ASRS     r3,r1,#19
        0x1fff6134:    18d2        ..      ADDS     r2,r2,r3
        0x1fff6136:    60ca        .`      STR      r2,[r1,#0xc]
        0x1fff6138:    69ca        .i      LDR      r2,[r1,#0x1c]
        0x1fff613a:    43a2        .C      BICS     r2,r2,r4
        0x1fff613c:    3220         2      ADDS     r2,r2,#0x20
        0x1fff613e:    61ca        .a      STR      r2,[r1,#0x1c]
        0x1fff6140:    69ca        .i      LDR      r2,[r1,#0x1c]
        0x1fff6142:    43aa        .C      BICS     r2,r2,r5
        0x1fff6144:    61ca        .a      STR      r2,[r1,#0x1c]
        0x1fff6146:    490d        .I      LDR      r1,[pc,#52] ; [0x1fff617c] = 0x400300c0
        0x1fff6148:    3940        @9      SUBS     r1,r1,#0x40
        0x1fff614a:    6b8a        .k      LDR      r2,[r1,#0x38]
        0x1fff614c:    06c0        ..      LSLS     r0,r0,#27
        0x1fff614e:    0512        ..      LSLS     r2,r2,#20
        0x1fff6150:    0d12        ..      LSRS     r2,r2,#20
        0x1fff6152:    0bc0        ..      LSRS     r0,r0,#15
        0x1fff6154:    4302        .C      ORRS     r2,r2,r0
        0x1fff6156:    638a        .c      STR      r2,[r1,#0x38]
        0x1fff6158:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff615a:    43b7        .C      BICS     r7,r7,r6
        0x1fff615c:    2601        .&      MOVS     r6,#1
        0x1fff615e:    04b6        ..      LSLS     r6,r6,#18
        0x1fff6160:    19be        ..      ADDS     r6,r7,r6
        0x1fff6162:    6156        Va      STR      r6,[r2,#0x14]
        0x1fff6164:    68ca        .h      LDR      r2,[r1,#0xc]
        0x1fff6166:    439a        .C      BICS     r2,r2,r3
        0x1fff6168:    60ca        .`      STR      r2,[r1,#0xc]
        0x1fff616a:    69ca        .i      LDR      r2,[r1,#0x1c]
        0x1fff616c:    43a2        .C      BICS     r2,r2,r4
        0x1fff616e:    61ca        .a      STR      r2,[r1,#0x1c]
        0x1fff6170:    69ca        .i      LDR      r2,[r1,#0x1c]
        0x1fff6172:    43aa        .C      BICS     r2,r2,r5
        0x1fff6174:    3280        .2      ADDS     r2,r2,#0x80
        0x1fff6176:    e7e5        ..      B        0x1fff6144 ; rf_phy_set_txPower + 56
    $d
        0x1fff6178:    4000f000    ...@    DCD    1073803264
        0x1fff617c:    400300c0    ...@    DCD    1073938624
    $t
    i.rf_tpCal_gen_cap_arrary
    rf_tpCal_gen_cap_arrary
        0x1fff6180:    b500        ..      PUSH     {lr}
        0x1fff6182:    2100        .!      MOVS     r1,#0
        0x1fff6184:    2002        .       MOVS     r0,#2
        0x1fff6186:    f000f821    ..!.    BL       rf_tp_cal ; 0x1fff61cc
        0x1fff618a:    490c        .I      LDR      r1,[pc,#48] ; [0x1fff61bc] = 0x1fff0a44
        0x1fff618c:    1c80        ..      ADDS     r0,r0,#2
        0x1fff618e:    7008        .p      STRB     r0,[r1,#0]
        0x1fff6190:    2100        .!      MOVS     r1,#0
        0x1fff6192:    2042        B       MOVS     r0,#0x42
        0x1fff6194:    f000f81a    ....    BL       rf_tp_cal ; 0x1fff61cc
        0x1fff6198:    4909        .I      LDR      r1,[pc,#36] ; [0x1fff61c0] = 0x1fff0a45
        0x1fff619a:    1c80        ..      ADDS     r0,r0,#2
        0x1fff619c:    7008        .p      STRB     r0,[r1,#0]
        0x1fff619e:    2101        .!      MOVS     r1,#1
        0x1fff61a0:    2002        .       MOVS     r0,#2
        0x1fff61a2:    f000f813    ....    BL       rf_tp_cal ; 0x1fff61cc
        0x1fff61a6:    4907        .I      LDR      r1,[pc,#28] ; [0x1fff61c4] = 0x1fff0a46
        0x1fff61a8:    1c80        ..      ADDS     r0,r0,#2
        0x1fff61aa:    7008        .p      STRB     r0,[r1,#0]
        0x1fff61ac:    2101        .!      MOVS     r1,#1
        0x1fff61ae:    2042        B       MOVS     r0,#0x42
        0x1fff61b0:    f000f80c    ....    BL       rf_tp_cal ; 0x1fff61cc
        0x1fff61b4:    4904        .I      LDR      r1,[pc,#16] ; [0x1fff61c8] = 0x1fff0a47
        0x1fff61b6:    1c80        ..      ADDS     r0,r0,#2
        0x1fff61b8:    7008        .p      STRB     r0,[r1,#0]
        0x1fff61ba:    bd00        ..      POP      {pc}
    $d
        0x1fff61bc:    1fff0a44    D...    DCD    536808004
        0x1fff61c0:    1fff0a45    E...    DCD    536808005
        0x1fff61c4:    1fff0a46    F...    DCD    536808006
        0x1fff61c8:    1fff0a47    G...    DCD    536808007
    $t
    i.rf_tp_cal
    rf_tp_cal
        0x1fff61cc:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff61ce:    4c3b        ;L      LDR      r4,[pc,#236] ; [0x1fff62bc] = 0x40030040
        0x1fff61d0:    4a39        9J      LDR      r2,[pc,#228] ; [0x1fff62b8] = 0x30010
        0x1fff61d2:    6022        "`      STR      r2,[r4,#0]
        0x1fff61d4:    4d39        9M      LDR      r5,[pc,#228] ; [0x1fff62bc] = 0x40030040
        0x1fff61d6:    4a39        9J      LDR      r2,[pc,#228] ; [0x1fff62bc] = 0x40030040
        0x1fff61d8:    2307        .#      MOVS     r3,#7
        0x1fff61da:    049b        ..      LSLS     r3,r3,#18
        0x1fff61dc:    3580        .5      ADDS     r5,r5,#0x80
        0x1fff61de:    3240        @2      ADDS     r2,r2,#0x40
        0x1fff61e0:    2901        .)      CMP      r1,#1
        0x1fff61e2:    69a9        .i      LDR      r1,[r5,#0x18]
        0x1fff61e4:    d00e        ..      BEQ      0x1fff6204 ; rf_tp_cal + 56
        0x1fff61e6:    4399        .C      BICS     r1,r1,r3
        0x1fff61e8:    2301        .#      MOVS     r3,#1
        0x1fff61ea:    049b        ..      LSLS     r3,r3,#18
        0x1fff61ec:    18c9        ..      ADDS     r1,r1,r3
        0x1fff61ee:    61a9        .a      STR      r1,[r5,#0x18]
        0x1fff61f0:    4933        3I      LDR      r1,[pc,#204] ; [0x1fff62c0] = 0x73407f
        0x1fff61f2:    60d1        .`      STR      r1,[r2,#0xc]
        0x1fff61f4:    4933        3I      LDR      r1,[pc,#204] ; [0x1fff62c4] = 0x1fff0a4b
        0x1fff61f6:    780b        .x      LDRB     r3,[r1,#0]
        0x1fff61f8:    2101        .!      MOVS     r1,#1
        0x1fff61fa:    05c9        ..      LSLS     r1,r1,#23
        0x1fff61fc:    4e32        2N      LDR      r6,[pc,#200] ; [0x1fff62c8] = 0x1fff0a4a
        0x1fff61fe:    2b00        .+      CMP      r3,#0
        0x1fff6200:    d007        ..      BEQ      0x1fff6212 ; rf_tp_cal + 70
        0x1fff6202:    e009        ..      B        0x1fff6218 ; rf_tp_cal + 76
        0x1fff6204:    4399        .C      BICS     r1,r1,r3
        0x1fff6206:    2301        .#      MOVS     r3,#1
        0x1fff6208:    04db        ..      LSLS     r3,r3,#19
        0x1fff620a:    18c9        ..      ADDS     r1,r1,r3
        0x1fff620c:    61a9        .a      STR      r1,[r5,#0x18]
        0x1fff620e:    492f        /I      LDR      r1,[pc,#188] ; [0x1fff62cc] = 0x53407f
        0x1fff6210:    e7ef        ..      B        0x1fff61f2 ; rf_tp_cal + 38
        0x1fff6212:    7833        3x      LDRB     r3,[r6,#0]
        0x1fff6214:    2b03        .+      CMP      r3,#3
        0x1fff6216:    d014        ..      BEQ      0x1fff6242 ; rf_tp_cal + 118
        0x1fff6218:    68d3        .h      LDR      r3,[r2,#0xc]
        0x1fff621a:    438b        .C      BICS     r3,r3,r1
        0x1fff621c:    60d3        .`      STR      r3,[r2,#0xc]
        0x1fff621e:    6350        Pc      STR      r0,[r2,#0x34]
        0x1fff6220:    200e        .       MOVS     r0,#0xe
        0x1fff6222:    6210        .b      STR      r0,[r2,#0x20]
        0x1fff6224:    2700        .'      MOVS     r7,#0
        0x1fff6226:    6257        Wb      STR      r7,[r2,#0x24]
        0x1fff6228:    20ff        .       MOVS     r0,#0xff
        0x1fff622a:    3015        .0      ADDS     r0,r0,#0x15
        0x1fff622c:    6250        Pb      STR      r0,[r2,#0x24]
        0x1fff622e:    4828        (H      LDR      r0,[pc,#160] ; [0x1fff62d0] = 0x2710
        0x1fff6230:    9000        ..      STR      r0,[sp,#0]
        0x1fff6232:    7830        0x      LDRB     r0,[r6,#0]
        0x1fff6234:    0003        ..      MOVS     r3,r0
        0x1fff6236:    f7fbfdb5    ....    BL       $Ven$TT$L$$__ARM_common_switch8 ; 0x1fff1da4
    $d
        0x1fff623a:    0705        ..      DCW    1797
        0x1fff623c:    0b090d07    ....    DCD    185142535
        0x1fff6240:    000d        ..      DCW    13
    $t
        0x1fff6242:    68d3        .h      LDR      r3,[r2,#0xc]
        0x1fff6244:    430b        .C      ORRS     r3,r3,r1
        0x1fff6246:    e7e9        ..      B        0x1fff621c ; rf_tp_cal + 80
        0x1fff6248:    4822        "H      LDR      r0,[pc,#136] ; [0x1fff62d4] = 0x4e20
        0x1fff624a:    e002        ..      B        0x1fff6252 ; rf_tp_cal + 134
        0x1fff624c:    4822        "H      LDR      r0,[pc,#136] ; [0x1fff62d8] = 0x7530
        0x1fff624e:    e000        ..      B        0x1fff6252 ; rf_tp_cal + 134
        0x1fff6250:    4822        "H      LDR      r0,[pc,#136] ; [0x1fff62dc] = 0x9c40
        0x1fff6252:    9000        ..      STR      r0,[sp,#0]
        0x1fff6254:    9800        ..      LDR      r0,[sp,#0]
        0x1fff6256:    1e43        C.      SUBS     r3,r0,#1
        0x1fff6258:    9300        ..      STR      r3,[sp,#0]
        0x1fff625a:    d2fb        ..      BCS      0x1fff6254 ; rf_tp_cal + 136
        0x1fff625c:    6b68        hk      LDR      r0,[r5,#0x34]
        0x1fff625e:    6257        Wb      STR      r7,[r2,#0x24]
        0x1fff6260:    0200        ..      LSLS     r0,r0,#8
        0x1fff6262:    0e00        ..      LSRS     r0,r0,#24
        0x1fff6264:    6217        .b      STR      r7,[r2,#0x20]
        0x1fff6266:    4b1e        .K      LDR      r3,[pc,#120] ; [0x1fff62e0] = 0x104040
        0x1fff6268:    60d3        .`      STR      r3,[r2,#0xc]
        0x1fff626a:    23ff        .#      MOVS     r3,#0xff
        0x1fff626c:    3341        A3      ADDS     r3,r3,#0x41
        0x1fff626e:    6253        Sb      STR      r3,[r2,#0x24]
        0x1fff6270:    2365        e#      MOVS     r3,#0x65
        0x1fff6272:    02db        ..      LSLS     r3,r3,#11
        0x1fff6274:    6023        #`      STR      r3,[r4,#0]
        0x1fff6276:    4d1b        .M      LDR      r5,[pc,#108] ; [0x1fff62e4] = 0x1fff0a49
        0x1fff6278:    782f        /x      LDRB     r7,[r5,#0]
        0x1fff627a:    23e0        .#      MOVS     r3,#0xe0
        0x1fff627c:    2f01        ./      CMP      r7,#1
        0x1fff627e:    d00a        ..      BEQ      0x1fff6296 ; rf_tp_cal + 202
        0x1fff6280:    782d        -x      LDRB     r5,[r5,#0]
        0x1fff6282:    2d02        .-      CMP      r5,#2
        0x1fff6284:    6825        %h      LDR      r5,[r4,#0]
        0x1fff6286:    d00a        ..      BEQ      0x1fff629e ; rf_tp_cal + 210
        0x1fff6288:    439d        .C      BICS     r5,r5,r3
        0x1fff628a:    6025        %`      STR      r5,[r4,#0]
        0x1fff628c:    4b0d        .K      LDR      r3,[pc,#52] ; [0x1fff62c4] = 0x1fff0a4b
        0x1fff628e:    781b        .x      LDRB     r3,[r3,#0]
        0x1fff6290:    2b00        .+      CMP      r3,#0
        0x1fff6292:    d007        ..      BEQ      0x1fff62a4 ; rf_tp_cal + 216
        0x1fff6294:    e009        ..      B        0x1fff62aa ; rf_tp_cal + 222
        0x1fff6296:    6825        %h      LDR      r5,[r4,#0]
        0x1fff6298:    439d        .C      BICS     r5,r5,r3
        0x1fff629a:    3520         5      ADDS     r5,r5,#0x20
        0x1fff629c:    e7f5        ..      B        0x1fff628a ; rf_tp_cal + 190
        0x1fff629e:    439d        .C      BICS     r5,r5,r3
        0x1fff62a0:    3540        @5      ADDS     r5,r5,#0x40
        0x1fff62a2:    e7f2        ..      B        0x1fff628a ; rf_tp_cal + 190
        0x1fff62a4:    7833        3x      LDRB     r3,[r6,#0]
        0x1fff62a6:    2b03        .+      CMP      r3,#3
        0x1fff62a8:    d003        ..      BEQ      0x1fff62b2 ; rf_tp_cal + 230
        0x1fff62aa:    68d3        .h      LDR      r3,[r2,#0xc]
        0x1fff62ac:    438b        .C      BICS     r3,r3,r1
        0x1fff62ae:    60d3        .`      STR      r3,[r2,#0xc]
        0x1fff62b0:    bdf8        ..      POP      {r3-r7,pc}
        0x1fff62b2:    68d3        .h      LDR      r3,[r2,#0xc]
        0x1fff62b4:    430b        .C      ORRS     r3,r3,r1
        0x1fff62b6:    e7fa        ..      B        0x1fff62ae ; rf_tp_cal + 226
    $d
        0x1fff62b8:    00030010    ....    DCD    196624
        0x1fff62bc:    40030040    @..@    DCD    1073938496
        0x1fff62c0:    0073407f    .@s.    DCD    7553151
        0x1fff62c4:    1fff0a4b    K...    DCD    536808011
        0x1fff62c8:    1fff0a4a    J...    DCD    536808010
        0x1fff62cc:    0053407f    .@S.    DCD    5455999
        0x1fff62d0:    00002710    .'..    DCD    10000
        0x1fff62d4:    00004e20     N..    DCD    20000
        0x1fff62d8:    00007530    0u..    DCD    30000
        0x1fff62dc:    00009c40    @...    DCD    40000
        0x1fff62e0:    00104040    @@..    DCD    1065024
        0x1fff62e4:    1fff0a49    I...    DCD    536808009
    $t
    i.skip_atoi
    skip_atoi
        0x1fff62e8:    4601        .F      MOV      r1,r0
        0x1fff62ea:    2000        .       MOVS     r0,#0
        0x1fff62ec:    e006        ..      B        0x1fff62fc ; skip_atoi + 20
        0x1fff62ee:    1c53        S.      ADDS     r3,r2,#1
        0x1fff62f0:    600b        .`      STR      r3,[r1,#0]
        0x1fff62f2:    230a        .#      MOVS     r3,#0xa
        0x1fff62f4:    7812        .x      LDRB     r2,[r2,#0]
        0x1fff62f6:    4358        XC      MULS     r0,r3,r0
        0x1fff62f8:    3830        08      SUBS     r0,r0,#0x30
        0x1fff62fa:    1810        ..      ADDS     r0,r2,r0
        0x1fff62fc:    680a        .h      LDR      r2,[r1,#0]
        0x1fff62fe:    7813        .x      LDRB     r3,[r2,#0]
        0x1fff6300:    3b30        0;      SUBS     r3,r3,#0x30
        0x1fff6302:    2b09        .+      CMP      r3,#9
        0x1fff6304:    d9f3        ..      BLS      0x1fff62ee ; skip_atoi + 6
        0x1fff6306:    4770        pG      BX       lr
    i.txmit_buf_polling
    txmit_buf_polling
        0x1fff6308:    b578        x.      PUSH     {r3-r6,lr}
        0x1fff630a:    4b17        .K      LDR      r3,[pc,#92] ; [0x1fff6368] = 0x40004000
        0x1fff630c:    2801        .(      CMP      r0,#1
        0x1fff630e:    d100        ..      BNE      0x1fff6312 ; txmit_buf_polling + 10
        0x1fff6310:    4b16        .K      LDR      r3,[pc,#88] ; [0x1fff636c] = 0x40009000
        0x1fff6312:    2400        .$      MOVS     r4,#0
        0x1fff6314:    4816        .H      LDR      r0,[pc,#88] ; [0x1fff6370] = 0x186a0
        0x1fff6316:    9400        ..      STR      r4,[sp,#0]
        0x1fff6318:    e004        ..      B        0x1fff6324 ; txmit_buf_polling + 28
        0x1fff631a:    9d00        ..      LDR      r5,[sp,#0]
        0x1fff631c:    1c6e        n.      ADDS     r6,r5,#1
        0x1fff631e:    9600        ..      STR      r6,[sp,#0]
        0x1fff6320:    4285        .B      CMP      r5,r0
        0x1fff6322:    dc1a        ..      BGT      0x1fff635a ; txmit_buf_polling + 82
        0x1fff6324:    6fdd        .o      LDR      r5,[r3,#0x7c]
        0x1fff6326:    07ed        ..      LSLS     r5,r5,#31
        0x1fff6328:    d1f7        ..      BNE      0x1fff631a ; txmit_buf_polling + 18
        0x1fff632a:    e00a        ..      B        0x1fff6342 ; txmit_buf_polling + 58
        0x1fff632c:    9d00        ..      LDR      r5,[sp,#0]
        0x1fff632e:    1c6e        n.      ADDS     r6,r5,#1
        0x1fff6330:    9600        ..      STR      r6,[sp,#0]
        0x1fff6332:    4285        .B      CMP      r5,r0
        0x1fff6334:    dc11        ..      BGT      0x1fff635a ; txmit_buf_polling + 82
        0x1fff6336:    7d1d        .}      LDRB     r5,[r3,#0x14]
        0x1fff6338:    06ad        ..      LSLS     r5,r5,#26
        0x1fff633a:    d5f7        ..      BPL      0x1fff632c ; txmit_buf_polling + 36
        0x1fff633c:    780d        .x      LDRB     r5,[r1,#0]
        0x1fff633e:    701d        .p      STRB     r5,[r3,#0]
        0x1fff6340:    1c49        I.      ADDS     r1,r1,#1
        0x1fff6342:    4615        .F      MOV      r5,r2
        0x1fff6344:    1e52        R.      SUBS     r2,r2,#1
        0x1fff6346:    b292        ..      UXTH     r2,r2
        0x1fff6348:    2d00        .-      CMP      r5,#0
        0x1fff634a:    9400        ..      STR      r4,[sp,#0]
        0x1fff634c:    d1f3        ..      BNE      0x1fff6336 ; txmit_buf_polling + 46
        0x1fff634e:    e006        ..      B        0x1fff635e ; txmit_buf_polling + 86
        0x1fff6350:    9900        ..      LDR      r1,[sp,#0]
        0x1fff6352:    1c4a        J.      ADDS     r2,r1,#1
        0x1fff6354:    9200        ..      STR      r2,[sp,#0]
        0x1fff6356:    4281        .B      CMP      r1,r0
        0x1fff6358:    dd01        ..      BLE      0x1fff635e ; txmit_buf_polling + 86
        0x1fff635a:    200d        .       MOVS     r0,#0xd
        0x1fff635c:    bd78        x.      POP      {r3-r6,pc}
        0x1fff635e:    7d19        .}      LDRB     r1,[r3,#0x14]
        0x1fff6360:    0649        I.      LSLS     r1,r1,#25
        0x1fff6362:    d5f5        ..      BPL      0x1fff6350 ; txmit_buf_polling + 72
        0x1fff6364:    2000        .       MOVS     r0,#0
        0x1fff6366:    bd78        x.      POP      {r3-r6,pc}
    $d
        0x1fff6368:    40004000    .@.@    DCD    1073758208
        0x1fff636c:    40009000    ...@    DCD    1073778688
        0x1fff6370:    000186a0    ....    DCD    100000
    $t
    i.txmit_buf_use_tx_buf
    txmit_buf_use_tx_buf
        0x1fff6374:    b5f7        ..      PUSH     {r0-r2,r4-r7,lr}
        0x1fff6376:    4607        .F      MOV      r7,r0
        0x1fff6378:    492a        *I      LDR      r1,[pc,#168] ; [0x1fff6424] = 0x1fff7238
        0x1fff637a:    0140        @.      LSLS     r0,r0,#5
        0x1fff637c:    1844        D.      ADDS     r4,r0,r1
        0x1fff637e:    4e2a        *N      LDR      r6,[pc,#168] ; [0x1fff6428] = 0x40004000
        0x1fff6380:    1d24        $.      ADDS     r4,r4,#4
        0x1fff6382:    4615        .F      MOV      r5,r2
        0x1fff6384:    2a00        .*      CMP      r2,#0
        0x1fff6386:    d010        ..      BEQ      0x1fff63aa ; txmit_buf_use_tx_buf + 54
        0x1fff6388:    9801        ..      LDR      r0,[sp,#4]
        0x1fff638a:    2800        .(      CMP      r0,#0
        0x1fff638c:    d00d        ..      BEQ      0x1fff63aa ; txmit_buf_use_tx_buf + 54
        0x1fff638e:    7821        !x      LDRB     r1,[r4,#0]
        0x1fff6390:    2900        .)      CMP      r1,#0
        0x1fff6392:    d008        ..      BEQ      0x1fff63a6 ; txmit_buf_use_tx_buf + 50
        0x1fff6394:    88e0        ..      LDRH     r0,[r4,#6]
        0x1fff6396:    42a8        .B      CMP      r0,r5
        0x1fff6398:    d305        ..      BCC      0x1fff63a6 ; txmit_buf_use_tx_buf + 50
        0x1fff639a:    2901        .)      CMP      r1,#1
        0x1fff639c:    d016        ..      BEQ      0x1fff63cc ; txmit_buf_use_tx_buf + 88
        0x1fff639e:    88a1        ..      LDRH     r1,[r4,#4]
        0x1fff63a0:    1949        I.      ADDS     r1,r1,r5
        0x1fff63a2:    4281        .B      CMP      r1,r0
        0x1fff63a4:    d903        ..      BLS      0x1fff63ae ; txmit_buf_use_tx_buf + 58
        0x1fff63a6:    2003        .       MOVS     r0,#3
        0x1fff63a8:    bdfe        ..      POP      {r1-r7,pc}
        0x1fff63aa:    2006        .       MOVS     r0,#6
        0x1fff63ac:    bdfe        ..      POP      {r1-r7,pc}
        0x1fff63ae:    f7fbfaa7    ....    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff1900
        0x1fff63b2:    88a1        ..      LDRH     r1,[r4,#4]
        0x1fff63b4:    68a0        .h      LDR      r0,[r4,#8]
        0x1fff63b6:    462a        *F      MOV      r2,r5
        0x1fff63b8:    1840        @.      ADDS     r0,r0,r1
        0x1fff63ba:    9901        ..      LDR      r1,[sp,#4]
        0x1fff63bc:    f7fbfc2c    ..,.    BL       $Ven$TT$L$$__aeabi_memcpy ; 0x1fff1c18
        0x1fff63c0:    88a0        ..      LDRH     r0,[r4,#4]
        0x1fff63c2:    1940        @.      ADDS     r0,r0,r5
        0x1fff63c4:    80a0        ..      STRH     r0,[r4,#4]
        0x1fff63c6:    f7fbfaa7    ....    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff1918
        0x1fff63ca:    e027        '.      B        0x1fff641c ; txmit_buf_use_tx_buf + 168
        0x1fff63cc:    68a0        .h      LDR      r0,[r4,#8]
        0x1fff63ce:    9901        ..      LDR      r1,[sp,#4]
        0x1fff63d0:    f7fbfc22    ..".    BL       $Ven$TT$L$$__aeabi_memcpy ; 0x1fff1c18
        0x1fff63d4:    80a5        ..      STRH     r5,[r4,#4]
        0x1fff63d6:    2000        .       MOVS     r0,#0
        0x1fff63d8:    8060        `.      STRH     r0,[r4,#2]
        0x1fff63da:    2002        .       MOVS     r0,#2
        0x1fff63dc:    7020         p      STRB     r0,[r4,#0]
        0x1fff63de:    68a1        .h      LDR      r1,[r4,#8]
        0x1fff63e0:    2d10        .-      CMP      r5,#0x10
        0x1fff63e2:    d900        ..      BLS      0x1fff63e6 ; txmit_buf_use_tx_buf + 114
        0x1fff63e4:    2510        .%      MOVS     r5,#0x10
        0x1fff63e6:    2f01        ./      CMP      r7,#1
        0x1fff63e8:    d100        ..      BNE      0x1fff63ec ; txmit_buf_use_tx_buf + 120
        0x1fff63ea:    4e10        .N      LDR      r6,[pc,#64] ; [0x1fff642c] = 0x40009000
        0x1fff63ec:    6872        rh      LDR      r2,[r6,#4]
        0x1fff63ee:    2002        .       MOVS     r0,#2
        0x1fff63f0:    4382        .C      BICS     r2,r2,r0
        0x1fff63f2:    6072        r`      STR      r2,[r6,#4]
        0x1fff63f4:    e004        ..      B        0x1fff6400 ; txmit_buf_use_tx_buf + 140
        0x1fff63f6:    8860        `.      LDRH     r0,[r4,#2]
        0x1fff63f8:    1c42        B.      ADDS     r2,r0,#1
        0x1fff63fa:    8062        b.      STRH     r2,[r4,#2]
        0x1fff63fc:    5c08        .\      LDRB     r0,[r1,r0]
        0x1fff63fe:    7030        0p      STRB     r0,[r6,#0]
        0x1fff6400:    4628        (F      MOV      r0,r5
        0x1fff6402:    1e6d        m.      SUBS     r5,r5,#1
        0x1fff6404:    b2ad        ..      UXTH     r5,r5
        0x1fff6406:    2800        .(      CMP      r0,#0
        0x1fff6408:    d1f5        ..      BNE      0x1fff63f6 ; txmit_buf_use_tx_buf + 130
        0x1fff640a:    2f00        ./      CMP      r7,#0
        0x1fff640c:    d008        ..      BEQ      0x1fff6420 ; txmit_buf_use_tx_buf + 172
        0x1fff640e:    2019        .       MOVS     r0,#0x19
        0x1fff6410:    f7fdfebc    ....    BL       hal_pwrmgr_lock ; 0x1fff418c
        0x1fff6414:    6870        ph      LDR      r0,[r6,#4]
        0x1fff6416:    2102        .!      MOVS     r1,#2
        0x1fff6418:    4308        .C      ORRS     r0,r0,r1
        0x1fff641a:    6070        p`      STR      r0,[r6,#4]
        0x1fff641c:    2000        .       MOVS     r0,#0
        0x1fff641e:    bdfe        ..      POP      {r1-r7,pc}
        0x1fff6420:    2008        .       MOVS     r0,#8
        0x1fff6422:    e7f5        ..      B        0x1fff6410 ; txmit_buf_use_tx_buf + 156
    $d
        0x1fff6424:    1fff7238    8r..    DCD    536834616
        0x1fff6428:    40004000    .@.@    DCD    1073758208
        0x1fff642c:    40009000    ...@    DCD    1073778688
    $t
    i.uart_hw_deinit
    uart_hw_deinit
        0x1fff6430:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff6432:    4605        .F      MOV      r5,r0
        0x1fff6434:    2608        .&      MOVS     r6,#8
        0x1fff6436:    200b        .       MOVS     r0,#0xb
        0x1fff6438:    4918        .I      LDR      r1,[pc,#96] ; [0x1fff649c] = 0x40004000
        0x1fff643a:    2d01        .-      CMP      r5,#1
        0x1fff643c:    d102        ..      BNE      0x1fff6444 ; uart_hw_deinit + 20
        0x1fff643e:    2619        .&      MOVS     r6,#0x19
        0x1fff6440:    4917        .I      LDR      r1,[pc,#92] ; [0x1fff64a0] = 0x40009000
        0x1fff6442:    2011        .       MOVS     r0,#0x11
        0x1fff6444:    2201        ."      MOVS     r2,#1
        0x1fff6446:    4082        .@      LSLS     r2,r2,r0
        0x1fff6448:    4816        .H      LDR      r0,[pc,#88] ; [0x1fff64a4] = 0xe000e180
        0x1fff644a:    6002        .`      STR      r2,[r0,#0]
        0x1fff644c:    f3bf8f4f    ..O.    DSB      
        0x1fff6450:    f3bf8f6f    ..o.    ISB      
        0x1fff6454:    2080        .       MOVS     r0,#0x80
        0x1fff6456:    7308        .s      STRB     r0,[r1,#0xc]
        0x1fff6458:    2400        .$      MOVS     r4,#0
        0x1fff645a:    710c        .q      STRB     r4,[r1,#4]
        0x1fff645c:    700c        .p      STRB     r4,[r1,#0]
        0x1fff645e:    730c        .s      STRB     r4,[r1,#0xc]
        0x1fff6460:    720c        .r      STRB     r4,[r1,#8]
        0x1fff6462:    604c        L`      STR      r4,[r1,#4]
        0x1fff6464:    4630        0F      MOV      r0,r6
        0x1fff6466:    f7fdfa8d    ....    BL       hal_clk_reset ; 0x1fff3984
        0x1fff646a:    4630        0F      MOV      r0,r6
        0x1fff646c:    f7fdfa56    ..V.    BL       hal_clk_gate_disable ; 0x1fff391c
        0x1fff6470:    2d00        .-      CMP      r5,#0
        0x1fff6472:    d00e        ..      BEQ      0x1fff6492 ; uart_hw_deinit + 98
        0x1fff6474:    480c        .H      LDR      r0,[pc,#48] ; [0x1fff64a8] = 0x1fff03c0
        0x1fff6476:    6044        D`      STR      r4,[r0,#4]
        0x1fff6478:    480c        .H      LDR      r0,[pc,#48] ; [0x1fff64ac] = 0x1fff7238
        0x1fff647a:    0169        i.      LSLS     r1,r5,#5
        0x1fff647c:    180c        ..      ADDS     r4,r1,r0
        0x1fff647e:    7c20         |      LDRB     r0,[r4,#0x10]
        0x1fff6480:    2100        .!      MOVS     r1,#0
        0x1fff6482:    f7fdfb33    ..3.    BL       hal_gpio_fmux ; 0x1fff3aec
        0x1fff6486:    7c60        `|      LDRB     r0,[r4,#0x11]
        0x1fff6488:    2100        .!      MOVS     r1,#0
        0x1fff648a:    f7fdfb2f    ../.    BL       hal_gpio_fmux ; 0x1fff3aec
        0x1fff648e:    2000        .       MOVS     r0,#0
        0x1fff6490:    bd70        p.      POP      {r4-r6,pc}
        0x1fff6492:    4805        .H      LDR      r0,[pc,#20] ; [0x1fff64a8] = 0x1fff03c0
        0x1fff6494:    3840        @8      SUBS     r0,r0,#0x40
        0x1fff6496:    62c4        .b      STR      r4,[r0,#0x2c]
        0x1fff6498:    e7ee        ..      B        0x1fff6478 ; uart_hw_deinit + 72
    $d
        0x1fff649a:    0000        ..      DCW    0
        0x1fff649c:    40004000    .@.@    DCD    1073758208
        0x1fff64a0:    40009000    ...@    DCD    1073778688
        0x1fff64a4:    e000e180    ....    DCD    3758154112
        0x1fff64a8:    1fff03c0    ....    DCD    536806336
        0x1fff64ac:    1fff7238    8r..    DCD    536834616
    $t
    i.uart_hw_init
    uart_hw_init
        0x1fff64b0:    b5f0        ..      PUSH     {r4-r7,lr}
        0x1fff64b2:    b087        ..      SUB      sp,sp,#0x1c
        0x1fff64b4:    4607        .F      MOV      r7,r0
        0x1fff64b6:    f7fbfc7b    ..{.    BL       $Ven$TT$L$$clk_get_pclk ; 0x1fff1db0
        0x1fff64ba:    9004        ..      STR      r0,[sp,#0x10]
        0x1fff64bc:    2008        .       MOVS     r0,#8
        0x1fff64be:    9003        ..      STR      r0,[sp,#0xc]
        0x1fff64c0:    2004        .       MOVS     r0,#4
        0x1fff64c2:    9000        ..      STR      r0,[sp,#0]
        0x1fff64c4:    2005        .       MOVS     r0,#5
        0x1fff64c6:    9002        ..      STR      r0,[sp,#8]
        0x1fff64c8:    4c59        YL      LDR      r4,[pc,#356] ; [0x1fff6630] = 0x40004000
        0x1fff64ca:    260b        .&      MOVS     r6,#0xb
        0x1fff64cc:    4638        8F      MOV      r0,r7
        0x1fff64ce:    f7ffffaf    ....    BL       uart_hw_deinit ; 0x1fff6430
        0x1fff64d2:    2f01        ./      CMP      r7,#1
        0x1fff64d4:    d107        ..      BNE      0x1fff64e6 ; uart_hw_init + 54
        0x1fff64d6:    2019        .       MOVS     r0,#0x19
        0x1fff64d8:    9003        ..      STR      r0,[sp,#0xc]
        0x1fff64da:    2008        .       MOVS     r0,#8
        0x1fff64dc:    2611        .&      MOVS     r6,#0x11
        0x1fff64de:    9000        ..      STR      r0,[sp,#0]
        0x1fff64e0:    4c54        TL      LDR      r4,[pc,#336] ; [0x1fff6634] = 0x40009000
        0x1fff64e2:    2009        .       MOVS     r0,#9
        0x1fff64e4:    9002        ..      STR      r0,[sp,#8]
        0x1fff64e6:    4854        TH      LDR      r0,[pc,#336] ; [0x1fff6638] = 0x1fff7238
        0x1fff64e8:    0179        y.      LSLS     r1,r7,#5
        0x1fff64ea:    180d        ..      ADDS     r5,r1,r0
        0x1fff64ec:    7c28        (|      LDRB     r0,[r5,#0x10]
        0x1fff64ee:    28ff        .(      CMP      r0,#0xff
        0x1fff64f0:    d102        ..      BNE      0x1fff64f8 ; uart_hw_init + 72
        0x1fff64f2:    7c68        h|      LDRB     r0,[r5,#0x11]
        0x1fff64f4:    28ff        .(      CMP      r0,#0xff
        0x1fff64f6:    d02f        /.      BEQ      0x1fff6558 ; uart_hw_init + 168
        0x1fff64f8:    3510        .5      ADDS     r5,r5,#0x10
        0x1fff64fa:    9803        ..      LDR      r0,[sp,#0xc]
        0x1fff64fc:    f7fdfa28    ..(.    BL       hal_clk_gate_enable ; 0x1fff3950
        0x1fff6500:    9803        ..      LDR      r0,[sp,#0xc]
        0x1fff6502:    f7fdfa3f    ..?.    BL       hal_clk_reset ; 0x1fff3984
        0x1fff6506:    2101        .!      MOVS     r1,#1
        0x1fff6508:    2012        .       MOVS     r0,#0x12
        0x1fff650a:    f7fdfbb7    ....    BL       hal_gpio_pull_set ; 0x1fff3c7c
        0x1fff650e:    2101        .!      MOVS     r1,#1
        0x1fff6510:    2012        .       MOVS     r0,#0x12
        0x1fff6512:    f7fdfbb3    ....    BL       hal_gpio_pull_set ; 0x1fff3c7c
        0x1fff6516:    2012        .       MOVS     r0,#0x12
        0x1fff6518:    9900        ..      LDR      r1,[sp,#0]
        0x1fff651a:    f7fdfaf7    ....    BL       hal_gpio_fmux_set ; 0x1fff3b0c
        0x1fff651e:    2012        .       MOVS     r0,#0x12
        0x1fff6520:    9902        ..      LDR      r1,[sp,#8]
        0x1fff6522:    f7fdfaf3    ....    BL       hal_gpio_fmux_set ; 0x1fff3b0c
        0x1fff6526:    2000        .       MOVS     r0,#0
        0x1fff6528:    7320         s      STRB     r0,[r4,#0xc]
        0x1fff652a:    9804        ..      LDR      r0,[sp,#0x10]
        0x1fff652c:    6869        ih      LDR      r1,[r5,#4]
        0x1fff652e:    1100        ..      ASRS     r0,r0,#4
        0x1fff6530:    084a        J.      LSRS     r2,r1,#1
        0x1fff6532:    1880        ..      ADDS     r0,r0,r2
        0x1fff6534:    f7fbfbd0    ....    BL       $Ven$TT$L$$__aeabi_uidivmod ; 0x1fff1cd8
        0x1fff6538:    2100        .!      MOVS     r1,#0
        0x1fff653a:    6121        !a      STR      r1,[r4,#0x10]
        0x1fff653c:    2180        .!      MOVS     r1,#0x80
        0x1fff653e:    7321        !s      STRB     r1,[r4,#0xc]
        0x1fff6540:    0a01        ..      LSRS     r1,r0,#8
        0x1fff6542:    7121        !q      STRB     r1,[r4,#4]
        0x1fff6544:    7020         p      STRB     r0,[r4,#0]
        0x1fff6546:    7ae8        .z      LDRB     r0,[r5,#0xb]
        0x1fff6548:    2800        .(      CMP      r0,#0
        0x1fff654a:    d052        R.      BEQ      0x1fff65f2 ; uart_hw_init + 322
        0x1fff654c:    4938        8I      LDR      r1,[pc,#224] ; [0x1fff6630] = 0x40004000
        0x1fff654e:    483b        ;H      LDR      r0,[pc,#236] ; [0x1fff663c] = 0x1fff6b3e
        0x1fff6550:    428c        .B      CMP      r4,r1
        0x1fff6552:    d104        ..      BNE      0x1fff655e ; uart_hw_init + 174
        0x1fff6554:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff6556:    e003        ..      B        0x1fff6560 ; uart_hw_init + 176
        0x1fff6558:    2006        .       MOVS     r0,#6
        0x1fff655a:    b007        ..      ADD      sp,sp,#0x1c
        0x1fff655c:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff655e:    7840        @x      LDRB     r0,[r0,#1]
        0x1fff6560:    2800        .(      CMP      r0,#0
        0x1fff6562:    d001        ..      BEQ      0x1fff6568 ; uart_hw_init + 184
        0x1fff6564:    201b        .       MOVS     r0,#0x1b
        0x1fff6566:    e000        ..      B        0x1fff656a ; uart_hw_init + 186
        0x1fff6568:    200b        .       MOVS     r0,#0xb
        0x1fff656a:    7320         s      STRB     r0,[r4,#0xc]
        0x1fff656c:    7a28        (z      LDRB     r0,[r5,#8]
        0x1fff656e:    2800        .(      CMP      r0,#0
        0x1fff6570:    d000        ..      BEQ      0x1fff6574 ; uart_hw_init + 196
        0x1fff6572:    2087        .       MOVS     r0,#0x87
        0x1fff6574:    7220         r      STRB     r0,[r4,#8]
        0x1fff6576:    2001        .       MOVS     r0,#1
        0x1fff6578:    6060        ``      STR      r0,[r4,#4]
        0x1fff657a:    7a28        (z      LDRB     r0,[r5,#8]
        0x1fff657c:    2800        .(      CMP      r0,#0
        0x1fff657e:    d003        ..      BEQ      0x1fff6588 ; uart_hw_init + 216
        0x1fff6580:    6860        `h      LDR      r0,[r4,#4]
        0x1fff6582:    2180        .!      MOVS     r1,#0x80
        0x1fff6584:    4308        .C      ORRS     r0,r0,r1
        0x1fff6586:    6060        ``      STR      r0,[r4,#4]
        0x1fff6588:    7aa8        .z      LDRB     r0,[r5,#0xa]
        0x1fff658a:    2800        .(      CMP      r0,#0
        0x1fff658c:    d003        ..      BEQ      0x1fff6596 ; uart_hw_init + 230
        0x1fff658e:    6860        `h      LDR      r0,[r4,#4]
        0x1fff6590:    2102        .!      MOVS     r1,#2
        0x1fff6592:    4308        .C      ORRS     r0,r0,r1
        0x1fff6594:    6060        ``      STR      r0,[r4,#4]
        0x1fff6596:    7828        (x      LDRB     r0,[r5,#0]
        0x1fff6598:    2101        .!      MOVS     r1,#1
        0x1fff659a:    f7fdfb6f    ..o.    BL       hal_gpio_pull_set ; 0x1fff3c7c
        0x1fff659e:    7868        hx      LDRB     r0,[r5,#1]
        0x1fff65a0:    2101        .!      MOVS     r1,#1
        0x1fff65a2:    f7fdfb6b    ..k.    BL       hal_gpio_pull_set ; 0x1fff3c7c
        0x1fff65a6:    7828        (x      LDRB     r0,[r5,#0]
        0x1fff65a8:    9900        ..      LDR      r1,[sp,#0]
        0x1fff65aa:    f7fdfaaf    ....    BL       hal_gpio_fmux_set ; 0x1fff3b0c
        0x1fff65ae:    7868        hx      LDRB     r0,[r5,#1]
        0x1fff65b0:    9902        ..      LDR      r1,[sp,#8]
        0x1fff65b2:    f7fdfaab    ....    BL       hal_gpio_fmux_set ; 0x1fff3b0c
        0x1fff65b6:    2100        .!      MOVS     r1,#0
        0x1fff65b8:    2012        .       MOVS     r0,#0x12
        0x1fff65ba:    f7fdfa97    ....    BL       hal_gpio_fmux ; 0x1fff3aec
        0x1fff65be:    2103        .!      MOVS     r1,#3
        0x1fff65c0:    2012        .       MOVS     r0,#0x12
        0x1fff65c2:    f7fdfb5b    ..[.    BL       hal_gpio_pull_set ; 0x1fff3c7c
        0x1fff65c6:    2f00        ./      CMP      r7,#0
        0x1fff65c8:    d015        ..      BEQ      0x1fff65f6 ; uart_hw_init + 326
        0x1fff65ca:    491e        .I      LDR      r1,[pc,#120] ; [0x1fff6644] = 0x1fff03c0
        0x1fff65cc:    481c        .H      LDR      r0,[pc,#112] ; [0x1fff6640] = 0x1fff3891
        0x1fff65ce:    6048        H`      STR      r0,[r1,#4]
        0x1fff65d0:    20ff        .       MOVS     r0,#0xff
        0x1fff65d2:    2e00        ..      CMP      r6,#0
        0x1fff65d4:    db14        ..      BLT      0x1fff6600 ; uart_hw_init + 336
        0x1fff65d6:    08b2        ..      LSRS     r2,r6,#2
        0x1fff65d8:    491b        .I      LDR      r1,[pc,#108] ; [0x1fff6648] = 0xe000e400
        0x1fff65da:    0092        ..      LSLS     r2,r2,#2
        0x1fff65dc:    1851        Q.      ADDS     r1,r2,r1
        0x1fff65de:    680a        .h      LDR      r2,[r1,#0]
        0x1fff65e0:    07b3        ..      LSLS     r3,r6,#30
        0x1fff65e2:    0edb        ..      LSRS     r3,r3,#27
        0x1fff65e4:    4098        .@      LSLS     r0,r0,r3
        0x1fff65e6:    4382        .C      BICS     r2,r2,r0
        0x1fff65e8:    2080        .       MOVS     r0,#0x80
        0x1fff65ea:    4098        .@      LSLS     r0,r0,r3
        0x1fff65ec:    4302        .C      ORRS     r2,r2,r0
        0x1fff65ee:    600a        .`      STR      r2,[r1,#0]
        0x1fff65f0:    e016        ..      B        0x1fff6620 ; uart_hw_init + 368
        0x1fff65f2:    2003        .       MOVS     r0,#3
        0x1fff65f4:    e7b9        ..      B        0x1fff656a ; uart_hw_init + 186
        0x1fff65f6:    4913        .I      LDR      r1,[pc,#76] ; [0x1fff6644] = 0x1fff03c0
        0x1fff65f8:    4814        .H      LDR      r0,[pc,#80] ; [0x1fff664c] = 0x1fff384d
        0x1fff65fa:    3940        @9      SUBS     r1,r1,#0x40
        0x1fff65fc:    62c8        .b      STR      r0,[r1,#0x2c]
        0x1fff65fe:    e7e7        ..      B        0x1fff65d0 ; uart_hw_init + 288
        0x1fff6600:    0731        1.      LSLS     r1,r6,#28
        0x1fff6602:    0f09        ..      LSRS     r1,r1,#28
        0x1fff6604:    3908        .9      SUBS     r1,r1,#8
        0x1fff6606:    088a        ..      LSRS     r2,r1,#2
        0x1fff6608:    4911        .I      LDR      r1,[pc,#68] ; [0x1fff6650] = 0xe000ed00
        0x1fff660a:    0092        ..      LSLS     r2,r2,#2
        0x1fff660c:    1851        Q.      ADDS     r1,r2,r1
        0x1fff660e:    69ca        .i      LDR      r2,[r1,#0x1c]
        0x1fff6610:    07b3        ..      LSLS     r3,r6,#30
        0x1fff6612:    0edb        ..      LSRS     r3,r3,#27
        0x1fff6614:    4098        .@      LSLS     r0,r0,r3
        0x1fff6616:    4382        .C      BICS     r2,r2,r0
        0x1fff6618:    2080        .       MOVS     r0,#0x80
        0x1fff661a:    4098        .@      LSLS     r0,r0,r3
        0x1fff661c:    4302        .C      ORRS     r2,r2,r0
        0x1fff661e:    61ca        .a      STR      r2,[r1,#0x1c]
        0x1fff6620:    2e00        ..      CMP      r6,#0
        0x1fff6622:    db03        ..      BLT      0x1fff662c ; uart_hw_init + 380
        0x1fff6624:    2001        .       MOVS     r0,#1
        0x1fff6626:    490b        .I      LDR      r1,[pc,#44] ; [0x1fff6654] = 0xe000e100
        0x1fff6628:    40b0        .@      LSLS     r0,r0,r6
        0x1fff662a:    6008        .`      STR      r0,[r1,#0]
        0x1fff662c:    2000        .       MOVS     r0,#0
        0x1fff662e:    e794        ..      B        0x1fff655a ; uart_hw_init + 170
    $d
        0x1fff6630:    40004000    .@.@    DCD    1073758208
        0x1fff6634:    40009000    ...@    DCD    1073778688
        0x1fff6638:    1fff7238    8r..    DCD    536834616
        0x1fff663c:    1fff6b3e    >k..    DCD    536832830
        0x1fff6640:    1fff3891    .8..    DCD    536819857
        0x1fff6644:    1fff03c0    ....    DCD    536806336
        0x1fff6648:    e000e400    ....    DCD    3758154752
        0x1fff664c:    1fff384d    M8..    DCD    536819789
        0x1fff6650:    e000ed00    ....    DCD    3758157056
        0x1fff6654:    e000e100    ....    DCD    3758153984
    $t
    i.uart_wakeup_process_0
    uart_wakeup_process_0
        0x1fff6658:    b510        ..      PUSH     {r4,lr}
        0x1fff665a:    2000        .       MOVS     r0,#0
        0x1fff665c:    f7ffff28    ..(.    BL       uart_hw_init ; 0x1fff64b0
        0x1fff6660:    bd10        ..      POP      {r4,pc}
    i.uart_wakeup_process_1
    uart_wakeup_process_1
        0x1fff6662:    b510        ..      PUSH     {r4,lr}
        0x1fff6664:    2001        .       MOVS     r0,#1
        0x1fff6666:    f7ffff23    ..#.    BL       uart_hw_init ; 0x1fff64b0
        0x1fff666a:    bd10        ..      POP      {r4,pc}
    i.wakeupProcess1
    wakeupProcess1
        0x1fff666c:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff666e:    4c6e        nL      LDR      r4,[pc,#440] ; [0x1fff6828] = 0x1fff6b80
        0x1fff6670:    21ff        .!      MOVS     r1,#0xff
        0x1fff6672:    68e0        .h      LDR      r0,[r4,#0xc]
        0x1fff6674:    31d5        .1      ADDS     r1,r1,#0xd5
        0x1fff6676:    4a6d        mJ      LDR      r2,[pc,#436] ; [0x1fff682c] = 0x1fff8000
        0x1fff6678:    5809        .X      LDR      r1,[r1,r0]
        0x1fff667a:    6011        .`      STR      r1,[r2,#0]
        0x1fff667c:    3080        .0      ADDS     r0,r0,#0x80
        0x1fff667e:    6880        .h      LDR      r0,[r0,#8]
        0x1fff6680:    f3808808    ....    MSR      MSP,r0
        0x1fff6684:    f7fbfb22    ..".    BL       $Ven$TT$L$$drv_irq_init ; 0x1fff1ccc
        0x1fff6688:    4869        iH      LDR      r0,[pc,#420] ; [0x1fff6830] = 0x1fff0a0c
        0x1fff668a:    496a        jI      LDR      r1,[pc,#424] ; [0x1fff6834] = 0x32141b6
        0x1fff668c:    6800        .h      LDR      r0,[r0,#0]
        0x1fff668e:    2602        .&      MOVS     r6,#2
        0x1fff6690:    4288        .B      CMP      r0,r1
        0x1fff6692:    d006        ..      BEQ      0x1fff66a2 ; wakeupProcess1 + 54
        0x1fff6694:    2000        .       MOVS     r0,#0
        0x1fff6696:    f7fbfa53    ..S.    BL       $Ven$TT$L$$set_sleep_flag ; 0x1fff1b40
        0x1fff669a:    0770        p.      LSLS     r0,r6,#29
        0x1fff669c:    6901        .i      LDR      r1,[r0,#0x10]
        0x1fff669e:    43b1        .C      BICS     r1,r1,r6
        0x1fff66a0:    6101        .a      STR      r1,[r0,#0x10]
        0x1fff66a2:    2000        .       MOVS     r0,#0
        0x1fff66a4:    f7fbfa4c    ..L.    BL       $Ven$TT$L$$set_sleep_flag ; 0x1fff1b40
        0x1fff66a8:    f000f8ea    ....    BL       wakeup_init1 ; 0x1fff6880
        0x1fff66ac:    4862        bH      LDR      r0,[pc,#392] ; [0x1fff6838] = 0x1fff0a49
        0x1fff66ae:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff66b0:    f7fbfb72    ..r.    BL       $Ven$TT$L$$ll_hw_tx2rx_timing_config ; 0x1fff1d98
        0x1fff66b4:    4d61        aM      LDR      r5,[pc,#388] ; [0x1fff683c] = 0x40001000
        0x1fff66b6:    2700        .'      MOVS     r7,#0
        0x1fff66b8:    61ef        .a      STR      r7,[r5,#0x1c]
        0x1fff66ba:    61ee        .a      STR      r6,[r5,#0x1c]
        0x1fff66bc:    4860        `H      LDR      r0,[pc,#384] ; [0x1fff6840] = 0x9c3
        0x1fff66be:    6168        ha      STR      r0,[r5,#0x14]
        0x1fff66c0:    2001        .       MOVS     r0,#1
        0x1fff66c2:    f7fbfa37    ..7.    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b34
        0x1fff66c6:    2003        .       MOVS     r0,#3
        0x1fff66c8:    61e8        .a      STR      r0,[r5,#0x1c]
        0x1fff66ca:    f7fbfa1b    ....    BL       $Ven$TT$L$$rtc_get_counter ; 0x1fff1b04
        0x1fff66ce:    4606        .F      MOV      r6,r0
        0x1fff66d0:    f7fbf970    ..p.    BL       $Ven$TT$L$$read_current_fine_time ; 0x1fff19b4
        0x1fff66d4:    4605        .F      MOV      r5,r0
        0x1fff66d6:    f7fbfa15    ....    BL       $Ven$TT$L$$rtc_get_counter ; 0x1fff1b04
        0x1fff66da:    495a        ZI      LDR      r1,[pc,#360] ; [0x1fff6844] = 0x1fff0a10
        0x1fff66dc:    6008        .`      STR      r0,[r1,#0]
        0x1fff66de:    f7fffcf7    ....    BL       rf_phy_ini ; 0x1fff60d0
        0x1fff66e2:    4859        YH      LDR      r0,[pc,#356] ; [0x1fff6848] = 0x1fff0a34
        0x1fff66e4:    6800        .h      LDR      r0,[r0,#0]
        0x1fff66e6:    4286        .B      CMP      r6,r0
        0x1fff66e8:    d901        ..      BLS      0x1fff66ee ; wakeupProcess1 + 130
        0x1fff66ea:    1a30        0.      SUBS     r0,r6,r0
        0x1fff66ec:    e001        ..      B        0x1fff66f2 ; wakeupProcess1 + 134
        0x1fff66ee:    1a30        0.      SUBS     r0,r6,r0
        0x1fff66f0:    1e40        @.      SUBS     r0,r0,#1
        0x1fff66f2:    4956        VI      LDR      r1,[pc,#344] ; [0x1fff684c] = 0x3fffff
        0x1fff66f4:    4288        .B      CMP      r0,r1
        0x1fff66f6:    d900        ..      BLS      0x1fff66fa ; wakeupProcess1 + 142
        0x1fff66f8:    4008        .@      ANDS     r0,r0,r1
        0x1fff66fa:    68e1        .h      LDR      r1,[r4,#0xc]
        0x1fff66fc:    8d8a        ..      LDRH     r2,[r1,#0x2c]
        0x1fff66fe:    07d2        ..      LSLS     r2,r2,#31
        0x1fff6700:    d009        ..      BEQ      0x1fff6716 ; wakeupProcess1 + 170
        0x1fff6702:    4a53        SJ      LDR      r2,[pc,#332] ; [0x1fff6850] = 0x1fff0a38
        0x1fff6704:    0c03        ..      LSRS     r3,r0,#16
        0x1fff6706:    6812        .h      LDR      r2,[r2,#0]
        0x1fff6708:    b280        ..      UXTH     r0,r0
        0x1fff670a:    4353        SC      MULS     r3,r2,r3
        0x1fff670c:    4350        PC      MULS     r0,r2,r0
        0x1fff670e:    021b        ..      LSLS     r3,r3,#8
        0x1fff6710:    0a00        ..      LSRS     r0,r0,#8
        0x1fff6712:    1818        ..      ADDS     r0,r3,r0
        0x1fff6714:    e00b        ..      B        0x1fff672e ; wakeupProcess1 + 194
        0x1fff6716:    01c2        ..      LSLS     r2,r0,#7
        0x1fff6718:    0083        ..      LSLS     r3,r0,#2
        0x1fff671a:    1ad2        ..      SUBS     r2,r2,r3
        0x1fff671c:    0043        C.      LSLS     r3,r0,#1
        0x1fff671e:    1ad2        ..      SUBS     r2,r2,r3
        0x1fff6720:    00c3        ..      LSLS     r3,r0,#3
        0x1fff6722:    1818        ..      ADDS     r0,r3,r0
        0x1fff6724:    1c92        ..      ADDS     r2,r2,#2
        0x1fff6726:    3080        .0      ADDS     r0,r0,#0x80
        0x1fff6728:    0892        ..      LSRS     r2,r2,#2
        0x1fff672a:    0a40        @.      LSRS     r0,r0,#9
        0x1fff672c:    1810        ..      ADDS     r0,r2,r0
        0x1fff672e:    6520         e      STR      r0,[r4,#0x50]
        0x1fff6730:    31ff        .1      ADDS     r1,r1,#0xff
        0x1fff6732:    4848        HH      LDR      r0,[pc,#288] ; [0x1fff6854] = 0x1fff0a1c
        0x1fff6734:    3101        .1      ADDS     r1,#1
        0x1fff6736:    6849        Ih      LDR      r1,[r1,#4]
        0x1fff6738:    6800        .h      LDR      r0,[r0,#0]
        0x1fff673a:    1809        ..      ADDS     r1,r1,r0
        0x1fff673c:    4846        FH      LDR      r0,[pc,#280] ; [0x1fff6858] = 0x1fff0a20
        0x1fff673e:    6800        .h      LDR      r0,[r0,#0]
        0x1fff6740:    1a09        ..      SUBS     r1,r1,r0
        0x1fff6742:    483f        ?H      LDR      r0,[pc,#252] ; [0x1fff6840] = 0x9c3
        0x1fff6744:    1c40        @.      ADDS     r0,r0,#1
        0x1fff6746:    1809        ..      ADDS     r1,r1,r0
        0x1fff6748:    088a        ..      LSRS     r2,r1,#2
        0x1fff674a:    4844        DH      LDR      r0,[pc,#272] ; [0x1fff685c] = 0x1fff0a24
        0x1fff674c:    078b        ..      LSLS     r3,r1,#30
        0x1fff674e:    4944        DI      LDR      r1,[pc,#272] ; [0x1fff6860] = 0x1fff0a28
        0x1fff6750:    6002        .`      STR      r2,[r0,#0]
        0x1fff6752:    680e        .h      LDR      r6,[r1,#0]
        0x1fff6754:    0f9b        ..      LSRS     r3,r3,#30
        0x1fff6756:    199b        ..      ADDS     r3,r3,r6
        0x1fff6758:    600b        .`      STR      r3,[r1,#0]
        0x1fff675a:    2b04        .+      CMP      r3,#4
        0x1fff675c:    d904        ..      BLS      0x1fff6768 ; wakeupProcess1 + 252
        0x1fff675e:    1c52        R.      ADDS     r2,r2,#1
        0x1fff6760:    6002        .`      STR      r2,[r0,#0]
        0x1fff6762:    079a        ..      LSLS     r2,r3,#30
        0x1fff6764:    0f92        ..      LSRS     r2,r2,#30
        0x1fff6766:    600a        .`      STR      r2,[r1,#0]
        0x1fff6768:    6d21        !m      LDR      r1,[r4,#0x50]
        0x1fff676a:    6800        .h      LDR      r0,[r0,#0]
        0x1fff676c:    1808        ..      ADDS     r0,r1,r0
        0x1fff676e:    493d        =I      LDR      r1,[pc,#244] ; [0x1fff6864] = 0x271
        0x1fff6770:    f7fbfab2    ....    BL       $Ven$TT$L$$__aeabi_uidivmod ; 0x1fff1cd8
        0x1fff6774:    4602        .F      MOV      r2,r0
        0x1fff6776:    483c        <H      LDR      r0,[pc,#240] ; [0x1fff6868] = 0x1fff0860
        0x1fff6778:    4e3c        <N      LDR      r6,[pc,#240] ; [0x1fff686c] = 0x1fff0a2c
        0x1fff677a:    6803        .h      LDR      r3,[r0,#0]
        0x1fff677c:    18d3        ..      ADDS     r3,r2,r3
        0x1fff677e:    6003        .`      STR      r3,[r0,#0]
        0x1fff6780:    6832        2h      LDR      r2,[r6,#0]
        0x1fff6782:    188a        ..      ADDS     r2,r1,r2
        0x1fff6784:    4937        7I      LDR      r1,[pc,#220] ; [0x1fff6864] = 0x271
        0x1fff6786:    6032        2`      STR      r2,[r6,#0]
        0x1fff6788:    428a        .B      CMP      r2,r1
        0x1fff678a:    d905        ..      BLS      0x1fff6798 ; wakeupProcess1 + 300
        0x1fff678c:    1c5b        [.      ADDS     r3,r3,#1
        0x1fff678e:    6003        .`      STR      r3,[r0,#0]
        0x1fff6790:    4610        .F      MOV      r0,r2
        0x1fff6792:    f7fbfaa1    ....    BL       $Ven$TT$L$$__aeabi_uidivmod ; 0x1fff1cd8
        0x1fff6796:    6031        1`      STR      r1,[r6,#0]
        0x1fff6798:    f7fbfb10    ....    BL       $Ven$TT$L$$osalTimeUpdate ; 0x1fff1dbc
        0x1fff679c:    4834        4H      LDR      r0,[pc,#208] ; [0x1fff6870] = 0x1fff091c
        0x1fff679e:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff67a0:    2800        .(      CMP      r0,#0
        0x1fff67a2:    d010        ..      BEQ      0x1fff67c6 ; wakeupProcess1 + 346
        0x1fff67a4:    f7fbf906    ....    BL       $Ven$TT$L$$read_current_fine_time ; 0x1fff19b4
        0x1fff67a8:    4a32        2J      LDR      r2,[pc,#200] ; [0x1fff6874] = 0x1fff08e4
        0x1fff67aa:    6d21        !m      LDR      r1,[r4,#0x50]
        0x1fff67ac:    1b40        @.      SUBS     r0,r0,r5
        0x1fff67ae:    6812        .h      LDR      r2,[r2,#0]
        0x1fff67b0:    180b        ..      ADDS     r3,r1,r0
        0x1fff67b2:    4293        .B      CMP      r3,r2
        0x1fff67b4:    d202        ..      BCS      0x1fff67bc ; wakeupProcess1 + 336
        0x1fff67b6:    1a51        Q.      SUBS     r1,r2,r1
        0x1fff67b8:    1a09        ..      SUBS     r1,r1,r0
        0x1fff67ba:    e001        ..      B        0x1fff67c0 ; wakeupProcess1 + 340
        0x1fff67bc:    217d        }!      MOVS     r1,#0x7d
        0x1fff67be:    00c9        ..      LSLS     r1,r1,#3
        0x1fff67c0:    481e        .H      LDR      r0,[pc,#120] ; [0x1fff683c] = 0x40001000
        0x1fff67c2:    f7fbfb01    ....    BL       $Ven$TT$L$$set_timer ; 0x1fff1dc8
        0x1fff67c6:    4e2c        ,N      LDR      r6,[pc,#176] ; [0x1fff6878] = 0x1fff0b74
        0x1fff67c8:    7a30        0z      LDRB     r0,[r6,#8]
        0x1fff67ca:    2800        .(      CMP      r0,#0
        0x1fff67cc:    d010        ..      BEQ      0x1fff67f0 ; wakeupProcess1 + 388
        0x1fff67ce:    f7fbf8f1    ....    BL       $Ven$TT$L$$read_current_fine_time ; 0x1fff19b4
        0x1fff67d2:    6d21        !m      LDR      r1,[r4,#0x50]
        0x1fff67d4:    1b40        @.      SUBS     r0,r0,r5
        0x1fff67d6:    68f2        .h      LDR      r2,[r6,#0xc]
        0x1fff67d8:    180b        ..      ADDS     r3,r1,r0
        0x1fff67da:    429a        .B      CMP      r2,r3
        0x1fff67dc:    d902        ..      BLS      0x1fff67e4 ; wakeupProcess1 + 376
        0x1fff67de:    1a51        Q.      SUBS     r1,r2,r1
        0x1fff67e0:    1a09        ..      SUBS     r1,r1,r0
        0x1fff67e2:    e000        ..      B        0x1fff67e6 ; wakeupProcess1 + 378
        0x1fff67e4:    4925        %I      LDR      r1,[pc,#148] ; [0x1fff687c] = 0x5dc
        0x1fff67e6:    4815        .H      LDR      r0,[pc,#84] ; [0x1fff683c] = 0x40001000
        0x1fff67e8:    303c        <0      ADDS     r0,r0,#0x3c
        0x1fff67ea:    f7fbfaed    ....    BL       $Ven$TT$L$$set_timer ; 0x1fff1dc8
        0x1fff67ee:    7237        7r      STRB     r7,[r6,#8]
        0x1fff67f0:    78a0        .x      LDRB     r0,[r4,#2]
        0x1fff67f2:    2800        .(      CMP      r0,#0
        0x1fff67f4:    d010        ..      BEQ      0x1fff6818 ; wakeupProcess1 + 428
        0x1fff67f6:    f7fbf8dd    ....    BL       $Ven$TT$L$$read_current_fine_time ; 0x1fff19b4
        0x1fff67fa:    1b41        A.      SUBS     r1,r0,r5
        0x1fff67fc:    6d22        "m      LDR      r2,[r4,#0x50]
        0x1fff67fe:    480f        .H      LDR      r0,[pc,#60] ; [0x1fff683c] = 0x40001000
        0x1fff6800:    6963        ci      LDR      r3,[r4,#0x14]
        0x1fff6802:    1855        U.      ADDS     r5,r2,r1
        0x1fff6804:    3050        P0      ADDS     r0,r0,#0x50
        0x1fff6806:    429d        .B      CMP      r5,r3
        0x1fff6808:    d202        ..      BCS      0x1fff6810 ; wakeupProcess1 + 420
        0x1fff680a:    1a9a        ..      SUBS     r2,r3,r2
        0x1fff680c:    1a51        Q.      SUBS     r1,r2,r1
        0x1fff680e:    e000        ..      B        0x1fff6812 ; wakeupProcess1 + 422
        0x1fff6810:    491a        .I      LDR      r1,[pc,#104] ; [0x1fff687c] = 0x5dc
        0x1fff6812:    f7fbfad9    ....    BL       $Ven$TT$L$$set_timer ; 0x1fff1dc8
        0x1fff6816:    70a7        .p      STRB     r7,[r4,#2]
        0x1fff6818:    f7fbfadc    ....    BL       $Ven$TT$L$$app_wakeup_process ; 0x1fff1dd4
        0x1fff681c:    2002        .       MOVS     r0,#2
        0x1fff681e:    f7fbf8cf    ....    BL       $Ven$TT$L$$ll_debug_output ; 0x1fff19c0
        0x1fff6822:    f7fbf981    ....    BL       $Ven$TT$L$$osal_start_system ; 0x1fff1b28
        0x1fff6826:    bdf8        ..      POP      {r3-r7,pc}
    $d
        0x1fff6828:    1fff6b80    .k..    DCD    536832896
        0x1fff682c:    1fff8000    ....    DCD    536838144
        0x1fff6830:    1fff0a0c    ....    DCD    536807948
        0x1fff6834:    032141b6    .A!.    DCD    52511158
        0x1fff6838:    1fff0a49    I...    DCD    536808009
        0x1fff683c:    40001000    ...@    DCD    1073745920
        0x1fff6840:    000009c3    ....    DCD    2499
        0x1fff6844:    1fff0a10    ....    DCD    536807952
        0x1fff6848:    1fff0a34    4...    DCD    536807988
        0x1fff684c:    003fffff    ..?.    DCD    4194303
        0x1fff6850:    1fff0a38    8...    DCD    536807992
        0x1fff6854:    1fff0a1c    ....    DCD    536807964
        0x1fff6858:    1fff0a20     ...    DCD    536807968
        0x1fff685c:    1fff0a24    $...    DCD    536807972
        0x1fff6860:    1fff0a28    (...    DCD    536807976
        0x1fff6864:    00000271    q...    DCD    625
        0x1fff6868:    1fff0860    `...    DCD    536807520
        0x1fff686c:    1fff0a2c    ,...    DCD    536807980
        0x1fff6870:    1fff091c    ....    DCD    536807708
        0x1fff6874:    1fff08e4    ....    DCD    536807652
        0x1fff6878:    1fff0b74    t...    DCD    536808308
        0x1fff687c:    000005dc    ....    DCD    1500
    $t
    i.wakeup_init1
    wakeup_init1
        0x1fff6880:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff6882:    2001        .       MOVS     r0,#1
        0x1fff6884:    0781        ..      LSLS     r1,r0,#30
        0x1fff6886:    6288        .b      STR      r0,[r1,#0x28]
        0x1fff6888:    f7fcfe96    ....    BL       efuse_init ; 0x1fff35b8
        0x1fff688c:    f7fcfa5a    ..Z.    BL       __wdt_init ; 0x1fff2d44
        0x1fff6890:    2001        .       MOVS     r0,#1
        0x1fff6892:    9000        ..      STR      r0,[sp,#0]
        0x1fff6894:    f7fdfe04    ....    BL       hal_system_clock_change_process ; 0x1fff44a0
        0x1fff6898:    4e43        CN      LDR      r6,[pc,#268] ; [0x1fff69a8] = 0x1fff0a4a
        0x1fff689a:    7830        0x      LDRB     r0,[r6,#0]
        0x1fff689c:    4c43        CL      LDR      r4,[pc,#268] ; [0x1fff69ac] = 0x4000f040
        0x1fff689e:    2802        .(      CMP      r0,#2
        0x1fff68a0:    d010        ..      BEQ      0x1fff68c4 ; wakeup_init1 + 68
        0x1fff68a2:    f7fbf92f    ../.    BL       $Ven$TT$L$$rtc_get_counter ; 0x1fff1b04
        0x1fff68a6:    4605        .F      MOV      r5,r0
        0x1fff68a8:    200f        .       MOVS     r0,#0xf
        0x1fff68aa:    f7fbf943    ..C.    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b34
        0x1fff68ae:    f7fcfc59    ..Y.    BL       check_16MXtal_by_rcTracking ; 0x1fff3164
        0x1fff68b2:    2005        .       MOVS     r0,#5
        0x1fff68b4:    f7fbf93e    ..>.    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b34
        0x1fff68b8:    7830        0x      LDRB     r0,[r6,#0]
        0x1fff68ba:    2801        .(      CMP      r0,#1
        0x1fff68bc:    d008        ..      BEQ      0x1fff68d0 ; wakeup_init1 + 80
        0x1fff68be:    f7fcfcfb    ....    BL       check_96MXtal_by_rcTracking ; 0x1fff32b8
        0x1fff68c2:    e01a        ..      B        0x1fff68fa ; wakeup_init1 + 122
        0x1fff68c4:    483a        :H      LDR      r0,[pc,#232] ; [0x1fff69b0] = 0x1fff6b80
        0x1fff68c6:    68c0        .h      LDR      r0,[r0,#0xc]
        0x1fff68c8:    6a00        .j      LDR      r0,[r0,#0x20]
        0x1fff68ca:    f7fbf933    ..3.    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b34
        0x1fff68ce:    e024        $.      B        0x1fff691a ; wakeup_init1 + 154
        0x1fff68d0:    4836        6H      LDR      r0,[pc,#216] ; [0x1fff69ac] = 0x4000f040
        0x1fff68d2:    3840        @8      SUBS     r0,r0,#0x40
        0x1fff68d4:    6bc0        .k      LDR      r0,[r0,#0x3c]
        0x1fff68d6:    0740        @.      LSLS     r0,r0,#29
        0x1fff68d8:    0f40        @.      LSRS     r0,r0,#29
        0x1fff68da:    2801        .(      CMP      r0,#1
        0x1fff68dc:    d102        ..      BNE      0x1fff68e4 ; wakeup_init1 + 100
        0x1fff68de:    2000        .       MOVS     r0,#0
        0x1fff68e0:    f7fcfd72    ..r.    BL       clk_init ; 0x1fff33c8
        0x1fff68e4:    6860        `h      LDR      r0,[r4,#4]
        0x1fff68e6:    27ff        .'      MOVS     r7,#0xff
        0x1fff68e8:    3701        .7      ADDS     r7,#1
        0x1fff68ea:    43b8        .C      BICS     r0,r0,r7
        0x1fff68ec:    6060        ``      STR      r0,[r4,#4]
        0x1fff68ee:    2002        .       MOVS     r0,#2
        0x1fff68f0:    f7fbf920    .. .    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b34
        0x1fff68f4:    6860        `h      LDR      r0,[r4,#4]
        0x1fff68f6:    4338        8C      ORRS     r0,r0,r7
        0x1fff68f8:    6060        ``      STR      r0,[r4,#4]
        0x1fff68fa:    f7fbf903    ....    BL       $Ven$TT$L$$rtc_get_counter ; 0x1fff1b04
        0x1fff68fe:    42a8        .B      CMP      r0,r5
        0x1fff6900:    d301        ..      BCC      0x1fff6906 ; wakeup_init1 + 134
        0x1fff6902:    1b40        @.      SUBS     r0,r0,r5
        0x1fff6904:    e001        ..      B        0x1fff690a ; wakeup_init1 + 138
        0x1fff6906:    1b40        @.      SUBS     r0,r0,r5
        0x1fff6908:    1e40        @.      SUBS     r0,r0,#1
        0x1fff690a:    4929        )I      LDR      r1,[pc,#164] ; [0x1fff69b0] = 0x1fff6b80
        0x1fff690c:    221e        ."      MOVS     r2,#0x1e
        0x1fff690e:    6348        Hc      STR      r0,[r1,#0x34]
        0x1fff6910:    4350        PC      MULS     r0,r2,r0
        0x1fff6912:    4a28        (J      LDR      r2,[pc,#160] ; [0x1fff69b4] = 0x672
        0x1fff6914:    68c9        .h      LDR      r1,[r1,#0xc]
        0x1fff6916:    1880        ..      ADDS     r0,r0,r2
        0x1fff6918:    61c8        .a      STR      r0,[r1,#0x1c]
        0x1fff691a:    4928        (I      LDR      r1,[pc,#160] ; [0x1fff69bc] = 0x40030000
        0x1fff691c:    4826        &H      LDR      r0,[pc,#152] ; [0x1fff69b8] = 0x3d068001
        0x1fff691e:    6008        .`      STR      r0,[r1,#0]
        0x1fff6920:    4826        &H      LDR      r0,[pc,#152] ; [0x1fff69bc] = 0x40030000
        0x1fff6922:    4927        'I      LDR      r1,[pc,#156] ; [0x1fff69c0] = 0x834
        0x1fff6924:    3080        .0      ADDS     r0,r0,#0x80
        0x1fff6926:    63c1        .c      STR      r1,[r0,#0x3c]
        0x1fff6928:    21ff        .!      MOVS     r1,#0xff
        0x1fff692a:    3141        A1      ADDS     r1,r1,#0x41
        0x1fff692c:    6241        Ab      STR      r1,[r0,#0x24]
        0x1fff692e:    7830        0x      LDRB     r0,[r6,#0]
        0x1fff6930:    f7fcfd4a    ..J.    BL       clk_init ; 0x1fff33c8
        0x1fff6934:    4923        #I      LDR      r1,[pc,#140] ; [0x1fff69c4] = 0x271
        0x1fff6936:    4824        $H      LDR      r0,[pc,#144] ; [0x1fff69c8] = 0x40001014
        0x1fff6938:    f7fbfa46    ..F.    BL       $Ven$TT$L$$set_timer ; 0x1fff1dc8
        0x1fff693c:    4822        "H      LDR      r0,[pc,#136] ; [0x1fff69c8] = 0x40001014
        0x1fff693e:    2100        .!      MOVS     r1,#0
        0x1fff6940:    3814        .8      SUBS     r0,r0,#0x14
        0x1fff6942:    61c1        .a      STR      r1,[r0,#0x1c]
        0x1fff6944:    2102        .!      MOVS     r1,#2
        0x1fff6946:    61c1        .a      STR      r1,[r0,#0x1c]
        0x1fff6948:    4920         I      LDR      r1,[pc,#128] ; [0x1fff69cc] = 0x9c3
        0x1fff694a:    6141        Aa      STR      r1,[r0,#0x14]
        0x1fff694c:    2103        .!      MOVS     r1,#3
        0x1fff694e:    61c1        .a      STR      r1,[r0,#0x1c]
        0x1fff6950:    481d        .H      LDR      r0,[pc,#116] ; [0x1fff69c8] = 0x40001014
        0x1fff6952:    491f        .I      LDR      r1,[pc,#124] ; [0x1fff69d0] = 0x3fffff
        0x1fff6954:    3014        .0      ADDS     r0,r0,#0x14
        0x1fff6956:    f7fbfa37    ..7.    BL       $Ven$TT$L$$set_timer ; 0x1fff1dc8
        0x1fff695a:    2004        .       MOVS     r0,#4
        0x1fff695c:    f7fbffa6    ....    BL       NVIC_EnableIRQ ; 0x1fff28ac
        0x1fff6960:    2014        .       MOVS     r0,#0x14
        0x1fff6962:    f7fbffa3    ....    BL       NVIC_EnableIRQ ; 0x1fff28ac
        0x1fff6966:    2015        .       MOVS     r0,#0x15
        0x1fff6968:    f7fbffa0    ....    BL       NVIC_EnableIRQ ; 0x1fff28ac
        0x1fff696c:    20ff        .       MOVS     r0,#0xff
        0x1fff696e:    f7fbf995    ....    BL       $Ven$TT$L$$set_max_length ; 0x1fff1c9c
        0x1fff6972:    2001        .       MOVS     r0,#1
        0x1fff6974:    f7fbfa34    ..4.    BL       $Ven$TT$L$$ll_hw_set_empty_head ; 0x1fff1de0
        0x1fff6978:    20ff        .       MOVS     r0,#0xff
        0x1fff697a:    30f5        .0      ADDS     r0,r0,#0xf5
        0x1fff697c:    f7fbf8ec    ....    BL       $Ven$TT$L$$ll_hw_set_rx_timeout_1st ; 0x1fff1b58
        0x1fff6980:    2058        X       MOVS     r0,#0x58
        0x1fff6982:    f7fbf86b    ..k.    BL       $Ven$TT$L$$ll_hw_set_rx_timeout ; 0x1fff1a5c
        0x1fff6986:    4813        .H      LDR      r0,[pc,#76] ; [0x1fff69d4] = 0x7530
        0x1fff6988:    f7fbf976    ..v.    BL       $Ven$TT$L$$ll_hw_set_loop_timeout ; 0x1fff1c78
        0x1fff698c:    9800        ..      LDR      r0,[sp,#0]
        0x1fff698e:    f7fbfa2d    ..-.    BL       $Ven$TT$L$$ll_hw_set_timing ; 0x1fff1dec
        0x1fff6992:    2007        .       MOVS     r0,#7
        0x1fff6994:    f7fbf9b8    ....    BL       $Ven$TT$L$$ll_hw_ign_rfifo ; 0x1fff1d08
        0x1fff6998:    69e0        .i      LDR      r0,[r4,#0x1c]
        0x1fff699a:    490f        .I      LDR      r1,[pc,#60] ; [0x1fff69d8] = 0xfffefe00
        0x1fff699c:    4008        .@      ANDS     r0,r0,r1
        0x1fff699e:    30ff        .0      ADDS     r0,r0,#0xff
        0x1fff69a0:    3009        .0      ADDS     r0,r0,#9
        0x1fff69a2:    61e0        .a      STR      r0,[r4,#0x1c]
        0x1fff69a4:    bdf8        ..      POP      {r3-r7,pc}
    $d
        0x1fff69a6:    0000        ..      DCW    0
        0x1fff69a8:    1fff0a4a    J...    DCD    536808010
        0x1fff69ac:    4000f040    @..@    DCD    1073803328
        0x1fff69b0:    1fff6b80    .k..    DCD    536832896
        0x1fff69b4:    00000672    r...    DCD    1650
        0x1fff69b8:    3d068001    ...=    DCD    1023836161
        0x1fff69bc:    40030000    ...@    DCD    1073938432
        0x1fff69c0:    00000834    4...    DCD    2100
        0x1fff69c4:    00000271    q...    DCD    625
        0x1fff69c8:    40001014    ...@    DCD    1073745940
        0x1fff69cc:    000009c3    ....    DCD    2499
        0x1fff69d0:    003fffff    ..?.    DCD    4194303
        0x1fff69d4:    00007530    0u..    DCD    30000
        0x1fff69d8:    fffefe00    ....    DCD    4294901248
    $d.realdata
    .constdata
        0x1fff69dc:    0801003b    ;...    DCD    134283323
        0x1fff69e0:    00030002    ....    DCD    196610
        0x1fff69e4:    02060205    ....    DCD    33948165
        0x1fff69e8:    03080307    ....    DCD    50856711
        0x1fff69ec:    000a0309    ....    DCD    656137
        0x1fff69f0:    030d030c    ....    DCD    51184396
    .constdata
        0x1fff69f4:    00000003    ....    DCD    3
        0x1fff69f8:    00000000    ....    DCD    0
        0x1fff69fc:    00000000    ....    DCD    0
    .constdata
    c_gpio_index
        0x1fff6a00:    03020100    ....    DCD    50462976
        0x1fff6a04:    0b0a0907    ....    DCD    185207047
        0x1fff6a08:    11100f0e    ....    DCD    286265102
        0x1fff6a0c:    18171412    ....    DCD    404165650
        0x1fff6a10:    1f1b1a19    ....    DCD    521869849
        0x1fff6a14:    2120         !      DCW    8480
        0x1fff6a16:    22          "       DCB    34
    c_gpio_pull
        0x1fff6a17:    00          .       DCB    0
        0x1fff6a18:    05000102    ....    DCD    83886338
        0x1fff6a1c:    07080004    ....    DCD    117964804
        0x1fff6a20:    000a0b00    ....    DCD    658176
        0x1fff6a24:    1d001617    ....    DCD    486544919
        0x1fff6a28:    0102011c    ....    DCD    16908572
        0x1fff6a2c:    01040501    ....    DCD    17040641
        0x1fff6a30:    11010d0e    ....    DCD    285281550
        0x1fff6a34:    13140110    ....    DCD    320078096
        0x1fff6a38:    01161701    ....    DCD    18224897
        0x1fff6a3c:    0202191a    ....    DCD    33691930
        0x1fff6a40:    0a0b0201    ....    DCD    168493569
        0x1fff6a44:    020d0e02    ....    DCD    34409986
        0x1fff6a48:    14021011    ....    DCD    335679505
        0x1fff6a4c:    16170213    ....    DCD    370606611
        0x1fff6a50:    03040503    ....    DCD    50595075
        0x1fff6a54:    0b030708    ....    DCD    184747784
        0x1fff6a58:    0d0e030a    ....    DCD    219022090
    retention_reg
        0x1fff6a5c:    0e000d00    ....    DCD    234884352
        0x1fff6a60:    11001000    ....    DCD    285216768
        0x1fff6a64:    14001300    ....    DCD    335549184
        0x1fff6a68:    08010701    ....    DCD    134285057
        0x1fff6a6c:    0b010a01    ....    DCD    184617473
        0x1fff6a70:    1d011c01    ....    DCD    486611969
        0x1fff6a74:    05020402    ....    DCD    84018178
        0x1fff6a78:    08020702    ....    DCD    134350594
        0x1fff6a7c:    1a021902    ....    DCD    436345090
        0x1fff6a80:    1d021c02    ....    DCD    486677506
        0x1fff6a84:    02030103    ....    DCD    33751299
        0x1fff6a88:    00001703    ....    DCD    5891
    .constdata
        0x1fff6a8c:    ffff0605    ....    DCD    4294903301
        0x1fff6a90:    0001c200    ....    DCD    115200
        0x1fff6a94:    00000001    ....    DCD    1
        0x1fff6a98:    00000000    ....    DCD    0
    .conststring
        0x1fff6a9c:    33323130    0123    DCD    858927408
        0x1fff6aa0:    37363534    4567    DCD    926299444
        0x1fff6aa4:    42413938    89AB    DCD    1111570744
        0x1fff6aa8:    46454443    CDEF    DCD    1178944579
        0x1fff6aac:    4a494847    GHIJ    DCD    1246316615
        0x1fff6ab0:    4e4d4c4b    KLMN    DCD    1313688651
        0x1fff6ab4:    5251504f    OPQR    DCD    1381060687
        0x1fff6ab8:    56555453    STUV    DCD    1448432723
        0x1fff6abc:    5a595857    WXYZ    DCD    1515804759
        0x1fff6ac0:    00000000    ....    DCD    0
        0x1fff6ac4:    33323130    0123    DCD    858927408
        0x1fff6ac8:    37363534    4567    DCD    926299444
        0x1fff6acc:    62613938    89ab    DCD    1650538808
        0x1fff6ad0:    66656463    cdef    DCD    1717920867
        0x1fff6ad4:    6a696867    ghij    DCD    1785292903
        0x1fff6ad8:    6e6d6c6b    klmn    DCD    1852664939
        0x1fff6adc:    7271706f    opqr    DCD    1920036975
        0x1fff6ae0:    76757473    stuv    DCD    1987409011
        0x1fff6ae4:    7a797877    wxyz    DCD    2054781047
        0x1fff6ae8:    00000000    ....    DCD    0
    Region$$Table$$Base
        0x1fff6aec:    1fff0400    ....    DCD    536806400
        0x1fff6af0:    1fff6bf4    .k..    DCD    536833012
        0x1fff6af4:    0000000c    ....    DCD    12
        0x1fff6af8:    1fff2d24    $-..    DCD    536816932
        0x1fff6afc:    1fff6bf4    .k..    DCD    536833012
        0x1fff6b00:    1fff0400    ....    DCD    536806400
        0x1fff6b04:    00000400    ....    DCD    1024
        0x1fff6b08:    1fff18c4    ....    DCD    536811716
        0x1fff6b0c:    1fff6bf4    .k..    DCD    536833012
        0x1fff6b10:    1fff6bf4    .k..    DCD    536833012
        0x1fff6b14:    00000fd4    ....    DCD    4052
        0x1fff6b18:    1fff2d34    4-..    DCD    536816948
    _section_sram_code_
    Region$$Table$$Limit
    tasksArr
        0x1fff6b1c:    1fff2b5d    ]+..    DCD    536816477
    _section_sram_code_
    tasksCnt
        0x1fff6b20:    00000001    ....    DCD    1

====================================

** Section #2

    Name        : ER_IROM1
    Type        : SHT_PROGBITS (0x00000001)
    Flags       : SHF_ALLOC + SHF_WRITE (0x00000003)
    Addr        : 0x1fff6b24
    File Offset : 21280 (0x5320)
    Size        : 208 bytes (0xd0)
    Link        : SHN_UNDEF
    Info        : 0
    Alignment   : 4
    Entry Size  : 0

    0x1fff6b24:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff6b34:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff6b44:   02 00 00 00 88 21 28 00 59 02 e0 01 00 00 00 00    .....!(.Y.......
    0x1fff6b54:   00 00 00 00 00 00 00 00 c4 6a ff 1f 9c 6a ff 1f    .........j...j..
    0x1fff6b64:   00 00 00 00 3b 00 01 08 00 00 00 00 00 00 00 00    ....;...........
    0x1fff6b74:   00 00 00 00 00 00 00 00 40 78 7d 01 00 00 00 02    ........@x}.....
    0x1fff6b84:   00 00 02 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff6b94:   00 00 00 00 00 00 00 00 00 00 00 00 ff ff 00 00    ................
    0x1fff6ba4:   00 00 00 00 00 00 00 00 00 00 00 00 01 00 00 00    ................
    0x1fff6bb4:   00 00 00 00 00 00 00 00 00 00 00 00 00 10 00 00    ................
    0x1fff6bc4:   00 00 00 00 00 00 00 00 00 10 00 00 00 00 00 00    ................
    0x1fff6bd4:   02 05 09 0e 14 22 7e 00 00 1d 70 00 00 00 00 00    ....."~...p.....
    0x1fff6be4:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................


====================================

** Section #3

    Name        : ER_IROM1
    Type        : SHT_NOBITS (0x00000008)
    Flags       : SHF_ALLOC + SHF_WRITE (0x00000003)
    Addr        : 0x1fff6bf4
    File Offset : 21488 (0x53f0)
    Size        : 4052 bytes (0xfd4)
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
    File Offset : 21488 (0x53f0)
    Size        : 1024 bytes (0x400)
    Link        : SHN_UNDEF
    Info        : 0
    Alignment   : 4
    Entry Size  : 0

    0x1fff0000:   00 00 00 00 31 56 ff 1f 1c 6b ff 1f 20 6b ff 1f    ....1V...k.. k..
    0x1fff0010:   28 6b ff 1f 00 00 00 00 00 00 00 00 00 00 00 00    (k..............
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
    0x1fff0190:   39 42 ff 1f dd 42 ff 1f d1 60 ff 1f 00 00 00 00    9B...B...`......
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
    0x1fff03a0:   00 00 00 00 00 00 00 00 00 00 00 00 4d 38 ff 1f    ............M8..
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
    File Offset : 22512 (0x57f0)
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
    File Offset : 22524 (0x57fc)
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
    File Offset : 24000 (0x5dc0)
    Size        : 4948 bytes (0x1354)
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
    File Offset : 28948 (0x7114)
    Size        : 75156 bytes (0x12594)
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
    File Offset : 104104 (0x196a8)
    Size        : 23192 bytes (0x5a98)
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
    File Offset : 127296 (0x1f140)
    Size        : 8792 bytes (0x2258)
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
    File Offset : 136088 (0x21398)
    Size        : 40920 bytes (0x9fd8)
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
    File Offset : 177008 (0x2b370)
    Size        : 3642 bytes (0xe3a)
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
    File Offset : 180652 (0x2c1ac)
    Size        : 34464 bytes (0x86a0)
    Link        : Section 14 (.strtab)
    Info        : Last local symbol no = 833
    Alignment   : 4
    Entry Size  : 16


====================================

** Section #14

    Name        : .strtab
    Type        : SHT_STRTAB (0x00000003)
    Flags       : None (0x00000000)
    Addr        : 0x00000000
    File Offset : 215116 (0x3484c)
    Size        : 32052 bytes (0x7d34)
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
    File Offset : 247168 (0x3c580)
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
    File Offset : 247204 (0x3c5a4)
    Size        : 36912 bytes (0x9030)
    Link        : SHN_UNDEF
    Info        : 0
    Alignment   : 1
    Entry Size  : 0

    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armlink [4d35ed]
    ArmLink --library_type=microlib --callgraph --load_addr_map_info --map --symbols --xref --diag_suppress=9931 --cpu=Cortex-M0 --list=.\Listings\smart_rf.map --output=.\Objects\smart_rf.axf --scatter=.\scatter_load.sct --keep=jump_table_base --keep=global_config --info=summarysizes,sizes,totals,unused,veneers

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
    
    pbed4-3
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armasm [4d35ec]
    armasm --debug --diag_suppress=9931,9931,1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide 
    main.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: ArmCC [4d3637]
    ArmCC --c99 --split_sections --debug -c -o.\objects\main.o --depend=.\objects\main.d --cpu=Cortex-M0 --apcs=interwork -O3 --diag_suppress=9931 -I..\..\..\components\inc -I..\..\..\components\ble\controller -I..\..\..\components\osal\include -I..\..\..\components\common -I.\source -I..\..\..\components\libraries\crc16 -I..\..\..\components\driver\clock -I..\..\..\components\arch\cm0 -I..\..\..\components\driver\pwrmgr -I..\..\..\components\driver\uart -I..\..\..\components\driver\gpio -I..\..\..\components\driver\timer -I..\..\..\misc -I..\..\..\components\driver\log -I..\..\..\components\ble\include -I..\..\..\components\aoxEst -I..\..\..\components\driver\flash -I..\..\..\components\libraries\fs -I..\..\..\components\libraries\crc16 -I..\..\..\components\libraries\cli -I.\RTE\_Target_1 -IC:\Users\jzli\AppData\Local\Arm\Packs\ARM\CMSIS\5.6.0\CMSIS\Core\Include -IC:\Users\jzli\AppData\Local\Arm\Packs\ARM\CMSIS\5.6.0\Device\ARM\ARMCM0\Include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -D__UVISION_VERSION=529 -D_RTE_ -DARMCM0 -DCFG_CP -DOSAL_CBTIMER_NUM_TASKS=1 -DHOST_CONFIG=4 -DHCI_TL_NONE=1 -DENABLE_LOG_ROM_=0 -DDEBUG_INFO=1 -DPHY_MODE_DEF=1 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -DCFG_SLEEP_MODE=PWR_MODE_SLEEP --omf_browse=.\objects\main.crf main.c
    
    
    osal_propprotocol.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: ArmCC [4d3637]
    ArmCC --c99 --split_sections --debug -c -o.\objects\osal_propprotocol.o --depend=.\objects\osal_propprotocol.d --cpu=Cortex-M0 --apcs=interwork -O3 --diag_suppress=9931 -I..\..\..\components\inc -I..\..\..\components\ble\controller -I..\..\..\components\osal\include -I..\..\..\components\common -I.\source -I..\..\..\components\libraries\crc16 -I..\..\..\components\driver\clock -I..\..\..\components\arch\cm0 -I..\..\..\components\driver\pwrmgr -I..\..\..\components\driver\uart -I..\..\..\components\driver\gpio -I..\..\..\components\driver\timer -I..\..\..\misc -I..\..\..\components\driver\log -I..\..\..\components\ble\include -I..\..\..\components\aoxEst -I..\..\..\components\driver\flash -I..\..\..\components\libraries\fs -I..\..\..\components\libraries\crc16 -I..\..\..\components\libraries\cli -I.\RTE\_Target_1 -IC:\Users\jzli\AppData\Local\Arm\Packs\ARM\CMSIS\5.6.0\CMSIS\Core\Include -IC:\Users\jzli\AppData\Local\Arm\Packs\ARM\CMSIS\5.6.0\Device\ARM\ARMCM0\Include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -D__UVISION_VERSION=529 -D_RTE_ -DARMCM0 -DCFG_CP -DOSAL_CBTIMER_NUM_TASKS=1 -DHOST_CONFIG=4 -DHCI_TL_NONE=1 -DENABLE_LOG_ROM_=0 -DDEBUG_INFO=1 -DPHY_MODE_DEF=1 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -DCFG_SLEEP_MODE=PWR_MODE_SLEEP --omf_browse=.\objects\osal_propprotocol.crf source\OSAL_PropProtocol.c
    
    prop_protocol.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armlink [4d35ed]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=9931,9931,6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\prop_protocol.o --vfemode=force

    Input Comments:
    
    p9610-3
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armasm [4d35ec]
    armasm --debug --diag_suppress=9931,9931,1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide 
    prop_protocol.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: ArmCC [4d3637]
    ArmCC --c99 --split_sections --debug -c -o.\objects\prop_protocol.o --depend=.\objects\prop_protocol.d --cpu=Cortex-M0 --apcs=interwork -O3 --diag_suppress=9931 -I..\..\..\components\inc -I..\..\..\components\ble\controller -I..\..\..\components\osal\include -I..\..\..\components\common -I.\source -I..\..\..\components\libraries\crc16 -I..\..\..\components\driver\clock -I..\..\..\components\arch\cm0 -I..\..\..\components\driver\pwrmgr -I..\..\..\components\driver\uart -I..\..\..\components\driver\gpio -I..\..\..\components\driver\timer -I..\..\..\misc -I..\..\..\components\driver\log -I..\..\..\components\ble\include -I..\..\..\components\aoxEst -I..\..\..\components\driver\flash -I..\..\..\components\libraries\fs -I..\..\..\components\libraries\crc16 -I..\..\..\components\libraries\cli -I.\RTE\_Target_1 -IC:\Users\jzli\AppData\Local\Arm\Packs\ARM\CMSIS\5.6.0\CMSIS\Core\Include -IC:\Users\jzli\AppData\Local\Arm\Packs\ARM\CMSIS\5.6.0\Device\ARM\ARMCM0\Include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -D__UVISION_VERSION=529 -D_RTE_ -DARMCM0 -DCFG_CP -DOSAL_CBTIMER_NUM_TASKS=1 -DHOST_CONFIG=4 -DHCI_TL_NONE=1 -DENABLE_LOG_ROM_=0 -DDEBUG_INFO=1 -DPHY_MODE_DEF=1 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -DCFG_SLEEP_MODE=PWR_MODE_SLEEP --omf_browse=.\objects\prop_protocol.crf source\prop_protocol.c
    
    
    
    
    
    uart.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armlink [4d35ed]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=9931,9931,6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\uart.o --vfemode=force

    Input Comments:
    
    p5c38-3
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armasm [4d35ec]
    armasm --debug --diag_suppress=9931,9931,1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide 
    uart.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: ArmCC [4d3637]
    ArmCC --c99 --split_sections --debug -c -o.\objects\uart.o --depend=.\objects\uart.d --cpu=Cortex-M0 --apcs=interwork -O3 --diag_suppress=9931 -I..\..\..\components\inc -I..\..\..\components\ble\controller -I..\..\..\components\osal\include -I..\..\..\components\common -I.\source -I..\..\..\components\libraries\crc16 -I..\..\..\components\driver\clock -I..\..\..\components\arch\cm0 -I..\..\..\components\driver\pwrmgr -I..\..\..\components\driver\uart -I..\..\..\components\driver\gpio -I..\..\..\components\driver\timer -I..\..\..\misc -I..\..\..\components\driver\log -I..\..\..\components\ble\include -I..\..\..\components\aoxEst -I..\..\..\components\driver\flash -I..\..\..\components\libraries\fs -I..\..\..\components\libraries\crc16 -I..\..\..\components\libraries\cli -I.\RTE\_Target_1 -IC:\Users\jzli\AppData\Local\Arm\Packs\ARM\CMSIS\5.6.0\CMSIS\Core\Include -IC:\Users\jzli\AppData\Local\Arm\Packs\ARM\CMSIS\5.6.0\Device\ARM\ARMCM0\Include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -D__UVISION_VERSION=529 -D_RTE_ -DARMCM0 -DCFG_CP -DOSAL_CBTIMER_NUM_TASKS=1 -DHOST_CONFIG=4 -DHCI_TL_NONE=1 -DENABLE_LOG_ROM_=0 -DDEBUG_INFO=1 -DPHY_MODE_DEF=1 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -DCFG_SLEEP_MODE=PWR_MODE_SLEEP --omf_browse=.\objects\uart.crf ..\..\..\components\driver\uart\uart.c
    
    
    clock.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armlink [4d35ed]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=9931,9931,6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\clock.o --vfemode=force

    Input Comments:
    
    pb3f4-3
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armasm [4d35ec]
    armasm --debug --diag_suppress=9931,9931,1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide 
    clock.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: ArmCC [4d3637]
    ArmCC --c99 --split_sections --debug -c -o.\objects\clock.o --depend=.\objects\clock.d --cpu=Cortex-M0 --apcs=interwork -O3 --diag_suppress=9931 -I..\..\..\components\inc -I..\..\..\components\ble\controller -I..\..\..\components\osal\include -I..\..\..\components\common -I.\source -I..\..\..\components\libraries\crc16 -I..\..\..\components\driver\clock -I..\..\..\components\arch\cm0 -I..\..\..\components\driver\pwrmgr -I..\..\..\components\driver\uart -I..\..\..\components\driver\gpio -I..\..\..\components\driver\timer -I..\..\..\misc -I..\..\..\components\driver\log -I..\..\..\components\ble\include -I..\..\..\components\aoxEst -I..\..\..\components\driver\flash -I..\..\..\components\libraries\fs -I..\..\..\components\libraries\crc16 -I..\..\..\components\libraries\cli -I.\RTE\_Target_1 -IC:\Users\jzli\AppData\Local\Arm\Packs\ARM\CMSIS\5.6.0\CMSIS\Core\Include -IC:\Users\jzli\AppData\Local\Arm\Packs\ARM\CMSIS\5.6.0\Device\ARM\ARMCM0\Include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -D__UVISION_VERSION=529 -D_RTE_ -DARMCM0 -DCFG_CP -DOSAL_CBTIMER_NUM_TASKS=1 -DHOST_CONFIG=4 -DHCI_TL_NONE=1 -DENABLE_LOG_ROM_=0 -DDEBUG_INFO=1 -DPHY_MODE_DEF=1 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -DCFG_SLEEP_MODE=PWR_MODE_SLEEP --omf_browse=.\objects\clock.crf ..\..\..\components\driver\clock\clock.c
    
    
    
    gpio.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armlink [4d35ed]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=9931,9931,6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\gpio.o --vfemode=force

    Input Comments:
    
    pbb30-3
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armasm [4d35ec]
    armasm --debug --diag_suppress=9931,9931,1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide 
    gpio.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: ArmCC [4d3637]
    ArmCC --c99 --split_sections --debug -c -o.\objects\gpio.o --depend=.\objects\gpio.d --cpu=Cortex-M0 --apcs=interwork -O3 --diag_suppress=9931 -I..\..\..\components\inc -I..\..\..\components\ble\controller -I..\..\..\components\osal\include -I..\..\..\components\common -I.\source -I..\..\..\components\libraries\crc16 -I..\..\..\components\driver\clock -I..\..\..\components\arch\cm0 -I..\..\..\components\driver\pwrmgr -I..\..\..\components\driver\uart -I..\..\..\components\driver\gpio -I..\..\..\components\driver\timer -I..\..\..\misc -I..\..\..\components\driver\log -I..\..\..\components\ble\include -I..\..\..\components\aoxEst -I..\..\..\components\driver\flash -I..\..\..\components\libraries\fs -I..\..\..\components\libraries\crc16 -I..\..\..\components\libraries\cli -I.\RTE\_Target_1 -IC:\Users\jzli\AppData\Local\Arm\Packs\ARM\CMSIS\5.6.0\CMSIS\Core\Include -IC:\Users\jzli\AppData\Local\Arm\Packs\ARM\CMSIS\5.6.0\Device\ARM\ARMCM0\Include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -D__UVISION_VERSION=529 -D_RTE_ -DARMCM0 -DCFG_CP -DOSAL_CBTIMER_NUM_TASKS=1 -DHOST_CONFIG=4 -DHCI_TL_NONE=1 -DENABLE_LOG_ROM_=0 -DDEBUG_INFO=1 -DPHY_MODE_DEF=1 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -DCFG_SLEEP_MODE=PWR_MODE_SLEEP --omf_browse=.\objects\gpio.crf ..\..\..\components\driver\gpio\gpio.c
    
    
    timer.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armlink [4d35ed]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=9931,9931,6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\timer.o --vfemode=force

    Input Comments:
    
    p2cb4-3
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armasm [4d35ec]
    armasm --debug --diag_suppress=9931,9931,1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide 
    timer.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: ArmCC [4d3637]
    ArmCC --c99 --split_sections --debug -c -o.\objects\timer.o --depend=.\objects\timer.d --cpu=Cortex-M0 --apcs=interwork -O3 --diag_suppress=9931 -I..\..\..\components\inc -I..\..\..\components\ble\controller -I..\..\..\components\osal\include -I..\..\..\components\common -I.\source -I..\..\..\components\libraries\crc16 -I..\..\..\components\driver\clock -I..\..\..\components\arch\cm0 -I..\..\..\components\driver\pwrmgr -I..\..\..\components\driver\uart -I..\..\..\components\driver\gpio -I..\..\..\components\driver\timer -I..\..\..\misc -I..\..\..\components\driver\log -I..\..\..\components\ble\include -I..\..\..\components\aoxEst -I..\..\..\components\driver\flash -I..\..\..\components\libraries\fs -I..\..\..\components\libraries\crc16 -I..\..\..\components\libraries\cli -I.\RTE\_Target_1 -IC:\Users\jzli\AppData\Local\Arm\Packs\ARM\CMSIS\5.6.0\CMSIS\Core\Include -IC:\Users\jzli\AppData\Local\Arm\Packs\ARM\CMSIS\5.6.0\Device\ARM\ARMCM0\Include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -D__UVISION_VERSION=529 -D_RTE_ -DARMCM0 -DCFG_CP -DOSAL_CBTIMER_NUM_TASKS=1 -DHOST_CONFIG=4 -DHCI_TL_NONE=1 -DENABLE_LOG_ROM_=0 -DDEBUG_INFO=1 -DPHY_MODE_DEF=1 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -DCFG_SLEEP_MODE=PWR_MODE_SLEEP --omf_browse=.\objects\timer.crf ..\..\..\components\driver\timer\timer.c
    
    
    
    pwrmgr.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armlink [4d35ed]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=9931,9931,6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\pwrmgr.o --vfemode=force

    Input Comments:
    
    p644c-3
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armasm [4d35ec]
    armasm --debug --diag_suppress=9931,9931,1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide 
    pwrmgr.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: ArmCC [4d3637]
    ArmCC --c99 --split_sections --debug -c -o.\objects\pwrmgr.o --depend=.\objects\pwrmgr.d --cpu=Cortex-M0 --apcs=interwork -O3 --diag_suppress=9931 -I..\..\..\components\inc -I..\..\..\components\ble\controller -I..\..\..\components\osal\include -I..\..\..\components\common -I.\source -I..\..\..\components\libraries\crc16 -I..\..\..\components\driver\clock -I..\..\..\components\arch\cm0 -I..\..\..\components\driver\pwrmgr -I..\..\..\components\driver\uart -I..\..\..\components\driver\gpio -I..\..\..\components\driver\timer -I..\..\..\misc -I..\..\..\components\driver\log -I..\..\..\components\ble\include -I..\..\..\components\aoxEst -I..\..\..\components\driver\flash -I..\..\..\components\libraries\fs -I..\..\..\components\libraries\crc16 -I..\..\..\components\libraries\cli -I.\RTE\_Target_1 -IC:\Users\jzli\AppData\Local\Arm\Packs\ARM\CMSIS\5.6.0\CMSIS\Core\Include -IC:\Users\jzli\AppData\Local\Arm\Packs\ARM\CMSIS\5.6.0\Device\ARM\ARMCM0\Include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -D__UVISION_VERSION=529 -D_RTE_ -DARMCM0 -DCFG_CP -DOSAL_CBTIMER_NUM_TASKS=1 -DHOST_CONFIG=4 -DHCI_TL_NONE=1 -DENABLE_LOG_ROM_=0 -DDEBUG_INFO=1 -DPHY_MODE_DEF=1 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -DCFG_SLEEP_MODE=PWR_MODE_SLEEP --omf_browse=.\objects\pwrmgr.crf ..\..\..\components\driver\pwrmgr\pwrmgr.c
    
    
    
    
    my_printf.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armlink [4d35ed]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=9931,9931,6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\my_printf.o --vfemode=force

    Input Comments:
    
    pa574-3
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armasm [4d35ec]
    armasm --debug --diag_suppress=9931,9931,1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide 
    my_printf.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: ArmCC [4d3637]
    ArmCC --c99 --split_sections --debug -c -o.\objects\my_printf.o --depend=.\objects\my_printf.d --cpu=Cortex-M0 --apcs=interwork -O3 --diag_suppress=9931 -I..\..\..\components\inc -I..\..\..\components\ble\controller -I..\..\..\components\osal\include -I..\..\..\components\common -I.\source -I..\..\..\components\libraries\crc16 -I..\..\..\components\driver\clock -I..\..\..\components\arch\cm0 -I..\..\..\components\driver\pwrmgr -I..\..\..\components\driver\uart -I..\..\..\components\driver\gpio -I..\..\..\components\driver\timer -I..\..\..\misc -I..\..\..\components\driver\log -I..\..\..\components\ble\include -I..\..\..\components\aoxEst -I..\..\..\components\driver\flash -I..\..\..\components\libraries\fs -I..\..\..\components\libraries\crc16 -I..\..\..\components\libraries\cli -I.\RTE\_Target_1 -IC:\Users\jzli\AppData\Local\Arm\Packs\ARM\CMSIS\5.6.0\CMSIS\Core\Include -IC:\Users\jzli\AppData\Local\Arm\Packs\ARM\CMSIS\5.6.0\Device\ARM\ARMCM0\Include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -D__UVISION_VERSION=529 -D_RTE_ -DARMCM0 -DCFG_CP -DOSAL_CBTIMER_NUM_TASKS=1 -DHOST_CONFIG=4 -DHCI_TL_NONE=1 -DENABLE_LOG_ROM_=0 -DDEBUG_INFO=1 -DPHY_MODE_DEF=1 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -DCFG_SLEEP_MODE=PWR_MODE_SLEEP --omf_browse=.\objects\my_printf.crf ..\..\..\components\driver\log\my_printf.c
    
    
    
    
    
    flash.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armlink [4d35ed]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=9931,9931,6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\flash.o --vfemode=force

    Input Comments:
    
    pa538-3
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armasm [4d35ec]
    armasm --debug --diag_suppress=9931,9931,1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide 
    flash.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: ArmCC [4d3637]
    ArmCC --c99 --split_sections --debug -c -o.\objects\flash.o --depend=.\objects\flash.d --cpu=Cortex-M0 --apcs=interwork -O3 --diag_suppress=9931 -I..\..\..\components\inc -I..\..\..\components\ble\controller -I..\..\..\components\osal\include -I..\..\..\components\common -I.\source -I..\..\..\components\libraries\crc16 -I..\..\..\components\driver\clock -I..\..\..\components\arch\cm0 -I..\..\..\components\driver\pwrmgr -I..\..\..\components\driver\uart -I..\..\..\components\driver\gpio -I..\..\..\components\driver\timer -I..\..\..\misc -I..\..\..\components\driver\log -I..\..\..\components\ble\include -I..\..\..\components\aoxEst -I..\..\..\components\driver\flash -I..\..\..\components\libraries\fs -I..\..\..\components\libraries\crc16 -I..\..\..\components\libraries\cli -I.\RTE\_Target_1 -IC:\Users\jzli\AppData\Local\Arm\Packs\ARM\CMSIS\5.6.0\CMSIS\Core\Include -IC:\Users\jzli\AppData\Local\Arm\Packs\ARM\CMSIS\5.6.0\Device\ARM\ARMCM0\Include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -D__UVISION_VERSION=529 -D_RTE_ -DARMCM0 -DCFG_CP -DOSAL_CBTIMER_NUM_TASKS=1 -DHOST_CONFIG=4 -DHCI_TL_NONE=1 -DENABLE_LOG_ROM_=0 -DDEBUG_INFO=1 -DPHY_MODE_DEF=1 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -DCFG_SLEEP_MODE=PWR_MODE_SLEEP --omf_browse=.\objects\flash.crf ..\..\..\components\driver\flash\flash.c
    
    
    
    jump_table.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armlink [4d35ed]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=9931,9931,6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\jump_table.o --vfemode=force

    Input Comments:
    
    p9990-3
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armasm [4d35ec]
    armasm --debug --diag_suppress=9931,9931,1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide 
    jump_table.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: ArmCC [4d3637]
    ArmCC --c99 --split_sections --debug -c -o.\objects\jump_table.o --depend=.\objects\jump_table.d --cpu=Cortex-M0 --apcs=interwork -O3 --diag_suppress=9931 -I..\..\..\components\inc -I..\..\..\components\ble\controller -I..\..\..\components\osal\include -I..\..\..\components\common -I.\source -I..\..\..\components\libraries\crc16 -I..\..\..\components\driver\clock -I..\..\..\components\arch\cm0 -I..\..\..\components\driver\pwrmgr -I..\..\..\components\driver\uart -I..\..\..\components\driver\gpio -I..\..\..\components\driver\timer -I..\..\..\misc -I..\..\..\components\driver\log -I..\..\..\components\ble\include -I..\..\..\components\aoxEst -I..\..\..\components\driver\flash -I..\..\..\components\libraries\fs -I..\..\..\components\libraries\crc16 -I..\..\..\components\libraries\cli -I.\RTE\_Target_1 -IC:\Users\jzli\AppData\Local\Arm\Packs\ARM\CMSIS\5.6.0\CMSIS\Core\Include -IC:\Users\jzli\AppData\Local\Arm\Packs\ARM\CMSIS\5.6.0\Device\ARM\ARMCM0\Include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -D__UVISION_VERSION=529 -D_RTE_ -DARMCM0 -DCFG_CP -DOSAL_CBTIMER_NUM_TASKS=1 -DHOST_CONFIG=4 -DHCI_TL_NONE=1 -DENABLE_LOG_ROM_=0 -DDEBUG_INFO=1 -DPHY_MODE_DEF=1 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -DCFG_SLEEP_MODE=PWR_MODE_SLEEP --omf_browse=.\objects\jump_table.crf ..\..\..\misc\jump_table.c
    
    
    
    
    fs.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armlink [4d35ed]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=9931,9931,6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\fs.o --vfemode=force

    Input Comments:
    
    p3278-3
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armasm [4d35ec]
    armasm --debug --diag_suppress=9931,9931,1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide 
    fs.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: ArmCC [4d3637]
    ArmCC --c99 --split_sections --debug -c -o.\objects\fs.o --depend=.\objects\fs.d --cpu=Cortex-M0 --apcs=interwork -O3 --diag_suppress=9931 -I..\..\..\components\inc -I..\..\..\components\ble\controller -I..\..\..\components\osal\include -I..\..\..\components\common -I.\source -I..\..\..\components\libraries\crc16 -I..\..\..\components\driver\clock -I..\..\..\components\arch\cm0 -I..\..\..\components\driver\pwrmgr -I..\..\..\components\driver\uart -I..\..\..\components\driver\gpio -I..\..\..\components\driver\timer -I..\..\..\misc -I..\..\..\components\driver\log -I..\..\..\components\ble\include -I..\..\..\components\aoxEst -I..\..\..\components\driver\flash -I..\..\..\components\libraries\fs -I..\..\..\components\libraries\crc16 -I..\..\..\components\libraries\cli -I.\RTE\_Target_1 -IC:\Users\jzli\AppData\Local\Arm\Packs\ARM\CMSIS\5.6.0\CMSIS\Core\Include -IC:\Users\jzli\AppData\Local\Arm\Packs\ARM\CMSIS\5.6.0\Device\ARM\ARMCM0\Include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -D__UVISION_VERSION=529 -D_RTE_ -DARMCM0 -DCFG_CP -DOSAL_CBTIMER_NUM_TASKS=1 -DHOST_CONFIG=4 -DHCI_TL_NONE=1 -DENABLE_LOG_ROM_=0 -DDEBUG_INFO=1 -DPHY_MODE_DEF=1 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -DCFG_SLEEP_MODE=PWR_MODE_SLEEP --omf_browse=.\objects\fs.crf ..\..\..\components\libraries\fs\fs.c
    
    
    
    
    
    cliface.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armlink [4d35ed]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=9931,9931,6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\cliface.o --vfemode=force

    Input Comments:
    
    p4fb4-3
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armasm [4d35ec]
    armasm --debug --diag_suppress=9931,9931,1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide 
    cliface.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: ArmCC [4d3637]
    ArmCC --c99 --split_sections --debug -c -o.\objects\cliface.o --depend=.\objects\cliface.d --cpu=Cortex-M0 --apcs=interwork -O3 --diag_suppress=9931 -I..\..\..\components\inc -I..\..\..\components\ble\controller -I..\..\..\components\osal\include -I..\..\..\components\common -I.\source -I..\..\..\components\libraries\crc16 -I..\..\..\components\driver\clock -I..\..\..\components\arch\cm0 -I..\..\..\components\driver\pwrmgr -I..\..\..\components\driver\uart -I..\..\..\components\driver\gpio -I..\..\..\components\driver\timer -I..\..\..\misc -I..\..\..\components\driver\log -I..\..\..\components\ble\include -I..\..\..\components\aoxEst -I..\..\..\components\driver\flash -I..\..\..\components\libraries\fs -I..\..\..\components\libraries\crc16 -I..\..\..\components\libraries\cli -I.\RTE\_Target_1 -IC:\Users\jzli\AppData\Local\Arm\Packs\ARM\CMSIS\5.6.0\CMSIS\Core\Include -IC:\Users\jzli\AppData\Local\Arm\Packs\ARM\CMSIS\5.6.0\Device\ARM\ARMCM0\Include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -D__UVISION_VERSION=529 -D_RTE_ -DARMCM0 -DCFG_CP -DOSAL_CBTIMER_NUM_TASKS=1 -DHOST_CONFIG=4 -DHCI_TL_NONE=1 -DENABLE_LOG_ROM_=0 -DDEBUG_INFO=1 -DPHY_MODE_DEF=1 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -DCFG_SLEEP_MODE=PWR_MODE_SLEEP --omf_browse=.\objects\cliface.crf ..\..\..\components\libraries\cli\cliface.c
    
    
    crc16.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: ArmCC [4d3637]
    ArmCC --c99 --split_sections --debug -c -o.\objects\crc16.o --depend=.\objects\crc16.d --cpu=Cortex-M0 --apcs=interwork -O3 --diag_suppress=9931 -I..\..\..\components\inc -I..\..\..\components\ble\controller -I..\..\..\components\osal\include -I..\..\..\components\common -I.\source -I..\..\..\components\libraries\crc16 -I..\..\..\components\driver\clock -I..\..\..\components\arch\cm0 -I..\..\..\components\driver\pwrmgr -I..\..\..\components\driver\uart -I..\..\..\components\driver\gpio -I..\..\..\components\driver\timer -I..\..\..\misc -I..\..\..\components\driver\log -I..\..\..\components\ble\include -I..\..\..\components\aoxEst -I..\..\..\components\driver\flash -I..\..\..\components\libraries\fs -I..\..\..\components\libraries\crc16 -I..\..\..\components\libraries\cli -I.\RTE\_Target_1 -IC:\Users\jzli\AppData\Local\Arm\Packs\ARM\CMSIS\5.6.0\CMSIS\Core\Include -IC:\Users\jzli\AppData\Local\Arm\Packs\ARM\CMSIS\5.6.0\Device\ARM\ARMCM0\Include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -D__UVISION_VERSION=529 -D_RTE_ -DARMCM0 -DCFG_CP -DOSAL_CBTIMER_NUM_TASKS=1 -DHOST_CONFIG=4 -DHCI_TL_NONE=1 -DENABLE_LOG_ROM_=0 -DDEBUG_INFO=1 -DPHY_MODE_DEF=1 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -DCFG_SLEEP_MODE=PWR_MODE_SLEEP --omf_browse=.\objects\crc16.crf ..\..\..\components\libraries\crc16\crc16.c
    
    startup_armcm0.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armasm [4d35ec]
    ArmAsm --debug --xref --diag_suppress=9931 --cpu=Cortex-M0 --apcs=interwork --depend=.\objects\startup_armcm0.d  -I.\RTE\_Target_1 -IC:\Users\jzli\AppData\Local\Arm\Packs\ARM\CMSIS\5.6.0\CMSIS\Core\Include -IC:\Users\jzli\AppData\Loca
    
    
    system_armcm0.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armlink [4d35ed]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=9931,9931,6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\system_armcm0.o --vfemode=force

    Input Comments:
    
    pb830-3
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armasm [4d35ec]
    armasm --debug --diag_suppress=9931,9931,1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide 
    system_armcm0.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: ArmCC [4d3637]
    ArmCC --c99 --split_sections --debug -c -o.\objects\system_armcm0.o --depend=.\objects\system_armcm0.d --cpu=Cortex-M0 --apcs=interwork -O3 --diag_suppress=9931 -I..\..\..\components\inc -I..\..\..\components\ble\controller -I..\..\..\components\osal\include -I..\..\..\components\common -I.\source -I..\..\..\components\libraries\crc16 -I..\..\..\components\driver\clock -I..\..\..\components\arch\cm0 -I..\..\..\components\driver\pwrmgr -I..\..\..\components\driver\uart -I..\..\..\components\driver\gpio -I..\..\..\components\driver\timer -I..\..\..\misc -I..\..\..\components\driver\log -I..\..\..\components\ble\include -I..\..\..\components\aoxEst -I..\..\..\components\driver\flash -I..\..\..\components\libraries\fs -I..\..\..\components\libraries\crc16 -I..\..\..\components\libraries\cli -I.\RTE\_Target_1 -IC:\Users\jzli\AppData\Local\Arm\Packs\ARM\CMSIS\5.6.0\CMSIS\Core\Include -IC:\Users\jzli\AppData\Local\Arm\Packs\ARM\CMSIS\5.6.0\Device\ARM\ARMCM0\Include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -D__UVISION_VERSION=529 -D_RTE_ -DARMCM0 -DCFG_CP -DOSAL_CBTIMER_NUM_TASKS=1 -DHOST_CONFIG=4 -DHCI_TL_NONE=1 -DENABLE_LOG_ROM_=0 -DDEBUG_INFO=1 -DPHY_MODE_DEF=1 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -DCFG_SLEEP_MODE=PWR_MODE_SLEEP --omf_browse=.\objects\system_armcm0.crf RTE\Device\ARMCM0\system_ARMCM0.c
    
    
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
    File Offset : 284116 (0x455d4)
    Size        : 172 bytes (0xac)
    Link        : SHN_UNDEF
    Info        : 0
    Alignment   : 1
    Entry Size  : 0


====================================

address     size       variable name                            type
0x1fff6b7c  0x4        SystemCoreClock                          uint32_t

address     size       variable name                            type
0x1fff0400  0x400      global_config                            array[256] of uint32

address     size       variable name                            type
0x1fff0000  0x400      jump_table_base                          array[256] of const pointer to const uint32_t

address     size       variable name                            type
0x1fff6b78  0x4        trap_c_callback                          pointer to function 

address     size       variable name                            type
0x1fff6b6c  0x4        flash_ID                                 uint32_t

address     size       variable name                            type
0x1fff6b70  0x7        g_chipMAddr                              chipMAddr_t
0x1fff6b70  0x1        g_chipMAddr.chipMAddrStatus              CHIP_ID_STATUS_e
0x1fff6b71  0x6        g_chipMAddr.mAddr                        array[6] of uint8_t

address     size       variable name                            type
0x1fff6b68  0x4        s_xflashCtx                              xflash_Ctx_t
0x1fff6b68  0x4        s_xflashCtx.rd_instr                     uint32_t

address     size       variable name                            type
0x1fff6b64  0x1        spif_dma_use                             _Bool

address     size       variable name                            type
0x1fff6b5c  0x4        digits                                   pointer to const char

address     size       variable name                            type
0x1fff6b60  0x4        upper_digits                             pointer to const char

address     size       variable name                            type
0x1fff73a8  0x78       mCtx                                     array[10] of pwrmgr_Ctx_t

address     size       variable name                            type
0x1fff6b44  0x1        mPwrMode                                 uint8_t

address     size       variable name                            type
0x1fff6b58  0x1        pwroff_register_number                   uint8

address     size       variable name                            type
0x1fff6b48  0x4        s_config_swClk0                          uint32_t

address     size       variable name                            type
0x1fff6b4c  0x4        s_config_swClk1                          uint32_t

address     size       variable name                            type
0x1fff6b50  0x4        s_gpio_wakeup_src_group1                 uint32_t

address     size       variable name                            type
0x1fff6b54  0x4        s_gpio_wakeup_src_group2                 uint32_t

address     size       variable name                            type
0x1fff6b45  0x1        s_pwrmgr_cfg                             PWRMGR_CFG_BIT
0x1fff6b45  0x1(5:3)   s_pwrmgr_cfg.sramRet_config              uint8_t
0x1fff6b45  0x1(0:5)   s_pwrmgr_cfg.moudle_num                  uint8_t

address     size       variable name                            type
0x1fff7420  0xc        s_pwroff_cfg                             array[3] of pwroff_cfg_t

address     size       variable name                            type
0x00000000  0x8        TimerIndex                               array[2] of const pointer to AP_TIM_TypeDef

address     size       variable name                            type
0x1fff6b40  0x4        s_ap_callback                            ap_tm_hdl_t

address     size       variable name                            type
0x1fff6a00  0x17       c_gpio_index                             array[23] of const uint8_t

address     size       variable name                            type
0x1fff6a17  0x45       c_gpio_pull                              array[23] of const PULL_TypeDef

address     size       variable name                            type
0x1fff7278  0x130      m_gpioCtx                                gpio_Ctx_t
0x1fff7278  0x1        m_gpioCtx.state                          _Bool
0x1fff7279  0x17       m_gpioCtx.pin_assignments                array[23] of uint8_t
0x1fff7290  0x4        m_gpioCtx.pin_retention_status           uint32_t
0x1fff7294  0x114      m_gpioCtx.irq_ctx                        array[23] of gpioin_Ctx_t

address     size       variable name                            type
0x1fff6a5c  0x2e       retention_reg                            array[23] of array[2] of const signed char

address     size       variable name                            type
0x1fff6b3e  0x1        m_uart0_even_parity                      _Bool

address     size       variable name                            type
0x1fff6b3f  0x1        m_uart1_even_parity                      _Bool

address     size       variable name                            type
0x1fff7238  0x40       m_uartCtx                                array[2] of uart_Ctx_t

address     size       variable name                            type
0x1fff6b34  0x4        PHY_ISR_entry_time                       uint32

address     size       variable name                            type
0x1fff6b2e  0x1        PPP_TaskID                               uint8

address     size       variable name                            type
0x1fff71f4  0x20       adv_buffer                               array[32] of uint8_t

address     size       variable name                            type
0x1fff6ff4  0x100      phyBufRx                                 array[256] of uint8_t

address     size       variable name                            type
0x1fff70f4  0x100      phyBufTx                                 array[256] of uint8_t

address     size       variable name                            type
0x1fff6b2c  0x1        phyCarrSens                              uint8

address     size       variable name                            type
0x1fff6b30  0x2        phyFoff                                  uint16

address     size       variable name                            type
0x1fff6b2d  0x1        phyRssi                                  uint8

address     size       variable name                            type
0x1fff7220  0x18       s_phy                                    phyCtx_t
0x1fff7220  0x1      * s_phy.Status                             uint8_t
0x1fff7224  0x4        s_phy.txIntv                             uint32_t
0x1fff7228  0x4        s_phy.rxIntv                             uint32_t
0x1fff722c  0x1      * s_phy.rfChn                              uint8_t
0x1fff722e  0x2        s_phy.rxOnlyTO                           uint16_t
0x1fff7230  0x2      * s_phy.rxAckTO                            uint16_t
0x1fff7234  0x4        s_phy.rxScanT0                           uint32_t

address     size       variable name                            type
0x1fff7214  0xc        s_pktCfg                                 pktCfg_t
0x1fff7214  0x1        s_pktCfg.pktFmt                          uint8_t
0x1fff7215  0x1        s_pktCfg.pduLen                          uint8_t
0x1fff7216  0x1        s_pktCfg.wtSeed                          uint8_t
0x1fff7217  0x1        s_pktCfg.crcFmt                          uint8_t
0x1fff7218  0x4        s_pktCfg.crcSeed                         uint32_t
0x1fff721c  0x4        s_pktCfg.syncWord                        uint32_t

address     size       variable name                            type
0x1fff6b38  0x6        s_pubAddr                                array[6] of uint8_t

address     size       variable name                            type
0x1fff6b1c  0x4        tasksArr                                 array[1] of const pTaskEventHandlerFn

address     size       variable name                            type
0x1fff6b20  0x1        tasksCnt                                 const uint8

address     size       variable name                            type
0x1fff6b28  0x4        tasksEvents                              pointer to uint16

address     size       variable name                            type
0x1fff6b24  0x1        g_clk32K_config                          volatile uint8

address     size       variable name                            type
0x1fff6bf4  0x400      g_largeHeap                              array[1024] of uint8

address     size       variable name                            type
0x00000000  0x1        g_spif_clk_config                        volatile sysclk_t

