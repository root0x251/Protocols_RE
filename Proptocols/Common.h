//
//  Common.h
//  Proptocols
//
//  Created by Slava on 23.02.17.
//  Copyright © 2017 Slava. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Common <NSObject>

@optional
@property (strong, nonatomic) NSString *whoAreYou;
- (BOOL) isYouOk;

@end
