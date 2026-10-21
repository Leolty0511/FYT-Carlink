.class public Landroid/graphics/Interpolator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Interpolator$Result;
    }
.end annotation


# instance fields
.field private mFrameCount:I

.field private mValueCount:I

.field private native_instance:J


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroid/graphics/Interpolator;->mValueCount:I

    const/4 v0, 0x2

    .line 3
    iput v0, p0, Landroid/graphics/Interpolator;->mFrameCount:I

    .line 4
    invoke-static {p1, v0}, Landroid/graphics/Interpolator;->nativeConstructor(II)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Interpolator;->native_instance:J

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p1, p0, Landroid/graphics/Interpolator;->mValueCount:I

    .line 7
    iput p2, p0, Landroid/graphics/Interpolator;->mFrameCount:I

    .line 8
    invoke-static {p1, p2}, Landroid/graphics/Interpolator;->nativeConstructor(II)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/graphics/Interpolator;->native_instance:J

    return-void
.end method

.method private static native nativeConstructor(II)J
.end method

.method private static native nativeDestructor(J)V
.end method

.method private static native nativeReset(JII)V
.end method

.method private static native nativeSetKeyFrame(JII[F[F)V
.end method

.method private static native nativeSetRepeatMirror(JFZ)V
.end method

.method private static native nativeTimeToValues(JI[F)I
.end method


# virtual methods
.method public finalize()V
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/graphics/Interpolator;->native_instance:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/graphics/Interpolator;->nativeDestructor(J)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    iput-wide v0, p0, Landroid/graphics/Interpolator;->native_instance:J

    .line 9
    .line 10
    return-void
.end method

.method public final getKeyFrameCount()I
    .locals 1

    iget v0, p0, Landroid/graphics/Interpolator;->mFrameCount:I

    return v0
.end method

.method public final getValueCount()I
    .locals 1

    iget v0, p0, Landroid/graphics/Interpolator;->mValueCount:I

    return v0
.end method

.method public reset(I)V
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, p1, v0}, Landroid/graphics/Interpolator;->reset(II)V

    return-void
.end method

.method public reset(II)V
    .locals 2

    .line 2
    iput p1, p0, Landroid/graphics/Interpolator;->mValueCount:I

    .line 3
    iput p2, p0, Landroid/graphics/Interpolator;->mFrameCount:I

    .line 4
    iget-wide v0, p0, Landroid/graphics/Interpolator;->native_instance:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Interpolator;->nativeReset(JII)V

    return-void
.end method

.method public setKeyFrame(II[F)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/graphics/Interpolator;->setKeyFrame(II[F[F)V

    return-void
.end method

.method public setKeyFrame(II[F[F)V
    .locals 6

    if-ltz p1, :cond_3

    .line 2
    iget v0, p0, Landroid/graphics/Interpolator;->mFrameCount:I

    if-ge p1, v0, :cond_3

    .line 3
    array-length v0, p3

    iget v1, p0, Landroid/graphics/Interpolator;->mValueCount:I

    if-lt v0, v1, :cond_2

    if-eqz p4, :cond_1

    .line 4
    array-length v0, p4

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/ArrayStoreException;

    invoke-direct {p1}, Ljava/lang/ArrayStoreException;-><init>()V

    throw p1

    .line 6
    :cond_1
    :goto_0
    iget-wide v0, p0, Landroid/graphics/Interpolator;->native_instance:J

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Interpolator;->nativeSetKeyFrame(JII[F[F)V

    return-void

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/ArrayStoreException;

    invoke-direct {p1}, Ljava/lang/ArrayStoreException;-><init>()V

    throw p1

    .line 8
    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public setRepeatMirror(FZ)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/Interpolator;->native_instance:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Interpolator;->nativeSetRepeatMirror(JFZ)V

    :cond_0
    return-void
.end method

.method public timeToValues(I[F)Landroid/graphics/Interpolator$Result;
    .locals 2

    if-eqz p2, :cond_1

    .line 2
    array-length v0, p2

    iget v1, p0, Landroid/graphics/Interpolator;->mValueCount:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/ArrayStoreException;

    invoke-direct {p1}, Ljava/lang/ArrayStoreException;-><init>()V

    throw p1

    .line 4
    :cond_1
    :goto_0
    iget-wide v0, p0, Landroid/graphics/Interpolator;->native_instance:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Interpolator;->nativeTimeToValues(JI[F)I

    move-result p1

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    .line 5
    sget-object p1, Landroid/graphics/Interpolator$Result;->FREEZE_END:Landroid/graphics/Interpolator$Result;

    return-object p1

    .line 6
    :cond_2
    sget-object p1, Landroid/graphics/Interpolator$Result;->FREEZE_START:Landroid/graphics/Interpolator$Result;

    return-object p1

    .line 7
    :cond_3
    sget-object p1, Landroid/graphics/Interpolator$Result;->NORMAL:Landroid/graphics/Interpolator$Result;

    return-object p1
.end method

.method public timeToValues([F)Landroid/graphics/Interpolator$Result;
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Interpolator;->timeToValues(I[F)Landroid/graphics/Interpolator$Result;

    move-result-object p1

    return-object p1
.end method
