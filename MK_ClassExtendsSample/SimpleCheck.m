//
//  SimpleCheck.m
//  MK_ClassExtendsSample
//
//  Created by MurataKazuki on 2013/12/20.
//  Copyright (c) 2013年 MK. All rights reserved.
//

#import "SimpleCheck.h"

@implementation SimpleCheck
- (id)init
{
    self = [super init];
    if (self) {
        //初期化処理を実行
        NSLog(@"SimpleCheck initメソッド");
        self.checkName = @"RPG診断";
    }
    return self;
}
-(void)validate{
    //診断処理を実行
    NSLog(@"SimpleCheck validateメソッド");
    self.result = [@{} mutableCopy];
    //
    //
    //
    //
    //
    //
    //
    //
    //
    self.result[@"resultName"] = @"そうりょ";
}

@end
