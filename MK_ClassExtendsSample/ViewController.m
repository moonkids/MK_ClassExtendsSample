//
//  ViewController.m
//  MK_ClassExtendsSample
//
//  Created by MurataKazuki on 2013/12/20.
//  Copyright (c) 2013年 MK. All rights reserved.
//

#import "ViewController.h"
#import "ResultViewController.h"
//#import "SimpleCheck.h"
#import "Check.h"
//#import "RPGCheck.h"
//#import "AnimalCheck.h"

@interface ViewController (){
    NSArray *_answerArray;
}


@property (weak, nonatomic) IBOutlet UIButton *rpgButton;
@property (weak, nonatomic) IBOutlet UIButton *animalButton;
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;

@end

@implementation ViewController

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    //キーボードを隠す
    [self.view endEditing:YES];
    
    return YES;
}
//- (IBAction)startCheck:(id)sender {
//    ResultViewController *nextViewController = [[self storyboard] instantiateViewControllerWithIdentifier:@"ResultViewController"];
//
//    
//    
//    //入力情報などを元にチェックを行うCheckクラスオブジェクトを作成
//    SimpleCheck *checkObject = nil;
//    checkObject = [[SimpleCheck alloc] init];
//
//    //入力情報を設定
//    checkObject.inputName = _nameTextField.text;
//    checkObject.dataArray = _answerArray;
//
//    //結果ページに登録
//    nextViewController.checkObject = checkObject;
//
//    
//    
//    
//    //結果ページに遷移
//    [self.navigationController pushViewController:nextViewController animated:YES];
//}

//- (IBAction)startCheck:(id)sender {
//    ResultViewController *nextViewController = [[self storyboard] instantiateViewControllerWithIdentifier:@"ResultViewController"];
//    
//    //入力情報などを元にチェックを行うCheckクラスオブジェクトを作成
//    
//    Check *checkObject = nil;
//    switch ([sender tag]) {
//        case 0:
//            checkObject = [[RPGCheck alloc] init];
//            break;
//        case 1:
//            checkObject = [[AnimalCheck alloc] init];
//            break;
//        case 2:
//            checkObject = [[AnimalCheck alloc] init];
//            break;
//    }
//    //入力情報を設定
//    checkObject.inputName = _nameTextField.text;
//    checkObject.dataArray = _answerArray;
//
//    //結果ページに登録
//    nextViewController.checkObject = checkObject;
//    
//    //結果ページに遷移
//    [self.navigationController pushViewController:nextViewController animated:YES];
//}


- (IBAction)startCheck:(id)sender {
    ResultViewController *nextViewController = [[self storyboard] instantiateViewControllerWithIdentifier:@"ResultViewController"];
    
    Check *checkObject = nil;
    //ファクトリーメソッド
    checkObject = [Check checkObjectWithType:[sender tag]];
    checkObject.inputName = _nameTextField.text;
    checkObject.dataArray = _answerArray;

    nextViewController.checkObject = checkObject;
    
    [self.navigationController pushViewController:nextViewController animated:YES];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _rpgButton.tag = 0;
    _animalButton.tag = 1;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
