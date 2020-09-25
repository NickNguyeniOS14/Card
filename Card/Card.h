//
//  Card.h
//  Card
//
//  Created by Nick Nguyen on 9/25/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Card : NSObject

// nonatomic: not thread-safe

@property (strong, nonatomic) NSString *contents;

// primitive types don't need strong or weak, not stored in the HEAP
// nonatomic: default
@property (nonatomic) BOOL chosen;
@property (nonatomic) BOOL matched;

@end

NS_ASSUME_NONNULL_END
