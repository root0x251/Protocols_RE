//
//  SwimmerMan.h
//  Proptocols
//
//  Created by Slava on 23.02.17.
//  Copyright © 2017 Slava. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Swimmers.h"
#import "Common.h"

@interface SwimmerMan : NSObject <Swimmers, Common>

@property (assign, nonatomic) NSInteger maxLeigthOfSwim;
@property (strong, nonatomic) NSString *name;
@property (assign, nonatomic) NSInteger swimmerWeight;
@property (strong, nonatomic) NSString *whoAreYou;


@end
