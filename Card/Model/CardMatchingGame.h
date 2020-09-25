//
//  CardMatchingGame.h
//  Card
//
//  Created by Nick Nguyen on 9/25/20.
//

#import <Foundation/Foundation.h>
#import "Deck.h"
// Public API: h

NS_ASSUME_NONNULL_BEGIN

@interface CardMatchingGame : NSObject
// designated initializer 
- (instancetype)initWithCardCount:(NSUInteger)count usingDeck: (Deck *)deck;
- (void)chooseCardAtIndex:(NSUInteger)index;

- (Card *)cardAtIndex: (NSUInteger)index;


@property (nonatomic, readonly) NSInteger score;


@end

NS_ASSUME_NONNULL_END
