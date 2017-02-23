//
//  Swimmers.h
//  Proptocols
//
//  Created by Slava on 23.02.17.
//  Copyright © 2017 Slava. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>
@protocol Swimmers <NSObject>

@required
@property (assign, nonatomic) NSInteger maxLeigthOfSwim;
@property (strong, nonatomic) NSString *name;
- (void) iSwim;
- (BOOL) howAreYou;

@optional
@property (assign, nonatomic) NSInteger swimmerWeight;
- (BOOL) isYouSink;
- (NSString *) hobby;

@end
