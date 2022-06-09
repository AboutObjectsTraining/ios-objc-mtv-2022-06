// Copyright (C) 2022 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import "CLNCoolViewController.h"
#import "CLNCoolViewCell.h"

@interface CLNCoolViewController () <UITextFieldDelegate>
@property (strong, nonatomic) UITextField *textField;
@property (strong, nonatomic) UIView *contentView;
@end

@implementation CLNCoolViewController

//- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
////    [self.nextResponder touchesBegan:touches withEvent:event];
//    NSLog(@"In %s", __func__);
//    [super touchesBegan:touches withEvent:event];
//}

- (void)addCell {
    NSLog(@"In %s", __func__);
    CLNCoolViewCell *newCell = [[CLNCoolViewCell alloc] init];
    [self.contentView addSubview:newCell];
    
    newCell.text = self.textField.text;
    newCell.backgroundColor = UIColor.systemGreenColor;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

- (void)loadView {
    self.view = [[UIView alloc] init];
    self.view.backgroundColor = UIColor.systemBrownColor;
    
    CGRect screenRect = UIScreen.mainScreen.bounds;
    CGRect accessoryRect;
    CGRect contentRect;
    CGRectDivide(screenRect, &accessoryRect, &contentRect, 100, CGRectMinYEdge);
    
    UIView *accessoryView = [[UIView alloc] initWithFrame:accessoryRect];
    
    self.contentView = [[UIView alloc] initWithFrame:contentRect];
    [self.view addSubview:accessoryView];
    [self.view addSubview:self.contentView];
    
    self.contentView.clipsToBounds = YES;
    
    accessoryView.backgroundColor = [UIColor colorWithWhite:1 alpha:0.7];
    self.contentView.backgroundColor = [UIColor colorWithWhite:1 alpha:0.5];
    
    // Controls
    
    self.textField = [[UITextField alloc] initWithFrame:CGRectMake(20, 55, 280, 34)];
    [accessoryView addSubview:self.textField];
    
    self.textField.borderStyle = UITextBorderStyleRoundedRect;
    self.textField.placeholder = @"Type here...";
    self.textField.clearButtonMode = UITextFieldViewModeWhileEditing;
    
    self.textField.delegate = self;
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    [accessoryView addSubview:button];
    
    [button setTitle:@"Add Cell" forState:UIControlStateNormal];
    [button sizeToFit];
    button.frame = CGRectOffset(button.frame, 310, 55);
    
    [button addTarget:self action:@selector(addCell) forControlEvents:UIControlEventTouchUpInside];
    
    // Cells
    
    CLNCoolViewCell *cell1 = [[CLNCoolViewCell alloc] initWithFrame:CGRectMake(20, 60, 200, 40)];
    CLNCoolViewCell *cell2 = [[CLNCoolViewCell alloc] initWithFrame:CGRectMake(50, 120, 200, 40)];
    cell1.backgroundColor = UIColor.systemOrangeColor;
    cell2.backgroundColor = UIColor.systemPurpleColor;
    
    cell1.text = @"Hello World! 🌎🌏🌍";
    cell2.text = @"Cool View Cells Rock! 🎉🍾";
    
    [self.contentView addSubview:cell1];
    [self.contentView addSubview:cell2];
}

@end
