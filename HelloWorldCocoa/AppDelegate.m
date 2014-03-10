//
//  AppDelegate.m
//  HelloWorldCocoa
//
//  Created by Daniel Lagazo on 3/9/14.
//  Copyright (c) 2014 Daniel Lagazo. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize helloText;
@synthesize textView;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

-(IBAction)helloFromAppDelegate:(id)sender{
    NSLog(@"Hello from App Delegate");
    //[helloText setStringValue:@"Hello world from code"];
    
    NSHTTPURLResponse* urlResponse = nil;
    NSError *error = [[NSError alloc] init];
    
    //NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL:[NSURL URLWithString:[NSString stringWithUTF8String:"http://washere.azurewebsites.net/api/ProfileAPI/639399208247"]]];
    
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL:[NSURL URLWithString:[helloText stringValue]]];
    
    [request setHTTPMethod:@"GET"];
    [request setValue:@"application/json" forHTTPHeaderField:@"Accept"];
    
    NSData *returnData = [NSURLConnection sendSynchronousRequest:request returningResponse:&urlResponse
                                                           error:&error];
    NSString *responseBody = [[NSString alloc] initWithData:returnData encoding:NSUTF8StringEncoding];
    
    int responseCode = [urlResponse statusCode];
    int errorCode = [error code];
    
    NSLog(@"Response Code:%i", responseCode);
    NSLog(@"Error Code: %i", errorCode);
    NSLog(responseBody);
    
    [textView setString:responseBody];
    
}



@end
