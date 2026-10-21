.class public Lcom/lsec/core/sharememory/BufferBean;
.super Ljava/lang/Object;
.source "BufferBean.java"


# instance fields
.field public isCanRead:[B

.field public mBuffer:Ljava/nio/ByteBuffer;

.field public mTicks:J


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "bufferSize"    # I

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lsec/core/sharememory/BufferBean;->mTicks:J

    .line 12
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/lsec/core/sharememory/BufferBean;->isCanRead:[B

    .line 13
    if-lez p1, :cond_0

    .line 14
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/lsec/core/sharememory/BufferBean;->mBuffer:Ljava/nio/ByteBuffer;

    .line 15
    :cond_0
    return-void
.end method
