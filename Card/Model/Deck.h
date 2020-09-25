//
//  Deck.h
//  Card
//
//  Created by Nick Nguyen on 9/25/20.
//

#import <Foundation/Foundation.h>
#import "Card.h"

NS_ASSUME_NONNULL_BEGIN

@interface Deck : NSObject

// addCard: name of method
// first atTop: name of method
- (void)addCard:(Card *)card atTop:(BOOL)atTop;
- (void)addCard:(Card *)card;
- (Card *)drawRandomCard;

@end

NS_ASSUME_NONNULL_END
