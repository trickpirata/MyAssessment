//
//  ViewController.m
//  MyAssessment
//
//  Created by Patrick Gorospe on 4/26/15.
//  Copyright (c) 2015 IdeaRack Studios. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    self.lblMain.text = @"None";
}

- (IBAction)btnBlue_action:(id)sender {
    [self performSegueWithIdentifier:@"showView2" sender:sender];
}

- (IBAction)btnRed_action:(id)sender {
    [self performSegueWithIdentifier:@"showView2" sender:sender];
}

- (IBAction)btnGreen_action:(id)sender {
    [self performSegueWithIdentifier:@"showView2" sender:sender];
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([[segue identifier] isEqualToString:@"showView2"])
    {
        UIButton *btnSender = sender;
        SecondViewController *nextVC = (SecondViewController *) [segue destinationViewController];
        UIColor *backGroundColor = nil;
        if(btnSender.tag == 0)
        {
            backGroundColor = [UIColor blueColor];
        }
        else if(btnSender.tag == 1)
        {
            backGroundColor = [UIColor redColor];
        }
        else if(btnSender.tag == 2)
        {
            backGroundColor = [UIColor greenColor];
        }
        
        nextVC.view.backgroundColor = backGroundColor;
    }
}
@end
