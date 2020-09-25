//
//  PlayingCard.h
//  Card
//
//  Created by Nick Nguyen on 9/25/20.
//

#import <Foundation/Foundation.h>
#import "Card.h"

NS_ASSUME_NONNULL_BEGIN

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

@end

NS_ASSUME_NONNULL_END