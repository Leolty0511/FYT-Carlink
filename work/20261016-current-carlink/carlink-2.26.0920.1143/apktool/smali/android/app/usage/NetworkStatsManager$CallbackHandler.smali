.class Landroid/app/usage/NetworkStatsManager$CallbackHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/usage/NetworkStatsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallbackHandler"
.end annotation


# instance fields
.field private mCallback:Landroid/app/usage/NetworkStatsManager$UsageCallback;

.field private final mNetworkType:I

.field private final mSubscriberId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Looper;ILjava/lang/String;Landroid/app/usage/NetworkStatsManager$UsageCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Landroid/app/usage/NetworkStatsManager$CallbackHandler;->mNetworkType:I

    .line 5
    .line 6
    iput-object p3, p0, Landroid/app/usage/NetworkStatsManager$CallbackHandler;->mSubscriberId:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p4, p0, Landroid/app/usage/NetworkStatsManager$CallbackHandler;->mCallback:Landroid/app/usage/NetworkStatsManager$UsageCallback;

    .line 9
    .line 10
    return-void
.end method

.method private static getObject(Landroid/os/Message;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    const-string v0, "DataUsageRequest"

    .line 2
    .line 3
    invoke-static {p1, v0}, Landroid/app/usage/NetworkStatsManager$CallbackHandler;->getObject(Landroid/os/Message;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/net/DataUsageRequest;

    .line 8
    .line 9
    iget p1, p1, Landroid/os/Message;->what:I

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    if-eq p1, v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Landroid/app/usage/NetworkStatsManager$CallbackHandler;->mCallback:Landroid/app/usage/NetworkStatsManager$UsageCallback;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-object p1, p0, Landroid/app/usage/NetworkStatsManager$CallbackHandler;->mCallback:Landroid/app/usage/NetworkStatsManager$UsageCallback;

    .line 22
    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    iget v0, p0, Landroid/app/usage/NetworkStatsManager$CallbackHandler;->mNetworkType:I

    .line 26
    .line 27
    iget-object v1, p0, Landroid/app/usage/NetworkStatsManager$CallbackHandler;->mSubscriberId:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {p1, v0, v1}, Landroid/app/usage/NetworkStatsManager$UsageCallback;->onThresholdReached(ILjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string/jumbo v1, "limit reached with released callback for "

    .line 36
    .line 37
    .line 38
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const-string v0, "NetworkStatsManager"

    .line 49
    .line 50
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    :goto_0
    return-void
.end method
