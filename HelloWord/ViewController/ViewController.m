//
//  ViewController.m
//  HelloWord
//
//  Created by arthur kao on 2018/8/14.
//  Copyright © 2018年 arthur kao. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *buttonNextA;
@property (weak, nonatomic) IBOutlet UIButton *buttonNextB;
@property (weak, nonatomic) IBOutlet UIButton *buttonNextC;
@property (weak, nonatomic) IBOutlet UIButton *buttonHelloWorld;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)buttonEvent:(id)sender {
    UIButton *button = (UIButton *)sender;
    //self.buttonHelloWorld
    NSLog(@"%@", sender);
    if (button == self.buttonHelloWorld) {
        NSLog(@"HelloWord");
    } else if (button == self.buttonNextA) {
        [self performSegueWithIdentifier:@"nextA" sender:self];
    } else if (button == self.buttonNextB) {
        [self performSegueWithIdentifier:@"nextB" sender:self];
    } else if(button == self.buttonNextC) {
        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        UIViewController *vc = [storyboard instantiateViewControllerWithIdentifier:@"ViewC"];
        vc.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
        [self presentViewController:vc animated:NO completion:NULL];
    }
    
    
}


- (IBAction)buttonToNextA:(id)sender {
    [self performSegueWithIdentifier:@"nextA" sender:self]; // 跳轉到A畫面
    //performSegueWithIdentifier
}

- (IBAction)buttonToNextB:(id)sender {
    [self performSegueWithIdentifier:@"nextB" sender:self]; // 跳轉到B畫面
}

- (IBAction)buttonNextC:(id)sender {
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *vc = [storyboard instantiateViewControllerWithIdentifier:@"ViewC"];
    vc.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:vc animated:NO completion:NULL];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
