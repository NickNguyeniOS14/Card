//
//  PlayingCard.m
//  Card
//
//  Created by Nick Nguyen on 9/25/20.
//

#import "PlayingCard.h"

@implementation PlayingCard

// override match from superclass
- (int)match:(NSArray *)otherCards {
    int score = 0;

    if ([otherCards count] == 1) {
        PlayingCard *otherCard = [otherCards firstObject]; // if array empty, return nil no crash.
        if ([self.suit isEqualToString:otherCard.suit]) {
            score = 1;
        } else if (self.rank == otherCard.rank) {
            score = 4;
        }
    }
    return score;
}


- (NSString *)contents {
    NSArray *rankStrings = [PlayingCard rankStrings];
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
}

@synthesize suit = _suit; // because we provide setter AND getter

// +: class method

+ (NSArray *)validSuits {
    return @[@"♥️",@"♦️",@"♠️",@"♣️"];
}

+ (NSArray *)rankStrings {
    return @[@"?",@"A",@"2",@"3",@"10",@"J",@"Q",@"K"];
}

+ (NSUInteger)maxRank {
    return [[self rankStrings] count] -1;
}


- (void)setSuit:(NSString *)suit {
    if ([[PlayingCard validSuits] containsObject:suit]) {
        _suit = suit;
    }
}

- (NSString *)suit {
    return _suit ? _suit : @"?";
}

- (void)setRank:(NSUInteger)rank {
    if (rank <= [PlayingCard maxRank]) {
        _rank = rank;
    }
}

@end
