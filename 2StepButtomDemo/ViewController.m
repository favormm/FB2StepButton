//
//  ViewController.m
//  2StepButtomDemo
//
//  Created by Fernando Bass on 9/11/13.
//  Copyright (c) 2013 Fernando Bass. All rights reserved.
//

#import "ViewController.h"
#import "FB2StepButton.h"

@interface ViewController () <FB2StepButtonDelegate>
@property (weak, nonatomic) IBOutlet UIView *barView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    FB2StepButton *fbButtonRight = [[FB2StepButton alloc] initWithDelegate:self position:CGPointMake(295, 5)];
    fbButtonRight.slide = FB2StepButtonSlideLeft;
    [self.barView addSubview:fbButtonRight];
    
    FB2StepButton *fbButtonLeft = [[FB2StepButton alloc] initWithDelegate:self position:CGPointMake(5, 5)];
    fbButtonLeft.slide = FB2StepButtonSlideRight;
    [self.barView addSubview:fbButtonLeft];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

#pragma mark FB2StepButtonDelegate
- (void)clickedButtonWithAction:(FB2StepButtonStep)step
{
    NSLog(@"%d", step);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
