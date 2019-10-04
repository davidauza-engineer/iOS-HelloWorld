//
//  ViewController.m
//  HelloWorld
//
//  Created by David Auza on 9/27/19.
//  Copyright © 2019 David Auza. All rights reserved.
//
// This is a comment - I can put anything I want here
// Now this is a comment. Xcode is getting confused

/* This is a multi-line comment
   It keeps going until I close
   the comment with this matching symbol */

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *testLabel;

@property (weak, nonatomic) IBOutlet UIButton *button;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)testButtonTapped:(id)sender {
    NSString *standardText = @"Click the button below";
    if ([self.testLabel.text isEqual:standardText]) {
        int heightFeet = 5;
        int heightInches = 11; // I'm 5ft 11in
        double heightCm = ((heightFeet * 12) + heightInches) * 2.54;
        self.testLabel.text = [NSString stringWithFormat:@"%f", heightCm];
        [_button setTitle:@"Go back!" forState:UIControlStateNormal];
    } else {
        self.testLabel.text = standardText;
        [_button setTitle:@"Click here!" forState:UIControlStateNormal];
    }
//    NSString *worked = @"It worked!";
//    if ([self.testLabel.text  isEqual: worked]) {
//        self.testLabel.text = @"Click the button below";
//        [_button setTitle:@"Click here!" forState:UIControlStateNormal];
//        return;
//    }
//    self.testLabel.text = worked;
//    [_button setTitle:@"Go back" forState:UIControlStateNormal];
}

@end
