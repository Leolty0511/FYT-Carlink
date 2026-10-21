.class Landroid/widget/TextView$Drawables;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Drawables"
.end annotation


# static fields
.field public static final DRAWABLE_LEFT:I = 0x1

.field public static final DRAWABLE_NONE:I = -0x1

.field public static final DRAWABLE_RIGHT:I


# instance fields
.field public final mCompoundRect:Landroid/graphics/Rect;

.field public mDrawableBottom:Landroid/graphics/drawable/Drawable;

.field public mDrawableEnd:Landroid/graphics/drawable/Drawable;

.field public mDrawableError:Landroid/graphics/drawable/Drawable;

.field public mDrawableHeightEnd:I

.field public mDrawableHeightError:I

.field public mDrawableHeightLeft:I

.field public mDrawableHeightRight:I

.field public mDrawableHeightStart:I

.field public mDrawableHeightTemp:I

.field public mDrawableLeft:Landroid/graphics/drawable/Drawable;

.field public mDrawableLeftInitial:Landroid/graphics/drawable/Drawable;

.field public mDrawablePadding:I

.field public mDrawableRight:Landroid/graphics/drawable/Drawable;

.field public mDrawableRightInitial:Landroid/graphics/drawable/Drawable;

.field public mDrawableSaved:I

.field public mDrawableSizeBottom:I

.field public mDrawableSizeEnd:I

.field public mDrawableSizeError:I

.field public mDrawableSizeLeft:I

.field public mDrawableSizeRight:I

.field public mDrawableSizeStart:I

.field public mDrawableSizeTemp:I

.field public mDrawableSizeTop:I

.field public mDrawableStart:Landroid/graphics/drawable/Drawable;

.field public mDrawableTemp:Landroid/graphics/drawable/Drawable;

.field public mDrawableTop:Landroid/graphics/drawable/Drawable;

.field public mDrawableWidthBottom:I

.field public mDrawableWidthTop:I

.field public mIsRtlCompatibilityMode:Z

.field public mOverride:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSaved:I

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v1, 0x0

    const/16 v2, 0x11

    if-lt v0, v2, :cond_1

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Landroid/widget/TextView$Drawables;->mIsRtlCompatibilityMode:Z

    .line 6
    iput-boolean v1, p0, Landroid/widget/TextView$Drawables;->mOverride:Z

    return-void
.end method

.method private applyErrorDrawableIfNeeded(I)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSaved:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableTemp:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    .line 3
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeTemp:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 4
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightTemp:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableTemp:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    .line 6
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeTemp:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 7
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightTemp:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    .line 8
    :goto_0
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    if-eq p1, v1, :cond_2

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Landroid/widget/TextView$Drawables;->mDrawableSaved:I

    .line 10
    iget-object p1, p0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Landroid/widget/TextView$Drawables;->mDrawableTemp:Landroid/graphics/drawable/Drawable;

    .line 11
    iget p1, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    iput p1, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeTemp:I

    .line 12
    iget p1, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    iput p1, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightTemp:I

    .line 13
    iput-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    .line 14
    iget p1, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeError:I

    iput p1, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 15
    iget p1, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightError:I

    iput p1, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    goto :goto_1

    .line 16
    :cond_2
    iput v1, p0, Landroid/widget/TextView$Drawables;->mDrawableSaved:I

    .line 17
    iget-object p1, p0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Landroid/widget/TextView$Drawables;->mDrawableTemp:Landroid/graphics/drawable/Drawable;

    .line 18
    iget p1, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    iput p1, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeTemp:I

    .line 19
    iget p1, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    iput p1, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightTemp:I

    .line 20
    iput-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    .line 21
    iget p1, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeError:I

    iput p1, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 22
    iget p1, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightError:I

    iput p1, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    :cond_3
    :goto_1
    return-void
.end method

.method private updateDrawablesLayoutDirection(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 5
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 7
    :cond_2
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    :cond_3
    return-void
.end method


# virtual methods
.method public resolveWithLayoutDirection(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableLeftInitial:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    .line 2
    iget-object v1, p0, Landroid/widget/TextView$Drawables;->mDrawableRightInitial:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    .line 3
    iget-boolean v2, p0, Landroid/widget/TextView$Drawables;->mIsRtlCompatibilityMode:Z

    if-eqz v2, :cond_1

    .line 4
    iget-object v2, p0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    .line 5
    iput-object v2, p0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    .line 6
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 7
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    .line 8
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    .line 9
    iput-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    .line 10
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 11
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    .line 12
    iget-boolean v0, p0, Landroid/widget/TextView$Drawables;->mOverride:Z

    if-eqz v0, :cond_3

    .line 13
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    .line 14
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 15
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    .line 16
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    .line 17
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 18
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    goto :goto_0

    .line 19
    :cond_2
    iget-boolean v0, p0, Landroid/widget/TextView$Drawables;->mOverride:Z

    if-eqz v0, :cond_3

    .line 20
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    .line 21
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 22
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    .line 23
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    .line 24
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 25
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    .line 26
    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Landroid/widget/TextView$Drawables;->applyErrorDrawableIfNeeded(I)V

    .line 27
    invoke-direct {p0, p1}, Landroid/widget/TextView$Drawables;->updateDrawablesLayoutDirection(I)V

    return-void
.end method

.method public setErrorDrawable(Landroid/graphics/drawable/Drawable;Landroid/widget/TextView;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3
    :cond_0
    iput-object p1, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    .line 4
    iget-object p1, p0, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    .line 5
    invoke-virtual {p2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    .line 6
    iget-object v1, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 8
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 9
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 10
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p2

    iput p2, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeError:I

    .line 11
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightError:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 12
    iput p1, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightError:I

    iput p1, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeError:I

    :goto_0
    return-void
.end method
