//Copyright (C)2014-2023 Gowin Semiconductor Corporation.
//All rights reserved.
//File Title: Template file for instantiation
//GOWIN Version: V1.9.8.11 Education
//Part Number: GW1NZ-LV1QN48C6/I5
//Device: GW1NZ-1
//Created Time: Sun Jul 30 12:45:09 2023

//Change the instance name and port connections to the signal names
//--------Copy here to design--------

    Gowin_rPLL your_instance_name(
        .clkout(clkout_o), //output clkout
        .lock(lock_o), //output lock
        .clkin(clkin_i), //input clkin
        .fbdsel(fbdsel_i), //input [5:0] fbdsel
        .idsel(idsel_i), //input [5:0] idsel
        .odsel(odsel_i) //input [5:0] odsel
    );

//--------Copy end-------------------
