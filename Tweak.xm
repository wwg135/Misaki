#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

%hook UILabel

-(void)setText:(NSString *)arg1 {
        if([arg1 isEqualToString:@"Respring"]) {
                arg1 = @"注销";
        }

        if([arg1 isEqualToString:@"Are you sure you want to respring?"]) {
                arg1 = @"你确定要注销设备吗？";
        }

        if([arg1 isEqualToString:@"Yes"]) {
                arg1 = @"确定";
        }

        if([arg1 isEqualToString:@"No"]) {
                arg1 = @"取消";
        }
        
         %orig(arg1);
}
%end
