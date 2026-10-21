.class public Lo1/q0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Runnable;

.field public static b:I

.field public static final c:Lo1/k0;

.field public static d:I

.field public static e:I

.field public static f:I

.field public static final g:Ljava/lang/Runnable;

.field public static final h:Ljava/lang/Runnable;

.field public static final i:Ljava/lang/Runnable;

.field public static j:Ljava/lang/Runnable;

.field public static k:Z

.field public static l:I

.field public static m:I

.field public static n:Z

.field public static o:Ljava/lang/Runnable;

.field public static p:Landroid/os/PowerManager$WakeLock;

.field public static q:I

.field public static r:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lo1/q0$a;

    invoke-direct {v0}, Lo1/q0$a;-><init>()V

    sput-object v0, Lo1/q0;->a:Ljava/lang/Runnable;

    const/16 v0, 0x1f4

    .line 2
    sput v0, Lo1/q0;->b:I

    .line 3
    new-instance v0, Lo1/k0;

    invoke-direct {v0}, Lo1/k0;-><init>()V

    sput-object v0, Lo1/q0;->c:Lo1/k0;

    .line 4
    new-instance v0, Lo1/q0$b;

    invoke-direct {v0}, Lo1/q0$b;-><init>()V

    sput-object v0, Lo1/q0;->g:Ljava/lang/Runnable;

    .line 5
    new-instance v0, Lo1/q0$c;

    invoke-direct {v0}, Lo1/q0$c;-><init>()V

    sput-object v0, Lo1/q0;->h:Ljava/lang/Runnable;

    .line 6
    new-instance v0, Lo1/q0$d;

    invoke-direct {v0}, Lo1/q0$d;-><init>()V

    sput-object v0, Lo1/q0;->i:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Lo1/q0$e;

    invoke-direct {v0}, Lo1/q0$e;-><init>()V

    sput-object v0, Lo1/q0;->j:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 8
    sput-boolean v0, Lo1/q0;->k:Z

    const/4 v1, -0x1

    .line 9
    sput v1, Lo1/q0;->l:I

    .line 10
    sput v1, Lo1/q0;->m:I

    .line 11
    sput-boolean v0, Lo1/q0;->n:Z

    .line 12
    new-instance v0, Lo1/q0$f;

    invoke-direct {v0}, Lo1/q0$f;-><init>()V

    sput-object v0, Lo1/q0;->o:Ljava/lang/Runnable;

    .line 13
    sput v1, Lo1/q0;->q:I

    return-void
.end method

.method public static A(I)V
    .locals 4

    .line 1
    invoke-static {}, Lg/e;->a()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    if-eqz p0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.settings.location.MODE_CHANGING"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "NEW_MODE"

    .line 3
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v2

    const-string v3, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v2, v1, v3}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 6
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openGps "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln1/b;->s(Ljava/lang/String;)V

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ms"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static B()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/syu/jni/JniToolkit;->openQst()I

    move-result v0

    return v0
.end method

.method public static C()V
    .locals 5

    .line 1
    invoke-static {}, Lg/e;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {}, Lcom/syu/jni/ControlNative;->getInstance()Lcom/syu/jni/ControlNative;

    move-result-object v0

    const/16 v2, 0x72

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/syu/jni/ControlNative;->fyt_gpio_setup(III)I

    .line 3
    invoke-static {}, Lcom/syu/jni/ControlNative;->getInstance()Lcom/syu/jni/ControlNative;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/syu/jni/ControlNative;->fyt_gpio_write(II)I

    .line 4
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object v0

    sget-object v1, Lo1/q0;->a:Ljava/lang/Runnable;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 5
    :cond_0
    invoke-static {}, Lg/e;->a()I

    move-result v0

    const/4 v1, 0x3

    const-wide/16 v2, 0x1f4

    if-ne v0, v1, :cond_1

    .line 6
    invoke-static {}, Lcom/syu/jni/ControlNative;->getInstance()Lcom/syu/jni/ControlNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/syu/jni/ControlNative;->fytReset8288()I

    .line 7
    invoke-static {v2, v3}, La/i;->a0(J)V

    .line 8
    invoke-static {}, Ly0/h;->P()V

    goto :goto_1

    .line 9
    :cond_1
    invoke-static {}, Lg/e;->a()I

    move-result v0

    const/4 v4, 0x4

    if-eq v0, v4, :cond_3

    .line 10
    invoke-static {}, Lg/e;->a()I

    move-result v0

    const/4 v4, 0x6

    if-ne v0, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x7

    .line 11
    invoke-static {v0}, Lg/f;->f(I)Z

    move-result v0

    if-eqz v0, :cond_4

    new-array v0, v1, [I

    .line 12
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    .line 13
    invoke-static {v2, v3}, La/i;->a0(J)V

    .line 14
    invoke-static {}, Ly0/h;->P()V

    goto :goto_1

    .line 15
    :cond_3
    :goto_0
    invoke-static {}, Lcom/syu/jni/ToolsJni;->cmd_24_reset_8288a()V

    .line 16
    invoke-static {v2, v3}, La/i;->a0(J)V

    .line 17
    invoke-static {}, Ly0/h;->P()V

    :cond_4
    :goto_1
    return-void

    :array_0
    .array-data 4
        0x1
        0x1
        0xa0
    .end array-data
.end method

.method public static D(I)V
    .locals 2

    .line 1
    invoke-static {}, Lg/e;->a()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {}, Lcom/syu/jni/ControlNative;->getInstance()Lcom/syu/jni/ControlNative;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/syu/jni/ControlNative;->fytResetGps(I)I

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lg/e;->a()I

    :goto_0
    return-void
.end method

.method public static E()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/syu/jni/ControlNative;->getInstance()Lcom/syu/jni/ControlNative;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [B

    const/4 v3, 0x0

    const/16 v4, 0x23

    aput-byte v4, v2, v3

    sget v3, Lu0/b;->r:I

    int-to-byte v3, v3

    const/4 v4, 0x1

    aput-byte v3, v2, v4

    invoke-virtual {v0, v2, v1}, Lcom/syu/jni/ControlNative;->fyt_vehicle_write([BI)I

    return-void
.end method

.method public static F(I)V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-static {v0}, Lg/f;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/syu/jni/ToolsJni;->cmd_14_set_backcar_type(I)I

    :cond_0
    return-void
.end method

.method public static G(I)V
    .locals 2

    const/16 v0, 0xc

    .line 1
    invoke-static {v0}, Lg/f;->n(I)Z

    move-result v0

    if-nez v0, :cond_3

    sget v0, Lo1/q0;->q:I

    if-eq v0, p0, :cond_3

    .line 2
    sput p0, Lo1/q0;->q:I

    const/4 v0, 0x4

    .line 3
    invoke-static {v0}, Lg/f;->f(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    .line 4
    invoke-static {}, Lcom/syu/jni/ToolsJni;->cmd_17_get_led_colors()I

    move-result p0

    invoke-static {p0, v1}, Lcom/syu/jni/ToolsJni;->cmd_16_set_led_colors(II)I

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v1, v1}, Lcom/syu/jni/ToolsJni;->cmd_16_set_led_colors(II)I

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    .line 6
    invoke-static {v0}, Lg/f;->f(I)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p0, :cond_2

    .line 7
    invoke-static {}, Lcom/syu/jni/ControlNative;->getInstance()Lcom/syu/jni/ControlNative;

    move-result-object p0

    invoke-static {}, Lcom/syu/jni/ControlNative;->getInstance()Lcom/syu/jni/ControlNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/syu/jni/ControlNative;->fyt_multicolour_light_read()C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/syu/jni/ControlNative;->fytSetLedColor(I)I

    goto :goto_0

    .line 8
    :cond_2
    invoke-static {}, Lcom/syu/jni/ControlNative;->getInstance()Lcom/syu/jni/ControlNative;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/syu/jni/ControlNative;->fytSetLedColor(I)I

    :cond_3
    :goto_0
    return-void
.end method

.method public static H(I)V
    .locals 3

    .line 1
    invoke-static {}, Lg/e;->a()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const-string v1, "boot.car.reverse"

    .line 2
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "param0"

    .line 4
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object p0

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    :goto_0
    return-void
.end method

.method public static I(I)V
    .locals 5

    .line 1
    invoke-static {}, Lg/e;->a()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/syu/jni/ControlNative;->getInstance()Lcom/syu/jni/ControlNative;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [B

    const/4 v3, 0x0

    const/16 v4, 0x14

    aput-byte v4, v2, v3

    const/4 v3, 0x1

    add-int/lit8 p0, p0, 0x15

    int-to-byte p0, p0

    aput-byte p0, v2, v3

    invoke-virtual {v0, v2, v1}, Lcom/syu/jni/ControlNative;->fyt_vehicle_write([BI)I

    :goto_0
    return-void
.end method

.method public static J()I
    .locals 4

    .line 1
    invoke-static {}, Lg/e;->a()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 2
    invoke-static {}, Lg/e;->e()I

    move-result v0

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget v0, Ld1/d;->k:I

    if-lez v0, :cond_5

    .line 4
    invoke-static {v0, v2}, Landroid/source/Util;->isDisplayReady(II)Z

    move-result v0

    return v0

    .line 5
    :cond_1
    invoke-static {}, Lcom/syu/jni/ControlNative;->getInstance()Lcom/syu/jni/ControlNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/syu/jni/ControlNative;->fyt_get8288_signal()I

    move-result v0

    return v0

    :cond_2
    if-ne v0, v2, :cond_4

    .line 6
    invoke-static {}, Lcom/syu/jni/ControlNative;->getInstance()Lcom/syu/jni/ControlNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/syu/jni/ControlNative;->fyt_vehicle_read()[B

    move-result-object v0

    if-eqz v0, :cond_3

    .line 7
    array-length v2, v0

    if-lt v2, v3, :cond_3

    .line 8
    aget-byte v0, v0, v1

    return v0

    :cond_3
    return v1

    :cond_4
    const/4 v0, 0x4

    .line 9
    invoke-static {v0}, Lg/f;->f(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 10
    sget v0, Lu0/b;->r4:I

    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public static K()V
    .locals 2

    .line 1
    invoke-static {}, Lg/e;->a()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/syu/jni/ControlNative;->getInstance()Lcom/syu/jni/ControlNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/syu/jni/ControlNative;->fyt_update_clear()I

    :goto_0
    return-void
.end method

.method public static L()I
    .locals 2

    .line 1
    invoke-static {}, Lg/e;->a()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/syu/jni/ControlNative;->getInstance()Lcom/syu/jni/ControlNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/syu/jni/ControlNative;->fyt_update_get()I

    move-result v0

    return v0
.end method

.method public static M()[B
    .locals 2

    .line 1
    invoke-static {}, Lg/e;->a()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/syu/jni/ControlNative;->getInstance()Lcom/syu/jni/ControlNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/syu/jni/ControlNative;->fyt_vehicle_read()[B

    move-result-object v0

    return-object v0
.end method

.method public static N()V
    .locals 3

    .line 1
    invoke-static {}, Lg/e;->a()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/syu/jni/ControlNative;->getInstance()Lcom/syu/jni/ControlNative;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [B

    fill-array-data v2, :array_0

    invoke-virtual {v0, v2, v1}, Lcom/syu/jni/ControlNative;->fyt_vehicle_write([BI)I

    :goto_0
    return-void

    :array_0
    .array-data 1
        0x1t
        0x5t
    .end array-data
.end method

.method public static O(I)V
    .locals 5

    const/4 v0, 0x3

    .line 1
    invoke-static {v0}, Lg/f;->f(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2
    sget-object v0, Lo1/q0;->g:Ljava/lang/Runnable;

    .line 3
    invoke-static {}, Lg/e;->a()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    .line 4
    invoke-static {}, Lg/e;->a()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-static {}, Lg/e;->a()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    .line 6
    invoke-static {}, Lg/e;->a()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v0

    goto :goto_2

    .line 7
    :cond_2
    :goto_0
    sget-object v1, Lo1/q0;->i:Ljava/lang/Runnable;

    goto :goto_2

    .line 8
    :cond_3
    :goto_1
    sget-object v1, Lo1/q0;->h:Ljava/lang/Runnable;

    .line 9
    :goto_2
    sput p0, Lo1/q0;->e:I

    .line 10
    sget p0, Lo1/q0;->f:I

    if-nez p0, :cond_6

    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    sget p0, Lo1/q0;->f:I

    if-nez p0, :cond_5

    const/4 p0, 0x1

    .line 13
    sput p0, Lo1/q0;->f:I

    .line 14
    sget-object p0, Lo1/q0;->c:Lo1/k0;

    sget v2, Lo1/q0;->b:I

    invoke-virtual {p0, v2}, Lo1/k0;->c(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 15
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 16
    :cond_4
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object v2

    sget v3, Lo1/q0;->b:I

    invoke-virtual {p0}, Lo1/k0;->a()I

    move-result p0

    sub-int/2addr v3, p0

    int-to-long v3, v3

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 17
    :cond_5
    :goto_3
    monitor-exit v0

    goto :goto_4

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_6
    :goto_4
    return-void
.end method

.method public static P()I
    .locals 2

    .line 1
    invoke-static {}, Lg/e;->a()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-wide/32 v0, 0x5265c00

    .line 2
    invoke-static {v0, v1}, La/i;->a0(J)V

    const/4 v0, 0x0

    return v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/syu/jni/ControlNative;->getInstance()Lcom/syu/jni/ControlNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/syu/jni/ControlNative;->fyt_lightoff_timeout_listen()I

    move-result v0

    return v0
.end method

.method public static a(I)V
    .locals 2

    .line 1
    invoke-static {}, Lg/e;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lg/e;->a()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    .line 3
    invoke-static {v0}, Lg/f;->f(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-static {p0}, Lcom/syu/jni/ToolsJni;->cmd_29_acc_state_to_bsp(I)I

    :cond_2
    :goto_0
    return-void
.end method

.method public static b(I)V
    .locals 0

    if-eqz p0, :cond_0

    const-string p0, "com.glsx.boot.ACCON"

    .line 1
    invoke-static {p0}, Lo1/u;->l(Ljava/lang/String;)V

    const-string p0, "com.fyt.boot.ACCON"

    .line 2
    invoke-static {p0}, Lo1/u;->l(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "com.glsx.boot.ACCOFF"

    .line 3
    invoke-static {p0}, Lo1/u;->l(Ljava/lang/String;)V

    const-string p0, "com.fyt.boot.ACCOFF"

    .line 4
    invoke-static {p0}, Lo1/u;->l(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static synthetic c()Ljava/lang/Runnable;
    .locals 1

    .line 1
    sget-object v0, Lo1/q0;->g:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static synthetic d()Ljava/lang/Runnable;
    .locals 1

    .line 1
    sget-object v0, Lo1/q0;->j:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static synthetic e()Ljava/lang/Runnable;
    .locals 1

    .line 1
    sget-object v0, Lo1/q0;->h:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static synthetic f()Z
    .locals 1

    .line 1
    sget-boolean v0, Lo1/q0;->k:Z

    return v0
.end method

.method public static synthetic g()Ljava/lang/Runnable;
    .locals 1

    .line 1
    sget-object v0, Lo1/q0;->i:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static h(I)V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-static {v0}, Lg/f;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/syu/jni/ToolsJni;->cmd_50_fm_ant_en(I)I

    :cond_0
    return-void
.end method

.method public static i(I)V
    .locals 3

    .line 1
    invoke-static {}, Lg/e;->a()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    if-nez p0, :cond_1

    const v1, 0xbb80

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    if-ne p0, v2, :cond_2

    const v1, 0xac44

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    const-string p0, "param0"

    .line 3
    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object p0

    const/16 v1, 0x23

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    :cond_3
    :goto_1
    return-void
.end method

.method public static j(I)V
    .locals 6

    .line 1
    invoke-static {}, Lg/e;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {}, Lcom/syu/jni/ControlNative;->getInstance()Lcom/syu/jni/ControlNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/syu/jni/ControlNative;->fyt_car_image_get_on()I

    move-result v0

    if-eq v0, p0, :cond_2

    .line 3
    invoke-static {}, Lcom/syu/jni/ControlNative;->getInstance()Lcom/syu/jni/ControlNative;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/syu/jni/ControlNative;->fyt_car_image_set_on(I)I

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 4
    invoke-static {}, Lcom/syu/jni/ControlNative;->getInstance()Lcom/syu/jni/ControlNative;

    move-result-object v0

    const/4 v2, 0x2

    new-array v3, v2, [B

    const/4 v4, 0x0

    const/16 v5, 0xb

    aput-byte v5, v3, v4

    int-to-byte p0, p0

    aput-byte p0, v3, v1

    invoke-virtual {v0, v3, v2}, Lcom/syu/jni/ControlNative;->fyt_vehicle_write([BI)I

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    .line 5
    invoke-static {v0}, Lg/f;->f(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-static {p0}, Lcom/syu/jni/ToolsJni;->cmd_1_backcarMirror(I)I

    :cond_2
    :goto_0
    return-void
.end method

.method public static k()I
    .locals 3

    .line 1
    invoke-static {}, Lg/e;->a()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    .line 2
    sget v0, Lo1/q0;->r:I

    if-nez v0, :cond_1

    const-string v0, "boot.car.reverse"

    const/4 v2, 0x0

    .line 3
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_0

    sget v0, La/b;->e0:I

    if-nez v0, :cond_1

    :cond_0
    return v2

    .line 4
    :cond_1
    sput v1, Lo1/q0;->r:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    .line 5
    invoke-static {v0}, Lg/f;->f(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    sput v1, Lo1/q0;->r:I

    :cond_3
    :goto_0
    return v1
.end method

.method public static l()Z
    .locals 5

    .line 1
    invoke-static {}, Lg/e;->a()I

    move-result v0

    const-string v1, "sys.canSleep"

    const-string v2, "1"

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    .line 2
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lg/e;->a()I

    move-result v0

    const/4 v3, 0x4

    const-string v4, "sys.boot_completed"

    if-ne v0, v3, :cond_2

    .line 4
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 6
    :cond_2
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0
.end method

.method public static m(I)V
    .locals 2

    .line 1
    sget v0, Lu0/b;->u0:I

    if-eqz v0, :cond_3

    .line 2
    invoke-static {}, Lg/e;->a()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 3
    invoke-static {}, Lo1/q0;->r()I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    .line 4
    invoke-static {}, Lcom/syu/jni/ControlNative;->getInstance()Lcom/syu/jni/ControlNative;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/syu/jni/ControlNative;->fytTurnOffLcdc(I)I

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    .line 5
    invoke-static {}, Lo1/q0;->r()I

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    invoke-static {}, Lcom/syu/jni/ControlNative;->getInstance()Lcom/syu/jni/ControlNative;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/syu/jni/ControlNative;->fytTurnOffLcdc(I)I

    .line 7
    invoke-static {}, Lo1/q0;->r()I

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    .line 8
    invoke-static {p0}, Lo1/q0;->m(I)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {}, Lo1/q0;->r()I

    move-result v0

    if-nez v0, :cond_3

    .line 10
    invoke-static {}, Lcom/syu/jni/ControlNative;->getInstance()Lcom/syu/jni/ControlNative;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/syu/jni/ControlNative;->fytTurnOffLcdc(I)I

    .line 11
    invoke-static {}, Lo1/q0;->r()I

    move-result p0

    if-nez p0, :cond_3

    const/4 p0, 0x0

    .line 12
    invoke-static {p0}, Lo1/q0;->m(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    .line 13
    invoke-static {v0}, Lg/f;->f(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "======================>> closeDoor  value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Qin"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-static {p0}, Lcom/syu/jni/ToolsJni;->cmd_5_turnoff_lcdc(I)I

    :cond_3
    :goto_0
    return-void
.end method

.method public static n(I)F
    .locals 3

    if-lez p0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result p0

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p0, :cond_1

    .line 2
    invoke-static {v1}, Lo1/q0;->q(I)F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return v0
.end method

.method public static o()I
    .locals 2

    .line 1
    sget v0, Lo1/q0;->l:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 2
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/gtsql_config"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    sput v0, Lo1/q0;->l:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    sput v0, Lo1/q0;->l:I

    .line 5
    :cond_1
    :goto_0
    sget v0, Lo1/q0;->l:I

    return v0
.end method

.method public static p()F
    .locals 2

    .line 1
    sget-object v0, Lg/e;->a:Lg/g;

    instance-of v1, v0, Lchip/Chip;

    if-eqz v1, :cond_0

    check-cast v0, Lchip/Chip;

    invoke-virtual {v0}, Lchip/Chip;->l()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static q(I)F
    .locals 4

    .line 1
    invoke-static {}, Lg/e;->a()I

    move-result v0

    const-string v1, "/temp"

    const-string v2, "/sys/class/thermal/thermal_zone"

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lo1/q0;->s(Ljava/lang/String;)F

    move-result p0

    return p0

    :cond_0
    const/4 v3, 0x6

    if-ne v0, v3, :cond_1

    .line 3
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "/sys/rockchip_thermal/temp"

    invoke-static {p0, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lo1/q0;->s(Ljava/lang/String;)F

    move-result p0

    return p0

    :cond_1
    const/16 v3, 0xc

    if-ne v0, v3, :cond_2

    const-string p0, "/sys/devices/virtual/mstar/msys/TEMP_R"

    .line 4
    invoke-static {p0}, Lo1/q0;->s(Ljava/lang/String;)F

    move-result p0

    return p0

    :cond_2
    const/4 v0, 0x5

    .line 5
    invoke-static {v0}, Lg/f;->f(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lo1/q0;->s(Ljava/lang/String;)F

    move-result p0

    return p0

    :cond_3
    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method

.method public static r()I
    .locals 7

    .line 1
    invoke-static {}, Lg/e;->a()I

    move-result v0

    const/16 v1, 0xff

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    const-string v3, "/sys/fytver/TurnOffLcdc"

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x2

    :try_start_1
    new-array v3, v0, [B

    const/4 v4, 0x0

    aput-byte v0, v3, v4

    const/4 v5, 0x1

    aput-byte v0, v3, v5

    .line 3
    invoke-virtual {v2, v3, v4, v0}, Ljava/io/FileInputStream;->read([BII)I

    move-result v5

    if-eq v5, v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    aget-byte v0, v3, v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v1, v0, -0x30

    .line 5
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_3

    :catch_2
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    .line 7
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_2

    .line 8
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_2
    :goto_2
    return v1

    :catchall_1
    move-exception v0

    :goto_3
    if-eqz v2, :cond_3

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception v1

    .line 9
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 10
    :cond_3
    :goto_4
    throw v0
.end method

.method public static s(Ljava/lang/String;)F
    .locals 5

    const-string v0, ":"

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 1
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2
    :try_start_1
    new-instance p0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3
    :try_start_2
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5
    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    array-length v2, v0

    const/4 v4, 0x1

    if-le v2, v4, :cond_0

    .line 7
    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    :goto_0
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 10
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 11
    :goto_1
    :try_start_4
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_9

    :catch_1
    move-exception p0

    .line 12
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object p0, v2

    :goto_2
    move-object v2, v3

    goto :goto_3

    :catch_2
    move-object p0, v2

    :catch_3
    move-object v2, v3

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object p0, v2

    :goto_3
    if-eqz v2, :cond_2

    .line 13
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception v1

    .line 14
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_4
    if-eqz p0, :cond_3

    .line 15
    :try_start_6
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_5

    :catch_5
    move-exception p0

    .line 16
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 17
    :cond_3
    :goto_5
    throw v0

    :catch_6
    move-object p0, v2

    :goto_6
    if-eqz v2, :cond_4

    .line 18
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_7
    if-eqz p0, :cond_5

    .line 20
    :try_start_8
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception p0

    .line 21
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_5
    :goto_8
    move v0, v1

    :goto_9
    if-eq v0, v1, :cond_6

    int-to-float p0, v0

    goto :goto_a

    :cond_6
    const/high16 p0, -0x40800000    # -1.0f

    :goto_a
    return p0
.end method

.method public static t()I
    .locals 6

    const-string v0, "gsm.sim.state"

    .line 1
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lg/e;->a()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-eq v1, v4, :cond_0

    goto :goto_2

    :cond_0
    const-string v1, "ro.fixed.wifi"

    const-string v4, ""

    .line 3
    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 4
    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "1"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_1
    const-string v1, "persist.modem.disable"

    const-string v4, "false"

    .line 5
    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "true"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    if-eqz v1, :cond_3

    goto :goto_2

    .line 6
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "ABSENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    :goto_2
    move v2, v3

    :goto_3
    return v2
.end method

.method public static u()I
    .locals 4

    .line 1
    invoke-static {}, Lo1/q0;->o()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    invoke-static {}, Lcom/syu/jni/TouchNative;->me()Lcom/syu/jni/TouchNative;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/syu/jni/TouchNative;->native_get_control(I)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v0, "sys.need.cali"

    .line 3
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move v1, v2

    :cond_2
    return v1
.end method

.method public static v()Z
    .locals 6

    .line 1
    invoke-static {}, Lg/e;->a()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    .line 2
    invoke-static {}, Lg/e;->a()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    .line 3
    invoke-static {v0}, Lg/e;->j(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ro.build.portrait_screen"

    .line 4
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_1
    const/4 v0, 0x7

    .line 5
    invoke-static {v0}, Lg/f;->f(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_5

    goto :goto_1

    .line 7
    :cond_2
    :goto_0
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/16 v3, 0x9

    const-string v4, "ro.sf.hwrotation"

    const-string v5, "0"

    if-ne v0, v3, :cond_3

    .line 8
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 9
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "180"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    .line 10
    :cond_3
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "90"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 11
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "270"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "ro.fyt.screen_port"

    .line 12
    invoke-static {v0, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    :goto_1
    move v1, v2

    :cond_5
    return v1
.end method

.method public static w(I)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InvalidWakeLockTag"
        }
    .end annotation

    const/4 v0, 0x4

    .line 1
    invoke-static {v0}, Lg/f;->f(I)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p0, :cond_0

    .line 2
    invoke-static {}, Lz/i;->p()V

    .line 3
    sget-object p0, Lo1/q0;->p:Landroid/os/PowerManager$WakeLock;

    if-nez p0, :cond_1

    .line 4
    invoke-static {}, La/f;->r()Landroid/os/PowerManager;

    move-result-object p0

    const v1, 0x1000001a

    const-string v2, "com.syu.ms"

    invoke-virtual {p0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    sput-object p0, Lo1/q0;->p:Landroid/os/PowerManager$WakeLock;

    .line 5
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 6
    invoke-static {}, Lg/e;->a()I

    move-result p0

    if-ne p0, v0, :cond_1

    const/4 p0, 0x0

    .line 7
    invoke-static {p0}, Lg/d;->I(I)V

    goto :goto_0

    .line 8
    :cond_0
    sget-object p0, Lo1/q0;->p:Landroid/os/PowerManager$WakeLock;

    if-eqz p0, :cond_1

    .line 9
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 p0, 0x0

    .line 10
    sput-object p0, Lo1/q0;->p:Landroid/os/PowerManager$WakeLock;

    .line 11
    sget p0, Lu0/b;->n4:I

    :cond_1
    :goto_0
    return-void
.end method

.method public static x()V
    .locals 2

    .line 1
    sget-boolean v0, Lo1/q0;->n:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lo1/q0;->n:Z

    .line 3
    sget-object v0, Lo1/j0;->j:Lo1/j0;

    sget-object v1, Lo1/q0;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/j0;->c(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static y(I)V
    .locals 6

    .line 1
    invoke-static {}, Lg/e;->a()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 2
    sget v0, Lu0/b;->n4:I

    if-nez v0, :cond_0

    move p0, v2

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  >>>>>>>>>>>>>>>>>>>>>>   muteAmp  sMuteAmp: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lo1/q0;->m:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "    value: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "soundMute"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lo1/q0;->m:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "mute"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    sget v0, Lo1/q0;->m:I

    if-eq v0, p0, :cond_7

    .line 6
    sput p0, Lo1/q0;->m:I

    .line 7
    invoke-static {}, Lg/e;->a()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    .line 8
    invoke-static {}, Lcom/syu/jni/ControlNative;->getInstance()Lcom/syu/jni/ControlNative;

    move-result-object p0

    sget v0, Lo1/q0;->m:I

    invoke-virtual {p0, v0}, Lcom/syu/jni/ControlNative;->fytMuteAMP(I)I

    goto :goto_2

    .line 9
    :cond_1
    invoke-static {}, Lg/e;->a()I

    move-result p0

    if-ne p0, v1, :cond_2

    .line 10
    sget p0, Lo1/q0;->m:I

    invoke-static {p0}, Lcom/syu/jni/ToolsJni;->cmd_6_mute_amp(I)I

    goto :goto_2

    .line 11
    :cond_2
    invoke-static {}, Lg/e;->a()I

    move-result p0

    const/4 v0, 0x5

    const/4 v1, 0x1

    if-ne p0, v0, :cond_4

    .line 12
    sget p0, Lo1/q0;->m:I

    if-ne p0, v1, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    invoke-static {v2}, Lcom/syu/jni/ToolsJni;->cmd_6_mute_amp(I)I

    goto :goto_2

    .line 13
    :cond_4
    sget p0, Lo1/q0;->m:I

    invoke-static {p0}, Lcom/syu/jni/ToolsJni;->cmd_6_mute_amp(I)I

    .line 14
    sget-object p0, Lz0/d;->d:Lz0/d;

    sget v0, Lo1/q0;->m:I

    if-ne v0, v1, :cond_5

    move v0, v1

    goto :goto_1

    :cond_5
    move v0, v2

    :goto_1
    invoke-virtual {p0, v0}, Lz0/d;->d(Z)V

    .line 15
    invoke-static {}, Lf0/c;->X2()Lf0/c;

    move-result-object p0

    invoke-virtual {p0}, Lf0/c;->Y2()Lf0/a;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 16
    sget v0, Lo1/q0;->m:I

    if-ne v0, v1, :cond_6

    move v2, v1

    :cond_6
    invoke-virtual {p0, v2}, Lf0/a;->f(Z)V

    :cond_7
    :goto_2
    return-void
.end method

.method public static z(II)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UI\u63a7\u5236camera = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " useCamera = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "video"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DataMain.mVideoOnChannel = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lu0/b;->l4:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " \u662f\u5426\u6709UI\u7b49\u5f85\u6253\u5f00camera = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lu0/b;->m4:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
