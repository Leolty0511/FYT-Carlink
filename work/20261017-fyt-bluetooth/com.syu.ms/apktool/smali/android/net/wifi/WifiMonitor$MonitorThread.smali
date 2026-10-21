.class Landroid/net/wifi/WifiMonitor$MonitorThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MonitorThread"
.end annotation


# instance fields
.field private mRecvErrors:I

.field private mStateMachine:Lu/m;

.field private final mWifiMonitorSingleton:Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

.field private final mWifiNative:Landroid/net/wifi/WifiNative;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiNative;Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;)V
    .locals 1

    const-string v0, "WifiMonitor"

    .line 1
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mRecvErrors:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lu/m;

    .line 4
    iput-object p1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mWifiNative:Landroid/net/wifi/WifiNative;

    .line 5
    iput-object p2, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mWifiMonitorSingleton:Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    return-void
.end method

.method private dispatchEvent(Ljava/lang/String;)Z
    .locals 13

    const-string v0, "CTRL-EVENT-"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const v1, 0x24007

    const/4 v2, 0x0

    if-nez v0, :cond_7

    const-string v0, "WPA:"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "pre-shared key may be incorrect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    iget-object p1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lu/m;

    invoke-virtual {p1, v1}, Lu/m;->sendMessage(I)V

    goto :goto_0

    :cond_0
    const-string v0, "WPS-SUCCESS"

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object p1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lu/m;

    const v0, 0x24008

    invoke-virtual {p1, v0}, Lu/m;->sendMessage(I)V

    goto :goto_0

    :cond_1
    const-string v0, "WPS-FAIL"

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleWpsFailEvent(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "WPS-OVERLAP-DETECTED"

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    iget-object p1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lu/m;

    const v0, 0x2400a

    invoke-virtual {p1, v0}, Lu/m;->sendMessage(I)V

    goto :goto_0

    :cond_3
    const-string v0, "WPS-TIMEOUT"

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11
    iget-object p1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lu/m;

    const v0, 0x2400b

    invoke-virtual {p1, v0}, Lu/m;->sendMessage(I)V

    goto :goto_0

    :cond_4
    const-string v0, "P2P"

    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleP2pEvents(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v0, "AP"

    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 15
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleHostApEvents(Ljava/lang/String;)V

    :cond_6
    :goto_0
    return v2

    .line 16
    :cond_7
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$600()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x20

    .line 17
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_8

    .line 18
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 19
    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_9

    return v2

    :cond_9
    const-string v3, "CONNECTED"

    .line 20
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v5, 0xa

    const/16 v6, 0x9

    const/4 v7, 0x6

    const/4 v8, 0x5

    const/16 v9, 0x8

    const/4 v10, 0x7

    const/4 v11, 0x3

    const/4 v12, 0x1

    if-eqz v3, :cond_a

    move v0, v12

    goto :goto_1

    :cond_a
    const-string v3, "DISCONNECTED"

    .line 21
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v0, 0x2

    goto :goto_1

    :cond_b
    const-string v3, "STATE-CHANGE"

    .line 22
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    move v0, v11

    goto :goto_1

    :cond_c
    const-string v3, "SCAN-RESULTS"

    .line 23
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v0, 0x4

    goto :goto_1

    :cond_d
    const-string v3, "LINK-SPEED"

    .line 24
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    move v0, v8

    goto :goto_1

    :cond_e
    const-string v3, "TERMINATING"

    .line 25
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    move v0, v7

    goto :goto_1

    :cond_f
    const-string v3, "DRIVER-STATE"

    .line 26
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    move v0, v10

    goto :goto_1

    :cond_10
    const-string v3, "EAP-FAILURE"

    .line 27
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    move v0, v9

    goto :goto_1

    :cond_11
    const-string v3, "ASSOC-REJECT"

    .line 28
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v6

    goto :goto_1

    :cond_12
    move v0, v5

    :goto_1
    const-string v3, " "

    if-eq v0, v10, :cond_16

    if-ne v0, v8, :cond_13

    goto :goto_3

    :cond_13
    if-eq v0, v11, :cond_15

    if-ne v0, v9, :cond_14

    goto :goto_2

    :cond_14
    const-string v3, " - "

    .line 29
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v4, :cond_17

    add-int/2addr v3, v11

    .line 30
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    .line 31
    :cond_15
    :goto_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v4, :cond_17

    add-int/2addr v3, v12

    .line 32
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    .line 33
    :cond_16
    :goto_3
    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v12

    :cond_17
    :goto_4
    if-ne v0, v11, :cond_18

    .line 34
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleSupplicantStateChange(Ljava/lang/String;)V

    goto :goto_6

    :cond_18
    if-ne v0, v10, :cond_19

    .line 35
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleDriverEvent(Ljava/lang/String;)V

    goto :goto_6

    :cond_19
    if-ne v0, v7, :cond_1c

    const-string v0, "recv error"

    .line 36
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 37
    iget p1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mRecvErrors:I

    add-int/2addr p1, v12

    iput p1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mRecvErrors:I

    if-le p1, v5, :cond_1a

    goto :goto_5

    :cond_1a
    return v2

    .line 38
    :cond_1b
    :goto_5
    iget-object p1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lu/m;

    const v0, 0x24002

    invoke-virtual {p1, v0}, Lu/m;->sendMessage(I)V

    return v12

    :cond_1c
    if-ne v0, v9, :cond_1d

    const-string v0, "EAP authentication failed"

    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 40
    iget-object p1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lu/m;

    invoke-virtual {p1, v1}, Lu/m;->sendMessage(I)V

    goto :goto_6

    :cond_1d
    if-ne v0, v6, :cond_1e

    .line 41
    iget-object p1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lu/m;

    const v0, 0x2402b

    invoke-virtual {p1, v0}, Lu/m;->sendMessage(I)V

    goto :goto_6

    .line 42
    :cond_1e
    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleEvent(ILjava/lang/String;)V

    .line 43
    :cond_1f
    :goto_6
    iput v2, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mRecvErrors:I

    return v2
.end method

.method private handleDriverEvent(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "HANGED"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lu/m;

    const v0, 0x2400c

    invoke-virtual {p1, v0}, Lu/m;->sendMessage(I)V

    :cond_1
    return-void
.end method

.method private handleHostApEvents(Ljava/lang/String;)V
    .locals 4

    const-string v0, " "

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    aget-object v2, v0, v1

    const-string v3, "AP-STA-CONNECTED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lu/m;

    const v1, 0x2402a

    new-instance v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v2, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lu/m;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    aget-object v0, v0, v1

    const-string v1, "AP-STA-DISCONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lu/m;

    const v1, 0x24029

    new-instance v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v2, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lu/m;->sendMessage(ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private handleNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_1

    .line 2
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$700()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    .line 3
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    .line 5
    :try_start_0
    invoke-virtual {p2, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-object p2, v0

    .line 6
    :goto_0
    invoke-virtual {p0, p1, p2, v1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method private handleP2pEvents(Ljava/lang/String;)V
    .locals 3

    const-string v0, "P2P-DEVICE-FOUND"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lu/m;

    const v1, 0x24015

    new-instance v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v2, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lu/m;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_0
    const-string v0, "P2P-DEVICE-LOST"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lu/m;

    const v1, 0x24016

    new-instance v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v2, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lu/m;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_1
    const-string v0, "P2P-FIND-STOPPED"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object p1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lu/m;

    const v0, 0x24025

    invoke-virtual {p1, v0}, Lu/m;->sendMessage(I)V

    goto/16 :goto_0

    :cond_2
    const-string v0, "P2P-GO-NEG-REQUEST"

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lu/m;

    const v1, 0x24017

    new-instance v2, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v2, p1}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lu/m;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_3
    const-string v0, "P2P-GO-NEG-SUCCESS"

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    iget-object p1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lu/m;

    const v0, 0x24019

    invoke-virtual {p1, v0}, Lu/m;->sendMessage(I)V

    goto/16 :goto_0

    :cond_4
    const-string v0, "P2P-GO-NEG-FAILURE"

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lu/m;

    const v1, 0x2401a

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->p2pError(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lu/m;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    const-string v0, "P2P-GROUP-FORMATION-SUCCESS"

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 14
    iget-object p1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lu/m;

    const v0, 0x2401b

    invoke-virtual {p1, v0}, Lu/m;->sendMessage(I)V

    goto/16 :goto_0

    :cond_6
    const-string v0, "P2P-GROUP-FORMATION-FAILURE"

    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 16
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lu/m;

    const v1, 0x2401c

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->p2pError(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lu/m;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_7
    const-string v0, "P2P-GROUP-STARTED"

    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 18
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lu/m;

    const v1, 0x2401d

    new-instance v2, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v2, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lu/m;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_8
    const-string v0, "P2P-GROUP-REMOVED"

    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 20
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lu/m;

    const v1, 0x2401e

    new-instance v2, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v2, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lu/m;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_9
    const-string v0, "P2P-INVITATION-RECEIVED"

    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 22
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lu/m;

    const v1, 0x2401f

    new-instance v2, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v2, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lu/m;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_a
    const-string v0, "P2P-INVITATION-RESULT"

    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 24
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lu/m;

    const v1, 0x24020

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->p2pError(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lu/m;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_b
    const-string v0, "P2P-PROV-DISC-PBC-REQ"

    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 26
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lu/m;

    const v1, 0x24021

    new-instance v2, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    invoke-direct {v2, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lu/m;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_c
    const-string v0, "P2P-PROV-DISC-PBC-RESP"

    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 28
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lu/m;

    const v1, 0x24022

    new-instance v2, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    invoke-direct {v2, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lu/m;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    :cond_d
    const-string v0, "P2P-PROV-DISC-ENTER-PIN"

    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 30
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lu/m;

    const v1, 0x24023

    new-instance v2, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    invoke-direct {v2, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lu/m;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    :cond_e
    const-string v0, "P2P-PROV-DISC-SHOW-PIN"

    .line 31
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 32
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lu/m;

    const v1, 0x24024

    new-instance v2, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    invoke-direct {v2, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lu/m;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    :cond_f
    const-string v0, "P2P-PROV-DISC-FAILURE"

    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 34
    iget-object p1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lu/m;

    const v0, 0x24027

    invoke-virtual {p1, v0}, Lu/m;->sendMessage(I)V

    goto :goto_0

    :cond_10
    const-string v0, "P2P-SERV-DISC-RESP"

    .line 35
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 36
    invoke-static {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->newInstance(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 37
    iget-object p1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lu/m;

    const v1, 0x24026

    invoke-virtual {p1, v1, v0}, Lu/m;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 38
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Null service resp "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WifiMonitor"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    :goto_0
    return-void
.end method

.method private handleSupplicantStateChange(Ljava/lang/String;)V
    .locals 12

    const-string v0, "SSID="

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    add-int/lit8 v0, v0, 0x5

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiSsid;->createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const-string v3, " "

    .line 3
    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 4
    array-length v3, p1

    const/4 v4, 0x0

    move v6, v2

    move v7, v6

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_5

    aget-object v8, p1, v5

    const-string v9, "="

    .line 5
    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 6
    array-length v9, v8

    const/4 v10, 0x2

    if-eq v9, v10, :cond_1

    goto :goto_2

    .line 7
    :cond_1
    aget-object v9, v8, v4

    const-string v10, "BSSID"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_2

    .line 8
    aget-object v1, v8, v10

    goto :goto_2

    .line 9
    :cond_2
    :try_start_0
    aget-object v9, v8, v10

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    aget-object v10, v8, v4

    const-string v11, "id"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    move v7, v9

    goto :goto_2

    .line 11
    :cond_3
    aget-object v8, v8, v4

    const-string/jumbo v10, "state"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v6, v9

    :catch_0
    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    if-ne v6, v2, :cond_6

    return-void

    .line 12
    :cond_6
    sget-object p1, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    .line 13
    invoke-static {}, Landroid/net/wifi/SupplicantState;->values()[Landroid/net/wifi/SupplicantState;

    move-result-object v2

    array-length v3, v2

    :goto_3
    if-ge v4, v3, :cond_8

    aget-object v5, v2, v4

    .line 14
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    if-ne v8, v6, :cond_7

    move-object p1, v5

    goto :goto_4

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 15
    :cond_8
    :goto_4
    sget-object v2, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    if-ne p1, v2, :cond_9

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid supplicant state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WifiMonitor"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :cond_9
    invoke-virtual {p0, v7, v0, v1, p1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifySupplicantStateChange(ILandroid/net/wifi/WifiSsid;Ljava/lang/String;Landroid/net/wifi/SupplicantState;)V

    return-void
.end method

.method private handleWpsFailEvent(Ljava/lang/String;)V
    .locals 5

    const-string v0, "WPS-FAIL msg=\\d+(?: config_error=(\\d+))?(?: reason=(\\d+))?"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    const v1, 0x24009

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    .line 5
    invoke-virtual {p1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v0, :cond_1

    if-eq p1, v4, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lu/m;

    const/4 v0, 0x4

    invoke-virtual {p1, v1, v0, v2}, Lu/m;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/m;->sendMessage(Landroid/os/Message;)V

    return-void

    .line 8
    :cond_1
    iget-object p1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lu/m;

    const/4 v0, 0x5

    invoke-virtual {p1, v1, v0, v2}, Lu/m;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/m;->sendMessage(Landroid/os/Message;)V

    return-void

    :cond_2
    :goto_0
    if-eqz v3, :cond_5

    .line 9
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_4

    const/16 v0, 0x12

    if-eq p1, v0, :cond_3

    goto :goto_1

    .line 10
    :cond_3
    iget-object p1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lu/m;

    const/4 v0, 0x6

    invoke-virtual {p1, v1, v0, v2}, Lu/m;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/m;->sendMessage(Landroid/os/Message;)V

    return-void

    .line 11
    :cond_4
    iget-object p1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lu/m;

    const/4 v0, 0x3

    invoke-virtual {p1, v1, v0, v2}, Lu/m;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/m;->sendMessage(Landroid/os/Message;)V

    return-void

    .line 12
    :cond_5
    :goto_1
    iget-object p1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lu/m;

    invoke-virtual {p1, v1, v2, v2}, Lu/m;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/m;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method private p2pError(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;
    .locals 4

    .line 1
    sget-object v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->UNKNOWN:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    const-string v1, " "

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 3
    array-length v1, p1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x1

    .line 4
    aget-object p1, p1, v1

    const-string v3, "="

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 5
    array-length v3, p1

    if-eq v3, v2, :cond_1

    return-object v0

    .line 6
    :cond_1
    aget-object v2, p1, v1

    const-string v3, "FREQ_CONFLICT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    sget-object p1, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->NO_COMMON_CHANNEL:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    return-object p1

    .line 8
    :cond_2
    :try_start_0
    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->valueOf(I)Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public handleEvent(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lu/m;

    const p2, 0x24005

    invoke-virtual {p1, p2}, Lu/m;->sendMessage(I)V

    goto :goto_0

    .line 2
    :cond_1
    sget-object p1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0, p1, p2}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_2
    sget-object p1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0, p1, p2}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public notifyNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;I)V
    .locals 2

    .line 1
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lu/m;

    const v0, 0x24003

    invoke-virtual {p1, v0, p3, v1, p2}, Lu/m;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 3
    iget-object p2, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lu/m;

    invoke-virtual {p2, p1}, Lu/m;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lu/m;

    const v0, 0x24004

    invoke-virtual {p1, v0, p3, v1, p2}, Lu/m;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 5
    iget-object p2, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lu/m;

    invoke-virtual {p2, p1}, Lu/m;->sendMessage(Landroid/os/Message;)V

    :goto_0
    return-void
.end method

.method public notifySupplicantStateChange(ILandroid/net/wifi/WifiSsid;Ljava/lang/String;Landroid/net/wifi/SupplicantState;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lu/m;

    new-instance v1, Landroid/net/wifi/StateChangeResult;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/net/wifi/StateChangeResult;-><init>(ILandroid/net/wifi/WifiSsid;Ljava/lang/String;Landroid/net/wifi/SupplicantState;)V

    const p1, 0x24006

    invoke-virtual {v0, p1, v1}, Lu/m;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lu/m;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public run()V
    .locals 6

    .line 1
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0}, Landroid/net/wifi/WifiNative;->waitForEvent()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lu/m;

    const-string v2, "IFNAME="

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "p2p0"

    if-eqz v2, :cond_2

    const/16 v2, 0x20

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_3

    const/4 v1, 0x7

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 6
    iget-object v4, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mWifiMonitorSingleton:Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    invoke-static {v4, v1}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->access$300(Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;Ljava/lang/String;)Landroid/net/wifi/WifiMonitor;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v5, "p2p-"

    .line 7
    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mWifiMonitorSingleton:Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    invoke-static {v1, v3}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->access$300(Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;Ljava/lang/String;)Landroid/net/wifi/WifiMonitor;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v4

    :goto_0
    add-int/lit8 v2, v2, 0x1

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 10
    :cond_2
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mWifiMonitorSingleton:Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    invoke-static {v1, v3}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->access$300(Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;Ljava/lang/String;)Landroid/net/wifi/WifiMonitor;

    move-result-object v1

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 11
    invoke-static {v1}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 12
    invoke-static {v1}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Lu/m;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lu/m;

    .line 13
    :cond_4
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lu/m;

    if-eqz v1, :cond_5

    .line 14
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiMonitor$MonitorThread;->dispatchEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 15
    :cond_5
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mWifiMonitorSingleton:Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    invoke-static {v1}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->access$400(Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 16
    :cond_6
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 18
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiMonitor;

    .line 19
    invoke-static {v4}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Lu/m;

    move-result-object v4

    iput-object v4, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lu/m;

    .line 20
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiMonitor$MonitorThread;->dispatchEvent(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v3, 0x1

    goto :goto_2

    :cond_7
    if-eqz v3, :cond_0

    .line 21
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mWifiMonitorSingleton:Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    invoke-static {v0, v2}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->access$502(Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;Z)Z

    :goto_3
    return-void
.end method
