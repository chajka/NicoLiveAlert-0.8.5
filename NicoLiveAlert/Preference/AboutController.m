//
//  AboutController.m
//  NicoLiveAlert
//
//  Created by Чайка on 6/30/15.
//  Copyright (c) 2015 Instrumentality of Mankind. All rights reserved.
//

#import "AboutController.h"
#import "NicoLiveAlertPreferencesDefinitions.h"

@interface AboutController ()

@end

@implementation AboutController
#pragma mark - synthesize properties
#pragma mark - class method
- (id) init
{
	self = [super initWithNibName:AboutNibName bundle:nil];
	if (self) {
		
	}// end if

	return self;
}// end - (id) init
#pragma mark - constructor / destructor
#pragma mark - override
#pragma mark -
#pragma mark MASPreferencesViewController protocol methods

- (NSString *)identifier
{
	return AboutIdentifier;
}// end - (NSString *)identifier

- (NSImage *)toolbarItemImage
{
	return [NSImage imageNamed:AboutIconName];
}// end - (NSImage *)toolbarItemImage

- (NSString *)toolbarItemLabel
{
	return AboutTitileName;
}// end - (NSString *)toolbarItemLabel

#pragma mark - delegate
#pragma mark - properties
#pragma mark - actions
#pragma mark - messages
#pragma mark - private
#pragma mark - C functions

@end