.class public Lcom/android/internal/widget/DrawableHolder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# static fields
.field private static final DBG:Z = false

.field public static final EASE_OUT_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

.field private static final TAG:Ljava/lang/String; = "DrawableHolder"


# instance fields
.field private mAlpha:F

.field private mAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mNeedToStart:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mScaleX:F

.field private mScaleY:F

.field private mX:F

.field private mY:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/internal/widget/DrawableHolder;->EASE_OUT_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v0}, Lcom/android/internal/widget/DrawableHolder;-><init>(Landroid/graphics/drawable/BitmapDrawable;FF)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/BitmapDrawable;FF)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/android/internal/widget/DrawableHolder;->mX:F

    .line 4
    iput v0, p0, Lcom/android/internal/widget/DrawableHolder;->mY:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    iput v0, p0, Lcom/android/internal/widget/DrawableHolder;->mScaleX:F

    .line 6
    iput v0, p0, Lcom/android/internal/widget/DrawableHolder;->mScaleY:F

    .line 7
    iput v0, p0, Lcom/android/internal/widget/DrawableHolder;->mAlpha:F

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DrawableHolder;->mAnimators:Ljava/util/ArrayList;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DrawableHolder;->mNeedToStart:Ljava/util/ArrayList;

    .line 10
    iput-object p1, p0, Lcom/android/internal/widget/DrawableHolder;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 11
    iput p2, p0, Lcom/android/internal/widget/DrawableHolder;->mX:F

    .line 12
    iput p3, p0, Lcom/android/internal/widget/DrawableHolder;->mY:F

    .line 13
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 14
    iget-object p1, p0, Lcom/android/internal/widget/DrawableHolder;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result p2

    iget-object p3, p0, Lcom/android/internal/widget/DrawableHolder;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method private addAnimation(Landroid/animation/ObjectAnimator;Z)Lcom/android/internal/widget/DrawableHolder;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p2, p0, Lcom/android/internal/widget/DrawableHolder;->mAnimators:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p2, p0, Lcom/android/internal/widget/DrawableHolder;->mNeedToStart:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    return-object p0
.end method


# virtual methods
.method public addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;
    .locals 2

    .line 1
    if-eqz p7, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p5}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    new-array v0, v0, [F

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    aput p6, v0, v1

    .line 11
    .line 12
    invoke-static {p0, p5, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 13
    .line 14
    .line 15
    move-result-object p5

    .line 16
    invoke-virtual {p5, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p5, p3, p4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 20
    .line 21
    .line 22
    sget-object p1, Lcom/android/internal/widget/DrawableHolder;->EASE_OUT_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    .line 23
    .line 24
    invoke-virtual {p5, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, p5, p7}, Lcom/android/internal/widget/DrawableHolder;->addAnimation(Landroid/animation/ObjectAnimator;Z)Lcom/android/internal/widget/DrawableHolder;

    .line 28
    .line 29
    .line 30
    return-object p5
.end method

.method public clearAnimations()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/DrawableHolder;->mAnimators:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/animation/ObjectAnimator;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/DrawableHolder;->mAnimators:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/internal/widget/DrawableHolder;->mAlpha:F

    .line 2
    .line 3
    const/high16 v1, 0x3b800000    # 0.00390625f

    .line 4
    .line 5
    cmpg-float v0, v0, v1

    .line 6
    .line 7
    if-gtz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 12
    .line 13
    .line 14
    iget v0, p0, Lcom/android/internal/widget/DrawableHolder;->mX:F

    .line 15
    .line 16
    iget v1, p0, Lcom/android/internal/widget/DrawableHolder;->mY:F

    .line 17
    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 19
    .line 20
    .line 21
    iget v0, p0, Lcom/android/internal/widget/DrawableHolder;->mScaleX:F

    .line 22
    .line 23
    iget v1, p0, Lcom/android/internal/widget/DrawableHolder;->mScaleY:F

    .line 24
    .line 25
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/android/internal/widget/DrawableHolder;->getWidth()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    int-to-float v0, v0

    .line 33
    const/high16 v1, -0x41000000    # -0.5f

    .line 34
    .line 35
    mul-float/2addr v0, v1

    .line 36
    invoke-virtual {p0}, Lcom/android/internal/widget/DrawableHolder;->getHeight()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    int-to-float v2, v2

    .line 41
    mul-float/2addr v2, v1

    .line 42
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/android/internal/widget/DrawableHolder;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 46
    .line 47
    iget v1, p0, Lcom/android/internal/widget/DrawableHolder;->mAlpha:F

    .line 48
    .line 49
    const/high16 v2, 0x437f0000    # 255.0f

    .line 50
    .line 51
    mul-float/2addr v1, v2

    .line 52
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/android/internal/widget/DrawableHolder;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 60
    .line 61
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public getAlpha()F
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/DrawableHolder;->mAlpha:F

    return v0
.end method

.method public getDrawable()Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/DrawableHolder;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/DrawableHolder;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getScaleX()F
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/DrawableHolder;->mScaleX:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/DrawableHolder;->mScaleY:F

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/DrawableHolder;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getX()F
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/DrawableHolder;->mX:F

    return v0
.end method

.method public getY()F
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/DrawableHolder;->mY:F

    return v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/internal/widget/DrawableHolder;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final synthetic onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroid/animation/a;->a(Landroid/animation/Animator$AnimatorListener;Landroid/animation/Animator;Z)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic onAnimationStart(Landroid/animation/Animator;Z)V
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, Landroid/animation/a;->b(Landroid/animation/Animator$AnimatorListener;Landroid/animation/Animator;Z)V

    return-void
.end method

.method public removeAnimationFor(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/DrawableHolder;->mAnimators:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroid/animation/ObjectAnimator;

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->getPropertyName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    return-void
.end method

.method public setAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/DrawableHolder;->mAlpha:F

    return-void
.end method

.method public setScaleX(F)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/DrawableHolder;->mScaleX:F

    return-void
.end method

.method public setScaleY(F)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/DrawableHolder;->mScaleY:F

    return-void
.end method

.method public setX(F)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/DrawableHolder;->mX:F

    return-void
.end method

.method public setY(F)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/DrawableHolder;->mY:F

    return-void
.end method

.method public startAnimations(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/DrawableHolder;->mNeedToStart:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/internal/widget/DrawableHolder;->mNeedToStart:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroid/animation/ObjectAnimator;

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 25
    .line 26
    .line 27
    add-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object p1, p0, Lcom/android/internal/widget/DrawableHolder;->mNeedToStart:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 33
    .line 34
    .line 35
    return-void
.end method
