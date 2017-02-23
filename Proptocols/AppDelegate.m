//
//  AppDelegate.m
//  Proptocols
//
//  Created by Slava on 21.02.17.
//  Copyright © 2017 Slava. All rights reserved.
//

#import "AppDelegate.h"
#import "Jumpers.h"
#import "Swimmers.h"
#import "Runners.h"
#import "Common.h"
#import "RunnerMan.h"
#import "SwimmerMan.h"
#import "JumperMan.h"
#import "Cat.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
//    Реализуйте протоколы Jumpers, Swimmers, Runners. Каждый протокол должен иметь пару свойств, например скорость или максимальная высота прыжка и пару методов, например прыгать или плыть, нырять и тд. Включите фантазию!!!
//    
//    Часть методов делайте обязательными (например у пловцов обязательный метод это плыть а у бегунов - бежать, логично?), а другую часть не обязательными.
//    
//    Используйте классы из задания про массивы, там где у вас люди и животные. Например у кенгуру и у особых спортсменов реализуйте протокол Jumpers, тоже самое с другими протоколами. Пусть каждый протокол будет реализован как некоторыми классами животных, так и некоторыми классами людей.
//    
//    Положите всех в одни массив. Тех кто прыгает заставьте прыгать и рассказывать про свои свойства. Причем у некоторых объектов пусть будут одни необязательные свойства или методы, а у других другие. Тот кто бегает пусть бегает, а тот кто плавает, пусть плавает. Тот кто ничего не делает должен быть выведен на экран как лодырь :)
//    
//    Сделайте так чтобы один какой-то класс мог и бегать и прыгать и плавать и посмотрите как он себя поведет в цикле.
    

    NSMutableArray *mutableArray = [NSMutableArray new];
    
    for (int i = 0; i < 5; i++) {
        RunnerMan *runMan = [RunnerMan new];
        runMan.name = [NSString stringWithFormat:@"Alex %d", i];
        runMan.maxLengthOfRace = arc4random_uniform(100) + 100;
        runMan.isYouHaveCostlyPraze = arc4random() % 2;
        runMan.whoAreYou = [NSString stringWithFormat:@"Human%d", i];
        [mutableArray addObject:runMan];
        
        JumperMan *jmpMan = [JumperMan new];
        jmpMan.name = [NSString stringWithFormat:@"Ron %d", i];
        jmpMan.maxJumpHeight = arc4random_uniform(1000) + 8000;
        jmpMan.jumperHeight = arc4random_uniform(800) + 1000;
        [mutableArray addObject:jmpMan];
        
        SwimmerMan *swmMan = [SwimmerMan new];
        swmMan.name = [NSString stringWithFormat:@"Adward %d", i];
        swmMan.maxLeigthOfSwim = arc4random_uniform(100) + 1000;
        swmMan.swimmerWeight = arc4random_uniform(60) + 40;
        swmMan.whoAreYou = [NSString stringWithFormat:@"Human %d", i];
        [mutableArray addObject:swmMan];
        
        Cat *catCat = [Cat new];
        catCat.whoAreYou = [NSString stringWithFormat:@"Meo%d", i];
        [mutableArray addObject:catCat];
    }
    
    for (id <Runners, Jumpers, Swimmers, Common> object in mutableArray) {
        if ([object respondsToSelector:@selector(name)]) {
            NSLog(@"имя %@", object.name);
            if ([object isKindOfClass:[RunnerMan class]]) {
                [object iRun];
                [object isYouOk];
                [object isYouHavePets];
            }
        }
        if ([object respondsToSelector:@selector(maxLengthOfRace)]) {
            NSLog(@"максимальная длина забега - %ld", object.maxLengthOfRace);
        }
        if ([object respondsToSelector:@selector(isYouHaveCostlyPraze)]) {
            NSLog(@"есть ли у вас призы - %@", object.isYouHaveCostlyPraze ? @"yes" : @"no");
        }
        if ([object respondsToSelector:@selector(maxJumpHeight)]) {
            NSLog(@"максимальная высота прыжка %ld", object.maxJumpHeight);
        }
        if ([object respondsToSelector:@selector(jumperHeight)]) {
            NSLog(@"высота с которой вы обычно прыгаете - %ld", object.jumperHeight);
        }
        if ([object respondsToSelector:@selector(maxLeigthOfSwim)]) {
            NSLog(@"максимальная длина заплыва - %ld", object.maxLeigthOfSwim);
        }
        if ([object respondsToSelector:@selector(swimmerWeight)]) {
            NSLog(@"вес - %ld", object.swimmerWeight);
        }
        if ([object respondsToSelector:@selector(whoAreYou)]) {
            NSLog(@"who are You? %@", object.whoAreYou);
        }
        [object hobby];
        [object howAreYou];
        
    }
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
