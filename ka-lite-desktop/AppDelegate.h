//
//  AppDelegate.h
//  ka-lite-desktop
//
//  Created by Alfonso Fernandez on 1/27/13.
//  Copyright (c) 2013 ka-lite. All rights reserved.
//
#import <Cocoa/Cocoa.h>
#import <WebKit/WebKit.h>

@interface AppDelegate : NSObject  {
	NSWindow *window;
	IBOutlet WebView *webView;
}

@property (assign) IBOutlet NSWindow *window;
@property (nonatomic, retain) IBOutlet WebView *webView;

@end