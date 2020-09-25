//
//  Card.m
//  Card
//
//  Created by Nick Nguyen on 9/25/20.
//

#import "Card.h"

@interface Card() 

@end

@implementation Card

@synthesize contents = _contents;

// NSString *: return pointer to a String
// contents: name of the method
- (NSString *)contents
{
    return _contents;
}
// void: return nothing
// setContents: name of the method
// (NSString *)contents: name of argument
- (void)setContents:(NSString *)contents
{
    _contents = contents;
}

- (int)match:(NSArray *)otherCards
{
    int score = 0;
    // dot notation: only for property
    for (Card *card in otherCards) {
        if ([card.contents isEqualToString:self.contents]) {
            score = 1;
        }
    }

    return score;
}



@end
