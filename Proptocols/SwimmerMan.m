//
//  SwimmerMan.m
//  Proptocols
//
//  Created by Slava on 23.02.17.
//  Copyright © 2017 Slava. All rights reserved.
//

#import "SwimmerMan.h"

@implementation SwimmerMan

- (BOOL) isYouSink{
    BOOL sink = arc4random() % 2;
    NSLog(@"%@", sink ? @"yes" : @"no");
    return sink;
}

- (void) iSwim{
    NSLog(@"im SwimmerMAn");
}

- (BOOL) isYouOk{
    BOOL ok = arc4random() % 2;
    NSLog(@"%@", ok ? @"yes" : @"no");
    return ok;
}

- (NSString *) hobby {
    return @"бухаю";
}
- (BOOL) howAreYou{
    BOOL isOk = arc4random() % 2;
    NSLog(@"мне %@", isOk ? @"так се" : @"норм");
    return isOk;
}


@end
