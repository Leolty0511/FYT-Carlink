.class public Lg1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static a:Lg1/d;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string v1, "MonitorTouchDown"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static a()V
    .locals 1

    .line 1
    sget-object v0, Le/e;->a:Lo1/y;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lo1/y;->c()V

    .line 3
    :cond_0
    invoke-static {}, Lg1/d;->b()V

    return-void
.end method

.method public static b()V
    .locals 3

    .line 1
    sget v0, Lu0/b;->j:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    sget v0, Lu0/b;->f:I

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v1}, Lu0/d;->N(I)V

    .line 3
    :cond_0
    sget v0, Lu0/b;->j1:I

    if-ne v0, v2, :cond_1

    .line 4
    invoke-static {v1}, Lu0/d;->j3(I)V

    .line 5
    :cond_1
    sget v0, Lu0/b;->h:I

    if-eqz v0, :cond_2

    sget v0, Lu0/b;->f:I

    if-eqz v0, :cond_2

    sget-boolean v0, Lu0/b;->m2:Z

    if-eqz v0, :cond_2

    .line 6
    invoke-static {v1}, Lu0/d;->u3(I)V

    .line 7
    :cond_2
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v0

    invoke-virtual {v0}, Lu0/i;->w3()V

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 8
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    .line 9
    sget v0, Lu0/b;->R:I

    sput v0, Lu0/b;->T:I

    .line 10
    sget-object v0, Lbase/Configure$Property;->V:Lbase/Configure$Property;

    invoke-virtual {v0, v1}, Lbase/Configure$Property;->b(Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 11
    sget-object v0, Ly0/f;->b:Ly0/e;

    instance-of v0, v0, Lmodule/sound/AudioDevice;

    if-eqz v0, :cond_3

    .line 12
    sget v0, Lu0/b;->f:I

    if-ne v0, v2, :cond_3

    sget v0, Lu0/b;->a0:I

    if-ne v0, v2, :cond_3

    sget-object v0, Ly0/f;->b:Ly0/e;

    check-cast v0, Lmodule/sound/AudioDevice;

    invoke-virtual {v0, v1}, Lmodule/sound/AudioDevice;->z(Z)V

    .line 13
    :cond_3
    sget v0, Le/b;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    .line 14
    invoke-static {}, Ln0/k4;->g()I

    move-result v0

    sput v0, Le/b;->a:I

    .line 15
    :cond_4
    sget v0, Le/b;->a:I

    if-eqz v0, :cond_5

    .line 16
    sget v0, Lu0/b;->f:I

    if-nez v0, :cond_5

    .line 17
    invoke-static {v2}, Lu0/d;->U1(I)V

    :cond_5
    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x0
        0x58
    .end array-data
.end method

.method public static c()Lg1/d;
    .locals 2

    .line 1
    sget-object v0, Lg1/d;->a:Lg1/d;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lg1/d;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lg1/d;->a:Lg1/d;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lg1/d;

    invoke-direct {v1}, Lg1/d;-><init>()V

    sput-object v1, Lg1/d;->a:Lg1/d;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lg1/d;->a:Lg1/d;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 1
    :goto_0
    invoke-static {}, Lo1/q0;->P()I

    .line 2
    invoke-static {}, Lg1/d;->a()V

    goto :goto_0
.end method
