/**
 * titanium-svg
 *
 * Created by Hans Knöchel
 * Copyright (c) 2021 Hans Knöchel. All rights reserved.
 */

#import <SVGKit/SVGKit.h>

#import "TiSvgModule.h"
#import "TiBase.h"
#import "TiHost.h"
#import "TiUtils.h"

@implementation TiSvgModule

#pragma mark Internal

- (id)moduleGUID
{
  return @"55d28564-1521-4e9a-bd23-5fc8ac4de869";
}

- (NSString *)moduleId
{
  return @"ti.svg";
}

#pragma Public APIs

- (TiBlob *)SVGImage:(id)args
{
  ENSURE_SINGLE_ARG(args, NSString);

  if ([(NSString *)args containsString:@".svg"]) {
    return [[TiBlob alloc] initWithImage:[SVGKImage imageWithContentsOfFile:[TiUtils toURL:args proxy:self].path].UIImage];
  }

  NSData *data = [(NSString *)args dataUsingEncoding:NSUTF8StringEncoding];
  return [[TiBlob alloc] initWithImage:[SVGKImage imageWithData:data].UIImage];
}

@end
