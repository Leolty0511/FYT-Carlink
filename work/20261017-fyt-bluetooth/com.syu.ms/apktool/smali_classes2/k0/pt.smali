.class public Lk0/pt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I = 0x1

.field public static b:I = 0x0

.field public static c:I = 0xff

.field public static d:Z = true

.field public static e:I

.field public static f:I

.field public static g:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(III)V
    .locals 4

    xor-int/lit16 v0, p0, 0xae

    xor-int/2addr v0, p1

    xor-int/2addr v0, p2

    const/16 v1, 0x8

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0xe3

    aput v3, v1, v2

    const/4 v2, 0x1

    const/16 v3, 0x55

    aput v3, v1, v2

    const/4 v2, 0x2

    const/16 v3, 0xaa

    aput v3, v1, v2

    const/4 v2, 0x3

    const/4 v3, 0x4

    aput v3, v1, v2

    aput p0, v1, v3

    const/4 p0, 0x5

    aput p1, v1, p0

    const/4 p0, 0x6

    aput p2, v1, p0

    const/4 p0, 0x7

    aput v0, v1, p0

    .line 1
    invoke-static {v1}, Lz/k;->s([I)V

    return-void
.end method

.method public static b(IILjava/lang/String;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ** 00 **  BackStrMsg  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 v2, p2, 0x3

    add-int/lit8 v3, p2, 0x7

    .line 4
    new-array v4, v3, [I

    const/16 v5, -0x1d

    const/4 v6, 0x0

    .line 5
    aput v5, v4, v6

    const/16 v5, 0x55

    const/4 v7, 0x1

    .line 6
    aput v5, v4, v7

    const/4 v5, 0x2

    const/16 v7, -0x56

    .line 7
    aput v7, v4, v5

    const/4 v5, 0x3

    .line 8
    aput v2, v4, v5

    const/4 v5, 0x4

    .line 9
    aput p0, v4, v5

    const/4 v5, 0x5

    .line 10
    aput p1, v4, v5

    xor-int/lit16 v2, v2, 0xaa

    xor-int/2addr p0, v2

    xor-int/2addr p0, p1

    :goto_0
    if-ge v6, p2, :cond_0

    add-int/lit8 p1, v6, 0x6

    .line 11
    aget-char v2, v0, v6

    aput v2, v4, p1

    .line 12
    aget p1, v4, p1

    xor-int/2addr p0, p1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p2, 0x6

    .line 13
    aput p0, v4, p2

    .line 14
    invoke-static {v4}, Lz/k;->s([I)V

    .line 15
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, " ** 11 **  BackStrMsg cmds "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static c(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 5

    .line 1
    invoke-static {}, La/f;->x()Landroid/net/wifi/WifiManager;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 4
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p0, 0x10200000

    .line 3
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 4
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    .line 5
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 6
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 2
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 3
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 4
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 5
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 6
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 8
    invoke-static {p0}, Lk0/pt;->c(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 9
    invoke-static {}, La/f;->x()Landroid/net/wifi/WifiManager;

    move-result-object v1

    iget p0, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1, p0}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    :cond_0
    const-string p0, ""

    .line 10
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v1, 0x3

    const/4 v3, 0x1

    if-eqz p0, :cond_1

    move p0, v3

    goto :goto_0

    :cond_1
    move p0, v1

    :goto_0
    const/4 v4, 0x0

    if-ne p0, v3, :cond_2

    .line 11
    iget-object p0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {p0, v4}, Ljava/util/BitSet;->set(I)V

    goto :goto_1

    :cond_2
    const/4 v5, 0x2

    if-ne p0, v5, :cond_3

    .line 12
    iput-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 13
    iget-object p0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v4

    .line 14
    iget-object p0, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 15
    invoke-virtual {p0, v3}, Ljava/util/BitSet;->set(I)V

    .line 16
    iget-object p0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {p0, v1}, Ljava/util/BitSet;->set(I)V

    .line 17
    iget-object p0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {p0, v5}, Ljava/util/BitSet;->set(I)V

    .line 18
    iget-object p0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {p0, v4}, Ljava/util/BitSet;->set(I)V

    .line 19
    iget-object p0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 20
    invoke-virtual {p0, v3}, Ljava/util/BitSet;->set(I)V

    .line 21
    iget-object p0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {p0, v4}, Ljava/util/BitSet;->set(I)V

    .line 22
    iput v4, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    goto :goto_1

    :cond_3
    if-ne p0, v1, :cond_4

    .line 23
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 24
    iput-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 25
    iget-object p0, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 26
    invoke-virtual {p0, v4}, Ljava/util/BitSet;->set(I)V

    .line 27
    iget-object p0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {p0, v5}, Ljava/util/BitSet;->set(I)V

    .line 28
    iget-object p0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {p0, v3}, Ljava/util/BitSet;->set(I)V

    .line 29
    iget-object p0, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 30
    invoke-virtual {p0, v3}, Ljava/util/BitSet;->set(I)V

    .line 31
    iget-object p0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {p0, v1}, Ljava/util/BitSet;->set(I)V

    .line 32
    iget-object p0, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 33
    invoke-virtual {p0, v5}, Ljava/util/BitSet;->set(I)V

    .line 34
    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 35
    :cond_4
    :goto_1
    invoke-static {}, La/f;->x()Landroid/net/wifi/WifiManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result p0

    .line 36
    invoke-static {}, La/f;->x()Landroid/net/wifi/WifiManager;

    move-result-object p1

    invoke-virtual {p1, p0, v3}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-result p0

    .line 37
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keys: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  SharedKey:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "enable: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QQL"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static g(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 14

    const-string v0, "file"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    .line 4
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " *000* copyFolder oldPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " newPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, -0x1

    const/16 v5, 0x400

    const/4 v6, 0x1

    const-string v7, "/"

    if-nez v3, :cond_2

    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 8
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " *111* copyFolder  new File = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array p1, v5, [B

    .line 10
    :goto_0
    invoke-virtual {p0, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    if-eq v0, v4, :cond_1

    .line 11
    invoke-virtual {v3, p1, v1, v0}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    .line 13
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 14
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    return v6

    .line 15
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 16
    array-length v3, v2

    move v8, v1

    :goto_1
    if-ge v8, v3, :cond_9

    aget-object v9, v2, v8

    .line 17
    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 18
    new-instance v10, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 19
    :cond_3
    new-instance v11, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v11, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v10, v11

    .line 20
    :goto_2
    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 21
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Lk0/pt;->g(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_4

    .line 22
    :cond_4
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v11, "--Method--"

    if-nez v9, :cond_5

    :try_start_2
    const-string p0, "copyFolder:  oldFile not exist."

    .line 23
    invoke-static {v11, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 24
    :cond_5
    invoke-virtual {v10}, Ljava/io/File;->isFile()Z

    move-result v9

    if-nez v9, :cond_6

    const-string p0, "copyFolder:  oldFile not file."

    .line 25
    invoke-static {v11, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 26
    :cond_6
    invoke-virtual {v10}, Ljava/io/File;->canRead()Z

    move-result v9

    if-nez v9, :cond_7

    const-string p0, "copyFolder:  oldFile cannot read."

    .line 27
    invoke-static {v11, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 28
    :cond_7
    sput-boolean v6, Lk0/kt;->O:Z

    .line 29
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 30
    new-instance v11, Ljava/io/FileOutputStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 31
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " *222* copyFolder  new File = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v10, v5, [B

    .line 32
    :goto_3
    invoke-virtual {v9, v10}, Ljava/io/FileInputStream;->read([B)I

    move-result v12

    if-eq v12, v4, :cond_8

    .line 33
    invoke-virtual {v11, v10, v1, v12}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_3

    .line 34
    :cond_8
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    .line 35
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->flush()V

    .line 36
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    :cond_9
    return v6

    :catch_0
    move-exception p0

    .line 37
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method public static h(Ljava/io/File;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 5
    array-length v1, v0

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 6
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 7
    aget-object v2, v0, v1

    invoke-static {v2}, Lk0/pt;->h(Ljava/io/File;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 9
    :cond_3
    :goto_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_4
    :goto_2
    return-void
.end method

.method public static i(Ljava/io/File;)J
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v0, p0

    .line 4
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    move-wide v1, v0

    goto :goto_4

    :catchall_0
    move-exception p0

    move-object v0, v3

    goto :goto_2

    :catch_1
    move-exception p0

    move-object v0, v3

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    .line 6
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 7
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 9
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :catch_4
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 11
    :goto_3
    throw p0

    :cond_0
    const-string p0, "xx5"

    const-string v0, "File not exists!"

    .line 12
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-wide v1
.end method

.method public static j(Ljava/io/File;)J
    .locals 5

    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    return-wide v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2
    invoke-static {p0}, Lk0/pt;->i(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0

    .line 3
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    const/4 v2, 0x0

    .line 4
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_3

    .line 5
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6
    aget-object v3, p0, v2

    invoke-static {v3}, Lk0/pt;->j(Ljava/io/File;)J

    move-result-wide v3

    goto :goto_1

    .line 7
    :cond_2
    aget-object v3, p0, v2

    invoke-static {v3}, Lk0/pt;->i(Ljava/io/File;)J

    move-result-wide v3

    :goto_1
    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-wide v0
.end method

.method public static k(Ljava/io/File;)J
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const-wide/16 v3, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    return-wide v3

    .line 3
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    .line 4
    :goto_0
    array-length v5, p0

    if-ge v0, v5, :cond_3

    .line 5
    aget-object v5, p0, v0

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 6
    aget-object v5, p0, v0

    invoke-static {v5}, Lk0/pt;->k(Ljava/io/File;)J

    move-result-wide v5

    add-long/2addr v1, v5

    goto :goto_1

    :cond_2
    add-long/2addr v1, v3

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-wide v1
.end method

.method public static l()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, La/f;->d()Landroid/app/ActivityManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static m()Ljava/lang/String;
    .locals 9

    const-string v0, ":"

    const-string v1, "-"

    const-string v2, "%02d"

    .line 1
    :try_start_0
    invoke-static {}, Lcom/syu/jni/ControlNative;->getInstance()Lcom/syu/jni/ControlNative;

    move-result-object v3

    invoke-virtual {v3}, Lcom/syu/jni/ControlNative;->fyt_get_ui_time()[B

    move-result-object v3

    .line 2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x5

    aget-byte v5, v3, v5

    add-int/lit16 v5, v5, 0x76c

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x4

    aget-byte v7, v3, v7

    .line 3
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v5, [Ljava/lang/Object;

    const/4 v6, 0x3

    aget-byte v6, v3, v6

    .line 4
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v1, v8

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v5, [Ljava/lang/Object;

    const/4 v6, 0x2

    aget-byte v6, v3, v6

    .line 5
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v1, v8

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v5, [Ljava/lang/Object;

    aget-byte v6, v3, v5

    .line 6
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v1, v8

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v5, [Ljava/lang/Object;

    aget-byte v1, v3, v8

    .line 7
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v0, v8

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public static n()V
    .locals 9

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, La/f;->x()Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v1

    .line 2
    invoke-static {}, La/f;->x()Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 4
    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v3, v0

    :goto_0
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/16 v5, 0x64

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    .line 5
    iget v6, v4, Landroid/net/wifi/ScanResult;->level:I

    add-int/2addr v6, v5

    if-ge v3, v6, :cond_0

    move v3, v6

    :cond_0
    const-string v5, "wifi"

    .line 6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "levelMax = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "   scanResult.level = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v4, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "  level= "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :cond_1
    if-le v3, v5, :cond_2

    move v3, v5

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    move v3, v0

    goto :goto_1

    :catch_2
    move-exception v1

    move v2, v0

    move v3, v2

    .line 7
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_2
    xor-int/lit16 v1, v2, 0xee

    xor-int/2addr v1, v3

    const/16 v4, 0x9

    new-array v4, v4, [I

    const/16 v5, 0xe3

    aput v5, v4, v0

    const/4 v0, 0x1

    const/16 v5, 0x55

    aput v5, v4, v0

    const/4 v0, 0x2

    const/16 v5, 0xaa

    aput v5, v4, v0

    const/4 v0, 0x3

    const/4 v5, 0x5

    aput v5, v4, v0

    const/16 v0, 0x45

    const/4 v6, 0x4

    aput v0, v4, v6

    aput v6, v4, v5

    const/4 v0, 0x6

    aput v2, v4, v0

    const/4 v0, 0x7

    aput v3, v4, v0

    const/16 v0, 0x8

    aput v1, v4, v0

    .line 8
    invoke-static {v4}, Lz/k;->s([I)V

    return-void
.end method

.method public static o([BII)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 1
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v3

    const-string v4, " *** HJ_AutoTest ** "

    invoke-virtual {v3, v4, v0, v1, v2}, Ln1/b;->x(Ljava/lang/String;[BII)V

    add-int/lit8 v3, v1, 0x1

    .line 2
    aget-byte v4, v0, v3

    const/16 v5, 0xff

    const/4 v6, 0x0

    const/16 v7, 0x42

    if-ne v4, v7, :cond_0

    sget v4, Lk0/pt;->c:I

    if-ne v4, v5, :cond_0

    .line 3
    invoke-static {}, Lh0/b;->R()V

    .line 4
    sput v6, Lk0/pt;->c:I

    goto :goto_0

    .line 5
    :cond_0
    sput v5, Lk0/pt;->c:I

    .line 6
    :goto_0
    aget-byte v3, v0, v3

    const/16 v4, 0x48

    const/16 v7, 0xe3

    const/4 v9, 0x5

    const/4 v10, 0x7

    const/4 v12, 0x4

    const/4 v13, 0x3

    const/4 v14, 0x2

    const/4 v15, 0x1

    if-eq v3, v4, :cond_55

    const/16 v4, 0x57

    if-eq v3, v4, :cond_4f

    const/16 v4, 0x59

    if-eq v3, v4, :cond_4d

    const/16 v4, 0x60

    if-eq v3, v4, :cond_4c

    const/16 v4, 0x61

    const/16 v16, 0xaa

    const/16 v17, 0x55

    const/16 v8, 0x9

    const/16 v11, 0x8

    if-eq v3, v4, :cond_4b

    const-string v4, ","

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    goto/16 :goto_21

    :pswitch_0
    add-int/lit8 v2, v1, 0x2

    .line 7
    aget-byte v2, v0, v2

    add-int/2addr v1, v13

    .line 8
    aget-byte v0, v0, v1

    .line 9
    sput v0, Lk0/pt;->f:I

    .line 10
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    new-instance v1, Lk0/pt$e;

    invoke-direct {v1}, Lk0/pt$e;-><init>()V

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v1, v2, v3}, Lo1/j;->b(Landroid/os/Handler;Ljava/lang/Runnable;J)V

    goto/16 :goto_21

    :pswitch_1
    add-int/lit8 v2, v1, 0x2

    .line 11
    aget-byte v2, v0, v2

    add-int/2addr v1, v13

    .line 12
    aget-byte v0, v0, v1

    and-int/2addr v0, v5

    if-nez v0, :cond_5b

    .line 13
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    const-string v1, "com.baidu.carlifevehicle"

    invoke-static {v0, v1}, Lk0/pt;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    invoke-static {}, Lk0/pt;->l()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.baidu.carlifevehicle.CarlifeActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    .line 15
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.baidu.carlifevehicle"

    const-string v2, "com.baidu.carlifevehicle.CarlifeActivity"

    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    .line 17
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 18
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 19
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_21

    .line 20
    :cond_1
    invoke-static {}, Lk0/pt;->l()Ljava/lang/String;

    move-result-object v0

    const-string v1, "net.easyconn.WelcomeActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    .line 21
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "net.easyconn"

    const-string v2, "net.easyconn.WelcomeActivity"

    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    .line 23
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 24
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 25
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_21

    :pswitch_2
    add-int/2addr v1, v13

    .line 26
    aget-byte v0, v0, v1

    sput v0, Lk0/pt;->g:I

    .line 27
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    new-instance v1, Lk0/pt$d;

    invoke-direct {v1}, Lk0/pt$d;-><init>()V

    const-wide/16 v2, 0x1f4

    invoke-static {v0, v1, v2, v3}, Lo1/j;->b(Landroid/os/Handler;Ljava/lang/Runnable;J)V

    goto/16 :goto_21

    :pswitch_3
    add-int/2addr v1, v14

    .line 28
    aget-byte v0, v0, v1

    if-nez v0, :cond_5b

    .line 29
    invoke-static {}, Lo1/u;->a1()V

    const/16 v0, 0x51

    .line 30
    invoke-static {v0, v6, v6}, Lk0/pt;->a(III)V

    goto/16 :goto_21

    :pswitch_4
    add-int/2addr v1, v14

    .line 31
    aget-byte v0, v0, v1

    if-nez v0, :cond_5b

    const/16 v0, 0x50

    .line 32
    invoke-static {v0, v6, v6}, Lk0/pt;->a(III)V

    new-array v0, v13, [I

    .line 33
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    .line 34
    sget v0, Lu0/b;->w:I

    if-nez v0, :cond_2

    .line 35
    sget v0, Lu0/b;->T2:I

    invoke-static {v0}, Lu0/d;->Q(I)V

    goto :goto_1

    .line 36
    :cond_2
    sget v0, Lu0/b;->U2:I

    invoke-static {v0}, Lu0/d;->Q(I)V

    .line 37
    :goto_1
    sget-object v0, Lh0/c;->c:Ly/g;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v6}, Ly/g;->L2(II)V

    goto/16 :goto_21

    :pswitch_5
    add-int/lit8 v2, v1, 0x2

    .line 38
    aget-byte v2, v0, v2

    add-int/lit8 v3, v1, 0x3

    .line 39
    aget-byte v3, v0, v3

    add-int/lit8 v4, v1, 0x4

    .line 40
    aget-byte v4, v0, v4

    add-int/lit8 v4, v1, 0x5

    .line 41
    aget-byte v4, v0, v4

    add-int/lit8 v4, v1, 0x6

    .line 42
    aget-byte v4, v0, v4

    add-int/2addr v1, v10

    .line 43
    aget-byte v0, v0, v1

    const/16 v0, 0x46

    if-eq v2, v15, :cond_11

    if-eq v2, v14, :cond_10

    if-eq v2, v13, :cond_8

    if-eq v2, v12, :cond_6

    if-eq v2, v9, :cond_5

    if-eq v2, v8, :cond_3

    goto/16 :goto_21

    :cond_3
    if-ne v3, v15, :cond_5b

    .line 44
    sget v1, Lu0/b;->o:I

    if-ne v1, v15, :cond_4

    .line 45
    invoke-static {}, Lo1/q0;->J()I

    move-result v1

    goto :goto_2

    :cond_4
    move v1, v6

    .line 46
    :goto_2
    sget v2, Lu0/b;->o:I

    xor-int/lit16 v3, v2, 0xe0

    xor-int/2addr v3, v1

    new-array v4, v8, [I

    aput v7, v4, v6

    aput v17, v4, v15

    aput v16, v4, v14

    aput v9, v4, v13

    aput v0, v4, v12

    aput v8, v4, v9

    const/4 v5, 0x6

    aput v2, v4, v5

    aput v1, v4, v10

    aput v3, v4, v11

    .line 47
    invoke-static {v4}, Lz/k;->s([I)V

    goto/16 :goto_21

    :cond_5
    const-string v0, "media://media?data=70,5"

    .line 48
    invoke-static {v0}, Lk0/pt;->d(Ljava/lang/String;)V

    goto/16 :goto_21

    :cond_6
    if-nez v3, :cond_5b

    .line 49
    sget v1, Lw0/d;->h:I

    const/high16 v2, 0x10000

    if-le v1, v2, :cond_7

    const/high16 v2, 0x10000

    sub-int/2addr v1, v2

    add-int/2addr v1, v13

    :cond_7
    xor-int/lit16 v2, v1, 0xee

    .line 50
    sget v3, Lw0/d;->i:I

    and-int/lit16 v4, v3, 0xff

    xor-int/2addr v2, v4

    shr-int/lit8 v4, v3, 0x8

    xor-int/2addr v2, v4

    const/16 v4, 0xa

    new-array v4, v4, [I

    aput v7, v4, v6

    aput v17, v4, v15

    aput v16, v4, v14

    const/4 v5, 0x6

    aput v5, v4, v13

    aput v0, v4, v12

    aput v12, v4, v9

    aput v1, v4, v5

    and-int/lit16 v0, v3, 0xff

    aput v0, v4, v10

    shr-int/lit8 v0, v3, 0x8

    aput v0, v4, v11

    aput v2, v4, v8

    .line 51
    invoke-static {v4}, Lz/k;->s([I)V

    goto/16 :goto_21

    :cond_8
    if-nez v3, :cond_5b

    const/4 v1, -0x1

    .line 52
    sget v2, Lu0/b;->O:I

    const/16 v3, 0x10

    if-eq v2, v3, :cond_e

    const/16 v3, 0x12

    if-eq v2, v3, :cond_f

    const/16 v3, 0x15

    if-eq v2, v3, :cond_d

    const/16 v3, 0x17

    if-eq v2, v3, :cond_c

    const/16 v3, 0x28

    if-eq v2, v3, :cond_b

    const/16 v3, 0x19

    if-eq v2, v3, :cond_a

    const/16 v3, 0x1a

    if-eq v2, v3, :cond_9

    move v6, v1

    goto :goto_3

    :cond_9
    move v6, v8

    goto :goto_3

    :cond_a
    const/4 v6, 0x6

    goto :goto_3

    :cond_b
    const/16 v6, 0xf

    goto :goto_3

    :cond_c
    move v6, v10

    goto :goto_3

    :cond_d
    move v6, v12

    goto :goto_3

    :cond_e
    move v6, v14

    .line 53
    :cond_f
    :goto_3
    invoke-static {v0, v13, v6}, Lk0/pt;->a(III)V

    goto/16 :goto_21

    .line 54
    :cond_10
    sget v1, Ly0/f;->c:I

    invoke-static {v0, v14, v1}, Lk0/pt;->a(III)V

    goto/16 :goto_21

    :cond_11
    if-eq v3, v15, :cond_17

    if-eq v3, v14, :cond_16

    if-eq v3, v13, :cond_15

    if-eq v3, v9, :cond_14

    const/4 v1, 0x6

    if-eq v3, v1, :cond_13

    if-eq v3, v11, :cond_12

    goto/16 :goto_21

    :cond_12
    const-string v1, "persist.fyt.softwareversion"

    .line 55
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-static {v0, v15, v1}, Lk0/pt;->b(IILjava/lang/String;)V

    goto/16 :goto_21

    .line 57
    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APP 1024x768 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lk0/pt;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-static {v0, v15, v1}, Lk0/pt;->b(IILjava/lang/String;)V

    goto/16 :goto_21

    .line 59
    :cond_14
    sget-object v1, Lh0/c;->w:Ljava/lang/String;

    invoke-static {v0, v15, v1}, Lk0/pt;->b(IILjava/lang/String;)V

    goto/16 :goto_21

    :cond_15
    const-string v1, "android8.1.0"

    .line 60
    invoke-static {v0, v15, v1}, Lk0/pt;->b(IILjava/lang/String;)V

    goto/16 :goto_21

    :cond_16
    const-string v1, "persist.fyt.hardwareversion"

    .line 61
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-static {v0, v15, v1}, Lk0/pt;->b(IILjava/lang/String;)V

    goto/16 :goto_21

    .line 63
    :cond_17
    sget-object v1, Lu0/b;->F1:Ljava/lang/String;

    invoke-static {v0, v15, v1}, Lk0/pt;->b(IILjava/lang/String;)V

    goto/16 :goto_21

    :pswitch_6
    add-int/lit8 v2, v1, 0x2

    .line 64
    aget-byte v2, v0, v2

    add-int/lit8 v3, v1, 0x3

    .line 65
    aget-byte v3, v0, v3

    if-eq v2, v15, :cond_23

    if-eq v2, v14, :cond_1f

    if-eq v2, v13, :cond_1c

    if-eq v2, v12, :cond_1b

    const/4 v4, 0x6

    if-eq v2, v4, :cond_1a

    if-eq v2, v10, :cond_18

    goto/16 :goto_21

    .line 66
    :cond_18
    invoke-static {}, La/f;->x()Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_19

    const/16 v1, 0x45

    .line 67
    invoke-static {v1, v10, v15}, Lk0/pt;->a(III)V

    goto/16 :goto_21

    :cond_19
    const/16 v1, 0x45

    .line 68
    invoke-static {v1, v10, v6}, Lk0/pt;->a(III)V

    goto/16 :goto_21

    :cond_1a
    new-array v2, v8, [B

    new-array v3, v11, [B

    add-int/lit8 v4, v1, 0x4

    .line 69
    invoke-static {v0, v4, v2, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0xd

    .line 70
    invoke-static {v0, v1, v3, v6, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "ascii"

    invoke-direct {v0, v2, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 72
    new-instance v1, Ljava/lang/String;

    const-string v2, "ascii"

    invoke-direct {v1, v3, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 73
    invoke-static {v0, v1}, Lk0/pt;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 74
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_4
    const/16 v1, 0x45

    const/4 v2, 0x6

    .line 75
    invoke-static {v1, v2, v15}, Lk0/pt;->a(III)V

    goto/16 :goto_21

    :cond_1b
    if-nez v3, :cond_5b

    .line 76
    invoke-static {}, Lk0/pt;->n()V

    goto/16 :goto_21

    :cond_1c
    if-nez v3, :cond_1d

    .line 77
    invoke-static {}, La/f;->x()Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 78
    invoke-static {}, La/f;->x()Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_5

    .line 79
    :cond_1d
    invoke-static {}, La/f;->x()Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 80
    invoke-static {}, La/f;->x()Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_1e
    :goto_5
    const/16 v1, 0x45

    .line 81
    invoke-static {v1, v13, v15}, Lk0/pt;->a(III)V

    goto/16 :goto_21

    :cond_1f
    if-eq v3, v15, :cond_22

    if-eq v3, v14, :cond_21

    if-eq v3, v13, :cond_20

    :goto_6
    const/16 v1, 0x45

    goto :goto_7

    :cond_20
    const/4 v0, -0x2

    .line 82
    invoke-static {v0}, Ly0/h;->u0(I)V

    goto :goto_6

    :cond_21
    const/4 v0, -0x1

    .line 83
    invoke-static {v0}, Ly0/h;->u0(I)V

    goto :goto_6

    :cond_22
    const/4 v0, -0x5

    .line 84
    invoke-static {v0}, Ly0/h;->u0(I)V

    goto :goto_6

    .line 85
    :goto_7
    invoke-static {v1, v14, v3}, Lk0/pt;->a(III)V

    goto/16 :goto_21

    :cond_23
    if-eq v3, v15, :cond_25

    if-eq v3, v14, :cond_24

    goto :goto_8

    .line 86
    :cond_24
    invoke-static {v6}, Lu0/d;->U1(I)V

    goto :goto_8

    .line 87
    :cond_25
    invoke-static {v15}, Lu0/d;->U1(I)V

    .line 88
    :goto_8
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object v0

    new-instance v1, Lk0/pt$b;

    invoke-direct {v1}, Lk0/pt$b;-><init>()V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_21

    :pswitch_7
    add-int/lit8 v2, v1, 0x2

    .line 89
    aget-byte v2, v0, v2

    add-int/lit8 v3, v1, 0x3

    .line 90
    aget-byte v3, v0, v3

    add-int/lit8 v4, v1, 0x4

    .line 91
    aget-byte v4, v0, v4

    add-int/lit8 v18, v1, 0x5

    .line 92
    aget-byte v18, v0, v18

    add-int/lit8 v18, v1, 0x6

    .line 93
    aget-byte v18, v0, v18

    add-int/2addr v1, v10

    .line 94
    aget-byte v0, v0, v1

    if-eq v2, v15, :cond_2e

    if-eq v2, v14, :cond_2e

    if-eq v2, v13, :cond_29

    if-eq v2, v12, :cond_27

    const/4 v1, 0x6

    if-eq v2, v1, :cond_26

    goto/16 :goto_21

    :cond_26
    const/16 v0, 0xc

    new-array v0, v0, [I

    .line 95
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_21

    :cond_27
    const/16 v0, 0x24

    if-gt v3, v0, :cond_28

    .line 96
    sput v3, Lk0/pt;->b:I

    .line 97
    :try_start_1
    invoke-static {v3}, Ly0/h;->u0(I)V

    const/16 v0, 0x44

    .line 98
    invoke-static {v0, v12, v3}, Lk0/pt;->a(III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 99
    :catch_1
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object v0

    new-instance v1, Lk0/pt$a;

    invoke-direct {v1}, Lk0/pt$a;-><init>()V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_21

    :cond_28
    const/16 v0, 0x44

    .line 100
    invoke-static {v0, v12, v5}, Lk0/pt;->a(III)V

    goto/16 :goto_21

    :cond_29
    if-ne v3, v15, :cond_2a

    const/4 v0, -0x3

    .line 101
    invoke-static {v0}, Ly0/h;->u0(I)V

    goto :goto_9

    :cond_2a
    if-nez v3, :cond_2b

    const/4 v0, -0x4

    .line 102
    invoke-static {v0}, Ly0/h;->u0(I)V

    :cond_2b
    :goto_9
    if-eq v3, v15, :cond_2d

    if-nez v3, :cond_2c

    goto :goto_a

    :cond_2c
    const/16 v0, 0x44

    .line 103
    invoke-static {v0, v13, v5}, Lk0/pt;->a(III)V

    goto/16 :goto_21

    .line 104
    :cond_2d
    :goto_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  00 *** autotest Mute postDelayed 1000 B1  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Ly0/f;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x44

    .line 105
    sget v1, Ly0/f;->i:I

    invoke-static {v0, v13, v1}, Lk0/pt;->a(III)V

    goto/16 :goto_21

    :cond_2e
    if-ne v2, v15, :cond_30

    const/16 v0, 0xe

    if-ne v4, v0, :cond_2f

    const/16 v0, 0xa

    goto :goto_b

    :cond_2f
    const/16 v0, 0x1d

    if-ne v4, v0, :cond_32

    const/16 v0, 0x14

    goto :goto_b

    :cond_30
    if-ne v2, v14, :cond_32

    const/16 v0, 0x14

    if-ne v4, v0, :cond_31

    move v0, v11

    goto :goto_b

    :cond_31
    const/16 v0, 0x28

    if-ne v4, v0, :cond_32

    const/16 v0, 0x10

    goto :goto_b

    :cond_32
    move v0, v4

    :goto_b
    xor-int/lit16 v1, v2, 0xeb

    xor-int/2addr v1, v3

    xor-int/2addr v1, v0

    new-array v4, v8, [I

    aput v7, v4, v6

    aput v17, v4, v15

    aput v16, v4, v14

    aput v9, v4, v13

    const/16 v5, 0x44

    aput v5, v4, v12

    aput v2, v4, v9

    const/4 v2, 0x6

    aput v3, v4, v2

    aput v0, v4, v10

    aput v1, v4, v11

    .line 106
    invoke-static {v4}, Lz/k;->s([I)V

    goto/16 :goto_21

    :pswitch_8
    add-int/lit8 v2, v1, 0x2

    .line 107
    aget-byte v2, v0, v2

    add-int/lit8 v3, v1, 0x3

    .line 108
    aget-byte v3, v0, v3

    add-int/lit8 v4, v1, 0x4

    .line 109
    aget-byte v4, v0, v4

    add-int/lit8 v4, v1, 0x5

    .line 110
    aget-byte v4, v0, v4

    add-int/lit8 v4, v1, 0x6

    .line 111
    aget-byte v4, v0, v4

    add-int/lit8 v4, v1, 0x7

    .line 112
    aget-byte v4, v0, v4

    add-int/lit8 v4, v1, 0x8

    .line 113
    aget-byte v4, v0, v4

    add-int/2addr v1, v8

    .line 114
    aget-byte v0, v0, v1

    if-eq v2, v15, :cond_3b

    if-eq v2, v14, :cond_35

    if-eq v2, v13, :cond_33

    goto/16 :goto_21

    :cond_33
    if-nez v3, :cond_34

    goto/16 :goto_21

    :cond_34
    if-ne v3, v15, :cond_5b

    .line 115
    invoke-static {}, Lo1/u;->t0()V

    const/16 v0, 0x43

    .line 116
    invoke-static {v0, v13, v15}, Lk0/pt;->a(III)V

    goto/16 :goto_21

    :cond_35
    const/16 v0, 0x1f

    new-array v1, v0, [I

    aput v7, v1, v6

    aput v17, v1, v15

    aput v16, v1, v14

    const/16 v2, 0x1b

    aput v2, v1, v13

    const/16 v2, 0x43

    aput v2, v1, v12

    aput v14, v1, v9

    const/16 v2, 0x18

    new-array v2, v2, [I

    move v3, v6

    move v4, v3

    :goto_c
    const/16 v5, 0x14

    if-ge v3, v5, :cond_37

    const/16 v5, 0xc

    if-ge v4, v5, :cond_37

    .line 117
    sget-object v5, Lu0/b;->T1:[I

    mul-int/lit8 v7, v3, 0x2

    aget v8, v5, v7

    if-lez v8, :cond_36

    add-int/lit8 v8, v7, 0x1

    aget v9, v5, v8

    if-lez v9, :cond_36

    mul-int/lit8 v9, v4, 0x2

    .line 118
    aget v7, v5, v7

    aput v7, v2, v9

    add-int/2addr v9, v15

    .line 119
    aget v5, v5, v8

    aput v5, v2, v9

    add-int/lit8 v4, v4, 0x1

    :cond_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_37
    move v3, v6

    :goto_d
    const/16 v4, 0xc

    if-ge v3, v4, :cond_39

    .line 120
    sget v4, Lu0/b;->R1:I

    if-lez v4, :cond_38

    mul-int/lit8 v4, v3, 0x2

    add-int/lit8 v5, v4, 0x6

    add-int/lit8 v7, v3, 0x1

    .line 121
    aput v7, v1, v5

    add-int/lit8 v5, v4, 0x7

    add-int/2addr v4, v15

    .line 122
    aget v4, v2, v4

    aput v4, v1, v5

    goto :goto_e

    :cond_38
    mul-int/lit8 v4, v3, 0x2

    add-int/lit8 v5, v4, 0x6

    .line 123
    aput v6, v1, v5

    add-int/2addr v4, v10

    .line 124
    aput v6, v1, v4

    :goto_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_39
    move v2, v6

    :goto_f
    const/16 v3, 0x1e

    if-ge v14, v3, :cond_3a

    .line 125
    aget v3, v1, v14

    xor-int/2addr v2, v3

    add-int/lit8 v14, v14, 0x1

    goto :goto_f

    :cond_3a
    const/16 v3, 0x1e

    aput v2, v1, v3

    .line 126
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Gps Star  sGpsStarNo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lu0/b;->Y1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v6, v0}, Ln1/b;->y(Ljava/lang/String;[III)V

    .line 127
    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_21

    :cond_3b
    const/16 v0, 0x39

    new-array v0, v0, [I

    aput v7, v0, v6

    aput v17, v0, v15

    aput v16, v0, v14

    const/16 v1, 0x35

    aput v1, v0, v13

    const/16 v1, 0x43

    aput v1, v0, v12

    aput v15, v0, v9

    .line 128
    sget v1, Lu0/b;->R1:I

    if-lez v1, :cond_41

    .line 129
    sget-object v1, Lu0/b;->O1:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x30

    const/16 v3, 0x20

    const/16 v4, 0xc

    if-lt v1, v4, :cond_3c

    .line 130
    sget-object v1, Lu0/b;->O1:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v4, 0x6

    aput v1, v0, v4

    .line 131
    sget-object v1, Lu0/b;->O1:Ljava/lang/String;

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aput v1, v0, v10

    .line 132
    sget-object v1, Lu0/b;->O1:Ljava/lang/String;

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aput v1, v0, v11

    .line 133
    sget-object v1, Lu0/b;->O1:Ljava/lang/String;

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aput v1, v0, v8

    .line 134
    sget-object v1, Lu0/b;->O1:Ljava/lang/String;

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0xa

    aput v1, v0, v4

    const/16 v1, 0xb

    .line 135
    sget-object v5, Lu0/b;->O1:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput v5, v0, v1

    .line 136
    sget-object v1, Lu0/b;->O1:Ljava/lang/String;

    const/4 v5, 0x6

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sub-int/2addr v1, v2

    mul-int/2addr v1, v4

    sget-object v4, Lu0/b;->O1:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sub-int/2addr v4, v2

    add-int/2addr v1, v4

    add-int/2addr v1, v11

    .line 137
    rem-int/lit8 v1, v1, 0x18

    .line 138
    div-int/lit8 v4, v1, 0xa

    add-int/2addr v4, v2

    const/16 v5, 0xc

    aput v4, v0, v5

    const/16 v4, 0xd

    const/16 v5, 0xa

    .line 139
    rem-int/2addr v1, v5

    add-int/2addr v1, v2

    aput v1, v0, v4

    const/16 v1, 0xe

    .line 140
    sget-object v4, Lu0/b;->O1:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput v4, v0, v1

    const/16 v1, 0xf

    .line 141
    sget-object v4, Lu0/b;->O1:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput v4, v0, v1

    const/16 v1, 0x10

    .line 142
    sget-object v4, Lu0/b;->O1:Ljava/lang/String;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput v4, v0, v1

    const/16 v1, 0x11

    .line 143
    sget-object v4, Lu0/b;->O1:Ljava/lang/String;

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput v4, v0, v1

    goto :goto_10

    :cond_3c
    const/4 v1, 0x6

    aput v3, v0, v1

    aput v3, v0, v10

    aput v3, v0, v11

    aput v3, v0, v8

    const/16 v1, 0xa

    aput v3, v0, v1

    const/16 v1, 0xb

    aput v3, v0, v1

    const/16 v1, 0xc

    aput v3, v0, v1

    const/16 v1, 0xd

    aput v3, v0, v1

    const/16 v1, 0xe

    aput v3, v0, v1

    const/16 v1, 0xf

    aput v3, v0, v1

    const/16 v1, 0x10

    aput v3, v0, v1

    const/16 v1, 0x11

    aput v3, v0, v1

    :goto_10
    const/16 v1, 0x12

    aput v15, v0, v1

    .line 144
    sget-object v1, Lu0/b;->M1:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v4, 0x2e

    if-lt v1, v11, :cond_3d

    const/16 v1, 0x13

    aput v2, v0, v1

    const/16 v1, 0x14

    aput v2, v0, v1

    const/16 v1, 0x15

    .line 145
    sget-object v5, Lu0/b;->M1:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput v5, v0, v1

    const/16 v1, 0x16

    .line 146
    sget-object v5, Lu0/b;->M1:Ljava/lang/String;

    invoke-virtual {v5, v15}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput v5, v0, v1

    const/16 v1, 0x17

    aput v4, v0, v1

    const/16 v1, 0x18

    .line 147
    sget-object v5, Lu0/b;->M1:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput v5, v0, v1

    const/16 v1, 0x19

    .line 148
    sget-object v5, Lu0/b;->M1:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput v5, v0, v1

    const/16 v1, 0x1a

    .line 149
    sget-object v5, Lu0/b;->M1:Ljava/lang/String;

    const/4 v7, 0x6

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput v5, v0, v1

    const/16 v1, 0x1b

    .line 150
    sget-object v5, Lu0/b;->M1:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput v5, v0, v1

    goto :goto_11

    :cond_3d
    const/16 v1, 0x13

    aput v3, v0, v1

    const/16 v1, 0x14

    aput v3, v0, v1

    const/16 v1, 0x15

    aput v3, v0, v1

    const/16 v1, 0x16

    aput v3, v0, v1

    const/16 v1, 0x17

    aput v3, v0, v1

    const/16 v1, 0x18

    aput v3, v0, v1

    const/16 v1, 0x19

    aput v3, v0, v1

    const/16 v1, 0x1a

    aput v3, v0, v1

    const/16 v1, 0x1b

    aput v3, v0, v1

    :goto_11
    const/16 v1, 0x1c

    const/16 v5, 0x4e

    aput v5, v0, v1

    .line 151
    sget-object v1, Lu0/b;->N1:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v8, :cond_3e

    const/16 v1, 0x1d

    aput v2, v0, v1

    const/16 v1, 0x1e

    aput v2, v0, v1

    const/16 v1, 0x1f

    .line 152
    sget-object v5, Lu0/b;->N1:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput v5, v0, v1

    .line 153
    sget-object v1, Lu0/b;->N1:Ljava/lang/String;

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aput v1, v0, v3

    const/16 v1, 0x21

    .line 154
    sget-object v3, Lu0/b;->N1:Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput v3, v0, v1

    const/16 v1, 0x22

    aput v4, v0, v1

    const/16 v1, 0x23

    .line 155
    sget-object v3, Lu0/b;->N1:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput v3, v0, v1

    const/16 v1, 0x24

    .line 156
    sget-object v3, Lu0/b;->N1:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput v3, v0, v1

    const/16 v1, 0x25

    .line 157
    sget-object v3, Lu0/b;->N1:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput v3, v0, v1

    const/16 v1, 0x26

    .line 158
    sget-object v3, Lu0/b;->N1:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput v3, v0, v1

    goto :goto_12

    :cond_3e
    const/16 v1, 0x1d

    aput v3, v0, v1

    const/16 v1, 0x1e

    aput v3, v0, v1

    const/16 v1, 0x1f

    aput v3, v0, v1

    aput v3, v0, v3

    const/16 v1, 0x21

    aput v3, v0, v1

    const/16 v1, 0x22

    aput v3, v0, v1

    const/16 v1, 0x23

    aput v3, v0, v1

    const/16 v1, 0x24

    aput v3, v0, v1

    const/16 v1, 0x25

    aput v3, v0, v1

    const/16 v1, 0x26

    aput v3, v0, v1

    :goto_12
    const/16 v1, 0x27

    const/16 v3, 0x45

    aput v3, v0, v1

    const/16 v1, 0x28

    aput v2, v0, v1

    const/16 v1, 0x29

    aput v2, v0, v1

    const/16 v1, 0x2a

    aput v4, v0, v1

    const/16 v1, 0x2b

    aput v2, v0, v1

    const/16 v1, 0x2c

    aput v2, v0, v1

    .line 159
    sget v1, Lu0/b;->Q1:I

    if-lez v1, :cond_3f

    const/16 v3, 0x2d

    .line 160
    rem-int/lit16 v5, v1, 0x2710

    div-int/lit16 v5, v5, 0x3e8

    aput v5, v0, v3

    .line 161
    rem-int/lit16 v3, v1, 0x3e8

    div-int/lit8 v3, v3, 0x64

    aput v3, v0, v4

    const/16 v3, 0x2f

    aput v4, v0, v3

    .line 162
    rem-int/lit8 v3, v1, 0x64

    const/16 v4, 0xa

    div-int/2addr v3, v4

    aput v3, v0, v2

    const/16 v3, 0x31

    .line 163
    rem-int/2addr v1, v4

    aput v1, v0, v3

    goto :goto_13

    :cond_3f
    const/16 v1, 0x2d

    aput v2, v0, v1

    aput v2, v0, v4

    const/16 v1, 0x2f

    aput v4, v0, v1

    aput v2, v0, v2

    const/16 v1, 0x31

    aput v2, v0, v1

    .line 164
    :goto_13
    sget v1, Lu0/b;->R1:I

    if-lez v1, :cond_40

    const/16 v2, 0x32

    .line 165
    div-int/lit16 v3, v1, 0x2710

    aput v3, v0, v2

    const/16 v2, 0x33

    .line 166
    rem-int/lit16 v3, v1, 0x2710

    div-int/lit16 v3, v3, 0x3e8

    aput v3, v0, v2

    const/16 v2, 0x34

    .line 167
    rem-int/lit16 v3, v1, 0x3e8

    div-int/lit8 v3, v3, 0x64

    aput v3, v0, v2

    const/16 v2, 0x35

    .line 168
    rem-int/lit8 v3, v1, 0x64

    const/16 v4, 0xa

    div-int/2addr v3, v4

    aput v3, v0, v2

    const/16 v2, 0x36

    .line 169
    rem-int/2addr v1, v4

    aput v1, v0, v2

    goto :goto_14

    :cond_40
    const/16 v1, 0x32

    aput v2, v0, v1

    const/16 v1, 0x33

    aput v2, v0, v1

    const/16 v1, 0x34

    aput v2, v0, v1

    const/16 v1, 0x35

    aput v2, v0, v1

    const/16 v1, 0x36

    aput v2, v0, v1

    :goto_14
    const/16 v1, 0x37

    .line 170
    sget v2, Lu0/b;->Y1:I

    aput v2, v0, v1

    goto :goto_16

    :cond_41
    const/4 v11, 0x6

    :goto_15
    const/16 v1, 0x38

    if-ge v11, v1, :cond_42

    .line 171
    aput v6, v0, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_15

    :cond_42
    :goto_16
    const/16 v1, 0x38

    if-ge v14, v1, :cond_43

    .line 172
    aget v1, v0, v14

    xor-int/2addr v6, v1

    add-int/lit8 v14, v14, 0x1

    goto :goto_16

    :cond_43
    const/16 v1, 0x38

    aput v6, v0, v1

    .line 173
    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_21

    .line 174
    :pswitch_9
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v3

    const-string v5, " ** BT ** "

    invoke-virtual {v3, v5, v0, v1, v2}, Ln1/b;->x(Ljava/lang/String;[BII)V

    add-int/lit8 v2, v1, 0x2

    .line 175
    aget-byte v2, v0, v2

    add-int/lit8 v3, v1, 0x3

    .line 176
    aget-byte v3, v0, v3

    const/4 v5, 0x0

    if-ne v2, v14, :cond_44

    if-ne v3, v14, :cond_44

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "media://media?data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-static {v0}, Lk0/pt;->d(Ljava/lang/String;)V

    new-array v0, v11, [I

    .line 179
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_21

    :cond_44
    packed-switch v2, :pswitch_data_2

    goto :goto_1a

    :pswitch_a
    const-string v5, ""

    :goto_17
    const/16 v6, 0xb

    if-gt v14, v6, :cond_45

    .line 180
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v5, v1, v14

    aget-byte v5, v0, v5

    int-to-char v5, v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v14, v14, 0x1

    goto :goto_17

    :pswitch_b
    const-string v5, ""

    const/16 v6, 0xc

    :goto_18
    if-gt v14, v6, :cond_45

    .line 181
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v5, v1, v14

    aget-byte v5, v0, v5

    int-to-char v5, v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v14, v14, 0x1

    goto :goto_18

    :pswitch_c
    const-string v5, ""

    :goto_19
    if-gt v14, v9, :cond_45

    .line 182
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v5, v1, v14

    aget-byte v5, v0, v5

    int-to-char v5, v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v14, v14, 0x1

    goto :goto_19

    :cond_45
    :pswitch_d
    move v6, v15

    :goto_1a
    if-eqz v6, :cond_5b

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bt://bt?data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    invoke-static {v0}, Lk0/pt;->d(Ljava/lang/String;)V

    goto/16 :goto_21

    :pswitch_e
    add-int/lit8 v2, v1, 0x2

    .line 185
    aget-byte v2, v0, v2

    add-int/lit8 v3, v1, 0x3

    .line 186
    aget-byte v3, v0, v3

    .line 187
    array-length v5, v0

    add-int/lit8 v7, v1, 0x4

    if-le v5, v7, :cond_46

    .line 188
    aget-byte v5, v0, v7

    goto :goto_1b

    :cond_46
    move v5, v6

    .line 189
    :goto_1b
    array-length v7, v0

    add-int/2addr v1, v9

    if-le v7, v1, :cond_47

    .line 190
    aget-byte v0, v0, v1

    goto :goto_1c

    :cond_47
    move v0, v6

    :goto_1c
    packed-switch v2, :pswitch_data_3

    goto/16 :goto_20

    :pswitch_f
    move v6, v15

    goto/16 :goto_20

    :pswitch_10
    packed-switch v3, :pswitch_data_4

    :pswitch_11
    goto/16 :goto_1e

    .line 191
    :pswitch_12
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v1

    const-string v7, "Main AutoTest 0x41 0x12 APP_ID_TV"

    invoke-virtual {v1, v7}, Ln1/b;->w(Ljava/lang/String;)V

    .line 192
    sget-object v1, Lu0/b;->c:Lu0/h;

    const/4 v7, 0x6

    invoke-interface {v1, v7}, Lu0/h;->c(I)V

    goto/16 :goto_1d

    .line 193
    :pswitch_13
    invoke-static {}, Lo1/u;->t0()V

    goto :goto_1d

    .line 194
    :pswitch_14
    invoke-static {}, Lo1/u;->a1()V

    goto :goto_1d

    .line 195
    :pswitch_15
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    const-string v7, "com.baidu.carlifevehicle"

    invoke-static {v1, v7}, Lk0/pt;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 196
    invoke-static {}, Lk0/pt;->l()Ljava/lang/String;

    move-result-object v1

    const-string v7, "com.baidu.carlifevehicle.CarlifeActivity"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    .line 197
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v7, "com.baidu.carlifevehicle"

    const-string v8, "com.baidu.carlifevehicle.CarlifeActivity"

    .line 198
    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "android.intent.category.DEFAULT"

    .line 199
    invoke-virtual {v1, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v7, 0x10000000

    .line 200
    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 201
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    goto :goto_1d

    .line 202
    :cond_48
    invoke-static {}, Lk0/pt;->l()Ljava/lang/String;

    move-result-object v1

    const-string v7, "net.easyconn.WelcomeActivity"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    .line 203
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v7, "net.easyconn"

    const-string v8, "net.easyconn.WelcomeActivity"

    .line 204
    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "android.intent.category.DEFAULT"

    .line 205
    invoke-virtual {v1, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v7, 0x10000000

    .line 206
    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 207
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    goto :goto_1d

    .line 208
    :pswitch_16
    invoke-static {}, Lo1/u;->s()V

    goto :goto_1d

    .line 209
    :pswitch_17
    invoke-static {}, Lo1/u;->Z0()I

    goto :goto_1d

    .line 210
    :pswitch_18
    invoke-static {}, Lo1/u;->j()I

    :cond_49
    :goto_1d
    move v1, v6

    move v6, v15

    goto :goto_1f

    :pswitch_19
    move v1, v15

    move v6, v1

    goto :goto_1f

    .line 211
    :pswitch_1a
    invoke-static {}, Lk0/pt;->l()Ljava/lang/String;

    move-result-object v1

    const-string v7, "com.syu.carinfo.wc.crown.Wc_420_crown_CarCD"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    .line 212
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v7, "com.syu.canbus"

    const-string v8, "com.syu.carinfo.wc.crown.Wc_420_crown_CarCD"

    .line 213
    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "android.intent.category.DEFAULT"

    .line 214
    invoke-virtual {v1, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v7, 0x10000000

    .line 215
    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 216
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    goto :goto_1d

    .line 217
    :pswitch_1b
    invoke-static {}, Lk0/pt;->l()Ljava/lang/String;

    move-result-object v1

    const-string v7, "com.syu.radio.MainActivity"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    .line 218
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v7, "com.syu.radio"

    const-string v8, "com.syu.radio.MainActivity"

    .line 219
    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "android.intent.category.DEFAULT"

    .line 220
    invoke-virtual {v1, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v7, 0x10000000

    .line 221
    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 222
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    goto :goto_1d

    :goto_1e
    move v1, v6

    :goto_1f
    if-eqz v6, :cond_4a

    const/16 v6, 0x41

    .line 223
    invoke-static {v6, v15, v3}, Lk0/pt;->a(III)V

    :cond_4a
    move v6, v1

    :goto_20
    if-eqz v6, :cond_5b

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "media://media?data="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 225
    invoke-static {v0}, Lk0/pt;->d(Ljava/lang/String;)V

    goto/16 :goto_21

    :cond_4b
    add-int/lit8 v2, v1, 0x2

    .line 226
    aget-byte v2, v0, v2

    add-int/2addr v1, v13

    .line 227
    aget-byte v0, v0, v1

    if-nez v2, :cond_5b

    .line 228
    new-instance v0, Ljava/io/File;

    const-string v1, "/mnt/sdcard/amapauto9"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 229
    invoke-static {v0}, Lk0/pt;->k(Ljava/io/File;)J

    move-result-wide v1

    long-to-int v1, v1

    .line 230
    invoke-static {v0}, Lk0/pt;->j(Ljava/io/File;)J

    move-result-wide v2

    const-wide/16 v4, 0xa

    mul-long/2addr v2, v4

    const/16 v0, 0x1e

    shr-long/2addr v2, v0

    long-to-int v0, v2

    shr-int/lit8 v2, v1, 0x8

    xor-int/lit16 v3, v2, 0xcd

    and-int/lit16 v4, v1, 0xff

    xor-int/2addr v3, v4

    xor-int/2addr v3, v0

    const/16 v5, 0xa

    new-array v5, v5, [I

    aput v7, v5, v6

    aput v17, v5, v15

    aput v16, v5, v14

    const/4 v7, 0x6

    aput v7, v5, v13

    const/16 v13, 0x61

    aput v13, v5, v12

    aput v6, v5, v9

    aput v2, v5, v7

    aput v4, v5, v10

    aput v0, v5, v11

    aput v3, v5, v8

    .line 231
    invoke-static {v5}, Lz/k;->s([I)V

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "xxxxx5555 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v1, v1, 0x10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "xx5"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    :cond_4c
    const/16 v0, 0x60

    .line 233
    sget v1, Lk0/pt;->a:I

    invoke-static {v0, v6, v1}, Lk0/pt;->a(III)V

    goto/16 :goto_21

    :cond_4d
    add-int/lit8 v2, v1, 0x2

    .line 234
    aget-byte v2, v0, v2

    add-int/2addr v1, v13

    .line 235
    aget-byte v0, v0, v1

    if-nez v2, :cond_5b

    if-eq v0, v15, :cond_4e

    if-ne v0, v14, :cond_5b

    :cond_4e
    const/16 v1, 0x59

    add-int/2addr v0, v14

    .line 236
    invoke-static {v0}, Lcom/syu/jni/LsecIfly;->testMicFunc(I)I

    move-result v0

    invoke-static {v1, v6, v0}, Lk0/pt;->a(III)V

    goto/16 :goto_21

    :cond_4f
    add-int/lit8 v2, v1, 0x2

    .line 237
    aget-byte v2, v0, v2

    add-int/2addr v1, v13

    .line 238
    aget-byte v0, v0, v1

    if-nez v2, :cond_5b

    if-eqz v0, :cond_53

    if-eq v0, v15, :cond_52

    if-eq v0, v14, :cond_51

    if-eq v0, v13, :cond_50

    goto/16 :goto_21

    :cond_50
    const/16 v0, 0x64

    .line 239
    invoke-static {v0}, Lu0/d;->Q(I)V

    goto/16 :goto_21

    :cond_51
    const/16 v0, 0x3c

    .line 240
    invoke-static {v0}, Lu0/d;->Q(I)V

    goto/16 :goto_21

    :cond_52
    const/16 v0, 0x1e

    .line 241
    invoke-static {v0}, Lu0/d;->Q(I)V

    goto/16 :goto_21

    .line 242
    :cond_53
    sget v0, Lu0/b;->w:I

    if-nez v0, :cond_54

    .line 243
    sget v0, Lu0/b;->T2:I

    invoke-static {v0}, Lu0/d;->Q(I)V

    goto/16 :goto_21

    .line 244
    :cond_54
    sget v0, Lu0/b;->U2:I

    invoke-static {v0}, Lu0/d;->Q(I)V

    goto/16 :goto_21

    :cond_55
    add-int/lit8 v2, v1, 0x2

    .line 245
    aget-byte v2, v0, v2

    add-int/lit8 v3, v1, 0x3

    .line 246
    aget-byte v3, v0, v3

    add-int/2addr v1, v12

    .line 247
    aget-byte v0, v0, v1

    if-eq v2, v15, :cond_5a

    if-eq v2, v14, :cond_59

    if-eq v2, v13, :cond_58

    if-eq v2, v12, :cond_57

    if-eq v2, v9, :cond_56

    goto :goto_21

    :cond_56
    if-ltz v3, :cond_5b

    if-gt v3, v10, :cond_5b

    new-array v0, v12, [I

    aput v7, v0, v6

    const/16 v1, 0x40

    aput v1, v0, v15

    const/4 v1, 0x6

    aput v1, v0, v14

    aput v3, v0, v13

    .line 248
    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_21

    :cond_57
    if-ltz v3, :cond_5b

    if-gt v3, v10, :cond_5b

    new-array v0, v12, [I

    aput v7, v0, v6

    const/16 v1, 0x40

    aput v1, v0, v15

    const/4 v1, 0x6

    aput v1, v0, v14

    aput v3, v0, v13

    .line 249
    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_21

    :cond_58
    if-ltz v3, :cond_5b

    if-gt v3, v12, :cond_5b

    new-array v0, v12, [I

    aput v7, v0, v6

    const/16 v1, 0x40

    aput v1, v0, v15

    const/16 v1, 0xa

    aput v1, v0, v14

    aput v3, v0, v13

    .line 250
    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_21

    .line 251
    :cond_59
    sput v3, Lk0/pt;->e:I

    .line 252
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    new-instance v1, Lk0/pt$c;

    invoke-direct {v1}, Lk0/pt$c;-><init>()V

    const-wide/16 v2, 0x1f4

    invoke-static {v0, v1, v2, v3}, Lo1/j;->b(Landroid/os/Handler;Ljava/lang/Runnable;J)V

    goto :goto_21

    :cond_5a
    new-array v1, v13, [I

    aput v7, v1, v6

    const/16 v2, 0x50

    aput v2, v1, v15

    aput v3, v1, v14

    .line 253
    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v13, [I

    aput v7, v1, v6

    const/16 v2, 0x51

    aput v2, v1, v15

    aput v0, v1, v14

    .line 254
    invoke-static {v1}, Lz/k;->s([I)V

    :cond_5b
    :goto_21
    return-void

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_e
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x50
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_d
        :pswitch_b
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_a
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_19
        :pswitch_16
        :pswitch_19
        :pswitch_19
        :pswitch_11
        :pswitch_15
        :pswitch_11
        :pswitch_14
        :pswitch_11
        :pswitch_19
        :pswitch_13
        :pswitch_11
        :pswitch_12
    .end packed-switch

    :array_0
    .array-data 4
        0x1
        0xaa
        0x90
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x55
        0xaa
        0x8
        0x44
        0x6
        0xe
        0xe
        0xe
        0x14
        0x14
        0xee
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x55
        0xaa
        0x4
        0x42
        0x2
        0x2
        0xec
    .end array-data
.end method
