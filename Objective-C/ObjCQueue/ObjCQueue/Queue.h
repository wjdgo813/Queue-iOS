//
//  Queue.h
//  ObjCQueue
//
//  Created by Haehyeon Jeong on 2018. 4. 4..
//  Copyright © 2018년 Haehyeon Jeong. All rights reserved.
//

#import <Foundation/Foundation.h>


/*
 최대 10개의 데이터를 갖는 Queue
 */
@interface Queue : NSObject

@property (nonatomic,strong) NSMutableArray *array;
-(BOOL)isEmpty;
-(NSUInteger)count;
-(void)enqueue:(id)element;
-(id)dequeue;
-(id)getFirstElement;

@end
