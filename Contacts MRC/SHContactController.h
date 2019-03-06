//
//  SHContactController.h
//  Contacts MRC
//
//  Created by Sean Hendrix on 3/6/19.
//  Copyright © 2019 Sean Hendrix. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SHContact.h"

NS_ASSUME_NONNULL_BEGIN

@interface SHContactController : NSObject

@property NSMutableArray<SHContact *> *contacts;

- (void)createContactWithName: (NSString *)name email: (NSString *)email andPhoneNumber: (NSString *)phoneNumber;
- (void)updateContact: (SHContact *)contact withName: (NSString *)name email: (NSString *)email andPhoneNumber: (NSString *)phoneNumber;

@end

NS_ASSUME_NONNULL_END
