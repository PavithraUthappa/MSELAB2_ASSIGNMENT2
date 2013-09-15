#import <Foundation/Foundation.h>
#import "CalculateTax.h"
#import "TaxProtocol.h"
#import "Bill.h"

@implementation CalculateTax

-(void)calcTax:(id) b
{
   NSString *type=[[NSString alloc]init];
   type=[b type];  
   if([type isEqualToString:@"Finished_Goods/Exercised_Goods"])
   {  
      
      [b kstCst:b];
      [b printTax];
     
   }
   else if([type isEqualToString:@"Grocery"])
   {
      [b vat:b];
      [b printTax];

   }
}
@end

