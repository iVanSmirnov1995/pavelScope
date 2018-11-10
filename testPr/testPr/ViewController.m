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


#pragma mark -action

- (IBAction)actionZero:(UIButton *)sender {
    self.indicatorLabel.text = [NSString stringWithFormat:@"%ld", sender.tag];
    
}

- (IBAction)actionOne:(UIButton *)sender {
  self.indicatorLabel.text = [NSString stringWithFormat:@"%ld", sender.tag];
}

- (IBAction)actionTwo:(UIButton *)sender {
  self.indicatorLabel.text = [NSString stringWithFormat:@"%ld", sender.tag];
}

- (IBAction)actionThree:(UIButton *)sender {
    self.indicatorLabel.text = [NSString stringWithFormat:@"%ld", sender.tag];
}

- (IBAction)actionFour:(UIButton *)sender {
    self.indicatorLabel.text = [NSString stringWithFormat:@"%ld", sender.tag];
}

- (IBAction)actionFife:(UIButton *)sender {
   self.indicatorLabel.text = [NSString stringWithFormat:@"%ld", sender.tag];
}
- (IBAction)actionSix:(UIButton *)sender {
    self.indicatorLabel.text = [NSString stringWithFormat:@"%ld", sender.tag];
}

- (IBAction)actionSeven:(UIButton *)sender {
    self.indicatorLabel.text = [NSString stringWithFormat:@"%ld", sender.tag];
}

- (IBAction)actionEight:(UIButton *)sender {
    self.indicatorLabel.text = [NSString stringWithFormat:@"%ld", sender.tag];
}

- (IBAction)actionNine:(UIButton *)sender {
    self.indicatorLabel.text = [NSString stringWithFormat:@"%ld", sender.tag];
}
@end
