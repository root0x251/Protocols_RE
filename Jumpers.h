//
//  Jumpers.h
//  Proptocols
//
//  Created by Slava on 23.02.17.
//  Copyright © 2017 Slava. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>

@protocol Jumpers <NSObject>

@required
@property (assign, nonatomic) NSInteger maxJumpHeight;
@property (strong, nonatomic) NSString *name;
- (BOOL) howAreYou;
- (void) iJump;

@optional
@property (assign, nonatomic) NSInteger jumperHeight;
- (NSString *) interstingStory;
- (NSString *) hobby;


@end
