//
//  AppDelegate.m
//  yuyanTest
//
//  Created by MK on 2021/6/22.
//

#import "AppDelegate.h"
#import <CrowdinSDK/CrowdinSDK-Swift.h>
#import "ViewController.h"
static NSString *hashStr = @"4b5048c595dd83c580d1fe8tevo";
static NSString *sourceLanguage = @"en";
static NSString *clientId = @"AacYwolLjIKebeJ5qsNy";
static NSString *clientSecret = @"bQVZdRjHO7tSQFK49d1vdNqNxucLekQWm30GyWQu";
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    CrowdinProviderConfig *crowdinProviderConfig = [[CrowdinProviderConfig alloc] initWithHashString:hashStr sourceLanguage:sourceLanguage];
    NSError *error;
    CrowdinLoginConfig *loginConfig = [[CrowdinLoginConfig alloc] initWithClientId:clientId clientSecret:clientSecret scope:@"project" redirectURI:@"crowdintestmk://" error:&error];
//    CrowdinLoginConfig *loginConfig = [[CrowdinLoginConfig alloc] initWithClientId:clientId clientSecret:clientSecret scope:@"project" error:&error];
//    CrowdinLoginConfig *loginConfig = [[CrowdinLoginConfig alloc] initWithClientId:clientId clientSecret:clientSecret scope:@"project" organizationName:nil error:&error];
    if (!error) {
        CrowdinSDKConfig *config = [[[CrowdinSDKConfig config] withCrowdinProviderConfig:crowdinProviderConfig] withLoginConfig:loginConfig];
        [config withSettingsEnabled:YES];
        [config withRealtimeUpdatesEnabled:YES];
        [config withScreenshotsEnabled:YES];
        [config withDebugEnabled:YES];
        [CrowdinSDK addDownloadHandler:^{
            NSLog(@"mk--------addDownloadHandler");
        }];
        [CrowdinSDK startWithConfig:config completion:^{
            NSLog(@"mk--------ok");
        }];
    } else {
        NSLog(@"mk--------error");
        NSLog(@"%@", error.localizedDescription);
        // CrowdinLoginConfig initialization error handling, typically for empty values and for wrong redirect URI value.
        
    }
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    [self resetwindow];
    return YES;
}
- (void)resetwindow{
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    // 2.通过标识符找到对应的页面
    UIViewController *v = [storyBoard instantiateInitialViewController];
    v.view.backgroundColor = [UIColor redColor];
    self.window.rootViewController = v;
    [self.window makeKeyAndVisible];
}
#pragma mark - UISceneSession lifecycle
- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<UIApplicationOpenURLOptionsKey,id> *)options {
    return [CrowdinSDK handleWithUrl:url];
}
@end
