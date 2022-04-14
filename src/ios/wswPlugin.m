/********* wswPlugin.m Cordova Plugin Implementation *******/

#import <Cordova/CDV.h>

@interface wswPlugin : CDVPlugin {
  // Member variables go here.
}
- (void)haha:(CDVInvokedUrlCommand *)command;

- (void)coolMethod:(CDVInvokedUrlCommand*)command;
@end

@implementation wswPlugin
- (void)haha:(CDVInvokedUrlCommand *)command
{
    NSLog(@"333333");
}

- (void)coolMethod:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    NSString* echo = [command.arguments objectAtIndex:0];

    if (echo != nil && [echo length] > 0) {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:echo];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
