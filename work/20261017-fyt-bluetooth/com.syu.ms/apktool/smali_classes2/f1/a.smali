.class public Lf1/a;
.super Lf1/q;
.source "SourceFile"


# static fields
.field public static G0:Ljava/lang/String; = "2815S"

.field public static H0:I = 0x7f030069

.field public static I0:I = 0x7f030063

.field public static J0:I = 0x7f030062

.field public static K0:I = 0x7f030064

.field public static L0:I = 0x7f03005f

.field public static M0:I = 0x7f030060

.field public static N0:I = 0x7f030068

.field public static O0:I = 0x7f030067

.field public static P0:I = 0x7f030065

.field public static Q0:I = 0x7f030066


# instance fields
.field public A0:Ljava/lang/Runnable;

.field public B0:Ljava/lang/Runnable;

.field public final C0:Ljava/lang/Runnable;

.field public final D0:Ljava/lang/Runnable;

.field public E0:Ljava/lang/Runnable;

.field public F0:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public P:Landroid/os/Handler;

.field public final Q:Z

.field public final R:Ljava/lang/String;

.field public final S:Ljava/lang/String;

.field public final T:Ljava/lang/String;

.field public final U:I

.field public final V:I

.field public final W:I

.field public X:Z

.field public final Y:I

.field public final Z:I

.field public final a0:I

.field public final b0:I

.field public final c0:Landroid/util/SparseIntArray;

.field public final d0:Landroid/util/SparseIntArray;

.field public final e0:Landroid/util/SparseIntArray;

.field public final f0:Landroid/util/SparseIntArray;

.field public final g0:Landroid/util/SparseIntArray;

.field public final h0:Landroid/util/SparseIntArray;

.field public i0:I

.field public final j0:I

.field public k0:Lo1/l0;

.field public l0:Lo1/l0;

.field public m0:Lo1/l0;

.field public n0:Lo1/l0;

.field public o0:Lo1/l0;

.field public p0:Lo1/l0;

.field public q0:I

.field public r0:I

.field public s0:I

.field public t0:Z

.field public u0:Lq1/b;

.field public v0:Z

.field public final w0:Ljava/lang/Runnable;

.field public final x0:Ljava/lang/Runnable;

.field public y0:Z

.field public z0:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(IILp1/a;ILandroid/os/Handler;)V
    .locals 2

    .line 2
    invoke-direct/range {p0 .. p5}, Lf1/q;-><init>(IILp1/a;ILandroid/os/Handler;)V

    const/4 p2, 0x0

    .line 3
    iput-object p2, p0, Lf1/a;->P:Landroid/os/Handler;

    const/4 p3, 0x1

    .line 4
    iput-boolean p3, p0, Lf1/a;->Q:Z

    const-string p4, "persist.syu.camera360.format"

    .line 5
    iput-object p4, p0, Lf1/a;->R:Ljava/lang/String;

    const-string p4, "persist.syu.ahd360"

    .line 6
    iput-object p4, p0, Lf1/a;->S:Ljava/lang/String;

    const-string p4, "sys.syu.debug.camera"

    .line 7
    iput-object p4, p0, Lf1/a;->T:Ljava/lang/String;

    const/16 p4, 0x10

    .line 8
    iput p4, p0, Lf1/a;->U:I

    const/16 p4, 0x12

    .line 9
    iput p4, p0, Lf1/a;->V:I

    const/16 p4, 0x11

    .line 10
    iput p4, p0, Lf1/a;->W:I

    const/4 p4, 0x0

    .line 11
    iput-boolean p4, p0, Lf1/a;->X:Z

    const/4 p5, 0x3

    .line 12
    iput p5, p0, Lf1/a;->Y:I

    const/4 p5, 0x2

    .line 13
    iput p5, p0, Lf1/a;->Z:I

    .line 14
    iput p4, p0, Lf1/a;->a0:I

    .line 15
    iput p3, p0, Lf1/a;->b0:I

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lf1/a;->c0:Landroid/util/SparseIntArray;

    .line 17
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lf1/a;->d0:Landroid/util/SparseIntArray;

    .line 18
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lf1/a;->e0:Landroid/util/SparseIntArray;

    .line 19
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lf1/a;->f0:Landroid/util/SparseIntArray;

    .line 20
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lf1/a;->g0:Landroid/util/SparseIntArray;

    .line 21
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lf1/a;->h0:Landroid/util/SparseIntArray;

    const/4 v0, 0x4

    .line 22
    iput v0, p0, Lf1/a;->i0:I

    const/16 v1, 0x3e8

    .line 23
    iput v1, p0, Lf1/a;->j0:I

    .line 24
    new-instance v1, Lo1/l0;

    invoke-direct {v1}, Lo1/l0;-><init>()V

    iput-object v1, p0, Lf1/a;->k0:Lo1/l0;

    .line 25
    new-instance v1, Lo1/l0;

    invoke-direct {v1}, Lo1/l0;-><init>()V

    iput-object v1, p0, Lf1/a;->l0:Lo1/l0;

    .line 26
    new-instance v1, Lo1/l0;

    invoke-direct {v1}, Lo1/l0;-><init>()V

    iput-object v1, p0, Lf1/a;->m0:Lo1/l0;

    .line 27
    new-instance v1, Lo1/l0;

    invoke-direct {v1}, Lo1/l0;-><init>()V

    iput-object v1, p0, Lf1/a;->n0:Lo1/l0;

    .line 28
    new-instance v1, Lo1/l0;

    invoke-direct {v1}, Lo1/l0;-><init>()V

    iput-object v1, p0, Lf1/a;->o0:Lo1/l0;

    .line 29
    new-instance v1, Lo1/l0;

    invoke-direct {v1}, Lo1/l0;-><init>()V

    iput-object v1, p0, Lf1/a;->p0:Lo1/l0;

    .line 30
    iput p4, p0, Lf1/a;->q0:I

    .line 31
    iput p4, p0, Lf1/a;->r0:I

    .line 32
    iput p4, p0, Lf1/a;->s0:I

    .line 33
    iput-boolean p4, p0, Lf1/a;->t0:Z

    .line 34
    iput-object p2, p0, Lf1/a;->u0:Lq1/b;

    .line 35
    iput-boolean p4, p0, Lf1/a;->v0:Z

    .line 36
    new-instance p2, Lf1/a$a;

    invoke-direct {p2, p0}, Lf1/a$a;-><init>(Lf1/a;)V

    iput-object p2, p0, Lf1/a;->w0:Ljava/lang/Runnable;

    .line 37
    new-instance p2, Lf1/a$b;

    invoke-direct {p2, p0}, Lf1/a$b;-><init>(Lf1/a;)V

    iput-object p2, p0, Lf1/a;->x0:Ljava/lang/Runnable;

    .line 38
    iput-boolean p4, p0, Lf1/a;->y0:Z

    .line 39
    iput-boolean p4, p0, Lf1/a;->z0:Z

    .line 40
    new-instance p2, Lf1/a$c;

    invoke-direct {p2, p0}, Lf1/a$c;-><init>(Lf1/a;)V

    iput-object p2, p0, Lf1/a;->A0:Ljava/lang/Runnable;

    .line 41
    new-instance p2, Lf1/a$d;

    invoke-direct {p2, p0}, Lf1/a$d;-><init>(Lf1/a;)V

    iput-object p2, p0, Lf1/a;->B0:Ljava/lang/Runnable;

    .line 42
    new-instance p2, Lf1/a$e;

    invoke-direct {p2, p0}, Lf1/a$e;-><init>(Lf1/a;)V

    iput-object p2, p0, Lf1/a;->C0:Ljava/lang/Runnable;

    .line 43
    new-instance p2, Lf1/a$f;

    invoke-direct {p2, p0}, Lf1/a$f;-><init>(Lf1/a;)V

    iput-object p2, p0, Lf1/a;->D0:Ljava/lang/Runnable;

    .line 44
    new-instance p2, Lf1/a$g;

    invoke-direct {p2, p0}, Lf1/a$g;-><init>(Lf1/a;)V

    iput-object p2, p0, Lf1/a;->E0:Ljava/lang/Runnable;

    .line 45
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lf1/a;->F0:Landroid/util/SparseArray;

    const-string p2, "persist.syu.fourcamera2.truck"

    .line 46
    invoke-static {p2, v0}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result p2

    const-string v0, "persist.syu.360_power.independent"

    .line 47
    invoke-static {v0, p4}, Lo1/s0;->l(Ljava/lang/String;Z)Z

    move-result p4

    iput-boolean p4, p0, Lf1/a;->y0:Z

    if-ne p2, p5, :cond_0

    .line 48
    iput p5, p0, Lf1/a;->i0:I

    .line 49
    :cond_0
    iput p1, p0, Lf1/q;->G:I

    const/16 p1, 0xa

    .line 50
    iput p1, p0, Lf1/q;->j:I

    .line 51
    invoke-virtual {p0}, Lf1/a;->Z()I

    move-result p1

    iput p1, p0, Lf1/q;->l:I

    .line 52
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lf1/a;->P:Landroid/os/Handler;

    .line 53
    iget-object p2, p0, Lf1/a;->E0:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 54
    iget-boolean p1, p0, Lf1/a;->y0:Z

    if-nez p1, :cond_1

    .line 55
    sget-object p1, Lu0/c;->m:Lo1/y;

    iget-object p2, p0, Lf1/a;->A0:Ljava/lang/Runnable;

    invoke-virtual {p1, p2, p3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 56
    sget-object p1, Lu0/c;->e:Lo1/y;

    iget-object p2, p0, Lf1/a;->B0:Ljava/lang/Runnable;

    invoke-virtual {p1, p2, p3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 57
    :cond_1
    new-instance p1, Ljava/io/File;

    const-string p2, "/sdcard/test_360"

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    iput-boolean p1, p0, Lf1/a;->t0:Z

    return-void
.end method

.method public constructor <init>(ILp1/a;ILandroid/os/Handler;)V
    .locals 6

    const/16 v1, 0xc

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lf1/a;-><init>(IILp1/a;ILandroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public A(I)I
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lf1/q;->A(I)I

    move-result p1

    return p1
.end method

.method public C(ILy/b;)Z
    .locals 5

    .line 1
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v0

    invoke-virtual {v0}, Lbase/b;->L2()Lo1/x;

    move-result-object v0

    .line 2
    iget-boolean v1, p0, Lf1/a;->v0:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/16 v1, 0x45

    if-ne p1, v1, :cond_1

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   ==========>>>2815S register()  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "  chipId : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lf1/q;->h:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " videoId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lf1/q;->j:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " imageSignal: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lf1/q;->n:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mSignalOn: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lf1/a;->s0:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Signal"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 4
    iget v4, p0, Lf1/a;->s0:I

    aput v4, v3, v2

    iget v2, p0, Lf1/q;->j:I

    aput v2, v3, v1

    invoke-virtual {v0, p2, p1, v3}, Lo1/x;->G(Ly/b;I[I)V

    :cond_0
    return v1

    :cond_1
    return v2
.end method

.method public D()V
    .locals 4

    .line 1
    invoke-super {p0}, Lf1/q;->D()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lf1/a;->s0:I

    .line 3
    iget-boolean v1, p0, Lf1/a;->v0:Z

    if-eqz v1, :cond_0

    .line 4
    invoke-static {}, Lf1/o;->g()Lf1/o;

    move-result-object v1

    iget v2, p0, Lf1/q;->h:I

    iget v3, p0, Lf1/a;->s0:I

    invoke-virtual {v1, v2, v3}, Lf1/o;->E(II)V

    .line 5
    :cond_0
    invoke-virtual {p0, v0}, Lf1/q;->J(Z)V

    .line 6
    sget-object v0, Lf1/a;->G0:Ljava/lang/String;

    const-string v1, "==============================>> 2815 RESET Waiting onUEvent "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget v0, p0, Lf1/q;->h:I

    invoke-static {v0}, Lcom/syu/jni/ToolsJni;->cmd_33_reset_videoIc(I)V

    return-void
.end method

.method public H(Z)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lf1/a;->y0:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lf1/a;->z0:Z

    if-nez v0, :cond_0

    move p1, v1

    .line 2
    :cond_0
    sget-object v0, Lf1/a;->G0:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ========>>  setLoaded()  loaded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "  DataMain.sScreenOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lu0/b;->g:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lf1/q;->s:Landroid/os/Handler;

    iget-object v2, p0, Lf1/a;->D0:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    iget-boolean v0, p0, Lf1/q;->r:Z

    if-eq v0, p1, :cond_2

    .line 5
    iput-boolean p1, p0, Lf1/q;->r:Z

    if-eqz p1, :cond_1

    const-string v0, "1"

    goto :goto_0

    :cond_1
    const-string v0, "0"

    :goto_0
    const-string v2, "syu.imageic.inited"

    .line 6
    invoke-static {v2, v0}, Lo1/s0;->F(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_2

    const/16 v0, 0x89

    const/4 v2, 0x1

    new-array v2, v2, [I

    aput p1, v2, v1

    .line 7
    invoke-static {v0, v2}, Lu0/d;->I3(I[I)V

    :cond_2
    if-eqz p1, :cond_3

    .line 8
    iget-object p1, p0, Lf1/q;->s:Landroid/os/Handler;

    iget-object v0, p0, Lf1/a;->D0:Ljava/lang/Runnable;

    const-wide/16 v1, 0x320

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method

.method public I(Z)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lf1/q;->D:Z

    const-string v1, "    readyToReversing: "

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lf1/a;->G0:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setReadyToReversing:  last readyToReversing  : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lf1/q;->x:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lf1/a;->G0:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " isSupportReversing:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lf1/q;->D:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :goto_0
    iget-boolean v0, p0, Lf1/q;->D:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lf1/q;->x:Z

    if-eq v0, p1, :cond_7

    .line 5
    invoke-virtual {p0}, Lf1/a;->R()V

    .line 6
    iput-boolean p1, p0, Lf1/q;->x:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string v2, "persist.lesc.video.ignore"

    .line 7
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    move v2, v0

    .line 8
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/32 v5, 0xc350

    cmp-long v3, v3, v5

    if-lez v3, :cond_3

    if-eqz v2, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    const/16 v2, 0x7d0

    goto :goto_2

    :cond_3
    const/16 v2, 0xbb8

    :goto_2
    iput v2, p0, Lf1/q;->o:I

    if-nez p1, :cond_6

    .line 9
    sget-object v2, Lf1/a;->G0:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   ==========>>> 003    reversing    :   HandlerMain.backcar(0);  chipid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lf1/q;->h:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    invoke-static {v0}, Lu0/d;->C(I)V

    .line 11
    invoke-virtual {p0}, Lf1/a;->m()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lf1/a;->a()V

    .line 12
    :cond_4
    sget-object v2, Lf1/a;->G0:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EXIT setReadyToReversing:  last readyToReversing  : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lf1/q;->x:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "   recersingBeforeChannel : "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lf1/q;->y:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " chipid : "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lf1/q;->h:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iget p1, p0, Lf1/q;->y:I

    if-eqz p1, :cond_7

    const-wide/16 v1, 0x96

    .line 14
    invoke-static {v1, v2}, Lo1/s0;->C(J)V

    .line 15
    iget-object p1, p0, Lf1/q;->g:Ljava/util/ArrayList;

    iget v1, p0, Lf1/q;->y:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 16
    iget p1, p0, Lf1/q;->y:I

    invoke-virtual {p0, p1}, Lf1/a;->c(I)V

    .line 17
    :cond_5
    invoke-virtual {p0}, Lf1/a;->Q()V

    .line 18
    iput v0, p0, Lf1/q;->y:I

    const-wide/32 v0, 0x7fffffff

    .line 19
    iput-wide v0, p0, Lf1/q;->z:J

    goto :goto_3

    .line 20
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lf1/q;->z:J

    .line 21
    invoke-virtual {p0}, Lf1/a;->S()V

    :cond_7
    :goto_3
    return-void
.end method

.method public M()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf1/q;->r:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lf1/a;->D()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lf1/q;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    .line 4
    :cond_1
    iget-boolean v0, p0, Lf1/q;->r:Z

    return v0
.end method

.method public Q()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf1/q;->q:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-super {p0}, Lf1/q;->Q()V

    return-void
.end method

.method public R()V
    .locals 1

    .line 1
    sget v0, Lu0/b;->n4:I

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Lf1/q;->R()V

    :cond_0
    return-void
.end method

.method public S()V
    .locals 3

    .line 1
    sget-object v0, Lf1/a;->G0:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   ==========>>>syncReservingk()    loaded : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lf1/q;->r:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " readyToReversing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lf1/q;->x:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " chip id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lf1/q;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lf1/q;->G:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean v0, p0, Lf1/q;->D:Z

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-boolean v0, p0, Lf1/q;->r:Z

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lf1/a;->p()V

    .line 5
    :cond_1
    iget-boolean v0, p0, Lf1/q;->x:Z

    if-nez v0, :cond_2

    return-void

    .line 6
    :cond_2
    invoke-virtual {p0}, Lf1/a;->m()Z

    move-result v0

    if-nez v0, :cond_3

    .line 7
    iget v0, p0, Lf1/q;->i:I

    iput v0, p0, Lf1/q;->y:I

    .line 8
    sget-object v0, Lf1/a;->G0:Ljava/lang/String;

    const-string v1, "  closeVideo 000"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {p0}, Lf1/a;->R()V

    .line 10
    invoke-virtual {p0}, Lf1/a;->a()V

    .line 11
    invoke-virtual {p0}, Lf1/q;->E()I

    move-result v0

    invoke-virtual {p0, v0}, Lf1/a;->c(I)V

    .line 12
    :cond_3
    invoke-virtual {p0}, Lf1/a;->Q()V

    return-void
.end method

.method public T(II)V
    .locals 0

    if-nez p1, :cond_0

    const/16 p1, 0xa

    .line 1
    :cond_0
    invoke-super {p0, p1, p2}, Lf1/q;->T(II)V

    return-void
.end method

.method public W(III)I
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lf1/q;->W(III)I

    move-result p1

    return p1
.end method

.method public declared-synchronized X(I)Z
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lf1/q;->v:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return v1

    :cond_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    :try_start_1
    const-string v0, "persist.syu.camera360.format"

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lo1/s0;->F(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v0, "persist.syu.ahd360"

    const/4 v2, 0x1

    .line 4
    invoke-static {v0, v2}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 5
    :goto_0
    sget-object v3, Lf1/a;->G0:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "flushNtscPal  ntcsPal: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "   i2cInvalid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lf1/q;->v:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " ahd : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x10

    if-eqz p1, :cond_10

    if-eq p1, v2, :cond_f

    const/4 v2, 0x2

    if-eq p1, v2, :cond_c

    const/4 v2, 0x3

    if-eq p1, v2, :cond_9

    const/4 v2, 0x6

    if-eq p1, v2, :cond_7

    const/4 v2, 0x7

    if-eq p1, v2, :cond_5

    const/16 v2, 0xd

    if-eq p1, v2, :cond_4

    .line 6
    sget-object v2, Lf1/a;->G0:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "flushNtscPal "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_3

    const-string v0, "AHD_720P_25FPS"

    goto :goto_1

    :cond_3
    const-string v0, "TVI_720P_25FPS"

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    sget v2, Lf1/a;->H0:I

    invoke-static {v0, v2, v3}, Lo1/s0;->A(Landroid/content/Context;II)[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lf1/a;->q([I)Z

    move-result v0

    goto/16 :goto_8

    .line 8
    :cond_4
    sget-object v0, Lf1/a;->G0:Ljava/lang/String;

    const-string v2, "flushNtscPal  NOR_AHD_DVD_NTSC"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    sget v2, Lf1/a;->H0:I

    invoke-static {v0, v2, v3}, Lo1/s0;->A(Landroid/content/Context;II)[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lf1/a;->q([I)Z

    move-result v0

    goto/16 :goto_8

    .line 10
    :cond_5
    sget-object v2, Lf1/a;->G0:Ljava/lang/String;

    const-string v4, "flushNtscPal  TVI_1080P_30FPS"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v2

    if-eqz v0, :cond_6

    sget v0, Lf1/a;->L0:I

    goto :goto_2

    :cond_6
    sget v0, Lf1/a;->M0:I

    :goto_2
    invoke-static {v2, v0, v3}, Lo1/s0;->A(Landroid/content/Context;II)[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lf1/a;->q([I)Z

    move-result v0

    goto/16 :goto_8

    .line 12
    :cond_7
    sget-object v2, Lf1/a;->G0:Ljava/lang/String;

    const-string v4, "flushNtscPal  TVI_1080P_25FPS"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v2

    if-eqz v0, :cond_8

    sget v0, Lf1/a;->N0:I

    goto :goto_3

    :cond_8
    sget v0, Lf1/a;->O0:I

    :goto_3
    invoke-static {v2, v0, v3}, Lo1/s0;->A(Landroid/content/Context;II)[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lf1/a;->q([I)Z

    move-result v0

    goto/16 :goto_8

    .line 14
    :cond_9
    sget-object v2, Lf1/a;->G0:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "flushNtscPal "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_a

    const-string v5, "AHD_720P_30FPS"

    goto :goto_4

    :cond_a
    const-string v5, "TVI_720P_30FPS"

    :goto_4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v2

    if-eqz v0, :cond_b

    sget v0, Lf1/a;->J0:I

    goto :goto_5

    :cond_b
    sget v0, Lf1/a;->K0:I

    :goto_5
    invoke-static {v2, v0, v3}, Lo1/s0;->A(Landroid/content/Context;II)[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lf1/a;->q([I)Z

    move-result v0

    goto :goto_8

    .line 16
    :cond_c
    sget-object v2, Lf1/a;->G0:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "flushNtscPal "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_d

    const-string v5, "AHD_720P_25FPS"

    goto :goto_6

    :cond_d
    const-string v5, "TVI_720P_25FPS"

    :goto_6
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v2

    if-eqz v0, :cond_e

    sget v0, Lf1/a;->H0:I

    goto :goto_7

    :cond_e
    sget v0, Lf1/a;->I0:I

    :goto_7
    invoke-static {v2, v0, v3}, Lo1/s0;->A(Landroid/content/Context;II)[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lf1/a;->q([I)Z

    move-result v0

    goto :goto_8

    .line 18
    :cond_f
    sget-object v0, Lf1/a;->G0:Ljava/lang/String;

    const-string v2, "flushNtscPal  NOR_CVBS_PAL"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    sget v2, Lf1/a;->Q0:I

    invoke-static {v0, v2, v3}, Lo1/s0;->A(Landroid/content/Context;II)[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lf1/a;->q([I)Z

    move-result v0

    goto :goto_8

    .line 20
    :cond_10
    sget-object v0, Lf1/a;->G0:Ljava/lang/String;

    const-string v2, "flushNtscPal  NOR_CVBS_NTSC"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    sget v2, Lf1/a;->P0:I

    invoke-static {v0, v2, v3}, Lo1/s0;->A(Landroid/content/Context;II)[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lf1/a;->q([I)Z

    move-result v0

    :goto_8
    if-eqz v0, :cond_11

    .line 22
    iget-object v2, p0, Lf1/q;->J:Lf1/q$b;

    if-eqz v2, :cond_11

    .line 23
    invoke-interface {v2, p0, p1}, Lf1/q$b;->a(Lf1/q;I)V

    :cond_11
    if-eqz v0, :cond_12

    .line 24
    invoke-virtual {p0, p1}, Lf1/a;->e0(I)V

    .line 25
    iput v1, p0, Lf1/a;->q0:I

    .line 26
    sget-object v1, Lu0/c;->P:Lo1/z;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Lo1/z;->c(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    :cond_12
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public Y(I)I
    .locals 12

    .line 1
    iget-object v0, p0, Lf1/q;->u:Lp1/a;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lf1/q;->n()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    const/16 v1, 0x40

    and-int/lit16 v3, p1, 0xff

    .line 3
    invoke-virtual {p0, v1, v3}, Lf1/q;->V(II)I

    .line 4
    invoke-virtual {p0, v2}, Lf1/a;->A(I)I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 5
    iget-object v3, p0, Lf1/a;->d0:Landroid/util/SparseIntArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 6
    invoke-static {v3, v2}, Lo1/s0;->c(II)I

    move-result v5

    .line 7
    invoke-static {v3, v4}, Lo1/s0;->c(II)I

    move-result v3

    and-int/lit8 v6, v1, 0x70

    const/16 v7, 0x70

    const/4 v8, 0x3

    if-ne v6, v7, :cond_2

    if-ge v5, v8, :cond_1

    add-int/lit8 v5, v5, 0x1

    :cond_1
    if-lez v3, :cond_9

    :goto_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_2
    and-int/lit8 v6, v1, 0x60

    const/16 v7, 0x60

    if-ne v6, v7, :cond_4

    if-ge v3, v8, :cond_3

    add-int/lit8 v3, v3, 0x1

    :cond_3
    if-lez v5, :cond_9

    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_4
    if-gtz v5, :cond_5

    if-lez v3, :cond_9

    :cond_5
    if-ne v5, v8, :cond_6

    move v5, v4

    goto :goto_1

    :cond_6
    if-lez v5, :cond_7

    add-int/lit8 v5, v5, -0x1

    :cond_7
    :goto_1
    if-ne v3, v8, :cond_8

    move v3, v4

    goto :goto_2

    :cond_8
    if-lez v3, :cond_9

    goto :goto_0

    .line 8
    :cond_9
    :goto_2
    iget-object v6, p0, Lf1/a;->d0:Landroid/util/SparseIntArray;

    invoke-static {v5, v3}, Lo1/s0;->x(II)I

    move-result v7

    invoke-virtual {v6, p1, v7}, Landroid/util/SparseIntArray;->put(II)V

    if-lt v5, v8, :cond_a

    if-gtz v3, :cond_a

    move v6, v2

    goto :goto_3

    :cond_a
    if-lt v3, v8, :cond_b

    if-gtz v5, :cond_b

    const/4 v6, -0x1

    goto :goto_3

    :cond_b
    move v6, v4

    :goto_3
    const/4 v7, 0x0

    const/4 v9, 0x2

    if-eqz p1, :cond_f

    if-eq p1, v2, :cond_e

    if-eq p1, v9, :cond_d

    if-eq p1, v8, :cond_c

    goto :goto_4

    .line 9
    :cond_c
    iget-object v7, p0, Lf1/a;->p0:Lo1/l0;

    goto :goto_4

    .line 10
    :cond_d
    iget-object v7, p0, Lf1/a;->o0:Lo1/l0;

    goto :goto_4

    .line 11
    :cond_e
    iget-object v7, p0, Lf1/a;->n0:Lo1/l0;

    goto :goto_4

    .line 12
    :cond_f
    iget-object v7, p0, Lf1/a;->m0:Lo1/l0;

    :goto_4
    if-eqz v7, :cond_10

    const/16 v10, 0x1f4

    .line 13
    invoke-virtual {v7, v10}, Lo1/l0;->c(I)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 14
    invoke-virtual {v7}, Lo1/l0;->a()V

    .line 15
    sget-object v7, Lf1/a;->G0:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  hasSignalOfCameraAt()   index :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " imagType :  "

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lf1/q;->i:I

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " last  imagFormat :  "

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lf1/q;->k:I

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " tmp signalOn : "

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lf1/a;->X:Z

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " colorCnt :  "

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " blackWhiteCnt : "

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "    0x01 REG : %03X   0x03 REG : %03X"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {p0, v8}, Lf1/a;->A(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " loaded:"

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lf1/q;->r:Z

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :cond_10
    monitor-exit v0

    return v6

    :catchall_0
    move-exception p1

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final Z()I
    .locals 3

    const-string v0, "persist.syu.camera360.format"

    const/4 v1, 0x2

    .line 1
    invoke-static {v0, v1}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lf1/q;->k:I

    if-eq v0, v1, :cond_0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 2
    iput v1, p0, Lf1/q;->k:I

    .line 3
    :cond_0
    iget v0, p0, Lf1/q;->k:I

    return v0
.end method

.method public a()V
    .locals 1

    .line 1
    invoke-super {p0}, Lf1/q;->a()V

    const/16 v0, 0xa

    .line 2
    iput v0, p0, Lf1/q;->i:I

    return-void
.end method

.method public a0(Z)V
    .locals 4

    .line 1
    sget v0, Lu0/b;->n4:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 2
    iput v1, p0, Lf1/a;->q0:I

    .line 3
    iput v1, p0, Lf1/a;->r0:I

    return-void

    .line 4
    :cond_0
    sget v0, Lu0/b;->f:I

    if-ne v0, v2, :cond_6

    sget v0, Lu0/b;->a0:I

    if-eq v0, v2, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    iget-object v0, p0, Lf1/a;->k0:Lo1/l0;

    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Lo1/l0;->c(I)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lf1/a;->k0:Lo1/l0;

    invoke-virtual {v0}, Lo1/l0;->a()V

    if-nez p1, :cond_4

    .line 7
    iget p1, p0, Lf1/a;->q0:I

    add-int/2addr p1, v2

    iput p1, p0, Lf1/a;->q0:I

    const/4 v0, 0x5

    if-lt p1, v0, :cond_5

    .line 8
    invoke-virtual {p0}, Lf1/a;->D()V

    .line 9
    iget p1, p0, Lf1/a;->r0:I

    const/4 v0, 0x2

    if-ge p1, v0, :cond_3

    add-int/2addr p1, v2

    .line 10
    iput p1, p0, Lf1/a;->r0:I

    .line 11
    :cond_3
    iput v1, p0, Lf1/a;->q0:I

    goto :goto_0

    .line 12
    :cond_4
    iput v1, p0, Lf1/a;->q0:I

    :cond_5
    :goto_0
    return-void

    :cond_6
    :goto_1
    const/4 p1, 0x3

    .line 13
    iput p1, p0, Lf1/a;->q0:I

    .line 14
    iput v1, p0, Lf1/a;->r0:I

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    invoke-super {p0}, Lf1/q;->b()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lf1/a;->q0:I

    .line 3
    iput v0, p0, Lf1/a;->r0:I

    return-void
.end method

.method public b0(I)I
    .locals 12

    .line 1
    invoke-virtual {p0}, Lf1/q;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p1, p0, Lf1/q;->k:I

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lf1/q;->u:Lp1/a;

    monitor-enter v0

    const/16 v1, 0x40

    and-int/lit16 v2, p1, 0xff

    .line 3
    :try_start_0
    invoke-virtual {p0, v1, v2}, Lf1/q;->V(II)I

    const/4 v1, 0x3

    .line 4
    invoke-virtual {p0, v1}, Lf1/a;->A(I)I

    move-result v2

    and-int/lit8 v3, v2, 0x7

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, -0x1

    const/4 v7, 0x1

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    move v1, v6

    goto :goto_0

    .line 5
    :pswitch_1
    invoke-virtual {p0, v7}, Lf1/a;->A(I)I

    move-result v1

    shr-int/2addr v1, v5

    and-int/2addr v1, v7

    if-nez v1, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v7

    goto :goto_0

    :pswitch_2
    move v1, v5

    goto :goto_0

    :pswitch_3
    const/4 v1, 0x6

    goto :goto_0

    :pswitch_4
    const/4 v1, 0x7

    goto :goto_0

    :pswitch_5
    const/4 v1, 0x4

    goto :goto_0

    :pswitch_6
    const/4 v1, 0x5

    .line 6
    :goto_0
    :pswitch_7
    invoke-virtual {p0, p1, v1}, Lf1/a;->c0(II)I

    move-result v1

    .line 7
    iget-object v8, p0, Lf1/a;->f0:Landroid/util/SparseIntArray;

    invoke-virtual {v8, p1, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    .line 8
    iget-object v8, p0, Lf1/a;->l0:Lo1/l0;

    const/16 v9, 0x1f4

    invoke-virtual {v8, v9}, Lo1/l0;->c(I)Z

    move-result v8

    if-eqz v8, :cond_2

    sget-object v8, Lf1/a;->G0:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "index: %02X ntcsPal : %02X"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v5, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v7

    invoke-static {v10, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  flag = "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " format : "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eq v1, v6, :cond_3

    .line 9
    iget-object v2, p0, Lf1/a;->f0:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 10
    :cond_3
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized c(I)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Lf1/q;->c(I)V

    .line 2
    sget-object v0, Lf1/a;->G0:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==============>>  openVideo  channel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget v0, p0, Lf1/q;->i:I

    if-eq v0, p1, :cond_0

    .line 4
    iput p1, p0, Lf1/q;->i:I

    .line 5
    :cond_0
    iget-boolean p1, p0, Lf1/q;->r:Z

    if-nez p1, :cond_1

    .line 6
    invoke-virtual {p0}, Lf1/a;->p()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c0(II)I
    .locals 5

    .line 1
    iget-object v0, p0, Lf1/a;->f0:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 2
    iget-object v2, p0, Lf1/a;->h0:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 3
    iget-object v2, p0, Lf1/a;->g0:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    const/4 v4, 0x1

    if-eq v0, p2, :cond_1

    if-ne p2, v1, :cond_0

    const/4 v0, 0x3

    if-ge v2, v0, :cond_1

    add-int/lit8 v3, v2, 0x1

    .line 4
    iget p2, p0, Lf1/q;->k:I

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lf1/a;->h0:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    move p2, v0

    move v3, v4

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lf1/a;->g0:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, v3}, Landroid/util/SparseIntArray;->put(II)V

    return p2
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf1/q;->s:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lf1/a;->x0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    :cond_0
    invoke-super {p0}, Lf1/q;->d()V

    return-void
.end method

.method public d0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lf1/a;->v0:Z

    return-void
.end method

.method public final e0(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lf1/q;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf1/q$c;

    if-eqz p1, :cond_3

    .line 2
    invoke-virtual {p1}, Lf1/q$c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lf1/q;->z()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc

    .line 4
    invoke-static {v1}, Lg/f;->n(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    iget v0, p0, Lf1/q;->h:I

    if-nez v0, :cond_1

    const-string v0, "sys.fyt.main.vc_"

    goto :goto_0

    :cond_1
    const-string v0, "sys.fyt.sub.vc_"

    .line 6
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "a.w"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lf1/q$c;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lo1/s0;->F(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "a.h"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lf1/q$c;->b:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lo1/s0;->F(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "b.w"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lf1/q$c;->a:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lo1/s0;->F(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "b.h"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lf1/q$c;->b:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lo1/s0;->F(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "c.w"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lf1/q$c;->a:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lo1/s0;->F(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "c.h"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lf1/q$c;->b:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lo1/s0;->F(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "d.w"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lf1/q$c;->a:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lo1/s0;->F(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "d.h"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget p1, p1, Lf1/q$c;->b:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lo1/s0;->F(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public f0(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lf1/q;->u:Lp1/a;

    monitor-enter v0

    const/16 v1, 0x40

    and-int/lit16 p1, p1, 0xff

    .line 2
    :try_start_0
    invoke-virtual {p0, v1, p1}, Lf1/q;->V(II)I

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lf1/a;->A(I)I

    move-result v1

    shr-int/lit8 v1, v1, 0x7

    and-int/2addr v1, p1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public h(IIII)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lf1/q;->n()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lf1/q;->v:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lf1/q;->r:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lf1/q;->u:Lp1/a;

    monitor-enter v0

    const/16 v1, 0x40

    and-int/lit16 p1, p1, 0xff

    .line 3
    :try_start_0
    invoke-virtual {p0, v1, p1}, Lf1/q;->V(II)I

    const/16 p1, 0x10

    and-int/lit16 p2, p2, 0xff

    .line 4
    invoke-virtual {p0, p1, p2}, Lf1/q;->V(II)I

    const/16 p1, 0x11

    and-int/lit16 p2, p4, 0xff

    .line 5
    invoke-virtual {p0, p1, p2}, Lf1/q;->V(II)I

    const/16 p1, 0x12

    and-int/lit16 p2, p3, 0xff

    .line 6
    invoke-virtual {p0, p1, p2}, Lf1/q;->V(II)I

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public k()I
    .locals 15

    .line 1
    iget-boolean v0, p0, Lf1/q;->r:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    sget v0, Lu0/b;->n4:I

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lf1/a;->R()V

    return v1

    :cond_1
    const-string v0, "sys.syu.debug.camera"

    .line 4
    invoke-static {v0, v1}, Lo1/s0;->l(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x2

    .line 5
    invoke-virtual {p0, v2}, Lf1/a;->f0(I)Z

    move-result v3

    .line 6
    invoke-virtual {p0, v2}, Lf1/a;->Y(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    move v6, v5

    goto :goto_0

    :cond_2
    move v6, v1

    :goto_0
    const/4 v7, 0x3

    .line 7
    invoke-virtual {p0, v7}, Lf1/a;->f0(I)Z

    move-result v8

    .line 8
    invoke-virtual {p0, v7}, Lf1/a;->Y(I)I

    move-result v9

    if-ne v9, v5, :cond_3

    or-int/lit8 v6, v6, 0x2

    :cond_3
    if-eqz v8, :cond_4

    add-int/lit8 v8, v3, 0x1

    goto :goto_1

    :cond_4
    move v8, v3

    .line 9
    :goto_1
    iget v10, p0, Lf1/a;->i0:I

    if-le v10, v2, :cond_8

    .line 10
    invoke-virtual {p0, v5}, Lf1/a;->f0(I)Z

    move-result v10

    .line 11
    invoke-virtual {p0, v5}, Lf1/a;->Y(I)I

    move-result v11

    if-ne v11, v5, :cond_5

    or-int/lit8 v6, v6, 0x4

    :cond_5
    if-eqz v10, :cond_6

    add-int/lit8 v8, v8, 0x1

    .line 12
    :cond_6
    invoke-virtual {p0, v1}, Lf1/a;->f0(I)Z

    move-result v10

    .line 13
    invoke-virtual {p0, v1}, Lf1/a;->Y(I)I

    move-result v12

    if-ne v12, v5, :cond_7

    or-int/lit8 v6, v6, 0x8

    :cond_7
    if-eqz v10, :cond_9

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_8
    move v11, v1

    move v12, v11

    .line 14
    :cond_9
    :goto_2
    iget v10, p0, Lf1/a;->i0:I

    div-int/2addr v10, v2

    if-lt v8, v10, :cond_a

    move v8, v5

    goto :goto_3

    :cond_a
    move v8, v1

    :goto_3
    iput-boolean v8, p0, Lf1/a;->X:Z

    if-eqz v0, :cond_b

    .line 15
    iput-boolean v3, p0, Lf1/a;->X:Z

    move v6, v5

    .line 16
    :cond_b
    iget-boolean v3, p0, Lf1/a;->X:Z

    const/16 v8, 0x1f4

    if-eqz v3, :cond_f

    .line 17
    invoke-virtual {p0, v2}, Lf1/a;->b0(I)I

    move-result v3

    .line 18
    invoke-virtual {p0, v7}, Lf1/a;->b0(I)I

    move-result v7

    const/4 v10, -0x1

    if-ne v7, v3, :cond_c

    move v7, v3

    goto :goto_4

    :cond_c
    move v7, v10

    :goto_4
    if-eqz v0, :cond_d

    goto :goto_5

    :cond_d
    move v3, v7

    .line 19
    :goto_5
    iget-object v7, p0, Lf1/a;->l0:Lo1/l0;

    invoke-virtual {v7, v8}, Lo1/l0;->c(I)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 20
    sget-object v7, Lf1/a;->G0:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " checkSignal Signal signalOn :  "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v14, p0, Lf1/a;->X:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, " imagFormat :  "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, p0, Lf1/q;->k:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " format :  "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    if-eq v3, v10, :cond_f

    .line 21
    iget v7, p0, Lf1/q;->k:I

    if-eq v7, v3, :cond_f

    .line 22
    iput v3, p0, Lf1/q;->k:I

    .line 23
    iput v1, p0, Lf1/a;->r0:I

    .line 24
    sget-object v7, Lf1/a;->G0:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " record  channel :  "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, p0, Lf1/q;->i:I

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " TO  imagFormat :  "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, p0, Lf1/q;->k:I

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    sget-object v7, Lf1/a;->G0:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  CHECK SIGNAL  SURE : imagType :  "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, p0, Lf1/q;->i:I

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " last     imagFormat :  "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, p0, Lf1/q;->k:I

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "   imagFormat:"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " signalOn : "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v13, p0, Lf1/a;->X:Z

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, "     loaded  : "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v13, p0, Lf1/q;->r:Z

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-virtual {p0, v3}, Lf1/a;->X(I)Z

    :cond_f
    if-ne v4, v5, :cond_11

    if-ne v9, v5, :cond_11

    .line 27
    iget v3, p0, Lf1/a;->i0:I

    if-eq v3, v2, :cond_10

    if-ne v11, v5, :cond_11

    if-ne v12, v5, :cond_11

    :cond_10
    move v3, v5

    goto :goto_6

    :cond_11
    move v3, v1

    .line 28
    :goto_6
    iput v6, p0, Lf1/a;->s0:I

    if-eqz v0, :cond_13

    if-ne v4, v5, :cond_12

    move v3, v5

    goto :goto_7

    :cond_12
    move v3, v1

    :cond_13
    :goto_7
    if-eqz v3, :cond_15

    .line 29
    iget-object v0, p0, Lf1/a;->u0:Lq1/b;

    if-nez v0, :cond_14

    .line 30
    new-instance v0, Lq1/b;

    const/16 v1, 0x78

    invoke-direct {v0, v5, v1}, Lq1/b;-><init>(II)V

    iput-object v0, p0, Lf1/a;->u0:Lq1/b;

    goto :goto_8

    .line 31
    :cond_14
    invoke-virtual {v0, v5}, Lq1/b;->b(I)V

    goto :goto_8

    .line 32
    :cond_15
    iget-object v0, p0, Lf1/a;->u0:Lq1/b;

    if-eqz v0, :cond_16

    .line 33
    invoke-virtual {v0, v1}, Lq1/b;->g(I)I

    .line 34
    iget v0, p0, Lf1/a;->r0:I

    if-lt v0, v2, :cond_16

    iget-object v0, p0, Lf1/a;->u0:Lq1/b;

    invoke-virtual {v0}, Lq1/b;->e()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 35
    iput v5, p0, Lf1/a;->r0:I

    .line 36
    sget-object v0, Lf1/a;->G0:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "===============>> Fix Signal Error !! "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lf1/a;->u0:Lq1/b;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_16
    :goto_8
    iget-boolean v0, p0, Lf1/a;->t0:Z

    if-nez v0, :cond_17

    iget v0, p0, Lf1/a;->r0:I

    if-ge v0, v2, :cond_18

    .line 38
    :cond_17
    invoke-virtual {p0, v3}, Lf1/a;->a0(Z)V

    .line 39
    :cond_18
    iget-object v0, p0, Lf1/a;->l0:Lo1/l0;

    invoke-virtual {v0, v8}, Lo1/l0;->c(I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 40
    iget-object v0, p0, Lf1/a;->l0:Lo1/l0;

    invoke-virtual {v0}, Lo1/l0;->a()V

    .line 41
    sget-object v0, Lf1/a;->G0:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " checkSignal hasSignal front left right rear :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "   hasSignal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " fixCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lf1/a;->r0:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " signalFlag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " imagFormat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lf1/q;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    return v3
.end method

.method public m()Z
    .locals 3

    .line 1
    sget-object v0, Lf1/a;->G0:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   ==========>>> reverseId() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lf1/q;->E()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " videoId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lf1/q;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " chipid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lf1/q;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lf1/q;->E()I

    move-result v0

    iget v1, p0, Lf1/q;->j:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public p()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lf1/q;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lf1/q;->n:Z

    .line 3
    invoke-virtual {p0}, Lf1/a;->Z()I

    .line 4
    iget v1, p0, Lf1/q;->k:I

    invoke-virtual {p0, v1}, Lf1/a;->X(I)Z

    move-result v1

    invoke-virtual {p0, v1}, Lf1/a;->H(Z)V

    .line 5
    iget-boolean v1, p0, Lf1/q;->r:Z

    if-nez v1, :cond_1

    .line 6
    sget-object v0, Lf1/a;->G0:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ========>>  flushParams  error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lf1/q;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " loaded:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lf1/q;->r:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lf1/q;->k:I

    return-void

    .line 8
    :cond_1
    invoke-virtual {p0}, Lf1/a;->m()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lf1/q;->i:I

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {p0}, Lf1/a;->a()V

    .line 10
    invoke-virtual {p0, v1}, Lf1/a;->c(I)V

    .line 11
    :cond_2
    invoke-virtual {p0}, Lf1/a;->S()V

    .line 12
    iget-boolean v1, p0, Lf1/q;->r:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lf1/q;->x:Z

    if-nez v1, :cond_3

    sget v1, Lu0/b;->n4:I

    if-ne v1, v0, :cond_3

    .line 13
    invoke-virtual {p0}, Lf1/a;->Q()V

    .line 14
    sget-object v0, Lf1/a;->G0:Ljava/lang/String;

    const-string v1, " ========>>  flushParams  check Start"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    iget-object v0, p0, Lf1/q;->s:Landroid/os/Handler;

    iget-object v1, p0, Lf1/a;->w0:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method

.method public q([I)Z
    .locals 14

    if-eqz p1, :cond_6

    .line 1
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_6

    .line 2
    sget-object v0, Lf1/a;->G0:Ljava/lang/String;

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

    .line 6
    sget-object v4, Lf1/a;->G0:Ljava/lang/String;

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

    .line 10
    :goto_1
    sget-object v10, Lf1/a;->G0:Ljava/lang/String;

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
    if-eqz v6, :cond_5

    const/16 v1, 0x40

    const/4 v3, 0x3

    .line 11
    invoke-virtual {p0, v1, v3}, Lf1/q;->V(II)I

    move-result v1

    if-ltz v1, :cond_4

    move v2, v4

    :cond_4
    move v6, v2

    .line 12
    :cond_5
    sget-object v1, Lf1/a;->G0:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "flushParams  END  data  length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " result:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " imagFormat: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lf1/q;->k:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    monitor-exit v0

    return v6

    :catchall_0
    move-exception p1

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 15
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "flushParams  data is NULL  or  data  size < 2 !!!! "

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public run()V
    .locals 14

    .line 1
    iget-object v0, p0, Lf1/q;->s:Landroid/os/Handler;

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lf1/q;->q:Z

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 2
    :cond_0
    iget-object v0, p0, Lf1/q;->s:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    invoke-virtual {p0}, Lf1/a;->k()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    .line 4
    :goto_0
    invoke-virtual {p0}, Lf1/q;->n()Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v4, v1

    goto :goto_2

    :cond_3
    :goto_1
    move v4, v2

    :goto_2
    iput-boolean v4, p0, Lf1/q;->n:Z

    const-string v5, " chipid : "

    const-string v6, "   recersingBeforeChannel : "

    const-string v7, "    readyToReversing: "

    const-wide v8, 0x7fffffffffffffffL

    if-eqz v4, :cond_4

    .line 5
    iget-boolean v4, p0, Lf1/q;->D:Z

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lf1/q;->x:Z

    if-eqz v4, :cond_4

    iget-wide v10, p0, Lf1/q;->z:J

    cmp-long v4, v10, v8

    if-eqz v4, :cond_4

    if-eqz v3, :cond_4

    .line 6
    sget-object v3, Lf1/a;->G0:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  001  ==========>>>    reversing    :   HandlerMain.backcar(1);  chipid : "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Lf1/q;->h:I

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-static {v2}, Lu0/d;->C(I)V

    .line 8
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v3

    sget-object v4, Lutil/log/LogType;->f:Lutil/log/LogType;

    const-string v10, "ENTER REVERSING  ===  HAS SIGNAL"

    invoke-virtual {v3, v4, v10}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 9
    sget-object v3, Lf1/a;->G0:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ENTER REVERSING HAS SIGNAL setReadyToReversing:  last readyToReversing  : "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, p0, Lf1/q;->x:Z

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, p0, Lf1/q;->x:Z

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Lf1/q;->y:I

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Lf1/q;->h:I

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iput-wide v8, p0, Lf1/q;->z:J

    .line 11
    :cond_4
    iget-boolean v3, p0, Lf1/q;->D:Z

    const/4 v4, -0x1

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lf1/q;->x:Z

    if-eqz v3, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iget-wide v12, p0, Lf1/q;->z:J

    sub-long/2addr v10, v12

    iget v3, p0, Lf1/q;->o:I

    int-to-long v12, v3

    cmp-long v3, v10, v12

    if-ltz v3, :cond_5

    .line 12
    iput v4, p0, Lf1/q;->k:I

    .line 13
    sget-object v3, Lf1/a;->G0:Ljava/lang/String;

    const-string v10, "  imagFormat 002"

    invoke-static {v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    invoke-virtual {p0}, Lf1/a;->p()V

    .line 15
    invoke-virtual {p0}, Lf1/a;->Q()V

    .line 16
    sget-object v3, Lf1/a;->G0:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "   ==========>>>002    reversing    :   HandlerMain.backcar(1);  chipid : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, p0, Lf1/q;->h:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-static {v2}, Lu0/d;->C(I)V

    .line 18
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v3

    sget-object v10, Lutil/log/LogType;->f:Lutil/log/LogType;

    const-string v11, "ENTER REVERSING  ===  CHECK TIMEOUT"

    invoke-virtual {v3, v10, v11}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 19
    sget-object v3, Lf1/a;->G0:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ENTER REVERSING CHECK TIMEOUT setReadyToReversing:  last readyToReversing  : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v11, p0, Lf1/q;->x:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lf1/q;->x:Z

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lf1/q;->y:I

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lf1/q;->h:I

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iput-wide v8, p0, Lf1/q;->z:J

    .line 21
    :cond_5
    invoke-static {}, Lf1/o;->g()Lf1/o;

    move-result-object v3

    iget v5, p0, Lf1/q;->h:I

    iget-boolean v6, p0, Lf1/q;->q:Z

    if-eqz v6, :cond_6

    iget v4, p0, Lf1/q;->k:I

    :cond_6
    invoke-virtual {v3, v5, v4}, Lf1/o;->D(II)V

    .line 22
    iget-boolean v3, p0, Lf1/a;->v0:Z

    if-nez v3, :cond_9

    .line 23
    invoke-static {}, Lf1/o;->g()Lf1/o;

    move-result-object v3

    iget v4, p0, Lf1/q;->h:I

    iget-boolean v5, p0, Lf1/q;->q:Z

    if-eqz v5, :cond_8

    if-nez v0, :cond_7

    goto :goto_3

    :cond_7
    move v1, v2

    :cond_8
    :goto_3
    invoke-virtual {v3, v4, v1}, Lf1/o;->E(II)V

    goto :goto_5

    .line 24
    :cond_9
    invoke-static {}, Lf1/o;->g()Lf1/o;

    move-result-object v0

    iget v2, p0, Lf1/q;->h:I

    iget-boolean v3, p0, Lf1/q;->q:Z

    if-nez v3, :cond_a

    goto :goto_4

    :cond_a
    iget v1, p0, Lf1/a;->s0:I

    :goto_4
    invoke-virtual {v0, v2, v1}, Lf1/o;->E(II)V

    .line 25
    :goto_5
    iget-boolean v0, p0, Lf1/q;->q:Z

    if-eqz v0, :cond_b

    .line 26
    iget-object v0, p0, Lf1/q;->s:Landroid/os/Handler;

    iget v1, p0, Lf1/q;->c:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_b
    :goto_6
    return-void
.end method
