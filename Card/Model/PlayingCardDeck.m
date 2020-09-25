//
//  PlayingCardDeck.m
//  Card
//
//  Created by Nick Nguyen on 9/25/20.
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@implementation PlayingCardDeck

// instancetype: This is gonna return an object with the same instance as same type, same class as the object you sent this message to

- (instancetype)init
{
    self = [super init];
    // check the super class properly initialize
    if (self) {
        for (NSString *suit in [PlayingCard validSuits]) {
            for (NSUInteger rank = 1; rank <= [PlayingCard maxRank]; rank++) {
                PlayingCard *card = [[PlayingCard alloc] init];
                card.rank = rank;
                card.suit = suit;
                [self addCard:card];
            }
        }
    }


    return self;
    
}

@end
