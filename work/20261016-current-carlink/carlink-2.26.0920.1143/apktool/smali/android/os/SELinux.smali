.class public Landroid/os/SELinux;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final SELINUX_ANDROID_RESTORECON_DATADATA:I = 0x10

.field private static final SELINUX_ANDROID_RESTORECON_FORCE:I = 0x8

.field private static final SELINUX_ANDROID_RESTORECON_NOCHANGE:I = 0x1

.field private static final SELINUX_ANDROID_RESTORECON_RECURSE:I = 0x4

.field private static final SELINUX_ANDROID_RESTORECON_VERBOSE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SELinux"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final native checkSELinuxAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static final native getContext()Ljava/lang/String;
.end method

.method public static final native getFileContext(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static final native getPeerContext(Ljava/io/FileDescriptor;)Ljava/lang/String;
.end method

.method public static final native getPidContext(I)Ljava/lang/String;
.end method

.method public static final native isSELinuxEnabled()Z
.end method

.method public static final native isSELinuxEnforced()Z
.end method

.method private static native native_restorecon(Ljava/lang/String;I)Z
.end method

.method public static restorecon(Ljava/io/File;)Z
    .locals 4

    const/4 v0, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/SELinux;->native_restorecon(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error getting canonical path. Restorecon failed for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "SELinux"

    .line 6
    invoke-static {v2, p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public static restorecon(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Landroid/os/SELinux;->native_restorecon(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static restoreconRecursive(Ljava/io/File;)Z
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x4

    .line 6
    invoke-static {v0, v1}, Landroid/os/SELinux;->native_restorecon(Ljava/lang/String;I)Z

    .line 7
    .line 8
    .line 9
    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    return p0

    .line 11
    :catch_0
    move-exception v0

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v2, "Error getting canonical path. Restorecon failed for "

    .line 15
    .line 16
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-string v1, "SELinux"

    .line 31
    .line 32
    invoke-static {v1, p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 33
    .line 34
    .line 35
    const/4 p0, 0x0

    .line 36
    return p0
.end method

.method public static final native setFSCreateContext(Ljava/lang/String;)Z
.end method

.method public static final native setFileContext(Ljava/lang/String;Ljava/lang/String;)Z
.end method
