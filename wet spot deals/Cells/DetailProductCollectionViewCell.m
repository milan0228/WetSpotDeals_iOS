//
//  DetailProductCollectionViewCell.m
//  wet spot deals
//
//  Created by KOMI Marketing on 24/04/15.
//  Copyright (c) 2015 KOMI Marketing All rights reserved.
//

#import "DetailProductCollectionViewCell.h"

@implementation DetailProductCollectionViewCell


-(void) setRate:(float)rate{
    UIImage * enableStar = [UIImage imageNamed:@"star_enable_item_wetspotdepot.png"];
    UIImage * disableStar = [UIImage imageNamed:@"star_disable_item_wetspotdepot.png"];
    
    for (id star in _stars) {
        [star setImage:disableStar];
    }
    
    if (rate >= 1) {
        [[_stars objectAtIndex:0] setImage:enableStar];
    }
    if (rate >= 2) {
        [[_stars objectAtIndex:1] setImage:enableStar];
    }
    if (rate >= 3) {
        [[_stars objectAtIndex:2] setImage:enableStar];
    }
    if (rate >= 4) {
        [[_stars objectAtIndex:3] setImage:enableStar];
    }
    if (rate >= 5) {
        [[_stars objectAtIndex:4] setImage:enableStar];
    }
    //    NSLog(@"%@",[NSString stringWithFormat:@"%.2f",rate]);
    _rateTxt.text = [NSString stringWithFormat:@"%.1f",rate];
}

- (IBAction)addReview:(id)sender {
    [self.delegate addReview];
}

- (IBAction)shareReview:(id)sender {
    [self.delegate shareReview];
}

@end
