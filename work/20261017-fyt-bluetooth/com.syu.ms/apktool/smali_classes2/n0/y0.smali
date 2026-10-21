.class public Ln0/y0;
.super Ln0/c4;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln0/c4;-><init>()V

    return-void
.end method


# virtual methods
.method public P2()V
    .locals 3

    .line 1
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lu0/b;->t4:[I

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 3
    invoke-static {}, Ly0/d;->r()V

    .line 4
    invoke-static {}, Ly0/d;->x()V

    const-string v0, "/dev/ttyS0"

    .line 5
    invoke-static {v0}, Lz/k;->g(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lz/a;->w:Lo1/i0;

    const-string v1, "/dev/snd/sound_spectrogram"

    invoke-virtual {v0, v1}, Lo1/i0;->a(Ljava/lang/String;)I

    .line 7
    invoke-static {}, Lz/k;->c()V

    :goto_0
    return-void
.end method

.method public S2()V
    .locals 3

    .line 1
    invoke-super {p0}, Ln0/c4;->S2()V

    .line 2
    invoke-static {}, Lmodule/sound/AudioDevice;->W()Lmodule/sound/AudioDevice;

    move-result-object v0

    .line 3
    sget-object v1, Lg/e;->a:Lg/g;

    instance-of v2, v1, Lchip/Chip;

    if-eqz v2, :cond_3

    .line 4
    check-cast v1, Lchip/Chip;

    .line 5
    instance-of v0, v0, Lmodule/sound/C8288;

    if-nez v0, :cond_0

    invoke-static {}, Lk0/rt;->a3()Lk0/rt;

    move-result-object v0

    invoke-virtual {v0}, Lk0/rt;->g3()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    :cond_0
    invoke-virtual {v1}, Lchip/Chip;->u()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lchip/Chip;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 7
    :cond_1
    sget-object v0, Lbase/Configure$Property;->b:Lbase/Configure$Property;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lbase/Configure$Property;->b(Z)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/16 v0, 0xd

    .line 8
    invoke-static {v0}, Lc1/b;->g(I)V

    .line 9
    invoke-virtual {v1}, Lchip/Chip;->x()Ljava/lang/String;

    move-result-object v1

    const v2, 0x9600

    invoke-static {v1, v2, v0}, Lz/k;->k(Ljava/lang/String;II)V

    :cond_3
    return-void
.end method

.method public X2()V
    .locals 3

    .line 1
    invoke-super {p0}, Ln0/c4;->X2()V

    .line 2
    sget v0, Lo0/e;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lmodule/sound/AudioDevice;->W()Lmodule/sound/AudioDevice;

    move-result-object v0

    .line 4
    sget-object v1, Lg/e;->a:Lg/g;

    instance-of v2, v1, Lchip/Chip;

    if-eqz v2, :cond_4

    .line 5
    check-cast v1, Lchip/Chip;

    .line 6
    instance-of v0, v0, Lmodule/sound/C8288;

    if-nez v0, :cond_1

    invoke-static {}, Lk0/rt;->a3()Lk0/rt;

    move-result-object v0

    invoke-virtual {v0}, Lk0/rt;->g3()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    :cond_1
    invoke-virtual {v1}, Lchip/Chip;->u()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lchip/Chip;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 8
    :cond_2
    sget-object v0, Lbase/Configure$Property;->b:Lbase/Configure$Property;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lbase/Configure$Property;->b(Z)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    const/16 v0, 0xd

    .line 9
    invoke-static {v0}, Lc1/b;->g(I)V

    .line 10
    invoke-virtual {v1}, Lchip/Chip;->x()Ljava/lang/String;

    move-result-object v1

    const v2, 0x9600

    invoke-static {v1, v2, v0}, Lz/k;->k(Ljava/lang/String;II)V

    :cond_4
    :goto_0
    return-void
.end method

.method public a3()V
    .locals 3

    .line 1
    invoke-super {p0}, Ln0/c4;->a3()V

    .line 2
    invoke-static {}, Lmodule/sound/AudioDevice;->W()Lmodule/sound/AudioDevice;

    move-result-object v0

    .line 3
    sget-object v1, Lg/e;->a:Lg/g;

    instance-of v2, v1, Lchip/Chip;

    if-eqz v2, :cond_3

    .line 4
    check-cast v1, Lchip/Chip;

    .line 5
    instance-of v0, v0, Lmodule/sound/C8288;

    const-string v2, "/dev/ttyS4"

    if-nez v0, :cond_0

    invoke-static {}, Lk0/rt;->a3()Lk0/rt;

    move-result-object v0

    invoke-virtual {v0}, Lk0/rt;->g3()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    :cond_0
    invoke-virtual {v1}, Lchip/Chip;->u()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 7
    :cond_1
    sget-object v0, Lbase/Configure$Property;->b:Lbase/Configure$Property;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbase/Configure$Property;->b(Z)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/16 v0, 0xd

    .line 8
    invoke-static {v0}, Lc1/b;->g(I)V

    const v1, 0x9600

    .line 9
    invoke-static {v2, v1, v0}, Lz/k;->k(Ljava/lang/String;II)V

    :cond_3
    return-void
.end method

.method public j3()V
    .locals 1

    const-string v0, "HYI"

    .line 1
    sput-object v0, Ln0/j4;->c:Ljava/lang/String;

    const/16 v0, 0x51

    .line 2
    sput v0, Lm1/a;->d:I

    .line 3
    invoke-super {p0}, Ln0/c4;->j3()V

    const/4 v0, 0x2

    .line 4
    sput v0, Lh0/c;->i0:I

    return-void
.end method
