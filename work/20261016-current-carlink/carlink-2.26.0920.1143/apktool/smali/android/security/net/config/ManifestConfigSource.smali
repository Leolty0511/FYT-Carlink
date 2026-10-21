.class public Landroid/security/net/config/ManifestConfigSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/security/net/config/ConfigSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/net/config/ManifestConfigSource$DefaultConfigSource;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "NetworkSecurityConfig"


# instance fields
.field private final mApplicationInfoFlags:I

.field private final mConfigResourceId:I

.field private mConfigSource:Landroid/security/net/config/ConfigSource;

.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final mTargetSandboxVesrsion:I

.field private final mTargetSdkVersion:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

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
    iput-object v0, p0, Landroid/security/net/config/ManifestConfigSource;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p1, p0, Landroid/security/net/config/ManifestConfigSource;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 18
    .line 19
    iput v0, p0, Landroid/security/net/config/ManifestConfigSource;->mApplicationInfoFlags:I

    .line 20
    .line 21
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 22
    .line 23
    iput v0, p0, Landroid/security/net/config/ManifestConfigSource;->mTargetSdkVersion:I

    .line 24
    .line 25
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->networkSecurityConfigRes:I

    .line 26
    .line 27
    iput v0, p0, Landroid/security/net/config/ManifestConfigSource;->mConfigResourceId:I

    .line 28
    .line 29
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSandboxVersion:I

    .line 30
    .line 31
    iput p1, p0, Landroid/security/net/config/ManifestConfigSource;->mTargetSandboxVesrsion:I

    .line 32
    .line 33
    return-void
.end method

.method private getConfigSource()Landroid/security/net/config/ConfigSource;
    .locals 11

    .line 1
    const-string v0, "Using Network Security Config from resource "

    .line 2
    .line 3
    iget-object v1, p0, Landroid/security/net/config/ManifestConfigSource;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Landroid/security/net/config/ManifestConfigSource;->mConfigSource:Landroid/security/net/config/ConfigSource;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    monitor-exit v1

    .line 11
    return-object v2

    .line 12
    :cond_0
    iget v2, p0, Landroid/security/net/config/ManifestConfigSource;->mConfigResourceId:I

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    const/4 v4, 0x0

    .line 16
    const/4 v5, 0x2

    .line 17
    if-eqz v2, :cond_2

    .line 18
    .line 19
    iget v2, p0, Landroid/security/net/config/ManifestConfigSource;->mApplicationInfoFlags:I

    .line 20
    .line 21
    and-int/2addr v2, v5

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    move v8, v3

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move v8, v4

    .line 27
    :goto_0
    const-string v2, "NetworkSecurityConfig"

    .line 28
    .line 29
    new-instance v3, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Landroid/security/net/config/ManifestConfigSource;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget v4, p0, Landroid/security/net/config/ManifestConfigSource;->mConfigResourceId:I

    .line 41
    .line 42
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v0, " debugBuild: "

    .line 50
    .line 51
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    new-instance v0, Landroid/security/net/config/XmlConfigSource;

    .line 65
    .line 66
    iget-object v6, p0, Landroid/security/net/config/ManifestConfigSource;->mContext:Landroid/content/Context;

    .line 67
    .line 68
    iget v7, p0, Landroid/security/net/config/ManifestConfigSource;->mConfigResourceId:I

    .line 69
    .line 70
    iget v9, p0, Landroid/security/net/config/ManifestConfigSource;->mTargetSdkVersion:I

    .line 71
    .line 72
    iget v10, p0, Landroid/security/net/config/ManifestConfigSource;->mTargetSandboxVesrsion:I

    .line 73
    .line 74
    move-object v5, v0

    .line 75
    invoke-direct/range {v5 .. v10}, Landroid/security/net/config/XmlConfigSource;-><init>(Landroid/content/Context;IZII)V

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_2
    const-string v0, "NetworkSecurityConfig"

    .line 80
    .line 81
    const-string v2, "No Network Security Config specified, using platform default"

    .line 82
    .line 83
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    iget v0, p0, Landroid/security/net/config/ManifestConfigSource;->mApplicationInfoFlags:I

    .line 87
    .line 88
    const/high16 v2, 0x8000000

    .line 89
    .line 90
    and-int/2addr v0, v2

    .line 91
    if-eqz v0, :cond_3

    .line 92
    .line 93
    iget v0, p0, Landroid/security/net/config/ManifestConfigSource;->mTargetSandboxVesrsion:I

    .line 94
    .line 95
    if-ge v0, v5, :cond_3

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_3
    move v3, v4

    .line 99
    :goto_1
    new-instance v0, Landroid/security/net/config/ManifestConfigSource$DefaultConfigSource;

    .line 100
    .line 101
    iget v2, p0, Landroid/security/net/config/ManifestConfigSource;->mTargetSdkVersion:I

    .line 102
    .line 103
    iget v4, p0, Landroid/security/net/config/ManifestConfigSource;->mTargetSandboxVesrsion:I

    .line 104
    .line 105
    invoke-direct {v0, v3, v2, v4}, Landroid/security/net/config/ManifestConfigSource$DefaultConfigSource;-><init>(ZII)V

    .line 106
    .line 107
    .line 108
    :goto_2
    iput-object v0, p0, Landroid/security/net/config/ManifestConfigSource;->mConfigSource:Landroid/security/net/config/ConfigSource;

    .line 109
    .line 110
    monitor-exit v1

    .line 111
    return-object v0

    .line 112
    :catchall_0
    move-exception v0

    .line 113
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    throw v0
.end method


# virtual methods
.method public getDefaultConfig()Landroid/security/net/config/NetworkSecurityConfig;
    .locals 1

    invoke-direct {p0}, Landroid/security/net/config/ManifestConfigSource;->getConfigSource()Landroid/security/net/config/ConfigSource;

    move-result-object v0

    invoke-interface {v0}, Landroid/security/net/config/ConfigSource;->getDefaultConfig()Landroid/security/net/config/NetworkSecurityConfig;

    move-result-object v0

    return-object v0
.end method

.method public getPerDomainConfigs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/util/Pair<",
            "Landroid/security/net/config/Domain;",
            "Landroid/security/net/config/NetworkSecurityConfig;",
            ">;>;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/security/net/config/ManifestConfigSource;->getConfigSource()Landroid/security/net/config/ConfigSource;

    move-result-object v0

    invoke-interface {v0}, Landroid/security/net/config/ConfigSource;->getPerDomainConfigs()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
