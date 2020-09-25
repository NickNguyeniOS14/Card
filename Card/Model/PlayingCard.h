//
//  PlayingCard.h
//  Card
//
//  Created by Nick Nguyen on 9/25/20.
//

#import <Foundation/Foundation.h>
#import "Card.h"

NS_ASSUME_NONNULL_BEGIN
// Inherit from Card
@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;


+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;

@end

NS_ASSUME_NONNULL_END
