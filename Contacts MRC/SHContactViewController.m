//
//  SHContactViewController.m
//  Contacts MRC
//
//  Created by Sean Hendrix on 3/6/19.
//  Copyright © 2019 Sean Hendrix. All rights reserved.
//

#import "SHContactViewController.h"

@interface SHContactViewController ()

@end

@implementation SHContactViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        _contact = [[SHContact alloc] init];
        _contactController = [[SHContactController alloc] init];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        _contact = [[SHContact alloc] init];
        _contactController = [[SHContactController alloc] init];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateViews];
    
}

- (void)updateViews {
    _nameTextField.text = _contact.name;
    _emailTextField.text = _contact.email;
    _phoneNumberTextField.text = _contact.phoneNumber;
}

- (IBAction)saveContact:(id)sender {
    NSString *name = _nameTextField.text;
    NSString *email = _emailTextField.text;
    NSString *phoneNumber = _phoneNumberTextField.text;
    
    if ([_segueIdentifier isEqualToString: @"EditContact"]) {
        [_contactController updateContact:_contact withName:name email:email andPhoneNumber:phoneNumber];
    } else {
        [_contactController createContactWithName:name email:email andPhoneNumber:phoneNumber];
    }
    
    [self.navigationController popViewControllerAnimated:YES];
}

@end
