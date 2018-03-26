//
//  Person.h
//  PoraDomoi
//
//  Created by Dima Gorbachev on 26.03.2018.
//  Copyright © 2018 Dima Gorbachev. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (strong, nonatomic) NSString* name;
@property (strong, nonatomic) NSDate* date;
@property (strong, nonatomic) NSDate* endDate;


-(instancetype)initWithName:(NSString*) name andDate:(NSDate*) date andEndDate: (NSDate*) endDate;
-(instancetype)initWithCoder:(NSCoder *)aDecoder;
-(void)encodeWithCoder:(NSCoder *)aCoder;
-(NSDate*)calculateEndDate;
-(float) calculatePercentProgress;
-(float) calculateLeftDays;
-(float) calculateProgressDays;

@end
