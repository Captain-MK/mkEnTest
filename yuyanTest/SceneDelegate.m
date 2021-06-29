////
////  SceneDelegate.m
////  yuyanTest
////
////  Created by MK on 2021/6/22.
////
//
//#import "SceneDelegate.h"
//#import <CrowdinSDK/CrowdinSDK-Swift.h>
//static NSString *hashStr = @"4b5048c595dd83c580d1fe8tevo";
//static NSString *sourceLanguage = @"en";
//static NSString *clientId = @"AacYwolLjIKebeJ5qsNy";
//static NSString *clientSecret = @"bQVZdRjHO7tSQFK49d1vdNqNxucLekQWm30GyWQu";
//@interface SceneDelegate ()
//
//@end
//
//@implementation SceneDelegate
//
//
//- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
//    CrowdinProviderConfig *crowdinProviderConfig = [[CrowdinProviderConfig alloc] initWithHashString:hashStr sourceLanguage:sourceLanguage];
//    NSError *error;
//    CrowdinLoginConfig *loginConfig = [[CrowdinLoginConfig alloc] initWithClientId:clientId clientSecret:clientSecret scope:@"project" redirectURI:@"crowdintestmk://" error:&error];
////    CrowdinLoginConfig *loginConfig = [[CrowdinLoginConfig alloc] initWithClientId:clientId clientSecret:clientSecret scope:@"project" error:&error];
////    CrowdinLoginConfig *loginConfig = [[CrowdinLoginConfig alloc] initWithClientId:clientId clientSecret:clientSecret scope:@"project" organizationName:nil error:&error];
//    if (!error) {
//        CrowdinSDKConfig *config = [[[CrowdinSDKConfig config] withCrowdinProviderConfig:crowdinProviderConfig] withLoginConfig:loginConfig];
//        [config withSettingsEnabled:YES];
//        [config withRealtimeUpdatesEnabled:YES];
//        [config withScreenshotsEnabled:YES];
////        [config withDebugEnabled:YES];
//        [CrowdinSDK addDownloadHandler:^{
//            NSLog(@"mk--------addDownloadHandler");
//        }];
//        [CrowdinSDK startWithConfig:config completion:^{
//            NSLog(@"mk--------ok");
//        }];
//    } else {
//        NSLog(@"mk--------error");
//        NSLog(@"%@", error.localizedDescription);
//        // CrowdinLoginConfig initialization error handling, typically for empty values and for wrong redirect URI value.
//        
//    }
//}
//
//
//- (void)sceneDidDisconnect:(UIScene *)scene {
//    // Called as the scene is being released by the system.
//    // This occurs shortly after the scene enters the background, or when its session is discarded.
//    // Release any resources associated with this scene that can be re-created the next time the scene connects.
//    // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
//}
//
//
//- (void)sceneDidBecomeActive:(UIScene *)scene {
//    // Called when the scene has moved from an inactive state to an active state.
//    // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
//}
//
//
//- (void)sceneWillResignActive:(UIScene *)scene {
//    // Called when the scene will move from an active state to an inactive state.
//    // This may occur due to temporary interruptions (ex. an incoming phone call).
//}
//
//
//- (void)sceneWillEnterForeground:(UIScene *)scene {
//    // Called as the scene transitions from the background to the foreground.
//    // Use this method to undo the changes made on entering the background.
//}
//
//
//- (void)sceneDidEnterBackground:(UIScene *)scene {
//    // Called as the scene transitions from the foreground to the background.
//    // Use this method to save data, release shared resources, and store enough scene-specific state information
//    // to restore the scene back to its current state.
//}
//-(void)scene:(UIScene *)scene openURLContexts:(NSSet<UIOpenURLContext *> *)URLContexts{
//    __block NSURL *u;
//    [URLContexts enumerateObjectsUsingBlock:^(UIOpenURLContext * _Nonnull obj, BOOL * _Nonnull stop) {
//        if (obj.URL !=nil) {
//            u=obj.URL;
//            *stop = YES;
//        }
//    }];
//    NSLog(@"mk----url-:%@",u);
//    [CrowdinSDK handleWithUrl:u];
//}
//
//@end
