//: Playground - noun: a place where people can play

import UIKit

/*
 최대 10개의 데이터를 갖는 Queue
 */

public struct Queue<T> {
    fileprivate var array = [T]()
    
    public var isEmpty:Bool{
        return array.isEmpty
    }
    
    public var count:Int{
        return array.count
    }
    
    //max 10개 유지
    public mutating func enqueue(_ element:T){
        if array.count >= 10 {
            dequeue()
            array.append(element)
        }else{
            array.append(element)
        }
    }
    
    public mutating func dequeue()->T?{
        if isEmpty {
            return nil
        }else{
            return array.removeFirst()
        }
    }
    
    public var front:T? {
        return array.first
    }
}

//Queue 생성
var queueOfNames = Queue(array: [1,2,3,4,5,6,7])

//Queue 추가
queueOfNames.enqueue(8)
print(queueOfNames.array)

//Queue dequeue
queueOfNames.dequeue() //첫번쨰 요소 return
print(queueOfNames.array)

queueOfNames.enqueue(9)
queueOfNames.enqueue(10)
queueOfNames.enqueue(11)
queueOfNames.enqueue(12)
queueOfNames.enqueue(13)
queueOfNames.enqueue(14)

print(queueOfNames.array)



