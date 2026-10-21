.class Landroid/net/wifi/WifiApConfigStore;
.super Lu/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiApConfigStore$ActiveState;,
        Landroid/net/wifi/WifiApConfigStore$InactiveState;,
        Landroid/net/wifi/WifiApConfigStore$DefaultState;
    }
.end annotation


# static fields
.field private static final AP_CONFIG_FILE:Ljava/lang/String;

.field private static final AP_CONFIG_FILE_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WifiApConfigStore"


# instance fields
.field private mActiveState:Lu/l;

.field private mContext:Landroid/content/Context;

.field private mDefaultState:Lu/l;

.field private mInactiveState:Lu/l;

.field private mReplyChannel:Lu/b;

.field private mWifiApConfig:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/misc/wifi/softap.conf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiApConfigStore;->AP_CONFIG_FILE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    const-string v0, "WifiApConfigStore"

    invoke-direct {p0, v0, p2}, Lu/m;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 2
    new-instance p2, Landroid/net/wifi/WifiApConfigStore$DefaultState;

    invoke-direct {p2, p0}, Landroid/net/wifi/WifiApConfigStore$DefaultState;-><init>(Landroid/net/wifi/WifiApConfigStore;)V

    iput-object p2, p0, Landroid/net/wifi/WifiApConfigStore;->mDefaultState:Lu/l;

    .line 3
    new-instance p2, Landroid/net/wifi/WifiApConfigStore$InactiveState;

    invoke-direct {p2, p0}, Landroid/net/wifi/WifiApConfigStore$InactiveState;-><init>(Landroid/net/wifi/WifiApConfigStore;)V

    iput-object p2, p0, Landroid/net/wifi/WifiApConfigStore;->mInactiveState:Lu/l;

    .line 4
    new-instance p2, Landroid/net/wifi/WifiApConfigStore$ActiveState;

    invoke-direct {p2, p0}, Landroid/net/wifi/WifiApConfigStore$ActiveState;-><init>(Landroid/net/wifi/WifiApConfigStore;)V

    iput-object p2, p0, Landroid/net/wifi/WifiApConfigStore;->mActiveState:Lu/l;

    const/4 p2, 0x0

    .line 5
    iput-object p2, p0, Landroid/net/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    .line 6
    new-instance p2, Lu/b;

    invoke-direct {p2}, Lu/b;-><init>()V

    iput-object p2, p0, Landroid/net/wifi/WifiApConfigStore;->mReplyChannel:Lu/b;

    .line 7
    iput-object p1, p0, Landroid/net/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    .line 8
    iget-object p1, p0, Landroid/net/wifi/WifiApConfigStore;->mDefaultState:Lu/l;

    invoke-virtual {p0, p1}, Lu/m;->addState(Lu/l;)V

    .line 9
    iget-object p1, p0, Landroid/net/wifi/WifiApConfigStore;->mInactiveState:Lu/l;

    iget-object p2, p0, Landroid/net/wifi/WifiApConfigStore;->mDefaultState:Lu/l;

    invoke-virtual {p0, p1, p2}, Lu/m;->addState(Lu/l;Lu/l;)V

    .line 10
    iget-object p1, p0, Landroid/net/wifi/WifiApConfigStore;->mActiveState:Lu/l;

    iget-object p2, p0, Landroid/net/wifi/WifiApConfigStore;->mDefaultState:Lu/l;

    invoke-virtual {p0, p1, p2}, Lu/m;->addState(Lu/l;Lu/l;)V

    .line 11
    iget-object p1, p0, Landroid/net/wifi/WifiApConfigStore;->mInactiveState:Lu/l;

    invoke-virtual {p0, p1}, Lu/m;->setInitialState(Lu/l;)V

    return-void
.end method

.method public static synthetic access$000(Landroid/net/wifi/WifiApConfigStore;)Landroid/net/wifi/WifiConfiguration;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    return-object p0
.end method

.method public static synthetic access$002(Landroid/net/wifi/WifiApConfigStore;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    return-object p1
.end method

.method public static synthetic access$100(Landroid/net/wifi/WifiApConfigStore;)Lu/b;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/wifi/WifiApConfigStore;->mReplyChannel:Lu/b;

    return-object p0
.end method

.method public static synthetic access$200(Landroid/net/wifi/WifiApConfigStore;)Lu/l;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/wifi/WifiApConfigStore;->mActiveState:Lu/l;

    return-object p0
.end method

.method public static synthetic access$300(Landroid/net/wifi/WifiApConfigStore;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$400(Landroid/net/wifi/WifiApConfigStore;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiApConfigStore;->writeApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method public static synthetic access$500(Landroid/net/wifi/WifiApConfigStore;Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic access$600(Landroid/net/wifi/WifiApConfigStore;)Lu/l;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/wifi/WifiApConfigStore;->mInactiveState:Lu/l;

    return-object p0
.end method

.method public static synthetic access$700(Landroid/net/wifi/WifiApConfigStore;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static makeWifiApConfigStore(Landroid/content/Context;Landroid/os/Handler;)Landroid/net/wifi/WifiApConfigStore;
    .locals 1

    .line 1
    new-instance v0, Landroid/net/wifi/WifiApConfigStore;

    invoke-direct {v0, p0, p1}, Landroid/net/wifi/WifiApConfigStore;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 2
    invoke-virtual {v0}, Lu/m;->start()V

    return-object v0
.end method

.method private setDefaultApConfiguration()V
    .locals 5

    .line 1
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 2
    iget-object v1, p0, Landroid/net/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    const v2, 0x1040439

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 3
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 4
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x9

    const/16 v4, 0xd

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    const v1, 0x20019

    .line 6
    invoke-virtual {p0, v1, v0}, Lu/m;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method private writeApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    sget-object v4, Landroid/net/wifi/WifiApConfigStore;->AP_CONFIG_FILE:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x1

    .line 2
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 3
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v0

    .line 5
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    if-eqz v0, :cond_0

    .line 6
    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    :goto_0
    :try_start_3
    const-string v1, "WifiApConfigStore"

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error writing hotspot configuration"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_1

    .line 9
    :try_start_4
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_1
    :goto_1
    return-void

    :goto_2
    if-eqz v0, :cond_2

    :try_start_5
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 10
    :catch_3
    :cond_2
    throw p1
.end method


# virtual methods
.method public getMessenger()Landroid/os/Messenger;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Messenger;

    invoke-virtual {p0}, Lu/m;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public loadApConfiguration()V
    .locals 6

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 2
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    sget-object v5, Landroid/net/wifi/WifiApConfigStore;->AP_CONFIG_FILE:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    const-string v0, "WifiApConfigStore"

    const-string v1, "Bad version on hotspot configuration file, set defaults"

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-direct {p0}, Landroid/net/wifi/WifiApConfigStore;->setDefaultApConfiguration()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-void

    .line 7
    :cond_0
    :try_start_3
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 8
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 9
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v0}, Ljava/util/BitSet;->set(I)V

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 11
    :cond_1
    iput-object v1, p0, Landroid/net/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 12
    :try_start_4
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-object v0, v2

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_2

    .line 13
    :catch_2
    :goto_0
    :try_start_5
    invoke-direct {p0}, Landroid/net/wifi/WifiApConfigStore;->setDefaultApConfiguration()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_2

    .line 14
    :try_start_6
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :catch_3
    :cond_2
    :goto_1
    return-void

    :goto_2
    if-eqz v2, :cond_3

    :try_start_7
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 15
    :catch_4
    :cond_3
    throw v0
.end method
