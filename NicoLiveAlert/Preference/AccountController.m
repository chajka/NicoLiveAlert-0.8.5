//
//  AccountController.m
//  NicoLiveAlert
//
//  Created by Чайка on 6/30/15.
//  Copyright (c) 2015 Instrumentality of Mankind. All rights reserved.
//

#import "AccountController.h"
#import "NicoLiveAlertPreferencesDefinitions.h"

@interface AccountController ()

@end

@implementation AccountController
#pragma mark - synthesize properties
#pragma mark - class method
- (id) init
{
	self = [super initWithNibName:AccountsNibName bundle:nil];
	if (self) {
		
	}

	return self;
}// end - (id) init
#pragma mark - constructor / destructor
#pragma mark - override
#pragma mark -
#pragma mark MASPreferencesViewController protocol methods

- (NSString *)identifier
{
	return AccountsIdentifier;
}// end - (NSString *)identifier

- (NSImage *)toolbarItemImage
{
	return [NSImage imageNamed:AccountsIconName];
}// end - (NSImage *)toolbarItemImage

- (NSString *)toolbarItemLabel
{
	return AccountsTitileName;
}// end - (NSString *)toolbarItemLabel

#pragma mark - delegate
#pragma mark - properties
#pragma mark - actions
#pragma mark - messages
#pragma mark - private
#pragma mark - C functions

@end
