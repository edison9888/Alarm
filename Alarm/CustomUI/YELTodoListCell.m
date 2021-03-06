//
//  YELTodoListCell.m
//  Alarm
//
//  Created by YY on 13-7-20.
//  Copyright (c) 2013年 Ye Erliang. All rights reserved.
//

#import "YELTodoListCell.h"
#define TITLESIZE_TOP 5
#define NAME_TOP 2
#define NAMESIZE 20
#define TIME_TOP 2
#define TIME 20
#define TIMEBOTTOM 5
#define CELL 2
@implementation YELTodoListCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        UIImage *image=[UIImage imageNamed:@"16.png"];
        _backImageView=[[UIImageView alloc]initWithImage:[image stretchableImageWithLeftCapWidth:60 topCapHeight:10]];
        [self.contentView addSubview:_backImageView];
        
        _titleLabel = [[UILabel alloc]initWithFrame:CGRectZero];
        [_titleLabel setBackgroundColor:[UIColor clearColor]];
        [_titleLabel setLineBreakMode:NSLineBreakByCharWrapping];
        [_titleLabel setFont:[UIFont systemFontOfSize:17.0f]];
        [_titleLabel setNumberOfLines:0];
        [self.contentView addSubview:_titleLabel];
        
        _nameLabel=[[UILabel alloc]initWithFrame:CGRectZero];
        [_nameLabel setBackgroundColor:[UIColor clearColor]];
        [_nameLabel setFont:[UIFont systemFontOfSize:15.0f]];
        [self.contentView addSubview:_nameLabel];
        
        _timeLabel = [[ UILabel alloc]initWithFrame:CGRectZero];
        [_timeLabel setBackgroundColor:[UIColor clearColor]];
        [_timeLabel setFont:[UIFont systemFontOfSize:15.0f]];
        [self.contentView addSubview:_timeLabel];
        
        UIImage *timeImage=[UIImage imageNamed:@"timeImageView.png"];
        _timeImageView=[[UIImageView alloc]initWithImage:timeImage];
        _timeImageView.frame=CGRectMake(23, 10, timeImage.size.width, timeImage.size.height);
        [self.contentView addSubview:_timeImageView];
        
        _leftTimeLabel=[[UILabel alloc]initWithFrame:CGRectMake(10, _timeImageView.frame.size.height+_timeImageView.frame.origin.y+10, 50, 20)];
        [_leftTimeLabel setAdjustsFontSizeToFitWidth:YES];
        [_leftTimeLabel setBackgroundColor:[UIColor clearColor]];
        [self.contentView addSubview:_leftTimeLabel];

    }
    return self;
}
-(void)prepareForReuse
{
    [super prepareForReuse];
    _timeLabel.text=nil;
    _nameLabel.text=nil;
    _titleLabel.text=nil;
    _leftTimeLabel.text=nil;
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
+(NSUInteger)neededHeightForCell:(NSString *)description
{
    CGSize size=[description sizeWithFont:[UIFont systemFontOfSize:17.0] constrainedToSize:CGSizeMake(225, MAXFLOAT) lineBreakMode:NSLineBreakByCharWrapping];
    return TITLESIZE_TOP+size.height+NAME_TOP+NAMESIZE+TIME_TOP+TIME+TIMEBOTTOM+CELL+CELL;
}
+ (NSUInteger)neededHeightForDescription:(NSString *)description
{
    CGSize size=[description sizeWithFont:[UIFont systemFontOfSize:17.0] constrainedToSize:CGSizeMake(225, MAXFLOAT) lineBreakMode:NSLineBreakByCharWrapping];
    return size.height;
}
@end
