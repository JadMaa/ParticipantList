//
//  AppDelegate.m
//  ParticipantList
//
//  Created by Jad Maarabouni on 2017-02-02.
//  Copyright © 2017 Jad Maarabouni. All rights reserved.
//

#import "AppDelegate.h"
#import "Pays.h"
#import "PaysViewController.h"
#import "Participant.h"
#import "ParticipantsViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate
{
    NSMutableArray *_tabPays;
}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    _tabPays = [NSMutableArray arrayWithCapacity:20];
    
    Pays *pays = [[Pays alloc] init];
    pays.nomPays = @"Canada";
    [_tabPays addObject:pays];
    
    pays = [[Pays alloc] init];
    pays.nomPays = @"USA";
    [_tabPays addObject:pays];
    
    pays = [[Pays alloc] init];
    pays.nomPays = @"Mexique";
    [_tabPays addObject:pays];
    
    UITabBarController *tabBarController = (UITabBarController *)self.window.rootViewController;
    UINavigationController *navigationController = [tabBarController viewControllers][0];
    PaysViewController *paysViewController = [navigationController viewControllers][0];
    paysViewController.tabPays = _tabPays;
    
    /*
    _tabParticipants = [NSMutableArray arrayWithCapacity:20];
    
    Participant *participants = [[Participant alloc] init];
    participants.nomParticipant = @"Truc";
    participants.numeroDossard = 1;
    [_tabParticipants addObject:participants];
    
    participants = [[Participant alloc] init];
    participants.nomParticipant = @"Chose";
    participants.numeroDossard = 2;
    [_tabParticipants addObject:participants];
    
    participants = [[Participant alloc] init];
    participants.nomParticipant = @"John";
    participants.numeroDossard = 3;
    [_tabParticipants addObject:participants];
     */
    
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
