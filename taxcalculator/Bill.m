#import <Foundation/Foundation.h>
#import "Bill.h"

@implementation Bill

@synthesize amount,TaxAmount,TotalAmount,type;

-(void) printTax
{
    NSLog(@"Bill amount entered for a product is ->> %.2f",amount);
    NSLog(@"Bill type opted by the user is ->> %@",type);// bill type is either grocery or finished/exercised goods
    NSLog(@"The tax amount on purchased goods of the user is : %.2f",TaxAmount);
    NSLog(@"Total calculated amount : %.2f",TotalAmount);//i.e, amount of good purchased + tax on dat particular good 
    
}
-(void)vat:(id) b       
{
   float vat=0.08;
    
   TotalAmount =amount+amount*vat;
   TaxAmount=amount*vat;
}

-(void)kstCst:(id) b        // procedure to calculate kst and cst for finished /exercised products
{
   float kst=0.14;
   float cst=0.04;
   
    
   TotalAmount=amount+amount*kst;
   TaxAmount=amount*kst;
   
   TotalAmount=TotalAmount+TotalAmount*cst;
   TaxAmount=TaxAmount+TaxAmount*cst;
}


@end
