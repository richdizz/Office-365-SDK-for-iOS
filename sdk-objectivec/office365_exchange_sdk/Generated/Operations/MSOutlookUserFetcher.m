/*******************************************************************************
 * Copyright (c) Microsoft Open Technologies, Inc.
 * All Rights Reserved
 * Licensed under the Apache License, Version 2.0.
 * See License.txt in the project root for license information.
 *
 * Warning: This code was generated automatically. Edits will be overwritten.
 * To make changes to this code, please make changes to the generation framework itself:
 * https://github.com/MSOpenTech/odata-codegen
 *******************************************************************************/

#import "MSOutlookUserFetcher.h"
#import "MSOutlookFolderCollectionFetcher.h"
#import "MSOutlookMessageCollectionFetcher.h"
#import "MSOutlookFolderFetcher.h"
#import "MSOutlookCalendarCollectionFetcher.h"
#import "MSOutlookCalendarFetcher.h"
#import "MSOutlookCalendarGroupCollectionFetcher.h"
#import "MSOutlookEventCollectionFetcher.h"
#import "MSOutlookEventCollectionFetcher.h"
#import "MSOutlookContactCollectionFetcher.h"
#import "MSOutlookContactFolderCollectionFetcher.h"


/**
* The implementation file for type MSOutlookUserFetcher.
*/


@implementation MSOutlookUserFetcher

-(MSOutlookUserOperations*) getOperations{
	return [[MSOutlookUserOperations alloc] initOperationWithUrl:self.UrlComponent parent:self.Parent];
}

-(id)initWithUrl:(NSString*)urlComponent :(id<MSODataExecutable>)parent{
    
    self.Parent = parent;
    self.UrlComponent = urlComponent;
    return [super initWithUrl:urlComponent parent:parent andEntityClass : [MSOutlookUser class]];
}

-(NSURLSessionDataTask*) updateUser:(id)entity withCallback:(void (^)(MSOutlookUser*, MSODataException * error))callback{
	return [super update:entity : callback];
}

-(NSURLSessionDataTask*) deleteUser:(void (^)(int status, MSODataException * error))callback{
	return [super delete:callback];
}


-(MSOutlookFolderCollectionFetcher*) getFolders{
    return [[MSOutlookFolderCollectionFetcher alloc] initWithUrl:@"Folders" parent:self andEntityClass:[MSOutlookFolder class]];
}

-(MSOutlookFolderFetcher*) getFoldersById : (NSString*)_id{
    return [[[MSOutlookFolderCollectionFetcher alloc] initWithUrl:@"Folders" parent:self andEntityClass:[MSOutlookFolder class]] getById:_id];
}

-(MSOutlookMessageCollectionFetcher*) getMessages{
    return [[MSOutlookMessageCollectionFetcher alloc] initWithUrl:@"Messages" parent:self andEntityClass:[MSOutlookMessage class]];
}

-(MSOutlookMessageFetcher*) getMessagesById : (NSString*)_id{
    return [[[MSOutlookMessageCollectionFetcher alloc] initWithUrl:@"Messages" parent:self andEntityClass:[MSOutlookMessage class]] getById:_id];
}

-(MSOutlookFolderFetcher*) getRootFolder{
	 return [[MSOutlookFolderFetcher alloc] initWithUrl:@"RootFolder" parent:self andEntityClass: [MSOutlookFolder class]];
}


-(MSOutlookCalendarCollectionFetcher*) getCalendars{
    return [[MSOutlookCalendarCollectionFetcher alloc] initWithUrl:@"Calendars" parent:self andEntityClass:[MSOutlookCalendar class]];
}

-(MSOutlookCalendarFetcher*) getCalendarsById : (NSString*)_id{
    return [[[MSOutlookCalendarCollectionFetcher alloc] initWithUrl:@"Calendars" parent:self andEntityClass:[MSOutlookCalendar class]] getById:_id];
}

-(MSOutlookCalendarFetcher*) getCalendar{
	 return [[MSOutlookCalendarFetcher alloc] initWithUrl:@"Calendar" parent:self andEntityClass: [MSOutlookCalendar class]];
}


-(MSOutlookCalendarGroupCollectionFetcher*) getCalendarGroups{
    return [[MSOutlookCalendarGroupCollectionFetcher alloc] initWithUrl:@"CalendarGroups" parent:self andEntityClass:[MSOutlookCalendarGroup class]];
}

-(MSOutlookCalendarGroupFetcher*) getCalendarGroupsById : (NSString*)_id{
    return [[[MSOutlookCalendarGroupCollectionFetcher alloc] initWithUrl:@"CalendarGroups" parent:self andEntityClass:[MSOutlookCalendarGroup class]] getById:_id];
}

-(MSOutlookEventCollectionFetcher*) getEvents{
    return [[MSOutlookEventCollectionFetcher alloc] initWithUrl:@"Events" parent:self andEntityClass:[MSOutlookEvent class]];
}

-(MSOutlookEventFetcher*) getEventsById : (NSString*)_id{
    return [[[MSOutlookEventCollectionFetcher alloc] initWithUrl:@"Events" parent:self andEntityClass:[MSOutlookEvent class]] getById:_id];
}

-(MSOutlookEventCollectionFetcher*) getCalendarView{
    return [[MSOutlookEventCollectionFetcher alloc] initWithUrl:@"CalendarView" parent:self andEntityClass:[MSOutlookEvent class]];
}

-(MSOutlookEventFetcher*) getCalendarViewById : (NSString*)_id{
    return [[[MSOutlookEventCollectionFetcher alloc] initWithUrl:@"CalendarView" parent:self andEntityClass:[MSOutlookEvent class]] getById:_id];
}

-(MSOutlookContactCollectionFetcher*) getContacts{
    return [[MSOutlookContactCollectionFetcher alloc] initWithUrl:@"Contacts" parent:self andEntityClass:[MSOutlookContact class]];
}

-(MSOutlookContactFetcher*) getContactsById : (NSString*)_id{
    return [[[MSOutlookContactCollectionFetcher alloc] initWithUrl:@"Contacts" parent:self andEntityClass:[MSOutlookContact class]] getById:_id];
}

-(MSOutlookContactFolderCollectionFetcher*) getContactFolders{
    return [[MSOutlookContactFolderCollectionFetcher alloc] initWithUrl:@"ContactFolders" parent:self andEntityClass:[MSOutlookContactFolder class]];
}

-(MSOutlookContactFolderFetcher*) getContactFoldersById : (NSString*)_id{
    return [[[MSOutlookContactFolderCollectionFetcher alloc] initWithUrl:@"ContactFolders" parent:self andEntityClass:[MSOutlookContactFolder class]] getById:_id];
}

@end