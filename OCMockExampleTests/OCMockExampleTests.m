//
//  OCMockExampleTests.m
//  OCMockExampleTests
//
//  Created by cbv on 1/16/14.
//  Copyright (c) 2014 Double Encore, Inc. All rights reserved.
//


#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>
#import "DEAppDelegate.h"
#import "DEObject.h"


@interface OCMockExampleTests : XCTestCase

@end

@implementation OCMockExampleTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testProcessingObject
{
    id deObjectMock = [OCMockObject mockForClass:[DEObject class]];
    [[[deObjectMock expect] andReturn:@"STUB"] processingResult];
    NSString *result = [(DEAppDelegate *)[[UIApplication sharedApplication] delegate] processObject:deObjectMock];
#pragma unused(result)
    [deObjectMock verify];
}

@end
