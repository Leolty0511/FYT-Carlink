.class public Lg/j$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lg/j;


# direct methods
.method public constructor <init>(Lg/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/j$g;->a:Lg/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    sget v0, Lu0/b;->o4:I

    if-nez v0, :cond_1

    sget v0, Lu0/b;->o:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget v0, Lu0/b;->o4:I

    if-nez v0, :cond_2

    sget v0, Lu0/b;->o:I

    if-nez v0, :cond_2

    const-string v0, "/sys/devices/system/cpu/cpufreq/policy0/scaling_min_freq"

    const-string v1, "768000"

    .line 3
    invoke-static {v0, v1}, Lq1/a;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/sys/devices/system/cpu/cpufreq/policy0/scaling_max_freq"

    const-string v1, "1300000"

    .line 4
    invoke-static {v0, v1}, Lq1/a;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "/sys/devices/system/cpu/cpufreq/policy0/scaling_min_freq"

    const-string v1, "1100000"

    .line 5
    invoke-static {v0, v1}, Lq1/a;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/sys/devices/system/cpu/cpufreq/policy0/scaling_max_freq"

    const-string v1, "1100000"

    .line 6
    invoke-static {v0, v1}, Lq1/a;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
