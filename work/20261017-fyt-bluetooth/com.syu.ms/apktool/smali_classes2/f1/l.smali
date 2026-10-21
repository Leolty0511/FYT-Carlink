.class public Lf1/l;
.super Lf1/q;
.source "SourceFile"


# static fields
.field public static s0:Ljava/lang/String; = "value_926"

.field public static t0:Ljava/lang/String; = "value_8033_"

.field public static u0:Ljava/lang/String; = "value_0x33_"

.field public static v0:Ljava/lang/String; = "value_0x31_"

.field public static w0:Ljava/lang/String; = "value_8002_"

.field public static x0:Ljava/lang/String; = "value_extra_mode"

.field public static y0:I

.field public static z0:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lf1/q$c;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final P:Z

.field public Q:Z

.field public R:Z

.field public S:Lf1/q$c;

.field public T:I

.field public U:I

.field public V:Lq1/b;

.field public W:Lo1/l0;

.field public X:Lo1/l0;

.field public Y:Ljava/lang/Object;

.field public Z:I

.field public a0:Landroid/content/SharedPreferences;

.field public b0:Ljava/lang/String;

.field public c0:Ljava/lang/Runnable;

.field public d0:Z

.field public e0:I

.field public f0:Ljava/lang/Runnable;

.field public final g0:Ljava/lang/Runnable;

.field public h0:I

.field public i0:I

.field public j0:I

.field public k0:I

.field public l0:I

.field public m0:I

.field public n0:I

.field public o0:I

.field public p0:I

.field public q0:I

.field public r0:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lf1/l;->z0:Ljava/util/HashMap;

    .line 2
    new-instance v1, Lf1/q$c;

    const/16 v2, 0x320

    const/16 v3, 0x1e0

    invoke-direct {v1, v2, v3}, Lf1/q$c;-><init>(II)V

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lf1/l;->z0:Ljava/util/HashMap;

    new-instance v1, Lf1/q$c;

    const/16 v2, 0x190

    const/16 v3, 0xf0

    invoke-direct {v1, v2, v3}, Lf1/q$c;-><init>(II)V

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lf1/l;->z0:Ljava/util/HashMap;

    new-instance v1, Lf1/q$c;

    const/16 v2, 0x240

    const/16 v3, 0x7c

    invoke-direct {v1, v2, v3}, Lf1/q$c;-><init>(II)V

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ILp1/a;ILandroid/os/Handler;)V
    .locals 6

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
    iput-boolean p1, p0, Lf1/l;->P:Z

    const/4 p2, 0x0

    .line 3
    iput-boolean p2, p0, Lf1/l;->Q:Z

    .line 4
    iput-boolean p2, p0, Lf1/l;->R:Z

    .line 5
    new-instance p3, Lf1/q$c;

    const/4 p4, -0x1

    invoke-direct {p3, p4, p4}, Lf1/q$c;-><init>(II)V

    iput-object p3, p0, Lf1/l;->S:Lf1/q$c;

    .line 6
    iput p4, p0, Lf1/l;->T:I

    iput p4, p0, Lf1/l;->U:I

    .line 7
    new-instance p3, Lq1/b;

    const/4 v0, 0x3

    invoke-direct {p3, p4, v0}, Lq1/b;-><init>(II)V

    iput-object p3, p0, Lf1/l;->V:Lq1/b;

    .line 8
    new-instance p3, Lo1/l0;

    invoke-direct {p3}, Lo1/l0;-><init>()V

    iput-object p3, p0, Lf1/l;->W:Lo1/l0;

    .line 9
    new-instance p3, Lo1/l0;

    invoke-direct {p3}, Lo1/l0;-><init>()V

    iput-object p3, p0, Lf1/l;->X:Lo1/l0;

    .line 10
    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lf1/l;->Y:Ljava/lang/Object;

    .line 11
    iput p4, p0, Lf1/l;->Z:I

    const/4 p3, 0x0

    .line 12
    iput-object p3, p0, Lf1/l;->a0:Landroid/content/SharedPreferences;

    const-string p3, ""

    .line 13
    iput-object p3, p0, Lf1/l;->b0:Ljava/lang/String;

    .line 14
    iput-boolean p2, p0, Lf1/l;->d0:Z

    .line 15
    iput p2, p0, Lf1/l;->e0:I

    .line 16
    new-instance p3, Lf1/l$a;

    invoke-direct {p3, p0}, Lf1/l$a;-><init>(Lf1/l;)V

    iput-object p3, p0, Lf1/l;->f0:Ljava/lang/Runnable;

    .line 17
    new-instance p3, Lf1/l$b;

    invoke-direct {p3, p0}, Lf1/l$b;-><init>(Lf1/l;)V

    iput-object p3, p0, Lf1/l;->g0:Ljava/lang/Runnable;

    .line 18
    iput p2, p0, Lf1/l;->h0:I

    iput p1, p0, Lf1/l;->i0:I

    const/4 p1, 0x2

    iput p1, p0, Lf1/l;->j0:I

    iput v0, p0, Lf1/l;->k0:I

    const/4 p1, 0x4

    iput p1, p0, Lf1/l;->l0:I

    const/4 p1, 0x5

    iput p1, p0, Lf1/l;->m0:I

    const/4 p1, 0x6

    iput p1, p0, Lf1/l;->n0:I

    const/4 p1, 0x7

    iput p1, p0, Lf1/l;->o0:I

    const/16 p1, 0x8

    iput p1, p0, Lf1/l;->p0:I

    const/16 p1, 0x9

    iput p1, p0, Lf1/l;->q0:I

    const/16 p1, 0xa

    new-array p1, p1, [I

    .line 19
    fill-array-data p1, :array_0

    iput-object p1, p0, Lf1/l;->r0:[I

    .line 20
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object p1

    const-string p3, "Chip8918"

    invoke-virtual {p1, p3, p2}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lf1/l;->a0:Landroid/content/SharedPreferences;

    .line 21
    sget-object p2, Lf1/l;->s0:Ljava/lang/String;

    const-string p3, "sys.c926.mode"

    invoke-static {p3, p4}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result p3

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lf1/l;->Z:I

    return-void

    nop

    :array_0
    .array-data 4
        0x80
        0x8
        0x52
        0x320
        0x3fa
        0x14
        0x3
        0x14
        0x1e0
        0x20b
    .end array-data
.end method

.method public static synthetic X(Lf1/l;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lf1/l;->d0:Z

    return p0
.end method

.method public static synthetic Y(Lf1/l;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lf1/l;->d0:Z

    return p1
.end method

.method public static synthetic Z(Lf1/l;)I
    .locals 0

    .line 1
    iget p0, p0, Lf1/l;->e0:I

    return p0
.end method

.method public static synthetic a0(Lf1/l;)I
    .locals 2

    .line 1
    iget v0, p0, Lf1/l;->e0:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lf1/l;->e0:I

    return v0
.end method

.method public static synthetic b0(Lf1/l;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lf1/l;->j0(Z)V

    return-void
.end method


# virtual methods
.method public C(ILy/b;)Z
    .locals 9

    const/4 v0, 0x0

    const/16 v1, 0xae

    if-ne p1, v1, :cond_0

    .line 1
    iget-object v1, p0, Lf1/l;->a0:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lf1/l;->u0:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lf1/l;->b0:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2
    iget-object v2, p0, Lf1/l;->a0:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lf1/l;->v0:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lf1/l;->b0:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2c

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 3
    iget-object v3, p0, Lf1/l;->a0:Landroid/content/SharedPreferences;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lf1/l;->t0:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lf1/l;->b0:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 4
    iget-object v4, p0, Lf1/l;->a0:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lf1/l;->w0:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lf1/l;->b0:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Lf1/l;->y0:I

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x3

    new-array v6, v5, [I

    .line 5
    iget v7, p0, Lf1/q;->i:I

    aput v7, v6, v0

    const/4 v7, 0x1

    aput v7, v6, v7

    const/4 v8, 0x2

    aput v2, v6, v8

    invoke-static {p2, p1, v6}, Lo1/x;->v(Ly/b;I[I)V

    new-array v2, v5, [I

    .line 6
    iget v6, p0, Lf1/q;->i:I

    aput v6, v2, v0

    aput v8, v2, v7

    aput v1, v2, v8

    invoke-static {p2, p1, v2}, Lo1/x;->v(Ly/b;I[I)V

    new-array v1, v5, [I

    .line 7
    iget v2, p0, Lf1/q;->i:I

    aput v2, v1, v0

    aput v5, v1, v7

    aput v3, v1, v8

    invoke-static {p2, p1, v1}, Lo1/x;->v(Ly/b;I[I)V

    new-array v1, v5, [I

    .line 8
    iget v2, p0, Lf1/q;->i:I

    aput v2, v1, v0

    const/4 v2, 0x4

    aput v2, v1, v7

    aput v4, v1, v8

    invoke-static {p2, p1, v1}, Lo1/x;->v(Ly/b;I[I)V

    new-array v1, v5, [I

    .line 9
    iget v2, p0, Lf1/q;->i:I

    aput v2, v1, v0

    aput v0, v1, v7

    iget v2, p0, Lf1/l;->Z:I

    aput v2, v1, v8

    invoke-static {p2, p1, v1}, Lo1/x;->v(Ly/b;I[I)V

    .line 10
    iget-object v1, p0, Lf1/l;->a0:Landroid/content/SharedPreferences;

    sget-object v2, Lf1/l;->x0:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    new-array v2, v5, [I

    .line 11
    iget v3, p0, Lf1/q;->i:I

    aput v3, v2, v0

    const/4 v0, -0x2

    aput v0, v2, v7

    aput v1, v2, v8

    invoke-static {p2, p1, v2}, Lo1/x;->v(Ly/b;I[I)V

    return v7

    :cond_0
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

    const-string v1, "Chip8918"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lf1/l;->T:I

    .line 5
    iput v0, p0, Lf1/l;->U:I

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

    const-string v1, "Chip8918"

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
    iget-object v1, p0, Lf1/l;->g0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    :cond_1
    invoke-virtual {p0}, Lf1/l;->D()V

    .line 7
    :cond_2
    iget-boolean v0, p0, Lf1/q;->r:Z

    return v0
.end method

.method public U(Ly/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf1/l;->S:Lf1/q$c;

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

    iget-object v0, p0, Lf1/l;->S:Lf1/q$c;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " chipid : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lf1/q;->h:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Chip8918"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public a()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lf1/l;->c0()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lf1/l;->U:I

    .line 3
    iput v0, p0, Lf1/l;->T:I

    .line 4
    iget-object v1, p0, Lf1/l;->S:Lf1/q$c;

    iput v0, v1, Lf1/q$c;->a:I

    .line 5
    iput v0, v1, Lf1/q$c;->b:I

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lf1/l;->R:Z

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==============================>> 03 update "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf1/l;->S:Lf1/q$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " chipid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf1/q;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Chip8918"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Lf1/l;->S:Lf1/q$c;

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

    const-string v0, "Chip8918"

    .line 2
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

    .line 3
    iget v0, p0, Lf1/q;->i:I

    if-eq v0, p1, :cond_0

    .line 4
    iput p1, p0, Lf1/q;->i:I

    .line 5
    iget-object p1, p0, Lf1/q;->s:Landroid/os/Handler;

    if-eqz p1, :cond_0

    .line 6
    iget-object v0, p0, Lf1/l;->g0:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7
    :cond_0
    iget-boolean p1, p0, Lf1/q;->r:Z

    if-eqz p1, :cond_3

    .line 8
    iget-object p1, p0, Lf1/l;->Y:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    :try_start_1
    iget v0, p0, Lf1/l;->T:I

    if-lez v0, :cond_1

    iget v0, p0, Lf1/l;->U:I

    if-gtz v0, :cond_2

    .line 10
    :cond_1
    invoke-virtual {p0}, Lf1/l;->f0()V

    .line 11
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

    .line 12
    :cond_3
    invoke-virtual {p0}, Lf1/l;->D()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 13
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c0()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lf1/l;->d0:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lf1/l;->d0:Z

    .line 3
    iget-object v0, p0, Lf1/l;->c0:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lf1/q;->s:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lf1/l;->c0:Ljava/lang/Runnable;

    :cond_0
    const-string v0, "Chip8918"

    const-string v1, "----- Polling task cancelled"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf1/q;->s:Landroid/os/Handler;

    iget-object v1, p0, Lf1/l;->g0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    invoke-super {p0}, Lf1/q;->d()V

    return-void
.end method

.method public d0(I)V
    .locals 3

    .line 1
    iget v0, p0, Lf1/l;->Z:I

    if-eq v0, p1, :cond_1

    .line 2
    iput p1, p0, Lf1/l;->Z:I

    .line 3
    iget-object p1, p0, Lf1/l;->a0:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    sget-object v0, Lf1/l;->s0:Ljava/lang/String;

    iget v1, p0, Lf1/l;->Z:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/16 p1, 0xae

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 4
    iget v1, p0, Lf1/q;->i:I

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lf1/l;->Z:I

    aput v2, v0, v1

    invoke-static {p1, v0}, Lu0/d;->I3(I[I)V

    .line 5
    iget-boolean p1, p0, Lf1/q;->r:Z

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lf1/q;->s:Landroid/os/Handler;

    if-eqz p1, :cond_0

    .line 7
    iget-object v0, p0, Lf1/l;->g0:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    :cond_0
    invoke-virtual {p0}, Lf1/l;->D()V

    :cond_1
    return-void
.end method

.method public e0()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf1/q;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/16 v0, 0x80

    .line 2
    invoke-virtual {p0, v0}, Lf1/l;->v0(I)Z

    const/16 v0, 0x20

    .line 3
    invoke-virtual {p0, v0}, Lf1/q;->A(I)I

    move-result v0

    shr-int/lit8 v0, v0, 0x6

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final f0()V
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

    iput v0, p0, Lf1/l;->T:I

    const/16 v0, 0x1e0

    const-string v1, "sys.c8918.h"

    .line 3
    invoke-static {v1, v0}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lf1/l;->U:I

    .line 4
    :cond_0
    invoke-virtual {p0}, Lf1/l;->m0()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lf1/l;->o0()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lf1/l;->n0()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    .line 7
    :goto_1
    invoke-virtual {p0, v1}, Lf1/l;->l0(Z)V

    return-void
.end method

.method public g0(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public h(IIII)V
    .locals 8

    const/4 p3, -0x2

    const/4 p4, -0x1

    const/16 v0, 0xae

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq p1, p3, :cond_a

    if-eq p1, p4, :cond_9

    const/16 p3, 0x70

    if-eq p1, v4, :cond_7

    const/16 p4, 0x33

    if-eq p1, v3, :cond_4

    const/16 p3, 0x80

    if-eq p1, v2, :cond_2

    const/4 p4, 0x4

    if-eq p1, p4, :cond_0

    goto/16 :goto_1

    .line 1
    :cond_0
    iget-object p1, p0, Lf1/l;->a0:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lf1/l;->w0:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lf1/l;->b0:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Lf1/l;->y0:I

    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, p2, :cond_c

    .line 2
    iget-object v5, p0, Lf1/l;->a0:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lf1/l;->w0:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lf1/l;->b0:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-array v2, v2, [I

    .line 3
    iget v5, p0, Lf1/q;->i:I

    aput v5, v2, v1

    aput p4, v2, v4

    aput p2, v2, v3

    invoke-static {v0, v2}, Lu0/d;->I3(I[I)V

    .line 4
    iget-object p2, p0, Lf1/l;->Y:Ljava/lang/Object;

    monitor-enter p2

    .line 5
    :try_start_0
    invoke-virtual {p0, p3}, Lf1/l;->v0(I)Z

    move-result p3

    const-string p4, "Chip8918"

    const-string v0, "001 write 0x80 0x02 %02x"

    new-array v2, v4, [Ljava/lang/Object;

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_1

    .line 7
    invoke-virtual {p0, v3, p1}, Lf1/q;->V(II)I

    move-result p1

    .line 8
    :cond_1
    monitor-exit p2

    goto/16 :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 9
    :cond_2
    iget-object p1, p0, Lf1/l;->a0:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lf1/l;->t0:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lf1/l;->b0:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, p2, :cond_c

    .line 10
    iget-object p1, p0, Lf1/l;->a0:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lf1/l;->t0:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lf1/l;->b0:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-array p1, v2, [I

    .line 11
    iget v5, p0, Lf1/q;->i:I

    aput v5, p1, v1

    aput v2, p1, v4

    aput p2, p1, v3

    invoke-static {v0, p1}, Lu0/d;->I3(I[I)V

    .line 12
    iget-object p1, p0, Lf1/l;->Y:Ljava/lang/Object;

    monitor-enter p1

    .line 13
    :try_start_1
    invoke-virtual {p0, p3}, Lf1/l;->v0(I)Z

    move-result p3

    if-eqz p3, :cond_3

    shl-int/lit8 p2, p2, 0x5

    or-int/lit8 p2, p2, 0xc

    .line 14
    invoke-virtual {p0, p4, p2}, Lf1/q;->V(II)I

    move-result p2

    .line 15
    :cond_3
    monitor-exit p1

    goto/16 :goto_1

    :catchall_1
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p2

    .line 16
    :cond_4
    new-instance p1, Lf1/q$c;

    iget v5, p0, Lf1/l;->T:I

    iget v6, p0, Lf1/l;->U:I

    invoke-direct {p1, v5, v6}, Lf1/q$c;-><init>(II)V

    .line 17
    sget-object v5, Lf1/l;->z0:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Lf1/l;->z0:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_5
    const/16 p1, 0xa

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 18
    iget-object v5, p0, Lf1/l;->a0:Landroid/content/SharedPreferences;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lf1/l;->u0:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lf1/l;->b0:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v5, v6, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, p2, :cond_c

    .line 19
    iget-object p1, p0, Lf1/l;->a0:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lf1/l;->u0:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lf1/l;->b0:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-array p1, v2, [I

    .line 20
    iget v2, p0, Lf1/q;->i:I

    aput v2, p1, v1

    aput v3, p1, v4

    aput p2, p1, v3

    invoke-static {v0, p1}, Lu0/d;->I3(I[I)V

    .line 21
    iget-object p1, p0, Lf1/l;->Y:Ljava/lang/Object;

    monitor-enter p1

    .line 22
    :try_start_2
    invoke-virtual {p0, p3}, Lf1/l;->v0(I)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 23
    invoke-virtual {p0, p4, p2}, Lf1/q;->V(II)I

    move-result p2

    .line 24
    :cond_6
    monitor-exit p1

    goto/16 :goto_1

    :catchall_2
    move-exception p2

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p2

    .line 25
    :cond_7
    iget-object p1, p0, Lf1/l;->a0:Landroid/content/SharedPreferences;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lf1/l;->v0:Ljava/lang/String;

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lf1/l;->b0:Ljava/lang/String;

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const/16 v5, 0x2c

    invoke-interface {p1, p4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, p2, :cond_c

    .line 26
    iget-object p1, p0, Lf1/l;->a0:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lf1/l;->v0:Ljava/lang/String;

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lf1/l;->b0:Ljava/lang/String;

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p1, p4, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-array p1, v2, [I

    .line 27
    iget p4, p0, Lf1/q;->i:I

    aput p4, p1, v1

    aput v4, p1, v4

    aput p2, p1, v3

    invoke-static {v0, p1}, Lu0/d;->I3(I[I)V

    .line 28
    iget-object p1, p0, Lf1/l;->Y:Ljava/lang/Object;

    monitor-enter p1

    .line 29
    :try_start_3
    invoke-virtual {p0, p3}, Lf1/l;->v0(I)Z

    move-result p3

    if-eqz p3, :cond_8

    const/16 p3, 0x31

    .line 30
    invoke-virtual {p0, p3, p2}, Lf1/q;->V(II)I

    move-result p2

    .line 31
    :cond_8
    monitor-exit p1

    goto/16 :goto_1

    :catchall_3
    move-exception p2

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw p2

    :cond_9
    if-ne p2, p4, :cond_c

    .line 32
    iget p1, p0, Lf1/l;->T:I

    if-lez p1, :cond_c

    iget p1, p0, Lf1/l;->U:I

    if-lez p1, :cond_c

    .line 33
    iget-object p1, p0, Lf1/l;->a0:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p3, Lf1/l;->v0:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lf1/l;->b0:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 34
    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p3, Lf1/l;->u0:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lf1/l;->b0:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 35
    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p3, Lf1/l;->t0:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lf1/l;->b0:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 36
    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p3, Lf1/l;->w0:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lf1/l;->b0:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 37
    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 38
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 39
    invoke-virtual {p0}, Lf1/l;->D()V

    goto :goto_1

    .line 40
    :cond_a
    iget-object p3, p0, Lf1/l;->a0:Landroid/content/SharedPreferences;

    sget-object v5, Lf1/l;->x0:Ljava/lang/String;

    invoke-interface {p3, v5, p4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p3

    if-gez p2, :cond_b

    move p2, p4

    :cond_b
    if-eq p3, p2, :cond_c

    .line 41
    iget-object p3, p0, Lf1/l;->a0:Landroid/content/SharedPreferences;

    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    sget-object p4, Lf1/l;->x0:Ljava/lang/String;

    invoke-interface {p3, p4, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-array p3, v2, [I

    .line 42
    iget p4, p0, Lf1/q;->i:I

    aput p4, p3, v1

    aput p1, p3, v4

    aput p2, p3, v3

    invoke-static {v0, p3}, Lu0/d;->I3(I[I)V

    .line 43
    iget-object p1, p0, Lf1/l;->Y:Ljava/lang/Object;

    monitor-enter p1

    .line 44
    :try_start_4
    iget-object p2, p0, Lf1/q;->s:Landroid/os/Handler;

    iget-object p3, p0, Lf1/l;->g0:Ljava/lang/Runnable;

    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 45
    iget-object p2, p0, Lf1/q;->s:Landroid/os/Handler;

    iget-object p3, p0, Lf1/l;->g0:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p2, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 46
    monitor-exit p1

    goto :goto_1

    :catchall_4
    move-exception p2

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw p2

    :cond_c
    :goto_1
    return-void
.end method

.method public final h0()Z
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lf1/l;->a0:Landroid/content/SharedPreferences;

    sget-object v2, Lf1/l;->x0:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x7

    const/16 v4, 0x48

    const/4 v8, 0x3

    const/16 v9, 0x14

    const/4 v10, 0x2

    const/16 v11, 0x17

    const/16 v12, 0x16

    const/16 v13, 0x80

    const/16 v14, 0x12

    const/16 v15, 0x15

    const/16 v5, 0x13

    const/16 v6, 0x83

    const/4 v2, 0x0

    const/4 v7, 0x1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_31

    .line 2
    :pswitch_1
    invoke-virtual {v0, v6}, Lf1/l;->v0(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, v14, v7}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_0

    move v1, v7

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    const/16 v1, 0xf3

    .line 4
    invoke-virtual {v0, v5, v1}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_1

    move v1, v7

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {v0, v9, v4}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_2

    move v1, v7

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    if-eqz v1, :cond_9

    .line 6
    invoke-virtual {v0, v15, v10}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_9

    goto/16 :goto_9

    .line 7
    :pswitch_2
    invoke-virtual {v0, v6}, Lf1/l;->v0(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    .line 8
    invoke-virtual {v0, v14, v1}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_3

    move v1, v7

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    if-eqz v1, :cond_4

    const/16 v1, 0x33

    .line 9
    invoke-virtual {v0, v5, v1}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_4

    move v1, v7

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    if-eqz v1, :cond_5

    const/16 v1, 0xf

    .line 10
    invoke-virtual {v0, v9, v1}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_5

    move v1, v7

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    if-eqz v1, :cond_9

    .line 11
    invoke-virtual {v0, v15, v3}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_9

    goto :goto_9

    .line 12
    :pswitch_3
    invoke-virtual {v0, v6}, Lf1/l;->v0(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 13
    invoke-virtual {v0, v14, v7}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_6

    move v1, v7

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    if-eqz v1, :cond_7

    const/16 v1, 0xee

    .line 14
    invoke-virtual {v0, v5, v1}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_7

    move v1, v7

    goto :goto_7

    :cond_7
    move v1, v2

    :goto_7
    if-eqz v1, :cond_8

    .line 15
    invoke-virtual {v0, v9, v4}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_8

    move v1, v7

    goto :goto_8

    :cond_8
    move v1, v2

    :goto_8
    if-eqz v1, :cond_9

    .line 16
    invoke-virtual {v0, v15, v3}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_9

    :goto_9
    move v2, v7

    :cond_9
    move v7, v2

    goto/16 :goto_31

    .line 17
    :pswitch_4
    invoke-virtual {v0, v6}, Lf1/l;->v0(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 18
    invoke-virtual {v0, v14, v10}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_a

    move v1, v7

    goto :goto_a

    :cond_a
    move v1, v2

    :goto_a
    if-eqz v1, :cond_b

    const/16 v1, 0x50

    .line 19
    invoke-virtual {v0, v5, v1}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_b

    move v1, v7

    goto :goto_b

    :cond_b
    move v1, v2

    :goto_b
    if-eqz v1, :cond_c

    const/4 v1, 0x5

    .line 20
    invoke-virtual {v0, v15, v1}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_c

    move v1, v7

    goto :goto_c

    :cond_c
    move v1, v2

    :goto_c
    if-eqz v1, :cond_d

    .line 21
    invoke-virtual {v0, v13}, Lf1/l;->v0(I)Z

    move-result v1

    if-eqz v1, :cond_d

    move v1, v7

    goto :goto_d

    :cond_d
    move v1, v2

    :goto_d
    if-eqz v1, :cond_e

    const/16 v1, 0x90

    .line 22
    invoke-virtual {v0, v8, v1}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_e

    move v1, v7

    goto :goto_e

    :cond_e
    move v1, v2

    :goto_e
    if-eqz v1, :cond_f

    .line 23
    invoke-virtual {v0, v12, v2}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_f

    move v1, v7

    goto :goto_f

    :cond_f
    move v1, v2

    :goto_f
    if-eqz v1, :cond_9

    const/16 v1, 0xc8

    .line 24
    invoke-virtual {v0, v11, v1}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_9

    goto :goto_9

    .line 25
    :pswitch_5
    invoke-virtual {v0, v6}, Lf1/l;->v0(I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 26
    invoke-virtual {v0, v14, v7}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_10

    move v1, v7

    goto :goto_10

    :cond_10
    move v1, v2

    :goto_10
    if-eqz v1, :cond_11

    const/16 v1, 0x60

    .line 27
    invoke-virtual {v0, v5, v1}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_11

    move v1, v7

    goto :goto_11

    :cond_11
    move v1, v2

    :goto_11
    if-eqz v1, :cond_12

    const/16 v1, 0xb

    .line 28
    invoke-virtual {v0, v15, v1}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_12

    move v1, v7

    goto :goto_12

    :cond_12
    move v1, v2

    :goto_12
    if-eqz v1, :cond_13

    .line 29
    invoke-virtual {v0, v13}, Lf1/l;->v0(I)Z

    move-result v1

    if-eqz v1, :cond_13

    move v1, v7

    goto :goto_13

    :cond_13
    move v1, v2

    :goto_13
    if-eqz v1, :cond_14

    .line 30
    invoke-virtual {v0, v12, v2}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_14

    move v1, v7

    goto :goto_14

    :cond_14
    move v1, v2

    :goto_14
    if-eqz v1, :cond_9

    const/16 v1, 0x58

    .line 31
    invoke-virtual {v0, v11, v1}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_9

    goto/16 :goto_9

    .line 32
    :pswitch_6
    invoke-virtual {v0, v6}, Lf1/l;->v0(I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 33
    invoke-virtual {v0, v14, v7}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_15

    move v1, v7

    goto :goto_15

    :cond_15
    move v1, v2

    :goto_15
    if-eqz v1, :cond_16

    .line 34
    invoke-virtual {v0, v5, v2}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_16

    move v1, v7

    goto :goto_16

    :cond_16
    move v1, v2

    :goto_16
    if-eqz v1, :cond_17

    const/16 v1, 0x9

    .line 35
    invoke-virtual {v0, v15, v1}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_17

    move v1, v7

    goto :goto_17

    :cond_17
    move v1, v2

    :goto_17
    if-eqz v1, :cond_18

    .line 36
    invoke-virtual {v0, v13}, Lf1/l;->v0(I)Z

    move-result v1

    if-eqz v1, :cond_18

    move v1, v7

    goto :goto_18

    :cond_18
    move v1, v2

    :goto_18
    if-eqz v1, :cond_19

    .line 37
    invoke-virtual {v0, v12, v2}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_19

    move v1, v7

    goto :goto_19

    :cond_19
    move v1, v2

    :goto_19
    if-eqz v1, :cond_9

    const/16 v1, 0x20

    .line 38
    invoke-virtual {v0, v11, v1}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_9

    goto/16 :goto_9

    .line 39
    :pswitch_7
    invoke-virtual {v0, v6}, Lf1/l;->v0(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 40
    invoke-virtual {v0, v14, v10}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_1a

    move v1, v7

    goto :goto_1a

    :cond_1a
    move v1, v2

    :goto_1a
    if-eqz v1, :cond_1b

    const/16 v1, 0xa6

    .line 41
    invoke-virtual {v0, v5, v1}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_1b

    move v1, v7

    goto :goto_1b

    :cond_1b
    move v1, v2

    :goto_1b
    if-eqz v1, :cond_1c

    const/16 v1, 0x20

    .line 42
    invoke-virtual {v0, v15, v1}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_1c

    move v1, v7

    goto :goto_1c

    :cond_1c
    move v1, v2

    :goto_1c
    if-eqz v1, :cond_1d

    .line 43
    invoke-virtual {v0, v13}, Lf1/l;->v0(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    move v1, v7

    goto :goto_1d

    :cond_1d
    move v1, v2

    :goto_1d
    if-eqz v1, :cond_1e

    .line 44
    invoke-virtual {v0, v12, v2}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_1e

    move v1, v7

    goto :goto_1e

    :cond_1e
    move v1, v2

    :goto_1e
    if-eqz v1, :cond_9

    const/16 v1, 0x58

    .line 45
    invoke-virtual {v0, v11, v1}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_9

    goto/16 :goto_9

    .line 46
    :pswitch_8
    invoke-virtual {v0, v6}, Lf1/l;->v0(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 47
    invoke-virtual {v0, v14, v7}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_1f

    move v1, v7

    goto :goto_1f

    :cond_1f
    move v1, v2

    :goto_1f
    if-eqz v1, :cond_20

    const/16 v1, 0x60

    .line 48
    invoke-virtual {v0, v5, v1}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_20

    move v1, v7

    goto :goto_20

    :cond_20
    move v1, v2

    :goto_20
    if-eqz v1, :cond_21

    .line 49
    invoke-virtual {v0, v15, v7}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_21

    move v1, v7

    goto :goto_21

    :cond_21
    move v1, v2

    :goto_21
    if-eqz v1, :cond_22

    .line 50
    invoke-virtual {v0, v13}, Lf1/l;->v0(I)Z

    move-result v1

    if-eqz v1, :cond_22

    move v1, v7

    goto :goto_22

    :cond_22
    move v1, v2

    :goto_22
    if-eqz v1, :cond_23

    .line 51
    invoke-virtual {v0, v12, v7}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_23

    move v1, v7

    goto :goto_23

    :cond_23
    move v1, v2

    :goto_23
    if-eqz v1, :cond_9

    .line 52
    invoke-virtual {v0, v11, v2}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_9

    goto/16 :goto_9

    .line 53
    :pswitch_9
    invoke-virtual {v0, v6}, Lf1/l;->v0(I)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 54
    invoke-virtual {v0, v14, v7}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_24

    move v1, v7

    goto :goto_24

    :cond_24
    move v1, v2

    :goto_24
    if-eqz v1, :cond_25

    .line 55
    invoke-virtual {v0, v5, v2}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_25

    move v1, v7

    goto :goto_25

    :cond_25
    move v1, v2

    :goto_25
    if-eqz v1, :cond_26

    const/16 v1, 0x9

    .line 56
    invoke-virtual {v0, v15, v1}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_26

    move v1, v7

    goto :goto_26

    :cond_26
    move v1, v2

    :goto_26
    if-eqz v1, :cond_27

    .line 57
    invoke-virtual {v0, v13}, Lf1/l;->v0(I)Z

    move-result v1

    if-eqz v1, :cond_27

    move v1, v7

    goto :goto_27

    :cond_27
    move v1, v2

    :goto_27
    if-eqz v1, :cond_28

    .line 58
    invoke-virtual {v0, v12, v2}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_28

    move v1, v7

    goto :goto_28

    :cond_28
    move v1, v2

    :goto_28
    if-eqz v1, :cond_9

    const/16 v1, 0x84

    .line 59
    invoke-virtual {v0, v11, v1}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_9

    goto/16 :goto_9

    .line 60
    :pswitch_a
    invoke-virtual {v0, v6}, Lf1/l;->v0(I)Z

    move-result v1

    if-eqz v1, :cond_29

    const/16 v1, 0x1e

    .line 61
    invoke-virtual {v0, v5, v1}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_29

    move v1, v7

    goto :goto_29

    :cond_29
    move v1, v2

    :goto_29
    if-eqz v1, :cond_2a

    .line 62
    invoke-virtual {v0, v15, v7}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_2a

    move v1, v7

    goto :goto_2a

    :cond_2a
    move v1, v2

    :goto_2a
    if-eqz v1, :cond_2b

    .line 63
    invoke-virtual {v0, v13}, Lf1/l;->v0(I)Z

    move-result v1

    if-eqz v1, :cond_2b

    move v1, v7

    goto :goto_2b

    :cond_2b
    move v1, v2

    :goto_2b
    if-eqz v1, :cond_2c

    .line 64
    invoke-virtual {v0, v12, v7}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_2c

    move v1, v7

    goto :goto_2c

    :cond_2c
    move v1, v2

    :goto_2c
    if-eqz v1, :cond_9

    const/16 v1, 0xc7

    .line 65
    invoke-virtual {v0, v11, v1}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_9

    goto/16 :goto_9

    .line 66
    :pswitch_b
    invoke-virtual {v0, v6}, Lf1/l;->v0(I)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 67
    invoke-virtual {v0, v5, v8}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_2d

    move v1, v7

    goto :goto_2d

    :cond_2d
    move v1, v2

    :goto_2d
    if-eqz v1, :cond_2e

    const/16 v1, 0x71

    .line 68
    invoke-virtual {v0, v15, v1}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_2e

    move v1, v7

    goto :goto_2e

    :cond_2e
    move v1, v2

    :goto_2e
    if-eqz v1, :cond_2f

    .line 69
    invoke-virtual {v0, v13}, Lf1/l;->v0(I)Z

    move-result v1

    if-eqz v1, :cond_2f

    move v1, v7

    goto :goto_2f

    :cond_2f
    move v1, v2

    :goto_2f
    if-eqz v1, :cond_30

    .line 70
    invoke-virtual {v0, v12, v7}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_30

    move v1, v7

    goto :goto_30

    :cond_30
    move v1, v2

    :goto_30
    if-eqz v1, :cond_9

    const/16 v1, 0xc4

    .line 71
    invoke-virtual {v0, v11, v1}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_9

    goto/16 :goto_9

    :goto_31
    return v7

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public i0()Z
    .locals 5

    const-string v0, "Chip8918"

    const-string v1, "----- init_LT8918L_State"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lf1/q;->n()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x5

    .line 3
    :cond_1
    iget v2, p0, Lf1/l;->Z:I

    if-lez v2, :cond_2

    invoke-virtual {p0, v2}, Lf1/l;->w0(I)Z

    move-result v2

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    const-wide/16 v3, 0x32

    .line 4
    invoke-static {v3, v4}, Lo1/s0;->C(J)V

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_1

    .line 5
    :goto_1
    invoke-virtual {p0}, Lf1/l;->m0()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_2

    :cond_4
    move v0, v2

    :goto_2
    if-eqz v0, :cond_5

    .line 6
    invoke-virtual {p0}, Lf1/l;->o0()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    goto :goto_3

    :cond_5
    move v0, v2

    :goto_3
    if-eqz v0, :cond_6

    .line 7
    invoke-virtual {p0}, Lf1/l;->n0()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_4

    :cond_6
    move v0, v2

    :goto_4
    if-eqz v0, :cond_7

    .line 8
    invoke-virtual {p0}, Lf1/l;->p0()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_5

    :cond_7
    move v1, v2

    :goto_5
    return v1
.end method

.method public final j0(Z)V
    .locals 2

    const-string v0, "Chip8918"

    if-eqz p1, :cond_3

    const-string p1, "----- vdLT8918L_TX_DPHY_Logic_Reset"

    .line 1
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lf1/l;->q0()Z

    move-result p1

    const-string v1, "----- vdLT8918L_TxPll_Output_Config"

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lf1/l;->s0()Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0}, Lf1/l;->r0()Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p0}, Lf1/l;->t0()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    if-eqz v0, :cond_4

    .line 7
    invoke-virtual {p0}, Lf1/l;->h0()Z

    goto :goto_3

    :cond_3
    const-string p1, "----- Polling failed after max attempts"

    .line 8
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_3
    return-void
.end method

.method public k()I
    .locals 14

    .line 1
    iget-object v0, p0, Lf1/l;->V:Lq1/b;

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
    iget-object v3, p0, Lf1/l;->W:Lo1/l0;

    const/16 v4, 0x96

    invoke-virtual {v3, v4}, Lo1/l0;->c(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3
    iget-object v0, p0, Lf1/l;->W:Lo1/l0;

    invoke-virtual {v0}, Lo1/l0;->a()V

    .line 4
    iget-object v0, p0, Lf1/l;->V:Lq1/b;

    invoke-virtual {p0}, Lf1/l;->e0()I

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
    iget-boolean v3, p0, Lf1/l;->Q:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lf1/q;->i:I

    if-lez v3, :cond_3

    move v3, v2

    goto :goto_2

    :cond_3
    move v3, v1

    .line 6
    :goto_2
    iget-object v4, p0, Lf1/l;->V:Lq1/b;

    invoke-virtual {v4}, Lq1/b;->e()Z

    move-result v4

    const/16 v5, 0xad

    if-eqz v4, :cond_5

    const/4 v4, -0x1

    if-eqz v0, :cond_4

    .line 7
    iget-object v0, p0, Lf1/l;->V:Lq1/b;

    invoke-virtual {v0}, Lq1/b;->c()I

    move-result v0

    if-eq v0, v4, :cond_5

    .line 8
    invoke-virtual {p0}, Lf1/q;->R()V

    .line 9
    invoke-virtual {p0}, Lf1/l;->D()V

    goto :goto_3

    .line 10
    :cond_4
    iput v4, p0, Lf1/l;->T:I

    .line 11
    iput v4, p0, Lf1/l;->U:I

    .line 12
    iget-object v0, p0, Lf1/l;->S:Lf1/q$c;

    iput v4, v0, Lf1/q$c;->a:I

    .line 13
    iput v4, v0, Lf1/q$c;->b:I

    .line 14
    iput v4, p0, Lf1/q;->k:I

    .line 15
    invoke-virtual {p0, v4, v4}, Lf1/q;->y(II)[I

    move-result-object v0

    invoke-static {v5, v0}, Lu0/d;->I3(I[I)V

    .line 16
    :cond_5
    :goto_3
    iget-object v0, p0, Lf1/l;->X:Lo1/l0;

    const/16 v4, 0xc8

    invoke-virtual {v0, v4}, Lo1/l0;->c(I)Z

    move-result v0

    const-string v4, " chipid : "

    const-string v6, "Chip8918"

    if-eqz v0, :cond_6

    .line 17
    iget-object v0, p0, Lf1/l;->X:Lo1/l0;

    invoke-virtual {v0}, Lo1/l0;->a()V

    .line 18
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

    iget-boolean v7, p0, Lf1/l;->Q:Z

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " mSignalMarker: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lf1/l;->V:Lq1/b;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lf1/q;->h:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    if-eqz v3, :cond_a

    .line 19
    iget-object v0, p0, Lf1/l;->S:Lf1/q$c;

    iget v7, v0, Lf1/q$c;->a:I

    iget v8, p0, Lf1/l;->T:I

    if-ne v7, v8, :cond_9

    iget v7, v0, Lf1/q$c;->b:I

    iget v9, p0, Lf1/l;->U:I

    if-eq v7, v9, :cond_7

    goto/16 :goto_5

    .line 20
    :cond_7
    iget-boolean v0, p0, Lf1/l;->R:Z

    if-eqz v0, :cond_a

    .line 21
    iput-boolean v1, p0, Lf1/l;->R:Z

    .line 22
    new-instance v0, Lf1/q$c;

    invoke-direct {v0, v8, v9}, Lf1/q$c;-><init>(II)V

    .line 23
    sget-object v7, Lf1/l;->z0:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    sget-object v7, Lf1/l;->z0:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_4

    :cond_8
    const/16 v0, 0xa

    :goto_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 24
    iget-object v7, p0, Lf1/l;->a0:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lf1/l;->u0:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lf1/l;->b0:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v7, v8, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 25
    iget-object v7, p0, Lf1/l;->a0:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lf1/l;->v0:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lf1/l;->b0:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x2c

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 26
    iget-object v8, p0, Lf1/l;->a0:Landroid/content/SharedPreferences;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lf1/l;->t0:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lf1/l;->b0:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 27
    iget-object v9, p0, Lf1/l;->a0:Landroid/content/SharedPreferences;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lf1/l;->w0:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lf1/l;->b0:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Lf1/l;->y0:I

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x3

    new-array v11, v10, [I

    .line 28
    iget v12, p0, Lf1/q;->i:I

    aput v12, v11, v1

    aput v2, v11, v2

    const/4 v12, 0x2

    aput v7, v11, v12

    const/16 v7, 0xae

    invoke-static {v7, v11}, Lu0/d;->I3(I[I)V

    new-array v11, v10, [I

    .line 29
    iget v13, p0, Lf1/q;->i:I

    aput v13, v11, v1

    aput v12, v11, v2

    aput v0, v11, v12

    invoke-static {v7, v11}, Lu0/d;->I3(I[I)V

    new-array v0, v10, [I

    .line 30
    iget v11, p0, Lf1/q;->i:I

    aput v11, v0, v1

    aput v10, v0, v2

    aput v8, v0, v12

    invoke-static {v7, v0}, Lu0/d;->I3(I[I)V

    new-array v0, v10, [I

    .line 31
    iget v8, p0, Lf1/q;->i:I

    aput v8, v0, v1

    const/4 v1, 0x4

    aput v1, v0, v2

    aput v9, v0, v12

    invoke-static {v7, v0}, Lu0/d;->I3(I[I)V

    .line 32
    iget-object v0, p0, Lf1/l;->S:Lf1/q$c;

    iget v1, v0, Lf1/q$c;->a:I

    iget v0, v0, Lf1/q$c;->b:I

    invoke-virtual {p0, v1, v0}, Lf1/q;->y(II)[I

    move-result-object v0

    invoke-static {v5, v0}, Lu0/d;->I3(I[I)V

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==============================>> 01 update "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf1/l;->S:Lf1/q$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf1/q;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 34
    :cond_9
    :goto_5
    iput v8, v0, Lf1/q$c;->a:I

    .line 35
    iget v1, p0, Lf1/l;->U:I

    iput v1, v0, Lf1/q$c;->b:I

    .line 36
    iput-boolean v2, p0, Lf1/l;->R:Z

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==============================>> 00 SET "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf1/l;->S:Lf1/q$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " videoWidth : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf1/l;->T:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " videoHeight : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf1/l;->U:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf1/q;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_6
    return v3
.end method

.method public k0()V
    .locals 13

    const/16 v0, 0x80

    .line 1
    invoke-virtual {p0, v0}, Lf1/l;->v0(I)Z

    const/16 v0, 0x38

    const/16 v1, 0x16

    .line 2
    invoke-virtual {p0, v0, v1}, Lf1/q;->V(II)I

    const/16 v0, 0x33

    const/16 v1, 0xc

    .line 3
    invoke-virtual {p0, v0, v1}, Lf1/q;->V(II)I

    const-wide/16 v0, 0xa

    .line 4
    invoke-static {v0, v1}, Lo1/s0;->C(J)V

    const/16 v0, 0x30

    .line 5
    invoke-virtual {p0, v0}, Lf1/q;->A(I)I

    const/16 v0, 0x31

    .line 6
    invoke-virtual {p0, v0}, Lf1/q;->A(I)I

    const/16 v0, 0x32

    .line 7
    invoke-virtual {p0, v0}, Lf1/q;->A(I)I

    const/16 v0, 0x4e

    .line 8
    invoke-virtual {p0, v0}, Lf1/q;->A(I)I

    move-result v0

    and-int/lit8 v0, v0, 0xf

    shl-int/lit8 v0, v0, 0x8

    const/16 v1, 0x4f

    .line 9
    invoke-virtual {p0, v1}, Lf1/q;->A(I)I

    move-result v1

    or-int/2addr v0, v1

    const/16 v1, 0x4c

    .line 10
    invoke-virtual {p0, v1}, Lf1/q;->A(I)I

    move-result v1

    and-int/lit8 v1, v1, 0xf

    shl-int/lit8 v1, v1, 0x8

    const/16 v2, 0x4d

    .line 11
    invoke-virtual {p0, v2}, Lf1/q;->A(I)I

    move-result v2

    or-int/2addr v1, v2

    const/16 v2, 0x52

    .line 12
    invoke-virtual {p0, v2}, Lf1/q;->A(I)I

    move-result v2

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xfff

    const/16 v3, 0x53

    .line 13
    invoke-virtual {p0, v3}, Lf1/q;->A(I)I

    move-result v3

    or-int/2addr v2, v3

    const/16 v3, 0x50

    .line 14
    invoke-virtual {p0, v3}, Lf1/q;->A(I)I

    move-result v3

    and-int/lit8 v3, v3, 0xf

    shl-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xfff

    const/16 v4, 0x51

    .line 15
    invoke-virtual {p0, v4}, Lf1/q;->A(I)I

    move-result v4

    or-int/2addr v3, v4

    const/16 v4, 0x44

    .line 16
    invoke-virtual {p0, v4}, Lf1/q;->A(I)I

    move-result v4

    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0x8

    const/16 v5, 0x45

    .line 17
    invoke-virtual {p0, v5}, Lf1/q;->A(I)I

    move-result v5

    or-int/2addr v4, v5

    const/16 v5, 0x48

    .line 18
    invoke-virtual {p0, v5}, Lf1/q;->A(I)I

    move-result v5

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x8

    const/16 v6, 0x49

    .line 19
    invoke-virtual {p0, v6}, Lf1/q;->A(I)I

    move-result v6

    or-int/2addr v5, v6

    const/16 v6, 0x4a

    .line 20
    invoke-virtual {p0, v6}, Lf1/q;->A(I)I

    move-result v6

    and-int/lit8 v6, v6, 0xf

    shl-int/lit8 v6, v6, 0x8

    const/16 v7, 0x4b

    .line 21
    invoke-virtual {p0, v7}, Lf1/q;->A(I)I

    move-result v7

    or-int/2addr v6, v7

    const/16 v7, 0x43

    .line 22
    invoke-virtual {p0, v7}, Lf1/q;->A(I)I

    move-result v7

    const/16 v8, 0x46

    .line 23
    invoke-virtual {p0, v8}, Lf1/q;->A(I)I

    move-result v8

    const/16 v9, 0x47

    .line 24
    invoke-virtual {p0, v9}, Lf1/q;->A(I)I

    move-result v9

    const/16 v10, 0x42

    .line 25
    invoke-virtual {p0, v10}, Lf1/q;->A(I)I

    move-result v10

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    .line 26
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v12, 0x0

    aput-object v2, v11, v12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v11, v3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v10, 0x2

    aput-object v2, v11, v10

    const-string v2, "00 hactive : %d,  vactive : %d sync_polarity : %d "

    invoke-static {v2, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v11, "Chip8918"

    invoke-static {v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array v2, v10, [Ljava/lang/Object;

    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "00 htotal : %d,  vtotal : %d "

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v10, [Ljava/lang/Object;

    .line 28
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v12

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "00 hsa : %d,  vsa : %d "

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v10, [Ljava/lang/Object;

    .line 29
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v12

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "00 hbp : %d,  vbp : %d "

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v10, [Ljava/lang/Object;

    .line 30
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v12

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "00 hfp : %d,  vfp : %d "

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final l0(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lf1/l;->d0:Z

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lf1/l;->e0:I

    .line 3
    new-instance v0, Lf1/l$c;

    invoke-direct {v0, p0, p1}, Lf1/l$c;-><init>(Lf1/l;Z)V

    iput-object v0, p0, Lf1/l;->c0:Ljava/lang/Runnable;

    .line 4
    iget-object p1, p0, Lf1/q;->s:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public m0()Z
    .locals 7

    const/16 v0, 0x60

    .line 1
    invoke-virtual {p0, v0}, Lf1/l;->v0(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/16 v0, 0xee

    .line 2
    invoke-virtual {p0, v0, v2}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 3
    :goto_0
    invoke-virtual {p0}, Lf1/l;->k0()V

    .line 4
    iget-object v3, p0, Lf1/l;->a0:Landroid/content/SharedPreferences;

    sget-object v4, Lf1/l;->x0:Ljava/lang/String;

    const/4 v5, -0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "----- vdLT8918L_I2c_Enable extraMode: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ret : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "Chip8918"

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0xa

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const v5, 0x7f03004e

    new-array v3, v4, [I

    .line 6
    fill-array-data v3, :array_0

    iput-object v3, p0, Lf1/l;->r0:[I

    goto :goto_1

    :pswitch_1
    const v5, 0x7f03004d

    new-array v3, v4, [I

    .line 7
    fill-array-data v3, :array_1

    iput-object v3, p0, Lf1/l;->r0:[I

    goto :goto_1

    :pswitch_2
    const v5, 0x7f030048

    goto :goto_1

    :pswitch_3
    new-array v3, v4, [I

    .line 8
    fill-array-data v3, :array_2

    iput-object v3, p0, Lf1/l;->r0:[I

    const v5, 0x7f030050

    goto :goto_1

    :pswitch_4
    new-array v3, v4, [I

    .line 9
    fill-array-data v3, :array_3

    iput-object v3, p0, Lf1/l;->r0:[I

    const v5, 0x7f030045

    goto :goto_1

    :pswitch_5
    new-array v3, v4, [I

    .line 10
    fill-array-data v3, :array_4

    iput-object v3, p0, Lf1/l;->r0:[I

    const v5, 0x7f03004c

    goto :goto_1

    :pswitch_6
    new-array v3, v4, [I

    .line 11
    fill-array-data v3, :array_5

    iput-object v3, p0, Lf1/l;->r0:[I

    const v5, 0x7f03004f

    goto :goto_1

    :pswitch_7
    new-array v3, v4, [I

    .line 12
    fill-array-data v3, :array_6

    iput-object v3, p0, Lf1/l;->r0:[I

    const v5, 0x7f03004a

    goto :goto_1

    :pswitch_8
    const v5, 0x7f030047

    goto :goto_1

    :pswitch_9
    const v5, 0x7f030043

    goto :goto_1

    :pswitch_a
    const v5, 0x7f030046

    :goto_1
    if-lez v5, :cond_2

    if-eqz v0, :cond_1

    .line 13
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    const/16 v3, 0x10

    invoke-static {v0, v5, v3}, Lo1/s0;->A(Landroid/content/Context;II)[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lf1/l;->q([I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    move v0, v1

    :cond_2
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x1c
        0x3
        0x1d
        0x320
        0x35c
        0x16
        0x3
        0x7
        0x1e0
        0x201
    .end array-data

    :array_1
    .array-data 4
        0x1c
        0x3
        0x1d
        0x320
        0x35c
        0x16
        0x3
        0x7
        0x1e0
        0x201
    .end array-data

    :array_2
    .array-data 4
        0x29
        0x80
        0x58
        0x320
        0x421
        0x9
        0x2
        0xf
        0x1f4
        0x20e
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x14
        0x14
        0x1e0
        0x20c
        0x14
        0x2
        0x14
        0x110
        0x13a
    .end array-data

    :array_4
    .array-data 4
        0x29
        0x80
        0x58
        0x320
        0x421
        0x9
        0x2
        0x23
        0x1e0
        0x20e
    .end array-data

    :array_5
    .array-data 4
        0x29
        0x80
        0x58
        0x320
        0x421
        0x9
        0x2
        0xf
        0x1f4
        0x20e
    .end array-data

    :array_6
    .array-data 4
        0x29
        0x80
        0x58
        0x320
        0x421
        0x9
        0x2
        0x23
        0x1e0
        0x20e
    .end array-data
.end method

.method public n0()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lf1/l;->a0:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lf1/l;->w0:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lf1/l;->b0:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Lf1/l;->y0:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x80

    .line 2
    invoke-virtual {p0, v1}, Lf1/l;->v0(I)Z

    move-result v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "002 write 0x80 0x02 %02x"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Chip8918"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    .line 4
    invoke-virtual {p0, v1, v0}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v5

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x3

    .line 5
    invoke-virtual {p0, v0}, Lf1/q;->A(I)I

    move-result v1

    and-int/lit8 v1, v1, 0x3f

    invoke-virtual {p0, v0, v1}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v5

    :goto_1
    return v2
.end method

.method public o0()Z
    .locals 6

    const/16 v0, 0x70

    .line 1
    invoke-virtual {p0, v0}, Lf1/l;->v0(I)Z

    move-result v0

    const/16 v1, 0x80

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v3, v1}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x3

    const/16 v4, 0x48

    .line 3
    invoke-virtual {p0, v0, v4}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    const/4 v0, 0x4

    const/16 v4, 0xa2

    .line 4
    invoke-virtual {p0, v0, v4}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_2

    move v0, v3

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    const/16 v4, 0xc

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {p0, v4, v1}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_3

    move v0, v3

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    if-eqz v0, :cond_4

    const/16 v0, 0x13

    .line 6
    invoke-virtual {p0, v0, v1}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_4

    move v0, v3

    goto :goto_4

    :cond_4
    move v0, v2

    :goto_4
    if-eqz v0, :cond_5

    const/16 v0, 0x18

    const/16 v5, 0x50

    .line 7
    invoke-virtual {p0, v0, v5}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_5

    move v0, v3

    goto :goto_5

    :cond_5
    move v0, v2

    :goto_5
    const/16 v5, 0x38

    if-eqz v0, :cond_6

    const/16 v0, 0xb0

    .line 8
    invoke-virtual {p0, v5, v0}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_6

    move v0, v3

    goto :goto_6

    :cond_6
    move v0, v2

    :goto_6
    if-eqz v0, :cond_7

    .line 9
    invoke-virtual {p0, v1}, Lf1/l;->v0(I)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v3

    goto :goto_7

    :cond_7
    move v0, v2

    :goto_7
    if-eqz v0, :cond_8

    const/16 v0, 0x33

    .line 10
    invoke-virtual {p0, v0, v4}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_8

    move v0, v3

    goto :goto_8

    :cond_8
    move v0, v2

    :goto_8
    if-eqz v0, :cond_9

    const/16 v0, 0x16

    .line 11
    invoke-virtual {p0, v5, v0}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_9

    move v2, v3

    :cond_9
    return v2
.end method

.method public p()V
    .locals 3

    .line 1
    iget-object v0, p0, Lf1/l;->Y:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0, v1}, Lf1/l;->g0(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {p0}, Lf1/l;->i0()Z

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
    invoke-virtual {p0, v0}, Lf1/l;->v0(I)Z

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x10

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

.method public q([I)Z
    .locals 14

    if-eqz p1, :cond_4

    .line 1
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_4

    const-string v0, "Chip8918"

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

    const-string v4, "Chip8918"

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
    const-string v10, "Chip8918"

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
    const-string v1, "Chip8918"

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
    invoke-virtual {p0, v0}, Lf1/l;->v0(I)Z

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
    .locals 7

    .line 1
    iget-object v0, p0, Lf1/l;->a0:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lf1/l;->t0:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lf1/l;->b0:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x80

    .line 2
    invoke-virtual {p0, v1}, Lf1/l;->v0(I)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const/16 v1, 0x33

    shl-int/lit8 v0, v0, 0x5

    or-int/lit8 v0, v0, 0x9

    .line 3
    invoke-virtual {p0, v1, v0}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-wide/16 v4, 0xa

    .line 4
    invoke-static {v4, v5}, Lo1/s0;->C(J)V

    const/16 v1, 0x30

    .line 5
    invoke-virtual {p0, v1}, Lf1/q;->A(I)I

    move-result v4

    and-int/lit8 v4, v4, 0xf

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    const/16 v6, 0x31

    .line 6
    invoke-virtual {p0, v6}, Lf1/q;->A(I)I

    move-result v6

    add-int/2addr v4, v6

    shl-int/2addr v4, v5

    const/16 v6, 0x32

    .line 7
    invoke-virtual {p0, v6}, Lf1/q;->A(I)I

    move-result v6

    add-int/2addr v4, v6

    .line 8
    div-int/lit16 v4, v4, 0x3e8

    .line 9
    div-int/lit8 v6, v4, 0xa

    .line 10
    div-int/lit8 v6, v4, 0xc

    .line 11
    div-int/lit8 v6, v4, 0x6

    .line 12
    div-int/lit8 v4, v4, 0x4

    if-eqz v0, :cond_1

    const/16 v0, 0x83

    .line 13
    invoke-virtual {p0, v0}, Lf1/l;->v0(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    const/16 v0, 0x40

    .line 14
    invoke-virtual {p0, v0, v2}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_2

    move v0, v3

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    if-eqz v0, :cond_3

    const/16 v0, 0x46

    .line 15
    invoke-virtual {p0, v0, v5}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_3

    move v0, v3

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    if-eqz v0, :cond_4

    const/16 v0, 0x47

    .line 16
    invoke-virtual {p0, v0, v5}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_4

    move v0, v3

    goto :goto_4

    :cond_4
    move v0, v2

    :goto_4
    if-eqz v0, :cond_5

    const/16 v0, 0x48

    const/16 v4, 0xa

    .line 17
    invoke-virtual {p0, v0, v4}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_5

    move v0, v3

    goto :goto_5

    :cond_5
    move v0, v2

    :goto_5
    if-eqz v0, :cond_6

    const/16 v0, 0x4a

    .line 18
    invoke-virtual {p0, v0, v1}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_6

    move v2, v3

    :cond_6
    return v2
.end method

.method public s0()Z
    .locals 12

    const/16 v0, 0x70

    .line 1
    invoke-virtual {p0, v0}, Lf1/l;->v0(I)Z

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

    .line 3
    :goto_0
    iget-object v4, p0, Lf1/l;->a0:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lf1/l;->v0:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lf1/l;->b0:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2c

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/16 v5, 0x31

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0, v5, v4}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    .line 5
    :goto_1
    new-instance v4, Lf1/q$c;

    iget v6, p0, Lf1/l;->T:I

    iget v7, p0, Lf1/l;->U:I

    invoke-direct {v4, v6, v7}, Lf1/q$c;-><init>(II)V

    .line 6
    sget-object v6, Lf1/l;->z0:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    const/16 v7, 0xa

    if-eqz v6, :cond_2

    sget-object v6, Lf1/l;->z0:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_2

    :cond_2
    move v6, v7

    :goto_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 7
    iget-object v8, p0, Lf1/l;->a0:Landroid/content/SharedPreferences;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lf1/l;->u0:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lf1/l;->b0:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "======>> GET value -- size "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " mOutputCfgMaps.containsKey(size) : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lf1/l;->z0:Ljava/util/HashMap;

    invoke-virtual {v10, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " value : "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " chipid : "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lf1/q;->h:I

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "Chip8918"

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x33

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {p0, v4, v8}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v3

    :goto_3
    if-eqz v0, :cond_4

    const/16 v0, 0x34

    const/4 v6, 0x2

    .line 10
    invoke-virtual {p0, v0, v6}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_4

    move v0, v2

    goto :goto_4

    :cond_4
    move v0, v3

    :goto_4
    if-eqz v0, :cond_5

    const/16 v0, 0x24

    const/16 v6, 0x64

    .line 11
    invoke-virtual {p0, v0, v6}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_5

    move v0, v2

    goto :goto_5

    :cond_5
    move v0, v3

    :goto_5
    const/16 v6, 0x23

    if-eqz v0, :cond_6

    const/16 v0, 0x2f

    .line 12
    invoke-virtual {p0, v6, v0}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_6

    move v0, v2

    goto :goto_6

    :cond_6
    move v0, v3

    :goto_6
    if-eqz v0, :cond_7

    const/16 v0, 0xaf

    .line 13
    invoke-virtual {p0, v6, v0}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_7

    move v0, v2

    goto :goto_7

    :cond_7
    move v0, v3

    :goto_7
    if-eqz v0, :cond_8

    const/16 v0, 0x9f

    .line 14
    invoke-virtual {p0, v6, v0}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_8

    move v0, v2

    goto :goto_8

    :cond_8
    move v0, v3

    :goto_8
    const/16 v6, 0x80

    if-eqz v0, :cond_9

    .line 15
    invoke-virtual {p0, v6}, Lf1/l;->v0(I)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v2

    goto :goto_9

    :cond_9
    move v0, v3

    .line 16
    :goto_9
    iget-object v8, p0, Lf1/l;->a0:Landroid/content/SharedPreferences;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lf1/l;->t0:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lf1/l;->b0:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-eqz v0, :cond_a

    shl-int/lit8 v0, v8, 0x5

    or-int/lit8 v0, v0, 0xc

    .line 17
    invoke-virtual {p0, v4, v0}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_a

    move v0, v2

    goto :goto_a

    :cond_a
    move v0, v3

    :goto_a
    const-wide/16 v9, 0xa

    .line 18
    invoke-static {v9, v10}, Lo1/s0;->C(J)V

    .line 19
    invoke-virtual {p0, v1}, Lf1/q;->A(I)I

    .line 20
    invoke-virtual {p0, v5}, Lf1/q;->A(I)I

    const/16 v11, 0x32

    .line 21
    invoke-virtual {p0, v11}, Lf1/q;->A(I)I

    if-eqz v0, :cond_b

    .line 22
    invoke-virtual {p0, v6}, Lf1/l;->v0(I)Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v2

    goto :goto_b

    :cond_b
    move v0, v3

    :goto_b
    if-eqz v0, :cond_c

    shl-int/lit8 v0, v8, 0x5

    or-int/lit8 v0, v0, 0x9

    .line 23
    invoke-virtual {p0, v4, v0}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_c

    move v0, v2

    goto :goto_c

    :cond_c
    move v0, v3

    :goto_c
    if-eqz v0, :cond_d

    const/16 v0, 0x6a

    .line 24
    invoke-virtual {p0, v0, v7}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_d

    move v0, v2

    goto :goto_d

    :cond_d
    move v0, v3

    :goto_d
    if-eqz v0, :cond_e

    const/16 v0, 0xbe

    const/16 v4, 0x40

    .line 25
    invoke-virtual {p0, v0, v4}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_e

    goto :goto_e

    :cond_e
    move v2, v3

    .line 26
    :goto_e
    invoke-static {v9, v10}, Lo1/s0;->C(J)V

    .line 27
    invoke-virtual {p0, v1}, Lf1/q;->A(I)I

    .line 28
    invoke-virtual {p0, v5}, Lf1/q;->A(I)I

    .line 29
    invoke-virtual {p0, v11}, Lf1/q;->A(I)I

    return v2
.end method

.method public t0()Z
    .locals 7

    const/16 v0, 0x83

    .line 1
    invoke-virtual {p0, v0}, Lf1/l;->v0(I)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/16 v1, 0x12

    .line 2
    invoke-virtual {p0, v1, v2}, Lf1/q;->V(II)I

    move-result v1

    if-lez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 3
    :goto_0
    new-instance v4, Lf1/q$c;

    iget v5, p0, Lf1/l;->T:I

    iget v6, p0, Lf1/l;->U:I

    invoke-direct {v4, v5, v6}, Lf1/q$c;-><init>(II)V

    const/16 v4, 0xa

    .line 4
    invoke-static {v4}, Lg/f;->n(I)Z

    move-result v4

    const/16 v5, 0x13

    if-eqz v4, :cond_3

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p0, v0}, Lf1/l;->v0(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    if-eqz v0, :cond_2

    const/16 v0, 0x56

    .line 6
    invoke-virtual {p0, v5, v0}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_2

    :goto_2
    move v0, v2

    goto :goto_3

    :cond_2
    move v0, v3

    goto :goto_3

    :cond_3
    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {p0, v5, v3}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_2

    goto :goto_2

    :goto_3
    if-eqz v0, :cond_4

    const/16 v0, 0x14

    .line 8
    iget-object v1, p0, Lf1/l;->r0:[I

    iget v4, p0, Lf1/l;->n0:I

    aget v1, v1, v4

    rem-int/lit16 v1, v1, 0x100

    invoke-virtual {p0, v0, v1}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_4

    move v0, v2

    goto :goto_4

    :cond_4
    move v0, v3

    :goto_4
    if-eqz v0, :cond_5

    const/16 v0, 0x15

    .line 9
    iget-object v1, p0, Lf1/l;->r0:[I

    iget v4, p0, Lf1/l;->o0:I

    aget v1, v1, v4

    rem-int/lit16 v1, v1, 0x100

    invoke-virtual {p0, v0, v1}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_5

    move v0, v2

    goto :goto_5

    :cond_5
    move v0, v3

    :goto_5
    if-eqz v0, :cond_6

    const/16 v0, 0x16

    .line 10
    iget-object v1, p0, Lf1/l;->r0:[I

    iget v4, p0, Lf1/l;->p0:I

    aget v1, v1, v4

    div-int/lit16 v1, v1, 0x100

    invoke-virtual {p0, v0, v1}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_6

    move v0, v2

    goto :goto_6

    :cond_6
    move v0, v3

    :goto_6
    if-eqz v0, :cond_7

    const/16 v0, 0x17

    .line 11
    iget-object v1, p0, Lf1/l;->r0:[I

    iget v4, p0, Lf1/l;->p0:I

    aget v1, v1, v4

    rem-int/lit16 v1, v1, 0x100

    invoke-virtual {p0, v0, v1}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_7

    move v0, v2

    goto :goto_7

    :cond_7
    move v0, v3

    :goto_7
    if-eqz v0, :cond_8

    const/16 v0, 0x18

    .line 12
    iget-object v1, p0, Lf1/l;->r0:[I

    iget v4, p0, Lf1/l;->m0:I

    aget v1, v1, v4

    rem-int/lit16 v1, v1, 0x100

    invoke-virtual {p0, v0, v1}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_8

    move v0, v2

    goto :goto_8

    :cond_8
    move v0, v3

    :goto_8
    const/16 v1, 0x1e

    if-eqz v0, :cond_9

    const/16 v0, 0x19

    .line 13
    invoke-virtual {p0, v0, v1}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_9

    move v0, v2

    goto :goto_9

    :cond_9
    move v0, v3

    :goto_9
    if-eqz v0, :cond_a

    const/16 v0, 0x1a

    .line 14
    invoke-virtual {p0, v0, v1}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_a

    move v0, v2

    goto :goto_a

    :cond_a
    move v0, v3

    :goto_a
    if-eqz v0, :cond_b

    const/16 v0, 0x1b

    .line 15
    invoke-virtual {p0, v0, v1}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_b

    move v0, v2

    goto :goto_b

    :cond_b
    move v0, v3

    :goto_b
    if-eqz v0, :cond_c

    const/16 v0, 0x1c

    .line 16
    iget-object v1, p0, Lf1/l;->r0:[I

    iget v4, p0, Lf1/l;->k0:I

    aget v1, v1, v4

    div-int/lit16 v1, v1, 0x100

    invoke-virtual {p0, v0, v1}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_c

    move v0, v2

    goto :goto_c

    :cond_c
    move v0, v3

    :goto_c
    if-eqz v0, :cond_d

    const/16 v0, 0x1d

    .line 17
    iget-object v1, p0, Lf1/l;->r0:[I

    iget v4, p0, Lf1/l;->k0:I

    aget v1, v1, v4

    rem-int/lit16 v1, v1, 0x100

    invoke-virtual {p0, v0, v1}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_d

    move v0, v2

    goto :goto_d

    :cond_d
    move v0, v3

    :goto_d
    if-eqz v0, :cond_e

    const/16 v0, 0x10

    const/16 v1, 0x58

    .line 18
    invoke-virtual {p0, v0, v1}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_e

    move v0, v2

    goto :goto_e

    :cond_e
    move v0, v3

    :goto_e
    if-eqz v0, :cond_f

    const/16 v0, 0x1f

    const/4 v1, 0x4

    .line 19
    invoke-virtual {p0, v0, v1}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_f

    move v0, v2

    goto :goto_f

    :cond_f
    move v0, v3

    :goto_f
    if-eqz v0, :cond_10

    const/16 v0, 0x11

    const/16 v1, 0x2c

    .line 20
    invoke-virtual {p0, v0, v1}, Lf1/q;->V(II)I

    move-result v0

    if-lez v0, :cond_10

    goto :goto_10

    :cond_10
    move v2, v3

    :goto_10
    return v2
.end method

.method public u0()Z
    .locals 18

    move-object/from16 v0, p0

    const/16 v1, 0x80

    .line 1
    invoke-virtual {v0, v1}, Lf1/l;->v0(I)Z

    const/16 v2, 0x38

    const/16 v3, 0x16

    .line 2
    invoke-virtual {v0, v2, v3}, Lf1/q;->V(II)I

    const/16 v2, 0x33

    const/16 v3, 0xc

    .line 3
    invoke-virtual {v0, v2, v3}, Lf1/q;->V(II)I

    const-wide/16 v4, 0xa

    .line 4
    invoke-static {v4, v5}, Lo1/s0;->C(J)V

    const/16 v2, 0x30

    .line 5
    invoke-virtual {v0, v2}, Lf1/q;->A(I)I

    move-result v2

    and-int/lit8 v2, v2, 0xf

    const/16 v4, 0x8

    shl-int/2addr v2, v4

    const/16 v5, 0x31

    .line 6
    invoke-virtual {v0, v5}, Lf1/q;->A(I)I

    move-result v5

    add-int/2addr v2, v5

    shl-int/2addr v2, v4

    const/16 v5, 0x32

    .line 7
    invoke-virtual {v0, v5}, Lf1/q;->A(I)I

    move-result v5

    add-int/2addr v2, v5

    .line 8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "=====================>>>  vdLT8918L_Video_check() fm_value == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "Chip8918"

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x4e

    .line 9
    invoke-virtual {v0, v2}, Lf1/q;->A(I)I

    move-result v2

    and-int/lit8 v2, v2, 0xf

    shl-int/2addr v2, v4

    const/16 v6, 0x4f

    .line 10
    invoke-virtual {v0, v6}, Lf1/q;->A(I)I

    move-result v6

    or-int/2addr v2, v6

    const/16 v6, 0x4c

    .line 11
    invoke-virtual {v0, v6}, Lf1/q;->A(I)I

    move-result v6

    and-int/lit8 v6, v6, 0xf

    shl-int/2addr v6, v4

    const/16 v7, 0x4d

    .line 12
    invoke-virtual {v0, v7}, Lf1/q;->A(I)I

    move-result v7

    or-int/2addr v6, v7

    const/16 v7, 0x52

    .line 13
    invoke-virtual {v0, v7}, Lf1/q;->A(I)I

    move-result v7

    and-int/lit8 v7, v7, 0xf

    shl-int/2addr v7, v4

    and-int/lit16 v7, v7, 0xfff

    const/16 v8, 0x53

    .line 14
    invoke-virtual {v0, v8}, Lf1/q;->A(I)I

    move-result v8

    or-int/2addr v7, v8

    const/16 v8, 0x50

    .line 15
    invoke-virtual {v0, v8}, Lf1/q;->A(I)I

    move-result v8

    and-int/lit8 v8, v8, 0xf

    shl-int/2addr v8, v4

    and-int/lit16 v8, v8, 0xfff

    const/16 v9, 0x51

    .line 16
    invoke-virtual {v0, v9}, Lf1/q;->A(I)I

    move-result v9

    or-int/2addr v8, v9

    const/16 v9, 0x44

    .line 17
    invoke-virtual {v0, v9}, Lf1/q;->A(I)I

    move-result v9

    and-int/lit8 v9, v9, 0xf

    shl-int/2addr v9, v4

    const/16 v10, 0x45

    .line 18
    invoke-virtual {v0, v10}, Lf1/q;->A(I)I

    move-result v10

    or-int/2addr v9, v10

    const/16 v10, 0x48

    .line 19
    invoke-virtual {v0, v10}, Lf1/q;->A(I)I

    move-result v10

    and-int/lit8 v10, v10, 0xf

    shl-int/2addr v10, v4

    const/16 v11, 0x49

    .line 20
    invoke-virtual {v0, v11}, Lf1/q;->A(I)I

    move-result v11

    or-int/2addr v10, v11

    const/16 v11, 0x4a

    .line 21
    invoke-virtual {v0, v11}, Lf1/q;->A(I)I

    move-result v11

    and-int/lit8 v11, v11, 0xf

    shl-int/2addr v11, v4

    const/16 v12, 0x4b

    .line 22
    invoke-virtual {v0, v12}, Lf1/q;->A(I)I

    move-result v12

    or-int/2addr v11, v12

    const/16 v12, 0x43

    .line 23
    invoke-virtual {v0, v12}, Lf1/q;->A(I)I

    move-result v12

    const/16 v13, 0x46

    .line 24
    invoke-virtual {v0, v13}, Lf1/q;->A(I)I

    move-result v13

    const/16 v14, 0x47

    .line 25
    invoke-virtual {v0, v14}, Lf1/q;->A(I)I

    move-result v14

    const/16 v15, 0x42

    .line 26
    invoke-virtual {v0, v15}, Lf1/q;->A(I)I

    move-result v15

    const/16 v1, 0x64

    const/4 v3, 0x0

    if-le v7, v1, :cond_4

    const/16 v4, 0xbb8

    if-gt v7, v4, :cond_4

    if-le v8, v1, :cond_4

    const/16 v1, 0x7d0

    if-le v8, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/16 v1, 0xe

    .line 27
    rem-int/lit8 v4, v7, 0x4

    sub-int/2addr v7, v4

    .line 28
    rem-int/lit8 v4, v8, 0x4

    sub-int/2addr v8, v4

    .line 29
    iput v7, v0, Lf1/l;->T:I

    .line 30
    iput v8, v0, Lf1/l;->U:I

    .line 31
    iget v4, v0, Lf1/q;->k:I

    if-eq v4, v1, :cond_1

    .line 32
    iput v1, v0, Lf1/q;->k:I

    :cond_1
    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/Object;

    .line 33
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v4, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/4 v1, 0x1

    aput-object v16, v4, v1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/4 v1, 0x2

    aput-object v16, v4, v1

    const-string v3, "hactive : %d,  vactive : %d sync_polarity : %d "

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array v3, v1, [Ljava/lang/Object;

    .line 34
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v16, 0x0

    aput-object v4, v3, v16

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v17, 0x1

    aput-object v4, v3, v17

    const-string v4, "htotal : %d,  vtotal : %d "

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array v3, v1, [Ljava/lang/Object;

    .line 35
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v16

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v17

    const-string v4, "hsa : %d,  vsa : %d "

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array v3, v1, [Ljava/lang/Object;

    .line 36
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v16

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v17

    const-string v4, "hbp : %d,  vbp : %d "

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array v3, v1, [Ljava/lang/Object;

    .line 37
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v16

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v17

    const-string v4, "hfp : %d,  vfp : %d "

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0xae

    const/16 v4, 0xd

    new-array v4, v4, [I

    .line 38
    iget v5, v0, Lf1/q;->i:I

    aput v5, v4, v16

    const/16 v5, 0xff

    aput v5, v4, v17

    aput v7, v4, v1

    const/4 v5, 0x3

    aput v8, v4, v5

    const/4 v5, 0x4

    aput v15, v4, v5

    const/4 v5, 0x5

    aput v2, v4, v5

    const/4 v5, 0x6

    aput v6, v4, v5

    const/4 v5, 0x7

    aput v9, v4, v5

    const/16 v5, 0x8

    aput v12, v4, v5

    const/16 v5, 0x9

    aput v10, v4, v5

    const/16 v5, 0xa

    aput v13, v4, v5

    const/16 v5, 0xb

    aput v11, v4, v5

    const/16 v5, 0xc

    aput v14, v4, v5

    invoke-static {v3, v4}, Lu0/d;->I3(I[I)V

    const/16 v3, 0x80

    .line 39
    invoke-virtual {v0, v3}, Lf1/l;->v0(I)Z

    and-int/lit8 v3, v15, 0x1

    if-nez v3, :cond_2

    const/4 v3, 0x3

    .line 40
    invoke-virtual {v0, v3}, Lf1/q;->A(I)I

    move-result v4

    or-int/lit8 v4, v4, 0x40

    invoke-virtual {v0, v3, v4}, Lf1/q;->V(II)I

    goto :goto_0

    :cond_2
    const/4 v3, 0x3

    :goto_0
    and-int/2addr v1, v15

    if-nez v1, :cond_3

    .line 41
    invoke-virtual {v0, v3}, Lf1/q;->A(I)I

    move-result v1

    const/16 v4, 0x80

    or-int/2addr v1, v4

    invoke-virtual {v0, v3, v1}, Lf1/q;->V(II)I

    .line 42
    :cond_3
    iget-object v1, v0, Lf1/l;->a0:Landroid/content/SharedPreferences;

    sget-object v4, Lf1/l;->x0:Ljava/lang/String;

    const/4 v5, -0x1

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/16 v4, 0x1e0

    const/16 v5, 0x320

    packed-switch v1, :pswitch_data_0

    .line 43
    iget-object v1, v0, Lf1/l;->r0:[I

    iget v3, v0, Lf1/l;->l0:I

    aput v2, v1, v3

    .line 44
    iget v2, v0, Lf1/l;->q0:I

    aput v6, v1, v2

    .line 45
    iget v2, v0, Lf1/l;->k0:I

    aput v7, v1, v2

    .line 46
    iget v2, v0, Lf1/l;->p0:I

    aput v8, v1, v2

    .line 47
    iget v2, v0, Lf1/l;->i0:I

    aput v9, v1, v2

    .line 48
    iget v2, v0, Lf1/l;->n0:I

    aput v12, v1, v2

    .line 49
    iget v2, v0, Lf1/l;->j0:I

    aput v10, v1, v2

    .line 50
    iget v2, v0, Lf1/l;->o0:I

    aput v13, v1, v2

    .line 51
    iget v2, v0, Lf1/l;->h0:I

    aput v11, v1, v2

    .line 52
    iget v2, v0, Lf1/l;->m0:I

    aput v14, v1, v2

    goto :goto_1

    .line 53
    :pswitch_0
    iput v5, v0, Lf1/l;->T:I

    .line 54
    iput v4, v0, Lf1/l;->U:I

    const/4 v1, 0x0

    .line 55
    invoke-virtual {v0, v3, v1}, Lf1/q;->V(II)I

    goto :goto_1

    .line 56
    :pswitch_1
    iput v5, v0, Lf1/l;->T:I

    const/16 v1, 0xf0

    .line 57
    iput v1, v0, Lf1/l;->U:I

    goto :goto_1

    .line 58
    :pswitch_2
    iput v4, v0, Lf1/l;->T:I

    const/16 v1, 0x110

    .line 59
    iput v1, v0, Lf1/l;->U:I

    goto :goto_1

    .line 60
    :pswitch_3
    iput v5, v0, Lf1/l;->T:I

    const/16 v1, 0x1f4

    .line 61
    iput v1, v0, Lf1/l;->U:I

    goto :goto_1

    .line 62
    :pswitch_4
    iput v5, v0, Lf1/l;->T:I

    .line 63
    iput v4, v0, Lf1/l;->U:I

    :goto_1
    const/4 v1, 0x1

    .line 64
    iput-boolean v1, v0, Lf1/l;->Q:Z

    return v1

    :cond_4
    :goto_2
    move v1, v3

    .line 65
    iput-boolean v1, v0, Lf1/l;->Q:Z

    .line 66
    iput v7, v0, Lf1/l;->T:I

    .line 67
    iput v8, v0, Lf1/l;->U:I

    const/4 v2, -0x1

    .line 68
    iput v2, v0, Lf1/q;->k:I

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_4
    .end packed-switch
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

.method public final w0(I)Z
    .locals 7

    const/16 v0, 0x2c

    const/4 v1, 0x1

    const/4 v2, 0x2

    .line 1
    invoke-virtual {p0, v0, v1, v2}, Lf1/q;->W(III)I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v4

    .line 2
    :goto_0
    invoke-virtual {p0, v0, v2, p1}, Lf1/q;->W(III)I

    move-result v5

    if-lez v5, :cond_1

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v4

    .line 3
    :goto_1
    invoke-virtual {p0, v0, v2}, Lf1/q;->B(II)I

    move-result v5

    if-eq v5, p1, :cond_2

    const-wide/16 v5, 0x14

    .line 4
    invoke-static {v5, v6}, Lo1/s0;->C(J)V

    .line 5
    invoke-virtual {p0, v0, v2, p1}, Lf1/q;->W(III)I

    :cond_2
    if-eqz v3, :cond_3

    .line 6
    invoke-virtual {p0, v0, v2}, Lf1/q;->B(II)I

    move-result v2

    if-ne v2, p1, :cond_3

    move p1, v1

    goto :goto_2

    :cond_3
    move p1, v4

    .line 7
    :goto_2
    invoke-virtual {p0, v0, v1, v1}, Lf1/q;->W(III)I

    move-result v0

    if-lez v0, :cond_4

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    move v1, v4

    :goto_3
    return v1
.end method
