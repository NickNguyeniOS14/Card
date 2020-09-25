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


@end

NS_ASSUME_NONNULL_END
