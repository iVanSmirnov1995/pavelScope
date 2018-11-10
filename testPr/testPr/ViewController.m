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

- (void) emptyNumer {
    self.Time = 0;
    self.AllTime = 0;
    self.Result = 0;
}

- (void) syperEmptyNumer {
    self.Time = 0;
    self.AllTime = 0;
    self.FirstResult = 0;
    self.SecondResult = 0;
    self.Result = 0;
}


- (void) printResult {
    NSLog(@"Result = %ld",self.Result);
    NSLog(@"FirstResult = %ld",self.FirstResult);
    NSLog(@"SecondResult = %ld",self.SecondResult);
    NSLog(@"TotalResult = %ld",self.TotalResult);
}

- (void) printNumerInLabel {
    if(self.TotalResult >= 100) {
        
        NSInteger firstPart = self.TotalResult/100;
        NSInteger secondPart = self.TotalResult%(firstPart*100);
        if(self.TotalResult%(firstPart*100)!=0){
            self.indicatorLabel.text = [NSString stringWithFormat:@"%ld:%ld",firstPart,secondPart];
        } else {
            self.indicatorLabel.text = [NSString stringWithFormat:@"%ld:0%ld",firstPart,secondPart];
            
        }
    }
}

#pragma mark -action

- (void) printNumberInLabelResult {
    if(self.Result >= 100) {
        
        NSInteger firstPart = self.Result/100;
        NSInteger secondPart = self.Result%(firstPart*100);
        if(self.Result%(firstPart*100)!=0){
            self.indicatorLabel.text = [NSString stringWithFormat:@"%ld:%ld",firstPart,secondPart];
        } else {
            self.indicatorLabel.text = [NSString stringWithFormat:@"%ld:0%ld",firstPart,secondPart];
            
        }
    }
}

- (IBAction)actionNumber:(UIButton *)sender {
    
    self.Result = sender.tag + self.Time;
    self.indicatorLabel.text = [NSString stringWithFormat:@"%ld", self.Result];
    self.AllTime = (sender.tag + self.Time)*10;
    self.Time =  self.AllTime;
    [self printNumberInLabelResult];
   
    if(self.Result > 9999) {
        self.indicatorLabel.text = @"0";
        [self emptyNumer];
    }
    [self printResult];
}

- (IBAction)actionAllCancel:(UIButton *)sender {
    
    self.indicatorLabel.text = @"AC";
    [self syperEmptyNumer];
    [self printResult];
    
}

- (IBAction)actionPlus:(UIButton *)sender {
    self.indicatorLabel.text = @"+";
    self.FirstResult = self.Result;
    [self printResult];
    [self emptyNumer];
    [self printResult];
    
 
    
}

- (IBAction)actionMinus:(UIButton *)sender {
    self.indicatorLabel.text = @"-";
    self.SecondResult = self.Result;
     [self printResult];
    [self emptyNumer];
     [self printResult];
}

- (IBAction)actionResult:(UIButton *)sender {
 
    if(self.FirstResult!=0) {
        self.TotalResult = self.FirstResult + self.Result;
        self.indicatorLabel.text = [NSString stringWithFormat:@"%ld", self.TotalResult];
        [self printNumerInLabel];
    }
    
    if(self.SecondResult!=0) {
        self.TotalResult = self.SecondResult - self.Result;
        self.indicatorLabel.text = [NSString stringWithFormat:@"%ld", self.TotalResult];
        [self printNumerInLabel];
    }
    
    [self printResult];
    
}



@end

