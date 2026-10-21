.class public Landroid/app/backup/FullBackup;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/FullBackup$BackupScheme;
    }
.end annotation


# static fields
.field public static final APK_TREE_TOKEN:Ljava/lang/String; = "a"

.field public static final APPS_PREFIX:Ljava/lang/String; = "apps/"

.field public static final CACHE_TREE_TOKEN:Ljava/lang/String; = "c"

.field public static final CONF_TOKEN_INTENT_EXTRA:Ljava/lang/String; = "conftoken"

.field public static final DATABASE_TREE_TOKEN:Ljava/lang/String; = "db"

.field public static final DEVICE_CACHE_TREE_TOKEN:Ljava/lang/String; = "d_c"

.field public static final DEVICE_DATABASE_TREE_TOKEN:Ljava/lang/String; = "d_db"

.field public static final DEVICE_FILES_TREE_TOKEN:Ljava/lang/String; = "d_f"

.field public static final DEVICE_NO_BACKUP_TREE_TOKEN:Ljava/lang/String; = "d_nb"

.field public static final DEVICE_ROOT_TREE_TOKEN:Ljava/lang/String; = "d_r"

.field public static final DEVICE_SHAREDPREFS_TREE_TOKEN:Ljava/lang/String; = "d_sp"

.field public static final FILES_TREE_TOKEN:Ljava/lang/String; = "f"

.field public static final FULL_BACKUP_INTENT_ACTION:Ljava/lang/String; = "fullback"

.field public static final FULL_RESTORE_INTENT_ACTION:Ljava/lang/String; = "fullrest"

.field public static final KEY_VALUE_DATA_TOKEN:Ljava/lang/String; = "k"

.field public static final MANAGED_EXTERNAL_TREE_TOKEN:Ljava/lang/String; = "ef"

.field public static final NO_BACKUP_TREE_TOKEN:Ljava/lang/String; = "nb"

.field public static final OBB_TREE_TOKEN:Ljava/lang/String; = "obb"

.field public static final ROOT_TREE_TOKEN:Ljava/lang/String; = "r"

.field public static final SHAREDPREFS_TREE_TOKEN:Ljava/lang/String; = "sp"

.field public static final SHARED_PREFIX:Ljava/lang/String; = "shared/"

.field public static final SHARED_STORAGE_TOKEN:Ljava/lang/String; = "shared"

.field static final TAG:Ljava/lang/String; = "FullBackup"

.field static final TAG_XML_PARSER:Ljava/lang/String; = "BackupXmlParserLogging"

.field private static final kPackageBackupSchemeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/backup/FullBackup$BackupScheme;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/app/backup/FullBackup;->kPackageBackupSchemeMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I
.end method

.method public static declared-synchronized getBackupScheme(Landroid/content/Context;)Landroid/app/backup/FullBackup$BackupScheme;
    .locals 3

    .line 1
    const-class v0, Landroid/app/backup/FullBackup;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Landroid/app/backup/FullBackup;->kPackageBackupSchemeMap:Ljava/util/Map;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    check-cast v2, Landroid/app/backup/FullBackup$BackupScheme;

    .line 15
    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    new-instance v2, Landroid/app/backup/FullBackup$BackupScheme;

    .line 19
    .line 20
    invoke-direct {v2, p0}, Landroid/app/backup/FullBackup$BackupScheme;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    :cond_0
    monitor-exit v0

    .line 31
    return-object v2

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    monitor-exit v0

    .line 34
    throw p0
.end method

.method public static getBackupSchemeForTest(Landroid/content/Context;)Landroid/app/backup/FullBackup$BackupScheme;
    .locals 1

    .line 1
    new-instance v0, Landroid/app/backup/FullBackup$BackupScheme;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroid/app/backup/FullBackup$BackupScheme;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    new-instance p0, Landroid/util/ArraySet;

    .line 7
    .line 8
    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p0, v0, Landroid/app/backup/FullBackup$BackupScheme;->mExcludes:Landroid/util/ArraySet;

    .line 12
    .line 13
    new-instance p0, Landroid/util/ArrayMap;

    .line 14
    .line 15
    invoke-direct {p0}, Landroid/util/ArrayMap;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p0, v0, Landroid/app/backup/FullBackup$BackupScheme;->mIncludes:Ljava/util/Map;

    .line 19
    .line 20
    return-object v0
.end method

.method public static restoreFile(Landroid/os/ParcelFileDescriptor;JIJJLjava/io/File;)V
    .locals 15

    .line 1
    move-object/from16 v1, p8

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    move/from16 v4, p3

    .line 7
    .line 8
    if-ne v4, v0, :cond_0

    .line 9
    .line 10
    if-eqz v1, :cond_7

    .line 11
    .line 12
    invoke-virtual/range {p8 .. p8}, Ljava/io/File;->mkdirs()Z

    .line 13
    .line 14
    .line 15
    goto/16 :goto_5

    .line 16
    .line 17
    :cond_0
    const/4 v4, 0x0

    .line 18
    const-string v5, "FullBackup"

    .line 19
    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    :try_start_0
    invoke-virtual/range {p8 .. p8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    if-nez v6, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 33
    .line 34
    .line 35
    :cond_1
    new-instance v0, Ljava/io/FileOutputStream;

    .line 36
    .line 37
    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    new-instance v6, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v7, "Unable to create/open file "

    .line 45
    .line 46
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual/range {p8 .. p8}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    .line 62
    .line 63
    :cond_2
    move-object v0, v4

    .line 64
    :goto_0
    const v6, 0x8000

    .line 65
    .line 66
    .line 67
    new-array v7, v6, [B

    .line 68
    .line 69
    new-instance v8, Ljava/io/FileInputStream;

    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 72
    .line 73
    .line 74
    move-result-object v9

    .line 75
    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 76
    .line 77
    .line 78
    move-wide/from16 v10, p1

    .line 79
    .line 80
    move-object v9, v0

    .line 81
    :goto_1
    cmp-long v0, v10, v2

    .line 82
    .line 83
    if-lez v0, :cond_6

    .line 84
    .line 85
    int-to-long v12, v6

    .line 86
    cmp-long v0, v10, v12

    .line 87
    .line 88
    if-lez v0, :cond_3

    .line 89
    .line 90
    move v0, v6

    .line 91
    goto :goto_2

    .line 92
    :cond_3
    long-to-int v0, v10

    .line 93
    :goto_2
    const/4 v12, 0x0

    .line 94
    invoke-virtual {v8, v7, v12, v0}, Ljava/io/FileInputStream;->read([BII)I

    .line 95
    .line 96
    .line 97
    move-result v13

    .line 98
    if-gtz v13, :cond_4

    .line 99
    .line 100
    const-string v0, "Incomplete read: expected "

    .line 101
    .line 102
    const-string v4, " but got "

    .line 103
    .line 104
    invoke-static {v0, v10, v11, v4}, Landroid/app/m;->l(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    sub-long v6, p1, v10

    .line 109
    .line 110
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    goto :goto_4

    .line 121
    :cond_4
    if-eqz v9, :cond_5

    .line 122
    .line 123
    :try_start_1
    invoke-virtual {v9, v7, v12, v13}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 124
    .line 125
    .line 126
    goto :goto_3

    .line 127
    :catch_1
    move-exception v0

    .line 128
    move-object v12, v0

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    const-string v14, "Unable to write to file "

    .line 132
    .line 133
    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual/range {p8 .. p8}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v14

    .line 140
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-static {v5, v0, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    .line 149
    .line 150
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 151
    .line 152
    .line 153
    invoke-virtual/range {p8 .. p8}, Ljava/io/File;->delete()Z

    .line 154
    .line 155
    .line 156
    move-object v9, v4

    .line 157
    :cond_5
    :goto_3
    int-to-long v12, v13

    .line 158
    sub-long/2addr v10, v12

    .line 159
    goto :goto_1

    .line 160
    :cond_6
    :goto_4
    if-eqz v9, :cond_7

    .line 161
    .line 162
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 163
    .line 164
    .line 165
    :cond_7
    :goto_5
    cmp-long v0, p4, v2

    .line 166
    .line 167
    if-ltz v0, :cond_8

    .line 168
    .line 169
    if-eqz v1, :cond_8

    .line 170
    .line 171
    const-wide/16 v2, 0x1c0

    .line 172
    .line 173
    and-long v2, p4, v2

    .line 174
    .line 175
    :try_start_2
    invoke-virtual/range {p8 .. p8}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    long-to-int v2, v2

    .line 180
    invoke-static {v0, v2}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_2

    .line 181
    .line 182
    .line 183
    goto :goto_6

    .line 184
    :catch_2
    move-exception v0

    .line 185
    invoke-static {v0}, Landroid/app/backup/a;->t(Landroid/system/ErrnoException;)V

    .line 186
    .line 187
    .line 188
    :goto_6
    move-wide/from16 v2, p6

    .line 189
    .line 190
    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    .line 191
    .line 192
    .line 193
    :cond_8
    return-void
.end method
