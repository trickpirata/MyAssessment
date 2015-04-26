//
//  SecondViewController.m
//  MyAssessment
//
//  Created by Patrick Gorospe on 4/27/15.
//  Copyright (c) 2015 IdeaRack Studios. All rights reserved.
//

#import "SecondViewController.h"
#import "ViewController.h"

@interface SecondViewController ()
@property (weak, nonatomic) IBOutlet UIView *buttonBGView;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.buttonBGView.backgroundColor = self.view.backgroundColor;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)btnGoOne_action:(id)sender {
    [self popToRootView:sender];
}

- (IBAction)btnGoTwo_action:(id)sender {
    [self popToRootView:sender];
}

- (IBAction)btnGoThree_action:(id)sender {
    [self popToRootView:sender];
    
}

- (IBAction)btnGoLast_action:(id)sender {
    [self performSegueWithIdentifier:@"showView3" sender:sender];
}


#pragma mark - Navigation

- (void)popToRootView:(id)sender
{
    ViewController *prevVC = [self.navigationController.viewControllers objectAtIndex:0];
   
    UIButton *btnSender = sender;
    
    NSString *lblMainText = @"";
    if(btnSender.tag == 0)
    {
        lblMainText = @"ONE";
    }
    else if(btnSender.tag == 1)
    {
        lblMainText = @"TWO";
    }
    else if(btnSender.tag == 2)
    {
        lblMainText = @"THREE";
    }
    prevVC.lblMain.text = lblMainText;
    
    [self.navigationController popToViewController:prevVC animated:YES];
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([[segue identifier] isEqualToString:@"showView3"])
    {
        
    }
}

@end
