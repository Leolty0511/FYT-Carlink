.class public final Landroid/media/MediaCodec$BufferInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BufferInfo"
.end annotation


# instance fields
.field public flags:I

.field public offset:I

.field public presentationTimeUs:J

.field public size:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dup()Landroid/media/MediaCodec$BufferInfo;
    .locals 7

    .line 1
    new-instance v6, Landroid/media/MediaCodec$BufferInfo;

    .line 2
    .line 3
    invoke-direct {v6}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 7
    .line 8
    iget v2, p0, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 9
    .line 10
    iget-wide v3, p0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 11
    .line 12
    iget v5, p0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 13
    .line 14
    move-object v0, v6

    .line 15
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    .line 16
    .line 17
    .line 18
    return-object v6
.end method

.method public set(IIJI)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 2
    .line 3
    iput p2, p0, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 4
    .line 5
    iput-wide p3, p0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 6
    .line 7
    iput p5, p0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 8
    .line 9
    return-void
.end method
