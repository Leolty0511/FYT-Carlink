.class public Lcom/android/internal/util/SprdRuntimeInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SPRD_CPU_INFO:I = 0x1

.field public static final SPRD_MEM_INFO:I = 0x2

.field public static final SPRD_SCHED_INFO:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SprdRuntimeInfo"

.field private static sFilePathConfig:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/android/internal/util/SprdRuntimeInfo;->sFilePathConfig:Landroid/util/SparseArray;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    const-string v2, "/sys/kernel/debug/sprd_debug/cpu/cpu_usage"

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    sget-object v0, Lcom/android/internal/util/SprdRuntimeInfo;->sFilePathConfig:Landroid/util/SparseArray;

    .line 16
    .line 17
    const/4 v1, 0x4

    .line 18
    const-string v2, "/sys/kernel/debug/sprd_debug/sche/schedlog"

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static printSprdRuntimeInfo(I)V
    .locals 3

    .line 1
    and-int/lit8 v0, p0, 0x1

    .line 2
    .line 3
    const-string v1, "SprdRuntimeInfo"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "------------- start print sprd cpu info -------------"

    .line 8
    .line 9
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    sget-object v0, Lcom/android/internal/util/SprdRuntimeInfo;->sFilePathConfig:Landroid/util/SparseArray;

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/android/internal/util/SprdRuntimeInfo;->readFile(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v0, "------------- end print sprd cpu info -------------"

    .line 25
    .line 26
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    const/4 v0, 0x4

    .line 30
    and-int/2addr p0, v0

    .line 31
    if-eqz p0, :cond_1

    .line 32
    .line 33
    const-string p0, "------------- start print sprd sched info -------------"

    .line 34
    .line 35
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    sget-object p0, Lcom/android/internal/util/SprdRuntimeInfo;->sFilePathConfig:Landroid/util/SparseArray;

    .line 39
    .line 40
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    check-cast p0, Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {p0}, Lcom/android/internal/util/SprdRuntimeInfo;->readFile(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const-string p0, "------------- end print sprd sched info -------------"

    .line 50
    .line 51
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    :cond_1
    return-void
.end method

.method private static readFile(Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "fr close exception"

    .line 2
    .line 3
    const-string v1, "SprdRuntimeInfo"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    .line 7
    .line 8
    new-instance v4, Ljava/io/FileReader;

    .line 9
    .line 10
    invoke-direct {v4, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14
    .line 15
    .line 16
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 27
    .line 28
    .line 29
    goto :goto_2

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    move-object v2, v3

    .line 32
    goto :goto_3

    .line 33
    :catch_0
    move-exception p0

    .line 34
    move-object v2, v3

    .line 35
    goto :goto_1

    .line 36
    :catchall_1
    move-exception p0

    .line 37
    goto :goto_3

    .line 38
    :catch_1
    move-exception p0

    .line 39
    :goto_1
    :try_start_3
    const-string v3, "print sprd runtime info caughed exception"

    .line 40
    .line 41
    invoke-static {v1, v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 42
    .line 43
    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 47
    .line 48
    .line 49
    goto :goto_2

    .line 50
    :catch_2
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    :cond_1
    :goto_2
    return-void

    .line 54
    :goto_3
    if-eqz v2, :cond_2

    .line 55
    .line 56
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 57
    .line 58
    .line 59
    goto :goto_4

    .line 60
    :catch_3
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    :cond_2
    :goto_4
    throw p0
.end method
