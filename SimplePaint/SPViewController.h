//
//  SPViewController.h
//  SimplePaint
//
//  Created by Pan Ziyue on 25/5/13.
//  Copyright (c) 2013 Pan Ziyue. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SPViewController : UIViewController
{
    UIView *nestedView;
}

@property (strong,nonatomic) UIView *nestedView;

@end
