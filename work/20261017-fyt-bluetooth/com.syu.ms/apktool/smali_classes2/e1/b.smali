.class public Le1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object v0, Lo1/j0;->g:Lo1/j0;

    invoke-virtual {v0, p0}, Lo1/j0;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static b(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object v0, Lo1/j0;->i:Lo1/j0;

    invoke-virtual {v0, p0}, Lo1/j0;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static declared-synchronized c(I)V
    .locals 5

    const-class v0, Le1/b;

    monitor-enter v0

    .line 1
    :try_start_0
    sget v1, Le1/a;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, p0, :cond_0

    monitor-exit v0

    return-void

    .line 2
    :cond_0
    :try_start_1
    sget-object v1, Lg/e;->a:Lg/g;

    if-eqz v1, :cond_1

    instance-of v1, v1, Lchip/Chip;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 3
    :goto_0
    sget-object v2, Le1/a;->b:Le1/l;

    invoke-virtual {v2}, Le1/l;->d()V

    .line 4
    sput p0, Le1/a;->a:I

    packed-switch p0, :pswitch_data_0

    .line 5
    new-instance p0, Le1/l;

    goto/16 :goto_1

    :pswitch_0
    if-eqz v1, :cond_4

    .line 6
    sget-object p0, Lg/e;->a:Lg/g;

    check-cast p0, Lchip/Chip;

    .line 7
    new-instance v2, Le1/g;

    invoke-virtual {p0}, Lchip/Chip;->w()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lchip/Chip;->z()I

    move-result p0

    sget-object v4, Lg/e;->a:Lg/g;

    check-cast v4, Lchip/Chip;

    iget-object v4, v4, Lchip/Chip;->K:Landroid/os/Handler;

    invoke-direct {v2, v3, p0, v4}, Le1/g;-><init>(Ljava/lang/String;ILandroid/os/Handler;)V

    sput-object v2, Le1/a;->b:Le1/l;

    goto/16 :goto_2

    :pswitch_1
    if-eqz v1, :cond_4

    .line 8
    sget-object p0, Lg/e;->a:Lg/g;

    check-cast p0, Lchip/Chip;

    .line 9
    new-instance v2, Le1/d;

    invoke-virtual {p0}, Lchip/Chip;->w()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lchip/Chip;->z()I

    move-result p0

    sget-object v4, Lg/e;->a:Lg/g;

    check-cast v4, Lchip/Chip;

    iget-object v4, v4, Lchip/Chip;->K:Landroid/os/Handler;

    invoke-direct {v2, v3, p0, v4}, Le1/d;-><init>(Ljava/lang/String;ILandroid/os/Handler;)V

    sput-object v2, Le1/a;->b:Le1/l;

    goto/16 :goto_2

    :pswitch_2
    if-eqz v1, :cond_4

    .line 10
    sget-object p0, Lg/e;->a:Lg/g;

    move-object v2, p0

    check-cast v2, Lchip/Chip;

    .line 11
    new-instance v2, Le1/i;

    const-string v3, "/dev/i2c-5"

    const/16 v4, 0xbc

    check-cast p0, Lchip/Chip;

    iget-object p0, p0, Lchip/Chip;->K:Landroid/os/Handler;

    invoke-direct {v2, v3, v4, p0}, Le1/i;-><init>(Ljava/lang/String;ILandroid/os/Handler;)V

    sput-object v2, Le1/a;->b:Le1/l;

    goto/16 :goto_2

    :pswitch_3
    if-eqz v1, :cond_4

    .line 12
    sget-object p0, Lg/e;->a:Lg/g;

    check-cast p0, Lchip/Chip;

    .line 13
    new-instance v2, Le1/f;

    invoke-virtual {p0}, Lchip/Chip;->w()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lchip/Chip;->z()I

    move-result p0

    sget-object v4, Lg/e;->a:Lg/g;

    check-cast v4, Lchip/Chip;

    iget-object v4, v4, Lchip/Chip;->K:Landroid/os/Handler;

    invoke-direct {v2, v3, p0, v4}, Le1/f;-><init>(Ljava/lang/String;ILandroid/os/Handler;)V

    sput-object v2, Le1/a;->b:Le1/l;

    goto/16 :goto_2

    :pswitch_4
    if-eqz v1, :cond_4

    .line 14
    sget-object p0, Lg/e;->a:Lg/g;

    check-cast p0, Lchip/Chip;

    .line 15
    new-instance v2, Le1/h;

    invoke-virtual {p0}, Lchip/Chip;->w()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lchip/Chip;->z()I

    move-result p0

    sget-object v4, Lg/e;->a:Lg/g;

    check-cast v4, Lchip/Chip;

    iget-object v4, v4, Lchip/Chip;->K:Landroid/os/Handler;

    invoke-direct {v2, v3, p0, v4}, Le1/h;-><init>(Ljava/lang/String;ILandroid/os/Handler;)V

    sput-object v2, Le1/a;->b:Le1/l;

    goto/16 :goto_2

    :pswitch_5
    if-eqz v1, :cond_2

    .line 16
    sget-object p0, Lg/e;->a:Lg/g;

    check-cast p0, Lchip/Chip;

    .line 17
    new-instance v2, Le1/e;

    invoke-virtual {p0}, Lchip/Chip;->w()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lchip/Chip;->z()I

    move-result p0

    sget-object v4, Lg/e;->a:Lg/g;

    check-cast v4, Lchip/Chip;

    iget-object v4, v4, Lchip/Chip;->K:Landroid/os/Handler;

    invoke-direct {v2, v3, p0, v4}, Le1/e;-><init>(Ljava/lang/String;ILandroid/os/Handler;)V

    sput-object v2, Le1/a;->b:Le1/l;

    goto :goto_2

    .line 18
    :cond_2
    new-instance p0, Le1/o;

    invoke-direct {p0}, Le1/o;-><init>()V

    sput-object p0, Le1/a;->b:Le1/l;

    goto :goto_2

    .line 19
    :pswitch_6
    new-instance p0, Le1/m;

    invoke-direct {p0}, Le1/m;-><init>()V

    sput-object p0, Le1/a;->b:Le1/l;

    goto :goto_2

    .line 20
    :pswitch_7
    new-instance p0, Le1/p;

    invoke-direct {p0}, Le1/p;-><init>()V

    sput-object p0, Le1/a;->b:Le1/l;

    goto :goto_2

    :pswitch_8
    if-eqz v1, :cond_3

    .line 21
    new-instance p0, Le1/h;

    sget-object v2, Lg/e;->a:Lg/g;

    check-cast v2, Lchip/Chip;

    iget-object v2, v2, Lchip/Chip;->K:Landroid/os/Handler;

    invoke-direct {p0, v2}, Le1/h;-><init>(Landroid/os/Handler;)V

    sput-object p0, Le1/a;->b:Le1/l;

    goto :goto_2

    .line 22
    :cond_3
    new-instance p0, Le1/q;

    invoke-direct {p0}, Le1/q;-><init>()V

    sput-object p0, Le1/a;->b:Le1/l;

    goto :goto_2

    .line 23
    :pswitch_9
    new-instance p0, Le1/j;

    invoke-direct {p0}, Le1/j;-><init>()V

    sput-object p0, Le1/a;->b:Le1/l;

    goto :goto_2

    .line 24
    :pswitch_a
    new-instance p0, Le1/n;

    invoke-direct {p0}, Le1/n;-><init>()V

    sput-object p0, Le1/a;->b:Le1/l;

    goto :goto_2

    .line 25
    :pswitch_b
    new-instance p0, Le1/k;

    invoke-direct {p0}, Le1/k;-><init>()V

    sput-object p0, Le1/a;->b:Le1/l;

    goto :goto_2

    .line 26
    :goto_1
    invoke-direct {p0}, Le1/l;-><init>()V

    sput-object p0, Le1/a;->b:Le1/l;

    :cond_4
    :goto_2
    :pswitch_c
    if-nez v1, :cond_5

    .line 27
    sget-object p0, Le1/a;->b:Le1/l;

    invoke-virtual {p0}, Le1/l;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    :cond_5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_c
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static d(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object v0, Lo1/j0;->g:Lo1/j0;

    invoke-virtual {v0, p0}, Lo1/j0;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static e(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object v0, Lo1/j0;->i:Lo1/j0;

    invoke-virtual {v0, p0}, Lo1/j0;->d(Ljava/lang/Runnable;)V

    return-void
.end method
