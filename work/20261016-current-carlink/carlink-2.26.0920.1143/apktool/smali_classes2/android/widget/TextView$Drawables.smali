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
.field static final BOTTOM:I = 0x3

.field static final DRAWABLE_LEFT:I = 0x1

.field static final DRAWABLE_NONE:I = -0x1

.field static final DRAWABLE_RIGHT:I = 0x0

.field static final LEFT:I = 0x0

.field static final RIGHT:I = 0x2

.field static final TOP:I = 0x1


# instance fields
.field final mCompoundRect:Landroid/graphics/Rect;

.field mDrawableEnd:Landroid/graphics/drawable/Drawable;

.field mDrawableError:Landroid/graphics/drawable/Drawable;

.field mDrawableHeightEnd:I

.field mDrawableHeightError:I

.field mDrawableHeightLeft:I

.field mDrawableHeightRight:I

.field mDrawableHeightStart:I

.field mDrawableHeightTemp:I

.field mDrawableLeftInitial:Landroid/graphics/drawable/Drawable;

.field mDrawablePadding:I

.field mDrawableRightInitial:Landroid/graphics/drawable/Drawable;

.field mDrawableSaved:I

.field mDrawableSizeBottom:I

.field mDrawableSizeEnd:I

.field mDrawableSizeError:I

.field mDrawableSizeLeft:I

.field mDrawableSizeRight:I

.field mDrawableSizeStart:I

.field mDrawableSizeTemp:I

.field mDrawableSizeTop:I

.field mDrawableStart:Landroid/graphics/drawable/Drawable;

.field mDrawableTemp:Landroid/graphics/drawable/Drawable;

.field mDrawableWidthBottom:I

.field mDrawableWidthTop:I

.field mHasTint:Z

.field mHasTintMode:Z

.field mIsRtlCompatibilityMode:Z

.field mOverride:Z

.field final mShowing:[Landroid/graphics/drawable/Drawable;

.field mTintList:Landroid/content/res/ColorStateList;

.field mTintMode:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    .line 10
    .line 11
    const/4 v0, 0x4

    .line 12
    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    .line 13
    .line 14
    iput-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    .line 15
    .line 16
    const/4 v0, -0x1

    .line 17
    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSaved:I

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 24
    .line 25
    const/16 v1, 0x11

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    if-lt v0, v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-nez p1, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move p1, v2

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 44
    :goto_1
    iput-boolean p1, p0, Landroid/widget/TextView$Drawables;->mIsRtlCompatibilityMode:Z

    .line 45
    .line 46
    iput-boolean v2, p0, Landroid/widget/TextView$Drawables;->mOverride:Z

    .line 47
    .line 48
    return-void
.end method

.method private applyErrorDrawableIfNeeded(I)V
    .locals 5

    .line 1
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSaved:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    if-eq v0, v2, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    iget-object v4, p0, Landroid/widget/TextView$Drawables;->mDrawableTemp:Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    aput-object v4, v0, v3

    .line 16
    .line 17
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeTemp:I

    .line 18
    .line 19
    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 20
    .line 21
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightTemp:I

    .line 22
    .line 23
    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    .line 27
    .line 28
    iget-object v4, p0, Landroid/widget/TextView$Drawables;->mDrawableTemp:Landroid/graphics/drawable/Drawable;

    .line 29
    .line 30
    aput-object v4, v0, v1

    .line 31
    .line 32
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeTemp:I

    .line 33
    .line 34
    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 35
    .line 36
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightTemp:I

    .line 37
    .line 38
    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    .line 39
    .line 40
    :goto_0
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    .line 41
    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    if-eq p1, v2, :cond_2

    .line 45
    .line 46
    iput v3, p0, Landroid/widget/TextView$Drawables;->mDrawableSaved:I

    .line 47
    .line 48
    iget-object p1, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    .line 49
    .line 50
    aget-object v2, p1, v1

    .line 51
    .line 52
    iput-object v2, p0, Landroid/widget/TextView$Drawables;->mDrawableTemp:Landroid/graphics/drawable/Drawable;

    .line 53
    .line 54
    iget v2, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 55
    .line 56
    iput v2, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeTemp:I

    .line 57
    .line 58
    iget v2, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    .line 59
    .line 60
    iput v2, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightTemp:I

    .line 61
    .line 62
    aput-object v0, p1, v1

    .line 63
    .line 64
    iget p1, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeError:I

    .line 65
    .line 66
    iput p1, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 67
    .line 68
    iget p1, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightError:I

    .line 69
    .line 70
    iput p1, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    iput v2, p0, Landroid/widget/TextView$Drawables;->mDrawableSaved:I

    .line 74
    .line 75
    iget-object p1, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    .line 76
    .line 77
    aget-object v1, p1, v3

    .line 78
    .line 79
    iput-object v1, p0, Landroid/widget/TextView$Drawables;->mDrawableTemp:Landroid/graphics/drawable/Drawable;

    .line 80
    .line 81
    iget v1, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 82
    .line 83
    iput v1, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeTemp:I

    .line 84
    .line 85
    iget v1, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    .line 86
    .line 87
    iput v1, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightTemp:I

    .line 88
    .line 89
    aput-object v0, p1, v3

    .line 90
    .line 91
    iget p1, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeError:I

    .line 92
    .line 93
    iput p1, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 94
    .line 95
    iget p1, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightError:I

    .line 96
    .line 97
    iput p1, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    .line 98
    .line 99
    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public hasMetadata()Z
    .locals 1

    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/TextView$Drawables;->mHasTintMode:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/TextView$Drawables;->mHasTint:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public resolveWithLayoutDirection(I)Z
    .locals 9

    .line 1
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-object v2, v0, v1

    .line 5
    .line 6
    const/4 v3, 0x2

    .line 7
    aget-object v4, v0, v3

    .line 8
    .line 9
    iget-object v5, p0, Landroid/widget/TextView$Drawables;->mDrawableLeftInitial:Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    aput-object v5, v0, v1

    .line 12
    .line 13
    iget-object v6, p0, Landroid/widget/TextView$Drawables;->mDrawableRightInitial:Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    aput-object v6, v0, v3

    .line 16
    .line 17
    iget-boolean v7, p0, Landroid/widget/TextView$Drawables;->mIsRtlCompatibilityMode:Z

    .line 18
    .line 19
    const/4 v8, 0x1

    .line 20
    if-eqz v7, :cond_1

    .line 21
    .line 22
    iget-object v7, p0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    .line 23
    .line 24
    if-eqz v7, :cond_0

    .line 25
    .line 26
    if-nez v5, :cond_0

    .line 27
    .line 28
    aput-object v7, v0, v1

    .line 29
    .line 30
    iget v5, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    .line 31
    .line 32
    iput v5, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 33
    .line 34
    iget v5, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    .line 35
    .line 36
    iput v5, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    .line 37
    .line 38
    :cond_0
    iget-object v5, p0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    .line 39
    .line 40
    if-eqz v5, :cond_3

    .line 41
    .line 42
    if-nez v6, :cond_3

    .line 43
    .line 44
    aput-object v5, v0, v3

    .line 45
    .line 46
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    .line 47
    .line 48
    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 49
    .line 50
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    .line 51
    .line 52
    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    if-eq p1, v8, :cond_2

    .line 56
    .line 57
    iget-boolean v5, p0, Landroid/widget/TextView$Drawables;->mOverride:Z

    .line 58
    .line 59
    if-eqz v5, :cond_3

    .line 60
    .line 61
    iget-object v5, p0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    .line 62
    .line 63
    aput-object v5, v0, v1

    .line 64
    .line 65
    iget v5, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    .line 66
    .line 67
    iput v5, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 68
    .line 69
    iget v5, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    .line 70
    .line 71
    iput v5, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    .line 72
    .line 73
    iget-object v5, p0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    .line 74
    .line 75
    aput-object v5, v0, v3

    .line 76
    .line 77
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    .line 78
    .line 79
    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 80
    .line 81
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    .line 82
    .line 83
    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    iget-boolean v5, p0, Landroid/widget/TextView$Drawables;->mOverride:Z

    .line 87
    .line 88
    if-eqz v5, :cond_3

    .line 89
    .line 90
    iget-object v5, p0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    .line 91
    .line 92
    aput-object v5, v0, v3

    .line 93
    .line 94
    iget v5, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    .line 95
    .line 96
    iput v5, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 97
    .line 98
    iget v5, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    .line 99
    .line 100
    iput v5, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    .line 101
    .line 102
    iget-object v5, p0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    .line 103
    .line 104
    aput-object v5, v0, v1

    .line 105
    .line 106
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    .line 107
    .line 108
    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 109
    .line 110
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    .line 111
    .line 112
    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    .line 113
    .line 114
    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Landroid/widget/TextView$Drawables;->applyErrorDrawableIfNeeded(I)V

    .line 115
    .line 116
    .line 117
    iget-object p1, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    .line 118
    .line 119
    aget-object v0, p1, v1

    .line 120
    .line 121
    if-ne v0, v2, :cond_4

    .line 122
    .line 123
    aget-object p1, p1, v3

    .line 124
    .line 125
    if-eq p1, v4, :cond_5

    .line 126
    .line 127
    :cond_4
    move v1, v8

    .line 128
    :cond_5
    return v1
.end method

.method public setErrorDrawable(Landroid/graphics/drawable/Drawable;Landroid/widget/TextView;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    iput-object p1, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    iget-object p1, p0, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    .line 16
    .line 17
    invoke-virtual {p2}, Landroid/view/View;->getDrawableState()[I

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    .line 32
    .line 33
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    iput p2, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeError:I

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    iput p1, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightError:I

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/4 p1, 0x0

    .line 50
    iput p1, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightError:I

    .line 51
    .line 52
    iput p1, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeError:I

    .line 53
    .line 54
    :goto_0
    return-void
.end method
