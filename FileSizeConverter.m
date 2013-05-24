//
//  FileSizeConverter.m
//  FileSizeConverter_ObjC
//
//  Created by Oguzhan Gungor on 24/04/13.
//  Copyright (c) 2013 Oguzhan Gungor. All rights reserved.
//

#import "FileSizeConverter.h"

@implementation FileSizeConverter


- (NSString *)convertBytes:(unsigned long long)size
{
	NSString *formattedStr = nil;
    if (size == 0)
		formattedStr = @"Empty";
	else if (size > 0 && size < 1024)
        formattedStr = [NSString stringWithFormat:@"%qu bytes", size];
    else if (size >= 1024 && size < pow(1024, 2))
        formattedStr = [NSString stringWithFormat:@"%.2f KB", (size / 1024.)];
    else if (size >= pow(1024, 2) && size < pow(1024, 3))
        formattedStr = [NSString stringWithFormat:@"%.2f MB", (size / pow(1024, 2))];
    else if (size >= pow(1024, 3) && size < pow(1024, 4))
        formattedStr = [NSString stringWithFormat:@"%.2f GB", (size / pow(1024, 3))];
    else if (size >= pow(1024, 4))
        formattedStr = [NSString stringWithFormat:@"%.2f TB", (size / pow(1024, 4))];
    	
	return formattedStr;
}

@end
