//
//  HelloWorldLayer.m
//  cocos2dSimpleAnimation
//
//  Created by Fernando Ribeiro on 1/13/11.
//  Copyright Gonow Tecnologia 2011. All rights reserved.
//

// Import the interfaces
#import "HelloWorldScene.h"

// HelloWorld implementation
@implementation HelloWorld

+(id) scene
{
	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	HelloWorld *layer = [HelloWorld node];
	
	// add layer as a child to scene
	[scene addChild: layer];
	
	// return the scene
	return scene;
}

// on "init" you need to initialize your instance
-(id) init
{
	// always call "super" init
	// Apple recommends to re-assign "self" with the "super" return value
	if( (self=[super init] )) {
		CGSize size = [[CCDirector sharedDirector] winSize];
		CCSprite *cocos = [CCSprite spriteWithFile:@"icon.png"];
		cocos.position = ccp(size.width/2,size.height/2);
		id move_down = [CCMoveTo actionWithDuration:1.0f position:ccp(size.width/2,(size.height/2)-100)];
		id move_up = [CCMoveTo actionWithDuration:2.0f position:ccp(size.width/2,(size.height/2)+100)];
		id move_center = [CCMoveTo actionWithDuration:1.0f position:ccp(size.width/2,size.height/2)];
		id move_left = [CCMoveTo actionWithDuration:1.0f position:ccp((size.width/2)-100,size.height/2)];
		id move_righ = [CCMoveTo actionWithDuration:2.0f position:ccp((size.width/2)+100,size.height/2)];
		
		id sequence = [CCSequence actions:move_down,move_up,move_center,move_left,move_righ,move_center,nil];
		id repeat = [CCRepeatForever actionWithAction:sequence];
		[cocos runAction:repeat];
		[self addChild:cocos];
	}
	return self;
}

// on "dealloc" you need to release all your retained objects
- (void) dealloc
{
	// in case you have something to dealloc, do it in this method
	// in this particular example nothing needs to be released.
	// cocos2d will automatically release all the children (Label)
	
	// don't forget to call "super dealloc"
	[super dealloc];
}
@end
