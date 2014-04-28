//
//  SKEmitterNode+EmitterFomResourceNamed.h
//  ParticleTest
//
//  Created by John Watson on 4/26/14.
//  Copyright (c) 2014 John Watson. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface SKEmitterNode (EmitterFomResourceNamed)
+ (instancetype)emitterFromResourceNamed:(NSString*)resourceName;
@end
