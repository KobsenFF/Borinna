//
//  ChatsView.h
//  Borinna
//
//  Created by Константин Васильев on 05.09.17.
//  Copyright © 2017 Константин Васильев. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ChatsView : UIView
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UIButton *button;
@property (weak, nonatomic) IBOutlet UIView *headerView;
@end
