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

/* This file is designed for use with ISim build 0x6dd86d03 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "//tholos.itserv.scss.tcd.ie/ugrad/buinovsa/Architecture/assignment1.1/datapath.vhd";



static void work_a_2399776393_3212880686_p_0(char *t0)
{
    int64 t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;

LAB0:    xsi_set_current_line(118, ng0);

LAB3:    t1 = (1 * 1000LL);
    t2 = (t0 + 2064U);
    t3 = *((char **)t2);
    t2 = (t0 + 3484);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    memcpy(t7, t3, 16U);
    xsi_driver_first_trans_delta(t2, 0U, 16U, t1);
    t8 = (t0 + 3484);
    xsi_driver_intertial_reject(t8, t1, t1);

LAB2:    t9 = (t0 + 3432);
    *((int *)t9) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2399776393_3212880686_p_1(char *t0)
{
    int64 t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;

LAB0:    xsi_set_current_line(119, ng0);

LAB3:    t1 = (1 * 1000LL);
    t2 = (t0 + 2248U);
    t3 = *((char **)t2);
    t2 = (t0 + 3520);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    memcpy(t7, t3, 16U);
    xsi_driver_first_trans_delta(t2, 0U, 16U, t1);
    t8 = (t0 + 3520);
    xsi_driver_intertial_reject(t8, t1, t1);

LAB2:    t9 = (t0 + 3440);
    *((int *)t9) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_2399776393_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2399776393_3212880686_p_0,(void *)work_a_2399776393_3212880686_p_1};
	xsi_register_didat("work_a_2399776393_3212880686", "isim/cpuTestBasic_isim_beh.exe.sim/work/a_2399776393_3212880686.didat");
	xsi_register_executes(pe);
}
