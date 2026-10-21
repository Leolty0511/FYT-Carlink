.class public Lk0/ds$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ds;


# direct methods
.method public constructor <init>(Lk0/ds;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ds$e;->a:Lk0/ds;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lk0/ds$e;->a:Lk0/ds;

    iget v1, v0, Lk0/ds;->w:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/ds;->w:I

    if-lez v1, :cond_2

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v3, 0x0

    aput v1, v0, v3

    const/16 v1, 0x81

    aput v1, v0, v2

    const/4 v1, 0x2

    aput v2, v0, v1

    const/4 v4, 0x3

    .line 2
    sget v5, Lu0/b;->a0:I

    aput v5, v0, v4

    invoke-static {v0}, Lz/k;->s([I)V

    .line 3
    sget v0, Lu0/b;->a0:I

    if-ne v0, v2, :cond_3

    .line 4
    iget-object v0, p0, Lk0/ds$e;->a:Lk0/ds;

    invoke-static {v0}, Lk0/ds;->e3(Lk0/ds;)Lo1/g0;

    move-result-object v4

    const/4 v5, 0x7

    invoke-virtual {v4, v5, v3}, Lo1/g0;->b(II)I

    move-result v4

    invoke-static {v0, v4}, Lk0/ds;->f3(Lk0/ds;I)V

    .line 5
    iget-object v0, p0, Lk0/ds$e;->a:Lk0/ds;

    invoke-static {v0}, Lk0/ds;->e3(Lk0/ds;)Lo1/g0;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/ds;->g3(Lk0/ds;I)V

    .line 6
    iget-object v0, p0, Lk0/ds$e;->a:Lk0/ds;

    invoke-static {v0}, Lk0/ds;->e3(Lk0/ds;)Lo1/g0;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/ds;->h3(Lk0/ds;I)V

    .line 7
    iget-object v0, p0, Lk0/ds$e;->a:Lk0/ds;

    invoke-static {v0}, Lk0/ds;->e3(Lk0/ds;)Lo1/g0;

    move-result-object v1

    const/16 v4, 0xf

    invoke-virtual {v1, v4, v3}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/ds;->i3(Lk0/ds;I)V

    .line 8
    iget-object v0, p0, Lk0/ds$e;->a:Lk0/ds;

    invoke-static {v0}, Lk0/ds;->e3(Lk0/ds;)Lo1/g0;

    move-result-object v1

    const/16 v3, 0xa

    const/16 v4, 0x14

    invoke-virtual {v1, v3, v4}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/ds;->j3(Lk0/ds;I)V

    .line 9
    iget-object v0, p0, Lk0/ds$e;->a:Lk0/ds;

    invoke-static {v0}, Lk0/ds;->e3(Lk0/ds;)Lo1/g0;

    move-result-object v1

    const/16 v3, 0xb

    const/16 v4, 0x24

    invoke-virtual {v1, v3, v4}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/ds;->k3(Lk0/ds;I)V

    .line 10
    sget-object v0, La/b;->Q:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lu0/b;->D:I

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    .line 11
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    sget-object v1, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HandlerSound.volSrcCmd 3333333  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lk0/ds;->d3()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "----DataMain.sAppId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lu0/b;->D:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lk0/ds;->c3()I

    move-result v0

    if-nez v0, :cond_0

    .line 13
    invoke-static {}, Lk0/ds;->d3()I

    move-result v0

    invoke-static {v0}, Ly0/h;->u0(I)V

    .line 14
    :cond_0
    sget v0, Lk0/nt;->a:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "/sys/fytver/fyt_bin_version"

    .line 15
    invoke-static {v0}, Lk0/qt;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Ls18"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 16
    invoke-static {v0}, Lk0/qt;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Lt18"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const-string v0, "persist.lsec.c8918L.dual_port"

    .line 17
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "false"

    .line 18
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 19
    :cond_2
    iget-object v0, v0, Lk0/ds;->y:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 20
    iget-object v0, p0, Lk0/ds$e;->a:Lk0/ds;

    const/4 v1, 0x5

    iput v1, v0, Lk0/ds;->w:I

    :cond_3
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7a01c8 -> :sswitch_0
        0xa701c7 -> :sswitch_0
        0xa801c7 -> :sswitch_0
        0xa901c7 -> :sswitch_0
        0xaa01c7 -> :sswitch_0
        0xab01c7 -> :sswitch_0
        0xfd01c7 -> :sswitch_0
    .end sparse-switch
.end method
