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
    //nestedView.backgroundColor=[UIColor colorWithWhite:0 alpha:0]; //This is to make the nested view transparent

    //SPView *paint = [[SPView alloc] initWithFrame:nestedView.bounds]; //original code is SPView *paint=[[SPView alloc] initWithFrame:self.view.bounds];
    //[nestedView addSubview:paint]; //original code is [self.view addSubview:paint];
}

-(void)viewDidAppear:(BOOL)animated{
    
    UIView *newView = [[UIView alloc] initWithFrame:self.view.bounds]; //This is the entire thing
    newView.backgroundColor = [UIColor grayColor]; //This is for the color of the entire thing
    
    SPView *newPaint = [[SPView alloc] initWithFrame:CGRectInset(self.view.bounds, 40,40)]; //Specific dimensions here
    newPaint.backgroundColor=[UIColor colorWithWhite:1 alpha:1];
    
    [newView addSubview:newPaint]; //newView is essentially self, and newPaint is the initWithFrame made programmatically
    
    self.view = newView;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end