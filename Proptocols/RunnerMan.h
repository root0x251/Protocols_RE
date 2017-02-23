//
//  RunnerMan.h
//  Proptocols
//
//  Created by Slava on 23.02.17.
//  Copyright © 2017 Slava. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Runners.h"
#import "Common.h"

@interface RunnerMan : NSObject <Runners, Common>

@property (strong, nonatomic) NSString *name;
@property (assign, nonatomic) NSInteger maxLengthOfRace;
@property (assign, nonatomic) BOOL isYouHaveCostlyPraze;
@property (strong, nonatomic) NSString *whoAreYou;

@end
