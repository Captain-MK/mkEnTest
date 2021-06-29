//
//  ViewController.m
//  yuyanTest
//
//  Created by MK on 2021/6/22.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import <CrowdinSDK/CrowdinSDK-Swift.h>
//#define NSLocalizedString(key, comment) [[NSBundle mainBundle] localizedStringForKey:(key) value:@"" table:comment]
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label1;
@property (weak, nonatomic) IBOutlet UILabel *label2;
@property (weak, nonatomic) IBOutlet UILabel *label3;
@property (weak, nonatomic) IBOutlet UILabel *label4;
@property (weak, nonatomic) IBOutlet UILabel *label5;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    "OK" = "OK[L]";
//    "Location" = "Location[L]";
//    "not implemented" = "not implemented[L]";
//    "Cancel" = "Cancel[L]";
//    "Main" = "Main[L]";
//    "Done" = "Done[L]";
//    "Edit" = "Edit[L]";
//    "test3" = "test3";
//    "test4" = "test4";
//    "test5" = "test5";
//    "test6" = "test6";
//    "test7" = "test7";
//    "test8" = "test8";
//    "test9" = "test9";

    self.label1.text = NSLocalizedString(@"OK",@"");
    self.label2.text = NSLocalizedString(@"Location",@"");
    self.label3.text = NSLocalizedString(@"Cancel",@"");
    self.label4.text = NSLocalizedString(@"Main",@"");
    self.label5.text = NSLocalizedString(@"Done",@"");
    
    
    
    
    
//    NSArray *a =  CrowdinSDK.allAvalaibleLocalizations;
//    NSLog(@"mk--------count:%ld",a.count);
}
- (IBAction)switchBtnclick:(id)sender {
    NSLog(@"mk----%@",CrowdinSDK.allAvalaibleLocalizations);
    AppDelegate *dele = [UIApplication sharedApplication].delegate;
    if (dele.open) {
        CrowdinSDK.currentLocalization = @"en";
        dele.open = NO;
    }else{
        CrowdinSDK.currentLocalization = @"zh-Hans";
        dele.open = YES;
    }
//    [dele resetwindow];
}


@end
