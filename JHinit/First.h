//
//  First.h
//  JHinit
//
//  Created by Josue Hernandez Gonzalez on 10/8/16.
//  Copyright © 2016 Josue Hernandez Gonzalez. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface First : NSObject

@property (strong, nonatomic) NSString *dato;

-(void)initObject;
-(void)showMessageInTerminal:(NSString *)message;

@end
