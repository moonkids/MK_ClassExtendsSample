//
//  ResultViewController.m
//  MK_ClassExtendsSample
//
//  Created by MurataKazuki on 2013/12/20.
//  Copyright (c) 2013年 MK. All rights reserved.
//

#import "ResultViewController.h"

@interface ResultViewController ()
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

@end

@implementation ResultViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.title = [NSString stringWithFormat:@"%@ - 結果",_checkObject.checkName];
    
    
    _nameLabel.text = [NSString stringWithFormat:@"%@さん の診断結果",_checkObject.inputName];

    [_checkObject validate];
    
    _resultLabel.text = [NSString stringWithFormat:@"★★★ %@ ★★★",_checkObject.result[@"resultName"]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
