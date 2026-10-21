.class public Ln0/o0;
.super Ln0/c4;
.source "SourceFile"


# instance fields
.field public A:Z

.field public final B:Ljava/lang/Runnable;

.field public final C:Lo1/s;

.field public final D:Lo1/s;

.field public final E:Lbase/a;

.field public final F:Lbase/a;

.field public z:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ln0/c4;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Ln0/o0;->z:[I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Ln0/o0;->A:Z

    .line 4
    new-instance v0, Ln0/o0$a;

    invoke-direct {v0, p0}, Ln0/o0$a;-><init>(Ln0/o0;)V

    iput-object v0, p0, Ln0/o0;->B:Ljava/lang/Runnable;

    .line 5
    new-instance v0, Ln0/o0$b;

    invoke-direct {v0, p0}, Ln0/o0$b;-><init>(Ln0/o0;)V

    iput-object v0, p0, Ln0/o0;->C:Lo1/s;

    .line 6
    new-instance v0, Ln0/o0$c;

    invoke-direct {v0, p0}, Ln0/o0$c;-><init>(Ln0/o0;)V

    iput-object v0, p0, Ln0/o0;->D:Lo1/s;

    .line 7
    new-instance v0, Ln0/o0$d;

    invoke-direct {v0, p0}, Ln0/o0$d;-><init>(Ln0/o0;)V

    iput-object v0, p0, Ln0/o0;->E:Lbase/a;

    .line 8
    new-instance v0, Ln0/o0$e;

    invoke-direct {v0, p0}, Ln0/o0$e;-><init>(Ln0/o0;)V

    iput-object v0, p0, Ln0/o0;->F:Lbase/a;

    const/4 v0, 0x1

    .line 9
    sput-boolean v0, Lo1/i;->o:Z

    return-void
.end method


# virtual methods
.method public C3()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Ln0/o0;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    invoke-super {p0}, Ln0/c4;->C3()V

    return-void
.end method

.method public H3(Lmodule/sound/AudioDevice;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Ln0/c4;->H3(Lmodule/sound/AudioDevice;)V

    .line 2
    instance-of v0, p1, Lmodule/sound/C3702;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    sget-object v1, Lmodule/sound/C3702$CHANNEL;->d:Lmodule/sound/C3702$CHANNEL;

    iget v1, v1, Lmodule/sound/C3702$CHANNEL;->a:I

    invoke-virtual {p1, v0, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    const/4 v0, 0x5

    .line 4
    sget-object v1, Lmodule/sound/C3702$CHANNEL;->f:Lmodule/sound/C3702$CHANNEL;

    iget v1, v1, Lmodule/sound/C3702$CHANNEL;->a:I

    invoke-virtual {p1, v0, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    const/4 v0, 0x3

    .line 5
    sget-object v1, Lmodule/sound/C3702$CHANNEL;->b:Lmodule/sound/C3702$CHANNEL;

    iget v2, v1, Lmodule/sound/C3702$CHANNEL;->a:I

    invoke-virtual {p1, v0, v2}, Lmodule/sound/AudioDevice;->L0(II)V

    const/4 v0, 0x2

    .line 6
    iget v1, v1, Lmodule/sound/C3702$CHANNEL;->a:I

    invoke-virtual {p1, v0, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 7
    iget-object p1, p0, Ln0/o0;->z:[I

    if-eqz p1, :cond_0

    invoke-static {p1}, Lmodule/sound/AudioDevice;->Q0([I)V

    :cond_0
    return-void
.end method

.method public M2()V
    .locals 2

    .line 1
    invoke-super {p0}, Ln0/c4;->M2()V

    .line 2
    invoke-static {}, Ly0/j;->a3()Ly0/j;

    move-result-object v0

    const-string v1, "com.iflytek.cutefly.speechclient"

    invoke-virtual {v0, v1}, Ly0/j;->l3(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Ly0/j;->a3()Ly0/j;

    move-result-object v0

    const-string v1, "com.baidu.carlifevehicle"

    invoke-virtual {v0, v1}, Ly0/j;->l3(Ljava/lang/String;)V

    return-void
.end method

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
    invoke-static {}, Ly0/b;->r()V

    .line 7
    sget-object v0, Lz/a;->w:Lo1/i0;

    const-string v1, "/dev/snd/sound_spectrogram"

    invoke-virtual {v0, v1}, Lo1/i0;->a(Ljava/lang/String;)I

    .line 8
    invoke-static {}, Lz/k;->c()V

    .line 9
    sget-object v0, Lu0/b;->t4:[I

    const/4 v1, 0x7

    const/16 v2, 0x16

    aput v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x14

    .line 10
    aput v2, v0, v1

    .line 11
    sget-object v0, Le/c;->D:Lo1/v;

    invoke-virtual {v0}, Lo1/v;->b()V

    .line 12
    invoke-static {}, Le/a;->h()Lo1/o;

    move-result-object v1

    const/16 v2, -0x1f4

    invoke-virtual {v0, v1, v2}, Lo1/v;->a(Lo1/o;I)V

    .line 13
    invoke-static {}, Le/a;->f()Lo1/o;

    move-result-object v1

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Lo1/v;->a(Lo1/o;I)V

    .line 14
    :goto_0
    invoke-virtual {p0}, Ln0/o0;->S3()V

    return-void
.end method

.method public S2()V
    .locals 3

    const/4 v0, -0x1

    .line 1
    sput v0, Lu0/b;->b4:I

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lm1/a;->e:Z

    .line 3
    iget-object v1, p0, Ln0/o0;->E:Lbase/a;

    sput-object v1, La/c;->c:Lbase/a;

    .line 4
    iget-object v1, p0, Ln0/o0;->F:Lbase/a;

    sput-object v1, La/c;->b:Lbase/a;

    .line 5
    sput v0, Lu0/b;->I3:I

    .line 6
    sput-boolean v0, Lu0/b;->V3:Z

    .line 7
    invoke-super {p0}, Ln0/c4;->S2()V

    .line 8
    invoke-virtual {p0}, Ln0/o0;->S3()V

    .line 9
    sget-object v0, La/b;->d:Lo1/d;

    iget-object v1, p0, Ln0/o0;->C:Lo1/s;

    const-string v2, "com.iflytek.cutefly.speechclient"

    invoke-virtual {v0, v2, v1}, Lo1/d;->h(Ljava/lang/Comparable;Ljava/lang/Object;)V

    .line 10
    sget-object v0, Lg/e;->a:Lg/g;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lchip/Chip;

    if-eqz v1, :cond_0

    .line 11
    check-cast v0, Lchip/Chip;

    new-instance v1, Ln0/o0$f;

    invoke-direct {v1, p0}, Ln0/o0$f;-><init>(Ln0/o0;)V

    invoke-virtual {v0, v1}, Lchip/Chip;->T(Lchip/Chip$d0;)V

    :cond_0
    return-void
.end method

.method public S3()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SdCardPath"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    const-string v1, "/mnt/sdcard/Target/Map"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 3
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "key"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x64

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 4
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final T3(I)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVolTable3702 id ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LG"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lmodule/sound/AudioDevice;->W()Lmodule/sound/AudioDevice;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3
    instance-of v0, v0, Lmodule/sound/C3702;

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0x25

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    const-string v3, "DataSound.sVolSrcMax ="

    const/4 v4, 0x1

    if-eq p1, v4, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto/16 :goto_0

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Ly0/f;->g:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x28

    .line 5
    sput p1, Ly0/f;->g:I

    .line 6
    sput p1, Ly0/f;->C:I

    .line 7
    sget-object v0, Ly0/b;->d:[I

    iget-object v1, p0, Ln0/c4;->a:[I

    invoke-static {v0, v4, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p1, 0x2a

    new-array p1, p1, [I

    .line 8
    fill-array-data p1, :array_0

    .line 9
    iput-object p1, p0, Ln0/o0;->z:[I

    .line 10
    invoke-static {p1}, Lmodule/sound/AudioDevice;->Q0([I)V

    goto :goto_0

    .line 11
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Ly0/f;->g:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x1f

    .line 12
    sput p1, Ly0/f;->g:I

    new-array p1, v0, [I

    .line 13
    fill-array-data p1, :array_1

    .line 14
    invoke-static {p1, v2}, Lo1/s0;->b([II)[I

    move-result-object p1

    iput-object p1, p0, Ln0/o0;->z:[I

    .line 15
    invoke-static {p1}, Lmodule/sound/AudioDevice;->Q0([I)V

    goto :goto_0

    .line 16
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DataSound.sVolSrcMax000 ="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Ly0/f;->g:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array p1, v0, [I

    .line 17
    fill-array-data p1, :array_2

    .line 18
    invoke-static {p1, v2}, Lo1/s0;->b([II)[I

    move-result-object p1

    iput-object p1, p0, Ln0/o0;->z:[I

    .line 19
    invoke-static {p1}, Lmodule/sound/AudioDevice;->Q0([I)V

    :cond_4
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xff
        0xc2
        0xbe
        0xba
        0xb6
        0xb2
        0xae
        0xaa
        0xa6
        0xa2
        0xa0
        0x9e
        0x9c
        0x9b
        0x99
        0x97
        0x95
        0x94
        0x93
        0x92
        0x91
        0x90
        0x8f
        0x8e
        0x8c
        0x8b
        0x8a
        0x89
        0x88
        0x87
        0x86
        0x85
        0x84
        0x83
        0x82
        0x81
        0x80
        0x7f
        0x7e
        0x7d
        0x7c
        0x7b
    .end array-data

    :array_1
    .array-data 4
        0xff
        0xc2
        0xbc
        0xb6
        0xb0
        0xaa
        0xa4
        0xa1
        0x9e
        0x9b
        0x98
        0x96
        0x94
        0x93
        0x92
        0x91
        0x90
        0x8f
        0x8e
        0x8c
        0x8b
        0x8a
        0x89
        0x88
        0x87
        0x86
        0x85
        0x84
        0x83
        0x82
        0x81
        0x80
        0x80
        0x80
        0x80
        0x80
        0x80
    .end array-data

    :array_2
    .array-data 4
        0xff
        0xc2
        0xbe
        0xba
        0xb6
        0xb2
        0xae
        0xaa
        0xa6
        0xa2
        0xa0
        0x9e
        0x9c
        0x9b
        0x99
        0x97
        0x95
        0x94
        0x93
        0x92
        0x91
        0x90
        0x8f
        0x8e
        0x8c
        0x8b
        0x8a
        0x89
        0x88
        0x87
        0x86
        0x85
        0x84
        0x83
        0x82
        0x81
        0x80
    .end array-data
.end method

.method public b3()V
    .locals 3

    .line 1
    invoke-static {}, Lg/f;->l()V

    .line 2
    invoke-static {}, Lg/e;->g()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    sget-object v0, Lu0/b;->t4:[I

    const/4 v1, 0x7

    const/16 v2, 0x16

    aput v2, v0, v1

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lg/e;->g()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 5
    sget-object v0, Lu0/b;->t4:[I

    const/4 v1, 0x3

    const/4 v2, 0x6

    aput v2, v0, v1

    :cond_1
    :goto_0
    return-void
.end method

.method public j3()V
    .locals 6

    const-string v0, "HOJ"

    .line 1
    sput-object v0, Ln0/j4;->c:Ljava/lang/String;

    const/16 v0, 0x41

    .line 2
    sput v0, Lm1/a;->d:I

    const/4 v0, 0x1

    .line 3
    sput-boolean v0, Lu0/b;->h2:Z

    .line 4
    sput-boolean v0, Lu0/b;->C3:Z

    .line 5
    sput-boolean v0, Lh0/c;->l0:Z

    .line 6
    invoke-super {p0}, Ln0/c4;->j3()V

    const/4 v1, 0x6

    .line 7
    sput v1, Lp0/b;->g:I

    .line 8
    sget-object v2, Le/c;->D:Lo1/v;

    invoke-virtual {v2}, Lo1/v;->b()V

    .line 9
    invoke-static {}, Le/a;->f()Lo1/o;

    move-result-object v3

    const/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4}, Lo1/v;->a(Lo1/o;I)V

    const-string v2, "ro.fyt.uivol"

    const/4 v3, 0x0

    .line 10
    invoke-static {v2, v3}, La/i;->k(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_2

    const-string v2, "ro.fyt.canbus_id"

    .line 11
    invoke-static {v2, v3}, La/i;->k(Ljava/lang/String;I)I

    move-result v2

    const v4, 0xf006

    if-ne v2, v4, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    new-instance v2, Lui/e;

    invoke-direct {v2}, Lui/e;-><init>()V

    invoke-static {v2}, La/f;->D(Lui/b;)V

    :goto_0
    const/16 v2, 0xf0

    .line 13
    sput v2, Lu0/b;->Q2:I

    .line 14
    sput v2, Lu0/b;->S2:I

    const/16 v2, 0x5f

    .line 15
    sput v2, Lu0/b;->T2:I

    const-string v2, "ro.fyt.uiid"

    .line 16
    invoke-static {v2, v3}, La/i;->k(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, -0x1

    if-ne v2, v3, :cond_1

    .line 17
    sget-object v2, Lu0/b;->h3:[I

    aput v4, v2, v0

    const/16 v5, 0xa

    .line 18
    aput v0, v2, v5

    .line 19
    :cond_1
    sget-object v2, Lu0/b;->h3:[I

    const/4 v5, 0x3

    aput v4, v2, v5

    .line 20
    aput v4, v2, v3

    const/16 v3, 0x8

    .line 21
    aput v4, v2, v3

    const/4 v3, 0x5

    .line 22
    aput v4, v2, v3

    .line 23
    aput v4, v2, v1

    const/16 v1, 0xc

    .line 24
    aput v4, v2, v1

    const/16 v1, 0xd

    .line 25
    aput v4, v2, v1

    :cond_2
    const/16 v1, 0x14

    .line 26
    sput v1, Ly0/f;->T:I

    .line 27
    sput v0, Ly0/f;->y:I

    .line 28
    sput v0, Ly0/f;->x:I

    .line 29
    sget-object v1, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Ln0/o0;->B:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v0}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public z3(I)Z
    .locals 7

    const v0, 0xf000

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_3

    const v0, 0x2f005

    if-eq p1, v0, :cond_3

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto :goto_1

    .line 1
    :pswitch_0
    sput v2, Lu0/b;->P3:I

    .line 2
    invoke-virtual {p0, v2}, Ln0/o0;->T3(I)V

    goto :goto_0

    .line 3
    :pswitch_1
    sget v0, Ly0/f;->a:I

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, v2}, Ln0/o0;->T3(I)V

    goto :goto_0

    .line 5
    :pswitch_2
    sget-object v0, Lu0/b;->t4:[I

    const/4 v3, 0x5

    const/4 v4, 0x6

    aput v4, v0, v3

    .line 6
    sget-object v0, Lk0/nt;->d:Lk0/lt;

    instance-of v0, v0, Lo1/q;

    if-eqz v0, :cond_2

    .line 7
    invoke-static {}, Ln0/k4;->d()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_1
    const v3, 0x1c200

    .line 9
    invoke-static {v0}, Lz/d;->a(Ljava/lang/String;)Lz/b;

    move-result-object v4

    iput-object v4, p0, Ln0/c4;->b:Lz/b;

    .line 10
    sget-object v4, Lk0/nt;->d:Lk0/lt;

    check-cast v4, Lo1/q;

    invoke-static {v0, v3, v4}, Lz/k;->e(Ljava/lang/String;ILo1/q;)V

    .line 11
    new-instance v0, Lz/b;

    sget-object v4, Lz/a;->q:Lo1/f0;

    sget-object v5, Lz/a;->i:Lo1/e0;

    sget-object v6, Lk0/nt;->d:Lk0/lt;

    check-cast v6, Lo1/q;

    invoke-direct {v0, v4, v5, v6, v3}, Lz/b;-><init>(Lo1/f0;Lo1/e0;Lo1/q;I)V

    iput-object v0, p0, Ln0/c4;->c:Lz/b;

    .line 12
    :cond_2
    invoke-virtual {p0, v1}, Ln0/o0;->T3(I)V

    goto :goto_0

    .line 13
    :cond_3
    :pswitch_3
    invoke-virtual {p0, v1}, Ln0/o0;->T3(I)V

    :goto_0
    move v1, v2

    :goto_1
    if-eqz v1, :cond_4

    goto :goto_2

    .line 14
    :cond_4
    invoke-super {p0, p1}, Ln0/c4;->z3(I)Z

    move-result v1

    :goto_2
    return v1

    :pswitch_data_0
    .packed-switch 0xf002
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1f004
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
