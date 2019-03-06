//
//  SHContact.m
//  Contacts MRC
//
//  Created by Sean Hendrix on 3/6/19.
//  Copyright © 2019 Sean Hendrix. All rights reserved.
//

#import "SHContact.h"

@implementation SHContact

- (instancetype)initWithName:(NSString *)name email:(NSString *)email andPhoneNumber:(NSString *)phoneNumber {
    self = [super init];
    
    if (self != nil) {
        _name = name;
        _email = email;
        _phoneNumber = phoneNumber;
    }
    return self;
}

@end
