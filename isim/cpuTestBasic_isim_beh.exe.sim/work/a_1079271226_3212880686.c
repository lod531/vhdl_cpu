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
static const char *ng0 = "//tholos.itserv.scss.tcd.ie/ugrad/buinovsa/Architecture/assignment1.1/functionUnit.vhd";



static void work_a_1079271226_3212880686_p_0(char *t0)
{
    int64 t1;
    char *t2;
    char *t3;
    int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;

LAB0:    xsi_set_current_line(100, ng0);

LAB3:    t1 = (1 * 1000LL);
    t2 = (t0 + 1328U);
    t3 = *((char **)t2);
    t4 = (15 - 15);
    t5 = (t4 * -1);
    t6 = (1U * t5);
    t7 = (0 + t6);
    t2 = (t3 + t7);
    t8 = *((unsigned char *)t2);
    t9 = (t0 + 2320);
    t10 = (t9 + 32U);
    t11 = *((char **)t10);
    t12 = (t11 + 40U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = t8;
    xsi_driver_first_trans_delta(t9, 0U, 1, t1);
    t14 = (t0 + 2320);
    xsi_driver_intertial_reject(t14, t1, t1);

LAB2:    t15 = (t0 + 2276);
    *((int *)t15) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_1079271226_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1079271226_3212880686_p_0};
	xsi_register_didat("work_a_1079271226_3212880686", "isim/cpuTestBasic_isim_beh.exe.sim/work/a_1079271226_3212880686.didat");
	xsi_register_executes(pe);
}
