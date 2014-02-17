//
//  Check.m
//  MK_ClassExtendsSample
//
//  Created by MurataKazuki on 2013/12/20.
//  Copyright (c) 2013年 MK. All rights reserved.
//

#import "Check.h"
#import "RPGCheck.h"
#import "AnimalCheck.h"

@implementation Check

- (id)init
{
    self = [super init];
    if (self) {
        //Checkクラス共通の初期化処理を記述
        NSLog(@"Check initメソッド");
    }
    return self;
}

-(void)validate{
    //Checkクラス共通のvalidate処理を記述
    NSLog(@"Check validateメソッド");
    
    //実質の診断処理は子クラスにまかせる
}

+(Check *)checkObjectWithType:(NSInteger)type{
    Check *checkObject;
    switch (type) {
        case 0:
            checkObject = [[RPGCheck alloc] init];
            break;
        case 1:
            checkObject = [[AnimalCheck alloc] init];
            break;
    }
    
    return checkObject;
}


@end
