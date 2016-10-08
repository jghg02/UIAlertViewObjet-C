//
//  First.m
//  JHinit
//
//  Created by Josue Hernandez Gonzalez on 10/8/16.
//  Copyright © 2016 Josue Hernandez Gonzalez. All rights reserved.
//

#import "First.h"


@implementation First

-(void)initObject{
	NSLog(@"Init First : NSObject!!!");
}

-(void)showMessageInTerminal:(NSString *)message{
	NSLog(@"[This is the message from ViewController] --> \n %@",message);
}

@end
