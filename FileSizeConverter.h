//
//  FileSizeConverter.h
//  FileSizeConverter_ObjC
//
//  Created by Oguzhan Gungor on 24/04/13.
//  Copyright (c) 2013 Oguzhan Gungor. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FileSizeConverter : NSObject

- (NSString *)convertBytes:(unsigned long long)size;


@end
