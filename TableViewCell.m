//
//  TableViewCell.m
//  Borinna
//
//  Created by Константин Васильев on 04.09.17.
//  Copyright © 2017 Константин Васильев. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    CGFloat radius = _image.frame.size.width/2;
    _image.layer.cornerRadius = radius;
    _grayView.layer.cornerRadius = 3.5f;
    self.view.layer.cornerRadius = 3.5f;
    self.view.clipsToBounds = NO;
    self.view.layer.shadowColor = [[UIColor blackColor] CGColor];
    self.view.layer.shadowOffset = CGSizeMake(0, 6.5);
    _view.layer.shadowOpacity = 0.14;
    CGRect shadowRect = _view.bounds;
    shadowRect.origin.y = shadowRect.origin.y - 4;
    UIBezierPath *shadowPath = [UIBezierPath bezierPathWithRoundedRect:shadowRect cornerRadius:3.5f];
    _view.layer.shadowPath = shadowPath.CGPath;
    _imgFlag.hidden = YES;
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

@end
