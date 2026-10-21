.class public Landroid/graphics/RegionIterator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mNativeIter:J


# direct methods
.method public constructor <init>(Landroid/graphics/Region;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/graphics/Region;->ni()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    invoke-static {v0, v1}, Landroid/graphics/RegionIterator;->nativeConstructor(J)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    iput-wide v0, p0, Landroid/graphics/RegionIterator;->mNativeIter:J

    .line 13
    .line 14
    return-void
.end method

.method private static native nativeConstructor(J)J
.end method

.method private static native nativeDestructor(J)V
.end method

.method private static native nativeNext(JLandroid/graphics/Rect;)Z
.end method


# virtual methods
.method public finalize()V
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/graphics/RegionIterator;->mNativeIter:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/graphics/RegionIterator;->nativeDestructor(J)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    iput-wide v0, p0, Landroid/graphics/RegionIterator;->mNativeIter:J

    .line 9
    .line 10
    return-void
.end method

.method public final next(Landroid/graphics/Rect;)Z
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-wide v0, p0, Landroid/graphics/RegionIterator;->mNativeIter:J

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Landroid/graphics/RegionIterator;->nativeNext(JLandroid/graphics/Rect;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 11
    .line 12
    const-string v0, "The Rect must be provided"

    .line 13
    .line 14
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1
.end method
