//
//  UTFeedbackTableViewController.m
//  XcodeDemo
//
//  Created by Mike Spears on 2014-12-15.
//  Copyright (c) 2014 University of Toronto. All rights reserved.
//

#import "UTFeedbackTableViewController.h"

// UTFeedbackTableViewController has references to the form items on the feedback view and submits them to a server then the submit button is pressed.
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
    [theButton setTitle:@"Submitting..." forState:UIControlStateNormal];
    theButton.enabled = NO;
    theButton.backgroundColor = [UIColor colorWithWhite:0.900 alpha:1.000];
    
    NSURLSession * urlSession  =[NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    
    NSString * urlString = [NSString stringWithFormat:@"http://localhost:3000/feedback?relationship=%@&value=%@&difficulty=%@",
                              @(self.relationshipSelector.selectedSegmentIndex),
                              @(self.valueSelector.selectedSegmentIndex),
                              @(self.difficultySelector.selectedSegmentIndex)];
    
    // Submit our data asynchronously using an HTTP GET request
    
    [[urlSession dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        NSHTTPURLResponse * httpResponse = (NSHTTPURLResponse *) response;
        
        // This block may be called on a secondary thread. To update the UI we must submit our updates on the main thread (using NSOperationQueue in this case).
        [[NSOperationQueue mainQueue] addOperationWithBlock:^{
            if (!error && httpResponse.statusCode == 200) {
                [theButton setTitle:@"Thank you!" forState:UIControlStateNormal];
                theButton.backgroundColor = [UIColor colorWithRed:0.000 green:0.774 blue:0.097 alpha:1.000];
            } else {
                [theButton setTitle:@"Connection Error" forState:UIControlStateNormal];
                theButton.backgroundColor  =[UIColor colorWithRed:0.580 green:0.212 blue:0.204 alpha:1.000];
            }
        }];
        
    }] resume];
                                 
    
}

@end
