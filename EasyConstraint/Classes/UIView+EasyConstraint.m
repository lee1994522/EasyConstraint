#import "UIView+EasyConstraint.h"

@implementation UIView (EasyConstrait)

- (void)enableConstraint
{
    if (self.translatesAutoresizingMaskIntoConstraints) {
        self.translatesAutoresizingMaskIntoConstraints = NO;
    }
}

- (NSArray<NSLayoutConstraint *> *)setWidth:(CGFloat)value
{
    [self enableConstraint];
    NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:value];
    [self addConstraint:constraint];
    return @[constraint];
}

- (NSArray<NSLayoutConstraint *> *)setHeight:(CGFloat)value
{
    [self enableConstraint];
    NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:value];
    [self addConstraint:constraint];
    return @[constraint];
}

- (NSArray<NSLayoutConstraint *> *)setTopMarginToSuperView:(CGFloat)value
{
    [self enableConstraint];
    NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.superview attribute:NSLayoutAttributeTop multiplier:1.0 constant:value];
    [self.superview addConstraint:constraint];
    return @[constraint];
}

- (NSArray<NSLayoutConstraint *> *)setBottomMarginToSuperView:(CGFloat)value
{
    [self enableConstraint];
    NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self.superview attribute:NSLayoutAttributeBottom multiplier:1.0 constant:-value];
    [self.superview addConstraint:constraint];
    return @[constraint];
}

- (NSArray<NSLayoutConstraint *> *)setLeadingMarginToSuperView:(CGFloat)value
{
    [self enableConstraint];
    NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self.superview attribute:NSLayoutAttributeLeading multiplier:1.0 constant:value];
    [self.superview addConstraint:constraint];
    return @[constraint];
}

- (NSArray<NSLayoutConstraint *> *)setTrailingMarginToSuperView:(CGFloat)value
{
    [self enableConstraint];
    NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:self.superview attribute:NSLayoutAttributeTrailing multiplier:1.0 constant:-value];
    [self.superview addConstraint:constraint];
    return @[constraint];
}

- (NSArray<NSLayoutConstraint *> *)setMarginToSuperViewWithTop:(CGFloat)top bottom:(CGFloat)bottom leading:(CGFloat)leading trailing:(CGFloat)trailing
{
    [self enableConstraint];
    NSLayoutConstraint *topConstraint = [NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.superview attribute:NSLayoutAttributeTop multiplier:1.0 constant:top];
    NSLayoutConstraint *bottomConstraint = [NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self.superview attribute:NSLayoutAttributeBottom multiplier:1.0 constant:-bottom];
    NSLayoutConstraint *leadingConstraint = [NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self.superview attribute:NSLayoutAttributeLeading multiplier:1.0 constant:leading];
    NSLayoutConstraint *trailingConstraint = [NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:self.superview attribute:NSLayoutAttributeTrailing multiplier:1.0 constant:-trailing];
    NSArray *constraints = @[topConstraint, bottomConstraint, leadingConstraint, trailingConstraint];
    [self.superview addConstraints:constraints];
    return constraints;
}

- (NSArray<NSLayoutConstraint *> *)centerToSuperView
{
    [self enableConstraint];
    NSLayoutConstraint *centerXConstraint = [NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.superview attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0.0];
    NSLayoutConstraint *centerYConstraint = [NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.superview attribute:NSLayoutAttributeCenterY multiplier:1.0 constant:0.0];
    NSArray *constraints = @[centerXConstraint, centerYConstraint];
    [self.superview addConstraints:constraints];
    return constraints;
}

- (NSArray<NSLayoutConstraint *> *)centerXToSuperView
{
    [self enableConstraint];
    NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.superview attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0.0];
    [self.superview addConstraint:constraint];
    return @[constraint];
}

- (NSArray<NSLayoutConstraint *> *)centerYToSuperView
{
    [self enableConstraint];
    NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.superview attribute:NSLayoutAttributeCenterY multiplier:1.0 constant:0.0];
    [self.superview addConstraint:constraint];
    return @[constraint];
}

- (NSArray<NSLayoutConstraint *> *)equalCenterXWithView:(UIView *)view
{
    if (view.superview == self.superview) {
        [self enableConstraint];
        NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:view attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0.0];
        [self.superview addConstraint:constraint];
        return @[constraint];
    } else {
        NSLog(@"The two views are not in the same superview");
        return @[];
    }
}

- (NSArray<NSLayoutConstraint *> *)equalCenterYWithView:(UIView *)view
{
    if (view.superview == self.superview) {
        [self enableConstraint];
        NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:view attribute:NSLayoutAttributeCenterY multiplier:1.0 constant:0.0];
        [self.superview addConstraint:constraint];
        return @[constraint];
    } else {
        NSLog(@"The two views are not in the same superview");
        return @[];
    }
}

- (NSArray<NSLayoutConstraint *> *)equalWidthWithView:(UIView *)view
{
    return [self mutipleWidthWithView:view multipler:1.0];
}

- (NSArray<NSLayoutConstraint *> *)equalHeightWithView:(UIView *)view
{
    return [self mutipleHeightWithView:view multipler:1.0];
}

- (NSArray<NSLayoutConstraint *> *)mutipleWidthWithView:(UIView *)view multipler:(CGFloat)multipler
{
    if (view.superview == self.superview) {
        [self enableConstraint];
        NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:view attribute:NSLayoutAttributeHeight multiplier:multipler constant:0.0];
        [self.superview addConstraint:constraint];
        return @[constraint];
    } else {
        NSLog(@"The two views are not in the same superview");
        return @[];
    }
}

- (NSArray<NSLayoutConstraint *> *)mutipleHeightWithView:(UIView *)view multipler:(CGFloat)multipler
{
    if (view.superview == self.superview) {
        [self enableConstraint];
        NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:view attribute:NSLayoutAttributeHeight multiplier:multipler constant:0.0];
        [self.superview addConstraint:constraint];
        return @[constraint];
    } else {
        NSLog(@"The two views are not in the same superview");
        return @[];
    }
}

- (NSArray<NSLayoutConstraint *> *)setMarginToViewAbove:(UIView *)view value:(CGFloat)value
{
    if (view.superview == self.superview) {
        [self enableConstraint];
        NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:view attribute:NSLayoutAttributeBottom multiplier:1.0 constant:value];
        [self.superview addConstraint:constraint];
        return @[constraint];
    } else {
        NSLog(@"The two views are not in the same superview");
        return @[];
    }
}

- (NSArray<NSLayoutConstraint *> *)setMarginToViewOnLeft:(UIView *)view value:(CGFloat)value
{
    if (view.superview == self.superview) {
        [self enableConstraint];
        NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:view attribute:NSLayoutAttributeTrailing multiplier:1.0 constant:value];
        [self.superview addConstraint:constraint];
        return @[constraint];
    } else {
        NSLog(@"The two views are not in the same superview");
        return @[];
    }
}

- (NSArray<NSLayoutConstraint *> *)setMarginToViewOnRight:(UIView *)view value:(CGFloat)value
{
    if (view.superview == self.superview) {
        [self enableConstraint];
        NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:view attribute:NSLayoutAttributeLeading multiplier:1.0 constant:-value];
        [self.superview addConstraint:constraint];
        return @[constraint];
    } else {
        NSLog(@"The two views are not in the same superview");
        return @[];
    }
}

- (NSArray<NSLayoutConstraint *> *)setMarginToViewBelow:(UIView *)view value:(CGFloat)value
{
    if (view.superview == self.superview) {
        [self enableConstraint];
        NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:view attribute:NSLayoutAttributeTop multiplier:1.0 constant:-value];
        [self.superview addConstraint:constraint];
        return @[constraint];
    } else {
        NSLog(@"The two views are not in the same superview");
        return @[];
    }
}

//- (void)animateWithChange:(void (^)(void))change duration:(NSTimeInterval)duration delay:(NSTimeInterval)delay options:(UIViewAnimationOptions)options completion:(void (^ __nullable)(BOOL finished))completion
//{
//    change();
//    [UIView animateWithDuration:duration delay:delay options:options animations:^{
//        [self layoutIfNeeded];
//    } completion:^(BOOL finished) {
//        if (completion) {
//            completion(finished);
//        }
//    }];
//}

@end
