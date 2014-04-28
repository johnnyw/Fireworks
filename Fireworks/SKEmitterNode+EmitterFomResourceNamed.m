//
//  SKEmitterNode+EmitterFomResourceNamed.m
//  ParticleTest
//
//  Created by John Watson on 4/26/14.
//  Copyright (c) 2014 John Watson. All rights reserved.
//

#import "SKEmitterNode+EmitterFomResourceNamed.h"

@implementation SKEmitterNode (EmitterFomResourceNamed)

+ (instancetype)emitterFromResourceNamed:(NSString*)resourceName
{
    return [NSKeyedUnarchiver unarchiveObjectWithFile:[[NSBundle mainBundle] pathForResource:resourceName ofType:@"sks"]];
}

@end
