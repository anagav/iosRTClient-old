//
//  RottenTomatoesClient.m
//  RottenTomatoesClient
//
//  Created by Ashish Nagavaram on 6/4/14.
//  Copyright (c) 2014 personal. All rights reserved.
//

#import "RottenTomatoesClient.h"

@implementation RottenTomatoesClient

NSString *rottenTomatoesApiKey= @"8m35686f5quhtg9yuvg48sjk";
NSString *baseUrl = @"http://api.rottentomatoes.com/api/public/v1.0";



-(void) returnBoxofficeMovies{
    NSString *apiUrl = [baseUrl stringByAppendingString:@"/lists/movies/box_office.json?apikey="];
    apiUrl = [apiUrl stringByAppendingString:rottenTomatoesApiKey];
    NSString *resp = [self makeRestAPICall: apiUrl];
}



-(NSString*) makeRestAPICall : (NSString*) reqURLStr
{
    NSURLRequest *Request = [NSURLRequest requestWithURL:[NSURL URLWithString: reqURLStr]];
    NSURLResponse *resp = nil;
    NSError *error = nil;
    NSData *response = [NSURLConnection sendSynchronousRequest: Request returningResponse: &resp error: &error];
    if(error){
        //handle error;
    }
    NSString *responseString = [[NSString alloc] initWithData:response encoding:NSUTF8StringEncoding];
    NSLog(@"%@",responseString);
    return responseString;
}





@end
