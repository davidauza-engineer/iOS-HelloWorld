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
    NSString *worked = @"It worked!";
    if ([self.testLabel.text  isEqual: worked]) {
        self.testLabel.text = @"Click the button below";
        [_button setTitle:@"Click here!" forState:UIControlStateNormal];
        return;
    }
    self.testLabel.text = worked;
    [_button setTitle:@"Go back" forState:UIControlStateNormal];
}

@end
