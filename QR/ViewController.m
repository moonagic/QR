//
//  ViewController.m
//  QR
//
//  Created by Wu Hengmin on 16/3/1.
//  Copyright © 2016年 Wu Hengmin. All rights reserved.
//

#import "ViewController.h"
#import "CIFilterEffect.h"

@interface ViewController ()<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *QRContentField;
@property (weak, nonatomic) IBOutlet UIImageView *QRImage;
@property (weak, nonatomic) IBOutlet UILabel *scanedQR;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.QRContentField.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)scanPressed:(id)sender {
    [self performSegueWithIdentifier:@"gotoscan" sender:nil];
}

- (IBAction)generatePressed:(id)sender {
    NSString *string = self.QRContentField.text;
    if ([string isEqualToString:@""]) {
        UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"提示"
                                                                       message:@"请输入需要生成二维码的内容"
                                                                preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault
                                                              handler:^(UIAlertAction * action) {}];
        
        [alert addAction:defaultAction];
        [self presentViewController:alert animated:YES completion:nil];
    } else {
        UIImage *image = [[CIFilterEffect alloc]initWithQRCodeString:string width:320].QRCodeImage;
        self.QRImage.image = image;
    }
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [self.QRContentField resignFirstResponder];
    return YES;
}


@end
