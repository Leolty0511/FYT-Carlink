.class public Lcom/android/server/backup/PreferredActivityBackupHelper;
.super Landroid/app/backup/BlobBackupHelper;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z = false

.field private static final KEY_DEFAULT_APPS:Ljava/lang/String; = "default-apps"

.field private static final KEY_INTENT_VERIFICATION:Ljava/lang/String; = "intent-verification"

.field private static final KEY_PREFERRED:Ljava/lang/String; = "preferred-activity"

.field private static final STATE_VERSION:I = 0x3

.field private static final TAG:Ljava/lang/String; = "PreferredBackup"


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    const-string v0, "default-apps"

    .line 2
    .line 3
    const-string v1, "intent-verification"

    .line 4
    .line 5
    const-string v2, "preferred-activity"

    .line 6
    .line 7
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x3

    .line 12
    invoke-direct {p0, v1, v0}, Landroid/app/backup/BlobBackupHelper;-><init>(I[Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public applyRestoredPayload(Ljava/lang/String;[B)V
    .locals 8

    .line 1
    const-string v0, "PreferredBackup"

    .line 2
    .line 3
    const-string v1, "Unexpected restore key "

    .line 4
    .line 5
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const v4, -0x298b2982

    .line 14
    .line 15
    .line 16
    const/4 v5, 0x2

    .line 17
    const/4 v6, 0x1

    .line 18
    const/4 v7, 0x0

    .line 19
    if-eq v3, v4, :cond_2

    .line 20
    .line 21
    const v4, -0x19949e54

    .line 22
    .line 23
    .line 24
    if-eq v3, v4, :cond_1

    .line 25
    .line 26
    const v4, 0x4fa3eadb

    .line 27
    .line 28
    .line 29
    if-eq v3, v4, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const-string v3, "preferred-activity"

    .line 33
    .line 34
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_3

    .line 39
    .line 40
    move v3, v7

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const-string v3, "intent-verification"

    .line 43
    .line 44
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_3

    .line 49
    .line 50
    move v3, v5

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    const-string v3, "default-apps"

    .line 53
    .line 54
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-eqz v3, :cond_3

    .line 59
    .line 60
    move v3, v6

    .line 61
    goto :goto_1

    .line 62
    :cond_3
    :goto_0
    const/4 v3, -0x1

    .line 63
    :goto_1
    if-eqz v3, :cond_6

    .line 64
    .line 65
    if-eq v3, v6, :cond_5

    .line 66
    .line 67
    if-eq v3, v5, :cond_4

    .line 68
    .line 69
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-static {v0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_4
    invoke-interface {v2, p2, v7}, Landroid/content/pm/IPackageManager;->restoreIntentFilterVerification([BI)V

    .line 78
    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_5
    invoke-interface {v2, p2, v7}, Landroid/content/pm/IPackageManager;->restoreDefaultApps([BI)V

    .line 82
    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_6
    invoke-interface {v2, p2, v7}, Landroid/content/pm/IPackageManager;->restorePreferredActivities([BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .line 87
    .line 88
    goto :goto_2

    .line 89
    :catch_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string v1, "Unable to restore key "

    .line 92
    .line 93
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    :goto_2
    return-void
.end method

.method public getBackupPayload(Ljava/lang/String;)[B
    .locals 8

    .line 1
    const-string v0, "PreferredBackup"

    .line 2
    .line 3
    const-string v1, "Unexpected backup key "

    .line 4
    .line 5
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const v4, -0x298b2982

    .line 14
    .line 15
    .line 16
    const/4 v5, 0x2

    .line 17
    const/4 v6, 0x1

    .line 18
    const/4 v7, 0x0

    .line 19
    if-eq v3, v4, :cond_2

    .line 20
    .line 21
    const v4, -0x19949e54

    .line 22
    .line 23
    .line 24
    if-eq v3, v4, :cond_1

    .line 25
    .line 26
    const v4, 0x4fa3eadb

    .line 27
    .line 28
    .line 29
    if-eq v3, v4, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const-string v3, "preferred-activity"

    .line 33
    .line 34
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_3

    .line 39
    .line 40
    move v3, v7

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const-string v3, "intent-verification"

    .line 43
    .line 44
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_3

    .line 49
    .line 50
    move v3, v5

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    const-string v3, "default-apps"

    .line 53
    .line 54
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-eqz v3, :cond_3

    .line 59
    .line 60
    move v3, v6

    .line 61
    goto :goto_1

    .line 62
    :cond_3
    :goto_0
    const/4 v3, -0x1

    .line 63
    :goto_1
    if-eqz v3, :cond_6

    .line 64
    .line 65
    if-eq v3, v6, :cond_5

    .line 66
    .line 67
    if-eq v3, v5, :cond_4

    .line 68
    .line 69
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_4
    invoke-interface {v2, v7}, Landroid/content/pm/IPackageManager;->getIntentFilterVerificationBackup(I)[B

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    return-object p1

    .line 82
    :cond_5
    invoke-interface {v2, v7}, Landroid/content/pm/IPackageManager;->getDefaultAppsBackup(I)[B

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    return-object p1

    .line 87
    :cond_6
    invoke-interface {v2, v7}, Landroid/content/pm/IPackageManager;->getPreferredActivityBackup(I)[B

    .line 88
    .line 89
    .line 90
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    return-object p1

    .line 92
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string v2, "Unable to store payload "

    .line 95
    .line 96
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    :goto_2
    const/4 p1, 0x0

    .line 110
    return-object p1
.end method
