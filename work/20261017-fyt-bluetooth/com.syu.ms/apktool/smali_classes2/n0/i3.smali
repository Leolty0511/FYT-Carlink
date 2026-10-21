.class public Ln0/i3;
.super Ln0/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln0/a;-><init>()V

    return-void
.end method


# virtual methods
.method public L3()V
    .locals 1

    const-string v0, "ZHAN2"

    .line 1
    sput-object v0, Ln0/j4;->c:Ljava/lang/String;

    const/16 v0, 0x124

    .line 2
    sput v0, Lm1/a;->d:I

    return-void
.end method

.method public W2()V
    .locals 0

    .line 1
    invoke-super {p0}, Ln0/c4;->W2()V

    return-void
.end method

.method public X2()V
    .locals 16

    .line 1
    invoke-super/range {p0 .. p0}, Ln0/a;->X2()V

    .line 2
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-static {v0}, Lc/g;->g(Landroid/content/Context;)Lc/g;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 4
    invoke-virtual {v0, v1}, Lc/g;->k(Z)V

    .line 5
    invoke-virtual {v0}, Lc/g;->b()V

    .line 6
    sget-object v3, La/b;->j:Ljava/lang/String;

    .line 7
    invoke-static {}, Lo1/u;->Q()Z

    move-result v4

    const/4 v5, 0x0

    .line 8
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v4, :cond_0

    .line 9
    new-instance v6, Lc/g$b;

    sget-object v7, La/b;->p:Ljava/lang/String;

    invoke-direct {v6, v5, v2, v3, v7}, Lc/g$b;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lc/g;->a(Lc/g$b;)V

    goto :goto_0

    .line 10
    :cond_0
    new-instance v6, Lc/g$b;

    sget-object v7, La/b;->o:Ljava/lang/String;

    sget-object v8, La/b;->p:Ljava/lang/String;

    invoke-direct {v6, v5, v2, v7, v8}, Lc/g$b;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lc/g;->a(Lc/g$b;)V

    .line 11
    :goto_0
    new-instance v5, Lc/g$b;

    const/4 v6, 0x2

    sget-object v7, La/b;->k:Ljava/lang/String;

    sget-object v8, La/b;->l:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v5, v2, v9, v7, v8}, Lc/g$b;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lc/g;->a(Lc/g$b;)V

    const/16 v2, 0x8

    const/4 v5, 0x3

    if-eqz v4, :cond_1

    .line 12
    new-instance v4, Lc/g$b;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "com.syu.btav"

    invoke-direct {v4, v6, v7, v3, v8}, Lc/g$b;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lc/g;->a(Lc/g$b;)V

    .line 13
    new-instance v4, Lc/g$b;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v6, La/b;->z:Ljava/lang/String;

    invoke-direct {v4, v5, v2, v3, v6}, Lc/g$b;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lc/g;->a(Lc/g$b;)V

    goto :goto_1

    .line 14
    :cond_1
    new-instance v3, Lc/g$b;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    sget-object v13, La/b;->k:Ljava/lang/String;

    sget-object v15, La/b;->l:Ljava/lang/String;

    const-string v14, "com.syu.bt.act.ActBtAvStart"

    move-object v10, v3

    invoke-direct/range {v10 .. v15}, Lc/g$b;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lc/g;->a(Lc/g$b;)V

    .line 15
    new-instance v3, Lc/g$b;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v5, La/b;->y:Ljava/lang/String;

    sget-object v6, La/b;->z:Ljava/lang/String;

    invoke-direct {v3, v4, v2, v5, v6}, Lc/g$b;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lc/g;->a(Lc/g$b;)V

    :goto_1
    const/4 v2, 0x4

    const-string v3, "sys.syu.mode_ignore_video"

    .line 16
    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 17
    new-instance v1, Lc/g$b;

    const/4 v3, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v4, 0x9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, La/b;->A:Ljava/lang/String;

    sget-object v6, La/b;->B:Ljava/lang/String;

    invoke-direct {v1, v2, v4, v5, v6}, Lc/g$b;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lc/g;->a(Lc/g$b;)V

    move v2, v3

    .line 18
    :cond_2
    new-instance v1, Lc/g$b;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Navi"

    invoke-direct {v1, v2, v9, v3, v3}, Lc/g$b;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lc/g;->a(Lc/g$b;)V

    return-void
.end method

.method public j3()V
    .locals 1

    .line 1
    invoke-super {p0}, Ln0/a;->j3()V

    const/4 v0, 0x2

    .line 2
    sput v0, Lmodule/sound/AudioDevice;->E0:I

    return-void
.end method
