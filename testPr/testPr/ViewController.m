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
    
    self.FirstResult = sender.tag + self.Time;
    self.indicatorLabel.text = [NSString stringWithFormat:@"%ld", self.FirstResult];
    self.AllTime = (sender.tag + self.Time)*10;
    self.Time =  self.AllTime;
    if(self.FirstResult >= 100) {
        
        NSInteger firstPart = self.FirstResult/100;
        NSInteger secondPart = self.FirstResult%(firstPart*100);
        if(self.FirstResult%(firstPart*100)!=0){
        self.indicatorLabel.text = [NSString stringWithFormat:@"%ld:%ld",firstPart,secondPart];
        } else {
            self.indicatorLabel.text = [NSString stringWithFormat:@"%ld:0%ld",firstPart,secondPart];

        }
    }
}

- (IBAction)actionAllCancel:(UIButton *)sender {
    
    self.indicatorLabel.text = @"0";
    self.Time = 0;
    self.AllTime = 0;
    
}
@end
