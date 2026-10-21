.class public Lo1/q0$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo1/q0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    sget v0, Lo1/q0;->d:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 2
    sput v2, Lo1/q0;->f:I

    .line 3
    sget v0, Lo1/q0;->e:I

    sput v0, Lo1/q0;->d:I

    if-eqz v0, :cond_5

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6253\u5f00\u89c6\u9891 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lo1/q0;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mirror: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lu0/b;->r:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " time:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Lo1/b0;->j(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lg/e;->a()I

    move-result v0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    invoke-static {}, Lg/e;->a()I

    move-result v0

    const/4 v2, 0x7

    if-ne v0, v2, :cond_2

    :cond_0
    const-string v0, "sys.fyt.cvbs.mirror"

    .line 8
    sget v2, Lu0/b;->r:I

    if-eqz v2, :cond_1

    sget v2, Lo1/q0;->d:I

    if-ne v2, v1, :cond_1

    const-string v2, "1"

    goto :goto_0

    :cond_1
    const-string v2, "0"

    .line 9
    :goto_0
    invoke-static {v0, v2}, La/i;->Z(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_2
    sget-object v0, Le1/a;->b:Le1/l;

    sget v2, Lo1/q0;->d:I

    invoke-virtual {v0, v2}, Le1/l;->c(I)V

    .line 11
    sget-object v0, Le1/a;->b:Le1/l;

    sget v2, Lo1/q0;->d:I

    invoke-virtual {v0, v2}, Le1/l;->i(I)V

    .line 12
    sput-boolean v1, Le1/a;->c:Z

    .line 13
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    invoke-static {}, Lo1/q0;->d()Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v0, v1}, Lo1/j;->e(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 14
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    invoke-static {}, Lo1/q0;->d()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-static {v0, v1, v2, v3}, Lo1/j;->b(Landroid/os/Handler;Ljava/lang/Runnable;J)V

    .line 15
    sget-object v0, Lo1/q0;->c:Lo1/k0;

    invoke-virtual {v0}, Lo1/k0;->b()V

    goto :goto_1

    .line 16
    :cond_3
    sput v2, Lo1/q0;->d:I

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5173\u95ed\u89c6\u9891 0 time:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo1/b0;->j(Ljava/lang/String;)V

    const-string v0, "video"

    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5173\u95ed\u89c6\u9891 0 time:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    sget-object v0, Le1/a;->b:Le1/l;

    invoke-virtual {v0}, Le1/l;->a()V

    .line 20
    sget-object v0, Le1/a;->b:Le1/l;

    invoke-virtual {v0, v2}, Le1/l;->i(I)V

    .line 21
    sget-object v0, Lo1/q0;->c:Lo1/k0;

    invoke-virtual {v0}, Lo1/k0;->b()V

    .line 22
    sput-boolean v2, Le1/a;->c:Z

    .line 23
    sget v0, Lo1/q0;->e:I

    if-eqz v0, :cond_4

    const-string v0, "video"

    const-string v3, "\u901a\u77e5UI\u91ca\u653eCAMERA,\u7b49\u5f85UI\u91ca\u653ecamera"

    .line 24
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x44

    const/4 v3, 0x2

    new-array v3, v3, [I

    aput v2, v3, v2

    aput v2, v3, v1

    .line 25
    invoke-static {v0, v3}, Lu0/d;->I3(I[I)V

    .line 26
    invoke-static {}, Lo1/q0;->f()Z

    .line 27
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object v0

    invoke-static {}, Lo1/q0;->g()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x378

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 28
    :cond_4
    sput v2, Lo1/q0;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :cond_5
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
