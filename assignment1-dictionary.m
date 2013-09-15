/*question-->> create a dictionary to add few values(values are not written). Enumerate this through dictionary and print the values of those keys which end with meter
*/




#import<Foundation/Foundation.h>

int main(int argc, const char* argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    NSDictionary *key_value = [NSDictionary dictionaryWithObjectsAndKeys:
                             [NSNumber numberWithInt:10], @"centimeter(cm)",
                             [NSNumber numberWithInt:40], @"pound",
                              [NSNumber numberWithInt:50], @"ounce",
                              [NSNumber numberWithInt:20], @"kilogram(kg)",
                              [NSNumber numberWithInt:30], @"yard", 
                              [NSNumber numberWithInt:10], @"millimeter(km)", 
                              [NSNumber numberWithInt:20], @"milligram(mg)", 
                              [NSNumber numberWithInt:20], @"gram(g)", 
                              [NSNumber numberWithInt:10], @"Meter(m)", nil];
                                    
                                    
                                    
   int flag=0;//For checking if any key exists ending with meter

   //Enumeration
    for(NSString* key in key_value)
    {
      //Checking for all keys ending with meter in a case-sensitive way.
        if ([key rangeOfString:@"meter" options: NSCaseInsensitiveSearch].location != NSNotFound)
        {  
         if(flag==0) //check condition to print the line only once n only when key ending with meter exists
         {
                NSLog(@"The dictionary keys which end with meter are:\n");
         }
         flag=1; // print all those words ending with meter .
            NSLog(@"Key: %@, Value: %@\n", key, [key_value objectForKey:key]);
        }
   }
   if(flag==0)// for those keys which does not end with meter 
   {
      NSLog(@"No Keys ending with meter");
  }
   
    [pool release];
    return 0;
}


