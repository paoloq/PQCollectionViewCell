//
//  PQCollectionViewCell.m
//  PQCollectionViewCell
//
//  Created by Paolo Arduin on 05/06/13.
//  Copyright (c) 2013 Paolo Arduin. All rights reserved.
//

#import "PQCollectionViewCell.h"

@interface PQCollectionViewCellView : UIView
@end

@implementation PQCollectionViewCellView

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
	if (self) {
		self.contentMode = UIViewContentModeRedraw;
        self.opaque = YES;
	}
	
	return self;
}

- (void)drawRect:(CGRect)rect {
	[(PQCollectionViewCell *)self.superview drawCellView:rect];
}

@end

@interface PQCollectionViewCell ()
@property (strong, readwrite) UIView *cellView;
@end

@implementation PQCollectionViewCell

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
		self.cellView = [[PQCollectionViewCellView alloc] initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.height)];
		[self addSubview:self.cellView];
    }
	
    return self;
}
- (void)setFrame:(CGRect)frame {
	[super setFrame:frame];
    
	self.cellView.frame = self.bounds;
    [self setNeedsDisplay];
}

- (void)setNeedsDisplay {
	[super setNeedsDisplay];
	[self.cellView setNeedsDisplay];
}

- (void)setNeedsDisplayInRect:(CGRect)rect {
	[super setNeedsDisplayInRect:rect];
	[self.cellView setNeedsDisplayInRect:rect];
}

- (void)layoutSubviews {
	[super layoutSubviews];
    
	[self.contentView removeFromSuperview];
    [self.backgroundView removeFromSuperview];
    
    [self bringSubviewToFront:self.selectedBackgroundView];
}

- (void)drawCellView:(CGRect)rect {
	// subclasses should implement this
}

@end
