//
//  PHMousePosition.h
//  Phoenix
//
//  Created by Steven Degutis on 3/24/14.
//  Copyright (c) 2014 Steven. All rights reserved.
//

@class PHMousePosition;

@protocol PHMousePositionJSExport <JSExport>

+ (NSPoint) capture;
+ (void) restore:(NSPoint)p;

@end

@interface PHMousePosition : NSObject <PHMousePositionJSExport>
@end
