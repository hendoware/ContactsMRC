//
//  SHContact.h
//  Contacts MRC
//
//  Created by Sean Hendrix on 3/6/19.
//  Copyright © 2019 Sean Hendrix. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SHContact : NSObject

@property NSString *name;
@property NSString *email;
@property NSString *phoneNumber;

- (instancetype)initWithName: (NSString *)name email: (NSString *)email andPhoneNumber: (NSString *)phoneNumber;


@end

NS_ASSUME_NONNULL_END
