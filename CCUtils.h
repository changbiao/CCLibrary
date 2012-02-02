//
//  CCUtils.h
//  CCLibrary
//
//  Created by Andreas Ganske on 01.02.12.
//  Copyright (c) 2012 Andreas Ganske. All rights reserved.
//

#import <Foundation/Foundation.h>

#define CCLocalized( X ) (NSLocalizedStringFromTableInBundle(@X, nil, [NSBundle bundleForClass:[self class]], nil))

@interface CCUtils : NSObject

@end
