#import "AppDelegate.h"
#import "dyld_validation_check.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    init_bypassDyldLibValidation();
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor systemBackgroundColor];
    
    // ui later
    
    [self.window makeKeyAndVisible];
    return YES;
}

@end