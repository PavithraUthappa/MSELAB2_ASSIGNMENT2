#import<Foundation/Foundation.h>
#import"TaxProtocol.h"

@interface Bill:NSObject <TaxProtocol>
{
    NSString *type;
    float amount,TaxAmount,TotalAmount;
}
@property float amount,TaxAmount,TotalAmount;
@property (readwrite,retain)NSString *type;
-(void)printTax;



@end