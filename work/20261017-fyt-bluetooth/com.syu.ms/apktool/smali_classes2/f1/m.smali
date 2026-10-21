.class public Lf1/m;
.super Lf1/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf1/m$c;,
        Lf1/m$d;
    }
.end annotation


# static fields
.field public static q0:Ljava/lang/String; = "timing_start"

.field public static r0:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lf1/m$d;",
            "Ljava/util/LinkedList<",
            "Lf1/m$c;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public final P:Z

.field public Q:Z

.field public R:Z

.field public S:Z

.field public T:Lf1/q$c;

.field public U:I

.field public V:I

.field public W:Lq1/b;

.field public X:Lo1/l0;

.field public Y:Lo1/l0;

.field public final Z:Ljava/lang/Object;

.field public a0:I

.field public b0:I

.field public c0:Landroid/content/SharedPreferences;

.field public d0:Ljava/lang/Runnable;

.field public e0:Z

.field public f0:I

.field public g0:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lf1/m$c;",
            ">;"
        }
    .end annotation
.end field

.field public h0:Lf1/m$d;

.field public final i0:Ljava/lang/Runnable;

.field public j0:[I

.field public final k0:Lf1/m$c;

.field public l0:Lf1/m$c;

.field public m0:Lf1/m$c;

.field public n0:[I

.field public o0:I

.field public p0:I


# direct methods
.method public static constructor <clinit>()V
    .locals 19

    const/16 v0, 0x800

    const/16 v1, 0x2d9

    const/16 v2, 0x28

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/16 v6, 0xe

    const/4 v7, 0x2

    const/4 v8, -0x1

    .line 1
    invoke-static/range {v0 .. v8}, Lf1/m;->c0(III[IIIIII)V

    const/16 v0, 0xa

    new-array v4, v0, [I

    .line 2
    fill-array-data v4, :array_0

    const/16 v1, 0x800

    const/16 v2, 0x2d9

    const/16 v3, 0x28

    const/4 v6, -0x1

    const/16 v7, 0xe

    const/4 v8, 0x2

    const/16 v9, 0xe0

    invoke-static/range {v1 .. v9}, Lf1/m;->c0(III[IIIIII)V

    const/16 v10, 0x886

    const/16 v11, 0x2d9

    const/16 v12, 0x18

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v16, 0x10

    const/16 v17, 0x2

    const/16 v18, -0x1

    .line 3
    invoke-static/range {v10 .. v18}, Lf1/m;->c0(III[IIIIII)V

    const/16 v0, 0x62a

    const/16 v1, 0x230

    const/16 v2, 0x3c

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/16 v6, 0x9

    const/4 v7, 0x2

    const/4 v8, -0x1

    .line 4
    invoke-static/range {v0 .. v8}, Lf1/m;->c0(III[IIIIII)V

    const/16 v9, 0x7c0

    const/16 v10, 0x488

    const/16 v11, 0x8

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/16 v15, 0x1a

    const/16 v16, 0x2

    const/16 v17, -0x1

    .line 5
    invoke-static/range {v9 .. v17}, Lf1/m;->c0(III[IIIIII)V

    const/16 v0, 0x498

    const/16 v1, 0x20d

    const/16 v2, 0x80

    const/4 v6, 0x5

    .line 6
    invoke-static/range {v0 .. v8}, Lf1/m;->c0(III[IIIIII)V

    const/16 v9, 0x6d0

    const/16 v10, 0x20d

    const/16 v11, 0x80

    const/16 v15, 0x9

    .line 7
    invoke-static/range {v9 .. v17}, Lf1/m;->c0(III[IIIIII)V

    const/16 v0, 0x420

    const/16 v2, 0xa

    .line 8
    invoke-static/range {v0 .. v8}, Lf1/m;->c0(III[IIIIII)V

    const/16 v9, 0x800

    const/16 v10, 0x30d

    const/16 v11, 0x20

    const/16 v15, 0xe

    .line 9
    invoke-static/range {v9 .. v17}, Lf1/m;->c0(III[IIIIII)V

    return-void

    :array_0
    .array-data 4
        0x28
        0x28
        0x30
        0x780
        0x800
        0x4
        0x2
        0x3
        0x2d0
        0x2d9
    .end array-data
.end method

.method public constructor <init>(ILp1/a;ILandroid/os/Handler;)V
    .locals 8

    const/16 v1, 0xf

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lf1/q;-><init>(IILp1/a;ILandroid/os/Handler;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lf1/m;->P:Z

    .line 3
    iput-boolean p1, p0, Lf1/m;->Q:Z

    const/4 p2, 0x0

    .line 4
    iput-boolean p2, p0, Lf1/m;->R:Z

    .line 5
    iput-boolean p2, p0, Lf1/m;->S:Z

    .line 6
    new-instance p3, Lf1/q$c;

    const/4 p4, -0x1

    invoke-direct {p3, p4, p4}, Lf1/q$c;-><init>(II)V

    iput-object p3, p0, Lf1/m;->T:Lf1/q$c;

    .line 7
    iput p4, p0, Lf1/m;->U:I

    iput p4, p0, Lf1/m;->V:I

    .line 8
    new-instance p3, Lq1/b;

    const/4 v0, 0x3

    invoke-direct {p3, p4, v0}, Lq1/b;-><init>(II)V

    iput-object p3, p0, Lf1/m;->W:Lq1/b;

    .line 9
    new-instance p3, Lo1/l0;

    invoke-direct {p3}, Lo1/l0;-><init>()V

    iput-object p3, p0, Lf1/m;->X:Lo1/l0;

    .line 10
    new-instance p3, Lo1/l0;

    invoke-direct {p3}, Lo1/l0;-><init>()V

    iput-object p3, p0, Lf1/m;->Y:Lo1/l0;

    .line 11
    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lf1/m;->Z:Ljava/lang/Object;

    .line 12
    iput p4, p0, Lf1/m;->a0:I

    .line 13
    iput p4, p0, Lf1/m;->b0:I

    const/4 p3, 0x0

    .line 14
    iput-object p3, p0, Lf1/m;->c0:Landroid/content/SharedPreferences;

    .line 15
    iput-boolean p2, p0, Lf1/m;->e0:Z

    .line 16
    iput p2, p0, Lf1/m;->f0:I

    .line 17
    iput-object p3, p0, Lf1/m;->g0:Ljava/util/LinkedList;

    .line 18
    iput-object p3, p0, Lf1/m;->h0:Lf1/m$d;

    .line 19
    new-instance v0, Lf1/m$a;

    invoke-direct {v0, p0}, Lf1/m$a;-><init>(Lf1/m;)V

    iput-object v0, p0, Lf1/m;->i0:Ljava/lang/Runnable;

    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 20
    fill-array-data v0, :array_0

    iput-object v0, p0, Lf1/m;->j0:[I

    .line 21
    new-instance v0, Lf1/m$c;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/16 v5, 0x10

    const/4 v6, 0x2

    const/4 v7, -0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lf1/m$c;-><init>([IIIIII)V

    iput-object v0, p0, Lf1/m;->k0:Lf1/m$c;

    .line 22
    iput-object p3, p0, Lf1/m;->l0:Lf1/m$c;

    .line 23
    iput-object p3, p0, Lf1/m;->m0:Lf1/m$c;

    .line 24
    iput-object p3, p0, Lf1/m;->n0:[I

    .line 25
    iput p2, p0, Lf1/m;->o0:I

    .line 26
    iput p4, p0, Lf1/m;->p0:I

    .line 27
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object p3

    const-string v0, "Chip8918L"

    invoke-virtual {p3, v0, p2}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    iput-object p2, p0, Lf1/m;->c0:Landroid/content/SharedPreferences;

    .line 28
    sget-object p3, Lf1/m;->q0:Ljava/lang/String;

    const-string v0, "sys.chip8918l.timing_index"

    invoke-static {v0, p4}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result p4

    invoke-interface {p2, p3, p4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lf1/m;->o0:I

    .line 29
    sget-object p2, Lbase/Configure$Property;->d:Lbase/Configure$Property;

    invoke-virtual {p2, p1}, Lbase/Configure$Property;->b(Z)Z

    move-result p1

    iput-boolean p1, p0, Lf1/m;->Q:Z

    return-void

    :array_0
    .array-data 4
        0xe6
        0x18
        0x8
        0x780
        0x886
        0x4
        0x2
        0x3
        0x2d0
        0x2d9
    .end array-data
.end method

.method public static synthetic X(Lf1/m;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lf1/m;->e0:Z

    return p0
.end method

.method public static synthetic Y(Lf1/m;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lf1/m;->e0:Z

    return p1
.end method

.method public static synthetic Z(Lf1/m;)I
    .locals 0

    .line 1
    iget p0, p0, Lf1/m;->f0:I

    return p0
.end method

.method public static synthetic a0(Lf1/m;)I
    .locals 2

    .line 1
    iget v0, p0, Lf1/m;->f0:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lf1/m;->f0:I

    return v0
.end method

.method public static synthetic b0(Lf1/m;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lf1/m;->j0(Z)V

    return-void
.end method

.method public static c0(III[IIIIII)V
    .locals 8

    .line 1
    new-instance v7, Lf1/m$c;

    move-object v0, v7

    move-object v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    move/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lf1/m$c;-><init>([IIIIII)V

    .line 2
    new-instance v0, Lf1/m$d;

    move v1, p0

    move v2, p1

    move v3, p2

    invoke-direct {v0, p0, p1, p2}, Lf1/m$d;-><init>(III)V

    invoke-virtual {v7, v0}, Lf1/m$c;->b(Lf1/m$d;)V

    .line 3
    invoke-static {v7}, Lf1/m;->k0(Lf1/m$c;)V

    return-void
.end method

.method public static declared-synchronized k0(Lf1/m$c;)V
    .locals 3

    const-class v0, Lf1/m;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lf1/m;->r0:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lf1/m;->r0:Ljava/util/HashMap;

    .line 3
    :cond_0
    sget-object v1, Lf1/m;->r0:Ljava/util/HashMap;

    iget-object v2, p0, Lf1/m$c;->g:Lf1/m$d;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_1
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 6
    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 7
    sget-object v2, Lf1/m;->r0:Ljava/util/HashMap;

    iget-object p0, p0, Lf1/m$c;->g:Lf1/m$d;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string p0, "Chip8918L"

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==== timingMap size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lf1/m;->r0:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public C(ILy/b;)Z
    .locals 7

    const/4 v0, 0x0

    const/16 v1, 0xae

    if-ne p1, v1, :cond_2

    const/4 v1, 0x3

    new-array v2, v1, [I

    .line 1
    iget v3, p0, Lf1/q;->i:I

    aput v3, v2, v0

    const/4 v3, 0x1

    aput v0, v2, v3

    iget v4, p0, Lf1/m;->a0:I

    const/4 v5, 0x2

    aput v4, v2, v5

    invoke-static {p2, p1, v2}, Lo1/x;->v(Ly/b;I[I)V

    .line 2
    iget v2, p0, Lf1/m;->b0:I

    if-ltz v2, :cond_0

    new-array v4, v1, [I

    .line 3
    iget v6, p0, Lf1/q;->i:I

    aput v6, v4, v0

    aput v5, v4, v3

    aput v2, v4, v5

    invoke-static {p2, p1, v4}, Lo1/x;->v(Ly/b;I[I)V

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [I

    .line 4
    iget v4, p0, Lf1/q;->i:I

    aput v4, v2, v0

    const/16 v4, 0x1f4

    aput v4, v2, v3

    iget v4, p0, Lf1/m;->o0:I

    aput v4, v2, v5

    iget-object v4, p0, Lf1/m;->g0:Ljava/util/LinkedList;

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v0

    :goto_0
    aput v0, v2, v1

    invoke-static {p2, p1, v2}, Lo1/x;->v(Ly/b;I[I)V

    return v3

    :cond_2
    return v0
.end method

.method public D()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lf1/q;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-super {p0}, Lf1/q;->D()V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==============================>> RESET  Waiting onUEvent START 1 chipid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf1/q;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Chip8918L"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lf1/m;->U:I

    .line 5
    iput v0, p0, Lf1/m;->V:I

    .line 6
    iget v0, p0, Lf1/q;->h:I

    invoke-static {v0}, Lcom/syu/jni/ToolsJni;->cmd_33_reset_videoIc(I)V

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==============================>> RESET Waiting onUEvent END 1 chipid : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lf1/q;->h:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public M()Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==============================>> setup()  chipid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf1/q;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " loaded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lf1/q;->r:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Chip8918L"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lf1/q;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 3
    :cond_0
    iget-boolean v0, p0, Lf1/q;->r:Z

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lf1/q;->s:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 5
    iget-object v1, p0, Lf1/m;->i0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    :cond_1
    invoke-virtual {p0}, Lf1/m;->D()V

    .line 7
    :cond_2
    iget-boolean v0, p0, Lf1/q;->r:Z

    return v0
.end method

.method public U(Ly/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf1/m;->T:Lf1/q$c;

    const/16 v1, 0xad

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 2
    invoke-virtual {p0, v0, v0}, Lf1/q;->y(II)[I

    move-result-object v0

    invoke-static {p1, v1, v0}, Lo1/x;->v(Ly/b;I[I)V

    goto :goto_0

    .line 3
    :cond_0
    iget v0, v0, Lf1/q$c;->a:I

    invoke-virtual {p0, v0, v0}, Lf1/q;->y(II)[I

    move-result-object v0

    invoke-static {p1, v1, v0}, Lo1/x;->v(Ly/b;I[I)V

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "==============================>> 02 update "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lf1/m;->T:Lf1/q$c;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " chipid : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lf1/q;->h:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Chip8918L"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public a()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lf1/m;->d0()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lf1/m;->V:I

    .line 3
    iput v0, p0, Lf1/m;->U:I

    .line 4
    iget-object v1, p0, Lf1/m;->T:Lf1/q$c;

    iput v0, v1, Lf1/q$c;->a:I

    .line 5
    iput v0, v1, Lf1/q$c;->b:I

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lf1/m;->S:Z

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==============================>> 03 update "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf1/m;->T:Lf1/q$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " chipid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf1/q;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Chip8918L"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Lf1/m;->T:Lf1/q$c;

    iget v0, v0, Lf1/q$c;->a:I

    invoke-virtual {p0, v0, v0}, Lf1/q;->y(II)[I

    move-result-object v0

    const/16 v1, 0xad

    invoke-static {v1, v0}, Lu0/d;->I3(I[I)V

    .line 9
    invoke-super {p0}, Lf1/q;->a()V

    return-void
.end method

.method public b()V
    .locals 0

    .line 1
    invoke-super {p0}, Lf1/q;->b()V

    return-void
.end method

.method public declared-synchronized c(I)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Lf1/q;->c(I)V

    .line 2
    sget-object v0, Lbase/Configure$Property;->d:Lbase/Configure$Property;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lbase/Configure$Property;->b(Z)Z

    move-result v0

    iput-boolean v0, p0, Lf1/m;->Q:Z

    const-string v0, "Chip8918L"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==============================>> 04 openVideo channel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " loaded : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lf1/q;->r:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " chipid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lf1/q;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget v0, p0, Lf1/q;->i:I

    if-eq v0, p1, :cond_0

    .line 5
    iput p1, p0, Lf1/q;->i:I

    .line 6
    iget-object p1, p0, Lf1/q;->s:Landroid/os/Handler;

    if-eqz p1, :cond_0

    .line 7
    iget-object v0, p0, Lf1/m;->i0:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    :cond_0
    iget-boolean p1, p0, Lf1/q;->r:Z

    if-eqz p1, :cond_3

    .line 9
    iget-object p1, p0, Lf1/m;->Z:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    :try_start_1
    iget v0, p0, Lf1/m;->U:I

    if-lez v0, :cond_1

    iget v0, p0, Lf1/m;->V:I

    if-gtz v0, :cond_2

    .line 11
    :cond_1
    invoke-virtual {p0}, Lf1/m;->g0()V

    .line 12
    :cond_2
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 13
    :cond_3
    invoke-virtual {p0}, Lf1/m;->D()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 14
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf1/q;->s:Landroid/os/Handler;

    iget-object v1, p0, Lf1/m;->i0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    invoke-super {p0}, Lf1/q;->d()V

    return-void
.end method

.method public d0()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lf1/m;->e0:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lf1/m;->e0:Z

    .line 3
    iget-object v0, p0, Lf1/m;->d0:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lf1/q;->s:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lf1/m;->d0:Ljava/lang/Runnable;

    :cond_0
    const-string v0, "Chip8918L"

    const-string v1, "----- Polling task cancelled"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public e0()I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lf1/q;->n()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x80

    .line 2
    invoke-virtual {p0, v0}, Lf1/m;->v0(I)Z

    const/16 v0, 0x20

    .line 3
    invoke-virtual {p0, v0}, Lf1/q;->A(I)I

    move-result v0

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "----- checkHasSignal 0x8020 value :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const-string v3, "%02X"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Chip8918L"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    shr-int/lit8 v0, v0, 0x6

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public f0()V
    .locals 15

    const/16 v0, 0x80

    .line 1
    invoke-virtual {p0, v0}, Lf1/m;->v0(I)Z

    const/16 v0, 0x33

    const/16 v1, 0xc

    .line 2
    invoke-virtual {p0, v0, v1}, Lf1/q;->V(II)I

    const-wide/16 v0, 0xa

    .line 3
    invoke-static {v0, v1}, Lo1/s0;->C(J)V

    const/16 v0, 0x30

    .line 4
    invoke-virtual {p0, v0}, Lf1/q;->A(I)I

    move-result v0

    and-int/lit8 v0, v0, 0xf

    shl-int/lit8 v0, v0, 0x8

    const/16 v1, 0x31

    .line 5
    invoke-virtual {p0, v1}, Lf1/q;->A(I)I

    move-result v1

    add-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x8

    const/16 v1, 0x32

    .line 6
    invoke-virtual {p0, v1}, Lf1/q;->A(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=====================>>>  checkTiming() fm_value == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Chip8918L"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x42

    .line 8
    invoke-virtual {p0, v0}, Lf1/q;->A(I)I

    move-result v0

    const/16 v2, 0x4e

    .line 9
    invoke-virtual {p0, v2}, Lf1/q;->A(I)I

    move-result v2

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0x8

    const/16 v3, 0x4f

    .line 10
    invoke-virtual {p0, v3}, Lf1/q;->A(I)I

    move-result v3

    or-int/2addr v2, v3

    const/16 v3, 0x4c

    .line 11
    invoke-virtual {p0, v3}, Lf1/q;->A(I)I

    move-result v3

    and-int/lit8 v3, v3, 0xf

    shl-int/lit8 v3, v3, 0x8

    const/16 v4, 0x4d

    .line 12
    invoke-virtual {p0, v4}, Lf1/q;->A(I)I

    move-result v4

    or-int/2addr v3, v4

    const/16 v4, 0x52

    .line 13
    invoke-virtual {p0, v4}, Lf1/q;->A(I)I

    move-result v4

    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0x8

    const/16 v5, 0x53

    .line 14
    invoke-virtual {p0, v5}, Lf1/q;->A(I)I

    move-result v5

    or-int/2addr v4, v5

    const/16 v5, 0x50

    .line 15
    invoke-virtual {p0, v5}, Lf1/q;->A(I)I

    move-result v5

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x8

    const/16 v6, 0x51

    .line 16
    invoke-virtual {p0, v6}, Lf1/q;->A(I)I

    move-result v6

    or-int/2addr v5, v6

    const/16 v6, 0x44

    .line 17
    invoke-virtual {p0, v6}, Lf1/q;->A(I)I

    move-result v6

    and-int/lit8 v6, v6, 0xf

    shl-int/lit8 v6, v6, 0x8

    const/16 v7, 0x45

    .line 18
    invoke-virtual {p0, v7}, Lf1/q;->A(I)I

    move-result v7

    or-int/2addr v6, v7

    const/16 v7, 0x48

    .line 19
    invoke-virtual {p0, v7}, Lf1/q;->A(I)I

    move-result v7

    and-int/lit8 v7, v7, 0xf

    shl-int/lit8 v7, v7, 0x8

    const/16 v8, 0x49

    .line 20
    invoke-virtual {p0, v8}, Lf1/q;->A(I)I

    move-result v8

    or-int/2addr v7, v8

    const/16 v8, 0x4a

    .line 21
    invoke-virtual {p0, v8}, Lf1/q;->A(I)I

    move-result v8

    and-int/lit8 v8, v8, 0xf

    shl-int/lit8 v8, v8, 0x8

    const/16 v9, 0x4b

    .line 22
    invoke-virtual {p0, v9}, Lf1/q;->A(I)I

    move-result v9

    or-int/2addr v8, v9

    const/16 v9, 0x43

    .line 23
    invoke-virtual {p0, v9}, Lf1/q;->A(I)I

    move-result v9

    const/16 v10, 0x46

    .line 24
    invoke-virtual {p0, v10}, Lf1/q;->A(I)I

    move-result v10

    const/16 v11, 0x47

    .line 25
    invoke-virtual {p0, v11}, Lf1/q;->A(I)I

    move-result v11

    const/4 v12, 0x3

    new-array v13, v12, [Ljava/lang/Object;

    .line 26
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v14, 0x0

    aput-object v4, v13, v14

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v13, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x2

    aput-object v0, v13, v4

    const-string v0, "00 hactive : %d,  vactive : %d sync_polarity : %d "

    invoke-static {v0, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v12, [Ljava/lang/Object;

    .line 27
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v0, v14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v0, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v0, v4

    const-string v12, "00 htotal : %d,  vtotal : %d,  hsa : %d"

    invoke-static {v12, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v4, [Ljava/lang/Object;

    .line 28
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v0, v14

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v0, v5

    const-string v9, "00 hsa : %d,  vsa : %d "

    invoke-static {v9, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v4, [Ljava/lang/Object;

    .line 29
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v14

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v5

    const-string v7, "00 hbp : %d,  vbp : %d "

    invoke-static {v7, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v4, [Ljava/lang/Object;

    .line 30
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v14

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v5

    const-string v4, "00 hfp : %d,  vfp : %d "

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget v0, p0, Lf1/m;->o0:I

    invoke-static {v0, v14}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lf1/m;->p0:I

    .line 32
    iget-object v0, p0, Lf1/m;->l0:Lf1/m$c;

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 33
    invoke-virtual {v0, v2, v3, v6}, Lf1/m$c;->a(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    iget-object v0, p0, Lf1/m;->l0:Lf1/m$c;

    iput-object v0, p0, Lf1/m;->m0:Lf1/m$c;

    .line 35
    iput-object v4, p0, Lf1/m;->l0:Lf1/m$c;

    goto :goto_0

    .line 36
    :cond_0
    iput-object v4, p0, Lf1/m;->g0:Ljava/util/LinkedList;

    move v5, v14

    :cond_1
    :goto_0
    if-eqz v5, :cond_5

    .line 37
    iget-object v0, p0, Lf1/m;->h0:Lf1/m$d;

    if-nez v0, :cond_2

    .line 38
    new-instance v0, Lf1/m$d;

    invoke-direct {v0, v2, v3, v6}, Lf1/m$d;-><init>(III)V

    iput-object v0, p0, Lf1/m;->h0:Lf1/m$d;

    goto :goto_1

    .line 39
    :cond_2
    invoke-virtual {v0, v2}, Lf1/m$d;->c(I)V

    .line 40
    iget-object v0, p0, Lf1/m;->h0:Lf1/m$d;

    invoke-virtual {v0, v3}, Lf1/m$d;->d(I)V

    .line 41
    iget-object v0, p0, Lf1/m;->h0:Lf1/m$d;

    invoke-virtual {v0, v6}, Lf1/m$d;->b(I)V

    .line 42
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Indexs:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lf1/m;->r0:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    sget-object v0, Lf1/m;->r0:Ljava/util/HashMap;

    iget-object v2, p0, Lf1/m;->h0:Lf1/m$d;

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    iput-object v0, p0, Lf1/m;->g0:Ljava/util/LinkedList;

    if-nez v0, :cond_3

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lf1/m;->h0:Lf1/m$d;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "to mTimings is NULL"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 45
    :cond_3
    iget v2, p0, Lf1/m;->p0:I

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lt v2, v0, :cond_4

    .line 46
    iput v14, p0, Lf1/m;->p0:I

    .line 47
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lf1/m;->h0:Lf1/m$d;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "to mTimings size : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lf1/m;->g0:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    return-void
.end method

.method public final g0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lf1/q;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x320

    const-string v1, "sys.c8918.w"

    .line 2
    invoke-static {v1, v0}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lf1/m;->U:I

    const/16 v0, 0x1e0

    const-string v1, "sys.c8918.h"

    .line 3
    invoke-static {v1, v0}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lf1/m;->V:I

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lf1/m;->m0()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lf1/m;->o0()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lf1/m;->n0()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    .line 7
    :goto_1
    invoke-virtual {p0, v1}, Lf1/m;->l0(Z)V

    return-void
.end method

.method public h(IIII)V
    .locals 7

    const/4 p3, 0x1

    const/4 p4, 0x3

    const/16 v0, 0xae

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/16 v3, 0x1f4

    if-eq p1, v3, :cond_0

    goto/16 :goto_1

    .line 1
    :cond_0
    iget p1, p0, Lf1/m;->o0:I

    if-eq p1, p2, :cond_6

    .line 2
    iget-object p1, p0, Lf1/m;->g0:Ljava/util/LinkedList;

    if-nez p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    :goto_0
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v4, -0x1

    .line 3
    invoke-static {v4, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lf1/m;->o0:I

    const/4 v4, 0x0

    .line 4
    iput-object v4, p0, Lf1/m;->m0:Lf1/m$c;

    .line 5
    iput-object v4, p0, Lf1/m;->l0:Lf1/m$c;

    .line 6
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 7
    iget-object v4, p0, Lf1/m;->c0:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    sget-object v5, Lf1/m;->q0:Ljava/lang/String;

    iget v6, p0, Lf1/m;->o0:I

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v4, 0x4

    new-array v4, v4, [I

    .line 8
    iget v5, p0, Lf1/q;->i:I

    aput v5, v4, v1

    aput v3, v4, p3

    aput p2, v4, v2

    aput p1, v4, p4

    invoke-static {v0, v4}, Lu0/d;->I3(I[I)V

    .line 9
    iget p1, p0, Lf1/m;->p0:I

    if-eq p1, p2, :cond_6

    .line 10
    iget-boolean p1, p0, Lf1/q;->r:Z

    if-eqz p1, :cond_6

    .line 11
    iget-object p1, p0, Lf1/m;->Z:Ljava/lang/Object;

    monitor-enter p1

    .line 12
    :try_start_0
    iget p2, p0, Lf1/m;->U:I

    if-lez p2, :cond_2

    iget p2, p0, Lf1/m;->V:I

    if-gtz p2, :cond_3

    .line 13
    :cond_2
    invoke-virtual {p0}, Lf1/m;->g0()V

    .line 14
    :cond_3
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_4
    if-ltz p2, :cond_6

    .line 15
    iget p1, p0, Lf1/m;->b0:I

    if-eq p1, p2, :cond_6

    .line 16
    iput p2, p0, Lf1/m;->b0:I

    new-array p1, p4, [I

    .line 17
    iget p4, p0, Lf1/q;->i:I

    aput p4, p1, v1

    aput v2, p1, p3

    aput p2, p1, v2

    invoke-static {v0, p1}, Lu0/d;->I3(I[I)V

    .line 18
    iget-object p1, p0, Lf1/m;->Z:Ljava/lang/Object;

    monitor-enter p1

    const/16 p3, 0x70

    .line 19
    :try_start_1
    invoke-virtual {p0, p3}, Lf1/m;->v0(I)Z

    move-result p3

    if-eqz p3, :cond_5

    const/16 p3, 0x33

    .line 20
    invoke-virtual {p0, p3, p2}, Lf1/q;->V(II)I

    move-result p2

    .line 21
    :cond_5
    monitor-exit p1

    goto :goto_1

    :catchall_1
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p2

    :cond_6
    :goto_1
    return-void
.end method

.method public h0(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public i0()Z
    .locals 3

    const-string v0, "Chip8918L"

    const-string v1, "----- init_LT8918L_State"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lf1/q;->n()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lf1/m;->m0()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p0}, Lf1/m;->o0()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {p0}, Lf1/m;->n0()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v2

    :goto_2
    if-eqz v0, :cond_4

    .line 6
    invoke-virtual {p0}, Lf1/m;->p0()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    move v1, v2

    :goto_3
    return v1
.end method

.method public final j0(Z)V
    .locals 2

    const-string v0, "Chip8918L"

    if-eqz p1, :cond_2

    const-string p1, "----- vdLT8918L_TX_DPHY_Logic_Reset"

    .line 1
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lf1/m;->q0()Z

    move-result p1

    const-string v1, "----- vdLT8918L_TxPll_Output_Config"

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lf1/m;->s0()Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0}, Lf1/m;->r0()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {p0}, Lf1/m;->t0()Z

    goto :goto_2

    :cond_2
    const-string p1, "----- Polling failed after max attempts"

    .line 7
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    return-void
.end method

.method public k()I
    .locals 10

    .line 1
    iget-object v0, p0, Lf1/m;->W:Lq1/b;

    invoke-virtual {v0}, Lq1/b;->d()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2
    :goto_0
    iget-object v3, p0, Lf1/m;->X:Lo1/l0;

    const/16 v4, 0x96

    invoke-virtual {v3, v4}, Lo1/l0;->c(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3
    iget-object v0, p0, Lf1/m;->X:Lo1/l0;

    invoke-virtual {v0}, Lo1/l0;->a()V

    .line 4
    iget-object v0, p0, Lf1/m;->W:Lq1/b;

    invoke-virtual {p0}, Lf1/m;->e0()I

    move-result v3

    invoke-virtual {v0, v3}, Lq1/b;->g(I)I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 5
    iget-boolean v3, p0, Lf1/m;->R:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lf1/q;->i:I

    if-lez v3, :cond_3

    move v3, v2

    goto :goto_2

    :cond_3
    move v3, v1

    .line 6
    :goto_2
    iget-object v4, p0, Lf1/m;->W:Lq1/b;

    invoke-virtual {v4}, Lq1/b;->e()Z

    move-result v4

    const/16 v5, 0xad

    if-eqz v4, :cond_5

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lf1/m;->U:I

    .line 8
    iput v0, p0, Lf1/m;->V:I

    .line 9
    iget-object v4, p0, Lf1/m;->T:Lf1/q$c;

    iput v0, v4, Lf1/q$c;->a:I

    .line 10
    iput v0, v4, Lf1/q$c;->b:I

    .line 11
    iput v0, p0, Lf1/q;->k:I

    .line 12
    invoke-virtual {p0, v0, v0}, Lf1/q;->y(II)[I

    move-result-object v0

    invoke-static {v5, v0}, Lu0/d;->I3(I[I)V

    .line 13
    :cond_5
    :goto_3
    iget-object v0, p0, Lf1/m;->Y:Lo1/l0;

    const/16 v4, 0xc8

    invoke-virtual {v0, v4}, Lo1/l0;->c(I)Z

    move-result v0

    const-string v4, " chipid : "

    const-string v6, "Chip8918L"

    if-eqz v0, :cond_6

    .line 14
    iget-object v0, p0, Lf1/m;->Y:Lo1/l0;

    invoke-virtual {v0}, Lo1/l0;->a()V

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  CHECK SIGNAL : imagType :  "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lf1/q;->i:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " last  imagFormat :  "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lf1/q;->k:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "  isHasSignal  : "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lf1/m;->R:Z

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " mSignalMarker: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lf1/m;->W:Lq1/b;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lf1/q;->h:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    if-eqz v3, :cond_a

    .line 16
    iget-object v0, p0, Lf1/m;->T:Lf1/q$c;

    iget v7, v0, Lf1/q$c;->a:I

    iget v8, p0, Lf1/m;->U:I

    if-ne v7, v8, :cond_9

    iget v7, v0, Lf1/q$c;->b:I

    iget v9, p0, Lf1/m;->V:I

    if-eq v7, v9, :cond_7

    goto :goto_4

    .line 17
    :cond_7
    iget-boolean v0, p0, Lf1/m;->S:Z

    if-eqz v0, :cond_a

    .line 18
    iput-boolean v1, p0, Lf1/m;->S:Z

    .line 19
    sget-object v0, Lbase/Configure$Property;->Y:Lbase/Configure$Property;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lbase/Configure$Property;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 20
    iget-object v1, p0, Lf1/m;->T:Lf1/q$c;

    iget v2, v1, Lf1/q$c;->a:I

    .line 21
    iget v1, v1, Lf1/q$c;->b:I

    const-string v7, "6321"

    .line 22
    invoke-static {v7, v0}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x21c

    if-ne v1, v0, :cond_8

    const/16 v0, 0x5a0

    if-ne v2, v0, :cond_8

    const/16 v1, 0x218

    .line 23
    :cond_8
    invoke-virtual {p0, v2, v1}, Lf1/q;->y(II)[I

    move-result-object v0

    invoke-static {v5, v0}, Lu0/d;->I3(I[I)V

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==============================>> 01 update "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf1/m;->T:Lf1/q$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf1/q;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 25
    :cond_9
    :goto_4
    iput v8, v0, Lf1/q$c;->a:I

    .line 26
    iget v1, p0, Lf1/m;->V:I

    iput v1, v0, Lf1/q$c;->b:I

    .line 27
    iput-boolean v2, p0, Lf1/m;->S:Z

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==============================>> 00 SET "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf1/m;->T:Lf1/q$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " videoWidth : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf1/m;->U:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " videoHeight : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf1/m;->V:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf1/q;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_5
    return v3
.end method

.method public final l0(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lf1/m;->e0:Z

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lf1/m;->f0:I

    .line 3
    new-instance v0, Lf1/m$b;

    invoke-direct {v0, p0, p1}, Lf1/m$b;-><init>(Lf1/m;Z)V

    iput-object v0, p0, Lf1/m;->d0:Ljava/lang/Runnable;

    .line 4
    iget-object p1, p0, Lf1/q;->s:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public m0()Z
    .locals 2

    const/16 v0, 0x60

    .line 1
    invoke-virtual {p0, v0}, Lf1/m;->v0(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/16 v0, 0xee

    .line 2
    invoke-virtual {p0, v0, v1}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p0}, Lf1/m;->f0()V

    :cond_1
    return v1
.end method

.method public n0()Z
    .locals 5

    const/16 v0, 0x81

    .line 1
    invoke-virtual {p0, v0}, Lf1/m;->v0(I)Z

    move-result v0

    .line 2
    iget-boolean v1, p0, Lf1/m;->Q:Z

    const/16 v2, 0x11

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    .line 3
    invoke-virtual {p0, v2, v0}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_0

    :goto_0
    move v0, v3

    goto :goto_1

    :cond_0
    move v0, v4

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_0

    const/16 v0, 0x8

    .line 4
    invoke-virtual {p0, v2, v0}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :goto_1
    if-eqz v0, :cond_2

    const/16 v0, 0x12

    .line 5
    invoke-virtual {p0, v0, v4}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_2

    move v0, v3

    goto :goto_2

    :cond_2
    move v0, v4

    :goto_2
    if-eqz v0, :cond_3

    const/16 v0, 0x16

    const/16 v1, 0x30

    .line 6
    invoke-virtual {p0, v0, v1}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_3

    move v0, v3

    goto :goto_3

    :cond_3
    move v0, v4

    :goto_3
    if-eqz v0, :cond_4

    const/16 v0, 0x17

    const/4 v1, 0x4

    .line 7
    invoke-virtual {p0, v0, v1}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_4

    move v0, v3

    goto :goto_4

    :cond_4
    move v0, v4

    :goto_4
    if-eqz v0, :cond_5

    const/16 v0, 0x18

    .line 8
    invoke-virtual {p0, v0, v3}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_5

    goto :goto_5

    :cond_5
    move v3, v4

    :goto_5
    return v3
.end method

.method public o0()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lf1/m;->g0:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lf1/m;->l0:Lf1/m$c;

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lf1/m;->k0:Lf1/m$c;

    iput-object v0, p0, Lf1/m;->l0:Lf1/m$c;

    goto :goto_0

    .line 4
    :cond_0
    iget v1, p0, Lf1/m;->p0:I

    if-ltz v1, :cond_1

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 5
    iget-object v0, p0, Lf1/m;->g0:Ljava/util/LinkedList;

    iget v1, p0, Lf1/m;->p0:I

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf1/m$c;

    iput-object v0, p0, Lf1/m;->l0:Lf1/m$c;

    .line 6
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "------------------>> targetTimingIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf1/m;->p0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Chip8918L"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------------------>> target timing: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lf1/m;->n0:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x70

    .line 8
    invoke-virtual {p0, v0}, Lf1/m;->v0(I)Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p0, v1, v1}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    const/4 v4, 0x5

    if-eqz v0, :cond_3

    const/16 v0, 0xfe

    .line 10
    invoke-virtual {p0, v4, v0}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_3

    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v3

    :goto_2
    const/16 v5, 0xab

    if-eqz v0, :cond_4

    const/4 v0, 0x7

    .line 11
    invoke-virtual {p0, v0, v5}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_4

    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v3

    :goto_3
    const/16 v6, 0x8

    if-eqz v0, :cond_5

    .line 12
    invoke-virtual {p0, v6, v3}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_5

    move v0, v2

    goto :goto_4

    :cond_5
    move v0, v3

    :goto_4
    if-eqz v0, :cond_6

    const/16 v0, 0x9

    .line 13
    invoke-virtual {p0, v0, v6}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_6

    move v0, v2

    goto :goto_5

    :cond_6
    move v0, v3

    :goto_5
    if-eqz v0, :cond_7

    const/16 v0, 0xf

    .line 14
    invoke-virtual {p0, v0, v1}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_7

    move v0, v2

    goto :goto_6

    :cond_7
    move v0, v3

    :goto_6
    if-eqz v0, :cond_8

    const/16 v0, 0x10

    const/16 v1, 0xff

    .line 15
    invoke-virtual {p0, v0, v1}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_8

    move v0, v2

    goto :goto_7

    :cond_8
    move v0, v3

    :goto_7
    if-eqz v0, :cond_9

    const/16 v0, 0x11

    const/16 v1, 0xaa

    .line 16
    invoke-virtual {p0, v0, v1}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_9

    move v0, v2

    goto :goto_8

    :cond_9
    move v0, v3

    :goto_8
    if-eqz v0, :cond_a

    const/16 v0, 0x12

    .line 17
    invoke-virtual {p0, v0, v5}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_a

    move v0, v2

    goto :goto_9

    :cond_a
    move v0, v3

    :goto_9
    if-eqz v0, :cond_b

    const/16 v0, 0x13

    .line 18
    invoke-virtual {p0, v0, v6}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_b

    move v0, v2

    goto :goto_a

    :cond_b
    move v0, v3

    :goto_a
    if-eqz v0, :cond_c

    const/16 v0, 0x14

    .line 19
    invoke-virtual {p0, v0, v6}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_c

    move v0, v2

    goto :goto_b

    :cond_c
    move v0, v3

    .line 20
    :goto_b
    iget-boolean v1, p0, Lf1/m;->Q:Z

    const/16 v5, 0x18

    if-eqz v1, :cond_e

    if-eqz v0, :cond_d

    const/16 v0, 0x7c

    invoke-virtual {p0, v5, v0}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_d

    :goto_c
    move v0, v2

    goto :goto_d

    :cond_d
    move v0, v3

    goto :goto_d

    :cond_e
    if-eqz v0, :cond_d

    const/16 v0, 0x78

    .line 21
    invoke-virtual {p0, v5, v0}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_d

    goto :goto_c

    :goto_d
    const/16 v1, 0xb0

    if-eqz v0, :cond_f

    const/16 v0, 0x19

    .line 22
    invoke-virtual {p0, v0, v1}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_f

    move v0, v2

    goto :goto_e

    :cond_f
    move v0, v3

    .line 23
    :goto_e
    iget-boolean v5, p0, Lf1/m;->Q:Z

    const/16 v6, 0x1c

    if-eqz v5, :cond_11

    if-eqz v0, :cond_10

    const/16 v0, 0x4c

    invoke-virtual {p0, v6, v0}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_10

    :goto_f
    move v0, v2

    goto :goto_10

    :cond_10
    move v0, v3

    goto :goto_10

    :cond_11
    if-eqz v0, :cond_10

    const/16 v0, 0x48

    .line 24
    invoke-virtual {p0, v6, v0}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_10

    goto :goto_f

    :goto_10
    const/16 v5, 0x38

    if-eqz v0, :cond_12

    .line 25
    invoke-virtual {p0, v5, v1}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_12

    move v0, v2

    goto :goto_11

    :cond_12
    move v0, v3

    :goto_11
    const/16 v1, 0x80

    .line 26
    invoke-virtual {p0, v1}, Lf1/m;->v0(I)Z

    if-eqz v0, :cond_13

    .line 27
    invoke-virtual {p0, v5, v4}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_13

    goto :goto_12

    :cond_13
    move v2, v3

    :goto_12
    return v2
.end method

.method public p()V
    .locals 3

    .line 1
    iget-object v0, p0, Lf1/m;->Z:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0, v1}, Lf1/m;->h0(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {p0}, Lf1/m;->i0()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 4
    :cond_0
    invoke-virtual {p0, v1}, Lf1/q;->H(Z)V

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public p0()Z
    .locals 6

    const/16 v0, 0x60

    .line 1
    invoke-virtual {p0, v0}, Lf1/m;->v0(I)Z

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x10

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0x5f

    .line 2
    invoke-virtual {p0, v2, v0}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    const-wide/16 v4, 0x5

    .line 3
    invoke-static {v4, v5}, Lo1/s0;->C(J)V

    if-eqz v0, :cond_1

    const/16 v0, 0xff

    .line 4
    invoke-virtual {p0, v2, v0}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    return v1
.end method

.method public q([I)Z
    .locals 14

    if-eqz p1, :cond_4

    .line 1
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_4

    const-string v0, "Chip8918L"

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "flushParams =============>> i2cInvalid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lf1/q;->v:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-boolean v0, p0, Lf1/q;->v:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return v2

    .line 4
    :cond_0
    iget-object v0, p0, Lf1/q;->u:Lp1/a;

    monitor-enter v0

    .line 5
    :try_start_0
    array-length v3, p1

    div-int/2addr v3, v1

    const-string v4, "Chip8918L"

    .line 6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "flushParams  START  data  length = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    move v5, v2

    move v6, v4

    :goto_0
    if-ge v5, v3, :cond_3

    mul-int/lit8 v6, v5, 0x2

    .line 7
    aget v7, p1, v6

    add-int/lit8 v6, v6, 0x1

    .line 8
    aget v6, p1, v6

    .line 9
    invoke-virtual {p0, v7, v6}, Lf1/q;->V(II)I

    move-result v8

    if-ltz v8, :cond_1

    move v9, v4

    goto :goto_1

    :cond_1
    move v9, v2

    :goto_1
    const-string v10, "Chip8918L"

    .line 10
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[ %02X,  %02X]"

    new-array v13, v1, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v13, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v13, v4

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "  result : "

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " ret : "

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v9, :cond_2

    move v6, v9

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    move v6, v9

    goto :goto_0

    :cond_3
    :goto_2
    const-string v1, "Chip8918L"

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "flushParams  END  data  length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " result:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    monitor-exit v0

    return v6

    :catchall_0
    move-exception p1

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 14
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "flushParams  data is NULL  or  data  size < 2 !!!! "

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public q0()Z
    .locals 6

    const/16 v0, 0x60

    .line 1
    invoke-virtual {p0, v0}, Lf1/m;->v0(I)Z

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0xd

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v2, v3}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    const-wide/16 v4, 0x5

    .line 3
    invoke-static {v4, v5}, Lo1/s0;->C(J)V

    if-eqz v0, :cond_1

    const/16 v0, 0xff

    .line 4
    invoke-virtual {p0, v2, v0}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    return v1
.end method

.method public r0()Z
    .locals 11

    const/16 v0, 0x80

    .line 1
    invoke-virtual {p0, v0}, Lf1/m;->v0(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0x33

    const/16 v3, 0x9

    .line 2
    invoke-virtual {p0, v0, v3}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-wide/16 v3, 0xa

    .line 3
    invoke-static {v3, v4}, Lo1/s0;->C(J)V

    const/16 v3, 0x30

    .line 4
    invoke-virtual {p0, v3}, Lf1/q;->A(I)I

    move-result v3

    and-int/lit8 v3, v3, 0xf

    shl-int/lit8 v3, v3, 0x8

    const/16 v4, 0x31

    .line 5
    invoke-virtual {p0, v4}, Lf1/q;->A(I)I

    move-result v4

    add-int/2addr v3, v4

    shl-int/lit8 v3, v3, 0x8

    const/16 v4, 0x32

    .line 6
    invoke-virtual {p0, v4}, Lf1/q;->A(I)I

    move-result v4

    add-int/2addr v3, v4

    .line 7
    div-int/lit16 v3, v3, 0x3e8

    .line 8
    div-int/lit8 v4, v3, 0xa

    add-int/lit8 v5, v4, 0x2

    .line 9
    div-int/lit8 v6, v3, 0xc

    add-int/lit8 v7, v6, 0x5

    .line 10
    div-int/lit8 v8, v3, 0x6

    add-int/lit8 v8, v8, 0x4

    add-int/lit8 v9, v4, 0x3

    add-int/lit8 v4, v4, 0xa

    add-int/lit8 v6, v6, 0x2

    .line 11
    div-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x4

    const/16 v10, 0x83

    .line 12
    invoke-virtual {p0, v10}, Lf1/m;->v0(I)Z

    if-eqz v0, :cond_1

    const/16 v0, 0x40

    .line 13
    invoke-virtual {p0, v0, v2}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    const/16 v0, 0x41

    .line 14
    invoke-virtual {p0, v0, v4}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    if-eqz v0, :cond_3

    const/16 v0, 0x42

    .line 15
    invoke-virtual {p0, v0, v5}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_3

    move v0, v1

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    if-eqz v0, :cond_4

    const/16 v0, 0x43

    .line 16
    invoke-virtual {p0, v0, v6}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_4

    move v0, v1

    goto :goto_4

    :cond_4
    move v0, v2

    :goto_4
    if-eqz v0, :cond_5

    const/16 v0, 0x44

    .line 17
    invoke-virtual {p0, v0, v3}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_5

    move v0, v1

    goto :goto_5

    :cond_5
    move v0, v2

    :goto_5
    if-eqz v0, :cond_6

    const/16 v0, 0x46

    .line 18
    invoke-virtual {p0, v0, v5}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_6

    move v0, v1

    goto :goto_6

    :cond_6
    move v0, v2

    :goto_6
    if-eqz v0, :cond_7

    const/16 v0, 0x47

    .line 19
    invoke-virtual {p0, v0, v7}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_7

    move v0, v1

    goto :goto_7

    :cond_7
    move v0, v2

    :goto_7
    if-eqz v0, :cond_8

    const/16 v0, 0x48

    .line 20
    invoke-virtual {p0, v0, v9}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_8

    move v0, v1

    goto :goto_8

    :cond_8
    move v0, v2

    :goto_8
    if-eqz v0, :cond_9

    const/16 v0, 0x4a

    add-int/2addr v5, v7

    add-int/2addr v5, v8

    .line 21
    invoke-virtual {p0, v0, v5}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_9

    goto :goto_9

    :cond_9
    move v1, v2

    :goto_9
    return v1
.end method

.method public s0()Z
    .locals 12

    const/16 v0, 0x70

    .line 1
    invoke-virtual {p0, v0}, Lf1/m;->v0(I)Z

    move-result v0

    const/16 v1, 0x30

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v1, v3}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    const/16 v4, 0x2c

    const/16 v5, 0x31

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0, v5, v4}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    const/16 v4, 0x46

    .line 4
    iget-object v6, p0, Lf1/m;->l0:Lf1/m$c;

    const-string v7, "Chip8918L"

    const/16 v8, 0xa

    if-eqz v6, :cond_3

    .line 5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lf1/m;->l0:Lf1/m$c;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v6, p0, Lf1/m;->l0:Lf1/m$c;

    iget v9, v6, Lf1/m$c;->d:I

    if-ltz v9, :cond_2

    goto :goto_2

    :cond_2
    move v9, v8

    .line 7
    :goto_2
    iget v6, v6, Lf1/m$c;->e:I

    if-ltz v6, :cond_4

    move v4, v6

    goto :goto_3

    :cond_3
    move v9, v8

    .line 8
    :cond_4
    :goto_3
    iget v6, p0, Lf1/m;->b0:I

    if-eq v6, v9, :cond_5

    .line 9
    iput v9, p0, Lf1/m;->b0:I

    const/16 v6, 0xae

    const/4 v10, 0x3

    new-array v10, v10, [I

    .line 10
    iget v11, p0, Lf1/q;->i:I

    aput v11, v10, v3

    const/4 v11, 0x2

    aput v11, v10, v2

    aput v9, v10, v11

    invoke-static {v6, v10}, Lu0/d;->I3(I[I)V

    :cond_5
    const/16 v6, 0x33

    if-eqz v0, :cond_6

    .line 11
    invoke-virtual {p0, v6, v9}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_6

    move v0, v2

    goto :goto_4

    :cond_6
    move v0, v3

    :goto_4
    if-eqz v0, :cond_7

    const/16 v0, 0x34

    .line 12
    invoke-virtual {p0, v0, v4}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_7

    move v0, v2

    goto :goto_5

    :cond_7
    move v0, v3

    :goto_5
    if-eqz v0, :cond_8

    const/16 v0, 0x24

    const/16 v4, 0x64

    .line 13
    invoke-virtual {p0, v0, v4}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_8

    move v0, v2

    goto :goto_6

    :cond_8
    move v0, v3

    :goto_6
    const/16 v4, 0x23

    if-eqz v0, :cond_9

    const/16 v0, 0x2f

    .line 14
    invoke-virtual {p0, v4, v0}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_9

    move v0, v2

    goto :goto_7

    :cond_9
    move v0, v3

    :goto_7
    if-eqz v0, :cond_a

    const/16 v0, 0xaf

    .line 15
    invoke-virtual {p0, v4, v0}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_a

    move v0, v2

    goto :goto_8

    :cond_a
    move v0, v3

    :goto_8
    if-eqz v0, :cond_b

    const/16 v0, 0x9f

    .line 16
    invoke-virtual {p0, v4, v0}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_b

    move v0, v2

    goto :goto_9

    :cond_b
    move v0, v3

    :goto_9
    move v4, v3

    :cond_c
    const-wide/16 v9, 0x14

    .line 17
    invoke-static {v9, v10}, Lo1/s0;->C(J)V

    const/16 v9, 0x35

    .line 18
    invoke-virtual {p0, v9}, Lf1/q;->A(I)I

    move-result v9

    and-int/2addr v9, v2

    add-int/2addr v4, v2

    const/4 v10, 0x5

    if-nez v9, :cond_d

    if-lt v4, v10, :cond_c

    :cond_d
    if-lt v4, v10, :cond_e

    const-string v4, "\r\nLT8918L PLL lock timeout! (chip individual difference)"

    .line 19
    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    if-eqz v0, :cond_f

    const/16 v0, 0x80

    .line 20
    invoke-virtual {p0, v0}, Lf1/m;->v0(I)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v2

    goto :goto_a

    :cond_f
    move v0, v3

    :goto_a
    if-eqz v0, :cond_10

    const/16 v0, 0xc

    .line 21
    invoke-virtual {p0, v6, v0}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_10

    move v0, v2

    goto :goto_b

    :cond_10
    move v0, v3

    :goto_b
    if-eqz v0, :cond_11

    const/16 v0, 0x6a

    .line 22
    invoke-virtual {p0, v0, v8}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_11

    move v0, v2

    goto :goto_c

    :cond_11
    move v0, v3

    :goto_c
    if-eqz v0, :cond_12

    const/16 v0, 0xbe

    const/16 v4, 0x40

    .line 23
    invoke-virtual {p0, v0, v4}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_12

    move v0, v2

    goto :goto_d

    :cond_12
    move v0, v3

    :goto_d
    if-eqz v0, :cond_13

    const/16 v0, 0x9

    .line 24
    invoke-virtual {p0, v6, v0}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_13

    goto :goto_e

    :cond_13
    move v2, v3

    :goto_e
    const-wide/16 v3, 0xa

    .line 25
    invoke-static {v3, v4}, Lo1/s0;->C(J)V

    .line 26
    invoke-virtual {p0, v1}, Lf1/q;->A(I)I

    .line 27
    invoke-virtual {p0, v5}, Lf1/q;->A(I)I

    const/16 v0, 0x32

    .line 28
    invoke-virtual {p0, v0}, Lf1/q;->A(I)I

    return v2
.end method

.method public t0()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lf1/m;->l0:Lf1/m$c;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lf1/m;->m0:Lf1/m$c;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lf1/m;->k0:Lf1/m$c;

    :goto_0
    iput-object v0, p0, Lf1/m;->l0:Lf1/m$c;

    .line 3
    :cond_1
    iget-object v0, p0, Lf1/m;->l0:Lf1/m$c;

    iget-object v0, v0, Lf1/m$c;->a:[I

    iput-object v0, p0, Lf1/m;->n0:[I

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lf1/m;->j0:[I

    iput-object v0, p0, Lf1/m;->n0:[I

    :cond_2
    const/16 v0, 0x83

    .line 5
    invoke-virtual {p0, v0}, Lf1/m;->v0(I)Z

    const/16 v1, 0x11

    const/4 v2, 0x0

    .line 6
    invoke-virtual {p0, v1, v2}, Lf1/q;->V(II)I

    const-wide/16 v3, 0x2

    .line 7
    invoke-static {v3, v4}, Lo1/s0;->C(J)V

    .line 8
    invoke-virtual {p0, v1, v2}, Lf1/q;->V(II)I

    .line 9
    invoke-static {v3, v4}, Lo1/s0;->C(J)V

    .line 10
    invoke-virtual {p0, v0}, Lf1/m;->v0(I)Z

    move-result v0

    const/16 v3, 0xdf

    .line 11
    iget-object v4, p0, Lf1/m;->l0:Lf1/m$c;

    if-eqz v4, :cond_4

    .line 12
    iget v5, v4, Lf1/m$c;->b:I

    if-ltz v5, :cond_3

    goto :goto_1

    :cond_3
    move v5, v2

    .line 13
    :goto_1
    iget v4, v4, Lf1/m$c;->c:I

    if-ltz v4, :cond_5

    move v3, v4

    goto :goto_2

    :cond_4
    move v5, v2

    :cond_5
    :goto_2
    const/4 v4, 0x1

    if-eqz v0, :cond_6

    const/16 v0, 0x12

    .line 14
    invoke-virtual {p0, v0, v5}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_6

    move v0, v4

    goto :goto_3

    :cond_6
    move v0, v2

    :goto_3
    if-eqz v0, :cond_7

    const/16 v0, 0x13

    .line 15
    invoke-virtual {p0, v0, v3}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_7

    move v0, v4

    goto :goto_4

    :cond_7
    move v0, v2

    :goto_4
    if-eqz v0, :cond_8

    const/16 v0, 0x14

    .line 16
    iget-object v3, p0, Lf1/m;->n0:[I

    const/4 v5, 0x6

    aget v3, v3, v5

    rem-int/lit16 v3, v3, 0x100

    invoke-virtual {p0, v0, v3}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_8

    move v0, v4

    goto :goto_5

    :cond_8
    move v0, v2

    :goto_5
    if-eqz v0, :cond_9

    const/16 v0, 0x15

    .line 17
    iget-object v3, p0, Lf1/m;->n0:[I

    const/4 v5, 0x7

    aget v3, v3, v5

    rem-int/lit16 v3, v3, 0x100

    invoke-virtual {p0, v0, v3}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_9

    move v0, v4

    goto :goto_6

    :cond_9
    move v0, v2

    :goto_6
    const/16 v3, 0x8

    if-eqz v0, :cond_a

    const/16 v0, 0x16

    .line 18
    iget-object v5, p0, Lf1/m;->n0:[I

    aget v5, v5, v3

    div-int/lit16 v5, v5, 0x100

    invoke-virtual {p0, v0, v5}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_a

    move v0, v4

    goto :goto_7

    :cond_a
    move v0, v2

    :goto_7
    if-eqz v0, :cond_b

    const/16 v0, 0x17

    .line 19
    iget-object v5, p0, Lf1/m;->n0:[I

    aget v3, v5, v3

    rem-int/lit16 v3, v3, 0x100

    invoke-virtual {p0, v0, v3}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_b

    move v0, v4

    goto :goto_8

    :cond_b
    move v0, v2

    :goto_8
    if-eqz v0, :cond_c

    const/16 v0, 0x18

    .line 20
    iget-object v3, p0, Lf1/m;->n0:[I

    const/4 v5, 0x5

    aget v3, v3, v5

    rem-int/lit16 v3, v3, 0x100

    invoke-virtual {p0, v0, v3}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_c

    move v0, v4

    goto :goto_9

    :cond_c
    move v0, v2

    :goto_9
    const/16 v3, 0x1e

    if-eqz v0, :cond_d

    const/16 v0, 0x19

    .line 21
    invoke-virtual {p0, v0, v3}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_d

    move v0, v4

    goto :goto_a

    :cond_d
    move v0, v2

    :goto_a
    if-eqz v0, :cond_e

    const/16 v0, 0x1a

    .line 22
    invoke-virtual {p0, v0, v3}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_e

    move v0, v4

    goto :goto_b

    :cond_e
    move v0, v2

    :goto_b
    if-eqz v0, :cond_f

    const/16 v0, 0x1b

    .line 23
    invoke-virtual {p0, v0, v3}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_f

    move v0, v4

    goto :goto_c

    :cond_f
    move v0, v2

    :goto_c
    const/4 v3, 0x3

    if-eqz v0, :cond_10

    const/16 v0, 0x1c

    .line 24
    iget-object v5, p0, Lf1/m;->n0:[I

    aget v5, v5, v3

    div-int/lit16 v5, v5, 0x100

    invoke-virtual {p0, v0, v5}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_10

    move v0, v4

    goto :goto_d

    :cond_10
    move v0, v2

    :goto_d
    if-eqz v0, :cond_11

    const/16 v0, 0x1d

    .line 25
    iget-object v5, p0, Lf1/m;->n0:[I

    aget v3, v5, v3

    rem-int/lit16 v3, v3, 0x100

    invoke-virtual {p0, v0, v3}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_11

    move v0, v4

    goto :goto_e

    :cond_11
    move v0, v2

    :goto_e
    if-eqz v0, :cond_12

    const/16 v0, 0x1f

    const/4 v3, 0x4

    .line 26
    invoke-virtual {p0, v0, v3}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_12

    move v0, v4

    goto :goto_f

    :cond_12
    move v0, v2

    :goto_f
    if-eqz v0, :cond_13

    const/16 v0, 0x10

    const/16 v3, 0x58

    .line 27
    invoke-virtual {p0, v0, v3}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_13

    move v0, v4

    goto :goto_10

    :cond_13
    move v0, v2

    :goto_10
    if-eqz v0, :cond_14

    const/16 v0, 0xc

    .line 28
    invoke-virtual {p0, v1, v0}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_14

    move v2, v4

    :cond_14
    return v2
.end method

.method public u0()Z
    .locals 24

    move-object/from16 v0, p0

    const/16 v1, 0x80

    .line 1
    invoke-virtual {v0, v1}, Lf1/m;->v0(I)Z

    const/16 v2, 0x33

    const/16 v3, 0xc

    .line 2
    invoke-virtual {v0, v2, v3}, Lf1/q;->V(II)I

    const-wide/16 v4, 0xa

    .line 3
    invoke-static {v4, v5}, Lo1/s0;->C(J)V

    const/16 v2, 0x30

    .line 4
    invoke-virtual {v0, v2}, Lf1/q;->A(I)I

    move-result v2

    and-int/lit8 v2, v2, 0xf

    const/16 v4, 0x8

    shl-int/2addr v2, v4

    const/16 v5, 0x31

    .line 5
    invoke-virtual {v0, v5}, Lf1/q;->A(I)I

    move-result v5

    add-int/2addr v2, v5

    shl-int/2addr v2, v4

    const/16 v5, 0x32

    .line 6
    invoke-virtual {v0, v5}, Lf1/q;->A(I)I

    move-result v5

    add-int/2addr v2, v5

    .line 7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "=====================>>>  vdLT8918L_Video_check() fm_value == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "Chip8918L"

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x42

    .line 8
    invoke-virtual {v0, v2}, Lf1/q;->A(I)I

    move-result v2

    const/16 v6, 0x4e

    .line 9
    invoke-virtual {v0, v6}, Lf1/q;->A(I)I

    move-result v6

    and-int/lit8 v6, v6, 0xf

    shl-int/2addr v6, v4

    const/16 v7, 0x4f

    .line 10
    invoke-virtual {v0, v7}, Lf1/q;->A(I)I

    move-result v7

    or-int/2addr v6, v7

    const/16 v7, 0x4c

    .line 11
    invoke-virtual {v0, v7}, Lf1/q;->A(I)I

    move-result v7

    and-int/lit8 v7, v7, 0xf

    shl-int/2addr v7, v4

    const/16 v8, 0x4d

    .line 12
    invoke-virtual {v0, v8}, Lf1/q;->A(I)I

    move-result v8

    or-int/2addr v7, v8

    const/16 v8, 0x52

    .line 13
    invoke-virtual {v0, v8}, Lf1/q;->A(I)I

    move-result v8

    and-int/lit8 v8, v8, 0xf

    shl-int/2addr v8, v4

    const/16 v9, 0x53

    .line 14
    invoke-virtual {v0, v9}, Lf1/q;->A(I)I

    move-result v9

    or-int/2addr v8, v9

    const/16 v9, 0x50

    .line 15
    invoke-virtual {v0, v9}, Lf1/q;->A(I)I

    move-result v9

    and-int/lit8 v9, v9, 0xf

    shl-int/2addr v9, v4

    const/16 v10, 0x51

    .line 16
    invoke-virtual {v0, v10}, Lf1/q;->A(I)I

    move-result v10

    or-int/2addr v9, v10

    const/16 v10, 0x44

    .line 17
    invoke-virtual {v0, v10}, Lf1/q;->A(I)I

    move-result v10

    and-int/lit8 v10, v10, 0xf

    shl-int/2addr v10, v4

    const/16 v11, 0x45

    .line 18
    invoke-virtual {v0, v11}, Lf1/q;->A(I)I

    move-result v11

    or-int/2addr v10, v11

    const/16 v11, 0x48

    .line 19
    invoke-virtual {v0, v11}, Lf1/q;->A(I)I

    move-result v11

    and-int/lit8 v11, v11, 0xf

    shl-int/2addr v11, v4

    const/16 v12, 0x49

    .line 20
    invoke-virtual {v0, v12}, Lf1/q;->A(I)I

    move-result v12

    or-int/2addr v11, v12

    const/16 v12, 0x4a

    .line 21
    invoke-virtual {v0, v12}, Lf1/q;->A(I)I

    move-result v12

    and-int/lit8 v12, v12, 0xf

    shl-int/2addr v12, v4

    const/16 v13, 0x4b

    .line 22
    invoke-virtual {v0, v13}, Lf1/q;->A(I)I

    move-result v13

    or-int/2addr v12, v13

    const/16 v13, 0x43

    .line 23
    invoke-virtual {v0, v13}, Lf1/q;->A(I)I

    move-result v13

    const/16 v14, 0x46

    .line 24
    invoke-virtual {v0, v14}, Lf1/q;->A(I)I

    move-result v14

    const/16 v15, 0x47

    .line 25
    invoke-virtual {v0, v15}, Lf1/q;->A(I)I

    move-result v15

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/Object;

    .line 26
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/4 v4, 0x0

    aput-object v17, v3, v4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/4 v1, 0x1

    aput-object v17, v3, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/4 v1, 0x2

    aput-object v17, v3, v1

    const-string v4, "hactive : %d,  vactive : %d sync_polarity : %d "

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array v3, v1, [Ljava/lang/Object;

    .line 27
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v17, 0x0

    aput-object v4, v3, v17

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v19, 0x1

    aput-object v4, v3, v19

    const-string v4, "htotal : %d,  vtotal : %d "

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array v3, v1, [Ljava/lang/Object;

    .line 28
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v17

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v19

    const-string v4, "hsa : %d,  vsa : %d "

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array v3, v1, [Ljava/lang/Object;

    .line 29
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v17

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v19

    const-string v4, "hbp : %d,  vbp : %d "

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array v3, v1, [Ljava/lang/Object;

    .line 30
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v17

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v19

    const-string v4, "hfp : %d,  vfp : %d "

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0xd

    new-array v3, v3, [I

    .line 31
    iget v4, v0, Lf1/q;->i:I

    aput v4, v3, v17

    const/16 v4, 0xff

    aput v4, v3, v19

    aput v8, v3, v1

    const/4 v4, 0x3

    aput v9, v3, v4

    const/4 v4, 0x4

    aput v2, v3, v4

    const/4 v5, 0x5

    aput v6, v3, v5

    const/16 v20, 0x6

    aput v7, v3, v20

    const/16 v21, 0x7

    aput v10, v3, v21

    const/16 v18, 0x8

    aput v13, v3, v18

    const/16 v22, 0x9

    aput v11, v3, v22

    const/16 v23, 0xa

    aput v14, v3, v23

    const/16 v23, 0xb

    aput v12, v3, v23

    const/16 v16, 0xc

    aput v15, v3, v16

    const/16 v5, 0xae

    invoke-static {v5, v3}, Lu0/d;->I3(I[I)V

    const/16 v3, 0x64

    if-le v8, v3, :cond_5

    const/16 v5, 0xbb8

    if-gt v8, v5, :cond_5

    if-le v9, v3, :cond_5

    const/16 v3, 0x7d0

    if-le v9, v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v3, 0xe

    .line 32
    rem-int/lit8 v5, v8, 0x4

    sub-int/2addr v8, v5

    .line 33
    rem-int/lit8 v5, v9, 0x4

    sub-int/2addr v9, v5

    .line 34
    iput v8, v0, Lf1/m;->U:I

    .line 35
    iput v9, v0, Lf1/m;->V:I

    .line 36
    iget v5, v0, Lf1/q;->k:I

    if-eq v5, v3, :cond_1

    .line 37
    iput v3, v0, Lf1/q;->k:I

    :cond_1
    const/16 v3, 0x81

    .line 38
    invoke-virtual {v0, v3}, Lf1/m;->v0(I)Z

    and-int/lit8 v3, v2, 0x1

    const/16 v5, 0x11

    if-nez v3, :cond_2

    .line 39
    invoke-virtual {v0, v5}, Lf1/q;->A(I)I

    move-result v3

    or-int/lit8 v3, v3, 0x40

    invoke-virtual {v0, v5, v3}, Lf1/q;->V(II)I

    :cond_2
    and-int/2addr v2, v1

    if-nez v2, :cond_3

    .line 40
    invoke-virtual {v0, v5}, Lf1/q;->A(I)I

    move-result v2

    const/16 v3, 0x80

    or-int/2addr v2, v3

    invoke-virtual {v0, v5, v2}, Lf1/q;->V(II)I

    .line 41
    :cond_3
    iget-object v2, v0, Lf1/m;->l0:Lf1/m$c;

    if-eqz v2, :cond_4

    iget v2, v2, Lf1/m$c;->f:I

    if-ltz v2, :cond_4

    .line 42
    invoke-virtual {v0, v5, v2}, Lf1/q;->V(II)I

    .line 43
    :cond_4
    iget-object v2, v0, Lf1/m;->j0:[I

    aput v6, v2, v4

    .line 44
    aput v7, v2, v22

    const/4 v3, 0x3

    .line 45
    aput v8, v2, v3

    const/16 v3, 0x8

    .line 46
    aput v9, v2, v3

    const/4 v3, 0x1

    .line 47
    aput v10, v2, v3

    .line 48
    aput v13, v2, v20

    .line 49
    aput v11, v2, v1

    .line 50
    aput v14, v2, v21

    const/4 v1, 0x0

    .line 51
    aput v12, v2, v1

    const/4 v1, 0x5

    .line 52
    aput v15, v2, v1

    .line 53
    iput-boolean v3, v0, Lf1/m;->R:Z

    return v3

    :cond_5
    :goto_0
    const/4 v1, 0x0

    .line 54
    iput-boolean v1, v0, Lf1/m;->R:Z

    .line 55
    iput v8, v0, Lf1/m;->U:I

    .line 56
    iput v9, v0, Lf1/m;->V:I

    const/4 v2, -0x1

    .line 57
    iput v2, v0, Lf1/q;->k:I

    return v1
.end method

.method public v0(I)Z
    .locals 1

    const/16 v0, 0xff

    .line 1
    invoke-virtual {p0, v0, p1}, Lf1/q;->V(II)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
