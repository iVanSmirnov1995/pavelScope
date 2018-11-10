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



-(UIColor*) randomColor {
    CGFloat r = (float)(arc4random()%256)/255;
    CGFloat g = (float)(arc4random()%256)/255;
    CGFloat b = (float)(arc4random()%256)/255;
    
    return [UIColor colorWithRed:r green:g blue:b alpha:1];
}








- (IBAction)actionZero:(UIButton *)sender {
}

- (IBAction)actionOne:(UIButton *)sender {
}

- (IBAction)actionTwo:(UIButton *)sender {
}

- (IBAction)actionThree:(UIButton *)sender {
}

- (IBAction)actionFour:(UIButton *)sender {
}

- (IBAction)actionFife:(UIButton *)sender {
}

- (IBAction)actionSix:(UIButton *)sender {
}

- (IBAction)actionSeven:(UIButton *)sender {
}

- (IBAction)actionEight:(UIButton *)sender {
}

- (IBAction)actionNine:(UIButton *)sender {
}
@end
