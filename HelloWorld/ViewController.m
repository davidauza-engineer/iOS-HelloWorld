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

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)testButtonTapped:(id)sender {
    self.testLabel.text = @"It worked!";
}

@end
