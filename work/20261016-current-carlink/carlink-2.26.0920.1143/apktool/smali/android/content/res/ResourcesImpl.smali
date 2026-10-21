.class public Landroid/content/res/ResourcesImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/ResourcesImpl$LookupStack;,
        Landroid/content/res/ResourcesImpl$ThemeImpl;
    }
.end annotation


# static fields
.field private static final DEBUG_CONFIG:Z = false

.field private static final DEBUG_LOAD:Z = false

.field private static final ID_OTHER:I = 0x1000004

.field static final TAG:Ljava/lang/String; = "Resources"

.field static final TAG_PRELOAD:Ljava/lang/String; = "Resources.preload"

.field public static final TRACE_FOR_DETAILED_PRELOAD:Z

.field private static final TRACE_FOR_MISS_PRELOAD:Z = false

.field private static final TRACE_FOR_PRELOAD:Z = false

.field private static final XML_BLOCK_CACHE_SIZE:I = 0x4

.field private static sPreloadTracingNumLoadedDrawables:I

.field private static sPreloaded:Z

.field private static final sPreloadedColorDrawables:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPreloadedComplexColors:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/content/res/ConstantState<",
            "Landroid/content/res/ComplexColor;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sPreloadedDrawables:[Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/LongSparseArray<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSync:Ljava/lang/Object;


# instance fields
.field private final mAccessLock:Ljava/lang/Object;

.field private final mAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/res/ConfigurationBoundResourceCache<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field final mAssets:Landroid/content/res/AssetManager;

.field private final mCachedXmlBlockCookies:[I

.field private final mCachedXmlBlockFiles:[Ljava/lang/String;

.field private final mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

.field private final mColorDrawableCache:Landroid/content/res/DrawableCache;

.field private final mComplexColorCache:Landroid/content/res/ConfigurationBoundResourceCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/res/ConfigurationBoundResourceCache<",
            "Landroid/content/res/ComplexColor;",
            ">;"
        }
    .end annotation
.end field

.field private final mConfiguration:Landroid/content/res/Configuration;

.field private final mDisplayAdjustments:Landroid/view/DisplayAdjustments;

.field private final mDrawableCache:Landroid/content/res/DrawableCache;

.field private mLastCachedXmlBlockIndex:I

.field private final mLookupStack:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/content/res/ResourcesImpl$LookupStack;",
            ">;"
        }
    .end annotation
.end field

.field private final mMetrics:Landroid/util/DisplayMetrics;

.field private mPluralRule:Landroid/icu/text/PluralRules;

.field private mPreloadTracingPreloadStartTime:J

.field private mPreloadTracingStartBitmapCount:J

.field private mPreloadTracingStartBitmapSize:J

.field private mPreloading:Z

.field private final mStateListAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/res/ConfigurationBoundResourceCache<",
            "Landroid/animation/StateListAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpConfig:Landroid/content/res/Configuration;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "debug.trace_resource_preload"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Landroid/content/res/ResourcesImpl;->TRACE_FOR_DETAILED_PRELOAD:Z

    .line 9
    .line 10
    new-instance v0, Ljava/lang/Object;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    sput-object v0, Landroid/content/res/ResourcesImpl;->sSync:Ljava/lang/Object;

    .line 16
    .line 17
    new-instance v0, Landroid/util/LongSparseArray;

    .line 18
    .line 19
    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    .line 20
    .line 21
    .line 22
    sput-object v0, Landroid/content/res/ResourcesImpl;->sPreloadedColorDrawables:Landroid/util/LongSparseArray;

    .line 23
    .line 24
    new-instance v0, Landroid/util/LongSparseArray;

    .line 25
    .line 26
    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    .line 27
    .line 28
    .line 29
    sput-object v0, Landroid/content/res/ResourcesImpl;->sPreloadedComplexColors:Landroid/util/LongSparseArray;

    .line 30
    .line 31
    const/4 v0, 0x2

    .line 32
    new-array v0, v0, [Landroid/util/LongSparseArray;

    .line 33
    .line 34
    sput-object v0, Landroid/content/res/ResourcesImpl;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    .line 35
    .line 36
    new-instance v2, Landroid/util/LongSparseArray;

    .line 37
    .line 38
    invoke-direct {v2}, Landroid/util/LongSparseArray;-><init>()V

    .line 39
    .line 40
    .line 41
    aput-object v2, v0, v1

    .line 42
    .line 43
    new-instance v1, Landroid/util/LongSparseArray;

    .line 44
    .line 45
    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    .line 46
    .line 47
    .line 48
    const/4 v2, 0x1

    .line 49
    aput-object v1, v0, v2

    .line 50
    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/view/DisplayAdjustments;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mAccessLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Landroid/content/res/Configuration;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mTmpConfig:Landroid/content/res/Configuration;

    .line 17
    .line 18
    new-instance v0, Landroid/content/res/DrawableCache;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/content/res/DrawableCache;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mDrawableCache:Landroid/content/res/DrawableCache;

    .line 24
    .line 25
    new-instance v0, Landroid/content/res/DrawableCache;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/content/res/DrawableCache;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mColorDrawableCache:Landroid/content/res/DrawableCache;

    .line 31
    .line 32
    new-instance v0, Landroid/content/res/ConfigurationBoundResourceCache;

    .line 33
    .line 34
    invoke-direct {v0}, Landroid/content/res/ConfigurationBoundResourceCache;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mComplexColorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    .line 38
    .line 39
    new-instance v0, Landroid/content/res/ConfigurationBoundResourceCache;

    .line 40
    .line 41
    invoke-direct {v0}, Landroid/content/res/ConfigurationBoundResourceCache;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    .line 45
    .line 46
    new-instance v0, Landroid/content/res/ConfigurationBoundResourceCache;

    .line 47
    .line 48
    invoke-direct {v0}, Landroid/content/res/ConfigurationBoundResourceCache;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mStateListAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    .line 52
    .line 53
    new-instance v0, Landroid/content/res/a;

    .line 54
    .line 55
    const/4 v1, 0x0

    .line 56
    invoke-direct {v0, v1}, Landroid/content/res/a;-><init>(I)V

    .line 57
    .line 58
    .line 59
    invoke-static {v0}, Landroid/app/e;->e(Landroid/content/res/a;)Ljava/lang/ThreadLocal;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mLookupStack:Ljava/lang/ThreadLocal;

    .line 64
    .line 65
    const/4 v0, -0x1

    .line 66
    iput v0, p0, Landroid/content/res/ResourcesImpl;->mLastCachedXmlBlockIndex:I

    .line 67
    .line 68
    const/4 v0, 0x4

    .line 69
    new-array v1, v0, [I

    .line 70
    .line 71
    iput-object v1, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlockCookies:[I

    .line 72
    .line 73
    new-array v1, v0, [Ljava/lang/String;

    .line 74
    .line 75
    iput-object v1, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlockFiles:[Ljava/lang/String;

    .line 76
    .line 77
    new-array v0, v0, [Landroid/content/res/XmlBlock;

    .line 78
    .line 79
    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    .line 80
    .line 81
    new-instance v0, Landroid/util/DisplayMetrics;

    .line 82
    .line 83
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 84
    .line 85
    .line 86
    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    .line 87
    .line 88
    new-instance v1, Landroid/content/res/Configuration;

    .line 89
    .line 90
    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    .line 91
    .line 92
    .line 93
    iput-object v1, p0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    .line 94
    .line 95
    iput-object p1, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    .line 96
    .line 97
    invoke-virtual {v0}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 98
    .line 99
    .line 100
    iput-object p4, p0, Landroid/content/res/ResourcesImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    .line 101
    .line 102
    invoke-virtual {v1}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p4}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    .line 106
    .line 107
    .line 108
    move-result-object p4

    .line 109
    invoke-virtual {p0, p3, p2, p4}, Landroid/content/res/ResourcesImpl;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1}, Landroid/content/res/AssetManager;->ensureStringBlocks()[Landroid/content/res/StringBlock;

    .line 113
    .line 114
    .line 115
    return-void
.end method

.method public static synthetic a()Landroid/content/res/ResourcesImpl$LookupStack;
    .locals 1

    invoke-static {}, Landroid/content/res/ResourcesImpl;->lambda$new$0()Landroid/content/res/ResourcesImpl$LookupStack;

    move-result-object v0

    return-object v0
.end method

.method private static adjustLanguageTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const/16 v0, 0x2d

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    const-string v0, ""

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    move-object p0, v1

    .line 23
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-static {p0}, Ljava/util/Locale;->adjustLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-static {v1, p0, v0}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method

.method private static attrForQuantityCode(Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "zero"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1
    const-string/jumbo v0, "many"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_2
    const-string/jumbo v0, "two"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v0, "one"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_4
    const-string v0, "few"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const p0, 0x1000004

    return p0

    :pswitch_0
    const p0, 0x1000005

    return p0

    :pswitch_1
    const p0, 0x1000009

    return p0

    :pswitch_2
    const p0, 0x1000007

    return p0

    :pswitch_3
    const p0, 0x1000006

    return p0

    :pswitch_4
    const p0, 0x1000008

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x18b98 -> :sswitch_4
        0x1ae66 -> :sswitch_3
        0x1c24c -> :sswitch_2
        0x33065f -> :sswitch_1
        0x38fea8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private cacheDrawable(Landroid/util/TypedValue;ZLandroid/content/res/DrawableCache;Landroid/content/res/Resources$Theme;ZJLandroid/graphics/drawable/Drawable;)V
    .locals 6

    .line 1
    invoke-virtual {p8}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 2
    .line 3
    .line 4
    move-result-object v4

    .line 5
    if-nez v4, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-boolean p8, p0, Landroid/content/res/ResourcesImpl;->mPreloading:Z

    .line 9
    .line 10
    if-eqz p8, :cond_3

    .line 11
    .line 12
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    .line 13
    .line 14
    .line 15
    move-result p3

    .line 16
    const/4 p4, 0x0

    .line 17
    if-eqz p2, :cond_1

    .line 18
    .line 19
    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    .line 20
    .line 21
    const-string p2, "drawable"

    .line 22
    .line 23
    invoke-direct {p0, p3, p4, p1, p2}, Landroid/content/res/ResourcesImpl;->verifyPreloadConfig(IIILjava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_4

    .line 28
    .line 29
    sget-object p1, Landroid/content/res/ResourcesImpl;->sPreloadedColorDrawables:Landroid/util/LongSparseArray;

    .line 30
    .line 31
    invoke-virtual {p1, p6, p7, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    .line 36
    .line 37
    const-string p2, "drawable"

    .line 38
    .line 39
    const/16 p5, 0x2000

    .line 40
    .line 41
    invoke-direct {p0, p3, p5, p1, p2}, Landroid/content/res/ResourcesImpl;->verifyPreloadConfig(IIILjava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_4

    .line 46
    .line 47
    and-int/lit16 p1, p3, 0x2000

    .line 48
    .line 49
    if-nez p1, :cond_2

    .line 50
    .line 51
    sget-object p1, Landroid/content/res/ResourcesImpl;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    .line 52
    .line 53
    aget-object p2, p1, p4

    .line 54
    .line 55
    invoke-virtual {p2, p6, p7, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    const/4 p2, 0x1

    .line 59
    aget-object p1, p1, p2

    .line 60
    .line 61
    invoke-virtual {p1, p6, p7, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    sget-object p1, Landroid/content/res/ResourcesImpl;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    .line 66
    .line 67
    iget-object p2, p0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    .line 68
    .line 69
    invoke-virtual {p2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    aget-object p1, p1, p2

    .line 74
    .line 75
    invoke-virtual {p1, p6, p7, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    iget-object p1, p0, Landroid/content/res/ResourcesImpl;->mAccessLock:Ljava/lang/Object;

    .line 80
    .line 81
    monitor-enter p1

    .line 82
    move-object v0, p3

    .line 83
    move-wide v1, p6

    .line 84
    move-object v3, p4

    .line 85
    move v5, p5

    .line 86
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/res/ThemedResourceCache;->put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;Z)V

    .line 87
    .line 88
    .line 89
    monitor-exit p1

    .line 90
    :cond_4
    :goto_0
    return-void

    .line 91
    :catchall_0
    move-exception p2

    .line 92
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    throw p2
.end method

.method private getColorStateListFromInt(Landroid/util/TypedValue;J)Landroid/content/res/ColorStateList;
    .locals 5

    .line 1
    sget-object v0, Landroid/content/res/ResourcesImpl;->sPreloadedComplexColors:Landroid/util/LongSparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Landroid/content/res/ConstantState;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/content/res/ConstantState;->newInstance()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Landroid/content/res/ColorStateList;

    .line 16
    .line 17
    return-object p1

    .line 18
    :cond_0
    iget v1, p1, Landroid/util/TypedValue;->data:I

    .line 19
    .line 20
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget-boolean v2, p0, Landroid/content/res/ResourcesImpl;->mPreloading:Z

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    iget v2, p1, Landroid/util/TypedValue;->changingConfigurations:I

    .line 29
    .line 30
    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    .line 31
    .line 32
    const-string v3, "color"

    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    invoke-direct {p0, v2, v4, p1, v3}, Landroid/content/res/ResourcesImpl;->verifyPreloadConfig(IIILjava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getConstantState()Landroid/content/res/ConstantState;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {v0, p2, p3, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    return-object v1
.end method

.method private getPluralRule()Landroid/icu/text/PluralRules;
    .locals 3

    .line 1
    sget-object v0, Landroid/content/res/ResourcesImpl;->sSync:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mPluralRule:Landroid/icu/text/PluralRules;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v1}, Landroid/animation/b;->d(Ljava/util/Locale;)Landroid/icu/text/PluralRules;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iput-object v1, p0, Landroid/content/res/ResourcesImpl;->mPluralRule:Landroid/icu/text/PluralRules;

    .line 24
    .line 25
    :cond_0
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mPluralRule:Landroid/icu/text/PluralRules;

    .line 26
    .line 27
    monitor-exit v0

    .line 28
    return-object v1

    .line 29
    :catchall_0
    move-exception v1

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw v1
.end method

.method private static synthetic lambda$new$0()Landroid/content/res/ResourcesImpl$LookupStack;
    .locals 2

    new-instance v0, Landroid/content/res/ResourcesImpl$LookupStack;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/content/res/ResourcesImpl$LookupStack;-><init>(Landroid/content/res/ResourcesImpl$1;)V

    return-object v0
.end method

.method private loadComplexColorForCookie(Landroid/content/res/Resources;Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;
    .locals 8

    .line 1
    iget-object v0, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-wide/16 v1, 0x2000

    .line 10
    .line 11
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v3, ".xml"

    .line 15
    .line 16
    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    const-string v4, "File "

    .line 21
    .line 22
    if-eqz v3, :cond_4

    .line 23
    .line 24
    :try_start_0
    iget p2, p2, Landroid/util/TypedValue;->assetCookie:I

    .line 25
    .line 26
    const-string v3, "ComplexColor"

    .line 27
    .line 28
    invoke-virtual {p0, v0, p3, p2, v3}, Landroid/content/res/ResourcesImpl;->loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    const/4 v6, 0x2

    .line 41
    if-eq v5, v6, :cond_0

    .line 42
    .line 43
    const/4 v7, 0x1

    .line 44
    if-eq v5, v7, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    if-ne v5, v6, :cond_3

    .line 48
    .line 49
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    const-string/jumbo v6, "gradient"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    if-eqz v6, :cond_1

    .line 61
    .line 62
    invoke-static {p1, p2, v3, p4}, Landroid/content/res/GradientColor;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/GradientColor;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    const-string/jumbo v6, "selector"

    .line 68
    .line 69
    .line 70
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    if-eqz v5, :cond_2

    .line 75
    .line 76
    invoke-static {p1, p2, v3, p4}, Landroid/content/res/ColorStateList;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    goto :goto_1

    .line 81
    :cond_2
    const/4 p1, 0x0

    .line 82
    :goto_1
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .line 84
    .line 85
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 86
    .line 87
    .line 88
    return-object p1

    .line 89
    :cond_3
    :try_start_1
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    .line 90
    .line 91
    const-string p2, "No start tag found"

    .line 92
    .line 93
    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 97
    :catch_0
    move-exception p1

    .line 98
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 99
    .line 100
    .line 101
    new-instance p2, Landroid/content/res/Resources$NotFoundException;

    .line 102
    .line 103
    const-string p4, " from ComplexColor resource ID #0x"

    .line 104
    .line 105
    invoke-static {v4, v0, p4}, Landroid/accessibilityservice/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    move-result-object p4

    .line 109
    invoke-static {p3, p4}, Landroid/app/m;->d(ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p3

    .line 113
    invoke-direct {p2, p3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 117
    .line 118
    .line 119
    throw p2

    .line 120
    :cond_4
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 121
    .line 122
    .line 123
    new-instance p1, Landroid/content/res/Resources$NotFoundException;

    .line 124
    .line 125
    const-string p2, " from drawable resource ID #0x"

    .line 126
    .line 127
    invoke-static {v4, v0, p2}, Landroid/accessibilityservice/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p3

    .line 135
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string p3, ": .xml extension required"

    .line 139
    .line 140
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    invoke-direct {p1, p2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    throw p1

    .line 151
    :cond_5
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 152
    .line 153
    new-instance p3, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    const-string p4, "Can\'t convert to ComplexColor: type=0x"

    .line 156
    .line 157
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    iget p2, p2, Landroid/util/TypedValue;->type:I

    .line 161
    .line 162
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p2

    .line 169
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    throw p1
.end method

.method private loadComplexColorFromName(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/TypedValue;I)Landroid/content/res/ComplexColor;
    .locals 6

    .line 1
    iget v0, p3, Landroid/util/TypedValue;->assetCookie:I

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    const/16 v2, 0x20

    .line 5
    .line 6
    shl-long/2addr v0, v2

    .line 7
    iget v2, p3, Landroid/util/TypedValue;->data:I

    .line 8
    .line 9
    int-to-long v2, v2

    .line 10
    or-long/2addr v0, v2

    .line 11
    iget-object v2, p0, Landroid/content/res/ResourcesImpl;->mComplexColorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    .line 12
    .line 13
    invoke-virtual {v2, v0, v1, p1, p2}, Landroid/content/res/ConfigurationBoundResourceCache;->getInstance(JLandroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Landroid/content/res/ComplexColor;

    .line 18
    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    return-object v3

    .line 22
    :cond_0
    sget-object v4, Landroid/content/res/ResourcesImpl;->sPreloadedComplexColors:Landroid/util/LongSparseArray;

    .line 23
    .line 24
    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    check-cast v5, Landroid/content/res/ConstantState;

    .line 29
    .line 30
    if-eqz v5, :cond_1

    .line 31
    .line 32
    invoke-virtual {v5, p1, p2}, Landroid/content/res/ConstantState;->newInstance(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Landroid/content/res/ComplexColor;

    .line 37
    .line 38
    :cond_1
    if-nez v3, :cond_2

    .line 39
    .line 40
    invoke-direct {p0, p1, p3, p4, p2}, Landroid/content/res/ResourcesImpl;->loadComplexColorForCookie(Landroid/content/res/Resources;Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    :cond_2
    if-eqz v3, :cond_4

    .line 45
    .line 46
    iget p1, p3, Landroid/util/TypedValue;->changingConfigurations:I

    .line 47
    .line 48
    invoke-virtual {v3, p1}, Landroid/content/res/ComplexColor;->setBaseChangingConfigurations(I)V

    .line 49
    .line 50
    .line 51
    iget-boolean p1, p0, Landroid/content/res/ResourcesImpl;->mPreloading:Z

    .line 52
    .line 53
    if-eqz p1, :cond_3

    .line 54
    .line 55
    invoke-virtual {v3}, Landroid/content/res/ComplexColor;->getChangingConfigurations()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    iget p2, p3, Landroid/util/TypedValue;->resourceId:I

    .line 60
    .line 61
    const-string p3, "color"

    .line 62
    .line 63
    const/4 p4, 0x0

    .line 64
    invoke-direct {p0, p1, p4, p2, p3}, Landroid/content/res/ResourcesImpl;->verifyPreloadConfig(IIILjava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-eqz p1, :cond_4

    .line 69
    .line 70
    invoke-virtual {v3}, Landroid/content/res/ComplexColor;->getConstantState()Landroid/content/res/ConstantState;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {v4, v0, v1, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_3
    invoke-virtual {v3}, Landroid/content/res/ComplexColor;->getConstantState()Landroid/content/res/ConstantState;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {v2, v0, v1, p2, p1}, Landroid/content/res/ConfigurationBoundResourceCache;->put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    :cond_4
    :goto_0
    return-object v3
.end method

.method private loadDrawableForCookie(Landroid/content/res/Resources;Landroid/util/TypedValue;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    iget-object v4, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 10
    .line 11
    if-eqz v4, :cond_6

    .line 12
    .line 13
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    sget-boolean v5, Landroid/content/res/ResourcesImpl;->TRACE_FOR_DETAILED_PRELOAD:Z

    .line 18
    .line 19
    if-eqz v5, :cond_0

    .line 20
    .line 21
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 22
    .line 23
    .line 24
    move-result-wide v6

    .line 25
    sget v8, Landroid/graphics/Bitmap;->sPreloadTracingNumInstantiatedBitmaps:I

    .line 26
    .line 27
    sget-wide v9, Landroid/graphics/Bitmap;->sPreloadTracingTotalBitmapsSize:J

    .line 28
    .line 29
    sget v11, Landroid/content/res/ResourcesImpl;->sPreloadTracingNumLoadedDrawables:I

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const-wide/16 v6, 0x0

    .line 33
    .line 34
    const/4 v8, 0x0

    .line 35
    const/4 v11, 0x0

    .line 36
    move-wide v9, v6

    .line 37
    :goto_0
    const-wide/16 v12, 0x2000

    .line 38
    .line 39
    invoke-static {v12, v13, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object v14, v1, Landroid/content/res/ResourcesImpl;->mLookupStack:Ljava/lang/ThreadLocal;

    .line 43
    .line 44
    invoke-virtual {v14}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v14

    .line 48
    check-cast v14, Landroid/content/res/ResourcesImpl$LookupStack;

    .line 49
    .line 50
    :try_start_0
    invoke-virtual {v14, v3}, Landroid/content/res/ResourcesImpl$LookupStack;->contains(I)Z

    .line 51
    .line 52
    .line 53
    move-result v15

    .line 54
    if-nez v15, :cond_5

    .line 55
    .line 56
    invoke-virtual {v14, v3}, Landroid/content/res/ResourcesImpl$LookupStack;->push(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 57
    .line 58
    .line 59
    :try_start_1
    const-string v12, ".xml"

    .line 60
    .line 61
    invoke-virtual {v4, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result v12

    .line 65
    if-eqz v12, :cond_1

    .line 66
    .line 67
    iget v2, v2, Landroid/util/TypedValue;->assetCookie:I

    .line 68
    .line 69
    const-string v12, "drawable"

    .line 70
    .line 71
    invoke-virtual {v1, v4, v3, v2, v12}, Landroid/content/res/ResourcesImpl;->loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    move/from16 v12, p4

    .line 76
    .line 77
    move-object/from16 v13, p5

    .line 78
    .line 79
    invoke-static {v0, v2, v12, v13}, Landroid/graphics/drawable/Drawable;->createFromXmlForDensity(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_1
    iget-object v12, v1, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    .line 88
    .line 89
    iget v13, v2, Landroid/util/TypedValue;->assetCookie:I

    .line 90
    .line 91
    const/4 v15, 0x2

    .line 92
    invoke-virtual {v12, v13, v4, v15}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    .line 93
    .line 94
    .line 95
    move-result-object v12

    .line 96
    const/4 v13, 0x0

    .line 97
    invoke-static {v0, v2, v12, v4, v13}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    .line 103
    .line 104
    :goto_1
    :try_start_2
    invoke-virtual {v14}, Landroid/content/res/ResourcesImpl$LookupStack;->pop()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 105
    .line 106
    .line 107
    const-wide/16 v12, 0x2000

    .line 108
    .line 109
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 110
    .line 111
    .line 112
    if-eqz v5, :cond_4

    .line 113
    .line 114
    ushr-int/lit8 v2, v3, 0x18

    .line 115
    .line 116
    const/4 v5, 0x1

    .line 117
    if-ne v2, v5, :cond_4

    .line 118
    .line 119
    invoke-virtual {v1, v3}, Landroid/content/res/ResourcesImpl;->getResourceName(I)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    if-eqz v2, :cond_4

    .line 124
    .line 125
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 126
    .line 127
    .line 128
    move-result-wide v12

    .line 129
    sub-long/2addr v12, v6

    .line 130
    sget v6, Landroid/graphics/Bitmap;->sPreloadTracingNumInstantiatedBitmaps:I

    .line 131
    .line 132
    sub-int/2addr v6, v8

    .line 133
    sget-wide v7, Landroid/graphics/Bitmap;->sPreloadTracingTotalBitmapsSize:J

    .line 134
    .line 135
    sub-long/2addr v7, v9

    .line 136
    sget v9, Landroid/content/res/ResourcesImpl;->sPreloadTracingNumLoadedDrawables:I

    .line 137
    .line 138
    sub-int v10, v9, v11

    .line 139
    .line 140
    add-int/2addr v9, v5

    .line 141
    sput v9, Landroid/content/res/ResourcesImpl;->sPreloadTracingNumLoadedDrawables:I

    .line 142
    .line 143
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 144
    .line 145
    .line 146
    move-result v9

    .line 147
    if-nez v9, :cond_2

    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_2
    const/4 v5, 0x0

    .line 151
    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .line 155
    .line 156
    if-eqz v5, :cond_3

    .line 157
    .line 158
    const-string v5, "Preloaded FW drawable #"

    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_3
    const-string v5, "Loaded non-preloaded FW drawable #"

    .line 162
    .line 163
    :goto_3
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    const-string v3, " "

    .line 174
    .line 175
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    const-string v2, " #nested_drawables= "

    .line 202
    .line 203
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    const-string v2, " #bitmaps= "

    .line 207
    .line 208
    const-string v3, " total_bitmap_size= "

    .line 209
    .line 210
    invoke-static {v9, v10, v2, v6, v3}, Landroid/app/m;->u(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    const-string v2, " in[us] "

    .line 217
    .line 218
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    const-wide/16 v2, 0x3e8

    .line 222
    .line 223
    div-long/2addr v12, v2

    .line 224
    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    const-string v3, "Resources.preload"

    .line 232
    .line 233
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    .line 235
    .line 236
    :cond_4
    return-object v0

    .line 237
    :catchall_0
    move-exception v0

    .line 238
    :try_start_3
    invoke-virtual {v14}, Landroid/content/res/ResourcesImpl$LookupStack;->pop()V

    .line 239
    .line 240
    .line 241
    throw v0

    .line 242
    :cond_5
    new-instance v0, Ljava/lang/Exception;

    .line 243
    .line 244
    const-string v2, "Recursive reference in drawable"

    .line 245
    .line 246
    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 250
    :catch_0
    move-exception v0

    .line 251
    const-wide/16 v12, 0x2000

    .line 252
    .line 253
    goto :goto_4

    .line 254
    :catch_1
    move-exception v0

    .line 255
    :goto_4
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 256
    .line 257
    .line 258
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    .line 259
    .line 260
    const-string v5, "File "

    .line 261
    .line 262
    const-string v6, " from drawable resource ID #0x"

    .line 263
    .line 264
    invoke-static {v5, v4, v6}, Landroid/accessibilityservice/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    move-result-object v4

    .line 268
    invoke-static {v3, v4}, Landroid/app/m;->d(ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v3

    .line 272
    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 276
    .line 277
    .line 278
    throw v2

    .line 279
    :cond_6
    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    .line 280
    .line 281
    new-instance v4, Ljava/lang/StringBuilder;

    .line 282
    .line 283
    const-string v5, "Resource \""

    .line 284
    .line 285
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v1, v3}, Landroid/content/res/ResourcesImpl;->getResourceName(I)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v5

    .line 292
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    const-string v5, "\" ("

    .line 296
    .line 297
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v3

    .line 304
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    const-string v3, ") is not a Drawable (color or path): "

    .line 308
    .line 309
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v2

    .line 319
    invoke-direct {v0, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    throw v0
.end method

.method private verifyPreloadConfig(IIILjava/lang/String;)Z
    .locals 1

    .line 1
    const v0, -0x40001001    # -1.9995116f

    .line 2
    .line 3
    .line 4
    and-int/2addr p1, v0

    .line 5
    not-int p2, p2

    .line 6
    and-int/2addr p1, p2

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-virtual {p0, p3}, Landroid/content/res/ResourcesImpl;->getResourceName(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    const-string p1, "?"

    .line 15
    .line 16
    :goto_0
    const-string p2, "Preloaded "

    .line 17
    .line 18
    const-string v0, " resource #0x"

    .line 19
    .line 20
    invoke-static {p2, p4, v0}, Landroid/accessibilityservice/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p3, " ("

    .line 32
    .line 33
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p1, ") that varies with configuration!!"

    .line 40
    .line 41
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const-string p2, "Resources"

    .line 49
    .line 50
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    const/4 p1, 0x0

    .line 54
    return p1

    .line 55
    :cond_0
    const/4 p1, 0x1

    .line 56
    return p1
.end method


# virtual methods
.method public calcConfigChanges(Landroid/content/res/Configuration;)I
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, -0x1

    .line 4
    return p1

    .line 5
    :cond_0
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mTmpConfig:Landroid/content/res/Configuration;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 8
    .line 9
    .line 10
    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 11
    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    iget-object p1, p0, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    .line 15
    .line 16
    iget p1, p1, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    .line 17
    .line 18
    :cond_1
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mTmpConfig:Landroid/content/res/Configuration;

    .line 25
    .line 26
    invoke-virtual {v0, p1, v1}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(ILandroid/content/res/Configuration;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Landroid/content/res/ResourcesImpl;->mTmpConfig:Landroid/content/res/Configuration;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Landroid/os/LocaleList;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    iget-object p1, p0, Landroid/content/res/ResourcesImpl;->mTmpConfig:Landroid/content/res/Configuration;

    .line 42
    .line 43
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 48
    .line 49
    .line 50
    :cond_2
    iget-object p1, p0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    .line 51
    .line 52
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mTmpConfig:Landroid/content/res/Configuration;

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    return p1
.end method

.method public finishPreloading()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Landroid/content/res/ResourcesImpl;->mPreloading:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    sget-boolean v0, Landroid/content/res/ResourcesImpl;->TRACE_FOR_DETAILED_PRELOAD:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iget-wide v2, p0, Landroid/content/res/ResourcesImpl;->mPreloadTracingPreloadStartTime:J

    .line 14
    .line 15
    sub-long/2addr v0, v2

    .line 16
    sget-wide v2, Landroid/graphics/Bitmap;->sPreloadTracingTotalBitmapsSize:J

    .line 17
    .line 18
    iget-wide v4, p0, Landroid/content/res/ResourcesImpl;->mPreloadTracingStartBitmapSize:J

    .line 19
    .line 20
    sub-long/2addr v2, v4

    .line 21
    sget v4, Landroid/graphics/Bitmap;->sPreloadTracingNumInstantiatedBitmaps:I

    .line 22
    .line 23
    int-to-long v4, v4

    .line 24
    iget-wide v6, p0, Landroid/content/res/ResourcesImpl;->mPreloadTracingStartBitmapCount:J

    .line 25
    .line 26
    sub-long/2addr v4, v6

    .line 27
    const-string v6, "Preload finished, "

    .line 28
    .line 29
    const-string v7, " bitmaps of "

    .line 30
    .line 31
    invoke-static {v6, v4, v5, v7}, Landroid/app/m;->l(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v2, " bytes in "

    .line 39
    .line 40
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v0, " ms"

    .line 47
    .line 48
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const-string v1, "Resources.preload"

    .line 56
    .line 57
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    :cond_0
    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Landroid/content/res/ResourcesImpl;->mPreloading:Z

    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/content/res/ResourcesImpl;->flushLayoutCache()V

    .line 64
    .line 65
    .line 66
    :cond_1
    return-void
.end method

.method public flushLayoutCache()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlockCookies:[I

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlockFiles:[Ljava/lang/String;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    .line 17
    .line 18
    :goto_0
    const/4 v4, 0x4

    .line 19
    if-ge v2, v4, :cond_1

    .line 20
    .line 21
    aget-object v4, v1, v2

    .line 22
    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    invoke-virtual {v4}, Landroid/content/res/XmlBlock;->close()V

    .line 26
    .line 27
    .line 28
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    monitor-exit v0

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception v1

    .line 37
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw v1
.end method

.method public getAnimatorCache()Landroid/content/res/ConfigurationBoundResourceCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/res/ConfigurationBoundResourceCache<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    return-object v0
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    return-object v0
.end method

.method public getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;
    .locals 1

    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v0}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    return-object v0
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public getDisplayAdjustments()Landroid/view/DisplayAdjustments;
    .locals 1

    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    return-object v0
.end method

.method public getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 1

    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method public getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return p1

    .line 8
    :catch_0
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    .line 9
    .line 10
    invoke-virtual {v0, p1, p2, p3}, Landroid/content/res/AssetManager;->getResourceIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 16
    .line 17
    const-string/jumbo p2, "name is null"

    .line 18
    .line 19
    .line 20
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1
.end method

.method public getPreloadedDrawables()Landroid/util/LongSparseArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/LongSparseArray<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroid/content/res/ResourcesImpl;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getQuantityText(II)Ljava/lang/CharSequence;
    .locals 6

    .line 1
    invoke-direct {p0}, Landroid/content/res/ResourcesImpl;->getPluralRule()Landroid/icu/text/PluralRules;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    .line 6
    .line 7
    int-to-double v2, p2

    .line 8
    invoke-static {v0, v2, v3}, Landroid/animation/b;->h(Landroid/icu/text/PluralRules;D)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    invoke-static {v4}, Landroid/content/res/ResourcesImpl;->attrForQuantityCode(Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    invoke-virtual {v1, p1, v4}, Landroid/content/res/AssetManager;->getResourceBagText(II)Ljava/lang/CharSequence;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    return-object v1

    .line 23
    :cond_0
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    .line 24
    .line 25
    const v4, 0x1000004

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p1, v4}, Landroid/content/res/AssetManager;->getResourceBagText(II)Ljava/lang/CharSequence;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    return-object v1

    .line 35
    :cond_1
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    .line 36
    .line 37
    new-instance v4, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v5, "Plural resource ID #0x"

    .line 40
    .line 41
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string p1, " quantity="

    .line 52
    .line 53
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string p1, " item="

    .line 60
    .line 61
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-static {v0, v2, v3}, Landroid/animation/b;->h(Landroid/icu/text/PluralRules;D)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-direct {v1, p1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw v1
.end method

.method public getResourceEntryName(I)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->getResourceEntryName(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v2, "Unable to find resource ID #0x"

    .line 15
    .line 16
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {p1, v1}, Landroid/app/m;->d(ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-direct {v0, p1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw v0
.end method

.method public getResourceName(I)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->getResourceName(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v2, "Unable to find resource ID #0x"

    .line 15
    .line 16
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {p1, v1}, Landroid/app/m;->d(ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-direct {v0, p1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw v0
.end method

.method public getResourcePackageName(I)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->getResourcePackageName(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v2, "Unable to find resource ID #0x"

    .line 15
    .line 16
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {p1, v1}, Landroid/app/m;->d(ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-direct {v0, p1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw v0
.end method

.method public getResourceTypeName(I)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->getResourceTypeName(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v2, "Unable to find resource ID #0x"

    .line 15
    .line 16
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {p1, v1}, Landroid/app/m;->d(ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-direct {v0, p1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw v0
.end method

.method public getSizeConfigurations()[Landroid/content/res/Configuration;
    .locals 1

    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->getSizeConfigurations()[Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method public getStateListAnimatorCache()Landroid/content/res/ConfigurationBoundResourceCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/res/ConfigurationBoundResourceCache<",
            "Landroid/animation/StateListAnimator;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mStateListAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    return-object v0
.end method

.method public getValue(ILandroid/util/TypedValue;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/content/res/AssetManager;->getResourceValue(IILandroid/util/TypedValue;Z)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p2, Landroid/content/res/Resources$NotFoundException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Resource ID #0x"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {p1, p3}, Landroid/app/m;->d(ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-direct {p2, p1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V
    .locals 2

    const-string/jumbo v0, "string"

    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/ResourcesImpl;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p0, v0, p2, p3}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    return-void

    .line 10
    :cond_0
    new-instance p2, Landroid/content/res/Resources$NotFoundException;

    const-string p3, "String resource name "

    .line 11
    invoke-static {p3, p1}, Landroid/accessibilityservice/c;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-direct {p2, p1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getValueForDensity(IILandroid/util/TypedValue;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/res/AssetManager;->getResourceValue(IILandroid/util/TypedValue;Z)Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance p2, Landroid/content/res/Resources$NotFoundException;

    .line 11
    .line 12
    new-instance p3, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string p4, "Resource ID #0x"

    .line 15
    .line 16
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {p1, p3}, Landroid/app/m;->d(ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-direct {p2, p1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p2
.end method

.method public loadColorStateList(Landroid/content/res/Resources;Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 4

    .line 1
    iget v0, p2, Landroid/util/TypedValue;->assetCookie:I

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    const/16 v2, 0x20

    .line 5
    .line 6
    shl-long/2addr v0, v2

    .line 7
    iget v2, p2, Landroid/util/TypedValue;->data:I

    .line 8
    .line 9
    int-to-long v2, v2

    .line 10
    or-long/2addr v0, v2

    .line 11
    iget v2, p2, Landroid/util/TypedValue;->type:I

    .line 12
    .line 13
    const/16 v3, 0x1c

    .line 14
    .line 15
    if-lt v2, v3, :cond_0

    .line 16
    .line 17
    const/16 v3, 0x1f

    .line 18
    .line 19
    if-gt v2, v3, :cond_0

    .line 20
    .line 21
    invoke-direct {p0, p2, v0, v1}, Landroid/content/res/ResourcesImpl;->getColorStateListFromInt(Landroid/util/TypedValue;J)Landroid/content/res/ColorStateList;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1

    .line 26
    :cond_0
    invoke-direct {p0, p1, p4, p2, p3}, Landroid/content/res/ResourcesImpl;->loadComplexColorFromName(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/TypedValue;I)Landroid/content/res/ComplexColor;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    instance-of p2, p1, Landroid/content/res/ColorStateList;

    .line 33
    .line 34
    if-eqz p2, :cond_1

    .line 35
    .line 36
    check-cast p1, Landroid/content/res/ColorStateList;

    .line 37
    .line 38
    return-object p1

    .line 39
    :cond_1
    new-instance p1, Landroid/content/res/Resources$NotFoundException;

    .line 40
    .line 41
    new-instance p2, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string p4, "Can\'t find ColorStateList from drawable resource ID #0x"

    .line 44
    .line 45
    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-static {p3, p2}, Landroid/app/m;->d(ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-direct {p1, p2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1
.end method

.method public loadComplexColor(Landroid/content/res/Resources;Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;
    .locals 4

    .line 1
    iget v0, p2, Landroid/util/TypedValue;->assetCookie:I

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    const/16 v2, 0x20

    .line 5
    .line 6
    shl-long/2addr v0, v2

    .line 7
    iget v2, p2, Landroid/util/TypedValue;->data:I

    .line 8
    .line 9
    int-to-long v2, v2

    .line 10
    or-long/2addr v0, v2

    .line 11
    iget v2, p2, Landroid/util/TypedValue;->type:I

    .line 12
    .line 13
    const/16 v3, 0x1c

    .line 14
    .line 15
    if-lt v2, v3, :cond_0

    .line 16
    .line 17
    const/16 v3, 0x1f

    .line 18
    .line 19
    if-gt v2, v3, :cond_0

    .line 20
    .line 21
    invoke-direct {p0, p2, v0, v1}, Landroid/content/res/ResourcesImpl;->getColorStateListFromInt(Landroid/util/TypedValue;J)Landroid/content/res/ColorStateList;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1

    .line 26
    :cond_0
    iget-object v0, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, ".xml"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    const-string v2, "File "

    .line 39
    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    :try_start_0
    invoke-direct {p0, p1, p4, p2, p3}, Landroid/content/res/ResourcesImpl;->loadComplexColorFromName(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/TypedValue;I)Landroid/content/res/ComplexColor;

    .line 43
    .line 44
    .line 45
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    return-object p1

    .line 47
    :catch_0
    move-exception p1

    .line 48
    new-instance p2, Landroid/content/res/Resources$NotFoundException;

    .line 49
    .line 50
    const-string p4, " from complex color resource ID #0x"

    .line 51
    .line 52
    invoke-static {v2, v0, p4}, Landroid/accessibilityservice/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    move-result-object p4

    .line 56
    invoke-static {p3, p4}, Landroid/app/m;->d(ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p3

    .line 60
    invoke-direct {p2, p3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 64
    .line 65
    .line 66
    throw p2

    .line 67
    :cond_1
    new-instance p1, Landroid/content/res/Resources$NotFoundException;

    .line 68
    .line 69
    const-string p2, " from drawable resource ID #0x"

    .line 70
    .line 71
    invoke-static {v2, v0, p2}, Landroid/accessibilityservice/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p3

    .line 79
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string p3, ": .xml extension required"

    .line 83
    .line 84
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    invoke-direct {p1, p2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw p1
.end method

.method public loadDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 18

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v7, p2

    .line 6
    .line 7
    move/from16 v11, p3

    .line 8
    .line 9
    move/from16 v5, p4

    .line 10
    .line 11
    move-object/from16 v8, p5

    .line 12
    .line 13
    const-string v1, "Hit preloaded FW drawable #"

    .line 14
    .line 15
    const/4 v12, 0x0

    .line 16
    if-eqz v5, :cond_1

    .line 17
    .line 18
    iget v3, v7, Landroid/util/TypedValue;->density:I

    .line 19
    .line 20
    iget-object v4, v10, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    .line 21
    .line 22
    iget v4, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 23
    .line 24
    if-ne v3, v4, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v9, v12

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    :goto_0
    const/4 v9, 0x1

    .line 30
    :goto_1
    if-lez v5, :cond_3

    .line 31
    .line 32
    iget v3, v7, Landroid/util/TypedValue;->density:I

    .line 33
    .line 34
    if-lez v3, :cond_3

    .line 35
    .line 36
    const v4, 0xffff

    .line 37
    .line 38
    .line 39
    if-eq v3, v4, :cond_3

    .line 40
    .line 41
    if-ne v3, v5, :cond_2

    .line 42
    .line 43
    iget-object v3, v10, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    .line 44
    .line 45
    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 46
    .line 47
    iput v3, v7, Landroid/util/TypedValue;->density:I

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    iget-object v4, v10, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    .line 51
    .line 52
    iget v4, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 53
    .line 54
    mul-int/2addr v3, v4

    .line 55
    div-int/2addr v3, v5

    .line 56
    iput v3, v7, Landroid/util/TypedValue;->density:I

    .line 57
    .line 58
    :cond_3
    :goto_2
    :try_start_0
    iget v3, v7, Landroid/util/TypedValue;->type:I

    .line 59
    .line 60
    const/16 v4, 0x1c

    .line 61
    .line 62
    if-lt v3, v4, :cond_4

    .line 63
    .line 64
    const/16 v4, 0x1f

    .line 65
    .line 66
    if-gt v3, v4, :cond_4

    .line 67
    .line 68
    iget-object v3, v10, Landroid/content/res/ResourcesImpl;->mColorDrawableCache:Landroid/content/res/DrawableCache;

    .line 69
    .line 70
    iget v4, v7, Landroid/util/TypedValue;->data:I

    .line 71
    .line 72
    int-to-long v13, v4

    .line 73
    move-object v15, v3

    .line 74
    move-wide v3, v13

    .line 75
    const/4 v13, 0x1

    .line 76
    goto :goto_3

    .line 77
    :cond_4
    iget-object v3, v10, Landroid/content/res/ResourcesImpl;->mDrawableCache:Landroid/content/res/DrawableCache;

    .line 78
    .line 79
    iget v4, v7, Landroid/util/TypedValue;->assetCookie:I

    .line 80
    .line 81
    int-to-long v13, v4

    .line 82
    const/16 v4, 0x20

    .line 83
    .line 84
    shl-long/2addr v13, v4

    .line 85
    iget v4, v7, Landroid/util/TypedValue;->data:I

    .line 86
    .line 87
    move-object v15, v3

    .line 88
    int-to-long v2, v4

    .line 89
    or-long/2addr v2, v13

    .line 90
    move-wide v3, v2

    .line 91
    move v13, v12

    .line 92
    :goto_3
    iget-boolean v2, v10, Landroid/content/res/ResourcesImpl;->mPreloading:Z

    .line 93
    .line 94
    if-nez v2, :cond_5

    .line 95
    .line 96
    if-eqz v9, :cond_5

    .line 97
    .line 98
    invoke-virtual {v15, v3, v4, v0, v8}, Landroid/content/res/DrawableCache;->getInstance(JLandroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    if-eqz v2, :cond_5

    .line 103
    .line 104
    iget v0, v7, Landroid/util/TypedValue;->changingConfigurations:I

    .line 105
    .line 106
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 107
    .line 108
    .line 109
    return-object v2

    .line 110
    :cond_5
    if-eqz v13, :cond_6

    .line 111
    .line 112
    sget-object v2, Landroid/content/res/ResourcesImpl;->sPreloadedColorDrawables:Landroid/util/LongSparseArray;

    .line 113
    .line 114
    invoke-virtual {v2, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    check-cast v2, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 119
    .line 120
    goto :goto_4

    .line 121
    :cond_6
    sget-object v2, Landroid/content/res/ResourcesImpl;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    .line 122
    .line 123
    iget-object v14, v10, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    .line 124
    .line 125
    invoke-virtual {v14}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 126
    .line 127
    .line 128
    move-result v14

    .line 129
    aget-object v2, v2, v14

    .line 130
    .line 131
    invoke-virtual {v2, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    check-cast v2, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 136
    .line 137
    :goto_4
    if-eqz v2, :cond_8

    .line 138
    .line 139
    sget-boolean v5, Landroid/content/res/ResourcesImpl;->TRACE_FOR_DETAILED_PRELOAD:Z

    .line 140
    .line 141
    if-eqz v5, :cond_7

    .line 142
    .line 143
    ushr-int/lit8 v5, v11, 0x18

    .line 144
    .line 145
    const/4 v6, 0x1

    .line 146
    if-ne v5, v6, :cond_7

    .line 147
    .line 148
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 149
    .line 150
    .line 151
    move-result v5

    .line 152
    if-eqz v5, :cond_7

    .line 153
    .line 154
    invoke-virtual {v10, v11}, Landroid/content/res/ResourcesImpl;->getResourceName(I)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    if-eqz v5, :cond_7

    .line 159
    .line 160
    const-string v6, "Resources.preload"

    .line 161
    .line 162
    new-instance v14, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {v14, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    const-string v1, " "

    .line 175
    .line 176
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    .line 188
    .line 189
    :cond_7
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    goto :goto_5

    .line 194
    :cond_8
    if-eqz v13, :cond_9

    .line 195
    .line 196
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 197
    .line 198
    iget v2, v7, Landroid/util/TypedValue;->data:I

    .line 199
    .line 200
    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 201
    .line 202
    .line 203
    :goto_5
    move-wide/from16 v16, v3

    .line 204
    .line 205
    goto :goto_6

    .line 206
    :cond_9
    const/4 v6, 0x0

    .line 207
    move-object/from16 v1, p0

    .line 208
    .line 209
    move-object/from16 v2, p1

    .line 210
    .line 211
    move-wide/from16 v16, v3

    .line 212
    .line 213
    move-object/from16 v3, p2

    .line 214
    .line 215
    move/from16 v4, p3

    .line 216
    .line 217
    move/from16 v5, p4

    .line 218
    .line 219
    invoke-direct/range {v1 .. v6}, Landroid/content/res/ResourcesImpl;->loadDrawableForCookie(Landroid/content/res/Resources;Landroid/util/TypedValue;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    :goto_6
    instance-of v14, v1, Landroid/graphics/drawable/DrawableContainer;

    .line 224
    .line 225
    if-eqz v1, :cond_a

    .line 226
    .line 227
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    if-eqz v2, :cond_a

    .line 232
    .line 233
    const/4 v2, 0x1

    .line 234
    move v6, v2

    .line 235
    goto :goto_7

    .line 236
    :cond_a
    move v6, v12

    .line 237
    :goto_7
    if-eqz v6, :cond_b

    .line 238
    .line 239
    if-eqz v8, :cond_b

    .line 240
    .line 241
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    .line 249
    .line 250
    .line 251
    :cond_b
    move-object v5, v1

    .line 252
    if-eqz v5, :cond_c

    .line 253
    .line 254
    iget v1, v7, Landroid/util/TypedValue;->changingConfigurations:I

    .line 255
    .line 256
    invoke-virtual {v5, v1}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 257
    .line 258
    .line 259
    if-eqz v9, :cond_c

    .line 260
    .line 261
    move-object/from16 v1, p0

    .line 262
    .line 263
    move-object/from16 v2, p2

    .line 264
    .line 265
    move v3, v13

    .line 266
    move-object v4, v15

    .line 267
    move-object v13, v5

    .line 268
    move-object/from16 v5, p5

    .line 269
    .line 270
    move-wide/from16 v7, v16

    .line 271
    .line 272
    move-object v9, v13

    .line 273
    invoke-direct/range {v1 .. v9}, Landroid/content/res/ResourcesImpl;->cacheDrawable(Landroid/util/TypedValue;ZLandroid/content/res/DrawableCache;Landroid/content/res/Resources$Theme;ZJLandroid/graphics/drawable/Drawable;)V

    .line 274
    .line 275
    .line 276
    if-eqz v14, :cond_d

    .line 277
    .line 278
    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    if-eqz v1, :cond_d

    .line 283
    .line 284
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    .line 285
    .line 286
    .line 287
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    goto :goto_8

    .line 289
    :cond_c
    move-object v13, v5

    .line 290
    :cond_d
    move-object v5, v13

    .line 291
    :goto_8
    return-object v5

    .line 292
    :catch_0
    move-exception v0

    .line 293
    :try_start_1
    invoke-virtual {v10, v11}, Landroid/content/res/ResourcesImpl;->getResourceName(I)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v1
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 297
    goto :goto_9

    .line 298
    :catch_1
    const-string v1, "(missing name)"

    .line 299
    .line 300
    :goto_9
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    .line 301
    .line 302
    const-string v3, "Drawable "

    .line 303
    .line 304
    const-string v4, " with resource ID #0x"

    .line 305
    .line 306
    invoke-static {v3, v1, v4}, Landroid/accessibilityservice/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    invoke-static {v11, v1}, Landroid/app/m;->d(ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    invoke-direct {v2, v1, v0}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 315
    .line 316
    .line 317
    new-array v0, v12, [Ljava/lang/StackTraceElement;

    .line 318
    .line 319
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 320
    .line 321
    .line 322
    throw v2
.end method

.method public loadFont(Landroid/content/res/Resources;Landroid/util/TypedValue;I)Landroid/graphics/Typeface;
    .locals 8

    .line 1
    const-string v0, "Resources"

    .line 2
    .line 3
    const-string v1, "Failed to read xml resource "

    .line 4
    .line 5
    const-string v2, "Failed to parse xml resource "

    .line 6
    .line 7
    iget-object v3, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 8
    .line 9
    if-eqz v3, :cond_4

    .line 10
    .line 11
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    const-string/jumbo v4, "res/"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    const/4 v5, 0x0

    .line 23
    if-nez v4, :cond_0

    .line 24
    .line 25
    return-object v5

    .line 26
    :cond_0
    iget-object v4, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    .line 27
    .line 28
    invoke-static {v4, v3}, Landroid/graphics/Typeface;->findFromCache(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    if-eqz v4, :cond_1

    .line 33
    .line 34
    return-object v4

    .line 35
    :cond_1
    const-wide/16 v6, 0x2000

    .line 36
    .line 37
    invoke-static {v6, v7, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :try_start_0
    const-string/jumbo v4, "xml"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_3

    .line 48
    .line 49
    iget p2, p2, Landroid/util/TypedValue;->assetCookie:I

    .line 50
    .line 51
    const-string v4, "font"

    .line 52
    .line 53
    invoke-virtual {p0, v3, p3, p2, v4}, Landroid/content/res/ResourcesImpl;->loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-static {p2, p1}, Landroid/content/res/FontResourcesParser;->parse(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroid/content/res/FontResourcesParser$FamilyResourceEntry;

    .line 58
    .line 59
    .line 60
    move-result-object p1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    if-nez p1, :cond_2

    .line 62
    .line 63
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 64
    .line 65
    .line 66
    return-object v5

    .line 67
    :cond_2
    :try_start_1
    iget-object p2, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    .line 68
    .line 69
    invoke-static {p1, p2, v3}, Landroid/graphics/Typeface;->createFromResources(Landroid/content/res/FontResourcesParser$FamilyResourceEntry;Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 70
    .line 71
    .line 72
    move-result-object p1
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 74
    .line 75
    .line 76
    return-object p1

    .line 77
    :cond_3
    :try_start_2
    iget-object p1, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    .line 78
    .line 79
    iget p2, p2, Landroid/util/TypedValue;->assetCookie:I

    .line 80
    .line 81
    invoke-static {p1, v3, p2}, Landroid/graphics/Typeface;->createFromResources(Landroid/content/res/AssetManager;Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 82
    .line 83
    .line 84
    move-result-object p1
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 86
    .line 87
    .line 88
    return-object p1

    .line 89
    :catchall_0
    move-exception p1

    .line 90
    goto :goto_1

    .line 91
    :catch_0
    move-exception p1

    .line 92
    :try_start_3
    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :catch_1
    move-exception p1

    .line 101
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 106
    .line 107
    .line 108
    :goto_0
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 109
    .line 110
    .line 111
    return-object v5

    .line 112
    :goto_1
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 113
    .line 114
    .line 115
    throw p1

    .line 116
    :cond_4
    new-instance p1, Landroid/content/res/Resources$NotFoundException;

    .line 117
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    const-string v1, "Resource \""

    .line 121
    .line 122
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0, p3}, Landroid/content/res/ResourcesImpl;->getResourceName(I)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v1, "\" ("

    .line 133
    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p3

    .line 141
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string p3, ") is not a Font: "

    .line 145
    .line 146
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    invoke-direct {p1, p2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    throw p1
.end method

.method public loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    .locals 7

    .line 1
    if-eqz p2, :cond_4

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    .line 4
    .line 5
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :try_start_1
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlockCookies:[I

    .line 7
    .line 8
    iget-object v2, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlockFiles:[Ljava/lang/String;

    .line 9
    .line 10
    iget-object v3, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    .line 11
    .line 12
    array-length v4, v2

    .line 13
    const/4 v5, 0x0

    .line 14
    :goto_0
    if-ge v5, v4, :cond_1

    .line 15
    .line 16
    aget v6, v1, v5

    .line 17
    .line 18
    if-ne v6, p3, :cond_0

    .line 19
    .line 20
    aget-object v6, v2, v5

    .line 21
    .line 22
    if-eqz v6, :cond_0

    .line 23
    .line 24
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    if-eqz v6, :cond_0

    .line 29
    .line 30
    aget-object p3, v3, v5

    .line 31
    .line 32
    invoke-virtual {p3}, Landroid/content/res/XmlBlock;->newParser()Landroid/content/res/XmlResourceParser;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    monitor-exit v0

    .line 37
    return-object p3

    .line 38
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget-object v5, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    .line 42
    .line 43
    invoke-virtual {v5, p3, p1}, Landroid/content/res/AssetManager;->openXmlBlockAsset(ILjava/lang/String;)Landroid/content/res/XmlBlock;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    if-eqz v5, :cond_3

    .line 48
    .line 49
    iget v6, p0, Landroid/content/res/ResourcesImpl;->mLastCachedXmlBlockIndex:I

    .line 50
    .line 51
    add-int/lit8 v6, v6, 0x1

    .line 52
    .line 53
    rem-int/2addr v6, v4

    .line 54
    iput v6, p0, Landroid/content/res/ResourcesImpl;->mLastCachedXmlBlockIndex:I

    .line 55
    .line 56
    aget-object v4, v3, v6

    .line 57
    .line 58
    if-eqz v4, :cond_2

    .line 59
    .line 60
    invoke-virtual {v4}, Landroid/content/res/XmlBlock;->close()V

    .line 61
    .line 62
    .line 63
    :cond_2
    aput p3, v1, v6

    .line 64
    .line 65
    aput-object p1, v2, v6

    .line 66
    .line 67
    aput-object v5, v3, v6

    .line 68
    .line 69
    invoke-virtual {v5}, Landroid/content/res/XmlBlock;->newParser()Landroid/content/res/XmlResourceParser;

    .line 70
    .line 71
    .line 72
    move-result-object p3

    .line 73
    monitor-exit v0

    .line 74
    return-object p3

    .line 75
    :cond_3
    monitor-exit v0

    .line 76
    goto :goto_1

    .line 77
    :catchall_0
    move-exception p3

    .line 78
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    :try_start_2
    throw p3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 80
    :catch_0
    move-exception p3

    .line 81
    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    .line 82
    .line 83
    const-string v1, "File "

    .line 84
    .line 85
    const-string v2, " from xml type "

    .line 86
    .line 87
    const-string v3, " resource ID #0x"

    .line 88
    .line 89
    invoke-static {v1, p1, v2, p4, v3}, Landroid/accessibilityservice/c;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-static {p2, p1}, Landroid/app/m;->d(ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-direct {v0, p1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, p3}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 101
    .line 102
    .line 103
    throw v0

    .line 104
    :cond_4
    :goto_1
    new-instance p3, Landroid/content/res/Resources$NotFoundException;

    .line 105
    .line 106
    const-string v0, "File "

    .line 107
    .line 108
    const-string v1, " from xml type "

    .line 109
    .line 110
    const-string v2, " resource ID #0x"

    .line 111
    .line 112
    invoke-static {v0, p1, v1, p4, v2}, Landroid/accessibilityservice/c;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-static {p2, p1}, Landroid/app/m;->d(ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-direct {p3, p1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw p3
.end method

.method public newThemeImpl()Landroid/content/res/ResourcesImpl$ThemeImpl;
    .locals 1

    .line 1
    new-instance v0, Landroid/content/res/ResourcesImpl$ThemeImpl;

    invoke-direct {v0, p0}, Landroid/content/res/ResourcesImpl$ThemeImpl;-><init>(Landroid/content/res/ResourcesImpl;)V

    return-object v0
.end method

.method public newThemeImpl(Landroid/content/res/Resources$ThemeKey;)Landroid/content/res/ResourcesImpl$ThemeImpl;
    .locals 2

    .line 2
    new-instance v0, Landroid/content/res/ResourcesImpl$ThemeImpl;

    invoke-direct {v0, p0}, Landroid/content/res/ResourcesImpl$ThemeImpl;-><init>(Landroid/content/res/ResourcesImpl;)V

    .line 3
    invoke-static {v0}, Landroid/content/res/ResourcesImpl$ThemeImpl;->access$000(Landroid/content/res/ResourcesImpl$ThemeImpl;)Landroid/content/res/Resources$ThemeKey;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources$ThemeKey;->setTo(Landroid/content/res/Resources$ThemeKey;)V

    .line 4
    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl$ThemeImpl;->rebase()V

    return-object v0
.end method

.method public openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    .line 3
    .line 4
    .line 5
    :try_start_0
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    .line 6
    .line 7
    iget v1, p2, Landroid/util/TypedValue;->assetCookie:I

    .line 8
    .line 9
    iget-object v2, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 10
    .line 11
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const/4 v3, 0x2

    .line 16
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    .line 17
    .line 18
    .line 19
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    return-object p1

    .line 21
    :catch_0
    move-exception v0

    .line 22
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    .line 23
    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v3, "File "

    .line 27
    .line 28
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p2, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 32
    .line 33
    if-nez p2, :cond_0

    .line 34
    .line 35
    const-string p2, "(null)"

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    :goto_0
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p2, " from drawable resource ID #0x"

    .line 46
    .line 47
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-direct {v1, p1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 65
    .line 66
    .line 67
    throw v1
.end method

.method public openRawResourceFd(ILandroid/util/TypedValue;)Landroid/content/res/AssetFileDescriptor;
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    .line 3
    .line 4
    .line 5
    :try_start_0
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    .line 6
    .line 7
    iget v1, p2, Landroid/util/TypedValue;->assetCookie:I

    .line 8
    .line 9
    iget-object v2, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 10
    .line 11
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/content/res/AssetManager;->openNonAssetFd(ILjava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    .line 16
    .line 17
    .line 18
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    return-object p1

    .line 20
    :catch_0
    move-exception v0

    .line 21
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    .line 22
    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v3, "File "

    .line 26
    .line 27
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object p2, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 31
    .line 32
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p2, " from drawable resource ID #0x"

    .line 40
    .line 41
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-direct {v1, p1, v0}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 56
    .line 57
    .line 58
    throw v1
.end method

.method public final startPreloading()V
    .locals 3

    .line 1
    sget-object v0, Landroid/content/res/ResourcesImpl;->sSync:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Landroid/content/res/ResourcesImpl;->sPreloaded:Z

    .line 5
    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    sput-boolean v1, Landroid/content/res/ResourcesImpl;->sPreloaded:Z

    .line 10
    .line 11
    iput-boolean v1, p0, Landroid/content/res/ResourcesImpl;->mPreloading:Z

    .line 12
    .line 13
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    .line 14
    .line 15
    sget v2, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    .line 16
    .line 17
    iput v2, v1, Landroid/content/res/Configuration;->densityDpi:I

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p0, v1, v1, v1}, Landroid/content/res/ResourcesImpl;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 21
    .line 22
    .line 23
    sget-boolean v1, Landroid/content/res/ResourcesImpl;->TRACE_FOR_DETAILED_PRELOAD:Z

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 28
    .line 29
    .line 30
    move-result-wide v1

    .line 31
    iput-wide v1, p0, Landroid/content/res/ResourcesImpl;->mPreloadTracingPreloadStartTime:J

    .line 32
    .line 33
    sget-wide v1, Landroid/graphics/Bitmap;->sPreloadTracingTotalBitmapsSize:J

    .line 34
    .line 35
    iput-wide v1, p0, Landroid/content/res/ResourcesImpl;->mPreloadTracingStartBitmapSize:J

    .line 36
    .line 37
    sget v1, Landroid/graphics/Bitmap;->sPreloadTracingNumInstantiatedBitmaps:I

    .line 38
    .line 39
    int-to-long v1, v1

    .line 40
    iput-wide v1, p0, Landroid/content/res/ResourcesImpl;->mPreloadTracingStartBitmapCount:J

    .line 41
    .line 42
    const-string v1, "Resources.preload"

    .line 43
    .line 44
    const-string v2, "Preload starting"

    .line 45
    .line 46
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    :cond_0
    monitor-exit v0

    .line 50
    return-void

    .line 51
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    const-string v2, "Resources already preloaded"

    .line 54
    .line 55
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v1

    .line 59
    :catchall_0
    move-exception v1

    .line 60
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    throw v1
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V
    .locals 29

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    const-string v3, "ResourcesImpl#updateConfiguration"

    .line 8
    .line 9
    const-wide/16 v4, 0x2000

    .line 10
    .line 11
    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :try_start_0
    iget-object v3, v1, Landroid/content/res/ResourcesImpl;->mAccessLock:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    :try_start_1
    iget-object v6, v1, Landroid/content/res/ResourcesImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    .line 20
    .line 21
    invoke-virtual {v6, v2}, Landroid/view/DisplayAdjustments;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    goto/16 :goto_3

    .line 27
    .line 28
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-object v2, v1, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    .line 31
    .line 32
    invoke-virtual {v2, v0}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    iget-object v0, v1, Landroid/content/res/ResourcesImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v2, v1, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Landroid/content/res/CompatibilityInfo;->applyToDisplayMetrics(Landroid/util/DisplayMetrics;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual/range {p0 .. p1}, Landroid/content/res/ResourcesImpl;->calcConfigChanges(Landroid/content/res/Configuration;)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    iget-object v2, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    .line 51
    .line 52
    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v2}, Landroid/os/LocaleList;->isEmpty()Z

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    if-eqz v6, :cond_2

    .line 61
    .line 62
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    iget-object v6, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    .line 67
    .line 68
    invoke-virtual {v6, v2}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 69
    .line 70
    .line 71
    :cond_2
    and-int/lit8 v6, v0, 0x4

    .line 72
    .line 73
    const/4 v7, 0x1

    .line 74
    const/4 v8, 0x0

    .line 75
    if-eqz v6, :cond_4

    .line 76
    .line 77
    invoke-virtual {v2}, Landroid/os/LocaleList;->size()I

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    if-le v6, v7, :cond_4

    .line 82
    .line 83
    iget-object v6, v1, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    .line 84
    .line 85
    invoke-virtual {v6}, Landroid/content/res/AssetManager;->getNonSystemLocales()[Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    invoke-static {v6}, Landroid/os/LocaleList;->isPseudoLocalesOnly([Ljava/lang/String;)Z

    .line 90
    .line 91
    .line 92
    move-result v9

    .line 93
    if-eqz v9, :cond_3

    .line 94
    .line 95
    iget-object v6, v1, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    .line 96
    .line 97
    invoke-virtual {v6}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    invoke-static {v6}, Landroid/os/LocaleList;->isPseudoLocalesOnly([Ljava/lang/String;)Z

    .line 102
    .line 103
    .line 104
    move-result v9

    .line 105
    if-eqz v9, :cond_3

    .line 106
    .line 107
    const/4 v6, 0x0

    .line 108
    :cond_3
    if-eqz v6, :cond_4

    .line 109
    .line 110
    invoke-virtual {v2, v6}, Landroid/os/LocaleList;->getFirstMatchWithEnglishSupported([Ljava/lang/String;)Ljava/util/Locale;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    if-eqz v6, :cond_4

    .line 115
    .line 116
    invoke-virtual {v2, v8}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    .line 117
    .line 118
    .line 119
    move-result-object v9

    .line 120
    if-eq v6, v9, :cond_4

    .line 121
    .line 122
    iget-object v9, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    .line 123
    .line 124
    new-instance v10, Landroid/os/LocaleList;

    .line 125
    .line 126
    invoke-direct {v10, v6, v2}, Landroid/os/LocaleList;-><init>(Ljava/util/Locale;Landroid/os/LocaleList;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v9, v10}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 130
    .line 131
    .line 132
    :cond_4
    iget-object v2, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    .line 133
    .line 134
    iget v6, v2, Landroid/content/res/Configuration;->densityDpi:I

    .line 135
    .line 136
    if-eqz v6, :cond_5

    .line 137
    .line 138
    iget-object v9, v1, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    .line 139
    .line 140
    iput v6, v9, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 141
    .line 142
    int-to-float v6, v6

    .line 143
    const v10, 0x3bcccccd    # 0.00625f

    .line 144
    .line 145
    .line 146
    mul-float/2addr v6, v10

    .line 147
    iput v6, v9, Landroid/util/DisplayMetrics;->density:F

    .line 148
    .line 149
    :cond_5
    iget-object v6, v1, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    .line 150
    .line 151
    iget v9, v6, Landroid/util/DisplayMetrics;->density:F

    .line 152
    .line 153
    iget v10, v2, Landroid/content/res/Configuration;->fontScale:F

    .line 154
    .line 155
    const/4 v11, 0x0

    .line 156
    cmpl-float v11, v10, v11

    .line 157
    .line 158
    if-eqz v11, :cond_6

    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_6
    const/high16 v10, 0x3f800000    # 1.0f

    .line 162
    .line 163
    :goto_1
    mul-float/2addr v9, v10

    .line 164
    iput v9, v6, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 165
    .line 166
    iget v9, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 167
    .line 168
    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 169
    .line 170
    if-lt v9, v6, :cond_7

    .line 171
    .line 172
    move/from16 v21, v6

    .line 173
    .line 174
    move/from16 v20, v9

    .line 175
    .line 176
    goto :goto_2

    .line 177
    :cond_7
    move/from16 v20, v6

    .line 178
    .line 179
    move/from16 v21, v9

    .line 180
    .line 181
    :goto_2
    iget v6, v2, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 182
    .line 183
    if-ne v6, v7, :cond_8

    .line 184
    .line 185
    iget v7, v2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 186
    .line 187
    const/4 v9, 0x2

    .line 188
    if-ne v7, v9, :cond_8

    .line 189
    .line 190
    const/4 v6, 0x3

    .line 191
    :cond_8
    move/from16 v18, v6

    .line 192
    .line 193
    iget-object v10, v1, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    .line 194
    .line 195
    iget v11, v2, Landroid/content/res/Configuration;->mcc:I

    .line 196
    .line 197
    iget v12, v2, Landroid/content/res/Configuration;->mnc:I

    .line 198
    .line 199
    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    invoke-virtual {v2, v8}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    invoke-static {v2}, Landroid/content/res/ResourcesImpl;->adjustLanguageTag(Ljava/lang/String;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v13

    .line 215
    iget-object v2, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    .line 216
    .line 217
    iget v14, v2, Landroid/content/res/Configuration;->orientation:I

    .line 218
    .line 219
    iget v15, v2, Landroid/content/res/Configuration;->touchscreen:I

    .line 220
    .line 221
    iget v6, v2, Landroid/content/res/Configuration;->densityDpi:I

    .line 222
    .line 223
    iget v7, v2, Landroid/content/res/Configuration;->keyboard:I

    .line 224
    .line 225
    iget v9, v2, Landroid/content/res/Configuration;->navigation:I

    .line 226
    .line 227
    iget v4, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 228
    .line 229
    iget v5, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 230
    .line 231
    iget v8, v2, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 232
    .line 233
    move/from16 p2, v0

    .line 234
    .line 235
    iget v0, v2, Landroid/content/res/Configuration;->screenLayout:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    .line 237
    :try_start_2
    iget v1, v2, Landroid/content/res/Configuration;->uiMode:I

    .line 238
    .line 239
    iget v2, v2, Landroid/content/res/Configuration;->colorMode:I

    .line 240
    .line 241
    sget v28, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    .line 242
    .line 243
    move/from16 v16, v6

    .line 244
    .line 245
    move/from16 v17, v7

    .line 246
    .line 247
    move/from16 v19, v9

    .line 248
    .line 249
    move/from16 v22, v4

    .line 250
    .line 251
    move/from16 v23, v5

    .line 252
    .line 253
    move/from16 v24, v8

    .line 254
    .line 255
    move/from16 v25, v0

    .line 256
    .line 257
    move/from16 v26, v1

    .line 258
    .line 259
    move/from16 v27, v2

    .line 260
    .line 261
    invoke-virtual/range {v10 .. v28}, Landroid/content/res/AssetManager;->setConfiguration(IILjava/lang/String;IIIIIIIIIIIIIII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 262
    .line 263
    .line 264
    move-object/from16 v1, p0

    .line 265
    .line 266
    :try_start_3
    iget-object v0, v1, Landroid/content/res/ResourcesImpl;->mDrawableCache:Landroid/content/res/DrawableCache;

    .line 267
    .line 268
    move/from16 v2, p2

    .line 269
    .line 270
    invoke-virtual {v0, v2}, Landroid/content/res/ThemedResourceCache;->onConfigurationChange(I)V

    .line 271
    .line 272
    .line 273
    iget-object v0, v1, Landroid/content/res/ResourcesImpl;->mColorDrawableCache:Landroid/content/res/DrawableCache;

    .line 274
    .line 275
    invoke-virtual {v0, v2}, Landroid/content/res/ThemedResourceCache;->onConfigurationChange(I)V

    .line 276
    .line 277
    .line 278
    iget-object v0, v1, Landroid/content/res/ResourcesImpl;->mComplexColorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    .line 279
    .line 280
    invoke-virtual {v0, v2}, Landroid/content/res/ConfigurationBoundResourceCache;->onConfigurationChange(I)V

    .line 281
    .line 282
    .line 283
    iget-object v0, v1, Landroid/content/res/ResourcesImpl;->mAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    .line 284
    .line 285
    invoke-virtual {v0, v2}, Landroid/content/res/ConfigurationBoundResourceCache;->onConfigurationChange(I)V

    .line 286
    .line 287
    .line 288
    iget-object v0, v1, Landroid/content/res/ResourcesImpl;->mStateListAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    .line 289
    .line 290
    invoke-virtual {v0, v2}, Landroid/content/res/ConfigurationBoundResourceCache;->onConfigurationChange(I)V

    .line 291
    .line 292
    .line 293
    invoke-virtual/range {p0 .. p0}, Landroid/content/res/ResourcesImpl;->flushLayoutCache()V

    .line 294
    .line 295
    .line 296
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 297
    :try_start_4
    sget-object v2, Landroid/content/res/ResourcesImpl;->sSync:Ljava/lang/Object;

    .line 298
    .line 299
    monitor-enter v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 300
    :try_start_5
    iget-object v0, v1, Landroid/content/res/ResourcesImpl;->mPluralRule:Landroid/icu/text/PluralRules;

    .line 301
    .line 302
    if-eqz v0, :cond_9

    .line 303
    .line 304
    iget-object v0, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    .line 305
    .line 306
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    const/4 v3, 0x0

    .line 311
    invoke-virtual {v0, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    invoke-static {v0}, Landroid/animation/b;->d(Ljava/util/Locale;)Landroid/icu/text/PluralRules;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    iput-object v0, v1, Landroid/content/res/ResourcesImpl;->mPluralRule:Landroid/icu/text/PluralRules;

    .line 320
    .line 321
    :cond_9
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 322
    const-wide/16 v2, 0x2000

    .line 323
    .line 324
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 325
    .line 326
    .line 327
    return-void

    .line 328
    :catchall_1
    move-exception v0

    .line 329
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 330
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 331
    :catchall_2
    move-exception v0

    .line 332
    move-object/from16 v1, p0

    .line 333
    .line 334
    :goto_3
    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 335
    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 336
    :catchall_3
    move-exception v0

    .line 337
    const-wide/16 v2, 0x2000

    .line 338
    .line 339
    goto :goto_4

    .line 340
    :catchall_4
    move-exception v0

    .line 341
    move-wide v2, v4

    .line 342
    :goto_4
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 343
    .line 344
    .line 345
    throw v0
.end method
