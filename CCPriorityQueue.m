//
//  PriorityQueue.m
//
//  Created by Andreas Ganske on 07.10.11.
//  Copyright 2011 Andreas Ganske. All rights reserved.
//

#import "CCPriorityQueue.h"

@interface CCPriorityQueue()

@property (nonatomic, strong) NSMutableArray *queue;

@end

@implementation CCPriorityQueue

+(id)queue
{
	return [[self alloc] init];
}

-(id)init
{
	if ((self = [super init]))
	{
		self.queue = [[NSMutableArray alloc] init];
	}

	return self;
}

-(void)addObject:(id<CCPriorityObject>)object
{
	for (NSInteger i = 0; i < [self.queue count]; i++)
	{
		id<CCPriorityObject> currentObject = [self.queue objectAtIndex:i];
		if ([currentObject priority] >= [object priority])
		{
			[self.queue insertObject:object atIndex:i];
			return;
		}
	}

	[self.queue insertObject:object atIndex:[self count]];
}

-(id)peekObject
{
	if (![self isEmpty])
		return [self.queue objectAtIndex:0];

	return nil;
}

-(id)pollObject
{
	if (![self isEmpty])
	{
		id object = [self.queue objectAtIndex:0];
		[self.queue removeObjectAtIndex:0];
		return object;
	}

	return nil;
}

-(NSUInteger)count
{
	return [self.queue count];
}

-(BOOL)isEmpty
{
	return [self count] == 0;
}

@end
