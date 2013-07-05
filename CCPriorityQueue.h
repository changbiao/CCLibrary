//
//  PriorityQueue.h
//
//  Created by Andreas Ganske on 07.10.11.
//  Copyright 2011 Andreas Ganske. All rights reserved.
//

@protocol CCPriorityObject

-(NSUInteger)priority;

@end

@interface CCPriorityQueue : NSObject

+(id)queue;

-(void)addObject:(id<CCPriorityObject>)object;
-(id)peekObject;
-(id)pollObject;

-(NSUInteger)count;
-(BOOL)isEmpty;

@end
