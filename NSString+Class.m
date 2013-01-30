//
//  NSString+Role.m
//  Werewolf
//
//  Created by Andreas Ganske on 21.09.11.
//  Copyright 2011 Andreas Ganske. All rights reserved.
//

#import "NSString+Class.h"

@implementation NSString (NSString_Class)

-(Class)getClass
{
	return NSClassFromString(self);
}

@end
