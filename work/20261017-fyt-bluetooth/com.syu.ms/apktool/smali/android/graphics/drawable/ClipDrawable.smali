.class public Landroid/graphics/drawable/ClipDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/ClipDrawable$ClipState;
    }
.end annotation


# static fields
.field public static final HORIZONTAL:I = 0x1

.field public static final VERTICAL:I = 0x2


# instance fields
.field private mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, v0}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/ClipDrawable$ClipState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/ClipDrawable$ClipState;Landroid/content/res/Resources;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 9
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mTmpRect:Landroid/graphics/Rect;

    .line 10
    new-instance v0, Landroid/graphics/drawable/ClipDrawable$ClipState;

    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/ClipDrawable$ClipState;-><init>(Landroid/graphics/drawable/ClipDrawable$ClipState;Landroid/graphics/drawable/ClipDrawable;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/graphics/drawable/ClipDrawable$ClipState;Landroid/content/res/Resources;Landroid/graphics/drawable/ClipDrawable$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/ClipDrawable$ClipState;Landroid/content/res/Resources;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;II)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0, v0}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/ClipDrawable$ClipState;Landroid/content/res/Resources;)V

    .line 4
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iput-object p1, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 5
    iput p2, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mGravity:I

    .line 6
    iput p3, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mOrientation:I

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iget-object v0, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mTmpRect:Landroid/graphics/Rect;

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v1

    .line 5
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 6
    iget-object v3, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iget v3, v3, Landroid/graphics/drawable/ClipDrawable$ClipState;->mOrientation:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    add-int/lit8 v3, v2, 0x0

    rsub-int v5, v1, 0x2710

    mul-int/2addr v3, v5

    .line 7
    div-int/lit16 v3, v3, 0x2710

    sub-int/2addr v2, v3

    :cond_1
    move v7, v2

    .line 8
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 9
    iget-object v3, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iget v3, v3, Landroid/graphics/drawable/ClipDrawable$ClipState;->mOrientation:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    add-int/lit8 v3, v2, 0x0

    rsub-int v1, v1, 0x2710

    mul-int/2addr v3, v1

    .line 10
    div-int/lit16 v3, v3, 0x2710

    sub-int/2addr v2, v3

    :cond_2
    move v8, v2

    .line 11
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result v6

    .line 12
    iget-object v1, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iget v1, v1, Landroid/graphics/drawable/ClipDrawable$ClipState;->mGravity:I

    move v2, v7

    move v3, v8

    move-object v5, v0

    invoke-static/range {v1 .. v6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    if-lez v7, :cond_3

    if-lez v8, :cond_3

    .line 13
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 14
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 15
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iget-object v0, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 16
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iget-object v0, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iget v2, v1, Landroid/graphics/drawable/ClipDrawable$ClipState;->mChangingConfigurations:I

    or-int/2addr v0, v2

    iget-object v1, v1, Landroid/graphics/drawable/ClipDrawable$ClipState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    invoke-virtual {v0}, Landroid/graphics/drawable/ClipDrawable$ClipState;->canConstantState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    invoke-virtual {p0}, Landroid/graphics/drawable/ClipDrawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mChangingConfigurations:I

    .line 3
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iget-object v0, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iget-object v0, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iget-object v0, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iget-object v0, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 9

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    .line 2
    sget-object v0, Li/a;->ClipDrawable:[I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x3

    .line 4
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 5
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 6
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 7
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 8
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    if-eq v7, v2, :cond_2

    if-ne v7, v5, :cond_0

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v0, :cond_2

    :cond_0
    if-eq v7, v1, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {p1, p2, p3}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_0

    :cond_2
    if-eqz v6, :cond_3

    .line 10
    iget-object p1, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iput-object v6, p1, Landroid/graphics/drawable/ClipDrawable$ClipState;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 11
    iput v3, p1, Landroid/graphics/drawable/ClipDrawable$ClipState;->mOrientation:I

    .line 12
    iput v4, p1, Landroid/graphics/drawable/ClipDrawable$ClipState;->mGravity:I

    .line 13
    invoke-virtual {v6, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-void

    .line 14
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No drawable specified for <clip>"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iget-object v0, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iget-object v0, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onLevelChange(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iget-object v0, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    const/4 p1, 0x1

    return p1
.end method

.method public onStateChange([I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iget-object v0, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    return p1
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iget-object v0, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iget-object v0, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iget-object v0, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 2
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iget-object v0, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 2
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
