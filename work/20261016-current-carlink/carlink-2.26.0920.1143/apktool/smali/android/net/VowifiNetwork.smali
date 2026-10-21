.class public Landroid/net/VowifiNetwork;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/VowifiNetwork$VowifiSocketFactory;,
        Landroid/net/VowifiNetwork$State;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/VowifiNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "VowifiNetwork"

.field private static final httpKeepAlive:Z

.field private static final httpKeepAliveDurationMs:J

.field private static final httpMaxConnections:I


# instance fields
.field private mApnType:I

.field private volatile mConnectionPool:Lcom/android/okhttp/ConnectionPool;

.field private volatile mDns:Lcom/android/okhttp/Dns;

.field private mDnsIP4Addr:Ljava/lang/String;

.field private mDnsIP6Addr:Ljava/lang/String;

.field private mIsSos:Z

.field private mLocalIP4Addr:Ljava/lang/String;

.field private mLocalIP6Addr:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private mPcscfIP4Addr:Ljava/lang/String;

.field private mPcscfIP6Addr:Ljava/lang/String;

.field private mPrefIPv4:Z

.field private mSessionId:I

.field private mState:Landroid/net/VowifiNetwork$State;

.field private mSubId:I

.field private volatile mVowifiSocketFactory:Landroid/net/VowifiNetwork$VowifiSocketFactory;

.field private mWifiNetworkId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string/jumbo v0, "http.keepAlive"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "true"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sput-boolean v0, Landroid/net/VowifiNetwork;->httpKeepAlive:Z

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const-string/jumbo v0, "http.maxConnections"

    .line 20
    .line 21
    .line 22
    const-string v1, "5"

    .line 23
    .line 24
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 34
    :goto_0
    sput v0, Landroid/net/VowifiNetwork;->httpMaxConnections:I

    .line 35
    .line 36
    const-string/jumbo v0, "http.keepAliveDuration"

    .line 37
    .line 38
    .line 39
    const-string v1, "300000"

    .line 40
    .line 41
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 46
    .line 47
    .line 48
    move-result-wide v0

    .line 49
    sput-wide v0, Landroid/net/VowifiNetwork;->httpKeepAliveDurationMs:J

    .line 50
    .line 51
    new-instance v0, Landroid/net/VowifiNetwork$1;

    .line 52
    .line 53
    invoke-direct {v0}, Landroid/net/VowifiNetwork$1;-><init>()V

    .line 54
    .line 55
    .line 56
    sput-object v0, Landroid/net/VowifiNetwork;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 57
    .line 58
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/net/VowifiNetwork;->mConnectionPool:Lcom/android/okhttp/ConnectionPool;

    .line 3
    iput-object v0, p0, Landroid/net/VowifiNetwork;->mVowifiSocketFactory:Landroid/net/VowifiNetwork$VowifiSocketFactory;

    .line 4
    iput-object v0, p0, Landroid/net/VowifiNetwork;->mDns:Lcom/android/okhttp/Dns;

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/VowifiNetwork;->mLock:Ljava/lang/Object;

    .line 6
    iput p1, p0, Landroid/net/VowifiNetwork;->mSessionId:I

    .line 7
    iput p2, p0, Landroid/net/VowifiNetwork;->mSubId:I

    .line 8
    iput p3, p0, Landroid/net/VowifiNetwork;->mApnType:I

    .line 9
    sget-object p1, Landroid/net/VowifiNetwork$State;->UNKNOWN:Landroid/net/VowifiNetwork$State;

    iput-object p1, p0, Landroid/net/VowifiNetwork;->mState:Landroid/net/VowifiNetwork$State;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Landroid/net/VowifiNetwork;->mConnectionPool:Lcom/android/okhttp/ConnectionPool;

    .line 12
    iput-object v0, p0, Landroid/net/VowifiNetwork;->mVowifiSocketFactory:Landroid/net/VowifiNetwork$VowifiSocketFactory;

    .line 13
    iput-object v0, p0, Landroid/net/VowifiNetwork;->mDns:Lcom/android/okhttp/Dns;

    .line 14
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/VowifiNetwork;->mLock:Ljava/lang/Object;

    .line 15
    iput p1, p0, Landroid/net/VowifiNetwork;->mSessionId:I

    .line 16
    iput-object p2, p0, Landroid/net/VowifiNetwork;->mLocalIP4Addr:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Landroid/net/VowifiNetwork;->mLocalIP6Addr:Ljava/lang/String;

    .line 18
    iput-object p4, p0, Landroid/net/VowifiNetwork;->mPcscfIP4Addr:Ljava/lang/String;

    .line 19
    iput-object p5, p0, Landroid/net/VowifiNetwork;->mPcscfIP6Addr:Ljava/lang/String;

    .line 20
    iput-object p6, p0, Landroid/net/VowifiNetwork;->mDnsIP4Addr:Ljava/lang/String;

    .line 21
    iput-object p7, p0, Landroid/net/VowifiNetwork;->mDnsIP6Addr:Ljava/lang/String;

    .line 22
    iput-boolean p8, p0, Landroid/net/VowifiNetwork;->mPrefIPv4:Z

    .line 23
    iput-boolean p9, p0, Landroid/net/VowifiNetwork;->mIsSos:Z

    .line 24
    iput p10, p0, Landroid/net/VowifiNetwork;->mWifiNetworkId:I

    .line 25
    sget-object p1, Landroid/net/VowifiNetwork$State;->UNKNOWN:Landroid/net/VowifiNetwork$State;

    iput-object p1, p0, Landroid/net/VowifiNetwork;->mState:Landroid/net/VowifiNetwork$State;

    return-void
.end method

.method public constructor <init>(Landroid/net/VowifiNetwork;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Landroid/net/VowifiNetwork;->mConnectionPool:Lcom/android/okhttp/ConnectionPool;

    .line 28
    iput-object v0, p0, Landroid/net/VowifiNetwork;->mVowifiSocketFactory:Landroid/net/VowifiNetwork$VowifiSocketFactory;

    .line 29
    iput-object v0, p0, Landroid/net/VowifiNetwork;->mDns:Lcom/android/okhttp/Dns;

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/VowifiNetwork;->mLock:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 31
    monitor-enter p1

    .line 32
    :try_start_0
    iget v0, p1, Landroid/net/VowifiNetwork;->mSessionId:I

    iput v0, p0, Landroid/net/VowifiNetwork;->mSessionId:I

    .line 33
    iget v0, p1, Landroid/net/VowifiNetwork;->mSubId:I

    iput v0, p0, Landroid/net/VowifiNetwork;->mSubId:I

    .line 34
    iget v0, p1, Landroid/net/VowifiNetwork;->mApnType:I

    iput v0, p0, Landroid/net/VowifiNetwork;->mApnType:I

    .line 35
    iget-object v0, p1, Landroid/net/VowifiNetwork;->mState:Landroid/net/VowifiNetwork$State;

    iput-object v0, p0, Landroid/net/VowifiNetwork;->mState:Landroid/net/VowifiNetwork$State;

    .line 36
    iget-object v0, p1, Landroid/net/VowifiNetwork;->mLocalIP4Addr:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/VowifiNetwork;->mLocalIP4Addr:Ljava/lang/String;

    .line 37
    iget-object v0, p1, Landroid/net/VowifiNetwork;->mLocalIP6Addr:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/VowifiNetwork;->mLocalIP6Addr:Ljava/lang/String;

    .line 38
    iget-object v0, p1, Landroid/net/VowifiNetwork;->mPcscfIP4Addr:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/VowifiNetwork;->mPcscfIP4Addr:Ljava/lang/String;

    .line 39
    iget-object v0, p1, Landroid/net/VowifiNetwork;->mPcscfIP6Addr:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/VowifiNetwork;->mPcscfIP6Addr:Ljava/lang/String;

    .line 40
    iget-object v0, p1, Landroid/net/VowifiNetwork;->mDnsIP4Addr:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/VowifiNetwork;->mDnsIP4Addr:Ljava/lang/String;

    .line 41
    iget-object v0, p1, Landroid/net/VowifiNetwork;->mDnsIP6Addr:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/VowifiNetwork;->mDnsIP6Addr:Ljava/lang/String;

    .line 42
    iget-boolean v0, p1, Landroid/net/VowifiNetwork;->mPrefIPv4:Z

    iput-boolean v0, p0, Landroid/net/VowifiNetwork;->mPrefIPv4:Z

    .line 43
    iget-boolean v0, p1, Landroid/net/VowifiNetwork;->mIsSos:Z

    iput-boolean v0, p0, Landroid/net/VowifiNetwork;->mIsSos:Z

    .line 44
    iget v0, p1, Landroid/net/VowifiNetwork;->mWifiNetworkId:I

    iput v0, p0, Landroid/net/VowifiNetwork;->mWifiNetworkId:I

    .line 45
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public static synthetic access$002(Landroid/net/VowifiNetwork;Landroid/net/VowifiNetwork$State;)Landroid/net/VowifiNetwork$State;
    .locals 0

    iput-object p1, p0, Landroid/net/VowifiNetwork;->mState:Landroid/net/VowifiNetwork$State;

    return-object p1
.end method

.method public static synthetic access$100(Landroid/net/VowifiNetwork;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/net/VowifiNetwork;->mLocalIP4Addr:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$102(Landroid/net/VowifiNetwork;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/net/VowifiNetwork;->mLocalIP4Addr:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$200(Landroid/net/VowifiNetwork;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/net/VowifiNetwork;->mLocalIP6Addr:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$202(Landroid/net/VowifiNetwork;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/net/VowifiNetwork;->mLocalIP6Addr:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$302(Landroid/net/VowifiNetwork;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/net/VowifiNetwork;->mPcscfIP4Addr:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$402(Landroid/net/VowifiNetwork;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/net/VowifiNetwork;->mPcscfIP6Addr:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$502(Landroid/net/VowifiNetwork;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/net/VowifiNetwork;->mDnsIP4Addr:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$602(Landroid/net/VowifiNetwork;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/net/VowifiNetwork;->mDnsIP6Addr:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$702(Landroid/net/VowifiNetwork;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/net/VowifiNetwork;->mPrefIPv4:Z

    return p1
.end method

.method public static synthetic access$802(Landroid/net/VowifiNetwork;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/net/VowifiNetwork;->mIsSos:Z

    return p1
.end method

.method public static synthetic access$902(Landroid/net/VowifiNetwork;I)I
    .locals 0

    iput p1, p0, Landroid/net/VowifiNetwork;->mWifiNetworkId:I

    return p1
.end method

.method private maybeInitHttpClient()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/net/VowifiNetwork;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/net/VowifiNetwork;->mDns:Lcom/android/okhttp/Dns;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Landroid/net/VowifiNetwork$2;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Landroid/net/VowifiNetwork$2;-><init>(Landroid/net/VowifiNetwork;)V

    .line 11
    .line 12
    .line 13
    iput-object v1, p0, Landroid/net/VowifiNetwork;->mDns:Lcom/android/okhttp/Dns;

    .line 14
    .line 15
    :cond_0
    iget-object v1, p0, Landroid/net/VowifiNetwork;->mConnectionPool:Lcom/android/okhttp/ConnectionPool;

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    new-instance v1, Lcom/android/okhttp/ConnectionPool;

    .line 20
    .line 21
    sget v2, Landroid/net/VowifiNetwork;->httpMaxConnections:I

    .line 22
    .line 23
    sget-wide v3, Landroid/net/VowifiNetwork;->httpKeepAliveDurationMs:J

    .line 24
    .line 25
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 26
    .line 27
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/okhttp/ConnectionPool;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Landroid/net/VowifiNetwork;->mConnectionPool:Lcom/android/okhttp/ConnectionPool;

    .line 31
    .line 32
    :cond_1
    monitor-exit v0

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception v1

    .line 35
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 1

    iget v0, p0, Landroid/net/VowifiNetwork;->mWifiNetworkId:I

    invoke-static {p1, v0}, Ljava/net/InetAddress;->getAllByNameOnNet(Ljava/lang/String;I)[Ljava/net/InetAddress;

    move-result-object p1

    return-object p1
.end method

.method public getApnType()I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Landroid/net/VowifiNetwork;->mApnType:I

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    throw v0
.end method

.method public getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 1

    iget v0, p0, Landroid/net/VowifiNetwork;->mWifiNetworkId:I

    invoke-static {p1, v0}, Ljava/net/InetAddress;->getByNameOnNet(Ljava/lang/String;I)Ljava/net/InetAddress;

    move-result-object p1

    return-object p1
.end method

.method public getIPv4DnsAddr()Ljava/lang/String;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/net/VowifiNetwork;->mDnsIP4Addr:Ljava/lang/String;

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    throw v0
.end method

.method public getIPv6DnsAddr()Ljava/lang/String;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/net/VowifiNetwork;->mDnsIP6Addr:Ljava/lang/String;

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    throw v0
.end method

.method public getIpv4Addr()Ljava/lang/String;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/net/VowifiNetwork;->mLocalIP4Addr:Ljava/lang/String;

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    throw v0
.end method

.method public getIpv4PcscfAddr()Ljava/lang/String;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/net/VowifiNetwork;->mPcscfIP4Addr:Ljava/lang/String;

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    throw v0
.end method

.method public getIpv6Addr()Ljava/lang/String;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/net/VowifiNetwork;->mLocalIP6Addr:Ljava/lang/String;

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    throw v0
.end method

.method public getIpv6PcscfAddr()Ljava/lang/String;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/net/VowifiNetwork;->mPcscfIP6Addr:Ljava/lang/String;

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    throw v0
.end method

.method public getIsSos()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Landroid/net/VowifiNetwork;->mIsSos:Z

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    throw v0
.end method

.method public getPrefIPv4()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Landroid/net/VowifiNetwork;->mPrefIPv4:Z

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    throw v0
.end method

.method public getSocketFactory()Ljavax/net/SocketFactory;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/VowifiNetwork;->mVowifiSocketFactory:Landroid/net/VowifiNetwork$VowifiSocketFactory;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Landroid/net/VowifiNetwork;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Landroid/net/VowifiNetwork;->mVowifiSocketFactory:Landroid/net/VowifiNetwork$VowifiSocketFactory;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Landroid/net/VowifiNetwork$VowifiSocketFactory;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Landroid/net/VowifiNetwork$VowifiSocketFactory;-><init>(Landroid/net/VowifiNetwork;)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Landroid/net/VowifiNetwork;->mVowifiSocketFactory:Landroid/net/VowifiNetwork$VowifiSocketFactory;

    .line 18
    .line 19
    :cond_0
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1

    .line 24
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/net/VowifiNetwork;->mVowifiSocketFactory:Landroid/net/VowifiNetwork$VowifiSocketFactory;

    .line 25
    .line 26
    return-object v0
.end method

.method public getState()Landroid/net/VowifiNetwork$State;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/net/VowifiNetwork;->mState:Landroid/net/VowifiNetwork$State;

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    throw v0
.end method

.method public getSubId()I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Landroid/net/VowifiNetwork;->mSubId:I

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    throw v0
.end method

.method public getWifiNetId()I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Landroid/net/VowifiNetwork;->mWifiNetworkId:I

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    throw v0
.end method

.method public openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 1

    .line 1
    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 2
    invoke-virtual {p0, p1, v0}, Landroid/net/VowifiNetwork;->openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p1

    return-object p1
.end method

.method public openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .locals 3

    if-eqz p2, :cond_2

    .line 3
    invoke-direct {p0}, Landroid/net/VowifiNetwork;->maybeInitHttpClient()V

    .line 4
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "http"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-static {p2}, Lcom/android/okhttp/HttpHandler;->createHttpOkUrlFactory(Ljava/net/Proxy;)Lcom/android/okhttp/OkUrlFactory;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "https"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    invoke-static {p2}, Lcom/android/okhttp/HttpsHandler;->createHttpsOkUrlFactory(Ljava/net/Proxy;)Lcom/android/okhttp/OkUrlFactory;

    move-result-object p2

    .line 9
    :goto_0
    invoke-virtual {p2}, Lcom/android/okhttp/OkUrlFactory;->client()Lcom/android/okhttp/OkHttpClient;

    move-result-object v0

    .line 10
    invoke-virtual {p0}, Landroid/net/VowifiNetwork;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/OkHttpClient;->setSocketFactory(Ljavax/net/SocketFactory;)Lcom/android/okhttp/OkHttpClient;

    move-result-object v1

    iget-object v2, p0, Landroid/net/VowifiNetwork;->mConnectionPool:Lcom/android/okhttp/ConnectionPool;

    invoke-virtual {v1, v2}, Lcom/android/okhttp/OkHttpClient;->setConnectionPool(Lcom/android/okhttp/ConnectionPool;)Lcom/android/okhttp/OkHttpClient;

    .line 11
    iget-object v1, p0, Landroid/net/VowifiNetwork;->mDns:Lcom/android/okhttp/Dns;

    invoke-virtual {v0, v1}, Lcom/android/okhttp/OkHttpClient;->setDns(Lcom/android/okhttp/Dns;)Lcom/android/okhttp/OkHttpClient;

    .line 12
    invoke-virtual {p2, p1}, Lcom/android/okhttp/OkUrlFactory;->open(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1

    .line 13
    :cond_1
    new-instance p1, Ljava/net/MalformedURLException;

    const-string p2, "Invalid URL or unrecognized protocol "

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "proxy is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setIPv4DnsAddr(Ljava/lang/String;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Landroid/net/VowifiNetwork;->mDnsIP4Addr:Ljava/lang/String;

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    throw p1
.end method

.method public setIPv6DnsAddr(Ljava/lang/String;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Landroid/net/VowifiNetwork;->mDnsIP6Addr:Ljava/lang/String;

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    throw p1
.end method

.method public setIpv4Addr(Ljava/lang/String;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Landroid/net/VowifiNetwork;->mLocalIP4Addr:Ljava/lang/String;

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    throw p1
.end method

.method public setIpv4PcscfAddr(Ljava/lang/String;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Landroid/net/VowifiNetwork;->mPcscfIP4Addr:Ljava/lang/String;

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    throw p1
.end method

.method public setIpv6Addr(Ljava/lang/String;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Landroid/net/VowifiNetwork;->mLocalIP6Addr:Ljava/lang/String;

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    throw p1
.end method

.method public setIpv6PcscfAddr(Ljava/lang/String;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Landroid/net/VowifiNetwork;->mPcscfIP6Addr:Ljava/lang/String;

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    throw p1
.end method

.method public setIsSos(Z)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-boolean p1, p0, Landroid/net/VowifiNetwork;->mIsSos:Z

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    throw p1
.end method

.method public setPrefIPv4(Z)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-boolean p1, p0, Landroid/net/VowifiNetwork;->mPrefIPv4:Z

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    throw p1
.end method

.method public setState(Landroid/net/VowifiNetwork$State;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Landroid/net/VowifiNetwork;->mState:Landroid/net/VowifiNetwork$State;

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    throw p1
.end method

.method public setWifiNetId(I)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput p1, p0, Landroid/net/VowifiNetwork;->mWifiNetworkId:I

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "[sessionId: "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget v0, p0, Landroid/net/VowifiNetwork;->mSessionId:I

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v0, ", subId: "

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget v0, p0, Landroid/net/VowifiNetwork;->mSubId:I

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v0, ",apnType: "

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget v0, p0, Landroid/net/VowifiNetwork;->mApnType:I

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v0, "LocalIP4Addr: "

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Landroid/net/VowifiNetwork;->mLocalIP4Addr:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v0, ", LocalIP6Addr: "

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Landroid/net/VowifiNetwork;->mLocalIP6Addr:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v0, ", PcscfIP4Addr: "

    .line 55
    .line 56
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Landroid/net/VowifiNetwork;->mPcscfIP4Addr:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v0, ", PcscfIP6Addr: "

    .line 65
    .line 66
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Landroid/net/VowifiNetwork;->mPcscfIP6Addr:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v0, ", DnsIP4Addr: "

    .line 75
    .line 76
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Landroid/net/VowifiNetwork;->mDnsIP4Addr:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v0, ", DnsIP6Addr: "

    .line 85
    .line 86
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Landroid/net/VowifiNetwork;->mDnsIP6Addr:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v0, ", PrefIPv4: "

    .line 95
    .line 96
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    iget-boolean v0, p0, Landroid/net/VowifiNetwork;->mPrefIPv4:Z

    .line 100
    .line 101
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v0, ", IsSos: "

    .line 105
    .line 106
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    iget-boolean v0, p0, Landroid/net/VowifiNetwork;->mIsSos:Z

    .line 110
    .line 111
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v0, ", wifiNetId: "

    .line 115
    .line 116
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    iget v0, p0, Landroid/net/VowifiNetwork;->mWifiNetworkId:I

    .line 120
    .line 121
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v0, "]"

    .line 125
    .line 126
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    monitor-exit p0

    .line 134
    return-object v0

    .line 135
    :catchall_0
    move-exception v0

    .line 136
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Landroid/net/VowifiNetwork;->mSessionId:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Landroid/net/VowifiNetwork;->mSubId:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Landroid/net/VowifiNetwork;->mApnType:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Landroid/net/VowifiNetwork;->mState:Landroid/net/VowifiNetwork$State;

    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object p2, p0, Landroid/net/VowifiNetwork;->mLocalIP4Addr:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object p2, p0, Landroid/net/VowifiNetwork;->mLocalIP6Addr:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object p2, p0, Landroid/net/VowifiNetwork;->mPcscfIP4Addr:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object p2, p0, Landroid/net/VowifiNetwork;->mPcscfIP6Addr:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object p2, p0, Landroid/net/VowifiNetwork;->mDnsIP4Addr:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object p2, p0, Landroid/net/VowifiNetwork;->mDnsIP6Addr:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-boolean p2, p0, Landroid/net/VowifiNetwork;->mPrefIPv4:Z

    .line 56
    .line 57
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    .line 59
    .line 60
    iget-boolean p2, p0, Landroid/net/VowifiNetwork;->mIsSos:Z

    .line 61
    .line 62
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    .line 64
    .line 65
    iget p2, p0, Landroid/net/VowifiNetwork;->mWifiNetworkId:I

    .line 66
    .line 67
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    .line 69
    .line 70
    return-void
.end method
