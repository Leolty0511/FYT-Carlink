.class public Landroid/os/RecoverySystem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/RecoverySystem$ProgressListener;
    }
.end annotation


# static fields
.field private static final ACTION_EUICC_FACTORY_RESET:Ljava/lang/String; = "com.android.internal.action.EUICC_FACTORY_RESET"

.field public static final BLOCK_MAP_FILE:Ljava/io/File;

.field private static final DEFAULT_EUICC_FACTORY_RESET_TIMEOUT_MILLIS:J = 0x7530L

.field private static final DEFAULT_KEYSTORE:Ljava/io/File;

.field private static final LAST_INSTALL_FILE:Ljava/io/File;

.field private static final LAST_PREFIX:Ljava/lang/String; = "last_"

.field private static final LOG_FILE:Ljava/io/File;

.field private static final LOG_FILE_MAX_LENGTH:I = 0x10000

.field private static final MAX_EUICC_FACTORY_RESET_TIMEOUT_MILLIS:J = 0xea60L

.field private static final MIN_EUICC_FACTORY_RESET_TIMEOUT_MILLIS:J = 0x1388L

.field private static final PUBLISH_PROGRESS_INTERVAL_MS:J = 0x1f4L

.field private static final RECOVERY_DIR:Ljava/io/File;

.field private static final TAG:Ljava/lang/String; = "RecoverySystem"

.field public static final UNCRYPT_PACKAGE_FILE:Ljava/io/File;

.field public static final UNCRYPT_STATUS_FILE:Ljava/io/File;

.field private static final sRequestLock:Ljava/lang/Object;


# instance fields
.field private final mService:Landroid/os/IRecoverySystem;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    const-string v1, "/system/etc/security/otacerts.zip"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroid/os/RecoverySystem;->DEFAULT_KEYSTORE:Ljava/io/File;

    .line 9
    .line 10
    new-instance v0, Ljava/io/File;

    .line 11
    .line 12
    const-string v1, "/cache/recovery"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    .line 18
    .line 19
    new-instance v1, Ljava/io/File;

    .line 20
    .line 21
    const-string/jumbo v2, "log"

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sput-object v1, Landroid/os/RecoverySystem;->LOG_FILE:Ljava/io/File;

    .line 28
    .line 29
    new-instance v1, Ljava/io/File;

    .line 30
    .line 31
    const-string/jumbo v2, "last_install"

    .line 32
    .line 33
    .line 34
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    sput-object v1, Landroid/os/RecoverySystem;->LAST_INSTALL_FILE:Ljava/io/File;

    .line 38
    .line 39
    new-instance v1, Ljava/io/File;

    .line 40
    .line 41
    const-string v2, "block.map"

    .line 42
    .line 43
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    sput-object v1, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    .line 47
    .line 48
    new-instance v1, Ljava/io/File;

    .line 49
    .line 50
    const-string/jumbo v2, "uncrypt_file"

    .line 51
    .line 52
    .line 53
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    sput-object v1, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    .line 57
    .line 58
    new-instance v1, Ljava/io/File;

    .line 59
    .line 60
    const-string/jumbo v2, "uncrypt_status"

    .line 61
    .line 62
    .line 63
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    sput-object v1, Landroid/os/RecoverySystem;->UNCRYPT_STATUS_FILE:Ljava/io/File;

    .line 67
    .line 68
    new-instance v0, Ljava/lang/Object;

    .line 69
    .line 70
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 71
    .line 72
    .line 73
    sput-object v0, Landroid/os/RecoverySystem;->sRequestLock:Ljava/lang/Object;

    .line 74
    .line 75
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    return-void
.end method

.method public constructor <init>(Landroid/os/IRecoverySystem;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    return-void
.end method

.method private static varargs bootCommand(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 5

    .line 1
    sget-object v0, Landroid/os/RecoverySystem;->LOG_FILE:Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    array-length v1, p1

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ge v2, v1, :cond_1

    .line 14
    .line 15
    aget-object v3, p1, v2

    .line 16
    .line 17
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-nez v4, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v3, "\n"

    .line 27
    .line 28
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const-string/jumbo p1, "recovery"

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    check-cast p0, Landroid/os/RecoverySystem;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-direct {p0, p1}, Landroid/os/RecoverySystem;->rebootRecoveryWithCommand(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    new-instance p0, Ljava/io/IOException;

    .line 51
    .line 52
    const-string p1, "Reboot failed (no permissions?)"

    .line 53
    .line 54
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p0
.end method

.method public static cancelScheduledUpdate(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string/jumbo v0, "recovery"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Landroid/os/RecoverySystem;

    .line 9
    .line 10
    invoke-direct {p0}, Landroid/os/RecoverySystem;->clearBcb()Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    new-instance p0, Ljava/io/IOException;

    .line 18
    .line 19
    const-string v0, "cancel scheduled update failed"

    .line 20
    .line 21
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p0
.end method

.method private clearBcb()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v0}, Landroid/os/IRecoverySystem;->clearBcb()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method private static getTrustedCerts(Ljava/io/File;)Ljava/util/HashSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    sget-object p0, Landroid/os/RecoverySystem;->DEFAULT_KEYSTORE:Ljava/io/File;

    .line 9
    .line 10
    :cond_0
    new-instance v1, Ljava/util/zip/ZipFile;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 13
    .line 14
    .line 15
    :try_start_0
    const-string p0, "X.509"

    .line 16
    .line 17
    invoke-static {p0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Ljava/util/zip/ZipEntry;

    .line 36
    .line 37
    invoke-virtual {v1, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    .line 38
    .line 39
    .line 40
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 41
    :try_start_1
    invoke-virtual {p0, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 46
    .line 47
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    .line 49
    .line 50
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 56
    .line 57
    .line 58
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 59
    :cond_1
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    .line 60
    .line 61
    .line 62
    return-object v0

    .line 63
    :catchall_1
    move-exception p0

    .line 64
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    .line 65
    .line 66
    .line 67
    throw p0
.end method

.method public static handleAftermath(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "RecoverySystem"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    sget-object v2, Landroid/os/RecoverySystem;->LOG_FILE:Ljava/io/File;

    .line 5
    .line 6
    const-string v3, "...\n"

    .line 7
    .line 8
    const/high16 v4, -0x10000

    .line 9
    .line 10
    invoke-static {v2, v4, v3}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    goto :goto_1

    .line 15
    :catch_0
    move-exception v2

    .line 16
    const-string v3, "Error reading recovery log"

    .line 17
    .line 18
    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_1
    const-string v2, "No recovery log file"

    .line 23
    .line 24
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :goto_0
    move-object v2, v1

    .line 28
    :goto_1
    if-eqz v2, :cond_0

    .line 29
    .line 30
    invoke-static {p0}, Landroid/os/RecoverySystem;->parseLastInstallLog(Landroid/content/Context;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    sget-object p0, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    const/4 v3, 0x0

    .line 40
    if-nez p0, :cond_2

    .line 41
    .line 42
    sget-object v4, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    .line 43
    .line 44
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-eqz v5, :cond_2

    .line 49
    .line 50
    :try_start_1
    invoke-static {v4, v3, v1}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 54
    goto :goto_2

    .line 55
    :catch_2
    move-exception v4

    .line 56
    const-string v5, "Error reading uncrypt file"

    .line 57
    .line 58
    invoke-static {v0, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    .line 60
    .line 61
    :goto_2
    if-eqz v1, :cond_2

    .line 62
    .line 63
    const-string v4, "/data"

    .line 64
    .line 65
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-eqz v4, :cond_2

    .line 70
    .line 71
    sget-object v4, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    .line 72
    .line 73
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-eqz v4, :cond_1

    .line 78
    .line 79
    const-string v4, "Deleted: "

    .line 80
    .line 81
    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_1
    const-string v4, "Can\'t delete: "

    .line 90
    .line 91
    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    :cond_2
    :goto_3
    sget-object v0, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    :goto_4
    if-eqz v0, :cond_6

    .line 105
    .line 106
    array-length v1, v0

    .line 107
    if-ge v3, v1, :cond_6

    .line 108
    .line 109
    aget-object v1, v0, v3

    .line 110
    .line 111
    const-string/jumbo v4, "last_"

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    if-eqz v1, :cond_3

    .line 119
    .line 120
    goto :goto_5

    .line 121
    :cond_3
    if-eqz p0, :cond_4

    .line 122
    .line 123
    aget-object v1, v0, v3

    .line 124
    .line 125
    sget-object v4, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    .line 126
    .line 127
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-eqz v1, :cond_4

    .line 136
    .line 137
    goto :goto_5

    .line 138
    :cond_4
    if-eqz p0, :cond_5

    .line 139
    .line 140
    aget-object v1, v0, v3

    .line 141
    .line 142
    sget-object v4, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    .line 143
    .line 144
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    if-eqz v1, :cond_5

    .line 153
    .line 154
    goto :goto_5

    .line 155
    :cond_5
    new-instance v1, Ljava/io/File;

    .line 156
    .line 157
    sget-object v4, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    .line 158
    .line 159
    aget-object v5, v0, v3

    .line 160
    .line 161
    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-static {v1}, Landroid/os/RecoverySystem;->recursiveDelete(Ljava/io/File;)V

    .line 165
    .line 166
    .line 167
    :goto_5
    add-int/lit8 v3, v3, 0x1

    .line 168
    .line 169
    goto :goto_4

    .line 170
    :cond_6
    return-object v2
.end method

.method public static installPackage(Landroid/content/Context;Ljava/io/File;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Landroid/os/RecoverySystem;->installPackage(Landroid/content/Context;Ljava/io/File;Z)V

    return-void
.end method

.method public static installPackage(Landroid/content/Context;Ljava/io/File;Z)V
    .locals 9

    const-string v0, "Error setting permission for "

    const-string v1, "\n"

    const-string v2, "--locale="

    const-string v3, "--update_package="

    const-string v4, "!!! REBOOTING TO INSTALL "

    .line 2
    sget-object v5, Landroid/os/RecoverySystem;->sRequestLock:Ljava/lang/Object;

    monitor-enter v5

    .line 3
    :try_start_0
    sget-object v6, Landroid/os/RecoverySystem;->LOG_FILE:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 4
    sget-object v6, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 5
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    const-string v7, "RecoverySystem"

    .line 6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " !!!"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "_s.zip"

    .line 7
    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    const-string v7, "/data/"

    .line 8
    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz p2, :cond_1

    .line 9
    sget-object p1, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "RecoverySystem"

    const-string p1, "Package claimed to have been processed but failed to find the block map file."

    .line 10
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Failed to find block map file"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :cond_1
    new-instance p2, Ljava/io/FileWriter;

    invoke-direct {p2, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    :try_start_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :try_start_2
    invoke-virtual {p2}, Ljava/io/Writer;->close()V

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 15
    invoke-virtual {v6, p2, p1}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 16
    invoke-virtual {v6, p2, p1}, Ljava/io/File;->setWritable(ZZ)Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    const-string p1, "RecoverySystem"

    .line 17
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    :cond_3
    sget-object p1, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :goto_0
    const-string p1, "@/cache/recovery/block.map"

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 19
    invoke-virtual {p2}, Ljava/io/Writer;->close()V

    throw p0

    .line 20
    :cond_4
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 21
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz v4, :cond_5

    .line 23
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "--security\n"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_5
    const-string/jumbo p2, "recovery"

    .line 24
    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/RecoverySystem;

    .line 25
    invoke-direct {p2, p1}, Landroid/os/RecoverySystem;->setupBcb(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string/jumbo p1, "power"

    .line 26
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const-string/jumbo p2, "recovery-update"

    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "window"

    .line 28
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 29
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getState()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_6

    const-string/jumbo p2, "recovery-update,quiescent"

    .line 30
    :cond_6
    invoke-virtual {p1, p2}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 31
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Reboot failed (no permissions?)"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 32
    :cond_7
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Setup BCB failed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_1
    move-exception p0

    .line 33
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method private static parseLastInstallLog(Landroid/content/Context;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "RecoverySystem"

    .line 4
    .line 5
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    .line 6
    .line 7
    new-instance v3, Ljava/io/FileReader;

    .line 8
    .line 9
    sget-object v4, Landroid/os/RecoverySystem;->LAST_INSTALL_FILE:Ljava/io/File;

    .line 10
    .line 11
    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 15
    .line 16
    .line 17
    const/4 v3, -0x1

    .line 18
    move v4, v3

    .line 19
    move v5, v4

    .line 20
    move v6, v5

    .line 21
    move v7, v6

    .line 22
    move v8, v7

    .line 23
    move v9, v8

    .line 24
    move v10, v9

    .line 25
    move v11, v10

    .line 26
    move v12, v11

    .line 27
    move v13, v12

    .line 28
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v14

    .line 32
    if-eqz v14, :cond_11

    .line 33
    .line 34
    const/16 v15, 0x3a

    .line 35
    .line 36
    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(I)I

    .line 37
    .line 38
    .line 39
    move-result v15

    .line 40
    if-eq v15, v3, :cond_10

    .line 41
    .line 42
    add-int/lit8 v15, v15, 0x1

    .line 43
    .line 44
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-lt v15, v3, :cond_0

    .line 49
    .line 50
    goto/16 :goto_7

    .line 51
    .line 52
    :cond_0
    invoke-virtual {v14, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 60
    move-object v15, v2

    .line 61
    :try_start_2
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 62
    .line 63
    .line 64
    move-result-wide v2
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    move-object/from16 v16, v15

    .line 66
    .line 67
    :try_start_3
    const-string v15, "bytes"

    .line 68
    .line 69
    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result v15

    .line 73
    if-eqz v15, :cond_2

    .line 74
    .line 75
    const-wide/32 v17, 0x100000

    .line 76
    .line 77
    .line 78
    div-long v2, v2, v17
    :try_end_3
    .catch Ljava/lang/ArithmeticException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 79
    .line 80
    long-to-int v15, v2

    .line 81
    move/from16 v17, v12

    .line 82
    .line 83
    move/from16 v18, v13

    .line 84
    .line 85
    int-to-long v12, v15

    .line 86
    cmp-long v2, v2, v12

    .line 87
    .line 88
    if-nez v2, :cond_1

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_1
    :try_start_4
    new-instance v2, Ljava/lang/ArithmeticException;

    .line 92
    .line 93
    invoke-direct {v2}, Ljava/lang/ArithmeticException;-><init>()V

    .line 94
    .line 95
    .line 96
    throw v2
    :try_end_4
    .catch Ljava/lang/ArithmeticException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 97
    :cond_2
    move/from16 v17, v12

    .line 98
    .line 99
    move/from16 v18, v13

    .line 100
    .line 101
    long-to-int v15, v2

    .line 102
    int-to-long v12, v15

    .line 103
    cmp-long v2, v2, v12

    .line 104
    .line 105
    if-nez v2, :cond_f

    .line 106
    .line 107
    :goto_1
    :try_start_5
    const-string/jumbo v2, "time"

    .line 108
    .line 109
    .line 110
    invoke-virtual {v14, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-eqz v2, :cond_4

    .line 115
    .line 116
    move v4, v15

    .line 117
    :cond_3
    :goto_2
    move/from16 v12, v17

    .line 118
    .line 119
    :goto_3
    move/from16 v13, v18

    .line 120
    .line 121
    goto/16 :goto_6

    .line 122
    .line 123
    :cond_4
    const-string/jumbo v2, "uncrypt_time"

    .line 124
    .line 125
    .line 126
    invoke-virtual {v14, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    if-eqz v2, :cond_5

    .line 131
    .line 132
    move v5, v15

    .line 133
    goto :goto_2

    .line 134
    :cond_5
    const-string/jumbo v2, "source_build"

    .line 135
    .line 136
    .line 137
    invoke-virtual {v14, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    if-eqz v2, :cond_6

    .line 142
    .line 143
    move v6, v15

    .line 144
    goto :goto_2

    .line 145
    :cond_6
    const-string v2, "bytes_written"

    .line 146
    .line 147
    invoke-virtual {v14, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    if-eqz v2, :cond_8

    .line 152
    .line 153
    const/4 v2, -0x1

    .line 154
    if-ne v7, v2, :cond_7

    .line 155
    .line 156
    goto :goto_4

    .line 157
    :cond_7
    add-int/2addr v15, v7

    .line 158
    :goto_4
    move v7, v15

    .line 159
    goto :goto_2

    .line 160
    :cond_8
    const/4 v2, -0x1

    .line 161
    const-string v3, "bytes_stashed"

    .line 162
    .line 163
    invoke-virtual {v14, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    if-eqz v3, :cond_a

    .line 168
    .line 169
    if-ne v8, v2, :cond_9

    .line 170
    .line 171
    goto :goto_5

    .line 172
    :cond_9
    add-int/2addr v15, v8

    .line 173
    :goto_5
    move v8, v15

    .line 174
    goto :goto_2

    .line 175
    :cond_a
    const-string/jumbo v2, "temperature_start"

    .line 176
    .line 177
    .line 178
    invoke-virtual {v14, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    if-eqz v2, :cond_b

    .line 183
    .line 184
    move v9, v15

    .line 185
    goto :goto_2

    .line 186
    :cond_b
    const-string/jumbo v2, "temperature_end"

    .line 187
    .line 188
    .line 189
    invoke-virtual {v14, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    if-eqz v2, :cond_c

    .line 194
    .line 195
    move v10, v15

    .line 196
    goto :goto_2

    .line 197
    :cond_c
    const-string/jumbo v2, "temperature_max"

    .line 198
    .line 199
    .line 200
    invoke-virtual {v14, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 201
    .line 202
    .line 203
    move-result v2

    .line 204
    if-eqz v2, :cond_d

    .line 205
    .line 206
    move v11, v15

    .line 207
    goto :goto_2

    .line 208
    :cond_d
    const-string v2, "error"

    .line 209
    .line 210
    invoke-virtual {v14, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 211
    .line 212
    .line 213
    move-result v2

    .line 214
    if-eqz v2, :cond_e

    .line 215
    .line 216
    move v12, v15

    .line 217
    goto :goto_3

    .line 218
    :cond_e
    const-string v2, "cause"

    .line 219
    .line 220
    invoke-virtual {v14, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 221
    .line 222
    .line 223
    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 224
    if-eqz v2, :cond_3

    .line 225
    .line 226
    move v13, v15

    .line 227
    move/from16 v12, v17

    .line 228
    .line 229
    :goto_6
    move-object/from16 v2, v16

    .line 230
    .line 231
    goto :goto_9

    .line 232
    :cond_f
    :try_start_6
    new-instance v2, Ljava/lang/ArithmeticException;

    .line 233
    .line 234
    invoke-direct {v2}, Ljava/lang/ArithmeticException;-><init>()V

    .line 235
    .line 236
    .line 237
    throw v2
    :try_end_6
    .catch Ljava/lang/ArithmeticException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 238
    :catch_0
    move/from16 v17, v12

    .line 239
    .line 240
    move/from16 v18, v13

    .line 241
    .line 242
    :catch_1
    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 243
    .line 244
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    .line 246
    .line 247
    const-string v3, "Number overflows in "

    .line 248
    .line 249
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    .line 261
    .line 262
    goto :goto_8

    .line 263
    :catchall_0
    move-exception v0

    .line 264
    move-object/from16 v16, v15

    .line 265
    .line 266
    goto/16 :goto_b

    .line 267
    .line 268
    :catch_2
    move/from16 v17, v12

    .line 269
    .line 270
    move/from16 v18, v13

    .line 271
    .line 272
    move-object/from16 v16, v15

    .line 273
    .line 274
    new-instance v2, Ljava/lang/StringBuilder;

    .line 275
    .line 276
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 277
    .line 278
    .line 279
    const-string v3, "Failed to parse numbers in "

    .line 280
    .line 281
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v2

    .line 291
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    .line 293
    .line 294
    goto :goto_8

    .line 295
    :cond_10
    :goto_7
    move-object/from16 v16, v2

    .line 296
    .line 297
    move/from16 v17, v12

    .line 298
    .line 299
    move/from16 v18, v13

    .line 300
    .line 301
    :goto_8
    move-object/from16 v2, v16

    .line 302
    .line 303
    move/from16 v12, v17

    .line 304
    .line 305
    move/from16 v13, v18

    .line 306
    .line 307
    :goto_9
    const/4 v3, -0x1

    .line 308
    goto/16 :goto_0

    .line 309
    .line 310
    :cond_11
    move-object/from16 v16, v2

    .line 311
    .line 312
    move v2, v3

    .line 313
    move/from16 v17, v12

    .line 314
    .line 315
    move/from16 v18, v13

    .line 316
    .line 317
    if-eq v4, v2, :cond_12

    .line 318
    .line 319
    const-string/jumbo v3, "ota_time_total"

    .line 320
    .line 321
    .line 322
    invoke-static {v0, v3, v4}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 323
    .line 324
    .line 325
    goto :goto_a

    .line 326
    :catchall_1
    move-exception v0

    .line 327
    goto :goto_b

    .line 328
    :cond_12
    :goto_a
    if-eq v5, v2, :cond_13

    .line 329
    .line 330
    const-string/jumbo v3, "ota_uncrypt_time"

    .line 331
    .line 332
    .line 333
    invoke-static {v0, v3, v5}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 334
    .line 335
    .line 336
    :cond_13
    if-eq v6, v2, :cond_14

    .line 337
    .line 338
    const-string/jumbo v3, "ota_source_version"

    .line 339
    .line 340
    .line 341
    invoke-static {v0, v3, v6}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 342
    .line 343
    .line 344
    :cond_14
    if-eq v7, v2, :cond_15

    .line 345
    .line 346
    const-string/jumbo v3, "ota_written_in_MiBs"

    .line 347
    .line 348
    .line 349
    invoke-static {v0, v3, v7}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 350
    .line 351
    .line 352
    :cond_15
    if-eq v8, v2, :cond_16

    .line 353
    .line 354
    const-string/jumbo v3, "ota_stashed_in_MiBs"

    .line 355
    .line 356
    .line 357
    invoke-static {v0, v3, v8}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 358
    .line 359
    .line 360
    :cond_16
    if-eq v9, v2, :cond_17

    .line 361
    .line 362
    const-string/jumbo v3, "ota_temperature_start"

    .line 363
    .line 364
    .line 365
    invoke-static {v0, v3, v9}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 366
    .line 367
    .line 368
    :cond_17
    if-eq v10, v2, :cond_18

    .line 369
    .line 370
    const-string/jumbo v3, "ota_temperature_end"

    .line 371
    .line 372
    .line 373
    invoke-static {v0, v3, v10}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 374
    .line 375
    .line 376
    :cond_18
    if-eq v11, v2, :cond_19

    .line 377
    .line 378
    const-string/jumbo v3, "ota_temperature_max"

    .line 379
    .line 380
    .line 381
    invoke-static {v0, v3, v11}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 382
    .line 383
    .line 384
    :cond_19
    move/from16 v3, v17

    .line 385
    .line 386
    if-eq v3, v2, :cond_1a

    .line 387
    .line 388
    const-string/jumbo v4, "ota_non_ab_error_code"

    .line 389
    .line 390
    .line 391
    invoke-static {v0, v4, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 392
    .line 393
    .line 394
    :cond_1a
    move/from16 v3, v18

    .line 395
    .line 396
    if-eq v3, v2, :cond_1b

    .line 397
    .line 398
    const-string/jumbo v2, "ota_non_ab_cause_code"

    .line 399
    .line 400
    .line 401
    invoke-static {v0, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 402
    .line 403
    .line 404
    :cond_1b
    :try_start_8
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 405
    .line 406
    .line 407
    goto :goto_d

    .line 408
    :catchall_2
    move-exception v0

    .line 409
    move-object/from16 v16, v2

    .line 410
    .line 411
    :goto_b
    move-object v2, v0

    .line 412
    :try_start_9
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 413
    :catchall_3
    move-exception v0

    .line 414
    move-object v3, v0

    .line 415
    :try_start_a
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 416
    .line 417
    .line 418
    goto :goto_c

    .line 419
    :catchall_4
    move-exception v0

    .line 420
    move-object v4, v0

    .line 421
    :try_start_b
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 422
    .line 423
    .line 424
    :goto_c
    throw v3
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    .line 425
    :catch_3
    move-exception v0

    .line 426
    const-string v2, "Failed to read lines in last_install"

    .line 427
    .line 428
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 429
    .line 430
    .line 431
    :goto_d
    return-void
.end method

.method public static processPackage(Landroid/content/Context;Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 8
    invoke-static {p0, p1, p2, v0}, Landroid/os/RecoverySystem;->processPackage(Landroid/content/Context;Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;Landroid/os/Handler;)V

    return-void
.end method

.method public static processPackage(Landroid/content/Context;Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    const-string v0, "/data/"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "recovery"

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RecoverySystem;

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    new-instance p3, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-direct {p3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 5
    :goto_0
    new-instance p0, Landroid/os/RecoverySystem$2;

    invoke-direct {p0, p3, p2}, Landroid/os/RecoverySystem$2;-><init>(Landroid/os/Handler;Landroid/os/RecoverySystem$ProgressListener;)V

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    .line 6
    :goto_1
    invoke-direct {v0, p1, p0}, Landroid/os/RecoverySystem;->uncrypt(Ljava/lang/String;Landroid/os/IRecoverySystemProgressListener;)Z

    move-result p0

    if-eqz p0, :cond_3

    return-void

    .line 7
    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string/jumbo p1, "process package failed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static readAndVerifyPackageCompatibilityEntry(Ljava/io/File;)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/util/zip/ZipFile;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string p0, "compatibility.zip"

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    .line 9
    .line 10
    .line 11
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    if-nez p0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_0
    :try_start_1
    invoke-virtual {v0, p0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {p0}, Landroid/os/RecoverySystem;->verifyPackageCompatibility(Ljava/io/InputStream;)Z

    .line 24
    .line 25
    .line 26
    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    .line 28
    .line 29
    .line 30
    return p0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 33
    :catchall_1
    move-exception v1

    .line 34
    :try_start_3
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_2
    move-exception v0

    .line 39
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    throw v1
.end method

.method public static rebootPromptAndWipeUserData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v2, "--reason="

    .line 11
    .line 12
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Landroid/os/RecoverySystem;->sanitizeArg(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-object p1, v1

    .line 28
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v2, "--locale="

    .line 31
    .line 32
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const/4 v2, 0x4

    .line 51
    new-array v2, v2, [Ljava/lang/String;

    .line 52
    .line 53
    const/4 v3, 0x0

    .line 54
    aput-object v1, v2, v3

    .line 55
    .line 56
    const/4 v1, 0x1

    .line 57
    const-string v3, "--prompt_and_wipe_data"

    .line 58
    .line 59
    aput-object v3, v2, v1

    .line 60
    .line 61
    const/4 v1, 0x2

    .line 62
    aput-object p1, v2, v1

    .line 63
    .line 64
    const/4 p1, 0x3

    .line 65
    aput-object v0, v2, p1

    .line 66
    .line 67
    invoke-static {p0, v2}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method private rebootRecoveryWithCommand(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v0, p1}, Landroid/os/IRecoverySystem;->rebootRecoveryWithCommand(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static rebootWipeAb(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v1, "--reason="

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p2}, Landroid/os/RecoverySystem;->sanitizeArg(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p2, 0x0

    .line 27
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string v0, "--wipe_package="

    .line 32
    .line 33
    invoke-static {v0, p1}, Landroid/accessibilityservice/c;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v1, "--locale="

    .line 40
    .line 41
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const/4 v1, 0x4

    .line 60
    new-array v1, v1, [Ljava/lang/String;

    .line 61
    .line 62
    const/4 v2, 0x0

    .line 63
    const-string v3, "--wipe_ab"

    .line 64
    .line 65
    aput-object v3, v1, v2

    .line 66
    .line 67
    const/4 v2, 0x1

    .line 68
    aput-object p1, v1, v2

    .line 69
    .line 70
    const/4 p1, 0x2

    .line 71
    aput-object p2, v1, p1

    .line 72
    .line 73
    const/4 p1, 0x3

    .line 74
    aput-object v0, v1, p1

    .line 75
    .line 76
    invoke-static {p0, v1}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public static rebootWipeCache(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/os/RecoverySystem;->rebootWipeCache(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static rebootWipeCache(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "--reason="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/os/RecoverySystem;->sanitizeArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "--locale="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "--wipe_cache"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 p1, 0x2

    aput-object v0, v1, p1

    .line 5
    invoke-static {p0, v1}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V

    return-void
.end method

.method public static rebootWipeUserData(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, v1}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;ZZ)V

    return-void
.end method

.method public static rebootWipeUserData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0, p1, v0, v0}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;ZZ)V

    return-void
.end method

.method public static rebootWipeUserData(Landroid/content/Context;Z)V
    .locals 2

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, v1}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;ZZ)V

    return-void
.end method

.method public static rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-static {p0, p1, p2, p3, v0}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;ZZ)V

    return-void
.end method

.method public static rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;ZZ)V
    .locals 9

    const-string/jumbo v0, "user"

    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    if-nez p3, :cond_1

    const-string/jumbo p3, "no_factory_reset"

    .line 6
    invoke-virtual {v0, p3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Wiping data is not allowed for this user."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_1
    :goto_0
    new-instance p3, Landroid/os/ConditionVariable;

    invoke-direct {p3}, Landroid/os/ConditionVariable;-><init>()V

    .line 9
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MASTER_CLEAR_NOTIFICATION"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x11000000

    .line 10
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 11
    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const-string v3, "android.permission.MASTER_CLEAR"

    new-instance v4, Landroid/os/RecoverySystem$3;

    invoke-direct {v4, p3}, Landroid/os/RecoverySystem$3;-><init>(Landroid/os/ConditionVariable;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 12
    invoke-virtual {p3}, Landroid/os/ConditionVariable;->block()V

    .line 13
    invoke-static {p0, p4}, Landroid/os/RecoverySystem;->wipeEuiccData(Landroid/content/Context;Z)V

    const/4 p3, 0x0

    if-eqz p1, :cond_2

    const-string p1, "--shutdown_after"

    goto :goto_1

    :cond_2
    move-object p1, p3

    .line 14
    :goto_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_3

    .line 15
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "--reason="

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/os/RecoverySystem;->sanitizeArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 16
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "--locale="

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p4

    invoke-virtual {p4}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p4, 0x4

    new-array p4, p4, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, p4, v0

    const/4 p1, 0x1

    const-string v0, "--wipe_data"

    aput-object v0, p4, p1

    const/4 p1, 0x2

    aput-object p3, p4, p1

    const/4 p1, 0x3

    aput-object p2, p4, p1

    .line 17
    invoke-static {p0, p4}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V

    return-void
.end method

.method private static recursiveDelete(Ljava/io/File;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    if-eqz v0, :cond_0

    .line 13
    .line 14
    array-length v2, v0

    .line 15
    if-ge v1, v2, :cond_0

    .line 16
    .line 17
    new-instance v2, Ljava/io/File;

    .line 18
    .line 19
    aget-object v3, v0, v1

    .line 20
    .line 21
    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v2}, Landroid/os/RecoverySystem;->recursiveDelete(Ljava/io/File;)V

    .line 25
    .line 26
    .line 27
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const-string v1, "RecoverySystem"

    .line 35
    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v2, "Can\'t delete: "

    .line 41
    .line 42
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v2, "Deleted: "

    .line 59
    .line 60
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    :goto_1
    return-void
.end method

.method private static sanitizeArg(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0x3f

    .line 3
    .line 4
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const/16 v0, 0xa

    .line 9
    .line 10
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public static scheduleUpdateOnBoot(Landroid/content/Context;Ljava/io/File;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "_s.zip"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-string v1, "/data/"

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    const-string p1, "@/cache/recovery/block.map"

    .line 20
    .line 21
    :cond_0
    const-string v1, "--update_package="

    .line 22
    .line 23
    const-string v2, "\n"

    .line 24
    .line 25
    invoke-static {v1, p1, v2}, Landroid/accessibilityservice/c;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v3, "--locale="

    .line 32
    .line 33
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v3}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-static {p1, v1}, Landroid/accessibilityservice/c;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    const-string v0, "--security\n"

    .line 61
    .line 62
    invoke-static {p1, v0}, Landroid/accessibilityservice/c;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    :cond_1
    const-string/jumbo v0, "recovery"

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    check-cast p0, Landroid/os/RecoverySystem;

    .line 74
    .line 75
    invoke-direct {p0, p1}, Landroid/os/RecoverySystem;->setupBcb(Ljava/lang/String;)Z

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    if-eqz p0, :cond_2

    .line 80
    .line 81
    return-void

    .line 82
    :cond_2
    new-instance p0, Ljava/io/IOException;

    .line 83
    .line 84
    const-string/jumbo p1, "schedule update on boot failed"

    .line 85
    .line 86
    .line 87
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p0
.end method

.method private setupBcb(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v0, p1}, Landroid/os/IRecoverySystem;->setupBcb(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method private uncrypt(Ljava/lang/String;Landroid/os/IRecoverySystemProgressListener;)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v0, p1, p2}, Landroid/os/IRecoverySystem;->uncrypt(Ljava/lang/String;Landroid/os/IRecoverySystemProgressListener;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public static verifyPackage(Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;Ljava/io/File;)V
    .locals 19

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    .line 4
    .line 5
    .line 6
    move-result-wide v2

    .line 7
    new-instance v9, Ljava/io/RandomAccessFile;

    .line 8
    .line 9
    const-string/jumbo v1, "r"

    .line 10
    .line 11
    .line 12
    move-object/from16 v10, p0

    .line 13
    .line 14
    invoke-direct {v9, v10, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v5

    .line 21
    const/4 v1, 0x0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-interface {v0, v1}, Landroid/os/RecoverySystem$ProgressListener;->onProgress(I)V

    .line 25
    .line 26
    .line 27
    :cond_0
    const-wide/16 v7, 0x6

    .line 28
    .line 29
    sub-long v7, v2, v7

    .line 30
    .line 31
    invoke-virtual {v9, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 32
    .line 33
    .line 34
    const/4 v4, 0x6

    .line 35
    new-array v7, v4, [B

    .line 36
    .line 37
    invoke-virtual {v9, v7}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 38
    .line 39
    .line 40
    const/4 v8, 0x2

    .line 41
    aget-byte v11, v7, v8

    .line 42
    .line 43
    const/4 v12, -0x1

    .line 44
    if-ne v11, v12, :cond_f

    .line 45
    .line 46
    const/4 v11, 0x3

    .line 47
    aget-byte v13, v7, v11

    .line 48
    .line 49
    if-ne v13, v12, :cond_f

    .line 50
    .line 51
    const/4 v12, 0x4

    .line 52
    aget-byte v13, v7, v12

    .line 53
    .line 54
    and-int/lit16 v13, v13, 0xff

    .line 55
    .line 56
    const/4 v14, 0x5

    .line 57
    aget-byte v15, v7, v14

    .line 58
    .line 59
    and-int/lit16 v15, v15, 0xff

    .line 60
    .line 61
    shl-int/lit8 v15, v15, 0x8

    .line 62
    .line 63
    or-int/2addr v13, v15

    .line 64
    aget-byte v15, v7, v1

    .line 65
    .line 66
    and-int/lit16 v15, v15, 0xff

    .line 67
    .line 68
    const/16 v16, 0x1

    .line 69
    .line 70
    aget-byte v7, v7, v16

    .line 71
    .line 72
    and-int/lit16 v7, v7, 0xff

    .line 73
    .line 74
    shl-int/lit8 v7, v7, 0x8

    .line 75
    .line 76
    or-int/2addr v7, v15

    .line 77
    add-int/lit8 v15, v13, 0x16

    .line 78
    .line 79
    new-array v12, v15, [B

    .line 80
    .line 81
    move-wide/from16 v17, v5

    .line 82
    .line 83
    int-to-long v4, v15

    .line 84
    sub-long v4, v2, v4

    .line 85
    .line 86
    invoke-virtual {v9, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v9, v12}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 90
    .line 91
    .line 92
    aget-byte v4, v12, v1

    .line 93
    .line 94
    const/16 v5, 0x50

    .line 95
    .line 96
    if-ne v4, v5, :cond_e

    .line 97
    .line 98
    aget-byte v4, v12, v16

    .line 99
    .line 100
    const/16 v6, 0x4b

    .line 101
    .line 102
    if-ne v4, v6, :cond_e

    .line 103
    .line 104
    aget-byte v4, v12, v8

    .line 105
    .line 106
    if-ne v4, v14, :cond_e

    .line 107
    .line 108
    aget-byte v4, v12, v11

    .line 109
    .line 110
    const/4 v8, 0x6

    .line 111
    if-ne v4, v8, :cond_e

    .line 112
    .line 113
    const/4 v8, 0x4

    .line 114
    :goto_0
    add-int/lit8 v11, v15, -0x3

    .line 115
    .line 116
    if-ge v8, v11, :cond_3

    .line 117
    .line 118
    aget-byte v11, v12, v8

    .line 119
    .line 120
    if-ne v11, v5, :cond_2

    .line 121
    .line 122
    add-int/lit8 v11, v8, 0x1

    .line 123
    .line 124
    aget-byte v11, v12, v11

    .line 125
    .line 126
    if-ne v11, v6, :cond_2

    .line 127
    .line 128
    add-int/lit8 v11, v8, 0x2

    .line 129
    .line 130
    aget-byte v11, v12, v11

    .line 131
    .line 132
    if-ne v11, v14, :cond_2

    .line 133
    .line 134
    add-int/lit8 v11, v8, 0x3

    .line 135
    .line 136
    aget-byte v11, v12, v11

    .line 137
    .line 138
    const/4 v4, 0x6

    .line 139
    if-eq v11, v4, :cond_1

    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_1
    new-instance v0, Ljava/security/SignatureException;

    .line 143
    .line 144
    const-string v1, "EOCD marker found after start of EOCD"

    .line 145
    .line 146
    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    throw v0

    .line 150
    :cond_2
    const/4 v4, 0x6

    .line 151
    :goto_1
    add-int/lit8 v8, v8, 0x1

    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_3
    new-instance v11, Lsun/security/pkcs/PKCS7;

    .line 155
    .line 156
    new-instance v4, Ljava/io/ByteArrayInputStream;

    .line 157
    .line 158
    sub-int/2addr v15, v7

    .line 159
    invoke-direct {v4, v12, v15, v7}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 160
    .line 161
    .line 162
    invoke-direct {v11, v4}, Lsun/security/pkcs/PKCS7;-><init>(Ljava/io/InputStream;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v11}, Lsun/security/pkcs/PKCS7;->getCertificates()[Ljava/security/cert/X509Certificate;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    if-eqz v4, :cond_d

    .line 170
    .line 171
    array-length v5, v4

    .line 172
    if-eqz v5, :cond_d

    .line 173
    .line 174
    aget-object v4, v4, v1

    .line 175
    .line 176
    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    invoke-virtual {v11}, Lsun/security/pkcs/PKCS7;->getSignerInfos()[Lsun/security/pkcs/SignerInfo;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    if-eqz v5, :cond_c

    .line 185
    .line 186
    array-length v6, v5

    .line 187
    if-eqz v6, :cond_c

    .line 188
    .line 189
    aget-object v12, v5, v1

    .line 190
    .line 191
    if-nez p2, :cond_4

    .line 192
    .line 193
    sget-object v5, Landroid/os/RecoverySystem;->DEFAULT_KEYSTORE:Ljava/io/File;

    .line 194
    .line 195
    goto :goto_2

    .line 196
    :cond_4
    move-object/from16 v5, p2

    .line 197
    .line 198
    :goto_2
    invoke-static {v5}, Landroid/os/RecoverySystem;->getTrustedCerts(Ljava/io/File;)Ljava/util/HashSet;

    .line 199
    .line 200
    .line 201
    move-result-object v5

    .line 202
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 203
    .line 204
    .line 205
    move-result-object v5

    .line 206
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 207
    .line 208
    .line 209
    move-result v6

    .line 210
    if-eqz v6, :cond_6

    .line 211
    .line 212
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v6

    .line 216
    check-cast v6, Ljava/security/cert/X509Certificate;

    .line 217
    .line 218
    invoke-virtual {v6}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    .line 219
    .line 220
    .line 221
    move-result-object v6

    .line 222
    invoke-virtual {v6, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result v6

    .line 226
    if-eqz v6, :cond_5

    .line 227
    .line 228
    move/from16 v1, v16

    .line 229
    .line 230
    :cond_6
    if-eqz v1, :cond_b

    .line 231
    .line 232
    const-wide/16 v4, 0x0

    .line 233
    .line 234
    invoke-virtual {v9, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 235
    .line 236
    .line 237
    new-instance v14, Landroid/os/RecoverySystem$1;

    .line 238
    .line 239
    move-object v1, v14

    .line 240
    move v4, v13

    .line 241
    move-wide/from16 v5, v17

    .line 242
    .line 243
    move-object v7, v9

    .line 244
    move-object/from16 v8, p1

    .line 245
    .line 246
    invoke-direct/range {v1 .. v8}, Landroid/os/RecoverySystem$1;-><init>(JIJLjava/io/RandomAccessFile;Landroid/os/RecoverySystem$ProgressListener;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v11, v12, v14}, Lsun/security/pkcs/PKCS7;->verify(Lsun/security/pkcs/SignerInfo;Ljava/io/InputStream;)Lsun/security/pkcs/SignerInfo;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 254
    .line 255
    .line 256
    move-result v2

    .line 257
    if-eqz v0, :cond_7

    .line 258
    .line 259
    const/16 v3, 0x64

    .line 260
    .line 261
    invoke-interface {v0, v3}, Landroid/os/RecoverySystem$ProgressListener;->onProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    .line 263
    .line 264
    :cond_7
    if-nez v2, :cond_a

    .line 265
    .line 266
    if-eqz v1, :cond_9

    .line 267
    .line 268
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V

    .line 269
    .line 270
    .line 271
    invoke-static/range {p0 .. p0}, Landroid/os/RecoverySystem;->readAndVerifyPackageCompatibilityEntry(Ljava/io/File;)Z

    .line 272
    .line 273
    .line 274
    move-result v0

    .line 275
    if-eqz v0, :cond_8

    .line 276
    .line 277
    return-void

    .line 278
    :cond_8
    new-instance v0, Ljava/security/SignatureException;

    .line 279
    .line 280
    const-string/jumbo v1, "package compatibility verification failed"

    .line 281
    .line 282
    .line 283
    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    throw v0

    .line 287
    :cond_9
    :try_start_1
    new-instance v0, Ljava/security/SignatureException;

    .line 288
    .line 289
    const-string/jumbo v1, "signature digest verification failed"

    .line 290
    .line 291
    .line 292
    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    throw v0

    .line 296
    :cond_a
    new-instance v0, Ljava/security/SignatureException;

    .line 297
    .line 298
    const-string/jumbo v1, "verification was interrupted"

    .line 299
    .line 300
    .line 301
    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    throw v0

    .line 305
    :cond_b
    new-instance v0, Ljava/security/SignatureException;

    .line 306
    .line 307
    const-string/jumbo v1, "signature doesn\'t match any trusted key"

    .line 308
    .line 309
    .line 310
    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    throw v0

    .line 314
    :cond_c
    new-instance v0, Ljava/security/SignatureException;

    .line 315
    .line 316
    const-string/jumbo v1, "signature contains no signedData"

    .line 317
    .line 318
    .line 319
    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    throw v0

    .line 323
    :cond_d
    new-instance v0, Ljava/security/SignatureException;

    .line 324
    .line 325
    const-string/jumbo v1, "signature contains no certificates"

    .line 326
    .line 327
    .line 328
    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    throw v0

    .line 332
    :cond_e
    new-instance v0, Ljava/security/SignatureException;

    .line 333
    .line 334
    const-string/jumbo v1, "no signature in file (bad footer)"

    .line 335
    .line 336
    .line 337
    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    throw v0

    .line 341
    :cond_f
    new-instance v0, Ljava/security/SignatureException;

    .line 342
    .line 343
    const-string/jumbo v1, "no signature in file (no footer)"

    .line 344
    .line 345
    .line 346
    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 350
    :catchall_0
    move-exception v0

    .line 351
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V

    .line 352
    .line 353
    .line 354
    throw v0
.end method

.method public static verifyPackageCompatibility(Ljava/io/File;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Doclava125"
        }
    .end annotation

    .line 12
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 13
    :try_start_0
    invoke-static {v0}, Landroid/os/RecoverySystem;->verifyPackageCompatibility(Ljava/io/InputStream;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return p0

    :catchall_0
    move-exception p0

    .line 15
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    .line 16
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method private static verifyPackageCompatibility(Ljava/io/InputStream;)Z
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Ljava/util/zip/ZipInputStream;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 3
    :goto_0
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v2

    const-wide/32 v4, 0x7fffffff

    cmp-long p0, v2, v4

    if-gtz p0, :cond_0

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-ltz p0, :cond_0

    long-to-int p0, v2

    .line 5
    new-array p0, p0, [B

    .line 6
    invoke-static {v1, p0}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[B)V

    .line 7
    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_0
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "invalid entry size ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ") in the compatibility file"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-static {p0}, Landroid/os/VintfObject;->verify([Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0

    .line 11
    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string/jumbo v0, "no entries found in the compatibility file"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static wipeEuiccData(Landroid/content/Context;Z)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "euicc_provisioned"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const-string v1, "RecoverySystem"

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const-string p0, "Skipping eUICC wipe/retain as it is not provisioned"

    .line 17
    .line 18
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    const-string v0, "euicc_service"

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Landroid/telephony/euicc/EuiccManager;

    .line 29
    .line 30
    if-eqz v0, :cond_7

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_7

    .line 37
    .line 38
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    .line 39
    .line 40
    const/4 v4, 0x1

    .line 41
    invoke-direct {v3, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 42
    .line 43
    .line 44
    new-instance v4, Landroid/os/RecoverySystem$4;

    .line 45
    .line 46
    invoke-direct {v4, p1, v3}, Landroid/os/RecoverySystem$4;-><init>(ZLjava/util/concurrent/CountDownLatch;)V

    .line 47
    .line 48
    .line 49
    new-instance v5, Landroid/content/Intent;

    .line 50
    .line 51
    const-string v6, "com.android.internal.action.EUICC_FACTORY_RESET"

    .line 52
    .line 53
    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-string v7, "android"

    .line 57
    .line 58
    invoke-virtual {v5, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    .line 60
    .line 61
    const/high16 v7, 0x8000000

    .line 62
    .line 63
    sget-object v8, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 64
    .line 65
    invoke-static {p0, v2, v5, v7, v8}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    new-instance v5, Landroid/content/IntentFilter;

    .line 70
    .line 71
    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    new-instance v6, Landroid/os/HandlerThread;

    .line 78
    .line 79
    const-string v7, "euiccWipeFinishReceiverThread"

    .line 80
    .line 81
    invoke-direct {v6, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 85
    .line 86
    .line 87
    new-instance v7, Landroid/os/Handler;

    .line 88
    .line 89
    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    invoke-direct {v7, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    const/4 v8, 0x0

    .line 101
    invoke-virtual {v6, v4, v5, v8, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 102
    .line 103
    .line 104
    if-eqz p1, :cond_1

    .line 105
    .line 106
    invoke-virtual {v0, v2}, Landroid/telephony/euicc/EuiccManager;->eraseSubscriptions(Landroid/app/PendingIntent;)V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_1
    invoke-virtual {v0, v2}, Landroid/telephony/euicc/EuiccManager;->retainSubscriptionsForFactoryReset(Landroid/app/PendingIntent;)V

    .line 111
    .line 112
    .line 113
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    const-string v2, "euicc_factory_reset_timeout_millis"

    .line 118
    .line 119
    const-wide/16 v5, 0x7530

    .line 120
    .line 121
    invoke-static {v0, v2, v5, v6}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    .line 122
    .line 123
    .line 124
    move-result-wide v5

    .line 125
    const-wide/16 v7, 0x1388

    .line 126
    .line 127
    cmp-long v0, v5, v7

    .line 128
    .line 129
    if-gez v0, :cond_2

    .line 130
    .line 131
    :goto_1
    move-wide v5, v7

    .line 132
    goto :goto_2

    .line 133
    :cond_2
    const-wide/32 v7, 0xea60

    .line 134
    .line 135
    .line 136
    cmp-long v0, v5, v7

    .line 137
    .line 138
    if-lez v0, :cond_3

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_3
    :goto_2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 142
    .line 143
    invoke-virtual {v3, v5, v6, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-nez v0, :cond_5

    .line 148
    .line 149
    if-eqz p1, :cond_4

    .line 150
    .line 151
    const-string v0, "Timeout wiping eUICC data."

    .line 152
    .line 153
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .line 155
    .line 156
    goto :goto_3

    .line 157
    :cond_4
    const-string v0, "Timeout retaining eUICC data."

    .line 158
    .line 159
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    :cond_5
    :goto_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    invoke-virtual {p0, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .line 168
    .line 169
    goto :goto_4

    .line 170
    :catch_0
    move-exception p0

    .line 171
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 176
    .line 177
    .line 178
    if-eqz p1, :cond_6

    .line 179
    .line 180
    const-string p1, "Wiping eUICC data interrupted"

    .line 181
    .line 182
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 183
    .line 184
    .line 185
    goto :goto_4

    .line 186
    :cond_6
    const-string p1, "Retaining eUICC data interrupted"

    .line 187
    .line 188
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 189
    .line 190
    .line 191
    :cond_7
    :goto_4
    return-void
.end method
