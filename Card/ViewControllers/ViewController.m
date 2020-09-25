//
//  ViewController.m
//  Card
//
//  Created by Nick Nguyen on 9/25/20.
//

#import "ViewController.h"
#import "Deck.h"
#import "PlayingCardDeck.h"

// =============================================================================
@interface ViewController()

// IF you hook up properties, drop it in @interface

@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@property (nonatomic, strong) Deck *deck;

@end

// =============================================================================

@implementation ViewController

- (Deck *)deck {
    if (!_deck) _deck = [self createDeck];
    return _deck;
}

- (Deck *)createDeck {
    return [[PlayingCardDeck alloc]init];
}


- (IBAction)touchCardButton:(UIButton *)sender {
    if ([sender.currentTitle length]) {

        [sender setBackgroundImage:[UIImage systemImageNamed:@"heart"]
                          forState:UIControlStateNormal];

        [sender setTitle:@"" forState:UIControlStateNormal];
        self.flipCount += 1 ; // plus 1
    } else {
        Card *card = [self.deck drawRandomCard];

        if (card) {
            [sender setBackgroundImage:[UIImage systemImageNamed:@"whiteBackground"]
                              forState:UIControlStateNormal];

            [sender setTitle:card.contents forState:UIControlStateNormal];
            self.flipCount += 1 ; // plus 1
        }
    }
}

- (void)setFlipCount:(int)flipCount {
    // setter for flipCount, keepUI in sync with model, like didSet

    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d",self.flipCount];
    NSLog(@"flipCount = %d",self.flipCount);
}

@end
