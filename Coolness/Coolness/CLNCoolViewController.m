// Copyright (C) 2022 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import "CLNCoolViewController.h"
#import "CLNCoolViewCell.h"

@implementation CLNCoolViewController

- (void)loadView {
    self.view = [[UIView alloc] init];
    self.view.backgroundColor = UIColor.systemBrownColor;
    
    UIView *subview1 = [[CLNCoolViewCell alloc] initWithFrame:CGRectMake(20, 60, 200, 40)];
    UIView *subview2 = [[CLNCoolViewCell alloc] initWithFrame:CGRectMake(50, 120, 200, 40)];
    subview1.backgroundColor = UIColor.systemOrangeColor;
    subview2.backgroundColor = UIColor.systemPurpleColor;
    
    [self.view addSubview:subview1];
    [self.view addSubview:subview2];
}

@end
