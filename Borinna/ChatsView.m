//
//  ChatsView.m
//  Borinna
//
//  Created by Константин Васильев on 05.09.17.
//  Copyright © 2017 Константин Васильев. All rights reserved.
//

#import "ChatsView.h"
#import "TableViewCell.h"

@interface ChatsView () <UITableViewDelegate, UITableViewDataSource>

@end

@implementation ChatsView

- (void)didMoveToSuperview
{
    [self initView];
}

- (void)initView
{
    UILabel * buttonLabel = [[UILabel alloc]initWithFrame:CGRectMake(76.5f, 14.0f, 110.0f, 13.0f)];
    buttonLabel.text = @"Создать заявку";
    buttonLabel.textColor = [UIColor whiteColor];
    buttonLabel.font = [UIFont systemFontOfSize:14.0f];
    [_button addSubview:buttonLabel];
    
    UIImageView * plusImgView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"plus"]];
    plusImgView.frame = CGRectMake(53.5f, 13.5f, 14.0f, 14.0f);
    [_button addSubview:plusImgView];
    
    _button.layer.cornerRadius = 10.0f;
    
    UILabel * headerLabel = [[UILabel alloc]initWithFrame:CGRectMake(13.0f, _headerView.frame.size.height/2-6, 130.0f, 12.0f)];
    headerLabel.text = @"Показать сообщения";
    headerLabel.textColor = [UIColor whiteColor];
    headerLabel.font = [UIFont systemFontOfSize:12.0f];
    [_headerView addSubview:headerLabel];
    
    UISegmentedControl * headerSwitch = [[UISegmentedControl alloc]initWithFrame:CGRectMake(151.0f, _headerView.frame.size.height/2-14, 211.5f, 27.5f)];
    [headerSwitch insertSegmentWithTitle:@"Новые" atIndex:0 animated:YES];
    [headerSwitch insertSegmentWithTitle:@"Все" atIndex:1 animated:YES];
    [headerSwitch setBackgroundImage:[UIImage imageNamed:@"switch"] forState:UIControlStateSelected barMetrics:UIBarMetricsDefault];
    headerSwitch.selectedSegmentIndex = 1;
    headerSwitch.layer.backgroundColor = [[UIColor colorWithRed:255.0f green:255.0f blue:255.0f alpha:0]CGColor];
    headerSwitch.layer.cornerRadius = 3.5f;
    headerSwitch.layer.borderWidth = 1.0f;
    headerSwitch.layer.borderColor = [[UIColor colorWithRed:255.0f green:255.0f blue:255.0f alpha:0.2]CGColor];
    [headerSwitch setTintColor:[UIColor colorWithRed:255.0f green:255.0f blue:255.0f alpha:1]];
    [_headerView addSubview:headerSwitch];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 4;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    TableViewCell * cell = nil;
    cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    if(!cell){
        cell = [[TableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"Cell"];
        
    }
    
    if (indexPath.row == 2)
    {
        cell.lblName.text = @"Администратор";
        cell.lblName.textColor = [UIColor redColor];
        cell.imgFlag.hidden = NO;
        
    }
    return cell;
}


@end
