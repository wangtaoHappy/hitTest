//
//  ViewController.m
//  hitTest
//
//  Created by 王涛 on 16/11/3.
//  Copyright © 2016年 王涛. All rights reserved.
//

#import "ViewController.h"
#import "CustomView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CustomView * customView = [[CustomView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    customView.backgroundColor = [UIColor redColor];
    [self.view addSubview:customView];
    /*   UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
     button.frame = CGRectMake(10, 10, 150, 150);
     button.backgroundColor = [UIColor blueColor];
     [customView addSubview:button];
     [button addTarget:self action:@selector(tap) forControlEvents:UIControlEventTouchUpInside];
     */
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(10, 10, 150, 150)];
    view.backgroundColor = [UIColor blueColor];
    [view addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tap)]];
    [customView addSubview:view];
 

}

-(void)tap {


}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
