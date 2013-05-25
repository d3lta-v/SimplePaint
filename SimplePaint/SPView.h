//
//  SPView.h
//  SimplePaint
//
//  Created by Pan Ziyue on 25/5/13.
//  Copyright (c) 2013 Pan Ziyue. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SPView : UIView {
    void *cacheBitmap;
    CGContextRef cacheContext;
    float hue;
    
    CGPoint point0;
    CGPoint point1;
    CGPoint point2;
    CGPoint point3;
}

- (BOOL) initContext:(CGSize)size;
- (void) drawToCache;

@end
