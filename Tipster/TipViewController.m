//
//  TipViewController.m
//  Tipster
//
//  Created by Ramya Prabakar on 6/14/22.
//

#import "TipViewController.h"

@interface TipViewController ()
@property (weak, nonatomic) IBOutlet UITextField *billField;
@property (weak, nonatomic) IBOutlet UILabel *tipField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *tigSegCtrl;
@property (weak, nonatomic) IBOutlet UILabel *totalField;

@end

@implementation TipViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)onTap:(id)sender {
    NSLog(@"Tapped");
    [self.view endEditing:true];
}


- (IBAction)updateBillTotal:(id)sender {
    double tipPercentages[] = {0.15, 0.18, 0.20};
    double selectedTipPercent = tipPercentages[self.tigSegCtrl.selectedSegmentIndex];
    double tip = [self.billField.text doubleValue] * selectedTipPercent;
    double total = [self.billField.text doubleValue] + tip;
    self.tipField.text = [NSString stringWithFormat:@"$%.2f", tip];
    self.totalField.text = [NSString stringWithFormat:@"$%.2f", total];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
