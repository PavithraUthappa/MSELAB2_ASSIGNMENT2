#import <Foundation/Foundation.h>
@protocol TaxProtocol <NSObject>

-(void)kstCst:(id)b;// for finished goods its either kst or Cst
-(void)vat:(id)b; // for grocery products tax s calculates as "VAT"

@end