//
//  Cat.m
//  Proptocols
//
//  Created by Slava on 23.02.17.
//  Copyright © 2017 Slava. All rights reserved.
//

#import "Cat.h"

@implementation Cat

- (BOOL) isYouOk{
    BOOL ok = arc4random() % 2;
    NSLog(@"%@", ok ? @"mayMay" : @"may");
    return ok;
}

- (NSString *) hobby {
    return @"meo";
}
- (BOOL) howAreYou{
    BOOL isOk = arc4random() % 2;
    NSLog(@"мне %@", isOk ? @"так се" : @"норм");
    return isOk;
}

@end
