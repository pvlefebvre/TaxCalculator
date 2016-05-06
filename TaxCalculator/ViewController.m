//
//  ViewController.m
//  TaxCalculator
//
//  Created by Paul Lefebvre on 5/4/16.
//  Copyright © 2016 Paul Lefebvre. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *priceTextField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

@property double sfTax;
@property double chiTax;
@property double nyTax;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.sfTax = .0875;
    self.chiTax = .1025;
    self.nyTax = .08875;
}

- (IBAction)onCalculateButtonTapped:(id)sender {
    double price = [[self.priceTextField text] doubleValue];
    double total;
    
    if([self.segmentedControl selectedSegmentIndex] == 0){
        total = price * self.sfTax;
    }else if([self.segmentedControl selectedSegmentIndex] == 1){
        total = price * self.chiTax;
    }else{
        total = price * self.nyTax;
    }

    self.resultLabel.text = [NSString stringWithFormat:@"$%.2f", total];
}

@end
