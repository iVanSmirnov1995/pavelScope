//
//  ViewController.m
//  touch
//
//  Created by Pavel Scope on 21/10/2018.
//  Copyright © 2018 Pavel Scope. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(weak,nonatomic) UIView * testView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(10, 10, 200, 200)];
    view.backgroundColor = [UIColor blackColor];
    [self.view addSubview:view];
    self.testView = view;
    
    
    UIPanGestureRecognizer * pan = [[UIPanGestureRecognizer alloc]initWithTarget:self                                                               action:@selector(handlePan:)];
    
    [self.view addGestureRecognizer:pan];
   
  
}

-(UIView*) create:(UIView*) view pozition:(CGRect) rect colorVar:(UIColor*) color {
    UIView* nameView = [[UIView alloc]initWithFrame:rect];
    nameView.backgroundColor = color;
    return nameView;
}

-(UIColor*) randomColor {
    CGFloat r = (float)(arc4random()%256)/255;
    CGFloat g = (float)(arc4random()%256)/255;
    CGFloat b = (float)(arc4random()%256)/255;
    
    return [UIColor colorWithRed:r green:g blue:b alpha:1];
}




- (void) handlePan:(UIPanGestureRecognizer*) pan {
    self.testView.center = [pan locationInView:self.view]
}

@end
