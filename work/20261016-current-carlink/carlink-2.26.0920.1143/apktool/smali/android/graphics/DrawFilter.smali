.class public Landroid/graphics/DrawFilter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mNativeInt:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native nativeDestructor(J)V
.end method


# virtual methods
.method public finalize()V
    .locals 2

    .line 1
    :try_start_0
    iget-wide v0, p0, Landroid/graphics/DrawFilter;->mNativeInt:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/graphics/DrawFilter;->nativeDestructor(J)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    iput-wide v0, p0, Landroid/graphics/DrawFilter;->mNativeInt:J
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
