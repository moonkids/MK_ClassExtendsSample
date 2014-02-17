//
//  SimpleCheck.h
//  MK_ClassExtendsSample
//
//  Created by MurataKazuki on 2013/12/20.
//  Copyright (c) 2013年 MK. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SimpleCheck : NSObject
@property (strong,nonatomic) NSString *checkName;
@property (strong,nonatomic) NSString *inputName;
@property (strong,nonatomic) NSArray *dataArray;
@property (strong,nonatomic) NSMutableDictionary *result;

-(void)validate;
@end
