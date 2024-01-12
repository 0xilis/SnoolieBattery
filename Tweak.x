#import <UIKit/UIKit.h>

%hook _UIBatteryView
-(void)setShowsInlineChargingIndicator:(BOOL)enabled {
    %orig(0);
}
-(void)setShowsPercentage:(bool)arg1 {
    %orig(YES);
}
%end