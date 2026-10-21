.class public Lo1/q0$b;
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
    .locals 16

    monitor-enter p0

    .line 1
    :try_start_0
    sget v0, Lo1/q0;->d:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-nez v0, :cond_6

    .line 2
    sput v3, Lo1/q0;->f:I

    .line 3
    sget v0, Lo1/q0;->e:I

    sput v0, Lo1/q0;->d:I

    if-eqz v0, :cond_9

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set videoPort to "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lo1/q0;->d:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mirror: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lu0/b;->r:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " time:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Lo1/b0;->j(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lo1/q0;->v()Z

    move-result v0

    const/4 v4, 0x4

    const/16 v5, 0xb

    if-eqz v0, :cond_3

    const/16 v0, 0xc

    new-array v6, v0, [B

    aput-byte v3, v6, v3

    aput-byte v3, v6, v1

    aput-byte v3, v6, v2

    const/4 v7, 0x3

    aput-byte v3, v6, v7

    aput-byte v3, v6, v4

    const/4 v8, 0x5

    aput-byte v3, v6, v8

    const/4 v9, 0x6

    aput-byte v3, v6, v9

    const/4 v10, 0x7

    aput-byte v3, v6, v10

    const/16 v11, 0x8

    aput-byte v3, v6, v11

    const/16 v12, 0x9

    aput-byte v3, v6, v12

    const/16 v13, 0xa

    aput-byte v3, v6, v13

    aput-byte v3, v6, v5

    .line 8
    sget v14, Lg/a;->j:I

    sget v15, Lu0/b;->y0:I

    if-ne v14, v15, :cond_2

    sget v14, Lg/a;->j:I

    if-eq v14, v11, :cond_0

    if-ne v14, v1, :cond_2

    .line 9
    :cond_0
    sget v14, Lu0/b;->z0:I

    if-nez v14, :cond_1

    sget v14, Lu0/b;->A0:I

    if-nez v14, :cond_1

    sget v14, Lu0/b;->B0:I

    if-nez v14, :cond_1

    sget v14, Lu0/b;->C0:I

    if-eqz v14, :cond_2

    :cond_1
    const/16 v14, 0x56

    aput-byte v14, v6, v3

    const/16 v14, 0x44

    aput-byte v14, v6, v1

    const/16 v14, 0x50

    aput-byte v14, v6, v2

    const/16 v14, 0x53

    aput-byte v14, v6, v7

    .line 10
    sget v7, Lu0/b;->z0:I

    and-int/lit16 v14, v7, 0xff

    int-to-byte v14, v14

    aput-byte v14, v6, v4

    shr-int/2addr v7, v11

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v6, v8

    .line 11
    sget v7, Lu0/b;->A0:I

    and-int/lit16 v8, v7, 0xff

    int-to-byte v8, v8

    aput-byte v8, v6, v9

    shr-int/2addr v7, v11

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v6, v10

    .line 12
    sget v7, Lu0/b;->B0:I

    and-int/lit16 v8, v7, 0xff

    int-to-byte v8, v8

    aput-byte v8, v6, v11

    shr-int/2addr v7, v11

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v6, v12

    .line 13
    sget v7, Lu0/b;->C0:I

    and-int/lit16 v8, v7, 0xff

    int-to-byte v8, v8

    aput-byte v8, v6, v13

    shr-int/2addr v7, v11

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v6, v5

    .line 14
    sput v3, Lu0/b;->y0:I

    .line 15
    sput v3, Lu0/b;->z0:I

    .line 16
    sput v3, Lu0/b;->A0:I

    .line 17
    sput v3, Lu0/b;->B0:I

    .line 18
    sput v3, Lu0/b;->C0:I

    .line 19
    :cond_2
    sget-boolean v7, Lu0/b;->Y3:Z

    if-eqz v7, :cond_3

    .line 20
    invoke-static {}, Lcom/syu/jni/ControlNative;->getInstance()Lcom/syu/jni/ControlNative;

    move-result-object v7

    invoke-virtual {v7, v6, v0}, Lcom/syu/jni/ControlNative;->fytSetVideoPosition([BI)I

    .line 21
    :cond_3
    invoke-static {}, Lcom/syu/jni/ControlNative;->getInstance()Lcom/syu/jni/ControlNative;

    move-result-object v0

    new-array v6, v2, [B

    aput-byte v5, v6, v3

    sget v5, Lu0/b;->r:I

    int-to-byte v5, v5

    aput-byte v5, v6, v1

    invoke-virtual {v0, v6, v2}, Lcom/syu/jni/ControlNative;->fyt_vehicle_write([BI)I

    .line 22
    invoke-static {}, Lcom/syu/jni/ControlNative;->getInstance()Lcom/syu/jni/ControlNative;

    move-result-object v0

    new-array v5, v2, [B

    aput-byte v1, v5, v3

    sget v3, Lo1/q0;->d:I

    int-to-byte v3, v3

    aput-byte v3, v5, v1

    invoke-virtual {v0, v5, v2}, Lcom/syu/jni/ControlNative;->fyt_vehicle_write([BI)I

    .line 23
    sget v0, Lo1/q0;->d:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_4

    sget v0, Lu0/b;->o4:I

    if-ne v0, v4, :cond_4

    .line 24
    sget v0, Ld1/d;->f:I

    invoke-static {v0}, Lo1/q0;->I(I)V

    .line 25
    :cond_4
    sget v0, Ly0/f;->a:I

    if-ne v0, v2, :cond_5

    .line 26
    sget-object v0, Ly0/f;->b:Ly0/e;

    sget v1, Lu0/b;->D:I

    invoke-virtual {v0, v1}, Ly0/e;->a(I)V

    .line 27
    :cond_5
    sget-object v0, Lo1/q0;->c:Lo1/k0;

    invoke-virtual {v0}, Lo1/k0;->b()V

    goto :goto_0

    .line 28
    :cond_6
    sput v3, Lo1/q0;->d:I

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set videoPort to 0 time:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo1/b0;->j(Ljava/lang/String;)V

    .line 30
    invoke-static {}, Lcom/syu/jni/ControlNative;->getInstance()Lcom/syu/jni/ControlNative;

    move-result-object v0

    new-array v4, v2, [B

    aput-byte v1, v4, v3

    aput-byte v3, v4, v1

    invoke-virtual {v0, v4, v2}, Lcom/syu/jni/ControlNative;->fyt_vehicle_write([BI)I

    .line 31
    sget v0, Ly0/f;->a:I

    if-ne v0, v2, :cond_7

    .line 32
    sget-object v0, Ly0/f;->b:Ly0/e;

    sget v1, Lu0/b;->D:I

    invoke-virtual {v0, v1}, Ly0/e;->a(I)V

    .line 33
    :cond_7
    sget-object v0, Lo1/q0;->c:Lo1/k0;

    invoke-virtual {v0}, Lo1/k0;->b()V

    .line 34
    sget v0, Lo1/q0;->e:I

    if-eqz v0, :cond_8

    .line 35
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object v0

    invoke-static {}, Lo1/q0;->c()Ljava/lang/Runnable;

    move-result-object v1

    sget v2, Lo1/q0;->b:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 36
    :cond_8
    sput v3, Lo1/q0;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :cond_9
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
