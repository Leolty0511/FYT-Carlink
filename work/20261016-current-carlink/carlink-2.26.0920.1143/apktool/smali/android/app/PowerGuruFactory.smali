.class public Landroid/app/PowerGuruFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "PowerGuruFactory"

.field private static sInstance:Landroid/app/PowerGuruFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Landroid/app/PowerGuruFactory;
    .locals 4

    .line 1
    const-class v0, Landroid/app/PowerGuruFactory;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Landroid/app/PowerGuruFactory;->sInstance:Landroid/app/PowerGuruFactory;
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
    const-class v1, Landroid/app/PowerGuruFactoryEx;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    :try_start_2
    const-string v1, "PowerGuruFactory"

    .line 14
    .line 15
    const-string v2, "Can\'t find specific PowerGuruFactoryEx"

    .line 16
    .line 17
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 18
    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    :goto_0
    if-eqz v1, :cond_1

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    :try_start_3
    new-array v3, v2, [Ljava/lang/Class;

    .line 25
    .line 26
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    new-array v2, v2, [Ljava/lang/Object;

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Landroid/app/PowerGuruFactory;

    .line 39
    .line 40
    sput-object v1, Landroid/app/PowerGuruFactory;->sInstance:Landroid/app/PowerGuruFactory;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :catchall_1
    :try_start_4
    const-string v1, "PowerGuruFactory"

    .line 44
    .line 45
    const-string v2, "Can\'t create specific ObjectFactory"

    .line 46
    .line 47
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    :cond_1
    :goto_1
    sget-object v1, Landroid/app/PowerGuruFactory;->sInstance:Landroid/app/PowerGuruFactory;

    .line 51
    .line 52
    if-nez v1, :cond_2

    .line 53
    .line 54
    new-instance v1, Landroid/app/PowerGuruFactory;

    .line 55
    .line 56
    invoke-direct {v1}, Landroid/app/PowerGuruFactory;-><init>()V

    .line 57
    .line 58
    .line 59
    sput-object v1, Landroid/app/PowerGuruFactory;->sInstance:Landroid/app/PowerGuruFactory;

    .line 60
    .line 61
    :cond_2
    sget-object v1, Landroid/app/PowerGuruFactory;->sInstance:Landroid/app/PowerGuruFactory;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 62
    .line 63
    monitor-exit v0

    .line 64
    return-object v1

    .line 65
    :catchall_2
    move-exception v1

    .line 66
    monitor-exit v0

    .line 67
    throw v1
.end method


# virtual methods
.method public createExtraPowerGuru(Landroid/app/IPowerGuru;Landroid/content/Context;)Landroid/app/AbsPowerGuru;
    .locals 1

    new-instance v0, Landroid/app/PowerGuruFactory$1;

    invoke-direct {v0, p0, p1, p2}, Landroid/app/PowerGuruFactory$1;-><init>(Landroid/app/PowerGuruFactory;Landroid/app/IPowerGuru;Landroid/content/Context;)V

    return-object v0
.end method
