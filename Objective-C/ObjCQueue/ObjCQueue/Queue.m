//
//  Queue.m
//  ObjCQueue
//
//  Created by Haehyeon Jeong on 2018. 4. 4..
//  Copyright © 2018년 Haehyeon Jeong. All rights reserved.
//

#import "Queue.h"

@implementation Queue

-(id)init{
    if (self = [super init]) {
        self.array = [[NSMutableArray alloc]init];
    }
    return self;
}


-(NSUInteger)count{
    return self.array.count;
}

-(id)getFirstElement{
    if([self count] > 0){
        return [self.array objectAtIndex:0];
    }
    return nil;
}

-(id)dequeue{
    if ([self count] > 0) {
        id object = [self getFirstElement];
        [self.array removeObjectAtIndex:0];
        return object;
    }
    return nil;
}

-(void)enqueue:(id)element{
    if([self count] >= 10){
        [self dequeue];
    }
    [self.array addObject:element];
}

-(BOOL)isEmpty{
    return self.array.count == 0;
}

/*
-(BOOL)isEmpty;
-(int)count;
-(void)enqueue:(id)element;
-(id)dequeue;
-(id)getFirstElement;
*/
@end
