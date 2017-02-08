//
//  WQCalendarTileView.m
//  WQCalendar
//
//  Created by Jason Lee on 14-3-4.
//  Copyright (c) 2014年 Jason Lee. All rights reserved.
//

#import "WQCalendarTileView.h"

@implementation WQCalendarTileView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (id)initWithStyle:(WQCalendarTileStyle)style
{
    self = [super init];
    if (self) {
        [self layoutWithStyle:style];
    }
    return self;
}

/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect
 {
 // Drawing code
 }
 */

#pragma mark -

- (void)layoutWithStyle:(WQCalendarTileStyle)style
{
    switch (style) {
        case kDefaultCalendarTileStyle:
            [self layoutWithDefaultStyle];
            break;
            
        default:
            break;
    }
}

- (void)layoutWithDefaultStyle
{
    self.backgroundColor = [UIColor whiteColor];
    
    self.label = [[UIButton alloc] init];
    [self.label setEnabled:YES];
    [self addSubview:self.label];
    
//    self.label.textAlignment = NSTextAlignmentCenter;
    self.label.backgroundColor = self.backgroundColor;
}

#pragma mark -

- (void)setSelected:(BOOL)selected
{
    static UIColor *selectedColor = nil;
    if (selectedColor == nil) {
        selectedColor = GetColorWithRGB(255, 105, 91);
    }
    
    
    if (selected) {
        self.label.backgroundColor = selectedColor;
    } else {
        self.label.backgroundColor = [UIColor whiteColor];
    }
    _selected = selected;
}

@end
