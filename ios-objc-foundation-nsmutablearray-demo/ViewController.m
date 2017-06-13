//
//  ViewController.m
//  ios-objc-foundation-nsmutablearray-demo
//
//  Created by Eiji Kushida on 2017/06/13.
//  Copyright © 2017年 Eiji Kushida. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSMutableArray<NSString*>* array = [@[@"月",@"火",@"木",@"金",@"土"] mutableCopy];

    //1.1. 末尾に追加する
    [array addObject:@"日"];

    //1.2. 指定の場所にオブジェクトを追加する
    [array insertObject:@"Wed" atIndex:2];

    //1.3. 指定したオブジェクトを入れ替える
    [array replaceObjectAtIndex:2 withObject: @"水"];

    //1.4. 指定したindexのオブジェクトを削除する
    [array removeObjectAtIndex:0];

    //1.5. 指定のオブジェクトを削除する
    [array removeObject:@"金"];

    //1.6. すべてのオブジェクトを削除する
    [array removeAllObjects];

    for(NSString* a in array) {
        NSLog(@"%@", a);
    }
}

@end
