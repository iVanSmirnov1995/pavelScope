//
//  ViewController.m
//  touch
//
//  Created by Pavel Scope on 21/10/2018.
//  Copyright © 2018 Pavel Scope. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(weak,nonatomic) UIView* draggonView;
@property(weak,nonatomic) UIView* chessboard;
@property(weak,nonatomic) UIView* whiteBox;
@property(assign,nonatomic) NSInteger cellCount;
@property(assign,nonatomic) NSInteger cellSize;
@property(assign,nonatomic) NSInteger fieldSize;
@property(strong,nonatomic) NSMutableArray<UIView*>*  arrayCells;
@property(strong,nonatomic) NSMutableArray<UIView*>*  freeCells;
@property(strong,nonatomic) NSMutableArray<UIView*>*  checs;
@property(assign,nonatomic) CGPoint touchOffset;

@property(weak,nonatomic) UIView* checers;
@property(weak,nonatomic) UIView* cells;

@property(weak,nonatomic) UIView* board;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.arrayCells = [[NSMutableArray alloc]init];
    self.freeCells = [[NSMutableArray alloc]init];
    
    UIView* board = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 640, 640)];
    board.backgroundColor = [UIColor greenColor];
    self.board = board;
    [self.view addSubview:board];
    
    for(int i = 0; i<8; i++){
        
        UIView* cells = [[UIView alloc]initWithFrame:CGRectMake(i*80, 80*i, 80, 80)];
        self.cells  = cells;
        [self.cells setTag:2];
        cells.backgroundColor = [UIColor blackColor];
        [self.freeCells addObject:self.cells];
        [self.board addSubview:self.cells];
        
        if(i%2 == 0){
            UIView* checers = [[UIView alloc]initWithFrame:CGRectMake(i*80, 80*i, 50, 50)];
            self.checers = checers;
            [self.checers setTag:1];
            checers.backgroundColor = [UIColor redColor];
            [self.checs addObject:self.checers];
            [self.board addSubview:self.checers];
            
        }
    }
    
    
    
    
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



-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"touchesBegan");
    
    UITouch* touch = [touches anyObject];
    
    CGPoint pointOnMainView = [touch locationInView:self.view];
    CGPoint pointOnSubView = [touch locationInView:self.board];
    
    
    
    
    
    
    UIView * view1 = [self.view hitTest:pointOnMainView withEvent:event];
    
    if(![view1 isEqual:self.view]&&view1.tag==1 /*&& ![view pointInside:pointOnSubView withEvent:event]*/){
        self.draggonView = view1;
        [self.board bringSubviewToFront:self.draggonView];
        
    } else {
        //self.draggonView2 = view1 ;
    }
    
    
    
    
    
}

-(void)  touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"touchesMoved");
    
    
    UITouch* touch = [touches anyObject];
    CGPoint pointOnMainView = [touch locationInView:self.view];
    CGPoint pointOnsubView = [touch locationInView:self.board];
    if(self.draggonView )
        self.draggonView.center = pointOnsubView;
    
    
    //   if(self.draggonView2)
    //    self.draggonView2.center = pointOnMainView;
    
    
    
}
-(void) touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"touchesEnded");
    
    
    
    for(UIView* view in self.freeCells) {
        UITouch* touch = [touches anyObject];
        CGPoint pointOnMainView = [touch locationInView:view];
        if([self.draggonView pointInside:pointOnMainView withEvent:event])
            self.draggonView.center = view.center;
        
    }
    
    
    
    
    self.draggonView = nil;
    // self.draggonView2 = nil;
    
}
-(void) touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"touchesCancelled");
}

@end
