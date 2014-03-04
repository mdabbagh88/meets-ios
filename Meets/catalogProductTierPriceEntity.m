//------------------------------------------------------------------------------
// <wsdl2code-generated>
// This code was generated by http://www.wsdl2code.com iPhone version 1.5
// Date Of Creation: 11/5/2013 1:51:25 PM
//
//  Please dont change this code, regeneration will override your changes
//</wsdl2code-generated>
//
//------------------------------------------------------------------------------
//
//This source code was auto-generated by Wsdl2Code Version
//

#import "catalogProductTierPriceEntity.h" 


@implementation catalogProductTierPriceEntity

-(id)initWithArray:(NSArray*)array {
    self = [super init];
    if (self) {
        @try {
            for (int i0 = 0; i0 < [array count]; i0++)
            {
                if ( ([[array objectAtIndex:i0] objectForKey:@"nodeContent"] !=nil) &&  ([[[array objectAtIndex:i0]objectForKey:@"nodeName"]caseInsensitiveCompare:@"customer_group_id"]==NSOrderedSame)){
                    NSString* nodeContentValue = [[NSString alloc] initWithString:[[array objectAtIndex:i0] objectForKey:@"nodeContent"]];
                    if (nodeContentValue !=nil)
                        [self setCustomer_group_id:nodeContentValue];
                }
                else if ( ([[array objectAtIndex:i0] objectForKey:@"nodeContent"] !=nil) &&  ([[[array objectAtIndex:i0]objectForKey:@"nodeName"]caseInsensitiveCompare:@"website"]==NSOrderedSame)){
                    NSString* nodeContentValue = [[NSString alloc] initWithString:[[array objectAtIndex:i0] objectForKey:@"nodeContent"]];
                    if (nodeContentValue !=nil)
                        [self setWebsite:nodeContentValue];
                }
                else if ( ([[array objectAtIndex:i0] objectForKey:@"nodeContent"] !=nil) &&  ([[[array objectAtIndex:i0]objectForKey:@"nodeName"]caseInsensitiveCompare:@"qty"]==NSOrderedSame)){
                    NSString *nodeContentValue = [[NSString alloc]initWithString:[[array objectAtIndex:i0] objectForKey:@"nodeContent"]];
                    [self setQty:[nodeContentValue intValue]];
                }
                else if ( ([[array objectAtIndex:i0] objectForKey:@"nodeContent"] !=nil) &&  ([[[array objectAtIndex:i0]objectForKey:@"nodeName"]caseInsensitiveCompare:@"qtySpecified"]==NSOrderedSame)){
                    NSString *nodeContentValue = [[NSString alloc]initWithString:[[array objectAtIndex:i0] objectForKey:@"nodeContent"]];
                    [self setQtySpecified:[nodeContentValue boolValue]];
                }
                else if ( ([[array objectAtIndex:i0] objectForKey:@"nodeContent"] !=nil) &&  ([[[array objectAtIndex:i0]objectForKey:@"nodeName"]caseInsensitiveCompare:@"price"]==NSOrderedSame)){
                    NSString *nodeContentValue = [[NSString alloc]initWithString:[[array objectAtIndex:i0] objectForKey:@"nodeContent"]];
                    [self setPrice:[nodeContentValue doubleValue]];
                }
                else if ( ([[array objectAtIndex:i0] objectForKey:@"nodeContent"] !=nil) &&  ([[[array objectAtIndex:i0]objectForKey:@"nodeName"]caseInsensitiveCompare:@"priceSpecified"]==NSOrderedSame)){
                    NSString *nodeContentValue = [[NSString alloc]initWithString:[[array objectAtIndex:i0] objectForKey:@"nodeContent"]];
                    [self setPriceSpecified:[nodeContentValue boolValue]];
                }
            }
        }
        @catch(NSException *ex){
        }
    }
    return self;
}
-(NSString*)toString:(BOOL)addNameWrap {
    NSMutableString *nsString = [NSMutableString string];
    if (addNameWrap == YES)
        [nsString appendString:@"<catalogProductTierPriceEntity>" ];
    if (self.customer_group_id != nil) {
        [nsString appendFormat:@"<customer_group_id>%@</customer_group_id>" , [self customer_group_id]];
    }
    if (self.website != nil) {
        [nsString appendFormat:@"<website>%@</website>" , [self website]];
    }
    [nsString appendFormat:@"<qty>%d</qty>" , [self qty]];
    [nsString appendFormat:@"<qtySpecified>%d</qtySpecified>" , [self qtySpecified]];
    [nsString appendFormat:@"<price>%lf</price>" , [self price]];
    [nsString appendFormat:@"<priceSpecified>%d</priceSpecified>" , [self priceSpecified]];
    if (addNameWrap == YES)
        [nsString appendString:@"</catalogProductTierPriceEntity>" ];
    return nsString;
}
#pragma mark - NSCoding
-(id)initWithCoder:(NSCoder *)decoder{
    self = [super init];
    if (self){
        self.customer_group_id = [decoder decodeObjectForKey:@"customer_group_id"];
        self.website = [decoder decodeObjectForKey:@"website"];
        self.qty = [decoder decodeInt32ForKey:@"qty"];
        self.qtySpecified = [decoder decodeInt32ForKey:@"qtySpecified"];
        self.price = [decoder decodeInt32ForKey:@"price"];
        self.priceSpecified = [decoder decodeInt32ForKey:@"priceSpecified"];
    }
    return self;
}
-(void)encodeWithCoder:(NSCoder *)encoder{
    [encoder encodeObject:self.customer_group_id forKey:@"customer_group_id"];
    [encoder encodeObject:self.website forKey:@"website"];
    [encoder encodeInt32:self.qty forKey:@"qty"];
    [encoder encodeInt32:self.qtySpecified forKey:@"qtySpecified"];
    [encoder encodeInt32:self.price forKey:@"price"];
    [encoder encodeInt32:self.priceSpecified forKey:@"priceSpecified"];
}
-(id)copyWithZone:(NSZone *)zone {
    catalogProductTierPriceEntity *finalCopy = [[[self class] allocWithZone: zone] init];
    
    NSString *copy1 = [self.customer_group_id copy];
    finalCopy.customer_group_id = copy1;
    
    NSString *copy2 = [self.website copy];
    finalCopy.website = copy2;
    
    finalCopy.qty = self.qty;
    
    finalCopy.qtySpecified = self.qtySpecified;
    
    finalCopy.price = self.price;
    
    finalCopy.priceSpecified = self.priceSpecified;
    
    return finalCopy;
}

@end