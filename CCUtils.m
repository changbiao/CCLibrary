//
//  CCUtils.m
//  CCLibrary
//
//  Created by Andreas Ganske on 01.02.12.
//  Copyright (c) 2012 Andreas Ganske. All rights reserved.
//

#import "CCUtils.h"
#import <objc/runtime.h>

static NSString *foo = @"foo";

@implementation CCUtils

#ifdef __PLATFORM_IOS
+(CGSize)screenSize:(UIInterfaceOrientation)interfaceOrientation
{
	switch (interfaceOrientation) {
		case UIInterfaceOrientationPortrait:
		case UIInterfaceOrientationPortraitUpsideDown:
			return CGSizeMake(320, 460);
			break;
			
		case UIInterfaceOrientationLandscapeLeft:
		case UIInterfaceOrientationLandscapeRight:
			return CGSizeMake(480, 300);
			break;
			
		default:
			return CGSizeMake(0, 0);
			break;
	}
}
#endif

+(void)setAssociatedObject:(id)objectA forObject:(id)objectB
{
	objc_setAssociatedObject(objectB, &foo, objectA, OBJC_ASSOCIATION_RETAIN);
}

+(id)associatedObjectFor:(id)object
{
	return objc_getAssociatedObject(object, &foo);
}

+(NSString *)documentsPath
{
	NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
	return [paths objectAtIndex:0];
}

+(NSString *)cachePath
{
	NSArray *paths = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES);
	return [paths objectAtIndex:0];
}

+(NSString *)libraryPath
{
	NSArray *paths = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES);
	return [paths objectAtIndex:0];
}

+(void)createDirectoriesForFilePath:(NSString *)filePath error:(NSError **)error
{
	BOOL isDirectory;
	
	if (![[NSFileManager defaultManager] fileExistsAtPath:filePath isDirectory:&isDirectory] || !isDirectory)
		[[NSFileManager defaultManager] createDirectoryAtPath:[filePath stringByDeletingLastPathComponent] withIntermediateDirectories:YES attributes:nil error:error];
}
@end