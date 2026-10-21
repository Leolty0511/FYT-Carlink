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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public set(IIJI)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 2
    iput p2, p0, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 3
    iput-wide p3, p0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 4
    iput p5, p0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    return-void
.end method
