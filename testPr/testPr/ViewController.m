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



- (IBAction)actionNumber:(UIButton *)sender {
    
    self.indicatorLabel.text = [NSString stringWithFormat:@"%ld", sender.tag + self.Time];
    self.AllTime = (sender.tag + self.Time)*10;
    self.Time =  self.AllTime;
    
}
@end
