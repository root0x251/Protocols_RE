//
//  JumperMan.m
//  Proptocols
//
//  Created by Slava on 23.02.17.
//  Copyright © 2017 Slava. All rights reserved.
//

#import "JumperMan.h"

@implementation JumperMan

- (NSString *) interstingStory{
    return @"no";
}

- (void) iJump{
    NSLog(@"im Jumperman");
}

- (NSString *) hobby{
    return @"гуляю";
}
- (BOOL) howAreYou{
    BOOL isOk = arc4random() % 2;
    NSLog(@"мне %@", isOk ? @"так се" : @"норм");
    return isOk;
}


@end
