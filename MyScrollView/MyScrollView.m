//
//  MyScrollView.m
//  MyScrollView
//
//  Created by Colin on 2018-04-23.
//  Copyright © 2018 Colin Russell. All rights reserved.
//

#import "MyScrollView.h"

@interface MyScrollView ()



@end

@implementation MyScrollView

- (instancetype)init {
    self = [self initWithFrame:CGRectZero];
    if (self) {
        
        UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handlePanGestureRecognizer:)];
        [self addGestureRecognizer:panGesture];
    }
    return self;
}

- (void)handlePanGestureRecognizer:(UIPanGestureRecognizer *)sender {
    CGPoint translationInView = [sender translationInView:self];
    CGRect bounds = self.bounds;
    
    bounds.origin.x-= translationInView.x;
    bounds.origin.y-= translationInView.y;
    if (bounds.origin.y > _contentSize.height) {
        NSLog(@"out of x bounds");
        bounds.origin.y = _contentSize.height;
    }
    if (bounds.origin.x > _contentSize.width){
        bounds.origin.x = _contentSize.width;
    }
    NSLog(@"X:%f,Y:%f", bounds.origin.x, bounds.origin.y);
    if (bounds.origin.x < 0) {
        bounds.origin.x = 0;
    }
    if (bounds.origin.y < 0) {
        bounds.origin.y = 0;
    }
    self.bounds = bounds;
}

@end
