//
//  ViewController.m
//  Card
//
//  Created by Nick Nguyen on 9/25/20.
//

#import "ViewController.h"

@interface ViewController()

// IF you hook up properties, drop it in @interface

@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;

@end

@implementation ViewController


- (void)setFlipCount:(int)flipCount // setter for flipCount, keepUI in sync with model, like didSet
{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d",self.flipCount];
    NSLog(@"flipCount = %d",self.flipCount);
}

- (IBAction)touchCardButton:(UIButton *)sender {
    if ([sender.currentTitle length]) {

        [sender setBackgroundImage:[UIImage systemImageNamed:@"heart"]
                          forState:UIControlStateNormal];

        [sender setTitle:@"" forState:UIControlStateNormal];
    } else {
        [sender setBackgroundImage:[UIImage systemImageNamed:@"whiteBackground"]
                          forState:UIControlStateNormal];

        [sender setTitle:@"A♥️" forState:UIControlStateNormal];
    }

    self.flipCount++; // plus 1

}

@end
