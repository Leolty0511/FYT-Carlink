.class public Landroid/graphics/Region;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Region$Op;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/graphics/Region;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_POOL_SIZE:I = 0xa

.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Landroid/graphics/Region;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mNativeRegion:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroid/graphics/Region;->sPool:Landroid/util/Pools$SynchronizedPool;

    .line 9
    .line 10
    new-instance v0, Landroid/graphics/Region$1;

    .line 11
    .line 12
    invoke-direct {v0}, Landroid/graphics/Region$1;-><init>()V

    .line 13
    .line 14
    .line 15
    sput-object v0, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/graphics/Region;->nativeConstructor()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/graphics/Region;-><init>(J)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 6

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-static {}, Landroid/graphics/Region;->nativeConstructor()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 9
    invoke-static/range {v0 .. v5}, Landroid/graphics/Region;->nativeSetRect(JIIII)Z

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 11
    iput-wide p1, p0, Landroid/graphics/Region;->mNativeRegion:J

    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method private constructor <init>(JI)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Landroid/graphics/Region;-><init>(J)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;)V
    .locals 6

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {}, Landroid/graphics/Region;->nativeConstructor()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    .line 6
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static/range {v0 .. v5}, Landroid/graphics/Region;->nativeSetRect(JIIII)Z

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Region;)V
    .locals 4

    .line 2
    invoke-static {}, Landroid/graphics/Region;->nativeConstructor()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/graphics/Region;-><init>(J)V

    .line 3
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    iget-wide v2, p1, Landroid/graphics/Region;->mNativeRegion:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Region;->nativeSetRegion(JJ)V

    return-void
.end method

.method public static synthetic access$000(Landroid/os/Parcel;)J
    .locals 2

    invoke-static {p0}, Landroid/graphics/Region;->nativeCreateFromParcel(Landroid/os/Parcel;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static native nativeConstructor()J
.end method

.method private static native nativeCreateFromParcel(Landroid/os/Parcel;)J
.end method

.method private static native nativeDestructor(J)V
.end method

.method private static native nativeEquals(JJ)Z
.end method

.method private static native nativeGetBoundaryPath(JJ)Z
.end method

.method private static native nativeGetBounds(JLandroid/graphics/Rect;)Z
.end method

.method private static native nativeOp(JIIIII)Z
.end method

.method private static native nativeOp(JJJI)Z
.end method

.method private static native nativeOp(JLandroid/graphics/Rect;JI)Z
.end method

.method private static native nativeSetPath(JJJ)Z
.end method

.method private static native nativeSetRect(JIIII)Z
.end method

.method private static native nativeSetRegion(JJ)V
.end method

.method private static native nativeToString(J)Ljava/lang/String;
.end method

.method private static native nativeWriteToParcel(JLandroid/os/Parcel;)Z
.end method

.method public static obtain()Landroid/graphics/Region;
    .locals 1

    .line 1
    sget-object v0, Landroid/graphics/Region;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Region;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    :goto_0
    return-object v0
.end method

.method public static obtain(Landroid/graphics/Region;)Landroid/graphics/Region;
    .locals 1

    .line 3
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    return-object v0
.end method


# virtual methods
.method public native contains(II)Z
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    instance-of v0, p1, Landroid/graphics/Region;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    check-cast p1, Landroid/graphics/Region;

    .line 9
    .line 10
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    .line 11
    .line 12
    iget-wide v2, p1, Landroid/graphics/Region;->mNativeRegion:J

    .line 13
    .line 14
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Region;->nativeEquals(JJ)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1

    .line 19
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 20
    return p1
.end method

.method public finalize()V
    .locals 2

    .line 1
    :try_start_0
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/graphics/Region;->nativeDestructor(J)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    iput-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 16
    .line 17
    .line 18
    throw v0
.end method

.method public getBoundaryPath()Landroid/graphics/Path;
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 2
    iget-wide v1, p0, Landroid/graphics/Region;->mNativeRegion:J

    invoke-virtual {v0}, Landroid/graphics/Path;->mutateNI()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Region;->nativeGetBoundaryPath(JJ)Z

    return-object v0
.end method

.method public getBoundaryPath(Landroid/graphics/Path;)Z
    .locals 4

    .line 3
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    invoke-virtual {p1}, Landroid/graphics/Path;->mutateNI()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Region;->nativeGetBoundaryPath(JJ)Z

    move-result p1

    return p1
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2
    iget-wide v1, p0, Landroid/graphics/Region;->mNativeRegion:J

    invoke-static {v1, v2, v0}, Landroid/graphics/Region;->nativeGetBounds(JLandroid/graphics/Rect;)Z

    return-object v0
.end method

.method public getBounds(Landroid/graphics/Rect;)Z
    .locals 2

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Region;->nativeGetBounds(JLandroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public native isComplex()Z
.end method

.method public native isEmpty()Z
.end method

.method public native isRect()Z
.end method

.method public final ni()J
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    return-wide v0
.end method

.method public op(IIIILandroid/graphics/Region$Op;)Z
    .locals 7

    .line 2
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    iget v6, p5, Landroid/graphics/Region$Op;->nativeInt:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v6}, Landroid/graphics/Region;->nativeOp(JIIIII)Z

    move-result p1

    return p1
.end method

.method public op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z
    .locals 7

    .line 1
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    iget v6, p2, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static/range {v0 .. v6}, Landroid/graphics/Region;->nativeOp(JIIIII)Z

    move-result p1

    return p1
.end method

.method public op(Landroid/graphics/Rect;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z
    .locals 6

    .line 4
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    iget-wide v3, p2, Landroid/graphics/Region;->mNativeRegion:J

    iget v5, p3, Landroid/graphics/Region$Op;->nativeInt:I

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Landroid/graphics/Region;->nativeOp(JLandroid/graphics/Rect;JI)Z

    move-result p1

    return p1
.end method

.method public op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z
    .locals 0

    .line 3
    invoke-virtual {p0, p0, p1, p2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    move-result p1

    return p1
.end method

.method public op(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z
    .locals 7

    .line 5
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    iget-wide v2, p1, Landroid/graphics/Region;->mNativeRegion:J

    iget-wide v4, p2, Landroid/graphics/Region;->mNativeRegion:J

    iget v6, p3, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static/range {v0 .. v6}, Landroid/graphics/Region;->nativeOp(JJJI)Z

    move-result p1

    return p1
.end method

.method public native quickContains(IIII)Z
.end method

.method public quickContains(Landroid/graphics/Rect;)Z
    .locals 3

    .line 1
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/graphics/Region;->quickContains(IIII)Z

    move-result p1

    return p1
.end method

.method public native quickReject(IIII)Z
.end method

.method public quickReject(Landroid/graphics/Rect;)Z
    .locals 3

    .line 1
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/graphics/Region;->quickReject(IIII)Z

    move-result p1

    return p1
.end method

.method public native quickReject(Landroid/graphics/Region;)Z
.end method

.method public recycle()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Region;->setEmpty()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroid/graphics/Region;->sPool:Landroid/util/Pools$SynchronizedPool;

    .line 5
    .line 6
    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public scale(F)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroid/graphics/Region;->scale(FLandroid/graphics/Region;)V

    return-void
.end method

.method public native scale(FLandroid/graphics/Region;)V
.end method

.method public set(IIII)Z
    .locals 6

    .line 3
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Region;->nativeSetRect(JIIII)Z

    move-result p1

    return p1
.end method

.method public set(Landroid/graphics/Rect;)Z
    .locals 6

    .line 2
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static/range {v0 .. v5}, Landroid/graphics/Region;->nativeSetRect(JIIII)Z

    move-result p1

    return p1
.end method

.method public set(Landroid/graphics/Region;)Z
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    iget-wide v2, p1, Landroid/graphics/Region;->mNativeRegion:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Region;->nativeSetRegion(JJ)V

    const/4 p1, 0x1

    return p1
.end method

.method public setEmpty()V
    .locals 6

    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/graphics/Region;->nativeSetRect(JIIII)Z

    return-void
.end method

.method public setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z
    .locals 6

    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    invoke-virtual {p1}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v2

    iget-wide v4, p2, Landroid/graphics/Region;->mNativeRegion:J

    invoke-static/range {v0 .. v5}, Landroid/graphics/Region;->nativeSetPath(JJJ)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    invoke-static {v0, v1}, Landroid/graphics/Region;->nativeToString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public translate(II)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Landroid/graphics/Region;->translate(IILandroid/graphics/Region;)V

    return-void
.end method

.method public native translate(IILandroid/graphics/Region;)V
.end method

.method public final union(Landroid/graphics/Rect;)Z
    .locals 1

    sget-object v0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    move-result p1

    return p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    .line 2
    .line 3
    invoke-static {v0, v1, p1}, Landroid/graphics/Region;->nativeWriteToParcel(JLandroid/os/Parcel;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 11
    .line 12
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 13
    .line 14
    .line 15
    throw p1
.end method
