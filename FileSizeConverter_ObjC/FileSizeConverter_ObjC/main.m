//
//  main.m
//  FileSizeConverter_ObjC
//
//  Created by Oguzhan Gungor on 24/04/13.
//  Copyright (c) 2013 Oguzhan Gungor. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FileSizeConverter.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        FileSizeConverter *converter = [[FileSizeConverter alloc] init];
        long size = 10000000000000;
        NSLog(@"Size : %@", [converter convertBytes:size]);
        [converter release];
        
    }
    return 0;
}

