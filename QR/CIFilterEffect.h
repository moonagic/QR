//
//  CIFilterEffect.h
//  Neighbors
//
//  Created by Wu Hengmin on 16/3/1.
//  Copyright © 2016年 Wu Hengmin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

/*
 
 CILinearToSRGBToneCurve
 CIPhotoEffectChrome
 CIPhotoEffectFade
 CIPhotoEffectInstant
 CIPhotoEffectMono
 CIPhotoEffectNoir
 CIPhotoEffectProcess
 CIPhotoEffectTonal
 CIPhotoEffectTransfer
 CISRGBToneCurveToLinear
 CIVignetteEffect
 
 */

@interface CIFilterEffect : NSObject

@property (nonatomic, strong, readonly) UIImage *filterImage;
- (instancetype)initWithImage:(UIImage *)image filterName:(NSString *)name;

@property (nonatomic, strong, readonly) UIImage *QRCodeImage;
- (instancetype)initWithQRCodeString:(NSString *)string width:(CGFloat)width;

@end
