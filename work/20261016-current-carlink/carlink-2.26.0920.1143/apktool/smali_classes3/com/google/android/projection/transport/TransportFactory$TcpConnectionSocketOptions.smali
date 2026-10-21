.class public Lcom/google/android/projection/transport/TransportFactory$TcpConnectionSocketOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/transport/TransportFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TcpConnectionSocketOptions"
.end annotation


# instance fields
.field public enableSendNoDelay:Z

.field public readSocketBufferSize:I

.field public readTimeoutInMillis:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x2710

    .line 5
    .line 6
    iput v0, p0, Lcom/google/android/projection/transport/TransportFactory$TcpConnectionSocketOptions;->readTimeoutInMillis:I

    .line 7
    .line 8
    const/high16 v0, 0x10000

    .line 9
    .line 10
    iput v0, p0, Lcom/google/android/projection/transport/TransportFactory$TcpConnectionSocketOptions;->readSocketBufferSize:I

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/google/android/projection/transport/TransportFactory$TcpConnectionSocketOptions;->enableSendNoDelay:Z

    .line 14
    .line 15
    return-void
.end method
