//
//  KKViewController.m
//  MediaTimingFunctionEx
//
//  Created by Maeda Tasuku on 12/26/12.
//  Copyright (c) 2012 KinkumaDesign. All rights reserved.
//

#import "KKViewController.h"
#import <QuartzCore/QuartzCore.h>
#import "KKCustomMediaTimingFunction.h"


@interface KKSampleLayer : CALayer

@end

@implementation KKSampleLayer

- (void)drawInContext:(CGContextRef)ctx
{
    CGContextSetRGBFillColor(ctx, 68.0/255.0, 176.0/255.0, 140.0/255.0, 1);
    CGContextFillRect(ctx, self.bounds);
}

@end


@interface KKViewController ()
{
    KKSampleLayer *_sampleLayer;
}
@end

@implementation KKViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _curveTypeTables.frame = CGRectMake(0, 0, 320, 400);
    
    _sampleLayer = [[KKSampleLayer alloc] init];
    _sampleLayer.frame = CGRectMake(0, 350, 50, 50);
    [self.view.layer addSublayer:_sampleLayer];
    [_sampleLayer setNeedsDisplay];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    _sampleLayer.frame = CGRectMake(0, 350, 50, 50);
    [CATransaction begin];
    CABasicAnimation *basicAnimation = [CABasicAnimation animation];
    basicAnimation.duration = 1.0;
    
    //You usually use enum const like this.
//    basicAnimation.timingFunction = [[KKCustomMediaTimingFunction alloc] initWithEasingCurve:KKCMTFEasingCurveEaseInOutExpo];
    
    //This line uses bitwise operation for explaination.
    basicAnimation.timingFunction = [[KKCustomMediaTimingFunction alloc] initWithEasingCurve:(1 << indexPath.row)];
    
    basicAnimation.keyPath = @"position";
    basicAnimation.removedOnCompletion = NO;
    basicAnimation.fillMode = kCAFillModeForwards;
    basicAnimation.fromValue = [NSValue valueWithCGPoint:_sampleLayer.position];
    basicAnimation.byValue = [NSValue valueWithCGPoint:CGPointMake(320 - 50, 0)];
    [_sampleLayer addAnimation:basicAnimation forKey:nil];
    [CATransaction commit];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self easingCurveArray].count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *kKKViewCellIdentifier = @"kKKViewCellIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kKKViewCellIdentifier];
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:kKKViewCellIdentifier];
    }
    cell.textLabel.text = [self curveNameWithIndex:indexPath.row];
    return cell;
}

- (NSString *)curveNameWithIndex:(NSInteger)index
{
    return [self easingCurveArray][index];
}

- (NSArray *)easingCurveArray
{
    return @[
        @"Lenear",
        
        @"EaseInSine",
        @"EaseOutSine",
        @"EaseInOutSine",
        @"EaseOutInSine",
        
        @"EaseInQuad",
        @"EaseOutQuad",
        @"EaseInOutQuad",
        @"EaseOutInQuad",
        
        @"EaseInCubic",
        @"EaseOutCubic",
        @"EaseInOutCubic",
        @"EaseOutInCubic",
        
        @"EaseInQuart",
        @"EaseOutQuart",
        @"EaseInOutQuart",
        @"EaseOutInQuart",
        
        @"EaseInQuint",
        @"EaseOutQuint",
        @"EaseInOutQuint",
        
        @"EaseOutInQuint",
        
        @"EaseInExpo",
        @"EaseOutExpo",
        @"EaseInOutExpo",
        @"EaseOutInExpo",
        
        @"EaseInCirc",
        @"EaseOutCirc",
        @"EaseInOutCirc",
        @"EaseOutInCirc",
    ];
}

@end
