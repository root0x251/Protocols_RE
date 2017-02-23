//
//  JumperMan.h
//  Proptocols
//
//  Created by Slava on 23.02.17.
//  Copyright © 2017 Slava. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Jumpers.h"
#import "Common.h"

@interface JumperMan : NSObject <Jumpers, Common>

@property (assign, nonatomic) NSInteger maxJumpHeight;
@property (strong, nonatomic) NSString *name;
@property (assign, nonatomic) NSInteger jumperHeight;
- (NSString *) interstingStory;
- (void) iJump;

@end
