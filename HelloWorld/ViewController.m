//
//  ViewController.m
//  HelloWorld
//
//  Created by David Auza on 9/27/19.
//  Copyright © 2019 David Auza. All rights reserved.
//

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
        // I'm 5ft 11in
        int heightFeet = 5;
        int heightInches = 11;
        // 1in is 2.54 cm
        double heightCm = ((heightFeet * 12) + heightInches) * 2.54;
        if (heightCm > 100.00) {
            self.testLabel.text = @"You are over 1 meter tall!";
        } else {
            self.testLabel.text = @"You are under 1 meter tall!";
        }
        [_button setTitle:@"Go back!" forState:UIControlStateNormal];
    } else {
        self.testLabel.text = standardText;
        [_button setTitle:@"Click here!" forState:UIControlStateNormal];
    }
}

@end
