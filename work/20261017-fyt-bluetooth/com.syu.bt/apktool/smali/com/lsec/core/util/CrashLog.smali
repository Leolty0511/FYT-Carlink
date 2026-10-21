.class public Lcom/lsec/core/util/CrashLog;
.super Ljava/lang/Object;
.source "CrashLog.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field public static final CARSH_DIR_PATH:Ljava/lang/String; = "/sdcard/crash"

.field static mInstance:Lcom/lsec/core/util/CrashLog;


# instance fields
.field mContext:Landroid/content/Context;

.field mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field mVersionCode:Ljava/lang/String;

.field pkgName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lsec/core/util/CrashLog;->mContext:Landroid/content/Context;

    .line 32
    iget-object v0, p0, Lcom/lsec/core/util/CrashLog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lsec/core/util/CrashLog;->pkgName:Ljava/lang/String;

    .line 33
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 34
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lsec/core/util/CrashLog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    sget-object v0, Lcom/lsec/core/util/CrashLog;->mInstance:Lcom/lsec/core/util/CrashLog;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/lsec/core/util/CrashLog;

    invoke-direct {v0, p0}, Lcom/lsec/core/util/CrashLog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lsec/core/util/CrashLog;->mInstance:Lcom/lsec/core/util/CrashLog;

    .line 27
    :cond_0
    sget-object v0, Lcom/lsec/core/util/CrashLog;->mInstance:Lcom/lsec/core/util/CrashLog;

    return-object v0
.end method

.method private handleException(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 50
    if-nez p1, :cond_0

    .line 51
    const/4 v0, 0x0

    .line 55
    :goto_0
    return v0

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/lsec/core/util/CrashLog;->collectInfo()V

    .line 54
    invoke-virtual {p0, p1}, Lcom/lsec/core/util/CrashLog;->saveCrashException(Ljava/lang/Throwable;)V

    .line 55
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method collectInfo()V
    .locals 4

    .prologue
    .line 60
    :try_start_0
    iget-object v2, p0, Lcom/lsec/core/util/CrashLog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 61
    .local v1, "pm":Landroid/content/pm/PackageManager;
    iget-object v2, p0, Lcom/lsec/core/util/CrashLog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 62
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lsec/core/util/CrashLog;->mVersionCode:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v0    # "pi":Landroid/content/pm/PackageInfo;
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method saveCrashException(Ljava/lang/Throwable;)V
    .locals 14
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 70
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 71
    .local v10, "sb":Ljava/lang/StringBuffer;
    new-instance v11, Ljava/io/StringWriter;

    invoke-direct {v11}, Ljava/io/StringWriter;-><init>()V

    .line 72
    .local v11, "writer":Ljava/io/Writer;
    const/4 v7, 0x0

    .line 74
    .local v7, "printWriter":Ljava/io/PrintWriter;
    :try_start_0
    new-instance v8, Ljava/io/PrintWriter;

    invoke-direct {v8, v11}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .end local v7    # "printWriter":Ljava/io/PrintWriter;
    .local v8, "printWriter":Ljava/io/PrintWriter;
    :try_start_1
    invoke-virtual {p1, v8}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 76
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-result-object v0

    .line 77
    .local v0, "cause":Ljava/lang/Throwable;
    :goto_0
    if-nez v0, :cond_3

    .line 85
    if-eqz v8, :cond_5

    .line 86
    :try_start_2
    invoke-virtual {v8}, Ljava/io/PrintWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object v7, v8

    .line 92
    .end local v0    # "cause":Ljava/lang/Throwable;
    .end local v8    # "printWriter":Ljava/io/PrintWriter;
    .restart local v7    # "printWriter":Ljava/io/PrintWriter;
    :cond_0
    :goto_1
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 93
    .local v9, "result":Ljava/lang/String;
    invoke-virtual {v10, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    new-instance v1, Ljava/io/File;

    const-string v12, "/sdcard/crash"

    invoke-direct {v1, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 96
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_1

    .line 97
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 99
    :cond_1
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "crash-"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, p0, Lcom/lsec/core/util/CrashLog;->pkgName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/lsec/core/util/CrashLog;->mVersionCode:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".txt"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 100
    .local v4, "fileName":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "/sdcard/crash/"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v3, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 118
    :cond_2
    :goto_2
    return-void

    .line 78
    .end local v1    # "dir":Ljava/io/File;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v7    # "printWriter":Ljava/io/PrintWriter;
    .end local v9    # "result":Ljava/lang/String;
    .restart local v0    # "cause":Ljava/lang/Throwable;
    .restart local v8    # "printWriter":Ljava/io/PrintWriter;
    :cond_3
    :try_start_3
    invoke-virtual {v0, v8}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 79
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v0

    goto :goto_0

    .line 81
    .end local v0    # "cause":Ljava/lang/Throwable;
    .end local v8    # "printWriter":Ljava/io/PrintWriter;
    .restart local v7    # "printWriter":Ljava/io/PrintWriter;
    :catch_0
    move-exception v2

    .line 82
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 85
    if-eqz v7, :cond_0

    .line 86
    :try_start_5
    invoke-virtual {v7}, Ljava/io/PrintWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 87
    :catch_1
    move-exception v2

    .line 88
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 83
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    .line 85
    :goto_4
    if-eqz v7, :cond_4

    .line 86
    :try_start_6
    invoke-virtual {v7}, Ljava/io/PrintWriter;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 90
    :cond_4
    :goto_5
    throw v12

    .line 87
    :catch_2
    move-exception v2

    .line 88
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 87
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v7    # "printWriter":Ljava/io/PrintWriter;
    .restart local v0    # "cause":Ljava/lang/Throwable;
    .restart local v8    # "printWriter":Ljava/io/PrintWriter;
    :catch_3
    move-exception v2

    .line 88
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    move-object v7, v8

    .end local v8    # "printWriter":Ljava/io/PrintWriter;
    .restart local v7    # "printWriter":Ljava/io/PrintWriter;
    goto :goto_1

    .line 104
    .end local v0    # "cause":Ljava/lang/Throwable;
    .restart local v1    # "dir":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "fileName":Ljava/lang/String;
    .restart local v9    # "result":Ljava/lang/String;
    :cond_6
    const/4 v5, 0x0

    .line 106
    .local v5, "fos":Ljava/io/FileOutputStream;
    :try_start_7
    new-instance v6, Ljava/io/FileOutputStream;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "/sdcard/crash/"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v6, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 107
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .local v6, "fos":Ljava/io/FileOutputStream;
    :try_start_8
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 112
    if-eqz v6, :cond_8

    .line 113
    :try_start_9
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    move-object v5, v6

    .line 114
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 108
    :catch_4
    move-exception v2

    .line 109
    .restart local v2    # "e":Ljava/lang/Exception;
    :goto_6
    :try_start_a
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 112
    if-eqz v5, :cond_2

    .line 113
    :try_start_b
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_2

    .line 114
    :catch_5
    move-exception v2

    .line 115
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 110
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v12

    .line 112
    :goto_7
    if-eqz v5, :cond_7

    .line 113
    :try_start_c
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    .line 117
    :cond_7
    :goto_8
    throw v12

    .line 114
    :catch_6
    move-exception v2

    .line 115
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 114
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v2

    .line 115
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_8
    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 110
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v12

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_7

    .line 108
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v2

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_6

    .line 83
    .end local v1    # "dir":Ljava/io/File;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "printWriter":Ljava/io/PrintWriter;
    .end local v9    # "result":Ljava/lang/String;
    .restart local v8    # "printWriter":Ljava/io/PrintWriter;
    :catchall_3
    move-exception v12

    move-object v7, v8

    .end local v8    # "printWriter":Ljava/io/PrintWriter;
    .restart local v7    # "printWriter":Ljava/io/PrintWriter;
    goto :goto_4

    .line 81
    .end local v7    # "printWriter":Ljava/io/PrintWriter;
    .restart local v8    # "printWriter":Ljava/io/PrintWriter;
    :catch_9
    move-exception v2

    move-object v7, v8

    .end local v8    # "printWriter":Ljava/io/PrintWriter;
    .restart local v7    # "printWriter":Ljava/io/PrintWriter;
    goto :goto_3
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 38
    invoke-direct {p0, p2}, Lcom/lsec/core/util/CrashLog;->handleException(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/lsec/core/util/CrashLog;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-nez v0, :cond_0

    .line 40
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/lsec/core/util/CrashLog;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/lsec/core/util/CrashLog;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 47
    :goto_0
    return-void

    .line 44
    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 45
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method
