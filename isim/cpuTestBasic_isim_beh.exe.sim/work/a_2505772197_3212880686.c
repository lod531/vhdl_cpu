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
static const char *ng0 = "//tholos.itserv.scss.tcd.ie/ugrad/buinovsa/Architecture/assignment1.1/mux2to8.vhd";



static void work_a_2505772197_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    int64 t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    unsigned char t14;
    unsigned char t15;
    int64 t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    int64 t23;
    char *t24;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;

LAB0:    xsi_set_current_line(42, ng0);
    t1 = (t0 + 592U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB3;

LAB4:    t12 = (t0 + 592U);
    t13 = *((char **)t12);
    t14 = *((unsigned char *)t13);
    t15 = (t14 == (unsigned char)3);
    if (t15 != 0)
        goto LAB5;

LAB6:
LAB7:    t23 = (5 * 1000LL);
    t24 = (t0 + 3217);
    t26 = (t0 + 1768);
    t27 = (t26 + 32U);
    t28 = *((char **)t27);
    t29 = (t28 + 40U);
    t30 = *((char **)t29);
    memcpy(t30, t24, 8U);
    xsi_driver_first_trans_delta(t26, 0U, 8U, t23);
    t31 = (t0 + 1768);
    xsi_driver_intertial_reject(t31, t23, t23);

LAB2:    t32 = (t0 + 1724);
    *((int *)t32) = 1;

LAB1:    return;
LAB3:    t5 = (5 * 1000LL);
    t1 = (t0 + 684U);
    t6 = *((char **)t1);
    t1 = (t0 + 1768);
    t7 = (t1 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t6, 8U);
    xsi_driver_first_trans_delta(t1, 0U, 8U, t5);
    t11 = (t0 + 1768);
    xsi_driver_intertial_reject(t11, t5, t5);
    goto LAB2;

LAB5:    t16 = (5 * 1000LL);
    t12 = (t0 + 776U);
    t17 = *((char **)t12);
    t12 = (t0 + 1768);
    t18 = (t12 + 32U);
    t19 = *((char **)t18);
    t20 = (t19 + 40U);
    t21 = *((char **)t20);
    memcpy(t21, t17, 8U);
    xsi_driver_first_trans_delta(t12, 0U, 8U, t16);
    t22 = (t0 + 1768);
    xsi_driver_intertial_reject(t22, t16, t16);
    goto LAB2;

LAB8:    goto LAB2;

}


extern void work_a_2505772197_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2505772197_3212880686_p_0};
	xsi_register_didat("work_a_2505772197_3212880686", "isim/cpuTestBasic_isim_beh.exe.sim/work/a_2505772197_3212880686.didat");
	xsi_register_executes(pe);
}
