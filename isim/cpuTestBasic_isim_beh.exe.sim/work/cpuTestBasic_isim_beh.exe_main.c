/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *STD_STANDARD;
char *IEEE_P_3499444699;
char *IEEE_P_3620187407;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    work_a_3881629208_3212880686_init();
    work_a_1130988942_3212880686_init();
    work_a_3404166099_3212880686_init();
    work_a_1007874614_3212880686_init();
    work_a_2443892368_3212880686_init();
    work_a_3392787015_3212880686_init();
    work_a_2092195719_3212880686_init();
    work_a_0521127092_3212880686_init();
    work_a_2505772197_3212880686_init();
    work_a_3088984984_3212880686_init();
    work_a_2343956414_3212880686_init();
    work_a_1960209932_3212880686_init();
    work_a_0348297499_3212880686_init();
    work_a_1471415405_3212880686_init();
    work_a_4265966103_3212880686_init();
    work_a_2750190074_3212880686_init();
    work_a_2542833361_3212880686_init();
    work_a_2292376584_3212880686_init();
    work_a_2166523021_3212880686_init();
    work_a_3603242782_3212880686_init();
    work_a_2172031047_3212880686_init();
    work_a_1776647746_3212880686_init();
    work_a_2003172407_3212880686_init();
    work_a_1382328370_3212880686_init();
    work_a_3882926292_3212880686_init();
    work_a_3697817397_3212880686_init();
    work_a_1079271226_3212880686_init();
    work_a_2399776393_3212880686_init();
    work_a_1415465652_3212880686_init();
    work_a_2594755711_2372691052_init();


    xsi_register_tops("work_a_2594755711_2372691052");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");

    return xsi_run_simulation(argc, argv);

}
