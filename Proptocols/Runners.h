//
//  Runners.h
//  Proptocols
//
//  Created by Slava on 23.02.17.
//  Copyright © 2017 Slava. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>
@protocol Runners <NSObject>

@required
@property (assign, nonatomic) NSInteger maxLengthOfRace;
@property (strong, nonatomic) NSString *name;
- (void) iRun;
- (BOOL) howAreYou;

@optional
@property (assign, nonatomic) BOOL isYouHaveCostlyPraze;
- (BOOL) isYouHavePets;
- (NSString *) hobby;
@end
