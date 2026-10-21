.class public abstract Landroid/opengl/EGLObjectHandle;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mHandle:J


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-long v0, p1

    .line 2
    iput-wide v0, p0, Landroid/opengl/EGLObjectHandle;->mHandle:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-wide p1, p0, Landroid/opengl/EGLObjectHandle;->mHandle:J

    return-void
.end method


# virtual methods
.method public getHandle()I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-wide v0, p0, Landroid/opengl/EGLObjectHandle;->mHandle:J

    .line 2
    .line 3
    const-wide v2, 0xffffffffL

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    and-long/2addr v2, v0

    .line 9
    cmp-long v2, v2, v0

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    long-to-int v0, v0

    .line 14
    return v0

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 18
    .line 19
    .line 20
    throw v0
.end method

.method public getNativeHandle()J
    .locals 2

    iget-wide v0, p0, Landroid/opengl/EGLObjectHandle;->mHandle:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Landroid/opengl/EGLObjectHandle;->mHandle:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    return v1
.end method
