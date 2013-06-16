//
//  PQCollectionViewCell.h
//  PQCollectionViewCell
//
//  Created by Paolo Arduin on 05/06/13.
//  Copyright (c) 2013 Paolo Arduin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PQCollectionViewCell : UICollectionViewCell

@property (strong, readonly) UIView *cellView;

- (void)drawCellView:(CGRect)rect;

@end
