//
//  MyUniversalAccessHelper.m
//  Zephyros
//
//  Created by Steven Degutis on 3/1/13.
//  Copyright (c) 2013 Steven Degutis. All rights reserved.
//

#import "PHUniversalAccessHelper.h"

@implementation PHUniversalAccessHelper

+ (void)complainIfNeeded {
    id key = (__bridge id)(kAXTrustedCheckOptionPrompt);
    CFDictionaryRef options = (__bridge CFDictionaryRef)@{key: @YES};
    Boolean enabled = AXIsProcessTrustedWithOptions(options);

    if (!enabled) {
        NSRunAlertPanel(@"Enable Accessibility First",
                        @"Find the little popup right behind this one, click \"Open System Preferences\" and enable Phoenix. Then launch Phoenix again.",
                        @"Quit",
                        nil,
                        nil);
        [NSApp terminate:self];
    }
}

@end
