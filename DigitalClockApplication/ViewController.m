//
//  ViewController.m
//  DigitalClockApplication
//
//  Created by MacBook AIR on 26/12/2023.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   
    backGroundColor = UIColor.redColor;
    self.view.backgroundColor = backGroundColor;
    [self updateTime];
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateTime) userInfo:nil repeats:YES];
    self.settingsView.hidden = YES;
    self.showSettingsButton.alpha = 0.25;
    [self.showSettingsButton setTitle:@"show Settings" forState:UIControlStateNormal];
   
   
}

-(void)updateTime {
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    [formatter setDateFormat:@"hh:mm:ss"];
    self.label.text = [formatter stringFromDate:[NSDate date]];
}

    
    

- (IBAction)didTapBackgroundColor:(id)sender {
    if (self.changeBackgroundColor.selectedSegmentIndex == 0) {
        self.label.textColor = [UIColor whiteColor];
    } else if (self.changeBackgroundColor.selectedSegmentIndex == 1){
        self.label.textColor = [UIColor redColor];
    }   else if (self.changeBackgroundColor.selectedSegmentIndex == 2) {
        self.label.textColor = [UIColor greenColor];
    }else if (self.changeBackgroundColor.selectedSegmentIndex == 3){
        self.label.textColor = [UIColor redColor];
        
    }
}

- (IBAction)didTapClockColor:(id)sender {
    if (self.changeClockColor.selectedSegmentIndex == 0) {
        self.view.backgroundColor = [UIColor brownColor];
    } else if (self.changeClockColor.selectedSegmentIndex == 1){
        self.view.backgroundColor = [UIColor redColor];
    }   else if (self.changeClockColor.selectedSegmentIndex == 2) {
        self.view.backgroundColor  = [UIColor greenColor];
    }else if (self.changeClockColor.selectedSegmentIndex == 3){
        self.view.backgroundColor = [UIColor redColor];
        
    }
    
}

- (IBAction)showSettingsAction:(id)sender {
    if (self.settingsView.isHidden == NO) {
        self.settingsView.hidden = YES;
        self.showSettingsButton.alpha = 0.25;
        [self.showSettingsButton setTitle:@"show Settings" forState:UIControlStateNormal];
    }else{
        self.settingsView.hidden = false;
        self.showSettingsButton.alpha = 1.0;
        [self.showSettingsButton setTitle:@"hide settings" forState:UIControlStateNormal];
    }
    
    
    
}
@end
