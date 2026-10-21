.class public Ln0/g4;
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
.method public H3(Lmodule/sound/AudioDevice;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Ln0/c4;->H3(Lmodule/sound/AudioDevice;)V

    const-string v0, "sys.fyt.bluetooth_type"

    const-string v1, "0"

    .line 2
    invoke-static {v0, v1}, Lo1/s0;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "4"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    instance-of v0, p1, Lmodule/sound/C32107;

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    .line 4
    sget-object v1, Lmodule/sound/C32107$CHANNEL;->d:Lmodule/sound/C32107$CHANNEL;

    iget v2, v1, Lmodule/sound/C32107$CHANNEL;->a:I

    invoke-virtual {p1, v0, v2}, Lmodule/sound/AudioDevice;->L0(II)V

    const/4 v0, 0x2

    .line 5
    iget v1, v1, Lmodule/sound/C32107$CHANNEL;->a:I

    invoke-virtual {p1, v0, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    :cond_1
    return-void
.end method

.method public I3(Le1/c;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Ln0/c4;->I3(Le1/c;)V

    const-string v0, "sys.syu.dvd_type"

    const-string v1, ""

    .line 2
    invoke-static {v0, v1}, Lo1/s0;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Le1/e;

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    const/4 v1, 0x2

    .line 3
    invoke-virtual {p1, v1, v0}, Le1/c;->v(II)V

    const/4 v0, 0x6

    .line 4
    invoke-virtual {p1, v0, v1}, Le1/c;->v(II)V

    const/4 v0, 0x5

    .line 5
    invoke-virtual {p1, v0, v1}, Le1/c;->v(II)V

    :cond_0
    return-void
.end method

.method public K3()V
    .locals 4

    .line 1
    invoke-static {}, Lb/b;->f()Lb/b;

    move-result-object v0

    const-string v1, "3"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lb/b;->b(Ljava/lang/String;Z)V

    .line 2
    invoke-static {}, Lb/b;->f()Lb/b;

    move-result-object v0

    const-string v1, "4"

    invoke-virtual {v0, v1, v2}, Lb/b;->b(Ljava/lang/String;Z)V

    const-string v0, "sys.fyt.bluetooth_type"

    const-string v3, "0"

    .line 3
    invoke-static {v0, v3}, Lo1/s0;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    :cond_0
    new-instance v0, Ln0/g4$c;

    invoke-direct {v0, p0}, Ln0/g4$c;-><init>(Ln0/g4;)V

    .line 6
    sget-object v1, Lh0/d;->c:Lo1/y;

    invoke-virtual {v1, v0, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 7
    sget-object v1, Lh0/d;->a:Lo1/y;

    invoke-virtual {v1, v0, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    :cond_1
    return-void
.end method

.method public L3()V
    .locals 1

    const-string v0, "LUCH"

    .line 1
    sput-object v0, Ln0/j4;->c:Ljava/lang/String;

    const/16 v0, 0x105

    .line 2
    sput v0, Lm1/a;->d:I

    .line 3
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-static {v0}, Lc/g;->g(Landroid/content/Context;)Lc/g;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lc/g;->b()V

    return-void
.end method

.method public X2()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    sput-boolean v0, Lu0/b;->l2:Z

    .line 2
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    const-string v1, "com.roadrover.voiceassistant"

    invoke-static {v0, v1}, Lo1/u;->k0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Le/c;->E:Lo1/v;

    invoke-virtual {v0}, Lo1/v;->b()V

    .line 4
    invoke-static {}, Le/a;->e()Lo1/o;

    move-result-object v1

    const/16 v2, -0x1f4

    invoke-virtual {v0, v1, v2}, Lo1/v;->a(Lo1/o;I)V

    .line 5
    new-instance v1, Ln0/g4$a;

    invoke-direct {v1, p0}, Ln0/g4$a;-><init>(Ln0/g4;)V

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Lo1/v;->a(Lo1/o;I)V

    .line 6
    invoke-static {}, Lc/f;->b()Lc/f;

    move-result-object v0

    const/4 v1, 0x7

    new-instance v2, Ln0/g4$b;

    invoke-direct {v2, p0}, Ln0/g4$b;-><init>(Ln0/g4;)V

    invoke-virtual {v0, v1, v2}, Lc/f;->h(ILc/f$a;)V

    .line 7
    :cond_0
    invoke-super {p0}, Ln0/a;->X2()V

    return-void
.end method
