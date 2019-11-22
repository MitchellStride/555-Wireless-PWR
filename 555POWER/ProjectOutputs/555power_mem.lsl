#include "555power.lsl"
#ifdef __SW_LSL
#include __SW_LSL
#endif

derivative system
{
    core sw
    {
        architecture = __SW_ARCH;
    }

    memory xram
    {
        mau = 8;
        type = ram;
        size = 512k;
        map(dest=bus:sw:addr_bus, src_offset=0x0, dest_offset=0x1000000, size=512k);
    }

    memory xrom
    {
        mau = 8;
        type = blockram;
        size = 64k;
        map(dest=bus:sw:addr_bus, src_offset=0x0, dest_offset=0, size=64k);
    }



    // Software Platform locate rules
    #ifdef __SWPLATFORM__
    #include "framecfg\swplatform.lsl"
    #endif



}
