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


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

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

}

@end
