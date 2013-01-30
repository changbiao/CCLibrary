//
//  CCSingleton.m
//
//  Created by Andreas Ganske on 15.10.12.
//
//

#import "CCSingleton.h"

@implementation CCSingleton

static id _shared = nil;

+(id)shared
{
	NSString *className = NSStringFromClass(self);

	if (!_shared)
		_shared = [[NSMutableDictionary alloc] init];

	id instance = [_shared objectForKey:className];

	if (!instance)
	{
		instance = [[self alloc] init];
		[_shared setObject:instance forKey:className];
	}

	return instance;
}

+(void)init
{
	[self shared];
}

@end