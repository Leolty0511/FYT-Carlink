.class public final Lcom/android/internal/util/VirtualRefBasePtr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mNativePtr:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/android/internal/util/VirtualRefBasePtr;->mNativePtr:J

    .line 5
    .line 6
    invoke-static {p1, p2}, Lcom/android/internal/util/VirtualRefBasePtr;->nIncStrong(J)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static native nDecStrong(J)V
.end method

.method private static native nIncStrong(J)V
.end method


# virtual methods
.method public finalize()V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/util/VirtualRefBasePtr;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 10
    .line 11
    .line 12
    throw v0
.end method

.method public get()J
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/util/VirtualRefBasePtr;->mNativePtr:J

    return-wide v0
.end method

.method public release()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/android/internal/util/VirtualRefBasePtr;->mNativePtr:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-eqz v4, :cond_0

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/android/internal/util/VirtualRefBasePtr;->nDecStrong(J)V

    .line 10
    .line 11
    .line 12
    iput-wide v2, p0, Lcom/android/internal/util/VirtualRefBasePtr;->mNativePtr:J

    .line 13
    .line 14
    :cond_0
    return-void
.end method
