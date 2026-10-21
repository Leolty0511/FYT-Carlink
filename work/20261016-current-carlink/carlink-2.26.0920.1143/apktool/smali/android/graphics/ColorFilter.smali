.class public Landroid/graphics/ColorFilter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/ColorFilter$NoImagePreloadHolder;
    }
.end annotation


# instance fields
.field private mCleaner:Ljava/lang/Runnable;

.field private mNativeInstance:J


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()J
    .locals 2

    invoke-static {}, Landroid/graphics/ColorFilter;->nativeGetFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method private static native nativeGetFinalizer()J
.end method


# virtual methods
.method public createNativeInstance()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public discardNativeInstance()V
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/graphics/ColorFilter;->mNativeInstance:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroid/graphics/ColorFilter;->mCleaner:Ljava/lang/Runnable;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Landroid/graphics/ColorFilter;->mCleaner:Ljava/lang/Runnable;

    .line 16
    .line 17
    iput-wide v2, p0, Landroid/graphics/ColorFilter;->mNativeInstance:J

    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public getNativeInstance()J
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/graphics/ColorFilter;->mNativeInstance:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/graphics/ColorFilter;->createNativeInstance()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iput-wide v0, p0, Landroid/graphics/ColorFilter;->mNativeInstance:J

    .line 14
    .line 15
    cmp-long v2, v0, v2

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    sget-object v2, Landroid/graphics/ColorFilter$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 20
    .line 21
    invoke-virtual {v2, p0, v0, v1}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Landroid/graphics/ColorFilter;->mCleaner:Ljava/lang/Runnable;

    .line 26
    .line 27
    :cond_0
    iget-wide v0, p0, Landroid/graphics/ColorFilter;->mNativeInstance:J

    .line 28
    .line 29
    return-wide v0
.end method
