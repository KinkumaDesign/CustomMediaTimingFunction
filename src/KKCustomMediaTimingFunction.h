//
//  CAMediaTimingFunction+CustomEasing.h
//  MediaTimingFunctionEx
//
//  Created by Maeda Tasuku on 12/26/12.
//  Copyright (c) 2012 KinkumaDesign. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>

typedef enum : NSUInteger{
    KKCMTFEasingCurveLenear =            1 << 0,
    
    KKCMTFEasingCurveEaseInSine =        1 << 1,
    KKCMTFEasingCurveEaseOutSine =       1 << 2,
    KKCMTFEasingCurveEaseInOutSine =     1 << 3,
    KKCMTFEasingCurveEaseOutInSine =     1 << 4,
        
    KKCMTFEasingCurveEaseInQuad =        1 << 5,
    KKCMTFEasingCurveEaseOutQuad =       1 << 6,
    KKCMTFEasingCurveEaseInOutQuad =     1 << 7,
    KKCMTFEasingCurveEaseOutInQuad =     1 << 8,
        
    KKCMTFEasingCurveEaseInCubic =       1 << 9,
    KKCMTFEasingCurveEaseOutCubic =      1 << 10,
    KKCMTFEasingCurveEaseInOutCubic =    1 << 11,
    KKCMTFEasingCurveEaseOutInCubic =    1 << 12,
        
    KKCMTFEasingCurveEaseInQuart =       1 << 13,
    KKCMTFEasingCurveEaseOutQuart =      1 << 14,
    KKCMTFEasingCurveEaseInOutQuart =    1 << 15,
    KKCMTFEasingCurveEaseOutInQuart=     1 << 16,
        
    KKCMTFEasingCurveEaseInQuint =       1 << 17,
    KKCMTFEasingCurveEaseOutQuint =      1 << 18,
    KKCMTFEasingCurveEaseInOutQuint =    1 << 19,
    KKCMTFEasingCurveEaseOutInQuint =    1 << 20,
        
    KKCMTFEasingCurveEaseInExpo =        1 << 21,
    KKCMTFEasingCurveEaseOutExpo =       1 << 22,
    KKCMTFEasingCurveEaseInOutExpo =     1 << 23,
    KKCMTFEasingCurveEaseOutInExpo =     1 << 24,
        
    KKCMTFEasingCurveEaseInCirc =        1 << 25,
    KKCMTFEasingCurveEaseOutCirc =       1 << 26,
    KKCMTFEasingCurveEaseInOutCirc =     1 << 27,
    KKCMTFEasingCurveEaseOutInCirc =     1 << 28
    
}KKCMTFEasingCurve;

@interface KKCustomMediaTimingFunction : CAMediaTimingFunction
- (id)initWithEasingCurve:(NSUInteger)easingCurve;
@end
