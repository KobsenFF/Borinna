//
//  ViewController.m
//  Borinna
//
//  Created by Константин Васильев on 04.09.17.
//  Copyright © 2017 Константин Васильев. All rights reserved.
//

#import "ViewController.h"
#import "ChatsView.h"
#import "AuthViewController.h"

@interface ViewController () 
@property (strong, nonatomic) IBOutlet ChatsView *chatsView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
        
}
- (IBAction)burgerClick:(id)sender
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    AuthViewController *authViewController = (AuthViewController *)[storyboard  instantiateViewControllerWithIdentifier:@"AuthViewController"];
    
    authViewController.navigationController.navigationBarHidden = YES;
    [self.navigationController showViewController:authViewController sender:self];
}



@end
