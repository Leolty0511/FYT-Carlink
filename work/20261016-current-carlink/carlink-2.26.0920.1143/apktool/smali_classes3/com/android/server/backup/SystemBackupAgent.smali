.class public Lcom/android/server/backup/SystemBackupAgent;
.super Landroid/app/backup/BackupAgentHelper;
.source "SourceFile"


# static fields
.field private static final ACCOUNT_MANAGER_HELPER:Ljava/lang/String; = "account_manager"

.field private static final NOTIFICATION_HELPER:Ljava/lang/String; = "notifications"

.field private static final PERMISSION_HELPER:Ljava/lang/String; = "permissions"

.field private static final PREFERRED_HELPER:Ljava/lang/String; = "preferred_activities"

.field private static final SHORTCUT_MANAGER_HELPER:Ljava/lang/String; = "shortcut_manager"

.field private static final SYNC_SETTINGS_HELPER:Ljava/lang/String; = "account_sync_settings"

.field private static final TAG:Ljava/lang/String; = "SystemBackupAgent"

.field private static final USAGE_STATS_HELPER:Ljava/lang/String; = "usage_stats"

.field private static final WALLPAPER_HELPER:Ljava/lang/String; = "wallpaper"

.field public static final WALLPAPER_IMAGE:Ljava/lang/String;

.field private static final WALLPAPER_IMAGE_DIR:Ljava/lang/String;

.field private static final WALLPAPER_IMAGE_FILENAME:Ljava/lang/String; = "wallpaper"

.field private static final WALLPAPER_IMAGE_KEY:Ljava/lang/String; = "/data/data/com.android.settings/files/wallpaper"

.field public static final WALLPAPER_INFO:Ljava/lang/String;

.field private static final WALLPAPER_INFO_DIR:Ljava/lang/String;

.field private static final WALLPAPER_INFO_FILENAME:Ljava/lang/String; = "wallpaper_info.xml"


# instance fields
.field private mWallpaperHelper:Landroid/app/backup/WallpaperBackupHelper;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    sput-object v1, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_IMAGE_DIR:Ljava/lang/String;

    .line 11
    .line 12
    new-instance v1, Ljava/io/File;

    .line 13
    .line 14
    invoke-static {v0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const-string v3, "wallpaper"

    .line 19
    .line 20
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    sput-object v1, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    sput-object v1, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_INFO_DIR:Ljava/lang/String;

    .line 38
    .line 39
    new-instance v1, Ljava/io/File;

    .line 40
    .line 41
    invoke-static {v0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v2, "wallpaper_info.xml"

    .line 46
    .line 47
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    sput-object v0, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    .line 55
    .line 56
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/backup/BackupAgentHelper;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/backup/SystemBackupAgent;->mWallpaperHelper:Landroid/app/backup/WallpaperBackupHelper;

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "account_sync_settings"

    .line 7
    .line 8
    invoke-virtual {p0, v1, v0}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/android/server/backup/PreferredActivityBackupHelper;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/android/server/backup/PreferredActivityBackupHelper;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v1, "preferred_activities"

    .line 17
    .line 18
    invoke-virtual {p0, v1, v0}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Lcom/android/server/backup/NotificationBackupHelper;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lcom/android/server/backup/NotificationBackupHelper;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    const-string v1, "notifications"

    .line 27
    .line 28
    invoke-virtual {p0, v1, v0}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 29
    .line 30
    .line 31
    new-instance v0, Lcom/android/server/backup/PermissionBackupHelper;

    .line 32
    .line 33
    invoke-direct {v0}, Lcom/android/server/backup/PermissionBackupHelper;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v1, "permissions"

    .line 37
    .line 38
    invoke-virtual {p0, v1, v0}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 39
    .line 40
    .line 41
    new-instance v0, Lcom/android/server/backup/UsageStatsBackupHelper;

    .line 42
    .line 43
    invoke-direct {v0, p0}, Lcom/android/server/backup/UsageStatsBackupHelper;-><init>(Landroid/content/Context;)V

    .line 44
    .line 45
    .line 46
    const-string v1, "usage_stats"

    .line 47
    .line 48
    invoke-virtual {p0, v1, v0}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 49
    .line 50
    .line 51
    new-instance v0, Lcom/android/server/backup/ShortcutBackupHelper;

    .line 52
    .line 53
    invoke-direct {v0}, Lcom/android/server/backup/ShortcutBackupHelper;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string v1, "shortcut_manager"

    .line 57
    .line 58
    invoke-virtual {p0, v1, v0}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 59
    .line 60
    .line 61
    new-instance v0, Lcom/android/server/backup/AccountManagerBackupHelper;

    .line 62
    .line 63
    invoke-direct {v0}, Lcom/android/server/backup/AccountManagerBackupHelper;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v1, "account_manager"

    .line 67
    .line 68
    invoke-virtual {p0, v1, v0}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 69
    .line 70
    .line 71
    invoke-super {p0, p1, p2, p3}, Landroid/app/backup/BackupAgentHelper;->onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public onFullBackup(Landroid/app/backup/FullBackupDataOutput;)V
    .locals 0

    return-void
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/app/backup/WallpaperBackupHelper;

    .line 2
    .line 3
    const-string v1, "/data/data/com.android.settings/files/wallpaper"

    .line 4
    .line 5
    filled-new-array {v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-direct {v0, p0, v2}, Landroid/app/backup/WallpaperBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/server/backup/SystemBackupAgent;->mWallpaperHelper:Landroid/app/backup/WallpaperBackupHelper;

    .line 13
    .line 14
    const-string v2, "wallpaper"

    .line 15
    .line 16
    invoke-virtual {p0, v2, v0}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Landroid/app/backup/WallpaperBackupHelper;

    .line 20
    .line 21
    filled-new-array {v1}, [Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-direct {v0, p0, v1}, Landroid/app/backup/WallpaperBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v1, "system_files"

    .line 29
    .line 30
    invoke-virtual {p0, v1, v0}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 31
    .line 32
    .line 33
    new-instance v0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;

    .line 34
    .line 35
    invoke-direct {v0, p0}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;-><init>(Landroid/content/Context;)V

    .line 36
    .line 37
    .line 38
    const-string v1, "account_sync_settings"

    .line 39
    .line 40
    invoke-virtual {p0, v1, v0}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 41
    .line 42
    .line 43
    new-instance v0, Lcom/android/server/backup/PreferredActivityBackupHelper;

    .line 44
    .line 45
    invoke-direct {v0}, Lcom/android/server/backup/PreferredActivityBackupHelper;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v1, "preferred_activities"

    .line 49
    .line 50
    invoke-virtual {p0, v1, v0}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 51
    .line 52
    .line 53
    new-instance v0, Lcom/android/server/backup/NotificationBackupHelper;

    .line 54
    .line 55
    invoke-direct {v0, p0}, Lcom/android/server/backup/NotificationBackupHelper;-><init>(Landroid/content/Context;)V

    .line 56
    .line 57
    .line 58
    const-string v1, "notifications"

    .line 59
    .line 60
    invoke-virtual {p0, v1, v0}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 61
    .line 62
    .line 63
    new-instance v0, Lcom/android/server/backup/PermissionBackupHelper;

    .line 64
    .line 65
    invoke-direct {v0}, Lcom/android/server/backup/PermissionBackupHelper;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v1, "permissions"

    .line 69
    .line 70
    invoke-virtual {p0, v1, v0}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 71
    .line 72
    .line 73
    new-instance v0, Lcom/android/server/backup/UsageStatsBackupHelper;

    .line 74
    .line 75
    invoke-direct {v0, p0}, Lcom/android/server/backup/UsageStatsBackupHelper;-><init>(Landroid/content/Context;)V

    .line 76
    .line 77
    .line 78
    const-string v1, "usage_stats"

    .line 79
    .line 80
    invoke-virtual {p0, v1, v0}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 81
    .line 82
    .line 83
    new-instance v0, Lcom/android/server/backup/ShortcutBackupHelper;

    .line 84
    .line 85
    invoke-direct {v0}, Lcom/android/server/backup/ShortcutBackupHelper;-><init>()V

    .line 86
    .line 87
    .line 88
    const-string v1, "shortcut_manager"

    .line 89
    .line 90
    invoke-virtual {p0, v1, v0}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 91
    .line 92
    .line 93
    new-instance v0, Lcom/android/server/backup/AccountManagerBackupHelper;

    .line 94
    .line 95
    invoke-direct {v0}, Lcom/android/server/backup/AccountManagerBackupHelper;-><init>()V

    .line 96
    .line 97
    .line 98
    const-string v1, "account_manager"

    .line 99
    .line 100
    invoke-virtual {p0, v1, v0}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 101
    .line 102
    .line 103
    invoke-super {p0, p1, p2, p3}, Landroid/app/backup/BackupAgentHelper;->onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public onRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 17

    .line 1
    move-object/from16 v0, p5

    .line 2
    .line 3
    move-object/from16 v1, p6

    .line 4
    .line 5
    const-string v2, "Couldn\'t restore settings\n"

    .line 6
    .line 7
    const-string v3, "Skipping unrecognized system file: [ "

    .line 8
    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v5, "Restoring file domain="

    .line 12
    .line 13
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v5, " path="

    .line 20
    .line 21
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    const-string v5, "SystemBackupAgent"

    .line 32
    .line 33
    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    const-string v4, "r"

    .line 37
    .line 38
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    const-string v6, "wallpaper"

    .line 43
    .line 44
    if-eqz v4, :cond_1

    .line 45
    .line 46
    const-string v4, "wallpaper_info.xml"

    .line 47
    .line 48
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    const/4 v7, 0x1

    .line 53
    if-eqz v4, :cond_0

    .line 54
    .line 55
    new-instance v4, Ljava/io/File;

    .line 56
    .line 57
    sget-object v8, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    .line 58
    .line 59
    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-eqz v4, :cond_1

    .line 68
    .line 69
    new-instance v4, Ljava/io/File;

    .line 70
    .line 71
    sget-object v8, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    .line 72
    .line 73
    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    const/4 v7, 0x0

    .line 78
    const/4 v4, 0x0

    .line 79
    :goto_0
    move-object/from16 v16, v4

    .line 80
    .line 81
    if-nez v16, :cond_2

    .line 82
    .line 83
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v0, " : "

    .line 92
    .line 93
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v0, " ]"

    .line 100
    .line 101
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    :cond_2
    move-object/from16 v8, p1

    .line 112
    .line 113
    move-wide/from16 v9, p2

    .line 114
    .line 115
    move/from16 v11, p4

    .line 116
    .line 117
    move-wide/from16 v12, p7

    .line 118
    .line 119
    move-wide/from16 v14, p9

    .line 120
    .line 121
    invoke-static/range {v8 .. v16}, Landroid/app/backup/FullBackup;->restoreFile(Landroid/os/ParcelFileDescriptor;JIJJLjava/io/File;)V

    .line 122
    .line 123
    .line 124
    if-eqz v7, :cond_3

    .line 125
    .line 126
    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    check-cast v0, Landroid/app/IWallpaperManager;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 131
    .line 132
    if-eqz v0, :cond_3

    .line 133
    .line 134
    :try_start_1
    invoke-interface {v0}, Landroid/app/IWallpaperManager;->settingsRestored()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :catch_0
    move-exception v0

    .line 139
    move-object v1, v0

    .line 140
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 153
    .line 154
    .line 155
    goto :goto_1

    .line 156
    :catch_1
    if-eqz v7, :cond_3

    .line 157
    .line 158
    new-instance v0, Ljava/io/File;

    .line 159
    .line 160
    sget-object v1, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    .line 161
    .line 162
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 166
    .line 167
    .line 168
    new-instance v0, Ljava/io/File;

    .line 169
    .line 170
    sget-object v1, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    .line 171
    .line 172
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 176
    .line 177
    .line 178
    :cond_3
    :goto_1
    return-void
.end method
