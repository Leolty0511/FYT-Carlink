.class public Landroid/os/HprofFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "HprofFactory"

.field private static sInstance:Landroid/os/HprofDebug;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Landroid/os/HprofDebug;
    .locals 4

    .line 1
    const-class v0, Landroid/os/HprofFactory;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Landroid/os/HprofFactory;->sInstance:Landroid/os/HprofDebug;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-object v1

    .line 10
    :cond_0
    :try_start_1
    const-class v1, Landroid/os/HprofDebugEx;

    .line 11
    .line 12
    sget v2, Landroid/os/HprofDebugEx;->a:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    :try_start_2
    const-string v1, "HprofFactory"

    .line 16
    .line 17
    const-string v2, "Can\'t find specific HprofDebugEx"

    .line 18
    .line 19
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    :goto_0
    if-eqz v1, :cond_1

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    :try_start_3
    new-array v3, v2, [Ljava/lang/Class;

    .line 27
    .line 28
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    new-array v2, v2, [Ljava/lang/Object;

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Landroid/os/HprofDebug;

    .line 41
    .line 42
    sput-object v1, Landroid/os/HprofFactory;->sInstance:Landroid/os/HprofDebug;

    .line 43
    .line 44
    const-string v1, "HprofFactory"

    .line 45
    .line 46
    const-string v2, "Create HprofDebugEx"

    .line 47
    .line 48
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :catchall_1
    :try_start_4
    const-string v1, "HprofFactory"

    .line 53
    .line 54
    const-string v2, "Can\'t create specific ObjectFactory"

    .line 55
    .line 56
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    :cond_1
    :goto_1
    sget-object v1, Landroid/os/HprofFactory;->sInstance:Landroid/os/HprofDebug;

    .line 60
    .line 61
    if-nez v1, :cond_2

    .line 62
    .line 63
    new-instance v1, Landroid/os/HprofDebug;

    .line 64
    .line 65
    invoke-direct {v1}, Landroid/os/HprofDebug;-><init>()V

    .line 66
    .line 67
    .line 68
    sput-object v1, Landroid/os/HprofFactory;->sInstance:Landroid/os/HprofDebug;

    .line 69
    .line 70
    :cond_2
    sget-object v1, Landroid/os/HprofFactory;->sInstance:Landroid/os/HprofDebug;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 71
    .line 72
    monitor-exit v0

    .line 73
    return-object v1

    .line 74
    :catchall_2
    move-exception v1

    .line 75
    monitor-exit v0

    .line 76
    throw v1
.end method
