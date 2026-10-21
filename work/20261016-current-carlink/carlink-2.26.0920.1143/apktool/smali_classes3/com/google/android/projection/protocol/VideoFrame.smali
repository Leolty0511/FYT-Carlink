.class public Lcom/google/android/projection/protocol/VideoFrame;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public data:Ljava/nio/ByteBuffer;

.field public sessionId:I

.field public timestamp:J


# direct methods
.method public constructor <init>(IJLjava/nio/ByteBuffer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lcom/google/android/projection/protocol/VideoFrame;->data:Ljava/nio/ByteBuffer;

    .line 5
    .line 6
    iput p1, p0, Lcom/google/android/projection/protocol/VideoFrame;->sessionId:I

    .line 7
    .line 8
    iput-wide p2, p0, Lcom/google/android/projection/protocol/VideoFrame;->timestamp:J

    .line 9
    .line 10
    return-void
.end method
