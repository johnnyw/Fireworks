//
//  MyScene.m
//  Fireworks
//
//  Created by John Watson on 4/27/14.
//  Copyright (c) 2014 John Watson. All rights reserved.
//

#import "FireworksScene.h"
#import "FireworkNode.h"

@implementation FireworksScene

-(id)initWithSize:(CGSize)size {    
    if (self = [super initWithSize:size]) {
        self.backgroundColor = [SKColor blackColor];
        SKAction *sequence = [SKAction sequence:@[[SKAction performSelector:@selector(addFirework) onTarget:self], [SKAction waitForDuration:1.5 withRange:0.5]]];
        [self runAction:[SKAction repeatActionForever:sequence]];
        
        SKSpriteNode *fog = [SKSpriteNode spriteNodeWithImageNamed:@"fog"];
        fog.name = @"fog";
        fog.zPosition = 2;
        fog.size = size;
        fog.color = [SKColor clearColor];
        fog.colorBlendFactor = 1;
        fog.position = CGPointMake(CGRectGetMidX(self.frame),
                                   CGRectGetMidY(self.frame));
        
        [self addChild:fog];
    }
    return self;
}

- (void)addFirework
{
    FireworkNode *node = [[FireworkNode alloc] initWithSceneBounds:self.size];
    node.zPosition = 1;
    [self addChild:node];
}

@end
