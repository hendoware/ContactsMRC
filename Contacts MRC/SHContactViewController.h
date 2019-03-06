//
//  SHContactViewController.h
//  Contacts MRC
//
//  Created by Sean Hendrix on 3/6/19.
//  Copyright © 2019 Sean Hendrix. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SHContact.h"
#import "SHContactController.h"

NS_ASSUME_NONNULL_BEGIN

@interface SHContactViewController : UIViewController

@property SHContact *contact;
@property SHContactController *contactController;
@property NSString *segueIdentifier;

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *emailTextField;
@property (weak, nonatomic) IBOutlet UITextField *phoneNumberTextField;

- (IBAction)saveContact:(id)sender;

@end

NS_ASSUME_NONNULL_END
