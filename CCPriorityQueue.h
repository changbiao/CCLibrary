//
//  PriorityQueue.h
//
//  Created by Andreas Ganske on 07.10.11.
//  Copyright 2011 Andreas Ganske. All rights reserved.
//

@interface CCPriorityObject : NSObject

+(id)objectWithObject:(id)anObject priority:(NSInteger)aPriority;
-(id)initWithObject:(id)anObject priority:(NSInteger)aPriority;

@end

@interface CCPriorityQueue : NSObject

+(id)queue;

-(void)addObject:(id)object priority:(NSInteger)priority;
-(id)peekObject;
-(id)pollObject;

-(NSInteger)count;
-(BOOL)isEmpty;

@end
