//
//  SHContactController.m
//  Contacts MRC
//
//  Created by Sean Hendrix on 3/6/19.
//  Copyright © 2019 Sean Hendrix. All rights reserved.
//

#import "SHContactController.h"

@implementation SHContactController

- (instancetype)init {
    self = [super init];
    if (self != nil) {
        _contacts = [[NSMutableArray<SHContact *> alloc] init];
    }
    return self;
}

- (void)createContactWithName:(NSString *)name email:(NSString *)email andPhoneNumber:(NSString *)phoneNumber {
    SHContact *contact = [[SHContact alloc] initWithName:name email:email andPhoneNumber:phoneNumber];
    [_contacts addObject:contact];
}

- (void)updateContact:(SHContact *)contact withName:(NSString *)name email:(NSString *)email andPhoneNumber:(NSString *)phoneNumber {
    NSInteger index = [_contacts indexOfObject:contact];
    [_contacts removeObjectAtIndex:index];
    contact.name = name;
    contact.email = email;
    contact.phoneNumber = phoneNumber;
    [_contacts insertObject:contact atIndex:index];
}

@end
