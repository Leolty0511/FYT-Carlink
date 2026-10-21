.class public Lg/i;
.super Lg/m;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lg/m;-><init>()V

    const/16 v0, 0x40

    .line 2
    sput v0, Lf1/e;->W:I

    const v0, 0x7f030061

    .line 3
    sput v0, Lf1/a;->N0:I

    return-void
.end method


# virtual methods
.method public V()V
    .locals 2

    const-string v0, "/dev/i2c-0"

    .line 1
    iput-object v0, p0, Lchip/Chip;->d:Ljava/lang/String;

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lchip/Chip;->g:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lchip/Chip;->h:Ljava/lang/String;

    const-string v1, "/dev/ttyHS1"

    .line 4
    iput-object v1, p0, Lchip/Chip;->i:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lchip/Chip;->j:Ljava/lang/String;

    return-void
.end method

.method public X()V
    .locals 8

    .line 1
    const-class v0, Lp1/b;

    new-instance v1, Lf1/o$f;

    const-string v2, "TP2815"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lf1/o$f;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lf1/o$d;

    const-class v4, Lf1/a;

    const-string v5, "cam_sensor_id1"

    const/16 v6, 0x44

    invoke-direct {v2, v5, v6, v4, v0}, Lf1/o$d;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v1, v2}, Lf1/o;->a(Lf1/o$f;Lf1/o$d;)V

    .line 2
    new-instance v1, Lf1/o$f;

    const-string v2, "TP2850"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v4}, Lf1/o$f;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lf1/o$d;

    const-class v5, Lf1/b;

    const-string v7, "cam_sensor_id2"

    invoke-direct {v2, v7, v6, v5, v0}, Lf1/o$d;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v1, v2}, Lf1/o;->a(Lf1/o$f;Lf1/o$d;)V

    .line 3
    new-instance v0, Lf1/o$f;

    const-string v1, "TP9963"

    invoke-direct {v0, v1, v4}, Lf1/o$f;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lf1/o$d;

    const-class v2, Lf1/p;

    const-string v4, ""

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-direct {v1, v4, v5, v2, v6}, Lf1/o$d;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0, v1}, Lf1/o;->a(Lf1/o$f;Lf1/o$d;)V

    .line 4
    invoke-static {}, Lf1/o;->g()Lf1/o;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "sys.fyt.main.vc_"

    invoke-virtual {v0, v1, v2}, Lf1/o;->A(ILjava/lang/String;)V

    .line 5
    invoke-static {}, Lf1/o;->g()Lf1/o;

    move-result-object v0

    const-string/jumbo v1, "sys.fyt.sub.vc_"

    invoke-virtual {v0, v3, v1}, Lf1/o;->A(ILjava/lang/String;)V

    return-void
.end method

.method public a()V
    .locals 0

    .line 1
    invoke-super {p0}, Lg/p;->a()V

    return-void
.end method

.method public b()V
    .locals 0

    .line 1
    invoke-super {p0}, Lg/p;->b()V

    return-void
.end method

.method public g0(II)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lg/m;->g0(II)V

    .line 2
    invoke-static {}, Lf1/o;->g()Lf1/o;

    move-result-object p2

    .line 3
    invoke-virtual {p2, p1}, Lf1/o;->d(I)Lf1/q;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p2}, Lf1/q;->r()Lp1/a;

    move-result-object v0

    .line 5
    instance-of v1, v0, Lp1/b;

    if-eqz v1, :cond_0

    .line 6
    check-cast v0, Lp1/b;

    invoke-virtual {v0, p1}, Lp1/b;->g(I)V

    .line 7
    :cond_0
    instance-of p1, p2, Lf1/e;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    const/16 v0, 0xf0

    const/16 v1, 0x2d0

    .line 8
    invoke-virtual {p2, p1, v1, v0}, Lf1/q;->l(III)V

    const/4 p1, 0x1

    const/16 v0, 0x120

    .line 9
    invoke-virtual {p2, p1, v1, v0}, Lf1/q;->l(III)V

    :cond_1
    return-void
.end method

.method public t(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p1, p0, Lchip/Chip;->d:Ljava/lang/String;

    return-object p1
.end method
