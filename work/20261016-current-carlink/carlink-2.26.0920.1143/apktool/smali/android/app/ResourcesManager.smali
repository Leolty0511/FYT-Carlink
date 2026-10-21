.class public Landroid/app/ResourcesManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ResourcesManager$ActivityResources;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "ResourcesManager"

.field private static final sEmptyReferencePredicate:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/res/Resources;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sResourcesManager:Landroid/app/ResourcesManager;


# instance fields
.field private final mActivityResourceReferences:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/os/IBinder;",
            "Landroid/app/ResourcesManager$ActivityResources;",
            ">;"
        }
    .end annotation
.end field

.field private final mAdjustedDisplays:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/view/DisplayAdjustments;",
            ">;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/Display;",
            ">;>;"
        }
    .end annotation
.end field

.field private mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

.field private final mResConfiguration:Landroid/content/res/Configuration;

.field private final mResourceImpls:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/res/ResourcesKey;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/res/ResourcesImpl;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mResourceReferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/res/Resources;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/ResourcesManager$1;

    invoke-direct {v0}, Landroid/app/ResourcesManager$1;-><init>()V

    sput-object v0, Landroid/app/ResourcesManager;->sEmptyReferencePredicate:Ljava/util/function/Predicate;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/content/res/Configuration;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    .line 10
    .line 11
    new-instance v0, Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    .line 24
    .line 25
    new-instance v0, Ljava/util/WeakHashMap;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Landroid/app/ResourcesManager;->mActivityResourceReferences:Ljava/util/WeakHashMap;

    .line 31
    .line 32
    new-instance v0, Landroid/util/ArrayMap;

    .line 33
    .line 34
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Landroid/app/ResourcesManager;->mAdjustedDisplays:Landroid/util/ArrayMap;

    .line 38
    .line 39
    return-void
.end method

.method private static applyNonDefaultDisplayMetricsToConfiguration(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p1, Landroid/content/res/Configuration;->touchscreen:I

    .line 3
    .line 4
    iget v1, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 5
    .line 6
    iput v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 7
    .line 8
    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 9
    .line 10
    int-to-float v1, v1

    .line 11
    iget v2, p0, Landroid/util/DisplayMetrics;->density:F

    .line 12
    .line 13
    div-float/2addr v1, v2

    .line 14
    float-to-int v1, v1

    .line 15
    iput v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 16
    .line 17
    iget v1, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 18
    .line 19
    int-to-float v1, v1

    .line 20
    div-float/2addr v1, v2

    .line 21
    float-to-int v1, v1

    .line 22
    iput v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 23
    .line 24
    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 25
    .line 26
    invoke-static {v1}, Landroid/content/res/Configuration;->resetScreenLayout(I)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    iget v2, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 31
    .line 32
    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 33
    .line 34
    if-le v2, p0, :cond_0

    .line 35
    .line 36
    const/4 p0, 0x2

    .line 37
    iput p0, p1, Landroid/content/res/Configuration;->orientation:I

    .line 38
    .line 39
    iget p0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 40
    .line 41
    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 42
    .line 43
    invoke-static {v1, p0, v0}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    iput p0, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iput v0, p1, Landroid/content/res/Configuration;->orientation:I

    .line 51
    .line 52
    iget p0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 53
    .line 54
    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 55
    .line 56
    invoke-static {v1, p0, v0}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    iput p0, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 61
    .line 62
    :goto_0
    iget p0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 63
    .line 64
    iput p0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 65
    .line 66
    iput p0, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    .line 67
    .line 68
    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 69
    .line 70
    iput v0, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    .line 71
    .line 72
    iput p0, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    .line 73
    .line 74
    return-void
.end method

.method private cleanupResourceImpl(Landroid/content/res/ResourcesKey;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroid/content/res/ResourcesImpl;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/content/res/ResourcesImpl;->flushLayoutCache()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method private createResourcesImpl(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;
    .locals 4

    .line 1
    new-instance v0, Landroid/view/DisplayAdjustments;

    .line 2
    .line 3
    iget-object v1, p1, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/view/DisplayAdjustments;-><init>(Landroid/content/res/Configuration;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p1, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/DisplayAdjustments;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/app/ResourcesManager;->createAssetManager(Landroid/content/res/ResourcesKey;)Landroid/content/res/AssetManager;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    return-object p1

    .line 21
    :cond_0
    iget v2, p1, Landroid/content/res/ResourcesKey;->mDisplayId:I

    .line 22
    .line 23
    invoke-virtual {p0, v2, v0}, Landroid/app/ResourcesManager;->getDisplayMetrics(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-direct {p0, p1, v2}, Landroid/app/ResourcesManager;->generateConfig(Landroid/content/res/ResourcesKey;Landroid/util/DisplayMetrics;)Landroid/content/res/Configuration;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    new-instance v3, Landroid/content/res/ResourcesImpl;

    .line 32
    .line 33
    invoke-direct {v3, v1, v2, p1, v0}, Landroid/content/res/ResourcesImpl;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/view/DisplayAdjustments;)V

    .line 34
    .line 35
    .line 36
    return-object v3
.end method

.method private findKeyForResourceImplLocked(Landroid/content/res/ResourcesImpl;)Landroid/content/res/ResourcesKey;
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    const/4 v2, 0x0

    .line 9
    if-ge v1, v0, :cond_2

    .line 10
    .line 11
    iget-object v3, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 18
    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Landroid/content/res/ResourcesImpl;

    .line 26
    .line 27
    :cond_0
    if-eqz v2, :cond_1

    .line 28
    .line 29
    if-ne p1, v2, :cond_1

    .line 30
    .line 31
    iget-object p1, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    .line 32
    .line 33
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Landroid/content/res/ResourcesKey;

    .line 38
    .line 39
    return-object p1

    .line 40
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    return-object v2
.end method

.method private findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->findResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->createResourcesImpl(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    .line 14
    .line 15
    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 16
    .line 17
    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    :cond_0
    return-object v0
.end method

.method private findResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Landroid/content/res/ResourcesImpl;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object p1, v0

    .line 20
    :goto_0
    if-eqz p1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Landroid/content/res/AssetManager;->isUpToDate()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    return-object p1

    .line 33
    :cond_1
    return-object v0
.end method

.method private generateConfig(Landroid/content/res/ResourcesKey;Landroid/util/DisplayMetrics;)Landroid/content/res/Configuration;
    .locals 4

    .line 1
    iget v0, p1, Landroid/content/res/ResourcesKey;->mDisplayId:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    invoke-virtual {p0}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    goto :goto_2

    .line 22
    :cond_2
    :goto_1
    new-instance v2, Landroid/content/res/Configuration;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-direct {v2, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 29
    .line 30
    .line 31
    if-nez v0, :cond_3

    .line 32
    .line 33
    invoke-static {p2, v2}, Landroid/app/ResourcesManager;->applyNonDefaultDisplayMetricsToConfiguration(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 34
    .line 35
    .line 36
    :cond_3
    if-eqz v1, :cond_4

    .line 37
    .line 38
    iget-object p1, p1, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    .line 39
    .line 40
    invoke-virtual {v2, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 41
    .line 42
    .line 43
    :cond_4
    move-object p1, v2

    .line 44
    :goto_2
    return-object p1
.end method

.method private getAdjustedDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;
    .locals 2

    .line 1
    new-instance v0, Landroid/view/DisplayAdjustments;

    if-eqz p2, :cond_0

    invoke-direct {v0, p2}, Landroid/view/DisplayAdjustments;-><init>(Landroid/view/DisplayAdjustments;)V

    goto :goto_0

    :cond_0
    invoke-direct {v0}, Landroid/view/DisplayAdjustments;-><init>()V

    .line 2
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p2

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Landroid/app/ResourcesManager;->mAdjustedDisplays:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Display;

    if-eqz v0, :cond_1

    .line 6
    monitor-exit p0

    return-object v0

    .line 7
    :cond_1
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    if-nez v0, :cond_2

    .line 8
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    .line 9
    :cond_2
    iget-object v1, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/view/DisplayAdjustments;

    invoke-virtual {v0, p1, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getCompatibleDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 10
    iget-object v0, p0, Landroid/app/ResourcesManager;->mAdjustedDisplays:Landroid/util/ArrayMap;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_3
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 12
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static getInstance()Landroid/app/ResourcesManager;
    .locals 2

    .line 1
    const-class v0, Landroid/app/ResourcesManager;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Landroid/app/ResourcesManager;

    .line 9
    .line 10
    invoke-direct {v1}, Landroid/app/ResourcesManager;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    .line 14
    .line 15
    :cond_0
    sget-object v1, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-object v1

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw v1
.end method

.method private getOrCreateActivityResourcesStructLocked(Landroid/os/IBinder;)Landroid/app/ResourcesManager$ActivityResources;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/app/ResourcesManager;->mActivityResourceReferences:Ljava/util/WeakHashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/ResourcesManager$ActivityResources;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Landroid/app/ResourcesManager$ActivityResources;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, v1}, Landroid/app/ResourcesManager$ActivityResources;-><init>(Landroid/app/ResourcesManager$1;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Landroid/app/ResourcesManager;->mActivityResourceReferences:Ljava/util/WeakHashMap;

    .line 18
    .line 19
    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    :cond_0
    return-object v0
.end method

.method private getOrCreateResources(Landroid/os/IBinder;Landroid/content/res/ResourcesKey;Ljava/lang/ClassLoader;)Landroid/content/res/Resources;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    :try_start_0
    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->getOrCreateActivityResourcesStructLocked(Landroid/os/IBinder;)Landroid/app/ResourcesManager$ActivityResources;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, v0, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    .line 9
    .line 10
    sget-object v2, Landroid/app/ResourcesManager;->sEmptyReferencePredicate:Ljava/util/function/Predicate;

    .line 11
    .line 12
    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->unstableRemoveIf(Ljava/util/ArrayList;Ljava/util/function/Predicate;)I

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    iget-object v1, v0, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    .line 22
    .line 23
    sget-object v2, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    new-instance v1, Landroid/content/res/Configuration;

    .line 32
    .line 33
    iget-object v0, v0, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    .line 34
    .line 35
    invoke-direct {v1, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p2, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 41
    .line 42
    .line 43
    iget-object v0, p2, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-direct {p0, p2}, Landroid/app/ResourcesManager;->findResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    iget-object p2, p2, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    .line 55
    .line 56
    invoke-direct {p0, p1, p3, v0, p2}, Landroid/app/ResourcesManager;->getOrCreateResourcesForActivityLocked(Landroid/os/IBinder;Ljava/lang/ClassLoader;Landroid/content/res/ResourcesImpl;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    monitor-exit p0

    .line 61
    return-object p1

    .line 62
    :cond_1
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    .line 63
    .line 64
    sget-object v1, Landroid/app/ResourcesManager;->sEmptyReferencePredicate:Ljava/util/function/Predicate;

    .line 65
    .line 66
    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->unstableRemoveIf(Ljava/util/ArrayList;Ljava/util/function/Predicate;)I

    .line 67
    .line 68
    .line 69
    invoke-direct {p0, p2}, Landroid/app/ResourcesManager;->findResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    iget-object p1, p2, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    .line 76
    .line 77
    invoke-direct {p0, p3, v0, p1}, Landroid/app/ResourcesManager;->getOrCreateResourcesLocked(Ljava/lang/ClassLoader;Landroid/content/res/ResourcesImpl;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    monitor-exit p0

    .line 82
    return-object p1

    .line 83
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 84
    invoke-direct {p0, p2}, Landroid/app/ResourcesManager;->createResourcesImpl(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    if-nez v0, :cond_3

    .line 89
    .line 90
    const/4 p1, 0x0

    .line 91
    return-object p1

    .line 92
    :cond_3
    monitor-enter p0

    .line 93
    :try_start_1
    invoke-direct {p0, p2}, Landroid/app/ResourcesManager;->findResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    if-eqz v1, :cond_4

    .line 98
    .line 99
    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v0}, Landroid/content/res/AssetManager;->close()V

    .line 104
    .line 105
    .line 106
    move-object v0, v1

    .line 107
    goto :goto_0

    .line 108
    :cond_4
    iget-object v1, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    .line 109
    .line 110
    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 111
    .line 112
    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, p2, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    :goto_0
    if-eqz p1, :cond_5

    .line 119
    .line 120
    iget-object p2, p2, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    .line 121
    .line 122
    invoke-direct {p0, p1, p3, v0, p2}, Landroid/app/ResourcesManager;->getOrCreateResourcesForActivityLocked(Landroid/os/IBinder;Ljava/lang/ClassLoader;Landroid/content/res/ResourcesImpl;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    goto :goto_1

    .line 127
    :cond_5
    iget-object p1, p2, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    .line 128
    .line 129
    invoke-direct {p0, p3, v0, p1}, Landroid/app/ResourcesManager;->getOrCreateResourcesLocked(Ljava/lang/ClassLoader;Landroid/content/res/ResourcesImpl;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    :goto_1
    monitor-exit p0

    .line 134
    return-object p1

    .line 135
    :catchall_0
    move-exception p1

    .line 136
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    throw p1

    .line 138
    :catchall_1
    move-exception p1

    .line 139
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 140
    throw p1
.end method

.method private getOrCreateResourcesForActivityLocked(Landroid/os/IBinder;Ljava/lang/ClassLoader;Landroid/content/res/ResourcesImpl;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->getOrCreateActivityResourcesStructLocked(Landroid/os/IBinder;)Landroid/app/ResourcesManager$ActivityResources;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p1, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    if-ge v1, v0, :cond_1

    .line 13
    .line 14
    iget-object v2, p1, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Landroid/content/res/Resources;

    .line 27
    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    invoke-virtual {v2}, Landroid/content/res/Resources;->getClassLoader()Ljava/lang/ClassLoader;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-static {v3, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    invoke-virtual {v2}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    if-ne v3, p3, :cond_0

    .line 45
    .line 46
    return-object v2

    .line 47
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {p4}, Landroid/content/res/CompatibilityInfo;->needsCompatResources()Z

    .line 51
    .line 52
    .line 53
    move-result p4

    .line 54
    if-eqz p4, :cond_2

    .line 55
    .line 56
    new-instance p4, Landroid/content/res/CompatResources;

    .line 57
    .line 58
    invoke-direct {p4, p2}, Landroid/content/res/CompatResources;-><init>(Ljava/lang/ClassLoader;)V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    new-instance p4, Landroid/content/res/Resources;

    .line 63
    .line 64
    invoke-direct {p4, p2}, Landroid/content/res/Resources;-><init>(Ljava/lang/ClassLoader;)V

    .line 65
    .line 66
    .line 67
    :goto_1
    invoke-virtual {p4, p3}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p1, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    .line 71
    .line 72
    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 73
    .line 74
    invoke-direct {p2, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    return-object p4
.end method

.method private getOrCreateResourcesLocked(Ljava/lang/ClassLoader;Landroid/content/res/ResourcesImpl;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_1

    .line 9
    .line 10
    iget-object v2, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Landroid/content/res/Resources;

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-virtual {v2}, Landroid/content/res/Resources;->getClassLoader()Ljava/lang/ClassLoader;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-static {v3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_0

    .line 35
    .line 36
    invoke-virtual {v2}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    if-ne v3, p2, :cond_0

    .line 41
    .line 42
    return-object v2

    .line 43
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {p3}, Landroid/content/res/CompatibilityInfo;->needsCompatResources()Z

    .line 47
    .line 48
    .line 49
    move-result p3

    .line 50
    if-eqz p3, :cond_2

    .line 51
    .line 52
    new-instance p3, Landroid/content/res/CompatResources;

    .line 53
    .line 54
    invoke-direct {p3, p1}, Landroid/content/res/CompatResources;-><init>(Ljava/lang/ClassLoader;)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    new-instance p3, Landroid/content/res/Resources;

    .line 59
    .line 60
    invoke-direct {p3, p1}, Landroid/content/res/Resources;-><init>(Ljava/lang/ClassLoader;)V

    .line 61
    .line 62
    .line 63
    :goto_1
    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    .line 67
    .line 68
    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 69
    .line 70
    invoke-direct {p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    return-object p3
.end method

.method private redirectResourcesToNewImplLocked(Landroid/util/ArrayMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Landroid/content/res/ResourcesImpl;",
            "Landroid/content/res/ResourcesKey;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    move v2, v1

    .line 16
    :goto_0
    const-string v3, "failed to redirect ResourcesImpl"

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    if-ge v2, v0, :cond_4

    .line 20
    .line 21
    iget-object v5, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 28
    .line 29
    if-eqz v5, :cond_1

    .line 30
    .line 31
    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    check-cast v4, Landroid/content/res/Resources;

    .line 36
    .line 37
    :cond_1
    if-eqz v4, :cond_3

    .line 38
    .line 39
    invoke-virtual {v4}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-virtual {p1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    check-cast v5, Landroid/content/res/ResourcesKey;

    .line 48
    .line 49
    if-eqz v5, :cond_3

    .line 50
    .line 51
    invoke-direct {p0, v5}, Landroid/app/ResourcesManager;->findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    if-eqz v5, :cond_2

    .line 56
    .line 57
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    new-instance p1, Landroid/content/res/Resources$NotFoundException;

    .line 62
    .line 63
    invoke-direct {p1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p1

    .line 67
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_4
    iget-object v0, p0, Landroid/app/ResourcesManager;->mActivityResourceReferences:Ljava/util/WeakHashMap;

    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_9

    .line 85
    .line 86
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    check-cast v2, Landroid/app/ResourcesManager$ActivityResources;

    .line 91
    .line 92
    iget-object v5, v2, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    move v6, v1

    .line 99
    :goto_2
    if-ge v6, v5, :cond_5

    .line 100
    .line 101
    iget-object v7, v2, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    .line 102
    .line 103
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v7

    .line 107
    check-cast v7, Ljava/lang/ref/WeakReference;

    .line 108
    .line 109
    if-eqz v7, :cond_6

    .line 110
    .line 111
    invoke-virtual {v7}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    check-cast v7, Landroid/content/res/Resources;

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_6
    move-object v7, v4

    .line 119
    :goto_3
    if-eqz v7, :cond_8

    .line 120
    .line 121
    invoke-virtual {v7}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    .line 122
    .line 123
    .line 124
    move-result-object v8

    .line 125
    invoke-virtual {p1, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v8

    .line 129
    check-cast v8, Landroid/content/res/ResourcesKey;

    .line 130
    .line 131
    if-eqz v8, :cond_8

    .line 132
    .line 133
    invoke-direct {p0, v8}, Landroid/app/ResourcesManager;->findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    .line 134
    .line 135
    .line 136
    move-result-object v8

    .line 137
    if-eqz v8, :cond_7

    .line 138
    .line 139
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V

    .line 140
    .line 141
    .line 142
    goto :goto_4

    .line 143
    :cond_7
    new-instance p1, Landroid/content/res/Resources$NotFoundException;

    .line 144
    .line 145
    invoke-direct {p1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    throw p1

    .line 149
    :cond_8
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_9
    return-void
.end method


# virtual methods
.method public appendLibAssetForMainAssetPath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    new-instance v2, Landroid/util/ArrayMap;

    .line 7
    .line 8
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v3, v1, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const/4 v4, 0x0

    .line 18
    move v5, v4

    .line 19
    :goto_0
    if-ge v5, v3, :cond_5

    .line 20
    .line 21
    iget-object v6, v1, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    .line 22
    .line 23
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    check-cast v6, Landroid/content/res/ResourcesKey;

    .line 28
    .line 29
    iget-object v7, v1, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    .line 30
    .line 31
    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    check-cast v7, Ljava/lang/ref/WeakReference;

    .line 36
    .line 37
    if-eqz v7, :cond_0

    .line 38
    .line 39
    invoke-virtual {v7}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    check-cast v7, Landroid/content/res/ResourcesImpl;

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_0
    const/4 v7, 0x0

    .line 47
    :goto_1
    if-eqz v7, :cond_3

    .line 48
    .line 49
    iget-object v8, v6, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    .line 50
    .line 51
    move-object/from16 v9, p1

    .line 52
    .line 53
    invoke-static {v8, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    if-eqz v8, :cond_4

    .line 58
    .line 59
    iget-object v8, v6, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {v8, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v8

    .line 65
    if-nez v8, :cond_4

    .line 66
    .line 67
    iget-object v8, v6, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    .line 68
    .line 69
    if-eqz v8, :cond_1

    .line 70
    .line 71
    array-length v10, v8

    .line 72
    goto :goto_2

    .line 73
    :cond_1
    move v10, v4

    .line 74
    :goto_2
    const/4 v11, 0x1

    .line 75
    add-int/2addr v11, v10

    .line 76
    new-array v10, v11, [Ljava/lang/String;

    .line 77
    .line 78
    if-eqz v8, :cond_2

    .line 79
    .line 80
    array-length v12, v8

    .line 81
    invoke-static {v8, v4, v10, v4, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    .line 83
    .line 84
    :cond_2
    add-int/lit8 v11, v11, -0x1

    .line 85
    .line 86
    aput-object v0, v10, v11

    .line 87
    .line 88
    new-instance v8, Landroid/content/res/ResourcesKey;

    .line 89
    .line 90
    iget-object v13, v6, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    .line 91
    .line 92
    iget-object v14, v6, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    .line 93
    .line 94
    iget-object v15, v6, Landroid/content/res/ResourcesKey;->mOverlayDirs:[Ljava/lang/String;

    .line 95
    .line 96
    iget v11, v6, Landroid/content/res/ResourcesKey;->mDisplayId:I

    .line 97
    .line 98
    iget-object v12, v6, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    .line 99
    .line 100
    iget-object v6, v6, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    .line 101
    .line 102
    move-object/from16 v18, v12

    .line 103
    .line 104
    move-object v12, v8

    .line 105
    move-object/from16 v16, v10

    .line 106
    .line 107
    move/from16 v17, v11

    .line 108
    .line 109
    move-object/from16 v19, v6

    .line 110
    .line 111
    invoke-direct/range {v12 .. v19}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_3
    move-object/from16 v9, p1

    .line 119
    .line 120
    :cond_4
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_5
    invoke-direct {v1, v2}, Landroid/app/ResourcesManager;->redirectResourcesToNewImplLocked(Landroid/util/ArrayMap;)V

    .line 124
    .line 125
    .line 126
    monitor-exit p0

    .line 127
    return-void

    .line 128
    :catchall_0
    move-exception v0

    .line 129
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    throw v0
.end method

.method public applyCompatConfigurationLocked(ILandroid/content/res/Configuration;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 12
    .line 13
    invoke-virtual {v0, p1, p2}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(ILandroid/content/res/Configuration;)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    return p1

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    return p1
.end method

.method public final applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z
    .locals 17

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
    const-wide/16 v3, 0x2000

    .line 8
    .line 9
    :try_start_0
    const-string v5, "ResourcesManager#applyConfigurationToResourcesLocked"

    .line 10
    .line 11
    invoke-static {v3, v4, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v5, v1, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    .line 15
    .line 16
    invoke-virtual {v5, v0}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    .line 17
    .line 18
    .line 19
    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    const/4 v6, 0x0

    .line 21
    if-nez v5, :cond_0

    .line 22
    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 26
    .line 27
    .line 28
    return v6

    .line 29
    :cond_0
    :try_start_1
    iget-object v5, v1, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    .line 30
    .line 31
    invoke-virtual {v5, v0}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    iget-object v7, v1, Landroid/app/ResourcesManager;->mAdjustedDisplays:Landroid/util/ArrayMap;

    .line 36
    .line 37
    invoke-virtual {v7}, Landroid/util/ArrayMap;->clear()V

    .line 38
    .line 39
    .line 40
    invoke-virtual/range {p0 .. p0}, Landroid/app/ResourcesManager;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    iget-object v8, v1, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 47
    .line 48
    if-eqz v8, :cond_1

    .line 49
    .line 50
    invoke-virtual {v8, v2}, Landroid/content/res/CompatibilityInfo;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v8

    .line 54
    if-nez v8, :cond_2

    .line 55
    .line 56
    :cond_1
    iput-object v2, v1, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 57
    .line 58
    or-int/lit16 v5, v5, 0xd00

    .line 59
    .line 60
    :cond_2
    invoke-static {v0, v7, v2}, Landroid/content/res/Resources;->updateSystemConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 61
    .line 62
    .line 63
    invoke-static {}, Landroid/app/ApplicationPackageManager;->configurationChanged()V

    .line 64
    .line 65
    .line 66
    iget-object v8, v1, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    .line 67
    .line 68
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    .line 69
    .line 70
    .line 71
    move-result v8

    .line 72
    const/4 v9, 0x1

    .line 73
    sub-int/2addr v8, v9

    .line 74
    const/4 v10, 0x0

    .line 75
    move-object v11, v10

    .line 76
    :goto_0
    if-ltz v8, :cond_c

    .line 77
    .line 78
    iget-object v12, v1, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    .line 79
    .line 80
    invoke-virtual {v12, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v12

    .line 84
    check-cast v12, Landroid/content/res/ResourcesKey;

    .line 85
    .line 86
    iget-object v13, v1, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    .line 87
    .line 88
    invoke-virtual {v13, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v13

    .line 92
    check-cast v13, Ljava/lang/ref/WeakReference;

    .line 93
    .line 94
    if-eqz v13, :cond_3

    .line 95
    .line 96
    invoke-virtual {v13}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v13

    .line 100
    check-cast v13, Landroid/content/res/ResourcesImpl;

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_3
    move-object v13, v10

    .line 104
    :goto_1
    if-eqz v13, :cond_b

    .line 105
    .line 106
    iget v14, v12, Landroid/content/res/ResourcesKey;->mDisplayId:I

    .line 107
    .line 108
    if-nez v14, :cond_4

    .line 109
    .line 110
    move v15, v9

    .line 111
    goto :goto_2

    .line 112
    :cond_4
    move v15, v6

    .line 113
    :goto_2
    invoke-virtual {v12}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    .line 114
    .line 115
    .line 116
    move-result v16

    .line 117
    if-eqz v15, :cond_6

    .line 118
    .line 119
    if-eqz v16, :cond_5

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_5
    invoke-virtual {v13, v0, v7, v2}, Landroid/content/res/ResourcesImpl;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 123
    .line 124
    .line 125
    goto :goto_4

    .line 126
    :cond_6
    :goto_3
    if-nez v11, :cond_7

    .line 127
    .line 128
    new-instance v11, Landroid/content/res/Configuration;

    .line 129
    .line 130
    invoke-direct {v11}, Landroid/content/res/Configuration;-><init>()V

    .line 131
    .line 132
    .line 133
    :cond_7
    invoke-virtual {v11, v0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v13}, Landroid/content/res/ResourcesImpl;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    if-eqz v2, :cond_8

    .line 141
    .line 142
    new-instance v9, Landroid/view/DisplayAdjustments;

    .line 143
    .line 144
    invoke-direct {v9, v6}, Landroid/view/DisplayAdjustments;-><init>(Landroid/view/DisplayAdjustments;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v9, v2}, Landroid/view/DisplayAdjustments;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    .line 148
    .line 149
    .line 150
    move-object v6, v9

    .line 151
    :cond_8
    invoke-virtual {v1, v14, v6}, Landroid/app/ResourcesManager;->getDisplayMetrics(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;

    .line 152
    .line 153
    .line 154
    move-result-object v6

    .line 155
    if-nez v15, :cond_9

    .line 156
    .line 157
    invoke-static {v6, v11}, Landroid/app/ResourcesManager;->applyNonDefaultDisplayMetricsToConfiguration(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 158
    .line 159
    .line 160
    :cond_9
    if-eqz v16, :cond_a

    .line 161
    .line 162
    iget-object v9, v12, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    .line 163
    .line 164
    invoke-virtual {v11, v9}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 165
    .line 166
    .line 167
    :cond_a
    invoke-virtual {v13, v11, v6, v2}, Landroid/content/res/ResourcesImpl;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 168
    .line 169
    .line 170
    goto :goto_4

    .line 171
    :cond_b
    iget-object v6, v1, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    .line 172
    .line 173
    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    .line 175
    .line 176
    :goto_4
    add-int/lit8 v8, v8, -0x1

    .line 177
    .line 178
    const/4 v6, 0x0

    .line 179
    const/4 v9, 0x1

    .line 180
    goto :goto_0

    .line 181
    :cond_c
    if-eqz v5, :cond_d

    .line 182
    .line 183
    const/4 v6, 0x1

    .line 184
    goto :goto_5

    .line 185
    :cond_d
    const/4 v6, 0x0

    .line 186
    :goto_5
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 187
    .line 188
    .line 189
    return v6

    .line 190
    :catchall_0
    move-exception v0

    .line 191
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 192
    .line 193
    .line 194
    throw v0
.end method

.method public final applyNewResourceDirsLocked(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-wide/16 v2, 0x2000

    .line 4
    .line 5
    :try_start_0
    const-string v0, "ResourcesManager#applyNewResourceDirsLocked"

    .line 6
    .line 7
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Landroid/util/ArrayMap;

    .line 11
    .line 12
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 13
    .line 14
    .line 15
    iget-object v4, v1, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    .line 16
    .line 17
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    const/4 v5, 0x0

    .line 22
    :goto_0
    if-ge v5, v4, :cond_4

    .line 23
    .line 24
    iget-object v6, v1, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    .line 25
    .line 26
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    check-cast v6, Landroid/content/res/ResourcesKey;

    .line 31
    .line 32
    iget-object v7, v1, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    .line 33
    .line 34
    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    check-cast v7, Ljava/lang/ref/WeakReference;

    .line 39
    .line 40
    if-eqz v7, :cond_0

    .line 41
    .line 42
    invoke-virtual {v7}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    check-cast v7, Landroid/content/res/ResourcesImpl;

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_0
    const/4 v7, 0x0

    .line 50
    :goto_1
    if-eqz v7, :cond_2

    .line 51
    .line 52
    iget-object v8, v6, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    .line 53
    .line 54
    move-object/from16 v9, p1

    .line 55
    .line 56
    if-eqz v8, :cond_1

    .line 57
    .line 58
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    if-eqz v8, :cond_3

    .line 63
    .line 64
    :cond_1
    new-instance v8, Landroid/content/res/ResourcesKey;

    .line 65
    .line 66
    iget-object v11, v6, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    .line 67
    .line 68
    iget-object v12, v6, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    .line 69
    .line 70
    iget-object v14, v6, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    .line 71
    .line 72
    iget v15, v6, Landroid/content/res/ResourcesKey;->mDisplayId:I

    .line 73
    .line 74
    iget-object v13, v6, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    .line 75
    .line 76
    iget-object v6, v6, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    .line 77
    .line 78
    move-object v10, v8

    .line 79
    move-object/from16 v16, v13

    .line 80
    .line 81
    move-object/from16 v13, p2

    .line 82
    .line 83
    move-object/from16 v17, v6

    .line 84
    .line 85
    invoke-direct/range {v10 .. v17}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_2
    move-object/from16 v9, p1

    .line 93
    .line 94
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_4
    invoke-direct {v1, v0}, Landroid/app/ResourcesManager;->redirectResourcesToNewImplLocked(Landroid/util/ArrayMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    .line 99
    .line 100
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :catchall_0
    move-exception v0

    .line 105
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 106
    .line 107
    .line 108
    throw v0
.end method

.method public createAssetManager(Landroid/content/res/ResourcesKey;)Landroid/content/res/AssetManager;
    .locals 9

    .line 1
    new-instance v0, Landroid/content/res/AssetManager;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/res/AssetManager;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p1, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const-string v3, "ResourcesManager"

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v1, "failed to add asset path "

    .line 22
    .line 23
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p1, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    return-object v2

    .line 39
    :cond_0
    iget-object v1, p1, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    .line 40
    .line 41
    const/4 v4, 0x0

    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    array-length v5, v1

    .line 45
    move v6, v4

    .line 46
    :goto_0
    if-ge v6, v5, :cond_2

    .line 47
    .line 48
    aget-object v7, v1, v6

    .line 49
    .line 50
    invoke-virtual {v0, v7}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v8

    .line 54
    if-nez v8, :cond_1

    .line 55
    .line 56
    const-string p1, "failed to add split asset path "

    .line 57
    .line 58
    invoke-static {p1, v7, v3}, Landroid/app/m;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-object v2

    .line 62
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    iget-object v1, p1, Landroid/content/res/ResourcesKey;->mOverlayDirs:[Ljava/lang/String;

    .line 66
    .line 67
    if-eqz v1, :cond_3

    .line 68
    .line 69
    array-length v2, v1

    .line 70
    move v5, v4

    .line 71
    :goto_1
    if-ge v5, v2, :cond_3

    .line 72
    .line 73
    aget-object v6, v1, v5

    .line 74
    .line 75
    invoke-virtual {v0, v6}, Landroid/content/res/AssetManager;->addOverlayPath(Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    add-int/lit8 v5, v5, 0x1

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_3
    iget-object p1, p1, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    .line 82
    .line 83
    if-eqz p1, :cond_5

    .line 84
    .line 85
    array-length v1, p1

    .line 86
    :goto_2
    if-ge v4, v1, :cond_5

    .line 87
    .line 88
    aget-object v2, p1, v4

    .line 89
    .line 90
    const-string v5, ".apk"

    .line 91
    .line 92
    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    if-eqz v5, :cond_4

    .line 97
    .line 98
    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->addAssetPathAsSharedLibrary(Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    if-nez v5, :cond_4

    .line 103
    .line 104
    const-string v5, "Asset path \'"

    .line 105
    .line 106
    const-string v6, "\' does not exist or contains no resources."

    .line 107
    .line 108
    invoke-static {v5, v2, v6, v3}, Landroid/app/m;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_5
    return-object v0
.end method

.method public createBaseActivityResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;)Landroid/content/res/Resources;
    .locals 14

    .line 1
    move-object v1, p0

    .line 2
    move-object v0, p1

    .line 3
    move-object/from16 v2, p7

    .line 4
    .line 5
    const-wide/16 v3, 0x2000

    .line 6
    .line 7
    :try_start_0
    const-string v5, "ResourcesManager#createBaseActivityResources"

    .line 8
    .line 9
    invoke-static {v3, v4, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance v5, Landroid/content/res/ResourcesKey;

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    new-instance v6, Landroid/content/res/Configuration;

    .line 17
    .line 18
    invoke-direct {v6, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v6, 0x0

    .line 23
    :goto_0
    move-object v12, v6

    .line 24
    move-object v6, v5

    .line 25
    move-object/from16 v7, p2

    .line 26
    .line 27
    move-object/from16 v8, p3

    .line 28
    .line 29
    move-object/from16 v9, p4

    .line 30
    .line 31
    move-object/from16 v10, p5

    .line 32
    .line 33
    move/from16 v11, p6

    .line 34
    .line 35
    move-object/from16 v13, p8

    .line 36
    .line 37
    invoke-direct/range {v6 .. v13}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 38
    .line 39
    .line 40
    if-eqz p9, :cond_1

    .line 41
    .line 42
    move-object/from16 v6, p9

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    :goto_1
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 50
    :try_start_1
    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->getOrCreateActivityResourcesStructLocked(Landroid/os/IBinder;)Landroid/app/ResourcesManager$ActivityResources;

    .line 51
    .line 52
    .line 53
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    const/4 v7, 0x0

    .line 55
    move/from16 v8, p6

    .line 56
    .line 57
    :try_start_2
    invoke-virtual {p0, p1, v2, v8, v7}, Landroid/app/ResourcesManager;->updateResourcesForActivity(Landroid/os/IBinder;Landroid/content/res/Configuration;IZ)V

    .line 58
    .line 59
    .line 60
    invoke-direct {p0, p1, v5, v6}, Landroid/app/ResourcesManager;->getOrCreateResources(Landroid/os/IBinder;Landroid/content/res/ResourcesKey;Ljava/lang/ClassLoader;)Landroid/content/res/Resources;

    .line 61
    .line 62
    .line 63
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 64
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 65
    .line 66
    .line 67
    return-object v0

    .line 68
    :catchall_0
    move-exception v0

    .line 69
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 70
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 71
    :catchall_1
    move-exception v0

    .line 72
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 73
    .line 74
    .line 75
    throw v0
.end method

.method public getAdjustedDisplay(ILandroid/content/res/Resources;)Landroid/view/Display;
    .locals 1

    .line 13
    monitor-enter p0

    .line 14
    :try_start_0
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    if-nez v0, :cond_0

    .line 15
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    .line 16
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->getCompatibleDisplay(ILandroid/content/res/Resources;)Landroid/view/Display;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 17
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    throw v0
.end method

.method public getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 2

    const/4 v0, 0x0

    .line 1
    sget-object v1, Landroid/view/DisplayAdjustments;->DEFAULT_DISPLAY_ADJUSTMENTS:Landroid/view/DisplayAdjustments;

    invoke-virtual {p0, v0, v1}, Landroid/app/ResourcesManager;->getDisplayMetrics(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayMetrics(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;
    .locals 1

    .line 2
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/app/ResourcesManager;->getAdjustedDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Landroid/util/DisplayMetrics;->setToDefaults()V

    :goto_0
    return-object v0
.end method

.method public getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;)Landroid/content/res/Resources;
    .locals 12

    .line 1
    move-object/from16 v0, p7

    .line 2
    .line 3
    const-wide/16 v1, 0x2000

    .line 4
    .line 5
    :try_start_0
    const-string v3, "ResourcesManager#getResources"

    .line 6
    .line 7
    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v3, Landroid/content/res/ResourcesKey;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    new-instance v4, Landroid/content/res/Configuration;

    .line 15
    .line 16
    invoke-direct {v4, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 17
    .line 18
    .line 19
    move-object v10, v4

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    move-object v10, v0

    .line 23
    :goto_0
    move-object v4, v3

    .line 24
    move-object v5, p2

    .line 25
    move-object v6, p3

    .line 26
    move-object/from16 v7, p4

    .line 27
    .line 28
    move-object/from16 v8, p5

    .line 29
    .line 30
    move/from16 v9, p6

    .line 31
    .line 32
    move-object/from16 v11, p8

    .line 33
    .line 34
    invoke-direct/range {v4 .. v11}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 35
    .line 36
    .line 37
    if-eqz p9, :cond_1

    .line 38
    .line 39
    move-object v4, p0

    .line 40
    move-object v5, p1

    .line 41
    move-object/from16 v0, p9

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    .line 45
    .line 46
    .line 47
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 48
    move-object v4, p0

    .line 49
    move-object v5, p1

    .line 50
    :goto_1
    :try_start_1
    invoke-direct {p0, p1, v3, v0}, Landroid/app/ResourcesManager;->getOrCreateResources(Landroid/os/IBinder;Landroid/content/res/ResourcesKey;Ljava/lang/ClassLoader;)Landroid/content/res/Resources;

    .line 51
    .line 52
    .line 53
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 55
    .line 56
    .line 57
    return-object v0

    .line 58
    :catchall_0
    move-exception v0

    .line 59
    goto :goto_2

    .line 60
    :catchall_1
    move-exception v0

    .line 61
    move-object v4, p0

    .line 62
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 63
    .line 64
    .line 65
    throw v0
.end method

.method public invalidatePath(Ljava/lang/String;)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    move v1, v0

    .line 4
    :goto_0
    :try_start_0
    iget-object v2, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-ge v0, v2, :cond_1

    .line 11
    .line 12
    iget-object v2, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    .line 13
    .line 14
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Landroid/content/res/ResourcesKey;

    .line 19
    .line 20
    invoke-virtual {v2, p1}, Landroid/content/res/ResourcesKey;->isPathReferenced(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    invoke-direct {p0, v2}, Landroid/app/ResourcesManager;->cleanupResourceImpl(Landroid/content/res/ResourcesKey;)V

    .line 27
    .line 28
    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const-string v0, "ResourcesManager"

    .line 36
    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v3, "Invalidated "

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v1, " asset managers that referenced "

    .line 51
    .line 52
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    monitor-exit p0

    .line 66
    return-void

    .line 67
    :catchall_0
    move-exception p1

    .line 68
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    throw p1
.end method

.method public isSameResourcesOverrideConfig(Landroid/os/IBinder;Landroid/content/res/Configuration;)Z
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Landroid/app/ResourcesManager;->mActivityResourceReferences:Ljava/util/WeakHashMap;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Landroid/app/ResourcesManager$ActivityResources;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    goto :goto_3

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    const/4 v0, 0x1

    .line 17
    const/4 v1, 0x0

    .line 18
    if-nez p1, :cond_2

    .line 19
    .line 20
    if-nez p2, :cond_1

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move v0, v1

    .line 24
    :goto_1
    monitor-exit p0

    .line 25
    return v0

    .line 26
    :cond_2
    iget-object v2, p1, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    .line 27
    .line 28
    invoke-static {v2, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_4

    .line 33
    .line 34
    if-eqz p2, :cond_3

    .line 35
    .line 36
    iget-object p1, p1, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    .line 37
    .line 38
    if-eqz p1, :cond_3

    .line 39
    .line 40
    invoke-virtual {p2, p1}, Landroid/content/res/Configuration;->diffPublicOnly(Landroid/content/res/Configuration;)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-nez p1, :cond_3

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_3
    move v0, v1

    .line 48
    :cond_4
    :goto_2
    monitor-exit p0

    .line 49
    return v0

    .line 50
    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw p1
.end method

.method public updateResourcesForActivity(Landroid/os/IBinder;Landroid/content/res/Configuration;IZ)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    const-wide/16 v2, 0x2000

    .line 6
    .line 7
    :try_start_0
    const-string v4, "ResourcesManager#updateResourcesForActivity"

    .line 8
    .line 9
    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 13
    :try_start_1
    invoke-direct/range {p0 .. p1}, Landroid/app/ResourcesManager;->getOrCreateActivityResourcesStructLocked(Landroid/os/IBinder;)Landroid/app/ResourcesManager$ActivityResources;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    iget-object v5, v4, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    .line 18
    .line 19
    invoke-static {v5, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    if-eqz v5, :cond_0

    .line 24
    .line 25
    if-nez p4, :cond_0

    .line 26
    .line 27
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    :try_start_2
    new-instance v5, Landroid/content/res/Configuration;

    .line 33
    .line 34
    iget-object v6, v4, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    .line 35
    .line 36
    invoke-direct {v5, v6}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 37
    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    iget-object v6, v4, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    .line 42
    .line 43
    invoke-virtual {v6, v0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget-object v6, v4, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    .line 48
    .line 49
    invoke-virtual {v6}, Landroid/content/res/Configuration;->unset()V

    .line 50
    .line 51
    .line 52
    :goto_0
    iget-object v6, v4, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    .line 53
    .line 54
    sget-object v7, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    .line 55
    .line 56
    invoke-virtual {v6, v7}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    const/4 v7, 0x0

    .line 61
    if-nez v6, :cond_2

    .line 62
    .line 63
    const/4 v6, 0x1

    .line 64
    goto :goto_1

    .line 65
    :cond_2
    move v6, v7

    .line 66
    :goto_1
    iget-object v8, v4, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 69
    .line 70
    .line 71
    move-result v8

    .line 72
    :goto_2
    if-ge v7, v8, :cond_9

    .line 73
    .line 74
    iget-object v9, v4, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v9

    .line 80
    check-cast v9, Ljava/lang/ref/WeakReference;

    .line 81
    .line 82
    invoke-virtual {v9}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v9

    .line 86
    check-cast v9, Landroid/content/res/Resources;

    .line 87
    .line 88
    if-nez v9, :cond_3

    .line 89
    .line 90
    goto/16 :goto_3

    .line 91
    .line 92
    :cond_3
    invoke-virtual {v9}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    .line 93
    .line 94
    .line 95
    move-result-object v10

    .line 96
    invoke-direct {v1, v10}, Landroid/app/ResourcesManager;->findKeyForResourceImplLocked(Landroid/content/res/ResourcesImpl;)Landroid/content/res/ResourcesKey;

    .line 97
    .line 98
    .line 99
    move-result-object v10

    .line 100
    if-nez v10, :cond_4

    .line 101
    .line 102
    const-string v10, "ResourcesManager"

    .line 103
    .line 104
    new-instance v11, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    const-string v12, "can\'t find ResourcesKey for resources impl="

    .line 110
    .line 111
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v9}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    .line 115
    .line 116
    .line 117
    move-result-object v9

    .line 118
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v9

    .line 125
    invoke-static {v10, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_4
    new-instance v15, Landroid/content/res/Configuration;

    .line 130
    .line 131
    invoke-direct {v15}, Landroid/content/res/Configuration;-><init>()V

    .line 132
    .line 133
    .line 134
    if-eqz v0, :cond_5

    .line 135
    .line 136
    invoke-virtual {v15, v0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 137
    .line 138
    .line 139
    :cond_5
    if-eqz v6, :cond_6

    .line 140
    .line 141
    invoke-virtual {v10}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    .line 142
    .line 143
    .line 144
    move-result v11

    .line 145
    if-eqz v11, :cond_6

    .line 146
    .line 147
    iget-object v11, v10, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    .line 148
    .line 149
    invoke-static {v5, v11}, Landroid/content/res/Configuration;->generateDelta(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    .line 150
    .line 151
    .line 152
    move-result-object v11

    .line 153
    invoke-virtual {v15, v11}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 154
    .line 155
    .line 156
    :cond_6
    new-instance v14, Landroid/content/res/ResourcesKey;

    .line 157
    .line 158
    iget-object v12, v10, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    .line 159
    .line 160
    iget-object v13, v10, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    .line 161
    .line 162
    iget-object v11, v10, Landroid/content/res/ResourcesKey;->mOverlayDirs:[Ljava/lang/String;

    .line 163
    .line 164
    iget-object v2, v10, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    .line 165
    .line 166
    iget-object v3, v10, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    .line 167
    .line 168
    move-object v10, v11

    .line 169
    move-object v11, v14

    .line 170
    move-object v0, v14

    .line 171
    move-object v14, v10

    .line 172
    move-object v10, v15

    .line 173
    move-object v15, v2

    .line 174
    move/from16 v16, p3

    .line 175
    .line 176
    move-object/from16 v17, v10

    .line 177
    .line 178
    move-object/from16 v18, v3

    .line 179
    .line 180
    invoke-direct/range {v11 .. v18}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 181
    .line 182
    .line 183
    invoke-direct {v1, v0}, Landroid/app/ResourcesManager;->findResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    if-nez v2, :cond_7

    .line 188
    .line 189
    invoke-direct {v1, v0}, Landroid/app/ResourcesManager;->createResourcesImpl(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    if-eqz v2, :cond_7

    .line 194
    .line 195
    iget-object v3, v1, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    .line 196
    .line 197
    new-instance v10, Ljava/lang/ref/WeakReference;

    .line 198
    .line 199
    invoke-direct {v10, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v3, v0, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    :cond_7
    if-eqz v2, :cond_8

    .line 206
    .line 207
    invoke-virtual {v9}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    if-eq v2, v0, :cond_8

    .line 212
    .line 213
    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V

    .line 214
    .line 215
    .line 216
    :cond_8
    :goto_3
    add-int/lit8 v7, v7, 0x1

    .line 217
    .line 218
    move-object/from16 v0, p2

    .line 219
    .line 220
    const-wide/16 v2, 0x2000

    .line 221
    .line 222
    goto/16 :goto_2

    .line 223
    .line 224
    :cond_9
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 225
    const-wide/16 v2, 0x2000

    .line 226
    .line 227
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 228
    .line 229
    .line 230
    return-void

    .line 231
    :catchall_0
    move-exception v0

    .line 232
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 233
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 234
    :catchall_1
    move-exception v0

    .line 235
    const-wide/16 v2, 0x2000

    .line 236
    .line 237
    goto :goto_4

    .line 238
    :catchall_2
    move-exception v0

    .line 239
    :goto_4
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 240
    .line 241
    .line 242
    throw v0
.end method
