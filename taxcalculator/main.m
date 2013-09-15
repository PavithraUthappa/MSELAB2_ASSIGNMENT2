 #import<Foundation/Foundation.h>
 #import "Bill.h"
 #import "CalculateTax.h"
 #import "TaxProtocol.h"
 int main(int argc,char * argv[])
 {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];     
    Bill *b=[[Bill alloc]init];
    int amount;
    char ch[50];
    NSLog(@"****************************************************************");
    NSLog(@" WELCOME ");
    NSLog(@" Please enter the bill type->>");
    NSLog(@" a)Finished_Goods");
    NSLog(@" b)Grocery");
    scanf("%s",ch);
    NSLog(@"Enter the Bill Amount");
    scanf("%d",&amount);
    NSLog(@" Thank you!!");
    NSLog(@"****************************************************************");
    NSString *type = [NSString stringWithUTF8String:ch]; // to convert the input to c defined data type
    [b setType:type];
    [b setAmount:amount];
    CalculateTax *c=[[CalculateTax alloc]init];
    [c calcTax:b];
    [type release];
    [b release];
    [c release];
    [pool drain];
    return 0;
}
    
