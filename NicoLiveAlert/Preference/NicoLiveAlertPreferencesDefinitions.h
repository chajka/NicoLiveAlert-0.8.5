//
//  NicoLiveAlertPreferencesDefinitions.h
//  NicoLiveAlert
//
//  Created by Чайка on 7/2/15.
//  Copyright (c) 2015 Instrumentality of Mankind. All rights reserved.
//

#ifndef NicoLiveAlert_NicoLiveAlertPreferencesDefinitions_h
#define NicoLiveAlert_NicoLiveAlertPreferencesDefinitions_h

#pragma mark - Watchlist Preference
#define WatchlistIdentifier						@"Watchlist"
#define WatchlistIconName						@"watch"
#define WatchlistTitileName						NSLocalizedString(@"WatchlistTitleName", @"")
#define WatchlistNibName						@"WatchlistController"

#pragma mark - preference key
#define PrefKeyNotifyOfficial					@"NotifyOfficial"
#define PrefkeyNotifyChannel					@"NotifyChannel"

#pragma mark - Accounts Preference
#define AccountsIdentifier						@"Account"
#define AccountsIconName						@"Password"
#define AccountsTitileName						NSLocalizedString(@"PasswordTitleName", @"")
#define AccountsNibName							@"AccountController"

#pragma mark - Collaboration Preference
#define CollaborationIdentifier					@"Collaboration"
#define CollaborationIconName					@"Applications"
#define CollaborationTitileName					NSLocalizedString(@"CollaborationTitleName", @"")
#define CollaborationNibName					@"CollaborationController"

#pragma mark - About Preference
#define AboutIdentifier							@"About"
#define AboutIconName							@"About"
#define AboutTitileName							NSLocalizedString(@"AboutTitleName", @"")
#define AboutNibName							@"AboutController"

#endif
