//
//  ViewController.h
//  DigitalClockApplication
//
//  Created by MacBook AIR on 26/12/2023.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    NSTimer *timer;
    
    UIColor *backGroundColor;
}

@property (weak, nonatomic) IBOutlet UILabel * label;
@property (weak, nonatomic) IBOutlet UIView * settingsView;
@property (weak, nonatomic) IBOutlet UIButton * showSettingsButton;
- (IBAction)showSettingsAction:(id)sender;
@property (weak, nonatomic) IBOutlet UISegmentedControl *changeBackgroundColor;
@property (weak, nonatomic) IBOutlet UISegmentedControl *changeClockColor;

- (IBAction)didTapClockColor:(id)sender;

- (IBAction)didTapBackgroundColor:(id)sender;

@end

