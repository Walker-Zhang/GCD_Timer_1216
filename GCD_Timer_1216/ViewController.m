//
//  ViewController.m
//  GCD_Timer_1216
//
//  Created by yfzhang on 2016/12/16.
//  Copyright © 2016年 yfzhang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    //循环滚动
    dispatch_source_t timer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, dispatch_get_global_queue(0, 0));
    dispatch_source_set_timer(timer, DISPATCH_TIME_NOW, 3 * NSEC_PER_SEC, 0 * NSEC_PER_SEC);
    dispatch_source_set_event_handler(timer, ^{
        /*
         _pageControl.currentPage +=1 ;
         [UIView animateWithDuration:0.3 animations:^{
         _scrollView.contentOffset = CGPointMake(MainWidth * _pageControl.currentPage, 0);
         
         }];
         */
        NSLog(@"GCD Timer  好厉害");
        
    });
    dispatch_resume(timer);
    

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
