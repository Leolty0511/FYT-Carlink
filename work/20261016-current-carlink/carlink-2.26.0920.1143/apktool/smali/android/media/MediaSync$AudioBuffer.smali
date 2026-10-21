.class Landroid/media/MediaSync$AudioBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AudioBuffer"
.end annotation


# instance fields
.field public mBufferIndex:I

.field public mByteBuffer:Ljava/nio/ByteBuffer;

.field mPresentationTimeUs:J


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/media/MediaSync$AudioBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 5
    .line 6
    iput p2, p0, Landroid/media/MediaSync$AudioBuffer;->mBufferIndex:I

    .line 7
    .line 8
    iput-wide p3, p0, Landroid/media/MediaSync$AudioBuffer;->mPresentationTimeUs:J

    .line 9
    .line 10
    return-void
.end method
