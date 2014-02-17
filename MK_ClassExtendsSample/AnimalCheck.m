//
//  AnimalCheck.m
//  MK_ClassExtendsSample
//
//  Created by MurataKazuki on 2013/12/20.
//  Copyright (c) 2013年 MK. All rights reserved.
//

#import "AnimalCheck.h"

@implementation AnimalCheck
- (id)init
{
    //親クラスの共通の初期化処理を実行
    self = [super init];
    if (self) {
        //子クラスの固有の初期化処理を実行
        NSLog(@"AnimalCheck initメソッド");
        self.checkName = @"動物診断";
    }
    return self;
}

-(void)validate{
    //親クラスの共通処理を実行
    [super validate];
    
    //子クラスの固有の処理を実行
    NSLog(@"AnimalCheck validateメソッド");
    self.result = [@{} mutableCopy];
    //
    //
    //
    //
    //
    //
    self.result[@"resultName"] = @"イリオモテヤマネコ";
}

@end
