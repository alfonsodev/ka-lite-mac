//
//  AppDelegate.m
//  ka-lite-desktop
//
//  Created by Alfonso Fernandez on 1/27/13.
//  Copyright (c) 2013 ka-lite. All rights reserved.
//
//#import "webberAppDelegate.h"
#import "AppDelegate.h"

@implementation AppDelegate
@synthesize window;
@synthesize webView;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
}


- (void)awakeFromNib
{
    NSString *resourcesPath = [[NSBundle mainBundle] resourcePath];
	NSString *startCommand = [NSString stringWithFormat:@"%@/%@", resourcesPath, @"ka-lite/start.sh"];
    system([startCommand cStringUsingEncoding:NSASCIIStringEncoding]);
    NSString *urlStirng = @"http://127.0.0.1:8008";
    [[webView mainFrame] loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString: urlStirng]]];
}

- (void)windowWillClose:(NSNotification *)aNotification {
    NSString *resourcesPath = [[NSBundle mainBundle] resourcePath];
	NSString *startCommand = [NSString stringWithFormat:@"%@/%@", resourcesPath, @"ka-lite/stop.sh"];
    system([startCommand cStringUsingEncoding:NSASCIIStringEncoding]);
}

@end
