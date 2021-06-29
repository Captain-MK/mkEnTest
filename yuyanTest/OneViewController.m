//
//  OneViewController.m
//  yuyanTest
//
//  Created by MK on 2021/6/22.
//

#import "OneViewController.h"

@interface OneViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label1;
@property (weak, nonatomic) IBOutlet UILabel *label2;
@property (weak, nonatomic) IBOutlet UILabel *label3;
@end

@implementation OneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.label1.text = NSLocalizedString(@"not implemented",@"");
//    self.label2.text = NSLocalizedString(@"Edit",@"");
    self.label1.text = NSLocalizedString(@"pushBtn",@"");
    self.label2.text = NSLocalizedString(@"pushBtn2",@"");
    self.label3.text = NSLocalizedString(@"new",@"");
}
@end
