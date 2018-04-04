//
//  ViewController.m
//  ObjCQueue
//
//  Created by Haehyeon Jeong on 2018. 4. 4..
//  Copyright © 2018년 Haehyeon Jeong. All rights reserved.
//

#import "ViewController.h"
#import "Queue.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Queue *myQueue = [[Queue alloc] init];
    [myQueue.array addObjectsFromArray:@[@1,@2,@3,@4,@5,@6,@7]];
    
    //print : (1,2,3,4,5,6,7)
    NSLog(@"myQueue data : %@",myQueue.array);
    
    [myQueue enqueue:[[NSNumber alloc] initWithInt:8]];
    [myQueue dequeue];
    
    //print : (2,3,4,5,6,7,8)
    NSLog(@"myQueue data : %@",myQueue.array);
    
    [myQueue enqueue:[[NSNumber alloc] initWithInt:9]];
    [myQueue enqueue:[[NSNumber alloc] initWithInt:10]];
    [myQueue enqueue:[[NSNumber alloc] initWithInt:11]];
    [myQueue enqueue:[[NSNumber alloc] initWithInt:12]];
    [myQueue enqueue:[[NSNumber alloc] initWithInt:13]];
    [myQueue enqueue:[[NSNumber alloc] initWithInt:14]];
    
    //print : (5,6,7,8,9,10,11,12,13,14)
    NSLog(@"myQueue data : %@",myQueue.array);
    
}





@end
