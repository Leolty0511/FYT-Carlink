.class public Ln0/y2;
.super Ln0/a;
.source "SourceFile"


# static fields
.field public static final K:[I


# instance fields
.field public A:Lui/a;

.field public B:Lui/a;

.field public C:Z

.field public D:Ljava/lang/Runnable;

.field public E:Ljava/lang/Runnable;

.field public F:Ljava/lang/Runnable;

.field public G:Ljava/lang/Runnable;

.field public final H:Ljava/lang/Runnable;

.field public I:Ljava/lang/Runnable;

.field public final J:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x25

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Ln0/y2;->K:[I

    return-void

    :array_0
    .array-data 4
        0x60
        0x5a
        0x4c
        0x44
        0x3d
        0x38
        0x35
        0x32
        0x2f
        0x2d
        0x2b
        0x29
        0x28
        0x27
        0x26
        0x25
        0x24
        0x23
        0x22
        0x21
        0x20
        0x1f
        0x1e
        0x1d
        0x1c
        0x1b
        0x1a
        0x19
        0x18
        0x17
        0x16
        0x15
        0x14
        0x13
        0x12
        0x11
        0x10
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ln0/a;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ln0/y2;->C:Z

    .line 3
    new-instance v0, Ln0/y2$j;

    invoke-direct {v0, p0}, Ln0/y2$j;-><init>(Ln0/y2;)V

    iput-object v0, p0, Ln0/y2;->D:Ljava/lang/Runnable;

    .line 4
    new-instance v0, Ln0/y2$k;

    invoke-direct {v0, p0}, Ln0/y2$k;-><init>(Ln0/y2;)V

    iput-object v0, p0, Ln0/y2;->E:Ljava/lang/Runnable;

    .line 5
    new-instance v0, Ln0/y2$l;

    invoke-direct {v0, p0}, Ln0/y2$l;-><init>(Ln0/y2;)V

    iput-object v0, p0, Ln0/y2;->F:Ljava/lang/Runnable;

    .line 6
    new-instance v0, Ln0/y2$m;

    invoke-direct {v0, p0}, Ln0/y2$m;-><init>(Ln0/y2;)V

    iput-object v0, p0, Ln0/y2;->G:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Ln0/y2$n;

    invoke-direct {v0, p0}, Ln0/y2$n;-><init>(Ln0/y2;)V

    iput-object v0, p0, Ln0/y2;->H:Ljava/lang/Runnable;

    .line 8
    new-instance v0, Ln0/y2$o;

    invoke-direct {v0, p0}, Ln0/y2$o;-><init>(Ln0/y2;)V

    iput-object v0, p0, Ln0/y2;->I:Ljava/lang/Runnable;

    .line 9
    new-instance v0, Ln0/y2$i;

    invoke-direct {v0, p0}, Ln0/y2$i;-><init>(Ln0/y2;)V

    iput-object v0, p0, Ln0/y2;->J:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public H3(Lmodule/sound/AudioDevice;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Ln0/c4;->H3(Lmodule/sound/AudioDevice;)V

    const-string v0, "sys.fyt.bluetooth_type"

    const-string v1, "0"

    .line 2
    invoke-static {v0, v1}, Lo1/s0;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    instance-of v1, p1, Lmodule/sound/C32107;

    const-string v2, "7"

    const-string v3, "6"

    const-string v4, "4"

    const/4 v5, 0x3

    const/4 v6, 0x2

    const-string v7, "2"

    if-eqz v1, :cond_1

    const/4 v1, 0x6

    .line 4
    sget-object v8, Lmodule/sound/C32107$CHANNEL;->f:Lmodule/sound/C32107$CHANNEL;

    iget v8, v8, Lmodule/sound/C32107$CHANNEL;->a:I

    invoke-virtual {p1, v1, v8}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 5
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    :cond_0
    sget-object v0, Lmodule/sound/C32107$CHANNEL;->c:Lmodule/sound/C32107$CHANNEL;

    iget v1, v0, Lmodule/sound/C32107$CHANNEL;->a:I

    invoke-virtual {p1, v6, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 7
    iget v0, v0, Lmodule/sound/C32107$CHANNEL;->a:I

    invoke-virtual {p1, v5, v0}, Lmodule/sound/AudioDevice;->L0(II)V

    goto :goto_0

    .line 8
    :cond_1
    instance-of v1, p1, Lmodule/sound/C7729;

    if-eqz v1, :cond_3

    .line 9
    sget-object v1, Ln0/y2;->K:[I

    invoke-static {v1}, Lmodule/sound/AudioDevice;->Q0([I)V

    .line 10
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    :cond_2
    sget-object v0, Lmodule/sound/C7729$CHANNEL;->f:Lmodule/sound/C7729$CHANNEL;

    iget v1, v0, Lmodule/sound/C7729$CHANNEL;->a:I

    invoke-virtual {p1, v6, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 12
    iget v0, v0, Lmodule/sound/C7729$CHANNEL;->a:I

    invoke-virtual {p1, v5, v0}, Lmodule/sound/AudioDevice;->L0(II)V

    :cond_3
    :goto_0
    return-void
.end method

.method public I3(Le1/c;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Ln0/c4;->I3(Le1/c;)V

    .line 2
    instance-of v0, p1, Le1/e;

    if-eqz v0, :cond_2

    const-string v0, "persist.lsec.bbatype"

    const-string v1, ""

    .line 3
    invoke-static {v0, v1}, Lo1/s0;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p1, v1, v2}, Le1/c;->v(II)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    const-string v3, "ro.fyt.uiid"

    .line 5
    invoke-static {v3, v0}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v2, :cond_1

    const/4 v0, 0x3

    .line 6
    invoke-virtual {p1, v1, v0}, Le1/c;->v(II)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p1, v1, v3}, Le1/c;->v(II)V

    .line 8
    :goto_0
    invoke-virtual {p1, v3, v2}, Le1/c;->v(II)V

    const/4 v0, 0x7

    .line 9
    invoke-virtual {p1, v0, v2}, Le1/c;->v(II)V

    :cond_2
    :goto_1
    return-void
.end method

.method public L3()V
    .locals 13

    const/4 v0, 0x0

    .line 1
    sput v0, Lw0/d;->R:I

    const/4 v1, 0x1

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3
    sput v1, Lw0/d;->S:I

    const/4 v3, 0x3

    .line 4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 5
    sput v3, Lmodule/sound/C32107;->E1:I

    const/16 v4, 0xa

    .line 6
    sput v4, Lmodule/sound/C32107;->D1:I

    const/16 v4, 0x25

    new-array v4, v4, [I

    .line 7
    fill-array-data v4, :array_0

    sput-object v4, Lmodule/sound/C32107;->F1:[I

    .line 8
    sput v1, Lu0/b;->P3:I

    const-string v1, "YUF"

    .line 9
    sput-object v1, Ln0/j4;->c:Ljava/lang/String;

    const/16 v1, 0x112

    .line 10
    sput v1, Lm1/a;->d:I

    .line 11
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-static {v1}, Lc/g;->g(Landroid/content/Context;)Lc/g;

    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lc/g;->b()V

    .line 13
    new-instance v4, Lc/g$b;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, La/b;->o:Ljava/lang/String;

    sget-object v7, La/b;->p:Ljava/lang/String;

    invoke-direct {v4, v5, v2, v6, v7}, Lc/g$b;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lc/g;->a(Lc/g$b;)V

    .line 14
    new-instance v4, Lc/g$b;

    sget-object v5, La/b;->k:Ljava/lang/String;

    sget-object v6, La/b;->l:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v4, v2, v11, v5, v6}, Lc/g$b;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lc/g;->a(Lc/g$b;)V

    .line 15
    new-instance v2, Lc/g$b;

    const/4 v12, 0x4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v7, La/b;->k:Ljava/lang/String;

    sget-object v9, La/b;->l:Ljava/lang/String;

    const-string v8, "com.syu.bt.act.ActBtAvStart"

    move-object v4, v2

    move-object v6, v10

    invoke-direct/range {v4 .. v9}, Lc/g$b;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lc/g;->a(Lc/g$b;)V

    .line 16
    new-instance v2, Lc/g$b;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, La/b;->y:Ljava/lang/String;

    sget-object v7, La/b;->z:Ljava/lang/String;

    invoke-direct {v2, v4, v5, v6, v7}, Lc/g$b;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lc/g;->a(Lc/g$b;)V

    .line 17
    new-instance v2, Lc/g$b;

    const/16 v4, 0x9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, La/b;->A:Ljava/lang/String;

    sget-object v6, La/b;->B:Ljava/lang/String;

    invoke-direct {v2, v10, v4, v5, v6}, Lc/g$b;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lc/g;->a(Lc/g$b;)V

    .line 18
    new-instance v2, Lc/g$b;

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "Navi"

    invoke-direct {v2, v4, v11, v5, v5}, Lc/g$b;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lc/g;->a(Lc/g$b;)V

    .line 19
    invoke-static {}, Lr0/a;->X2()Lr0/a;

    move-result-object v1

    .line 20
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 21
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    const/16 v4, 0x17

    .line 22
    invoke-virtual {v2, v4, v12}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v4, 0x18

    .line 23
    invoke-virtual {v2, v4, v12}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v5, 0x16

    .line 24
    invoke-virtual {v2, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x15

    const/16 v5, 0xbb

    .line 25
    invoke-virtual {v2, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x19

    const/16 v5, 0x239

    .line 26
    invoke-virtual {v2, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v6, 0x1a

    const/16 v7, 0x23a

    .line 27
    invoke-virtual {v2, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v6, 0x1b

    .line 28
    invoke-virtual {v2, v6, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x1c

    .line 29
    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x21

    const/16 v4, 0x23c

    .line 30
    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x22

    const/16 v6, 0x23b

    .line 31
    invoke-virtual {v2, v3, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 32
    invoke-virtual {v1, v2, v0}, Lr0/a;->d3(Landroid/util/SparseIntArray;Z)V

    .line 33
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    new-instance v1, Ln0/y2$p;

    invoke-direct {v1, p0}, Ln0/y2$p;-><init>(Ln0/y2;)V

    invoke-virtual {v0, v4, v1}, Lc/e;->i(ILc/d;)V

    .line 34
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    new-instance v1, Ln0/y2$q;

    invoke-direct {v1, p0}, Ln0/y2$q;-><init>(Ln0/y2;)V

    invoke-virtual {v0, v5, v1}, Lc/e;->i(ILc/d;)V

    .line 35
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    new-instance v1, Ln0/y2$r;

    invoke-direct {v1, p0}, Ln0/y2$r;-><init>(Ln0/y2;)V

    invoke-virtual {v0, v7, v1}, Lc/e;->i(ILc/d;)V

    .line 36
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    new-instance v1, Ln0/y2$a;

    invoke-direct {v1, p0}, Ln0/y2$a;-><init>(Ln0/y2;)V

    const/16 v2, 0x208

    invoke-virtual {v0, v2, v1}, Lc/e;->i(ILc/d;)V

    .line 37
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    new-instance v1, Ln0/y2$b;

    invoke-direct {v1, p0}, Ln0/y2$b;-><init>(Ln0/y2;)V

    const/16 v2, 0x21b

    invoke-virtual {v0, v2, v1}, Lc/e;->i(ILc/d;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1a
        0x18
        0x16
        0x15
        0x14
        0x13
        0x12
        0x11
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0xf
        0xf
        0xd
        0xb
        0x9
        0x7
        0x5
        0x3
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public M2()V
    .locals 2

    .line 1
    invoke-super {p0}, Ln0/c4;->M2()V

    const-string v0, "com.synmoon.carkit"

    const-string v1, "com.synmoon.carkit.service.StartUvcService"

    .line 2
    invoke-static {v0, v1}, Lo1/u;->F0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public U2()V
    .locals 0

    .line 1
    invoke-super {p0}, Ln0/c4;->U2()V

    return-void
.end method

.method public X2()V
    .locals 1

    .line 1
    invoke-super {p0}, Ln0/a;->X2()V

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lu0/b;->W3:Z

    return-void
.end method

.method public a3()V
    .locals 3

    .line 1
    invoke-super {p0}, Ln0/c4;->a3()V

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lu0/b;->W3:Z

    .line 3
    sget-object v0, Lu0/c;->c:Lo1/y;

    iget-object v1, p0, Ln0/y2;->J:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public j3()V
    .locals 6

    .line 1
    invoke-super {p0}, Ln0/a;->j3()V

    .line 2
    new-instance v0, Ln0/y2$c;

    invoke-direct {v0, p0}, Ln0/y2$c;-><init>(Ln0/y2;)V

    .line 3
    new-instance v1, Lui/a$d;

    invoke-direct {v1}, Lui/a$d;-><init>()V

    invoke-static {}, La/f;->w()I

    move-result v2

    invoke-static {}, La/f;->i()I

    move-result v3

    invoke-interface {v0, v2, v3}, Lui/a$g;->b(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lui/a$d;->p(Ljava/lang/String;)Lui/a$d;

    move-result-object v1

    const/4 v2, 0x5

    .line 4
    invoke-virtual {v1, v2}, Lui/a$d;->h(I)Lui/a$d;

    move-result-object v1

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v1, v2}, Lui/a$d;->u(I)Lui/a$d;

    move-result-object v1

    const-string v3, "brightness.png"

    .line 6
    invoke-virtual {v1, v3}, Lui/a$d;->l(Ljava/lang/String;)Lui/a$d;

    move-result-object v1

    const-string v3, "brightness_bar.png"

    .line 7
    invoke-virtual {v1, v3}, Lui/a$d;->c(Ljava/lang/String;)Lui/a$d;

    move-result-object v1

    const-string v3, "brightness_bar_p.png"

    .line 8
    invoke-virtual {v1, v3}, Lui/a$d;->d(Ljava/lang/String;)Lui/a$d;

    move-result-object v1

    .line 9
    invoke-virtual {v1, v2}, Lui/a$d;->i(Z)Lui/a$d;

    move-result-object v1

    new-instance v3, Ln0/y2$d;

    invoke-direct {v3, p0}, Ln0/y2$d;-><init>(Ln0/y2;)V

    .line 10
    invoke-virtual {v1, v3}, Lui/a$d;->n(Lui/Bar$a;)Lui/a$d;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lui/a$d;->a()Lui/a;

    move-result-object v1

    iput-object v1, p0, Ln0/y2;->A:Lui/a;

    const/4 v3, 0x1

    .line 12
    invoke-virtual {v1, v3}, Lui/a;->r(I)V

    .line 13
    iget-object v1, p0, Ln0/y2;->A:Lui/a;

    new-instance v4, Ln0/y2$e;

    invoke-direct {v4, p0}, Ln0/y2$e;-><init>(Ln0/y2;)V

    invoke-virtual {v1, v4}, Lui/a;->q(Lui/a$f;)V

    .line 14
    new-instance v1, Lui/a$d;

    invoke-direct {v1}, Lui/a$d;-><init>()V

    .line 15
    invoke-static {}, La/f;->w()I

    move-result v4

    invoke-static {}, La/f;->i()I

    move-result v5

    invoke-interface {v0, v4, v5}, Lui/a$g;->b(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lui/a$d;->p(Ljava/lang/String;)Lui/a$d;

    move-result-object v0

    const/16 v1, 0x30

    .line 16
    invoke-virtual {v0, v1}, Lui/a$d;->h(I)Lui/a$d;

    move-result-object v0

    .line 17
    invoke-virtual {v0, v2}, Lui/a$d;->u(I)Lui/a$d;

    move-result-object v0

    const-string v1, "volume.png"

    .line 18
    invoke-virtual {v0, v1}, Lui/a$d;->l(Ljava/lang/String;)Lui/a$d;

    move-result-object v0

    const-string v1, "volume_mute.png"

    .line 19
    invoke-virtual {v0, v1}, Lui/a$d;->g(Ljava/lang/String;)Lui/a$d;

    move-result-object v0

    const-string v1, "volume_bar.png"

    .line 20
    invoke-virtual {v0, v1}, Lui/a$d;->c(Ljava/lang/String;)Lui/a$d;

    move-result-object v0

    const-string v1, "volume_bar_p.png"

    .line 21
    invoke-virtual {v0, v1}, Lui/a$d;->d(Ljava/lang/String;)Lui/a$d;

    move-result-object v0

    sget v1, Ly0/f;->g:I

    .line 22
    invoke-virtual {v0, v1}, Lui/a$d;->o(I)Lui/a$d;

    move-result-object v0

    .line 23
    invoke-virtual {v0, v2}, Lui/a$d;->i(Z)Lui/a$d;

    move-result-object v0

    new-instance v1, Ln0/y2$g;

    invoke-direct {v1, p0}, Ln0/y2$g;-><init>(Ln0/y2;)V

    .line 24
    invoke-virtual {v0, v1}, Lui/a$d;->m(Landroid/view/View$OnClickListener;)Lui/a$d;

    move-result-object v0

    new-instance v1, Ln0/y2$f;

    invoke-direct {v1, p0}, Ln0/y2$f;-><init>(Ln0/y2;)V

    .line 25
    invoke-virtual {v0, v1}, Lui/a$d;->n(Lui/Bar$a;)Lui/a$d;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lui/a$d;->a()Lui/a;

    move-result-object v0

    iput-object v0, p0, Ln0/y2;->B:Lui/a;

    .line 27
    invoke-virtual {v0, v3}, Lui/a;->r(I)V

    .line 28
    iget-object v0, p0, Ln0/y2;->B:Lui/a;

    new-instance v1, Ln0/y2$h;

    invoke-direct {v1, p0}, Ln0/y2$h;-><init>(Ln0/y2;)V

    invoke-virtual {v0, v1}, Lui/a;->q(Lui/a$f;)V

    .line 29
    iget-object v0, p0, Ln0/y2;->B:Lui/a;

    invoke-static {v0}, La/f;->D(Lui/b;)V

    .line 30
    sget-object v0, Lu0/c;->L:Lo1/y;

    iget-object v1, p0, Ln0/y2;->E:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 31
    sget-object v0, Lu0/c;->N:Lo1/y;

    iget-object v1, p0, Ln0/y2;->I:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public x0(Lf1/q;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Ln0/c4;->x0(Lf1/q;)V

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    instance-of v0, p1, Lf1/b;

    if-eqz v0, :cond_3

    const-string v0, "persist.lsec.bbatype"

    const-string v1, ""

    .line 3
    invoke-static {v0, v1}, Lo1/s0;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p1, v1, v2}, Lf1/q;->G(II)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    const-string v3, "ro.fyt.uiid"

    .line 5
    invoke-static {v3, v0}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v2, :cond_2

    const/4 v0, 0x3

    .line 6
    invoke-virtual {p1, v1, v0}, Lf1/q;->G(II)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p1, v1, v3}, Lf1/q;->G(II)V

    .line 8
    :goto_0
    invoke-virtual {p1, v3, v2}, Lf1/q;->G(II)V

    const/4 v0, 0x7

    .line 9
    invoke-virtual {p1, v0, v2}, Lf1/q;->G(II)V

    :cond_3
    :goto_1
    return-void
.end method

.method public x3()V
    .locals 5

    .line 1
    invoke-super {p0}, Ln0/c4;->x3()V

    const-string v0, "ro.syu.brightLevelOfDay"

    const-string v1, ""

    .line 2
    invoke-static {v0, v1}, Lo1/s0;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo1/s0;->E(Ljava/lang/String;)[I

    move-result-object v0

    const-string v2, "ro.syu.brightLevelOfNight"

    .line 3
    invoke-static {v2, v1}, Lo1/s0;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo1/s0;->E(Ljava/lang/String;)[I

    move-result-object v1

    const/4 v2, 0x2

    .line 4
    invoke-static {v0, v2}, Lo1/s0;->h([II)Z

    move-result v3

    const/4 v4, 0x3

    if-eqz v3, :cond_0

    move-object v3, v0

    goto :goto_0

    :cond_0
    new-array v3, v4, [I

    fill-array-data v3, :array_0

    :goto_0
    sput-object v3, Lu0/b;->V2:[I

    .line 5
    invoke-static {v0, v2}, Lo1/s0;->h([II)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-array v1, v4, [I

    fill-array-data v1, :array_1

    :goto_1
    sput-object v1, Lu0/b;->W2:[I

    .line 6
    invoke-static {}, Lh1/a;->d()Lh1/a;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Lh1/a;->h:I

    return-void

    :array_0
    .array-data 4
        0xa
        0x3c
        0x64
    .end array-data

    :array_1
    .array-data 4
        0xa
        0x3c
        0x64
    .end array-data
.end method
