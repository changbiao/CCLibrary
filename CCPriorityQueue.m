//
//  PriorityQueue.m
//
//  Created by Andreas Ganske on 07.10.11.
//  Copyright 2011 Andreas Ganske. All rights reserved.
//

#import "CCPriorityQueue.h"

@interface CCPriorityObject()

@property (nonatomic, retain) id object;
@property (nonatomic, assign) NSInteger priority;

@end

@implementation CCPriorityObject

+(id)objectWithObject:(id)anObject priority:(NSInteger)aPriority
{
	return [[self alloc] initWithObject:anObject priority:aPriority];
}

-(id)initWithObject:(id)anObject priority:(NSInteger)aPriority
{
	if ((self = [super init]))
	{
		self.object = anObject;
		self.priority = aPriority;
	}
	return self;
}

-(void)dealloc
{
	self.object = nil;
}

@end

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

-(void)addObject:(id)object priority:(NSInteger)priority
{
	[self addObject:[CCPriorityObject objectWithObject:object priority:priority]];
}

-(void)addObject:(CCPriorityObject *)object
{
	for (NSInteger i = 0; i < [self.queue count]; i++)
	{
		CCPriorityObject *currentObject = [self.queue objectAtIndex:i];
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
		return [[self.queue objectAtIndex:0] object];

	return nil;
}

-(id)pollObject
{
	if (![self isEmpty])
	{
		id object = [[self.queue objectAtIndex:0] object];
		[self.queue removeObjectAtIndex:0];
		return object;
	}

	return nil;
}

-(NSInteger)count
{
	return [self.queue count];
}

-(BOOL)isEmpty
{
	return [self count] == 0;
}

@end
