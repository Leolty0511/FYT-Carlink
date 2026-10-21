.class public abstract Landroid/content/pm/RegisteredServicesCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,
        Landroid/content/pm/RegisteredServicesCache$UserServices;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field protected static final REGISTERED_SERVICES_DIR:Ljava/lang/String; = "registered_services"

.field private static final TAG:Ljava/lang/String; = "PackageManager"


# instance fields
.field private final mAttributesName:Ljava/lang/String;

.field public final mContext:Landroid/content/Context;

.field private final mExternalReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private final mInterfaceName:Ljava/lang/String;

.field private mListener:Landroid/content/pm/RegisteredServicesCacheListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/pm/RegisteredServicesCacheListener<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final mMetaDataName:Ljava/lang/String;

.field private final mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private final mSerializerAndParser:Landroid/content/pm/XmlSerializerAndParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/pm/XmlSerializerAndParser<",
            "TV;>;"
        }
    .end annotation
.end field

.field protected final mServicesLock:Ljava/lang/Object;

.field private final mUserRemovedReceiver:Landroid/content/BroadcastReceiver;

.field private final mUserServices:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mServicesLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/content/pm/RegisteredServicesCache$UserServices<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/XmlSerializerAndParser;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/pm/XmlSerializerAndParser<",
            "TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mServicesLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Landroid/util/SparseArray;

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    .line 18
    .line 19
    new-instance v3, Landroid/content/pm/RegisteredServicesCache$1;

    .line 20
    .line 21
    invoke-direct {v3, p0}, Landroid/content/pm/RegisteredServicesCache$1;-><init>(Landroid/content/pm/RegisteredServicesCache;)V

    .line 22
    .line 23
    .line 24
    iput-object v3, p0, Landroid/content/pm/RegisteredServicesCache;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 25
    .line 26
    new-instance v0, Landroid/content/pm/RegisteredServicesCache$2;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Landroid/content/pm/RegisteredServicesCache$2;-><init>(Landroid/content/pm/RegisteredServicesCache;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mExternalReceiver:Landroid/content/BroadcastReceiver;

    .line 32
    .line 33
    new-instance v1, Landroid/content/pm/RegisteredServicesCache$3;

    .line 34
    .line 35
    invoke-direct {v1, p0}, Landroid/content/pm/RegisteredServicesCache$3;-><init>(Landroid/content/pm/RegisteredServicesCache;)V

    .line 36
    .line 37
    .line 38
    iput-object v1, p0, Landroid/content/pm/RegisteredServicesCache;->mUserRemovedReceiver:Landroid/content/BroadcastReceiver;

    .line 39
    .line 40
    iput-object p1, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    .line 41
    .line 42
    iput-object p2, p0, Landroid/content/pm/RegisteredServicesCache;->mInterfaceName:Ljava/lang/String;

    .line 43
    .line 44
    iput-object p3, p0, Landroid/content/pm/RegisteredServicesCache;->mMetaDataName:Ljava/lang/String;

    .line 45
    .line 46
    iput-object p4, p0, Landroid/content/pm/RegisteredServicesCache;->mAttributesName:Ljava/lang/String;

    .line 47
    .line 48
    iput-object p5, p0, Landroid/content/pm/RegisteredServicesCache;->mSerializerAndParser:Landroid/content/pm/XmlSerializerAndParser;

    .line 49
    .line 50
    invoke-direct {p0}, Landroid/content/pm/RegisteredServicesCache;->migrateIfNecessaryLocked()V

    .line 51
    .line 52
    .line 53
    new-instance v5, Landroid/content/IntentFilter;

    .line 54
    .line 55
    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string p2, "android.intent.action.PACKAGE_ADDED"

    .line 59
    .line 60
    invoke-virtual {v5, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const-string p2, "android.intent.action.PACKAGE_CHANGED"

    .line 64
    .line 65
    invoke-virtual {v5, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const-string p2, "android.intent.action.PACKAGE_REMOVED"

    .line 69
    .line 70
    invoke-virtual {v5, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const-string/jumbo p2, "package"

    .line 74
    .line 75
    .line 76
    invoke-virtual {v5, p2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 80
    .line 81
    const/4 v6, 0x0

    .line 82
    const/4 v7, 0x0

    .line 83
    move-object v2, p1

    .line 84
    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 85
    .line 86
    .line 87
    new-instance p2, Landroid/content/IntentFilter;

    .line 88
    .line 89
    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    .line 90
    .line 91
    .line 92
    const-string p3, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    .line 93
    .line 94
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    const-string p3, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    .line 98
    .line 99
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 103
    .line 104
    .line 105
    new-instance p3, Landroid/content/IntentFilter;

    .line 106
    .line 107
    invoke-direct {p3}, Landroid/content/IntentFilter;-><init>()V

    .line 108
    .line 109
    .line 110
    const-string p4, "android.intent.action.USER_REMOVED"

    .line 111
    .line 112
    invoke-virtual {p2, p4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, v1, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 116
    .line 117
    .line 118
    return-void
.end method

.method public static synthetic access$100(Landroid/content/pm/RegisteredServicesCache;Landroid/content/Intent;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/content/pm/RegisteredServicesCache;->handlePackageEvent(Landroid/content/Intent;I)V

    return-void
.end method

.method private containsType(Ljava/util/ArrayList;Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<",
            "TV;>;>;TV;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    if-ge v2, v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    check-cast v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 14
    .line 15
    iget-object v3, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    return p1

    .line 25
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return v1
.end method

.method private containsTypeAndUid(Ljava/util/ArrayList;Ljava/lang/Object;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<",
            "TV;>;>;TV;I)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    if-ge v2, v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    check-cast v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 14
    .line 15
    iget-object v4, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    iget v3, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    .line 24
    .line 25
    if-ne v3, p3, :cond_0

    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    return p1

    .line 29
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    return v1
.end method

.method private containsUid([II)Z
    .locals 0

    if-eqz p1, :cond_1

    invoke-static {p1, p2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private createFileForUser(I)Landroid/util/AtomicFile;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Landroid/content/pm/RegisteredServicesCache;->getUserSystemDirectory(I)Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Ljava/io/File;

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v2, "registered_services/"

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Landroid/content/pm/RegisteredServicesCache;->mInterfaceName:Ljava/lang/String;

    .line 16
    .line 17
    const-string v3, ".xml"

    .line 18
    .line 19
    invoke-static {v1, v2, v3}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    new-instance p1, Landroid/util/AtomicFile;

    .line 27
    .line 28
    invoke-direct {p1, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 29
    .line 30
    .line 31
    return-object p1
.end method

.method private findOrCreateUserLocked(I)Landroid/content/pm/RegisteredServicesCache$UserServices;
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mServicesLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/content/pm/RegisteredServicesCache$UserServices<",
            "TV;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/content/pm/RegisteredServicesCache;->findOrCreateUserLocked(IZ)Landroid/content/pm/RegisteredServicesCache$UserServices;

    move-result-object p1

    return-object p1
.end method

.method private findOrCreateUserLocked(IZ)Landroid/content/pm/RegisteredServicesCache$UserServices;
    .locals 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mServicesLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Landroid/content/pm/RegisteredServicesCache$UserServices<",
            "TV;>;"
        }
    .end annotation

    const-string v0, "Error reading persistent services for user "

    .line 2
    iget-object v1, p0, Landroid/content/pm/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/RegisteredServicesCache$UserServices;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Landroid/content/pm/RegisteredServicesCache$UserServices;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/content/pm/RegisteredServicesCache$UserServices;-><init>(Landroid/content/pm/RegisteredServicesCache$1;)V

    .line 4
    iget-object v3, p0, Landroid/content/pm/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz p2, :cond_0

    .line 5
    iget-object p2, p0, Landroid/content/pm/RegisteredServicesCache;->mSerializerAndParser:Landroid/content/pm/XmlSerializerAndParser;

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Landroid/content/pm/RegisteredServicesCache;->getUser(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7
    iget p2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, p2}, Landroid/content/pm/RegisteredServicesCache;->createFileForUser(I)Landroid/util/AtomicFile;

    move-result-object p2

    .line 8
    invoke-virtual {p2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 9
    :try_start_0
    invoke-virtual {p2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    .line 10
    invoke-direct {p0, v2}, Landroid/content/pm/RegisteredServicesCache;->readPersistentServicesLocked(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :goto_0
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p2

    :try_start_1
    const-string v3, "PackageManager"

    .line 12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 13
    :goto_1
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p1

    :cond_0
    :goto_2
    return-object v1
.end method

.method private generateServicesMap([II)V
    .locals 12

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2}, Landroid/content/pm/RegisteredServicesCache;->queryIntentServices(I)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 25
    .line 26
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/content/pm/RegisteredServicesCache;->parseServiceInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    if-nez v3, :cond_0

    .line 31
    .line 32
    const-string v3, "PackageManager"

    .line 33
    .line 34
    new-instance v4, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v5, "Unable to load service info "

    .line 40
    .line 41
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catch_0
    move-exception v3

    .line 64
    goto :goto_1

    .line 65
    :catch_1
    move-exception v3

    .line 66
    :goto_1
    const-string v4, "PackageManager"

    .line 67
    .line 68
    new-instance v5, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v6, "Unable to load service info "

    .line 71
    .line 72
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-static {v4, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_1
    iget-object v1, p0, Landroid/content/pm/RegisteredServicesCache;->mServicesLock:Ljava/lang/Object;

    .line 91
    .line 92
    monitor-enter v1

    .line 93
    :try_start_1
    invoke-direct {p0, p2}, Landroid/content/pm/RegisteredServicesCache;->findOrCreateUserLocked(I)Landroid/content/pm/RegisteredServicesCache$UserServices;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    iget-object v3, v2, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    .line 98
    .line 99
    const/4 v4, 0x0

    .line 100
    const/4 v5, 0x1

    .line 101
    if-nez v3, :cond_2

    .line 102
    .line 103
    move v3, v5

    .line 104
    goto :goto_2

    .line 105
    :cond_2
    move v3, v4

    .line 106
    :goto_2
    if-eqz v3, :cond_3

    .line 107
    .line 108
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    iput-object v6, v2, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    .line 113
    .line 114
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    move v7, v4

    .line 119
    :cond_4
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 120
    .line 121
    .line 122
    move-result v8

    .line 123
    if-eqz v8, :cond_a

    .line 124
    .line 125
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v8

    .line 129
    check-cast v8, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 130
    .line 131
    iget-object v9, v2, Landroid/content/pm/RegisteredServicesCache$UserServices;->persistentServices:Ljava/util/Map;

    .line 132
    .line 133
    iget-object v10, v8, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    .line 134
    .line 135
    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v9

    .line 139
    check-cast v9, Ljava/lang/Integer;

    .line 140
    .line 141
    if-nez v9, :cond_7

    .line 142
    .line 143
    iget-object v7, v2, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    .line 144
    .line 145
    iget-object v9, v8, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    .line 146
    .line 147
    invoke-interface {v7, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    iget-object v7, v2, Landroid/content/pm/RegisteredServicesCache$UserServices;->persistentServices:Ljava/util/Map;

    .line 151
    .line 152
    iget-object v9, v8, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    .line 153
    .line 154
    iget v10, v8, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    .line 155
    .line 156
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 157
    .line 158
    .line 159
    move-result-object v10

    .line 160
    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    iget-boolean v7, v2, Landroid/content/pm/RegisteredServicesCache$UserServices;->mPersistentServicesFileDidNotExist:Z

    .line 164
    .line 165
    if-eqz v7, :cond_5

    .line 166
    .line 167
    if-nez v3, :cond_6

    .line 168
    .line 169
    :cond_5
    iget-object v7, v8, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    .line 170
    .line 171
    invoke-direct {p0, v7, p2, v4}, Landroid/content/pm/RegisteredServicesCache;->notifyListener(Ljava/lang/Object;IZ)V

    .line 172
    .line 173
    .line 174
    :cond_6
    :goto_4
    move v7, v5

    .line 175
    goto :goto_3

    .line 176
    :cond_7
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 177
    .line 178
    .line 179
    move-result v10

    .line 180
    iget v11, v8, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    .line 181
    .line 182
    if-ne v10, v11, :cond_8

    .line 183
    .line 184
    iget-object v9, v2, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    .line 185
    .line 186
    iget-object v10, v8, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    .line 187
    .line 188
    invoke-interface {v9, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    goto :goto_3

    .line 192
    :cond_8
    invoke-virtual {p0, v11}, Landroid/content/pm/RegisteredServicesCache;->inSystemImage(I)Z

    .line 193
    .line 194
    .line 195
    move-result v10

    .line 196
    if-nez v10, :cond_9

    .line 197
    .line 198
    iget-object v10, v8, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    .line 199
    .line 200
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 201
    .line 202
    .line 203
    move-result v9

    .line 204
    invoke-direct {p0, v0, v10, v9}, Landroid/content/pm/RegisteredServicesCache;->containsTypeAndUid(Ljava/util/ArrayList;Ljava/lang/Object;I)Z

    .line 205
    .line 206
    .line 207
    move-result v9

    .line 208
    if-nez v9, :cond_4

    .line 209
    .line 210
    :cond_9
    iget-object v7, v2, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    .line 211
    .line 212
    iget-object v9, v8, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    .line 213
    .line 214
    invoke-interface {v7, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    iget-object v7, v2, Landroid/content/pm/RegisteredServicesCache$UserServices;->persistentServices:Ljava/util/Map;

    .line 218
    .line 219
    iget-object v9, v8, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    .line 220
    .line 221
    iget v10, v8, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    .line 222
    .line 223
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 224
    .line 225
    .line 226
    move-result-object v10

    .line 227
    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    iget-object v7, v8, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    .line 231
    .line 232
    invoke-direct {p0, v7, p2, v4}, Landroid/content/pm/RegisteredServicesCache;->notifyListener(Ljava/lang/Object;IZ)V

    .line 233
    .line 234
    .line 235
    goto :goto_4

    .line 236
    :cond_a
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    .line 237
    .line 238
    .line 239
    move-result-object v3

    .line 240
    iget-object v4, v2, Landroid/content/pm/RegisteredServicesCache$UserServices;->persistentServices:Ljava/util/Map;

    .line 241
    .line 242
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 243
    .line 244
    .line 245
    move-result-object v4

    .line 246
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 247
    .line 248
    .line 249
    move-result-object v4

    .line 250
    :cond_b
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 251
    .line 252
    .line 253
    move-result v6

    .line 254
    if-eqz v6, :cond_c

    .line 255
    .line 256
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v6

    .line 260
    invoke-direct {p0, v0, v6}, Landroid/content/pm/RegisteredServicesCache;->containsType(Ljava/util/ArrayList;Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    move-result v8

    .line 264
    if-nez v8, :cond_b

    .line 265
    .line 266
    iget-object v8, v2, Landroid/content/pm/RegisteredServicesCache$UserServices;->persistentServices:Ljava/util/Map;

    .line 267
    .line 268
    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v8

    .line 272
    check-cast v8, Ljava/lang/Integer;

    .line 273
    .line 274
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 275
    .line 276
    .line 277
    move-result v8

    .line 278
    invoke-direct {p0, p1, v8}, Landroid/content/pm/RegisteredServicesCache;->containsUid([II)Z

    .line 279
    .line 280
    .line 281
    move-result v8

    .line 282
    if-eqz v8, :cond_b

    .line 283
    .line 284
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    goto :goto_5

    .line 288
    :cond_c
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 293
    .line 294
    .line 295
    move-result v0

    .line 296
    if-eqz v0, :cond_d

    .line 297
    .line 298
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    iget-object v3, v2, Landroid/content/pm/RegisteredServicesCache$UserServices;->persistentServices:Ljava/util/Map;

    .line 303
    .line 304
    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    iget-object v3, v2, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    .line 308
    .line 309
    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    invoke-direct {p0, v0, p2, v5}, Landroid/content/pm/RegisteredServicesCache;->notifyListener(Ljava/lang/Object;IZ)V

    .line 313
    .line 314
    .line 315
    move v7, v5

    .line 316
    goto :goto_6

    .line 317
    :cond_d
    if-eqz v7, :cond_e

    .line 318
    .line 319
    invoke-virtual {p0, p2}, Landroid/content/pm/RegisteredServicesCache;->onServicesChangedLocked(I)V

    .line 320
    .line 321
    .line 322
    invoke-direct {p0, v2, p2}, Landroid/content/pm/RegisteredServicesCache;->writePersistentServicesLocked(Landroid/content/pm/RegisteredServicesCache$UserServices;I)V

    .line 323
    .line 324
    .line 325
    :cond_e
    monitor-exit v1

    .line 326
    return-void

    .line 327
    :catchall_0
    move-exception p1

    .line 328
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 329
    throw p1
.end method

.method private final handlePackageEvent(Landroid/content/Intent;I)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    const/4 v4, 0x0

    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v1, v4

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    move v1, v3

    .line 27
    :goto_1
    const-string v5, "android.intent.extra.REPLACING"

    .line 28
    .line 29
    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    if-eqz v5, :cond_2

    .line 36
    .line 37
    goto :goto_4

    .line 38
    :cond_2
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_5

    .line 45
    .line 46
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_3
    const-string v0, "android.intent.extra.UID"

    .line 54
    .line 55
    const/4 v1, -0x1

    .line 56
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-lez p1, :cond_4

    .line 61
    .line 62
    new-array v0, v3, [I

    .line 63
    .line 64
    aput p1, v0, v4

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_4
    const/4 v0, 0x0

    .line 68
    goto :goto_3

    .line 69
    :cond_5
    :goto_2
    const-string v0, "android.intent.extra.changed_uid_list"

    .line 70
    .line 71
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    :goto_3
    invoke-direct {p0, v0, p2}, Landroid/content/pm/RegisteredServicesCache;->generateServicesMap([II)V

    .line 76
    .line 77
    .line 78
    :goto_4
    return-void
.end method

.method private migrateIfNecessaryLocked()V
    .locals 7

    .line 1
    const-string v0, "PackageManager"

    .line 2
    .line 3
    iget-object v1, p0, Landroid/content/pm/RegisteredServicesCache;->mSerializerAndParser:Landroid/content/pm/XmlSerializerAndParser;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v1, Ljava/io/File;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/content/pm/RegisteredServicesCache;->getDataDirectory()Ljava/io/File;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const-string/jumbo v3, "system"

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance v2, Ljava/io/File;

    .line 21
    .line 22
    const-string/jumbo v3, "registered_services"

    .line 23
    .line 24
    .line 25
    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Landroid/util/AtomicFile;

    .line 29
    .line 30
    new-instance v3, Ljava/io/File;

    .line 31
    .line 32
    new-instance v4, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    iget-object v5, p0, Landroid/content/pm/RegisteredServicesCache;->mInterfaceName:Ljava/lang/String;

    .line 38
    .line 39
    const-string v6, ".xml"

    .line 40
    .line 41
    invoke-static {v4, v5, v6}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-direct {v1, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_3

    .line 60
    .line 61
    new-instance v3, Ljava/io/File;

    .line 62
    .line 63
    new-instance v4, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    iget-object v5, p0, Landroid/content/pm/RegisteredServicesCache;->mInterfaceName:Ljava/lang/String;

    .line 69
    .line 70
    const-string v6, ".xml.migrated"

    .line 71
    .line 72
    invoke-static {v4, v5, v6}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-nez v2, :cond_3

    .line 84
    .line 85
    const/4 v2, 0x0

    .line 86
    :try_start_0
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    iget-object v1, p0, Landroid/content/pm/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    .line 91
    .line 92
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 93
    .line 94
    .line 95
    invoke-direct {p0, v2}, Landroid/content/pm/RegisteredServicesCache;->readPersistentServicesLocked(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :catchall_0
    move-exception v0

    .line 100
    goto :goto_3

    .line 101
    :catch_0
    move-exception v1

    .line 102
    :try_start_1
    const-string v4, "Error reading persistent services, starting from scratch"

    .line 103
    .line 104
    invoke-static {v0, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    .line 106
    .line 107
    :goto_0
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 108
    .line 109
    .line 110
    :try_start_2
    invoke-virtual {p0}, Landroid/content/pm/RegisteredServicesCache;->getUsers()Ljava/util/List;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    if-eqz v2, :cond_2

    .line 123
    .line 124
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    check-cast v2, Landroid/content/pm/UserInfo;

    .line 129
    .line 130
    iget-object v4, p0, Landroid/content/pm/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    .line 131
    .line 132
    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    .line 133
    .line 134
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    check-cast v4, Landroid/content/pm/RegisteredServicesCache$UserServices;

    .line 139
    .line 140
    if-eqz v4, :cond_1

    .line 141
    .line 142
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 143
    .line 144
    invoke-direct {p0, v4, v2}, Landroid/content/pm/RegisteredServicesCache;->writePersistentServicesLocked(Landroid/content/pm/RegisteredServicesCache$UserServices;I)V

    .line 145
    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 149
    .line 150
    .line 151
    goto :goto_2

    .line 152
    :catch_1
    move-exception v1

    .line 153
    const-string v2, "Migration failed"

    .line 154
    .line 155
    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    .line 157
    .line 158
    :goto_2
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    .line 159
    .line 160
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 161
    .line 162
    .line 163
    goto :goto_4

    .line 164
    :goto_3
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 165
    .line 166
    .line 167
    throw v0

    .line 168
    :cond_3
    :goto_4
    return-void
.end method

.method private notifyListener(Ljava/lang/Object;IZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;IZ)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v2, p0, Landroid/content/pm/RegisteredServicesCache;->mListener:Landroid/content/pm/RegisteredServicesCacheListener;

    .line 3
    .line 4
    iget-object v6, p0, Landroid/content/pm/RegisteredServicesCache;->mHandler:Landroid/os/Handler;

    .line 5
    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v7, Landroid/content/pm/RegisteredServicesCache$4;

    .line 11
    .line 12
    move-object v0, v7

    .line 13
    move-object v1, p0

    .line 14
    move-object v3, p1

    .line 15
    move v4, p2

    .line 16
    move v5, p3

    .line 17
    invoke-direct/range {v0 .. v5}, Landroid/content/pm/RegisteredServicesCache$4;-><init>(Landroid/content/pm/RegisteredServicesCache;Landroid/content/pm/RegisteredServicesCacheListener;Ljava/lang/Object;IZ)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    throw p1
.end method

.method private readPersistentServicesLocked(Ljava/io/InputStream;)V
    .locals 6

    .line 1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    :goto_0
    const/4 v1, 0x1

    .line 19
    const/4 v2, 0x2

    .line 20
    if-eq p1, v2, :cond_0

    .line 21
    .line 22
    if-eq p1, v1, :cond_0

    .line 23
    .line 24
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string/jumbo v3, "services"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_4

    .line 41
    .line 42
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    :cond_1
    if-ne p1, v2, :cond_3

    .line 47
    .line 48
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-ne p1, v2, :cond_3

    .line 53
    .line 54
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    const-string/jumbo v3, "service"

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_3

    .line 66
    .line 67
    iget-object p1, p0, Landroid/content/pm/RegisteredServicesCache;->mSerializerAndParser:Landroid/content/pm/XmlSerializerAndParser;

    .line 68
    .line 69
    invoke-interface {p1, v0}, Landroid/content/pm/XmlSerializerAndParser;->createFromXml(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    if-nez p1, :cond_2

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    const/4 v3, 0x0

    .line 77
    const-string/jumbo v4, "uid"

    .line 78
    .line 79
    .line 80
    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    const/4 v5, 0x0

    .line 93
    invoke-direct {p0, v4, v5}, Landroid/content/pm/RegisteredServicesCache;->findOrCreateUserLocked(IZ)Landroid/content/pm/RegisteredServicesCache$UserServices;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    iget-object v4, v4, Landroid/content/pm/RegisteredServicesCache$UserServices;->persistentServices:Ljava/util/Map;

    .line 98
    .line 99
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-interface {v4, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    :cond_3
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    if-ne p1, v1, :cond_1

    .line 111
    .line 112
    :cond_4
    :goto_1
    return-void
.end method

.method private writePersistentServicesLocked(Landroid/content/pm/RegisteredServicesCache$UserServices;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/RegisteredServicesCache$UserServices<",
            "TV;>;I)V"
        }
    .end annotation

    .line 1
    const-string/jumbo v0, "service"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "services"

    .line 5
    .line 6
    .line 7
    iget-object v2, p0, Landroid/content/pm/RegisteredServicesCache;->mSerializerAndParser:Landroid/content/pm/XmlSerializerAndParser;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-direct {p0, p2}, Landroid/content/pm/RegisteredServicesCache;->createFileForUser(I)Landroid/util/AtomicFile;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    const/4 v2, 0x0

    .line 17
    :try_start_0
    invoke-virtual {p2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 18
    .line 19
    .line 20
    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 21
    :try_start_1
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    .line 22
    .line 23
    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 24
    .line 25
    .line 26
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 27
    .line 28
    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 36
    .line 37
    invoke-interface {v4, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 38
    .line 39
    .line 40
    const-string/jumbo v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    .line 41
    .line 42
    .line 43
    const/4 v6, 0x1

    .line 44
    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 45
    .line 46
    .line 47
    invoke-interface {v4, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 48
    .line 49
    .line 50
    iget-object p1, p1, Landroid/content/pm/RegisteredServicesCache$UserServices;->persistentServices:Ljava/util/Map;

    .line 51
    .line 52
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-eqz v5, :cond_1

    .line 65
    .line 66
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    check-cast v5, Ljava/util/Map$Entry;

    .line 71
    .line 72
    invoke-interface {v4, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 73
    .line 74
    .line 75
    const-string/jumbo v6, "uid"

    .line 76
    .line 77
    .line 78
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    check-cast v7, Ljava/lang/Integer;

    .line 83
    .line 84
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    invoke-interface {v4, v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 93
    .line 94
    .line 95
    iget-object v6, p0, Landroid/content/pm/RegisteredServicesCache;->mSerializerAndParser:Landroid/content/pm/XmlSerializerAndParser;

    .line 96
    .line 97
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    invoke-interface {v6, v5, v4}, Landroid/content/pm/XmlSerializerAndParser;->writeAsXml(Ljava/lang/Object;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 102
    .line 103
    .line 104
    invoke-interface {v4, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_1
    invoke-interface {v4, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 109
    .line 110
    .line 111
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 115
    .line 116
    .line 117
    goto :goto_2

    .line 118
    :catch_0
    move-exception p1

    .line 119
    move-object v2, v3

    .line 120
    goto :goto_1

    .line 121
    :catch_1
    move-exception p1

    .line 122
    :goto_1
    const-string v0, "PackageManager"

    .line 123
    .line 124
    const-string v1, "Error writing accounts"

    .line 125
    .line 126
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    .line 128
    .line 129
    if-eqz v2, :cond_2

    .line 130
    .line 131
    invoke-virtual {p2, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 132
    .line 133
    .line 134
    :cond_2
    :goto_2
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;I)V
    .locals 2

    .line 1
    const-string p1, "RegisteredServicesCache: "

    .line 2
    .line 3
    iget-object p3, p0, Landroid/content/pm/RegisteredServicesCache;->mServicesLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter p3

    .line 6
    :try_start_0
    invoke-direct {p0, p4}, Landroid/content/pm/RegisteredServicesCache;->findOrCreateUserLocked(I)Landroid/content/pm/RegisteredServicesCache$UserServices;

    .line 7
    .line 8
    .line 9
    move-result-object p4

    .line 10
    iget-object v0, p4, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p4, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/Map;->size()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string p1, " services"

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p4, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    .line 41
    .line 42
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result p4

    .line 54
    if-eqz p4, :cond_1

    .line 55
    .line 56
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p4

    .line 60
    check-cast p4, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 61
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    const-string v1, "  "

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p4

    .line 79
    invoke-virtual {p2, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_0
    const-string p1, "RegisteredServicesCache: services not loaded"

    .line 84
    .line 85
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    :cond_1
    monitor-exit p3

    .line 89
    return-void

    .line 90
    :catchall_0
    move-exception p1

    .line 91
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    throw p1
.end method

.method public getAllServices(I)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Collection<",
            "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<",
            "TV;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mServicesLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0, p1}, Landroid/content/pm/RegisteredServicesCache;->findOrCreateUserLocked(I)Landroid/content/pm/RegisteredServicesCache$UserServices;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    iget-object v2, v1, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-direct {p0, v2, p1}, Landroid/content/pm/RegisteredServicesCache;->generateServicesMap([II)V

    .line 14
    .line 15
    .line 16
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    .line 17
    .line 18
    iget-object v1, v1, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    monitor-exit v0

    .line 32
    return-object p1

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw p1
.end method

.method public getDataDirectory()Ljava/io/File;
    .locals 1

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getListener()Landroid/content/pm/RegisteredServicesCacheListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/pm/RegisteredServicesCacheListener<",
            "TV;>;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mListener:Landroid/content/pm/RegisteredServicesCacheListener;

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

.method public getPersistentServices(I)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "TV;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/content/pm/RegisteredServicesCache;->findOrCreateUserLocked(I)Landroid/content/pm/RegisteredServicesCache$UserServices;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/RegisteredServicesCache$UserServices;->persistentServices:Ljava/util/Map;

    return-object p1
.end method

.method public getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;I)",
            "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<",
            "TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mServicesLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0, p2}, Landroid/content/pm/RegisteredServicesCache;->findOrCreateUserLocked(I)Landroid/content/pm/RegisteredServicesCache$UserServices;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    iget-object v2, v1, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-direct {p0, v2, p2}, Landroid/content/pm/RegisteredServicesCache;->generateServicesMap([II)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object p2, v1, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    .line 17
    .line 18
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 23
    .line 24
    monitor-exit v0

    .line 25
    return-object p1

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p1
.end method

.method public getUser(I)Landroid/content/pm/UserInfo;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    return-object p1
.end method

.method public getUserSystemDirectory(I)Ljava/io/File;
    .locals 0

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public getUsers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public inSystemImage(I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 v0, 0x0

    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    array-length v1, p1

    .line 15
    move v2, v0

    .line 16
    :goto_0
    if-ge v2, v1, :cond_1

    .line 17
    .line 18
    aget-object v3, p1, v2

    .line 19
    .line 20
    :try_start_0
    iget-object v4, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-virtual {v4, v3, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 31
    .line 32
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    const/4 v4, 0x1

    .line 35
    and-int/2addr v3, v4

    .line 36
    if-eqz v3, :cond_0

    .line 37
    .line 38
    return v4

    .line 39
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_0
    :cond_1
    return v0
.end method

.method public invalidateCache(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mServicesLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0, p1}, Landroid/content/pm/RegisteredServicesCache;->findOrCreateUserLocked(I)Landroid/content/pm/RegisteredServicesCache$UserServices;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const/4 v2, 0x0

    .line 9
    iput-object v2, v1, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/content/pm/RegisteredServicesCache;->onServicesChangedLocked(I)V

    .line 12
    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p1
.end method

.method public onServicesChangedLocked(I)V
    .locals 0

    return-void
.end method

.method public onUserRemoved(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mServicesLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p1
.end method

.method public abstract parseServiceAttributes(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/lang/String;",
            "Landroid/util/AttributeSet;",
            ")TV;"
        }
    .end annotation
.end method

.method public parseServiceInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            ")",
            "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<",
            "TV;>;"
        }
    .end annotation

    .line 1
    const-string v0, "No "

    .line 2
    .line 3
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 4
    .line 5
    new-instance v2, Landroid/content/ComponentName;

    .line 6
    .line 7
    iget-object v3, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, v1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v3, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    const/4 v4, 0x0

    .line 21
    :try_start_0
    iget-object v5, p0, Landroid/content/pm/RegisteredServicesCache;->mMetaDataName:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v1, v3, v5}, Landroid/content/pm/PackageItemInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    .line 24
    .line 25
    .line 26
    move-result-object v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    if-eqz v5, :cond_3

    .line 28
    .line 29
    :try_start_1
    invoke-static {v5}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    :goto_0
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    const/4 v7, 0x1

    .line 38
    if-eq v6, v7, :cond_0

    .line 39
    .line 40
    const/4 v7, 0x2

    .line 41
    if-eq v6, v7, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    iget-object v7, p0, Landroid/content/pm/RegisteredServicesCache;->mAttributesName:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    if-eqz v6, :cond_2

    .line 55
    .line 56
    iget-object v6, v1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 57
    .line 58
    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    iget-object v6, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {p0, v3, v6, v0}, Landroid/content/pm/RegisteredServicesCache;->parseServiceAttributes(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    if-nez v0, :cond_1

    .line 69
    .line 70
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    .line 71
    .line 72
    .line 73
    return-object v4

    .line 74
    :cond_1
    :try_start_2
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 75
    .line 76
    new-instance v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 77
    .line 78
    invoke-direct {v3, v0, p1, v2}, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;-><init>(Ljava/lang/Object;Landroid/content/pm/ComponentInfo;Landroid/content/ComponentName;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    .line 80
    .line 81
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    .line 82
    .line 83
    .line 84
    return-object v3

    .line 85
    :cond_2
    :try_start_3
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    .line 86
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    const-string v2, "Meta-data does not start with "

    .line 93
    .line 94
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    iget-object v2, p0, Landroid/content/pm/RegisteredServicesCache;->mAttributesName:Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v2, " tag"

    .line 103
    .line 104
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-direct {p1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    throw p1

    .line 115
    :catchall_0
    move-exception p1

    .line 116
    move-object v4, v5

    .line 117
    goto :goto_2

    .line 118
    :catch_0
    move-object v4, v5

    .line 119
    goto :goto_1

    .line 120
    :cond_3
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    .line 121
    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mMetaDataName:Ljava/lang/String;

    .line 128
    .line 129
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v0, " meta-data"

    .line 133
    .line 134
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-direct {p1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    throw p1
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 145
    :catchall_1
    move-exception p1

    .line 146
    goto :goto_2

    .line 147
    :catch_1
    :goto_1
    :try_start_4
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    .line 148
    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .line 153
    .line 154
    const-string v2, "Unable to load resources for pacakge "

    .line 155
    .line 156
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 160
    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-direct {p1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 172
    :goto_2
    if-eqz v4, :cond_4

    .line 173
    .line 174
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    .line 175
    .line 176
    .line 177
    :cond_4
    throw p1
.end method

.method public queryIntentServices(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/content/Intent;

    .line 8
    .line 9
    iget-object v2, p0, Landroid/content/pm/RegisteredServicesCache;->mInterfaceName:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const v2, 0xc0080

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1, v2, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method public setListener(Landroid/content/pm/RegisteredServicesCacheListener;Landroid/os/Handler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/RegisteredServicesCacheListener<",
            "TV;>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    new-instance p2, Landroid/os/Handler;

    .line 4
    .line 5
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    monitor-enter p0

    .line 15
    :try_start_0
    iput-object p2, p0, Landroid/content/pm/RegisteredServicesCache;->mHandler:Landroid/os/Handler;

    .line 16
    .line 17
    iput-object p1, p0, Landroid/content/pm/RegisteredServicesCache;->mListener:Landroid/content/pm/RegisteredServicesCacheListener;

    .line 18
    .line 19
    monitor-exit p0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p1
.end method

.method public updateServices(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mServicesLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0, p1}, Landroid/content/pm/RegisteredServicesCache;->findOrCreateUserLocked(I)Landroid/content/pm/RegisteredServicesCache$UserServices;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    iget-object v2, v1, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    .line 15
    .line 16
    iget-object v1, v1, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 23
    .line 24
    .line 25
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const/4 v1, 0x0

    .line 31
    move-object v2, v1

    .line 32
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_4

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 43
    .line 44
    iget-object v4, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentInfo:Landroid/content/pm/ComponentInfo;

    .line 45
    .line 46
    iget-object v5, v4, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 47
    .line 48
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->versionCode:I

    .line 49
    .line 50
    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 51
    .line 52
    :try_start_1
    iget-object v6, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    .line 53
    .line 54
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    const/4 v7, 0x0

    .line 59
    invoke-virtual {v6, v4, v7, p1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    .line 60
    .line 61
    .line 62
    move-result-object v4
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 63
    goto :goto_1

    .line 64
    :catch_0
    move-object v4, v1

    .line 65
    :goto_1
    if-eqz v4, :cond_2

    .line 66
    .line 67
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->versionCode:I

    .line 68
    .line 69
    if-eq v4, v5, :cond_1

    .line 70
    .line 71
    :cond_2
    if-nez v2, :cond_3

    .line 72
    .line 73
    new-instance v2, Landroid/util/IntArray;

    .line 74
    .line 75
    invoke-direct {v2}, Landroid/util/IntArray;-><init>()V

    .line 76
    .line 77
    .line 78
    :cond_3
    iget v3, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    .line 79
    .line 80
    invoke-virtual {v2, v3}, Landroid/util/IntArray;->add(I)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_4
    if-eqz v2, :cond_5

    .line 85
    .line 86
    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-lez v0, :cond_5

    .line 91
    .line 92
    invoke-virtual {v2}, Landroid/util/IntArray;->toArray()[I

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-direct {p0, v0, p1}, Landroid/content/pm/RegisteredServicesCache;->generateServicesMap([II)V

    .line 97
    .line 98
    .line 99
    :cond_5
    return-void

    .line 100
    :catchall_0
    move-exception p1

    .line 101
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 102
    throw p1
.end method
