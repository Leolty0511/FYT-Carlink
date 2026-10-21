.class public Landroid/graphics/TemporaryBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sTemp:[C


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtain(I)[C
    .locals 3

    .line 1
    const-class v0, Landroid/graphics/TemporaryBuffer;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Landroid/graphics/TemporaryBuffer;->sTemp:[C

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    sput-object v2, Landroid/graphics/TemporaryBuffer;->sTemp:[C

    .line 8
    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    array-length v0, v1

    .line 13
    if-ge v0, p0, :cond_1

    .line 14
    .line 15
    :cond_0
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :cond_1
    return-object v1

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    throw p0
.end method

.method public static recycle([C)V
    .locals 2

    .line 1
    array-length v0, p0

    .line 2
    const/16 v1, 0x3e8

    .line 3
    .line 4
    if-le v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    const-class v0, Landroid/graphics/TemporaryBuffer;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    sput-object p0, Landroid/graphics/TemporaryBuffer;->sTemp:[C

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p0
.end method
