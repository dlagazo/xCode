//
//  AppDelegate.h
//  HelloWorldCocoa
//
//  Created by Daniel Lagazo on 3/9/14.
//  Copyright (c) 2014 Daniel Lagazo. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>
@property (nonatomic, weak) IBOutlet NSTextField *helloText;
@property (nonatomic, strong) IBOutlet NSTextView *textView;
@property (assign) IBOutlet NSWindow *window;
-(IBAction)helloFromAppDelegate:(id)sender;

@end
