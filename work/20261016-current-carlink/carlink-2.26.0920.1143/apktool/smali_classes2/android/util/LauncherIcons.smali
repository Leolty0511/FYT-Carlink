.class public final Landroid/util/LauncherIcons;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/LauncherIcons$ShadowDrawable;
    }
.end annotation


# static fields
.field private static final AMBIENT_SHADOW_ALPHA:I = 0x1e

.field private static final ICON_SIZE_BLUR_FACTOR:F = 0.010416667f

.field private static final ICON_SIZE_KEY_SHADOW_DELTA_FACTOR:F = 0.020833334f

.field private static final KEY_SHADOW_ALPHA:I = 0x3d


# instance fields
.field private final mIconSize:I

.field private final mRes:Landroid/content/res/Resources;

.field private final mShadowCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/util/LauncherIcons;->mShadowCache:Landroid/util/SparseArray;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Landroid/util/LauncherIcons;->mRes:Landroid/content/res/Resources;

    .line 16
    .line 17
    const/high16 v0, 0x1050000

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    iput p1, p0, Landroid/util/LauncherIcons;->mIconSize:I

    .line 24
    .line 25
    return-void
.end method

.method private getShadowBitmap(Landroid/graphics/drawable/AdaptiveIconDrawable;)Landroid/graphics/Bitmap;
    .locals 8

    .line 1
    iget v0, p0, Landroid/util/LauncherIcons;->mIconSize:I

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getIntrinsicHeight()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Landroid/util/LauncherIcons;->mShadowCache:Landroid/util/SparseArray;

    .line 12
    .line 13
    monitor-enter v1

    .line 14
    :try_start_0
    iget-object v2, p0, Landroid/util/LauncherIcons;->mShadowCache:Landroid/util/SparseArray;

    .line 15
    .line 16
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Landroid/graphics/Bitmap;

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    monitor-exit v1

    .line 25
    return-object v2

    .line 26
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-virtual {p1, v1, v1, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 29
    .line 30
    .line 31
    int-to-float v2, v0

    .line 32
    const v3, 0x3c2aaaab

    .line 33
    .line 34
    .line 35
    mul-float/2addr v3, v2

    .line 36
    const v4, 0x3caaaaab

    .line 37
    .line 38
    .line 39
    mul-float/2addr v4, v2

    .line 40
    const/high16 v5, 0x40000000    # 2.0f

    .line 41
    .line 42
    mul-float v6, v3, v5

    .line 43
    .line 44
    add-float/2addr v6, v2

    .line 45
    add-float/2addr v6, v4

    .line 46
    float-to-int v2, v6

    .line 47
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 48
    .line 49
    invoke-static {v2, v2, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    new-instance v6, Landroid/graphics/Canvas;

    .line 54
    .line 55
    invoke-direct {v6, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 56
    .line 57
    .line 58
    div-float v5, v4, v5

    .line 59
    .line 60
    add-float/2addr v5, v3

    .line 61
    invoke-virtual {v6, v5, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 62
    .line 63
    .line 64
    new-instance v5, Landroid/graphics/Paint;

    .line 65
    .line 66
    const/4 v7, 0x1

    .line 67
    invoke-direct {v5, v7}, Landroid/graphics/Paint;-><init>(I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    .line 72
    .line 73
    const/high16 v1, 0x1e000000

    .line 74
    .line 75
    const/4 v7, 0x0

    .line 76
    invoke-virtual {v5, v3, v7, v7, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getIconMask()Landroid/graphics/Path;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v6, v1, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v6, v7, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 87
    .line 88
    .line 89
    const/high16 v1, 0x3d000000    # 0.03125f

    .line 90
    .line 91
    invoke-virtual {v5, v3, v7, v7, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getIconMask()Landroid/graphics/Path;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {v6, p1, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 99
    .line 100
    .line 101
    const/4 p1, 0x0

    .line 102
    invoke-virtual {v6, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 103
    .line 104
    .line 105
    iget-object p1, p0, Landroid/util/LauncherIcons;->mShadowCache:Landroid/util/SparseArray;

    .line 106
    .line 107
    monitor-enter p1

    .line 108
    :try_start_1
    iget-object v1, p0, Landroid/util/LauncherIcons;->mShadowCache:Landroid/util/SparseArray;

    .line 109
    .line 110
    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    monitor-exit p1

    .line 114
    return-object v2

    .line 115
    :catchall_0
    move-exception v0

    .line 116
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    throw v0

    .line 118
    :catchall_1
    move-exception p1

    .line 119
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 120
    throw p1
.end method


# virtual methods
.method public getBadgeDrawable(II)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Landroid/util/LauncherIcons;->getBadgedDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getBadgedDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;
    .locals 6

    .line 1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x1080338

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const v2, 0x1080337

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2, p3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    const/4 p3, 0x3

    .line 39
    const/4 v0, 0x2

    .line 40
    const/4 v3, 0x1

    .line 41
    const/4 v4, 0x0

    .line 42
    if-nez p1, :cond_0

    .line 43
    .line 44
    new-array p1, p3, [Landroid/graphics/drawable/Drawable;

    .line 45
    .line 46
    aput-object v1, p1, v4

    .line 47
    .line 48
    aput-object v2, p1, v3

    .line 49
    .line 50
    aput-object p2, p1, v0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const/4 v5, 0x4

    .line 54
    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    .line 55
    .line 56
    aput-object p1, v5, v4

    .line 57
    .line 58
    aput-object v1, v5, v3

    .line 59
    .line 60
    aput-object v2, v5, v0

    .line 61
    .line 62
    aput-object p2, v5, p3

    .line 63
    .line 64
    move-object p1, v5

    .line 65
    :goto_0
    new-instance p2, Landroid/graphics/drawable/LayerDrawable;

    .line 66
    .line 67
    invoke-direct {p2, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 68
    .line 69
    .line 70
    return-object p2
.end method

.method public wrapIconDrawableWithShadow(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    instance-of v0, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    move-object v0, p1

    .line 7
    check-cast v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 8
    .line 9
    invoke-direct {p0, v0}, Landroid/util/LauncherIcons;->getShadowBitmap(Landroid/graphics/drawable/AdaptiveIconDrawable;)Landroid/graphics/Bitmap;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Landroid/util/LauncherIcons$ShadowDrawable;

    .line 14
    .line 15
    invoke-direct {v1, v0, p1}, Landroid/util/LauncherIcons$ShadowDrawable;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V

    .line 16
    .line 17
    .line 18
    return-object v1
.end method
