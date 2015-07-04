//
//  AccountController.m
//  NicoLiveAlert
//
//  Created by Чайка on 6/30/15.
//  Copyright (c) 2015 Instrumentality of Mankind. All rights reserved.
//

#import "AccountController.h"
#import "NicoLiveAlertPreferencesDefinitions.h"
#import "NicoLiveAlertDefinitions.h"
#import "NLAUser.h"

#import "YCHTTPSKeychainItem.h"

@interface AccountController ()

@end

@implementation AccountController
#pragma mark - synthesize properties
#pragma mark - class method
- (id) initWithUsers:(NLAUsers *)users
{
	self = [super initWithNibName:AccountsNibName bundle:nil];
	if (self) {
		watchedUsers = users;
	}// end if self

	return self;
}// end - (id) init
#pragma mark - constructor / destructor
#pragma mark - override
- (void) awakeFromNib
{
	[comboMaladdresses removeAllItems];

	for (NLAUser *user in watchedUsers.users) {
		NSMutableDictionary *entry = [NSMutableDictionary dictionary];
		[entry setValue:[NSNumber numberWithBool:user.watchEnabled] forKey:@"WatchEnabled"];
		[entry setValue:user.userID forKey:@"UserID"];
		[entry setValue:user.nickname forKey:@"Nickname"];
		
		[aryctrlAccounts addObject:entry];
		[comboMaladdresses addItemWithObjectValue:user.account];
	}// end foreach
}// end - (void) awakeFromNib

- (void) controlTextDidEndEditing:(NSNotification *)obj
{
	NSString *mailaddress = [comboMaladdresses stringValue];
	for (NLAUser *user in watchedUsers.users) {
		if ([user.account isEqualToString:mailaddress])
			[txtfldPassword setStringValue:user.password];
	}// end foreach

	if ([[txtfldPassword stringValue] isEqualToString:EmptyString]) {
		YCHTTPSKeychainItem *user = [YCHTTPSKeychainItem userInKeychain:mailaddress forURL:[NSURL URLWithString:NicoLoginFormFQDN]];
		if (user != nil)
			[txtfldPassword setStringValue:user.password];
	}// end if
	
	if (![mailaddress isEqualToString:@""])
		[txtfldPassword setEnabled:YES];
	else
		[txtfldPassword setEnabled:NO];

	if (![[txtfldPassword stringValue] isEqualToString:EmptyString])
		[btnAddAccount setEnabled:YES];
	else
		[btnAddAccount setEnabled:NO];

	if ((![[comboMaladdresses stringValue] isEqualToString:EmptyString]) && (![[txtfldPassword stringValue] isEqualToString:EmptyString]))
		[btnDeleteAccount setEnabled:YES];
	else
		[btnDeleteAccount setEnabled:NO];
}// end - (void) controlTextDidEndEditing:(NSNotification *)obj

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
