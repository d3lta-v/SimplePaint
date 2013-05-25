//
//  SPViewController.m
//  SimplePaint
//
//  Created by Pan Ziyue on 25/5/13.
//  Copyright (c) 2013 Pan Ziyue. All rights reserved.
//

#import "SPViewController.h"
#import "SPView.h"

@interface SPViewController ()

@end

@implementation SPViewController

@synthesize nestedView;

- (void)viewDidLoad
{
    [super viewDidLoad];
    nestedView.backgroundColor=[UIColor colorWithWhite:0 alpha:0]; //This is to make the nested view transparent

    SPView *paint = [[SPView alloc] initWithFrame:self.view.bounds]; //original code is SPView *paint=[[SPView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:paint]; //original code is [self.view addSubview:paint];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end