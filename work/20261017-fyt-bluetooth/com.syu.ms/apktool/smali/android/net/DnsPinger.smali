.class public final Landroid/net/DnsPinger;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/DnsPinger$DnsArg;,
        Landroid/net/DnsPinger$ActivePing;
    }
.end annotation


# static fields
.field private static final ACTION_CANCEL_ALL_PINGS:I = 0x50003

.field private static final ACTION_LISTEN_FOR_RESPONSE:I = 0x50002

.field private static final ACTION_PING_DNS:I = 0x50001

.field private static final BASE:I = 0x50000

.field private static final DBG:Z = false

.field public static final DNS_PING_RESULT:I = 0x50000

.field private static final DNS_PORT:I = 0x35

.field private static final RECEIVE_POLL_INTERVAL_MS:I = 0xc8

.field public static final SOCKET_EXCEPTION:I = -0x2

.field private static final SOCKET_TIMEOUT_MS:I = 0x1

.field public static final TIMEOUT:I = -0x1

.field private static final mDnsQuery:[B

.field private static final sCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final sRandom:Ljava/util/Random;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mActivePings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/DnsPinger$ActivePing;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectionType:I

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mDefaultDns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mEventCounter:I

.field private final mTarget:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Landroid/net/DnsPinger;->sRandom:Ljava/util/Random;

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Landroid/net/DnsPinger;->sCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 3
    fill-array-data v0, :array_0

    sput-object v0, Landroid/net/DnsPinger;->mDnsQuery:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x3t
        0x77t
        0x77t
        0x77t
        0x6t
        0x67t
        0x6ft
        0x6ft
        0x67t
        0x6ct
        0x65t
        0x3t
        0x63t
        0x6ft
        0x6dt
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Looper;Landroid/os/Handler;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p3, 0x0

    .line 2
    iput-object p3, p0, Landroid/net/DnsPinger;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 3
    new-instance p3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p3, p0, Landroid/net/DnsPinger;->mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Landroid/net/DnsPinger;->mActivePings:Ljava/util/List;

    .line 5
    iput-object p2, p0, Landroid/net/DnsPinger;->TAG:Ljava/lang/String;

    .line 6
    iput-object p1, p0, Landroid/net/DnsPinger;->mContext:Landroid/content/Context;

    .line 7
    iput-object p4, p0, Landroid/net/DnsPinger;->mTarget:Landroid/os/Handler;

    .line 8
    iput p5, p0, Landroid/net/DnsPinger;->mConnectionType:I

    .line 9
    invoke-static {p5}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/net/DnsPinger;->mDefaultDns:Ljava/util/ArrayList;

    .line 11
    invoke-direct {p0}, Landroid/net/DnsPinger;->getDefaultDns()Ljava/net/InetAddress;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 12
    iput p1, p0, Landroid/net/DnsPinger;->mEventCounter:I

    return-void

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid connectionType in constructor: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getCurrentLinkProperties()Landroid/net/LinkProperties;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/DnsPinger;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/net/DnsPinger;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Landroid/net/DnsPinger;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/net/DnsPinger;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget v1, p0, Landroid/net/DnsPinger;->mConnectionType:I

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v0

    return-object v0
.end method

.method private getDefaultDns()Ljava/net/InetAddress;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/DnsPinger;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_dns_server"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/net/DnsPinger;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4
    :cond_1
    :try_start_0
    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "getDefaultDns::malformed default dns address"

    .line 5
    invoke-direct {p0, v0}, Landroid/net/DnsPinger;->loge(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/DnsPinger;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/DnsPinger;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private sendResponse(III)V
    .locals 1

    .line 1
    iget-object p2, p0, Landroid/net/DnsPinger;->mTarget:Landroid/os/Handler;

    const/high16 v0, 0x50000

    invoke-virtual {p0, v0, p1, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public cancelPings()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/DnsPinger;->mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const v0, 0x50003

    .line 2
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public getDnsList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/net/DnsPinger;->getCurrentLinkProperties()Landroid/net/LinkProperties;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCurLinkProperties:: LP for type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/DnsPinger;->mConnectionType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is null!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/DnsPinger;->loge(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Landroid/net/DnsPinger;->mDefaultDns:Ljava/util/ArrayList;

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1

    :cond_2
    :goto_0
    const-string v0, "getDns::LinkProps has null dns - returning default"

    .line 7
    invoke-direct {p0, v0}, Landroid/net/DnsPinger;->loge(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Landroid/net/DnsPinger;->mDefaultDns:Ljava/util/ArrayList;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/16 v1, 0xc8

    const v3, 0x50002

    const/4 v4, -0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    .line 2
    :pswitch_0
    iget-object p1, p0, Landroid/net/DnsPinger;->mActivePings:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/DnsPinger$ActivePing;

    .line 3
    iget-object v0, v0, Landroid/net/DnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Landroid/net/DnsPinger;->mActivePings:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto/16 :goto_4

    .line 5
    :pswitch_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    iget v0, p0, Landroid/net/DnsPinger;->mEventCounter:I

    if-eq p1, v0, :cond_1

    goto/16 :goto_4

    .line 6
    :cond_1
    iget-object p1, p0, Landroid/net/DnsPinger;->mActivePings:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catch_0
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/DnsPinger$ActivePing;

    const/4 v7, 0x2

    :try_start_0
    new-array v8, v7, [B

    .line 7
    new-instance v9, Ljava/net/DatagramPacket;

    invoke-direct {v9, v8, v7}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 8
    iget-object v7, v0, Landroid/net/DnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v7, v9}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 9
    aget-byte v7, v8, v6

    iget-short v9, v0, Landroid/net/DnsPinger$ActivePing;->packetId:S

    shr-int/lit8 v10, v9, 0x8

    int-to-byte v10, v10

    if-ne v7, v10, :cond_2

    aget-byte v7, v8, v5

    int-to-byte v8, v9

    if-ne v7, v8, :cond_2

    .line 10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget-wide v9, v0, Landroid/net/DnsPinger$ActivePing;->start:J

    sub-long/2addr v7, v9

    long-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v0, Landroid/net/DnsPinger$ActivePing;->result:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 11
    :catch_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v0, Landroid/net/DnsPinger$ActivePing;->result:Ljava/lang/Integer;

    goto :goto_1

    .line 12
    :cond_3
    iget-object p1, p0, Landroid/net/DnsPinger;->mActivePings:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 13
    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 14
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/DnsPinger$ActivePing;

    .line 15
    iget-object v4, v0, Landroid/net/DnsPinger$ActivePing;->result:Ljava/lang/Integer;

    if-eqz v4, :cond_5

    .line 16
    iget v5, v0, Landroid/net/DnsPinger$ActivePing;->internalId:I

    iget-short v7, v0, Landroid/net/DnsPinger$ActivePing;->packetId:S

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v5, v7, v4}, Landroid/net/DnsPinger;->sendResponse(III)V

    .line 17
    iget-object v0, v0, Landroid/net/DnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 19
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v7, v0, Landroid/net/DnsPinger$ActivePing;->start:J

    iget v9, v0, Landroid/net/DnsPinger$ActivePing;->timeout:I

    int-to-long v9, v9

    add-long/2addr v7, v9

    cmp-long v4, v4, v7

    if-lez v4, :cond_4

    .line 20
    iget v4, v0, Landroid/net/DnsPinger$ActivePing;->internalId:I

    iget-short v5, v0, Landroid/net/DnsPinger$ActivePing;->packetId:S

    const/4 v7, -0x1

    invoke-direct {p0, v4, v5, v7}, Landroid/net/DnsPinger;->sendResponse(III)V

    .line 21
    iget-object v0, v0, Landroid/net/DnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 23
    :cond_6
    iget-object p1, p0, Landroid/net/DnsPinger;->mActivePings:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    .line 24
    iget p1, p0, Landroid/net/DnsPinger;->mEventCounter:I

    invoke-virtual {p0, v3, p1, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_4

    .line 25
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/DnsPinger$DnsArg;

    .line 26
    iget v7, v0, Landroid/net/DnsPinger$DnsArg;->seq:I

    iget-object v8, p0, Landroid/net/DnsPinger;->mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    if-eq v7, v8, :cond_7

    goto/16 :goto_4

    .line 27
    :cond_7
    :try_start_1
    new-instance v7, Landroid/net/DnsPinger$ActivePing;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Landroid/net/DnsPinger$ActivePing;-><init>(Landroid/net/DnsPinger;Landroid/net/DnsPinger$1;)V

    .line 28
    iget-object v0, v0, Landroid/net/DnsPinger$DnsArg;->dns:Ljava/net/InetAddress;

    .line 29
    iget v8, p1, Landroid/os/Message;->arg1:I

    iput v8, v7, Landroid/net/DnsPinger$ActivePing;->internalId:I

    .line 30
    iget v8, p1, Landroid/os/Message;->arg2:I

    iput v8, v7, Landroid/net/DnsPinger$ActivePing;->timeout:I

    .line 31
    new-instance v8, Ljava/net/DatagramSocket;

    invoke-direct {v8}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v8, v7, Landroid/net/DnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    .line 32
    invoke-virtual {v8, v5}, Ljava/net/DatagramSocket;->setSoTimeout(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 33
    :try_start_2
    iget-object v8, v7, Landroid/net/DnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    invoke-direct {p0}, Landroid/net/DnsPinger;->getCurrentLinkProperties()Landroid/net/LinkProperties;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/net/DatagramSocket;->setNetworkInterface(Ljava/net/NetworkInterface;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v8

    .line 34
    :try_start_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "sendDnsPing::Error binding to socket "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Landroid/net/DnsPinger;->loge(Ljava/lang/String;)V

    .line 35
    :goto_3
    sget-object v8, Landroid/net/DnsPinger;->sRandom:Ljava/util/Random;

    invoke-virtual {v8}, Ljava/util/Random;->nextInt()I

    move-result v8

    int-to-short v8, v8

    iput-short v8, v7, Landroid/net/DnsPinger$ActivePing;->packetId:S

    .line 36
    sget-object v8, Landroid/net/DnsPinger;->mDnsQuery:[B

    invoke-virtual {v8}, [B->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 37
    iget-short v9, v7, Landroid/net/DnsPinger$ActivePing;->packetId:S

    shr-int/lit8 v10, v9, 0x8

    int-to-byte v10, v10

    aput-byte v10, v8, v6

    int-to-byte v9, v9

    .line 38
    aput-byte v9, v8, v5

    .line 39
    new-instance v9, Ljava/net/DatagramPacket;

    array-length v10, v8

    const/16 v11, 0x35

    invoke-direct {v9, v8, v10, v0, v11}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 40
    iget-object v0, v7, Landroid/net/DnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0, v9}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 41
    iget-object v0, p0, Landroid/net/DnsPinger;->mActivePings:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    iget v0, p0, Landroid/net/DnsPinger;->mEventCounter:I

    add-int/2addr v0, v5

    iput v0, p0, Landroid/net/DnsPinger;->mEventCounter:I

    .line 43
    invoke-virtual {p0, v3, v0, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    .line 44
    :catch_3
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/16 v0, -0x270f

    invoke-direct {p0, p1, v0, v4}, Landroid/net/DnsPinger;->sendResponse(III)V

    :cond_8
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x50001
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public pingDnsAsync(Ljava/net/InetAddress;II)I
    .locals 3

    .line 1
    sget-object v0, Landroid/net/DnsPinger;->sCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 2
    new-instance v1, Landroid/net/DnsPinger$DnsArg;

    iget-object v2, p0, Landroid/net/DnsPinger;->mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-direct {v1, p0, p1, v2}, Landroid/net/DnsPinger$DnsArg;-><init>(Landroid/net/DnsPinger;Ljava/net/InetAddress;I)V

    const p1, 0x50001

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    int-to-long p2, p3

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v0
.end method
