//
//  UIDebuggerOverlayer.m
//  TimeDot
//
//  Created by ws on 2017/5/27.
//  Copyright © 2017年 ws. All rights reserved.
//

#import "UIDebuggerOverlayer.h"

@implementation UIDebuggerOverlayer

+ (void)show {
    
    Class DebuggerOverLayerClass = NSClassFromString(@"UIDebuggingInformationOverlay");
    id overLayerClass = [DebuggerOverLayerClass performSelector:NSSelectorFromString(@"prepareDebuggingOverlay")];
    id overLayer = [DebuggerOverLayerClass performSelector:NSSelectorFromString(@"overlay")];
    [overLayer performSelector:NSSelectorFromString(@"toggleVisibility")];
}

@end
