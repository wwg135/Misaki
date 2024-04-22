#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

%hook UILabel

-(void)setText:(NSString *)arg1
{
        if([arg1 isEqualToString:@"Respring"])
    {
        arg1 = @"注销";}

        if([arg1 isEqualToString:@"Yes"])
    {
        arg1 = @"确定";}
        
 %orig(arg1);
}

%end
