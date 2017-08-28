//
//  main.m
//  Day3NSArrayobjectiveC
//
//  Created by Student 09 on 5/24/17.
//  Copyright © 2017 Felix. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       //NSMutable string
        NSMutableString *changebleString=[[NSMutableString alloc]initWithString:@"HELLO IOS"];
        NSLog(@"The string is %@",changebleString);
        
        //Mutable string using factory methods
        NSMutableString *firstString=[NSMutableString stringWithString:@"Hi Objective c !!!"];
        NSLog(@"Using factory Method the String is%@",firstString);
        NSString *str =@"Some String";
        
        //Apply formating using factory method
        NSMutableString *secondString=[NSMutableString stringWithFormat:@"%@",str];
        NSLog(@"With Format String is %@",secondString);
        
        //Append string easy syntax in mutable
        [changebleString appendString:str];
        NSLog(@"Now the changeable string becomes %@",changebleString);
        
        //You Can append with format
        [changebleString appendFormat:@"    %@",str];
        NSLog(@"Now the changeable string becomes %@",changebleString);
        
        //Replacing chars in mutable string
        NSRange range=NSMakeRange(0,11);
        [secondString replaceCharactersInRange:range
        withString:@"IOS DEVELOPMENT"];
        NSLog(@"The Second String is Now %@",secondString);
        
        //NSArray To Collect class.It Contains Objects Only
        //Declaring NSArray
        //1st way using literal syntax
        NSArray *myArrayOfStudents=@[@"Bhavana",@"Lavnya",@"Mahesh",@"Mayur"];
        NSLog(@"Students Array is %@",myArrayOfStudents);
        //Array using single object and factory method
        NSArray *myArray=[NSArray arrayWithObject:@"Some string"];
        NSLog(@"Single Object:%@",myArray);
        
        //NSArray can contain objects from all datatypes.
        //Use of factory method It is not a good practise to alloc unit nsarry
        NSArray *myMixedArray=[NSArray arrayWithObjects:@12,@"Nilima",@123.4555, nil];
        
        //The way to retrive data from NSArray
        NSLog(@"First Way %@",myMixedArray);
        
        //Second Way
        NSLog(@"Using Simple for loop and index the mixed array is");
        for (int i=0; i<myMixedArray.count; i++)
        {
            NSLog(@" %@ ",[myMixedArray objectAtIndex:i]);
        }
        //Third way using fast enumeration .id is universal kind of datatype
        for (id item in myMixedArray)
        {
            NSLog(@"%@",item);
        }
        //For the array contains all strings also i can use
        for (NSString *myString in myArrayOfStudents)
        {
            NSLog(@"%@",myString);
        }
        NSArray *anotherStudentsList =@[@"Mandar",@"Shubham",@"Atish",@"Sanjay",@"Yogesh"];
        
        // NSArray supports nonvoid functions
        //adding objects using factory method
        myArrayOfStudents=[myArrayOfStudents arrayByAddingObjectsFromArray:anotherStudentsList];
        NSLog(@"My Student List Becomes:%@",myArrayOfStudents);
        
        //selector is used to pass the method runtime.Compare is
        //predefined method for sorting .In this way how can i sort NSArray.many compare methods left for you
        myArrayOfStudents=[myArrayOfStudents sortedArrayUsingSelector:@selector(compare:)];
        NSLog(@"Students Array Becomes:%@",myArrayOfStudents);
        
        
        NSString *studentName=@"Atish";
        BOOL present=[myArrayOfStudents containsObject:studentName];
        if(present)
            NSLog(@"Student Present %@",studentName);
        
        
    }
    return 0;
}
