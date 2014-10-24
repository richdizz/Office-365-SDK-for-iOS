/*******************************************************************************
 * Copyright (c) Microsoft Open Technologies, Inc.
 * All Rights Reserved
 * See License.txt in the project root for license information.
 ******************************************************************************/


#import <Foundation/Foundation.h>
#import "MSProtocols.h"


/**
* The header for type KeyCredential.
*/

@interface MSKeyCredential : NSObject
@property NSString *$$__ODataType;
@property NSData *customKeyIdentifier;
@property NSDate *endDate;
@property NSString *keyId;
@property NSDate *startDate;
@property NSString *type;
@property NSString *usage;
@property NSData *value;

@end