.class public Lcom/google/android/projection/transport/TransportFactory$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/transport/TransportFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mConnectionSocketOptions:Lcom/google/android/projection/transport/TransportFactory$TcpConnectionSocketOptions;

.field private mContext:Landroid/content/Context;

.field private mServerSocketProvider:Lcom/google/android/projection/transport/ServerSocketProvider;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/projection/transport/TransportFactory$TcpConnectionSocketOptions;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/google/android/projection/transport/TransportFactory$TcpConnectionSocketOptions;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/projection/transport/TransportFactory$Builder;->mConnectionSocketOptions:Lcom/google/android/projection/transport/TransportFactory$TcpConnectionSocketOptions;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/projection/transport/TransportFactory;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/transport/TransportFactory$Builder;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Lcom/google/android/projection/transport/TransportFactory;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, v1}, Lcom/google/android/projection/transport/TransportFactory;-><init>(Lcom/google/android/projection/transport/TransportFactory$1;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/google/android/projection/transport/TransportFactory$Builder;->mServerSocketProvider:Lcom/google/android/projection/transport/ServerSocketProvider;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x2

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    const/4 v1, 0x3

    .line 19
    new-array v1, v1, [Lcom/google/android/projection/transport/TransportFactory$TransportFactoryDelegate;

    .line 20
    .line 21
    new-instance v5, Lcom/google/android/projection/transport/UsbHostDelegate;

    .line 22
    .line 23
    iget-object v6, p0, Lcom/google/android/projection/transport/TransportFactory$Builder;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    invoke-direct {v5, v6}, Lcom/google/android/projection/transport/UsbHostDelegate;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    aput-object v5, v1, v3

    .line 29
    .line 30
    new-instance v3, Lcom/google/android/projection/transport/UsbAccessoryDelegate;

    .line 31
    .line 32
    iget-object v5, p0, Lcom/google/android/projection/transport/TransportFactory$Builder;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    invoke-direct {v3, v5}, Lcom/google/android/projection/transport/UsbAccessoryDelegate;-><init>(Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    aput-object v3, v1, v2

    .line 38
    .line 39
    new-instance v2, Lcom/google/android/projection/transport/TcpDelegate;

    .line 40
    .line 41
    iget-object v3, p0, Lcom/google/android/projection/transport/TransportFactory$Builder;->mServerSocketProvider:Lcom/google/android/projection/transport/ServerSocketProvider;

    .line 42
    .line 43
    iget-object v5, p0, Lcom/google/android/projection/transport/TransportFactory$Builder;->mConnectionSocketOptions:Lcom/google/android/projection/transport/TransportFactory$TcpConnectionSocketOptions;

    .line 44
    .line 45
    invoke-direct {v2, v3, v5}, Lcom/google/android/projection/transport/TcpDelegate;-><init>(Lcom/google/android/projection/transport/ServerSocketProvider;Lcom/google/android/projection/transport/TransportFactory$TcpConnectionSocketOptions;)V

    .line 46
    .line 47
    .line 48
    aput-object v2, v1, v4

    .line 49
    .line 50
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-static {v0, v1}, Lcom/google/android/projection/transport/TransportFactory;->access$102(Lcom/google/android/projection/transport/TransportFactory;Ljava/util/List;)Ljava/util/List;

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    new-array v1, v4, [Lcom/google/android/projection/transport/TransportFactory$TransportFactoryDelegate;

    .line 59
    .line 60
    new-instance v4, Lcom/google/android/projection/transport/UsbHostDelegate;

    .line 61
    .line 62
    iget-object v5, p0, Lcom/google/android/projection/transport/TransportFactory$Builder;->mContext:Landroid/content/Context;

    .line 63
    .line 64
    invoke-direct {v4, v5}, Lcom/google/android/projection/transport/UsbHostDelegate;-><init>(Landroid/content/Context;)V

    .line 65
    .line 66
    .line 67
    aput-object v4, v1, v3

    .line 68
    .line 69
    new-instance v3, Lcom/google/android/projection/transport/UsbAccessoryDelegate;

    .line 70
    .line 71
    iget-object v4, p0, Lcom/google/android/projection/transport/TransportFactory$Builder;->mContext:Landroid/content/Context;

    .line 72
    .line 73
    invoke-direct {v3, v4}, Lcom/google/android/projection/transport/UsbAccessoryDelegate;-><init>(Landroid/content/Context;)V

    .line 74
    .line 75
    .line 76
    aput-object v3, v1, v2

    .line 77
    .line 78
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-static {v0, v1}, Lcom/google/android/projection/transport/TransportFactory;->access$102(Lcom/google/android/projection/transport/TransportFactory;Ljava/util/List;)Ljava/util/List;

    .line 83
    .line 84
    .line 85
    :goto_0
    return-object v0

    .line 86
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 87
    .line 88
    const-string v1, "Context was not provided"

    .line 89
    .line 90
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw v0
.end method

.method public setContext(Landroid/content/Context;)Lcom/google/android/projection/transport/TransportFactory$Builder;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    iput-object p1, p0, Lcom/google/android/projection/transport/TransportFactory$Builder;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public setServerSocketProvider(Lcom/google/android/projection/transport/ServerSocketProvider;)Lcom/google/android/projection/transport/TransportFactory$Builder;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    iput-object p1, p0, Lcom/google/android/projection/transport/TransportFactory$Builder;->mServerSocketProvider:Lcom/google/android/projection/transport/ServerSocketProvider;

    return-object p0
.end method

.method public setTcpConnectionSocketOptions(Lcom/google/android/projection/transport/TransportFactory$TcpConnectionSocketOptions;)Lcom/google/android/projection/transport/TransportFactory$Builder;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    iput-object p1, p0, Lcom/google/android/projection/transport/TransportFactory$Builder;->mConnectionSocketOptions:Lcom/google/android/projection/transport/TransportFactory$TcpConnectionSocketOptions;

    return-object p0
.end method
