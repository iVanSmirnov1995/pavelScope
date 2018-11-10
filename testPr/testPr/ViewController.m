//
//  ViewController.m
//  touch
//
//  Created by Pavel Scope on 21/10/2018.
//  Copyright © 2018 Pavel Scope. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
struct PStime {
    NSInteger minutes;
    NSInteger hours;
};

enum tag {
    Plus ,
    Minus
};

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
    
    self.indicatorLabel.text = @"0:00";
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
        
        
        
       // self.TotalResult = self.FirstResult + self.Result;
        self.TotalResult = [self firstTime:self.FirstResult andSecondTime:self.Result andPlusOrMinus:Plus];
        self.indicatorLabel.text = [NSString stringWithFormat:@"%ld", self.TotalResult];
        [self printNumerInLabel];
    }
    
    if(self.SecondResult!=0) {
       // self.TotalResult = self.SecondResult - self.Result;
        self.TotalResult = [self firstTime:self.SecondResult andSecondTime:self.Result andPlusOrMinus:Minus];
        self.indicatorLabel.text = [NSString stringWithFormat:@"%ld", self.TotalResult];
        [self printNumerInLabel];
    }
    
    [self printResult];
    
}

- (NSInteger) firstTime:(NSInteger) time1 andSecondTime:(NSInteger) time2 andPlusOrMinus:(enum tag)tag {
    NSInteger cancelTime;
    if(tag == Plus) {
    struct PStime one;
    struct PStime two;
    struct PStime three;
        
        one.hours = time1/100;
        one.minutes = time1%(one.hours*100);
        
        two.hours = time2/100;
        two.minutes = time2%(two.hours*100);
        
        three.hours = one.hours + two.hours + (one.minutes + two.minutes)/60;
        three.minutes = (one.minutes + two.minutes)%60;

        cancelTime = three.hours*100 + three.minutes;
        
    }
    if(tag == Minus) {
        struct PStime one;
        struct PStime two;
        struct PStime three;
        
        one.hours = time1/100;
        one.minutes = time1%(one.hours*100);
        
        two.hours = time2/100;
        two.minutes = time2%(two.hours*100);
        
        three.hours = one.hours - two.hours + (one.minutes - two.minutes)/60;
        three.minutes = (one.minutes - two.minutes)%60;
        
        cancelTime = three.hours*100 + three.minutes;
        
    }
    return cancelTime;
}


@end

