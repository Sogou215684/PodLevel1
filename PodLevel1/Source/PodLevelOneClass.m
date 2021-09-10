//
//  PodLevelOneClass.m
//  PodLevel1
//
//  Created by mademao on 2021/9/10.
//

#import "PodLevelOneClass.h"

#ifndef SG_POD_CONFIG
#define SIIMG_EXPRESSION_PRESSED 1
#endif

@implementation PodLevelOneClass

+ (void)doPrint {
#ifdef SG_POD_CONFIG
    printf("mdm---%s def SG_POD_CONFIG\n", __func__);
#else
    printf("mdm---%s not def SG_POD_CONFIG\n", __func__);
#endif
    
#if SG_POD_CONFIG
    printf("mdm---%s SG_POD_CONFIG is true\n", __func__);
#else
    printf("mdm---%s SG_POD_CONFIG is not true\n", __func__);
#endif
    
    printf("mdm---%s %ld\n", __func__, SIIMG_EXPRESSION_PRESSED);
    
}

@end
