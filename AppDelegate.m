#import "AppDelegate.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)notification {
    // Create and configure the window
    self.window = [[NSWindow alloc] initWithContentRect:NSMakeRect(0, 0, 400, 300)
                                            styleMask:NSWindowStyleMaskTitled |
                                                     NSWindowStyleMaskClosable |
                                                     NSWindowStyleMaskMiniaturizable |
                                                     NSWindowStyleMaskResizable
                                              backing:NSBackingStoreBuffered
                                                defer:NO];
    
    // Set window properties
    [self.window setTitle:@"Hello, World!"];
    [self.window center];
    [self.window makeKeyAndOrderFront:nil];
    
    // Prevent the app from terminating when the window closes
    [NSApp setActivationPolicy:NSApplicationActivationPolicyRegular];
    [[NSApplication sharedApplication] activateIgnoringOtherApps:YES];
}

@end 