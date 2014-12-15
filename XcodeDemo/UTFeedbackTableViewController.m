//
//  UTFeedbackTableViewController.m
//  XcodeDemo
//
//  Created by Mike Spears on 2014-12-15.
//  Copyright (c) 2014 University of Toronto. All rights reserved.
//

#import "UTFeedbackTableViewController.h"

@interface UTFeedbackTableViewController ()

@end

@implementation UTFeedbackTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)submitButtonAction:(id)sender
{
    UIButton * theButton = (UIButton *) sender;
    [theButton setTitle:@"Thank you!" forState:UIControlStateNormal];
    theButton.enabled = NO;
    theButton.backgroundColor = [UIColor colorWithRed:0.000 green:0.774 blue:0.097 alpha:1.000];
}

@end
