.class public Lk0/es$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/es;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/es;


# direct methods
.method public constructor <init>(Lk0/es;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/es$a;->a:Lk0/es;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lk0/es$a;->a:Lk0/es;

    iget v1, v0, Lk0/es;->F:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/es;->F:I

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

    const/4 v1, 0x3

    .line 2
    sget v4, Lu0/b;->a0:I

    aput v4, v0, v1

    invoke-static {v0}, Lz/k;->s([I)V

    .line 3
    sget v0, Lu0/b;->a0:I

    if-ne v0, v2, :cond_3

    const/4 v0, 0x5

    new-array v1, v0, [I

    .line 4
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v0, [I

    .line 5
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v0, [I

    .line 6
    fill-array-data v1, :array_2

    invoke-static {v1}, Lz/k;->s([I)V

    const-string v1, "/sys/fytver/fyt_bin_version"

    .line 7
    invoke-static {v1}, Lk0/qt;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Ls18"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 8
    invoke-static {v1}, Lk0/qt;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "Lt18"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "persist.lsec.c8918L.dual_port"

    .line 9
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "false"

    .line 10
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_1
    iget-object v1, p0, Lk0/es$a;->a:Lk0/es;

    invoke-static {v1}, Lk0/es;->f3(Lk0/es;)Lo1/g0;

    move-result-object v2

    const/16 v4, 0xa

    const/16 v5, 0x14

    invoke-virtual {v2, v4, v5}, Lo1/g0;->b(II)I

    move-result v2

    invoke-static {v1, v2}, Lk0/es;->g3(Lk0/es;I)V

    .line 12
    iget-object v1, p0, Lk0/es$a;->a:Lk0/es;

    invoke-static {v1}, Lk0/es;->f3(Lk0/es;)Lo1/g0;

    move-result-object v2

    const/16 v4, 0xb

    const/16 v5, 0x24

    invoke-virtual {v2, v4, v5}, Lo1/g0;->b(II)I

    move-result v2

    invoke-static {v1, v2}, Lk0/es;->h3(Lk0/es;I)V

    .line 13
    iget-object v1, p0, Lk0/es$a;->a:Lk0/es;

    invoke-static {v1}, Lk0/es;->f3(Lk0/es;)Lo1/g0;

    move-result-object v2

    const/16 v4, 0xf

    invoke-virtual {v2, v4, v3}, Lo1/g0;->b(II)I

    move-result v2

    invoke-static {v1, v2}, Lk0/es;->i3(Lk0/es;I)V

    .line 14
    iget-object v1, p0, Lk0/es$a;->a:Lk0/es;

    invoke-static {v1}, Lk0/es;->f3(Lk0/es;)Lo1/g0;

    move-result-object v2

    const/16 v4, 0x17

    invoke-virtual {v2, v4, v3}, Lo1/g0;->b(II)I

    move-result v2

    invoke-static {v1, v2}, Lk0/es;->j3(Lk0/es;I)V

    .line 15
    iget-object v1, p0, Lk0/es$a;->a:Lk0/es;

    invoke-static {v1}, Lk0/es;->f3(Lk0/es;)Lo1/g0;

    move-result-object v2

    const/16 v4, 0x19

    invoke-virtual {v2, v4, v3}, Lo1/g0;->b(II)I

    move-result v2

    invoke-static {v1, v2}, Lk0/es;->k3(Lk0/es;I)V

    .line 16
    sget-object v1, La/b;->Q:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    sget v1, Lu0/b;->D:I

    const/16 v2, 0xd

    if-eq v1, v2, :cond_3

    .line 17
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v1

    sget-object v2, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HandlerSound.volSrcCmd 3333333  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lk0/es;->e3()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "----DataMain.sAppId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lu0/b;->D:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 18
    invoke-static {}, Lk0/es;->e3()I

    move-result v1

    invoke-static {v1}, Ly0/h;->u0(I)V

    new-array v0, v0, [I

    .line 19
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 20
    :cond_2
    iget-object v0, v0, Lk0/es;->H:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 21
    iget-object v0, p0, Lk0/es$a;->a:Lk0/es;

    const/4 v1, 0x6

    iput v1, v0, Lk0/es;->F:I

    :cond_3
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x90
        0x2
        0x30
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x90
        0x2
        0x38
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x90
        0x2
        0x35
        0x0
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0xc0
        0x2
        0x1
        0x0
    .end array-data
.end method
