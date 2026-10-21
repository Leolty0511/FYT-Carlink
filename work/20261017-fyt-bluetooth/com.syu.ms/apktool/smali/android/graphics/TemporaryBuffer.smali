.class public Landroid/graphics/TemporaryBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sTemp:[C


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtain(I)[C
    .locals 3

    .line 1
    const-class v0, Landroid/graphics/TemporaryBuffer;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Landroid/graphics/TemporaryBuffer;->sTemp:[C

    const/4 v2, 0x0

    .line 3
    sput-object v2, Landroid/graphics/TemporaryBuffer;->sTemp:[C

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 5
    array-length v0, v1

    if-ge v0, p0, :cond_1

    .line 6
    :cond_0
    invoke-static {p0}, Lu/a;->f(I)I

    move-result p0

    new-array v1, p0, [C

    :cond_1
    return-object v1

    :catchall_0
    move-exception p0

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static recycle([C)V
    .locals 2

    .line 1
    array-length v0, p0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    const-class v0, Landroid/graphics/TemporaryBuffer;

    monitor-enter v0

    .line 3
    :try_start_0
    sput-object p0, Landroid/graphics/TemporaryBuffer;->sTemp:[C

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
