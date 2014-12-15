//
//  UTFeedbackTableViewController.h
//  XcodeDemo
//
//  Created by Mike Spears on 2014-12-15.
//  Copyright (c) 2014 University of Toronto. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UTFeedbackTableViewController : UITableViewController

@property (nonatomic) IBOutlet UISegmentedControl * relationshipSelector;
@property (nonatomic) IBOutlet UISegmentedControl * valueSelector;
@property (nonatomic) IBOutlet UISegmentedControl * difficultySelector;

- (IBAction)submitButtonAction:(id)sender;

@end
