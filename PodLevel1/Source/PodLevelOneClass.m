//
//  PodLevelOneClass.m
//  PodLevel1
//
//  Created by mademao on 2021/9/10.
//

#import "PodLevelOneClass.h"

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
    
}

@end
