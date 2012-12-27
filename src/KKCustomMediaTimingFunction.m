//
//  CAMediaTimingFunction+CustomEasing.m
//  MediaTimingFunctionEx
//
//  Created by Maeda Tasuku on 12/26/12.
//  Copyright (c) 2012 KinkumaDesign. All rights reserved.
//

#import "KKCustomMediaTimingFunction.h"

@implementation KKCustomMediaTimingFunction

- (id)initWithEasingCurve:(NSUInteger)easingCurve
{
	NSArray *curveArray = nil;
    switch (easingCurve) {
            
        case KKCMTFEasingCurveEaseInSine:
            curveArray = @[@0.44, @0, @0.99, @0.98]; break;
            
        case KKCMTFEasingCurveEaseOutSine:
            curveArray = @[@0, @0.44, @0.98, @0.99]; break;
            
        case KKCMTFEasingCurveEaseInOutSine:
            curveArray = @[@0.36, @0, @0.64, @1]; break;
            
        case KKCMTFEasingCurveEaseOutInSine:
            curveArray = @[@0, @0.36, @1, @0.64]; break;
            
        case KKCMTFEasingCurveEaseInQuad:
            curveArray = @[@0.51, @0, @0.96, @0.9]; break;
            
        case KKCMTFEasingCurveEaseOutQuad:
            curveArray = @[@0, @0.51, @0.9, @0.96]; break;
            
        case KKCMTFEasingCurveEaseInOutQuad:
            curveArray = @[@0.43, @0, @0.57, @1]; break;
            
        case KKCMTFEasingCurveEaseOutInQuad:
            curveArray = @[@0, @0.43, @1, @0.57]; break;
            
        case KKCMTFEasingCurveEaseInCubic:
            curveArray = @[@0.55, @0, @0.7, @0.19]; break;
            
        case KKCMTFEasingCurveEaseOutCubic:
            curveArray = @[@0, @0.55, @0.19, @0.7]; break;
            
        case KKCMTFEasingCurveEaseInOutCubic:
            curveArray = @[@0.7, @0, @0.3, @1]; break;
            
        case KKCMTFEasingCurveEaseOutInCubic:
            curveArray = @[@0, @0.7, @1, @0.3]; break;
            
        case KKCMTFEasingCurveEaseInQuart:
            curveArray = @[@0.74, @0, @0.74, @0.19]; break;
            
        case KKCMTFEasingCurveEaseOutQuart:
            curveArray = @[@0, @0.74, @0.19, @0.74]; break;
            
        case KKCMTFEasingCurveEaseInOutQuart:
            curveArray = @[@0.85, @0, @0.13, @0.99]; break;
            
        case KKCMTFEasingCurveEaseOutInQuart:
            curveArray = @[@0, @0.85, @0.99, @0.13]; break;
            
        case KKCMTFEasingCurveEaseInQuint:
            curveArray = @[@0.79, @0, @0.75, @0.1]; break;
            
        case KKCMTFEasingCurveEaseOutQuint:
            curveArray = @[@0, @0.79, @0.1, @0.75]; break;
            
        case KKCMTFEasingCurveEaseInOutQuint:
            curveArray = @[@0.9, @0, @0.09, @1]; break;
            
        case KKCMTFEasingCurveEaseOutInQuint:
            curveArray = @[@0, @0.9, @1, @0.09]; break;
            
        case KKCMTFEasingCurveEaseInExpo:
            curveArray = @[@0.81, @0, @0.83, @0.11]; break;
            
        case KKCMTFEasingCurveEaseOutExpo:
            curveArray = @[@0, @0.81, @0.11, @0.83]; break;
            
        case KKCMTFEasingCurveEaseInOutExpo:
            curveArray = @[@0.97, @0, @0.02, @0.99]; break;
            
        case KKCMTFEasingCurveEaseOutInExpo:
            curveArray = @[@0, @0.97, @0.99, @0.02]; break;
            
        case KKCMTFEasingCurveEaseInCirc:
            curveArray = @[@0.67, @0, @0.99, @0.57]; break;
            
        case KKCMTFEasingCurveEaseOutCirc:
            curveArray = @[@0, @0.67, @0.57, @0.99]; break;
            
        case KKCMTFEasingCurveEaseInOutCirc:
            curveArray = @[@0.92, @0.15, @0.08, @0.82]; break;
            
        case KKCMTFEasingCurveEaseOutInCirc:
            curveArray = @[@0.15, @0.92, @0.82, @0.08]; break;
            
        case KKCMTFEasingCurveLenear:
        default:
            curveArray = @[@0.00, @0.00, @1.00, @1.00]; break;
            break;
    }
    self = [super initWithControlPoints:[curveArray[0] floatValue]
                                       :[curveArray[1] floatValue]
                                       :[curveArray[2] floatValue]
                                       :[curveArray[3] floatValue]];
    if(self){
        
    }
    return self;
}


@end
