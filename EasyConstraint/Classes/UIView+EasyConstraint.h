#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (EasyConstrait)
{
}

- (NSArray<NSLayoutConstraint *> *)setWidth:(CGFloat)value;

- (NSArray<NSLayoutConstraint *> *)setHeight:(CGFloat)value;

- (NSArray<NSLayoutConstraint *> *)setTopMarginToSuperView:(CGFloat)value;

- (NSArray<NSLayoutConstraint *> *)setBottomMarginToSuperView:(CGFloat)value;

- (NSArray<NSLayoutConstraint *> *)setLeadingMarginToSuperView:(CGFloat)value;

- (NSArray<NSLayoutConstraint *> *)setTrailingMarginToSuperView:(CGFloat)value;

- (NSArray<NSLayoutConstraint *> *)setMarginToSuperViewWithTop:(CGFloat)top bottom:(CGFloat)bottom leading:(CGFloat)leading trailing:(CGFloat)trailing;

- (NSArray<NSLayoutConstraint *> *)centerToSuperView;

- (NSArray<NSLayoutConstraint *> *)centerXToSuperView;

- (NSArray<NSLayoutConstraint *> *)centerYToSuperView;

- (NSArray<NSLayoutConstraint *> *)equalCenterXWithView:(UIView *)view;

- (NSArray<NSLayoutConstraint *> *)equalCenterYWithView:(UIView *)view;

- (NSArray<NSLayoutConstraint *> *)equalWidthWithView:(UIView *)view;

- (NSArray<NSLayoutConstraint *> *)equalHeightWithView:(UIView *)view;

- (NSArray<NSLayoutConstraint *> *)mutipleWidthWithView:(UIView *)view multipler:(CGFloat)multipler;

- (NSArray<NSLayoutConstraint *> *)mutipleHeightWithView:(UIView *)view multipler:(CGFloat)multipler;

- (NSArray<NSLayoutConstraint *> *)setMarginToViewAbove:(UIView *)view value:(CGFloat)value;

- (NSArray<NSLayoutConstraint *> *)setMarginToViewOnLeft:(UIView *)view value:(CGFloat)value;

- (NSArray<NSLayoutConstraint *> *)setMarginToViewOnRight:(UIView *)view value:(CGFloat)value;

- (NSArray<NSLayoutConstraint *> *)setMarginToViewBelow:(UIView *)view value:(CGFloat)value;

//- (void)animateWithChange:(void (^)(void))change duration:(NSTimeInterval)duration delay:(NSTimeInterval)delay options:(UIViewAnimationOptions)options completion:(void (^ __nullable)(BOOL finished))completion;

@end

NS_ASSUME_NONNULL_END
