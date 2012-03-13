//
//  CCUtils.h
//  CCLibrary
//
//  Created by Andreas Ganske on 01.02.12.
//  Copyright (c) 2012 Andreas Ganske. All rights reserved.
//

#import <Foundation/Foundation.h>

#define CCLocalized( X ) (NSLocalizedString(@X, nil))

@interface CCUtils : NSObject

+(CGSize)screenSize:(UIInterfaceOrientation)interfaceOrientation;

+(void)setAssociatedObject:(id)objectA forObject:(id)objectB;
+(id)associatedObjectFor:(id)object;

@end
