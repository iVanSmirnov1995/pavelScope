//
//  ViewController.h
//  testPr
//
//  Created by Pavel Scope & Smirnov Ivan on 05/11/2018.
//  Copyright © 2018 Pavel Scope & Smirnov Ivan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (IBAction)actionZero:(UIButton *)sender;
- (IBAction)actionOne:(UIButton *)sender;
- (IBAction)actionTwo:(UIButton *)sender;
- (IBAction)actionThree:(UIButton *)sender;
- (IBAction)actionFour:(UIButton *)sender;
- (IBAction)actionFife:(UIButton *)sender;
- (IBAction)actionSix:(UIButton *)sender;
- (IBAction)actionSeven:(UIButton *)sender;
- (IBAction)actionEight:(UIButton *)sender;
- (IBAction)actionNine:(UIButton *)sender;

@property (weak, nonatomic) IBOutlet UILabel *indicatorLabel;
@property (assign,nonatomic) long double time;


@end

