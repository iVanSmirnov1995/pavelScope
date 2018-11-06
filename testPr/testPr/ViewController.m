//
//  ViewController.m
//  touch
//
//  Created by Pavel Scope on 21/10/2018.
//  Copyright © 2018 Pavel Scope. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
   
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




