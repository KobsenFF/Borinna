//
//  TableViewCell.h
//  Borinna
//
//  Created by Константин Васильев on 04.09.17.
//  Copyright © 2017 Константин Васильев. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIView *view;
@property (weak, nonatomic) IBOutlet UIImageView *image;
@property (weak, nonatomic) IBOutlet UIView *grayView;
@property (weak, nonatomic) IBOutlet UILabel *lblName;
@property (weak, nonatomic) IBOutlet UILabel *lblStatus;
@property (weak, nonatomic) IBOutlet UILabel *lblDate;
@property (weak, nonatomic) IBOutlet UILabel *lblRatingDown;
@property (weak, nonatomic) IBOutlet UILabel *lblRatingUp;
@property (weak, nonatomic) IBOutlet UIImageView *imgRatingDown;
@property (weak, nonatomic) IBOutlet UIImageView *imgRatingUp;
@property (weak, nonatomic) IBOutlet UIImageView *imgFlag;
@property (weak, nonatomic) IBOutlet UILabel *lblMessage;

@end
