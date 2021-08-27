/**
 * titanium-svg
 *
 * Created by Hans Knöchel
 * Copyright (c) 2021 Hans Knöchel. All rights reserved.
 */

#import "TiModule.h"
#import "TiBlob.h"

@interface TiSvgModule : TiModule {}

// Pass either an image URL or raw SVG text
- (TiBlob *)SVGImage:(id)args;

@end
