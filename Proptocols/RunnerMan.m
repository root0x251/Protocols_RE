//
//  RunnerMan.m
//  Proptocols
//
//  Created by Slava on 23.02.17.
//  Copyright © 2017 Slava. All rights reserved.
//

#import "RunnerMan.h"

@implementation RunnerMan

- (void) iRun {
    NSLog(@"i Run");
}

- (BOOL) isYouHavePets{
    BOOL pets = arc4random() % 2;
    NSLog(@"%@", pets ? @"yes" : @"no");
    return pets;
}
- (BOOL) isYouOk{
    BOOL ok = arc4random() % 2;
    NSLog(@"%@", ok ? @"yes" : @"no");
    return ok;
}

- (NSString *) hobby{
    return @"ничего";
}

- (BOOL) howAreYou{
    BOOL isOk = arc4random() % 2;
    NSLog(@"мне %@", isOk ? @"так се" : @"норм");
    return isOk;
}


@end
