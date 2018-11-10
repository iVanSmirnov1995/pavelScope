//
//  ViewController.h
//  testPr
//
//  Created by Pavel Scope & Smirnov Ivan on 05/11/2018.
//  Copyright © 2018 Pavel Scope & Smirnov Ivan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)actionNumber:(UIButton *)sender;



@property (weak, nonatomic) IBOutlet UILabel *indicatorLabel;
@property (assign,nonatomic) NSInteger Time;
@property (assign,nonatomic) NSInteger AllTime;


@end

