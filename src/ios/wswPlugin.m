#import "wswPlugin.h"

@implementation wswPlugin

- (void)pluginInitialize {
    NSLog(@"3啦啦啦啦啦啦啦");
}


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
