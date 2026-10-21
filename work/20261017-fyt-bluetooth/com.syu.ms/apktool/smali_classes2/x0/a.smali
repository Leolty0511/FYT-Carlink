.class public Lx0/a;
.super Lx0/d;
.source "SourceFile"


# static fields
.field public static I0:I

.field public static J0:I

.field public static K0:I

.field public static L0:[I


# instance fields
.field public A:[F

.field public A0:F

.field public B:[F

.field public final B0:[F

.field public C:[F

.field public final C0:F

.field public D:[F

.field public final D0:[F

.field public E:[F

.field public E0:I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation
.end field

.field public F:[I

.field public F0:[F

.field public G:[I

.field public G0:[I

.field public H:I

.field public H0:F

.field public I:I

.field public J:I

.field public K:I

.field public L:I

.field public M:I

.field public N:I

.field public O:Ljava/lang/Runnable;

.field public P:Ljava/lang/Runnable;

.field public Q:Ljava/lang/Runnable;

.field public R:Landroid/os/Handler;

.field public S:Ljava/lang/Runnable;

.field public T:[I

.field public U:[F

.field public V:[F

.field public W:[F

.field public X:I

.field public final Y:I

.field public Z:[F

.field public a0:[I

.field public b0:[F

.field public final c:Z

.field public c0:[[F

.field public final d:Ljava/lang/String;

.field public d0:F

.field public e:Ljava/text/DecimalFormat;

.field public e0:I

.field public f:Lo1/n;

.field public f0:I

.field public g:Ljava/lang/String;

.field public g0:[I

.field public h:I

.field public h0:[F

.field public i:Z

.field public i0:[F

.field public j:Landroid/os/Looper;

.field public j0:[[F

.field public k:Landroid/os/Handler;

.field public k0:[[F

.field public l:Z

.field public l0:[F

.field public final m:I

.field public m0:[[F

.field public n:I

.field public n0:[I

.field public o:[[F

.field public o0:[I

.field public p:[[F

.field public p0:[[F

.field public q:[Ljava/math/BigDecimal;

.field public q0:[I

.field public r:[I

.field public r0:[F

.field public s:[I

.field public s0:[F

.field public t:[F

.field public t0:I

.field public u:[F

.field public u0:F

.field public v:[F

.field public v0:F

.field public w:[F

.field public w0:F

.field public x:[F

.field public x0:F

.field public y:[F

.field public y0:F

.field public z:[[F

.field public z0:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lx0/a;->L0:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x28
        0x64
        0x10e
        0x21c
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 8

    .line 1
    const-class p2, F

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lx0/d;-><init>(I)V

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, p0, Lx0/a;->c:Z

    const-string v2, "Gyro"

    .line 3
    iput-object v2, p0, Lx0/a;->d:Ljava/lang/String;

    .line 4
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "#0.00"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lx0/a;->e:Ljava/text/DecimalFormat;

    const/4 v2, 0x0

    .line 5
    iput-object v2, p0, Lx0/a;->f:Lo1/n;

    const-string v3, ""

    .line 6
    iput-object v3, p0, Lx0/a;->g:Ljava/lang/String;

    const/16 v3, 0x6b

    .line 7
    iput v3, p0, Lx0/a;->h:I

    .line 8
    iput-boolean v1, p0, Lx0/a;->i:Z

    .line 9
    iput-object v2, p0, Lx0/a;->j:Landroid/os/Looper;

    .line 10
    iput-object v2, p0, Lx0/a;->k:Landroid/os/Handler;

    .line 11
    iput-boolean v1, p0, Lx0/a;->l:Z

    const/16 v3, 0xf

    .line 12
    iput v3, p0, Lx0/a;->m:I

    .line 13
    iput v3, p0, Lx0/a;->n:I

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 14
    fill-array-data v4, :array_0

    invoke-static {p2, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[F

    iput-object v4, p0, Lx0/a;->o:[[F

    new-array v4, v3, [I

    .line 15
    fill-array-data v4, :array_1

    invoke-static {p2, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[F

    iput-object v4, p0, Lx0/a;->p:[[F

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/math/BigDecimal;

    .line 16
    iput-object v5, p0, Lx0/a;->q:[Ljava/math/BigDecimal;

    new-array v5, v4, [I

    .line 17
    fill-array-data v5, :array_2

    iput-object v5, p0, Lx0/a;->r:[I

    new-array v5, v4, [I

    .line 18
    fill-array-data v5, :array_3

    iput-object v5, p0, Lx0/a;->s:[I

    new-array v5, v4, [F

    .line 19
    fill-array-data v5, :array_4

    iput-object v5, p0, Lx0/a;->t:[F

    new-array v5, v4, [F

    .line 20
    fill-array-data v5, :array_5

    iput-object v5, p0, Lx0/a;->u:[F

    new-array v5, v4, [F

    .line 21
    fill-array-data v5, :array_6

    iput-object v5, p0, Lx0/a;->v:[F

    new-array v5, v4, [F

    .line 22
    fill-array-data v5, :array_7

    iput-object v5, p0, Lx0/a;->w:[F

    const/4 v5, 0x5

    new-array v6, v5, [F

    .line 23
    iput-object v6, p0, Lx0/a;->x:[F

    new-array v6, v5, [F

    .line 24
    iput-object v6, p0, Lx0/a;->y:[F

    new-array v6, v3, [I

    .line 25
    fill-array-data v6, :array_8

    invoke-static {p2, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[F

    iput-object v6, p0, Lx0/a;->z:[[F

    new-array v6, v5, [F

    .line 26
    iput-object v6, p0, Lx0/a;->A:[F

    new-array v5, v5, [F

    .line 27
    iput-object v5, p0, Lx0/a;->B:[F

    new-array v5, v4, [F

    .line 28
    iput-object v5, p0, Lx0/a;->C:[F

    new-array v5, v4, [F

    .line 29
    iput-object v5, p0, Lx0/a;->D:[F

    new-array v5, v4, [F

    .line 30
    iput-object v5, p0, Lx0/a;->E:[F

    const/4 v5, 0x4

    new-array v6, v5, [I

    .line 31
    fill-array-data v6, :array_9

    iput-object v6, p0, Lx0/a;->F:[I

    new-array v6, v5, [I

    .line 32
    iput-object v6, p0, Lx0/a;->G:[I

    const/16 v6, 0xa

    .line 33
    iput v6, p0, Lx0/a;->H:I

    const/16 v6, 0x28

    .line 34
    iput v6, p0, Lx0/a;->I:I

    .line 35
    iput v1, p0, Lx0/a;->J:I

    .line 36
    iput v1, p0, Lx0/a;->K:I

    .line 37
    iput v1, p0, Lx0/a;->L:I

    .line 38
    iput v1, p0, Lx0/a;->M:I

    .line 39
    iput v0, p0, Lx0/a;->N:I

    .line 40
    new-instance v6, Lx0/a$a;

    invoke-direct {v6, p0}, Lx0/a$a;-><init>(Lx0/a;)V

    iput-object v6, p0, Lx0/a;->O:Ljava/lang/Runnable;

    .line 41
    new-instance v6, Lx0/a$b;

    invoke-direct {v6, p0}, Lx0/a$b;-><init>(Lx0/a;)V

    iput-object v6, p0, Lx0/a;->P:Ljava/lang/Runnable;

    .line 42
    new-instance v6, Lx0/a$c;

    invoke-direct {v6, p0}, Lx0/a$c;-><init>(Lx0/a;)V

    iput-object v6, p0, Lx0/a;->Q:Ljava/lang/Runnable;

    .line 43
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    iput-object v6, p0, Lx0/a;->R:Landroid/os/Handler;

    .line 44
    new-instance v6, Lx0/a$d;

    invoke-direct {v6, p0}, Lx0/a$d;-><init>(Lx0/a;)V

    iput-object v6, p0, Lx0/a;->S:Ljava/lang/Runnable;

    new-array v6, v4, [I

    .line 45
    iput-object v6, p0, Lx0/a;->T:[I

    const/4 v6, 0x6

    new-array v7, v6, [F

    .line 46
    iput-object v7, p0, Lx0/a;->U:[F

    new-array v7, v6, [F

    .line 47
    iput-object v7, p0, Lx0/a;->V:[F

    new-array v6, v6, [F

    .line 48
    iput-object v6, p0, Lx0/a;->W:[F

    .line 49
    iput v1, p0, Lx0/a;->X:I

    .line 50
    iput v0, p0, Lx0/a;->Y:I

    new-array v0, v4, [F

    .line 51
    iput-object v0, p0, Lx0/a;->Z:[F

    new-array v0, v4, [I

    .line 52
    fill-array-data v0, :array_a

    iput-object v0, p0, Lx0/a;->a0:[I

    new-array v0, v4, [F

    .line 53
    iput-object v0, p0, Lx0/a;->b0:[F

    new-array v0, v3, [I

    .line 54
    fill-array-data v0, :array_b

    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lx0/a;->c0:[[F

    const v0, 0x3f4ccccd    # 0.8f

    .line 55
    iput v0, p0, Lx0/a;->d0:F

    .line 56
    iput v1, p0, Lx0/a;->e0:I

    .line 57
    iput v1, p0, Lx0/a;->f0:I

    new-array v0, v4, [I

    .line 58
    iput-object v0, p0, Lx0/a;->g0:[I

    new-array v0, v4, [F

    .line 59
    iput-object v0, p0, Lx0/a;->h0:[F

    new-array v0, v4, [F

    .line 60
    iput-object v0, p0, Lx0/a;->i0:[F

    new-array v0, v3, [I

    .line 61
    fill-array-data v0, :array_c

    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lx0/a;->j0:[[F

    new-array v0, v3, [I

    .line 62
    fill-array-data v0, :array_d

    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lx0/a;->k0:[[F

    new-array v0, v4, [F

    .line 63
    iput-object v0, p0, Lx0/a;->l0:[F

    new-array v0, v3, [I

    .line 64
    fill-array-data v0, :array_e

    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lx0/a;->m0:[[F

    new-array v0, v4, [I

    .line 65
    iput-object v0, p0, Lx0/a;->n0:[I

    new-array v0, v4, [I

    .line 66
    iput-object v0, p0, Lx0/a;->o0:[I

    new-array v0, v3, [I

    .line 67
    fill-array-data v0, :array_f

    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [[F

    iput-object p2, p0, Lx0/a;->p0:[[F

    new-array p2, v4, [I

    .line 68
    fill-array-data p2, :array_10

    iput-object p2, p0, Lx0/a;->q0:[I

    new-array p2, v4, [F

    .line 69
    iput-object p2, p0, Lx0/a;->r0:[F

    new-array p2, v4, [F

    .line 70
    iput-object p2, p0, Lx0/a;->s0:[F

    .line 71
    iput v1, p0, Lx0/a;->t0:I

    const/high16 p2, 0x3f800000    # 1.0f

    .line 72
    iput p2, p0, Lx0/a;->u0:F

    const/4 p2, 0x0

    iput p2, p0, Lx0/a;->v0:F

    iput p2, p0, Lx0/a;->w0:F

    iput p2, p0, Lx0/a;->x0:F

    .line 73
    iput p2, p0, Lx0/a;->y0:F

    iput p2, p0, Lx0/a;->z0:F

    iput p2, p0, Lx0/a;->A0:F

    new-array p2, v5, [F

    .line 74
    iput-object p2, p0, Lx0/a;->B0:[F

    const p2, 0x3a83126f    # 0.001f

    .line 75
    iput p2, p0, Lx0/a;->C0:F

    .line 76
    iput-object v2, p0, Lx0/a;->D0:[F

    .line 77
    iput v1, p0, Lx0/a;->E0:I

    .line 78
    iput-object v2, p0, Lx0/a;->F0:[F

    new-array p2, v4, [I

    .line 79
    iput-object p2, p0, Lx0/a;->G0:[I

    const p2, -0x39e3c000    # -10000.0f

    .line 80
    iput p2, p0, Lx0/a;->H0:F

    .line 81
    new-instance p2, Lo1/n;

    invoke-direct {p2}, Lo1/n;-><init>()V

    iput-object p2, p0, Lx0/a;->f:Lo1/n;

    .line 82
    iput-object p1, p0, Lx0/a;->g:Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x3
        0xf
    .end array-data

    :array_1
    .array-data 4
        0x3
        0xf
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_8
    .array-data 4
        0x3
        0x3
    .end array-data

    :array_9
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_a
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_b
    .array-data 4
        0x3
        0x1
    .end array-data

    :array_c
    .array-data 4
        0x3
        0x5
    .end array-data

    :array_d
    .array-data 4
        0x3
        0x3
    .end array-data

    :array_e
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_f
    .array-data 4
        0x3
        0x3
    .end array-data

    :array_10
    .array-data 4
        0xd
        -0x49
        0x46
    .end array-data
.end method

.method public static synthetic k(Lx0/a;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lx0/a;->P:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lx0/a;->l:Z

    const/16 p1, 0xf

    .line 2
    iput p1, p0, Lx0/a;->n:I

    return-void
.end method

.method public b()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lx0/a;->i:Z

    .line 2
    iget-object v0, p0, Lx0/a;->k:Landroid/os/Handler;

    iget-object v1, p0, Lx0/a;->Q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lx0/a;->k:Landroid/os/Handler;

    iget-object v1, p0, Lx0/a;->Q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lx0/a;->R:Landroid/os/Handler;

    iget-object v1, p0, Lx0/a;->S:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lo1/h;->b:Lo1/y;

    iget-object v1, p0, Lx0/a;->P:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    iget-object v0, p0, Lx0/a;->j:Landroid/os/Looper;

    if-eqz v0, :cond_1

    .line 7
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    .line 8
    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :goto_0
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lx0/a;->j:Landroid/os/Looper;

    .line 11
    iput-object v0, p0, Lx0/a;->k:Landroid/os/Handler;

    :cond_1
    return-void
.end method

.method public c(ILy/b;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    const/4 v3, 0x3

    if-eq p1, v3, :cond_1

    const/16 v3, 0xa

    if-eq p1, v3, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    new-array v3, v1, [I

    .line 1
    iget v4, p0, Lx0/a;->N:I

    aput v4, v3, v0

    invoke-interface {p2, p1, v3, v2, v2}, Ly/b;->H0(I[I[F[Ljava/lang/String;)V

    goto :goto_0

    .line 2
    :cond_1
    iget-object v0, p0, Lx0/a;->b0:[F

    invoke-interface {p2, p1, v2, v0, v2}, Ly/b;->H0(I[I[F[Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_2
    iget-object v0, p0, Lx0/a;->u:[F

    invoke-interface {p2, p1, v2, v0, v2}, Ly/b;->H0(I[I[F[Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_3
    iget-object v0, p0, Lx0/a;->Z:[F

    invoke-interface {p2, p1, v2, v0, v2}, Ly/b;->H0(I[I[F[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return v1
.end method

.method public f(I[I[F[Ljava/lang/String;)Z
    .locals 2

    .line 1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "-------- handleCmd cmdid: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " ints: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "Gyro"

    invoke-static {p4, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-eqz p1, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    move p3, p4

    goto :goto_1

    .line 2
    :cond_0
    invoke-static {p2, p4}, Lo1/s0;->h([II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3
    aget v0, p2, p4

    iget v1, p0, Lx0/a;->N:I

    if-eq v0, v1, :cond_4

    .line 4
    aget p2, p2, p4

    if-ne p2, p3, :cond_1

    move p2, p3

    goto :goto_0

    :cond_1
    const/4 p2, -0x1

    :goto_0
    iput p2, p0, Lx0/a;->N:I

    .line 5
    invoke-static {}, Lx0/c;->X2()Lx0/c;

    move-result-object p2

    new-array v0, p3, [I

    iget v1, p0, Lx0/a;->N:I

    aput v1, v0, p4

    invoke-virtual {p2, p1, v0}, Lx0/c;->a3(I[I)V

    .line 6
    iget-object p1, p0, Lx0/d;->b:Lo1/h0;

    iget p2, p0, Lx0/a;->N:I

    const/4 p4, 0x3

    invoke-virtual {p1, p4, p2}, Lo1/h0;->q(II)V

    .line 7
    iget-object p1, p0, Lx0/d;->b:Lo1/h0;

    invoke-virtual {p1, p4}, Lo1/h0;->e(I)V

    goto :goto_1

    .line 8
    :cond_2
    invoke-static {p2, p4}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 9
    aget p1, p2, p4

    iput p1, p0, Lx0/a;->I:I

    const/16 p2, 0x28

    if-ge p1, p2, :cond_4

    .line 10
    iput p2, p0, Lx0/a;->I:I

    goto :goto_1

    .line 11
    :cond_3
    invoke-virtual {p0, p3}, Lx0/a;->a(Z)V

    :cond_4
    :goto_1
    return p3
.end method

.method public i(Lo1/h0;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lx0/d;->i(Lo1/h0;)V

    .line 2
    iget v0, p0, Lx0/a;->N:I

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lo1/h0;->h(II)I

    move-result p1

    iput p1, p0, Lx0/a;->N:I

    .line 3
    invoke-static {}, Lx0/c;->X2()Lx0/c;

    move-result-object p1

    const/4 v0, 0x1

    new-array v1, v0, [I

    iget v2, p0, Lx0/a;->N:I

    const/4 v3, 0x0

    aput v2, v1, v3

    const/16 v2, 0xa

    invoke-virtual {p1, v2, v1}, Lx0/c;->a3(I[I)V

    .line 4
    iget-object p1, p0, Lx0/a;->a0:[I

    invoke-virtual {p0, v3, p1}, Lx0/d;->e(I[I)[I

    move-result-object p1

    iput-object p1, p0, Lx0/a;->a0:[I

    .line 5
    iget-object p1, p0, Lx0/a;->r:[I

    invoke-virtual {p0, v0, p1}, Lx0/d;->e(I[I)[I

    move-result-object p1

    iput-object p1, p0, Lx0/a;->r:[I

    move p1, v3

    .line 6
    :goto_0
    iget-object v0, p0, Lx0/a;->u:[F

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 7
    iget-object v0, p0, Lx0/a;->t:[F

    iget-object v1, p0, Lx0/a;->r:[I

    aget v1, v1, p1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    aput v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 8
    iget-object v0, p0, Lx0/a;->s:[I

    invoke-virtual {p0, p1, v0}, Lx0/d;->e(I[I)[I

    move-result-object p1

    iput-object p1, p0, Lx0/a;->s:[I

    .line 9
    :goto_1
    iget-object p1, p0, Lx0/a;->w:[F

    array-length v0, p1

    if-ge v3, v0, :cond_1

    .line 10
    iget-object v0, p0, Lx0/a;->s:[I

    aget v0, v0, v3

    int-to-float v0, v0

    const v1, 0x461c4000    # 10000.0f

    div-float/2addr v0, v1

    aput v0, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lx0/a;->f:Lo1/n;

    iget-object v1, p0, Lx0/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo1/n;->f(Ljava/lang/String;)I

    const/16 v0, 0xa

    .line 2
    iput v0, p0, Lx0/a;->H:I

    .line 3
    iget-object v0, p0, Lx0/a;->j:Landroid/os/Looper;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Gyro-thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x5

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 6
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 7
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lx0/a;->j:Landroid/os/Looper;

    .line 8
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lx0/a;->k:Landroid/os/Handler;

    .line 9
    :cond_0
    iget-object v0, p0, Lx0/a;->k:Landroid/os/Handler;

    iget-object v1, p0, Lx0/a;->O:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public l([F)F
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    .line 1
    :cond_0
    array-length v1, p1

    :goto_0
    const/4 v2, 0x0

    if-lez v1, :cond_2

    .line 2
    array-length v3, p1

    :goto_1
    if-ge v0, v3, :cond_1

    aget v4, p1, v0

    add-float/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    int-to-float p1, v1

    div-float/2addr v2, p1

    :cond_2
    return v2
.end method

.method public m(F)F
    .locals 1

    const/high16 v0, 0x43800000    # 256.0f

    div-float/2addr p1, v0

    const/high16 v0, 0x41c80000    # 25.0f

    add-float/2addr p1, v0

    return p1
.end method

.method public n()Z
    .locals 8

    const/16 v0, 0xf

    .line 1
    invoke-virtual {p0, v0}, Lx0/a;->s(I)I

    move-result v1

    iput v1, p0, Lx0/a;->X:I

    const/16 v1, 0x12

    .line 2
    invoke-virtual {p0, v1}, Lx0/a;->s(I)I

    move-result v2

    const/4 v3, 0x1

    or-int/2addr v2, v3

    new-array v4, v3, [I

    const/4 v5, 0x0

    aput v2, v4, v5

    .line 3
    invoke-virtual {p0, v1, v4}, Lx0/a;->u(I[I)I

    move-result v2

    if-gez v2, :cond_0

    return v5

    :cond_0
    const/16 v2, 0x14

    :goto_0
    add-int/lit8 v4, v2, -0x1

    if-lez v2, :cond_2

    .line 4
    invoke-virtual {p0, v1}, Lx0/a;->s(I)I

    move-result v2

    and-int/2addr v2, v3

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 v6, 0x5

    .line 5
    invoke-static {v6, v7}, Lo1/s0;->C(J)V

    move v2, v4

    goto :goto_0

    .line 6
    :cond_2
    :goto_1
    invoke-virtual {p0, v1}, Lx0/a;->s(I)I

    move-result v2

    and-int/lit16 v2, v2, 0xbf

    new-array v4, v3, [I

    aput v2, v4, v5

    .line 7
    invoke-virtual {p0, v1, v4}, Lx0/a;->u(I[I)I

    move-result v1

    if-gez v1, :cond_3

    return v5

    :cond_3
    const/16 v1, 0x10

    .line 8
    invoke-virtual {p0, v1}, Lx0/a;->s(I)I

    move-result v2

    and-int/2addr v2, v0

    or-int/2addr v2, v1

    new-array v4, v3, [I

    aput v2, v4, v5

    .line 9
    invoke-virtual {p0, v1, v4}, Lx0/a;->u(I[I)I

    move-result v2

    if-gez v2, :cond_4

    return v5

    :cond_4
    const/16 v2, 0x11

    .line 10
    invoke-virtual {p0, v2}, Lx0/a;->s(I)I

    move-result v4

    and-int/2addr v0, v4

    or-int/2addr v0, v1

    new-array v4, v3, [I

    aput v0, v4, v5

    .line 11
    invoke-virtual {p0, v2, v4}, Lx0/a;->u(I[I)I

    move-result v0

    if-gez v0, :cond_5

    return v5

    .line 12
    :cond_5
    invoke-virtual {p0, v1}, Lx0/a;->s(I)I

    move-result v0

    and-int/lit16 v0, v0, 0xf3

    new-array v4, v3, [I

    aput v0, v4, v5

    .line 13
    invoke-virtual {p0, v1, v4}, Lx0/a;->u(I[I)I

    move-result v0

    if-gez v0, :cond_6

    return v5

    .line 14
    :cond_6
    invoke-virtual {p0, v2}, Lx0/a;->s(I)I

    move-result v0

    and-int/lit16 v0, v0, 0xf1

    or-int/lit8 v0, v0, 0x2

    new-array v1, v3, [I

    aput v0, v1, v5

    .line 15
    invoke-virtual {p0, v2, v1}, Lx0/a;->u(I[I)I

    move-result v0

    if-ltz v0, :cond_7

    goto :goto_2

    :cond_7
    move v3, v5

    :goto_2
    return v3
.end method

.method public o(F)F
    .locals 1

    const/high16 v0, 0x408c0000    # 4.375f

    mul-float/2addr p1, v0

    return p1
.end method

.method public p(F)F
    .locals 1

    const/high16 v0, 0x42740000    # 61.0f

    mul-float/2addr p1, v0

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p1, v0

    return p1
.end method

.method public q()V
    .locals 21

    move-object/from16 v0, p0

    .line 1
    iget-boolean v1, v0, Lx0/a;->i:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x1e

    .line 2
    invoke-virtual {v0, v1}, Lx0/a;->s(I)I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 3
    iput v3, v0, Lx0/a;->t0:I

    goto :goto_0

    .line 4
    :cond_1
    iget v2, v0, Lx0/a;->t0:I

    add-int/2addr v2, v4

    iput v2, v0, Lx0/a;->t0:I

    .line 5
    :goto_0
    iget v2, v0, Lx0/a;->t0:I

    const/16 v5, 0x32

    if-lt v2, v5, :cond_2

    .line 6
    iget-object v2, v0, Lx0/a;->k:Landroid/os/Handler;

    iget-object v5, v0, Lx0/a;->Q:Ljava/lang/Runnable;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7
    iput-boolean v3, v0, Lx0/a;->i:Z

    .line 8
    iget-object v2, v0, Lx0/a;->k:Landroid/os/Handler;

    iget-object v5, v0, Lx0/a;->O:Ljava/lang/Runnable;

    const-wide/16 v6, 0x64

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    and-int/lit8 v2, v1, 0x1

    const/4 v7, 0x0

    const/4 v10, 0x6

    const/4 v12, 0x3

    const/4 v13, 0x2

    if-eqz v2, :cond_36

    new-array v2, v4, [I

    const/16 v14, 0x28

    aput v14, v2, v3

    .line 9
    invoke-virtual {v0, v10, v2}, Lx0/a;->r(I[I)[I

    move-result-object v2

    new-array v14, v12, [I

    move v15, v3

    .line 10
    :goto_1
    iget-object v8, v0, Lx0/a;->T:[I

    array-length v8, v8

    const/high16 v16, 0x447a0000    # 1000.0f

    if-ge v15, v8, :cond_3

    mul-int/lit8 v8, v15, 0x2

    add-int/lit8 v17, v8, 0x1

    .line 11
    aget v6, v2, v17

    aget v8, v2, v8

    invoke-static {v6, v8}, Lo1/s0;->x(II)I

    move-result v6

    invoke-virtual {v0, v6}, Lx0/a;->t(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v0, v6}, Lx0/a;->p(F)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 12
    iget-object v8, v0, Lx0/a;->T:[I

    const/16 v10, -0x7d0

    const/16 v9, 0x7d0

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    aput v6, v8, v15

    .line 13
    iget-object v6, v0, Lx0/a;->s0:[F

    iget-object v8, v0, Lx0/a;->T:[I

    aget v9, v8, v15

    int-to-float v9, v9

    div-float v9, v9, v16

    aput v9, v6, v15

    const/16 v6, -0x7d0

    .line 14
    aget v8, v8, v15

    iget-object v9, v0, Lx0/a;->a0:[I

    aget v9, v9, v15

    sub-int/2addr v8, v9

    const/16 v9, 0x7d0

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-float v6, v6

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v6, v8

    .line 15
    iget-object v8, v0, Lx0/a;->T:[I

    aget v8, v8, v15

    aput v8, v14, v15

    .line 16
    iget-object v8, v0, Lx0/a;->Z:[F

    iget v9, v0, Lx0/a;->d0:F

    aget v10, v8, v15

    mul-float/2addr v10, v9

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v16, v16, v9

    mul-float v16, v16, v6

    add-float v10, v10, v16

    aput v10, v8, v15

    .line 17
    iget-object v9, v0, Lx0/a;->c0:[[F

    aget-object v9, v9, v15

    iget v10, v0, Lx0/a;->e0:I

    aget v8, v8, v15

    sub-float/2addr v6, v8

    aput v6, v9, v10

    add-int/lit8 v15, v15, 0x1

    const/4 v10, 0x6

    goto :goto_1

    .line 18
    :cond_3
    iget-object v2, v0, Lx0/a;->b0:[F

    iget-object v6, v0, Lx0/a;->c0:[[F

    aget-object v6, v6, v3

    invoke-virtual {v0, v6}, Lx0/a;->l([F)F

    move-result v6

    aput v6, v2, v3

    .line 19
    iget-object v2, v0, Lx0/a;->b0:[F

    iget-object v6, v0, Lx0/a;->c0:[[F

    aget-object v6, v6, v4

    invoke-virtual {v0, v6}, Lx0/a;->l([F)F

    move-result v6

    aput v6, v2, v4

    .line 20
    iget-object v2, v0, Lx0/a;->b0:[F

    iget-object v6, v0, Lx0/a;->c0:[[F

    aget-object v6, v6, v13

    invoke-virtual {v0, v6}, Lx0/a;->l([F)F

    move-result v6

    aput v6, v2, v13

    .line 21
    iget-object v2, v0, Lx0/a;->T:[I

    aget v6, v2, v3

    int-to-float v6, v6

    div-float v6, v6, v16

    float-to-double v8, v6

    aget v2, v2, v4

    int-to-float v2, v2

    div-float v2, v2, v16

    float-to-double v5, v2

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    iget-object v2, v0, Lx0/a;->T:[I

    aget v2, v2, v13

    int-to-float v2, v2

    div-float v2, v2, v16

    float-to-double v12, v2

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    add-double/2addr v5, v12

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    div-double/2addr v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->atan(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    double-to-float v2, v5

    .line 22
    iget-object v5, v0, Lx0/a;->T:[I

    aget v6, v5, v4

    int-to-float v6, v6

    div-float v6, v6, v16

    float-to-double v8, v6

    const/4 v6, 0x2

    aget v5, v5, v6

    int-to-float v5, v5

    div-float v5, v5, v16

    float-to-double v5, v5

    invoke-static {v5, v6, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    iget-object v12, v0, Lx0/a;->T:[I

    aget v12, v12, v3

    int-to-float v12, v12

    div-float v12, v12, v16

    float-to-double v12, v12

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    add-double/2addr v5, v12

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    div-double/2addr v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->atan(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    double-to-float v5, v5

    .line 23
    iget-object v6, v0, Lx0/a;->T:[I

    const/4 v8, 0x2

    aget v9, v6, v8

    int-to-float v8, v9

    div-float v8, v8, v16

    float-to-double v8, v8

    aget v6, v6, v3

    int-to-float v6, v6

    div-float v6, v6, v16

    float-to-double v12, v6

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    iget-object v6, v0, Lx0/a;->T:[I

    aget v6, v6, v4

    int-to-float v6, v6

    div-float v6, v6, v16

    float-to-double v3, v6

    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v12, v3

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    div-double/2addr v8, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->atan(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 24
    iget-object v4, v0, Lx0/a;->T:[I

    const/4 v6, 0x1

    aget v8, v4, v6

    const/4 v6, 0x0

    if-lez v8, :cond_5

    cmpl-float v8, v2, v6

    if-lez v8, :cond_4

    .line 25
    iget-object v8, v0, Lx0/a;->E:[F

    const/high16 v9, 0x43340000    # 180.0f

    sub-float/2addr v9, v2

    const/4 v12, 0x0

    aput v9, v8, v12

    goto :goto_2

    :cond_4
    const/4 v12, 0x0

    .line 26
    iget-object v8, v0, Lx0/a;->E:[F

    const/high16 v9, -0x3ccc0000    # -180.0f

    sub-float/2addr v9, v2

    aput v9, v8, v12

    goto :goto_2

    :cond_5
    const/4 v12, 0x0

    .line 27
    iget-object v8, v0, Lx0/a;->E:[F

    aput v2, v8, v12

    .line 28
    :goto_2
    iget-object v2, v0, Lx0/a;->E:[F

    aget v8, v2, v12

    cmpg-float v8, v8, v6

    if-gez v8, :cond_6

    aget v8, v2, v12

    const/high16 v9, 0x43b40000    # 360.0f

    add-float/2addr v8, v9

    aput v8, v2, v12

    :cond_6
    const/4 v8, 0x2

    .line 29
    aget v9, v4, v8

    if-gez v9, :cond_8

    cmpl-float v8, v5, v6

    if-lez v8, :cond_7

    const/high16 v8, 0x43340000    # 180.0f

    sub-float/2addr v8, v5

    const/4 v9, 0x1

    .line 30
    aput v8, v2, v9

    goto :goto_3

    :cond_7
    const/4 v9, 0x1

    const/high16 v8, -0x3ccc0000    # -180.0f

    sub-float/2addr v8, v5

    .line 31
    aput v8, v2, v9

    goto :goto_3

    :cond_8
    const/4 v9, 0x1

    .line 32
    aput v5, v2, v9

    .line 33
    :goto_3
    aget v5, v2, v9

    cmpg-float v5, v5, v6

    if-gez v5, :cond_9

    aget v5, v2, v9

    const/high16 v8, 0x43b40000    # 360.0f

    add-float/2addr v5, v8

    aput v5, v2, v9

    .line 34
    :cond_9
    aget v4, v4, v9

    if-lez v4, :cond_b

    cmpl-float v4, v3, v6

    if-lez v4, :cond_a

    const/high16 v4, 0x43340000    # 180.0f

    sub-float/2addr v4, v3

    const/4 v5, 0x2

    .line 35
    aput v4, v2, v5

    goto :goto_4

    :cond_a
    const/4 v5, 0x2

    const/high16 v4, -0x3ccc0000    # -180.0f

    sub-float/2addr v4, v3

    .line 36
    aput v4, v2, v5

    goto :goto_4

    :cond_b
    const/4 v5, 0x2

    .line 37
    aput v3, v2, v5

    .line 38
    :goto_4
    aget v3, v2, v5

    cmpg-float v3, v3, v6

    if-gez v3, :cond_c

    aget v3, v2, v5

    const/high16 v4, 0x43b40000    # 360.0f

    add-float/2addr v3, v4

    aput v3, v2, v5

    :cond_c
    const/4 v2, 0x3

    new-array v3, v2, [F

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v2, :cond_10

    .line 39
    iget-object v2, v0, Lx0/a;->E:[F

    aget v2, v2, v4

    iget-object v5, v0, Lx0/a;->w:[F

    aget v5, v5, v4

    sub-float/2addr v2, v5

    aput v2, v3, v4

    .line 40
    aget v2, v3, v4

    cmpg-float v2, v2, v6

    if-gez v2, :cond_d

    .line 41
    aget v2, v3, v4

    const/high16 v5, 0x43b40000    # 360.0f

    add-float/2addr v2, v5

    aput v2, v3, v4

    .line 42
    :cond_d
    aget v2, v3, v4

    const/high16 v5, 0x43b40000    # 360.0f

    cmpl-float v2, v2, v5

    if-lez v2, :cond_e

    const/high16 v2, 0x43b40000    # 360.0f

    .line 43
    aput v2, v3, v4

    .line 44
    :cond_e
    aget v2, v3, v4

    const/high16 v5, 0x43340000    # 180.0f

    cmpl-float v2, v2, v5

    if-lez v2, :cond_f

    .line 45
    aget v2, v3, v4

    const/high16 v5, 0x43b40000    # 360.0f

    sub-float/2addr v2, v5

    aput v2, v3, v4

    :cond_f
    add-int/lit8 v4, v4, 0x1

    const/4 v2, 0x3

    goto :goto_5

    :cond_10
    const/4 v2, 0x0

    .line 46
    aget v4, v3, v2

    const/4 v4, 0x1

    .line 47
    aget v5, v3, v4

    const/4 v5, 0x2

    .line 48
    aget v8, v3, v5

    .line 49
    iget-object v8, v0, Lx0/a;->v:[F

    aget v9, v3, v2

    aput v9, v8, v2

    .line 50
    aget v2, v3, v4

    aput v2, v8, v4

    .line 51
    aget v2, v3, v5

    aput v2, v8, v5

    const/4 v2, 0x0

    .line 52
    :goto_6
    iget-object v3, v0, Lx0/a;->y:[F

    array-length v5, v3

    sub-int/2addr v5, v4

    if-ge v2, v5, :cond_11

    add-int/lit8 v5, v2, 0x1

    .line 53
    aget v8, v3, v5

    aput v8, v3, v2

    move v2, v5

    goto :goto_6

    .line 54
    :cond_11
    array-length v2, v3

    sub-int/2addr v2, v4

    iget-object v4, v0, Lx0/a;->v:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    aput v4, v3, v2

    const/4 v2, 0x0

    .line 55
    :goto_7
    iget-object v3, v0, Lx0/a;->y:[F

    array-length v4, v3

    if-ge v2, v4, :cond_12

    .line 56
    iget-object v4, v0, Lx0/a;->x:[F

    aget v3, v3, v2

    aput v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_12
    const/4 v2, 0x0

    .line 57
    :goto_8
    iget-object v3, v0, Lx0/a;->x:[F

    array-length v4, v3

    if-ge v2, v4, :cond_15

    .line 58
    array-length v3, v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_9
    if-le v3, v2, :cond_14

    .line 59
    iget-object v4, v0, Lx0/a;->x:[F

    aget v5, v4, v3

    add-int/lit8 v8, v3, -0x1

    aget v9, v4, v8

    cmpg-float v5, v5, v9

    if-gez v5, :cond_13

    .line 60
    aget v5, v4, v8

    .line 61
    aget v9, v4, v3

    aput v9, v4, v8

    .line 62
    aput v5, v4, v3

    :cond_13
    add-int/lit8 v3, v3, -0x1

    goto :goto_9

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_15
    const/4 v2, 0x0

    .line 63
    :goto_a
    iget-object v3, v0, Lx0/a;->z:[[F

    const/4 v4, 0x2

    aget-object v5, v3, v4

    array-length v5, v5

    if-ge v2, v5, :cond_16

    .line 64
    aget-object v3, v3, v4

    iget-object v5, v0, Lx0/a;->x:[F

    add-int/lit8 v8, v2, 0x1

    aget v5, v5, v8

    aput v5, v3, v2

    move v2, v8

    goto :goto_a

    .line 65
    :cond_16
    iget-object v2, v0, Lx0/a;->C:[F

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Lx0/a;->l([F)F

    move-result v3

    aput v3, v2, v4

    .line 66
    iget-object v2, v0, Lx0/a;->C:[F

    aget v3, v2, v4

    float-to-double v8, v3

    cmpl-double v3, v8, v10

    if-lez v3, :cond_17

    .line 67
    iget-object v2, v0, Lx0/a;->F:[I

    const/4 v3, 0x0

    const/4 v5, 0x1

    aput v5, v2, v3

    goto :goto_b

    :cond_17
    const/4 v3, 0x0

    .line 68
    aget v2, v2, v4

    float-to-double v4, v2

    const-wide/high16 v8, -0x4000000000000000L    # -2.0

    cmpg-double v2, v4, v8

    if-gez v2, :cond_18

    .line 69
    iget-object v2, v0, Lx0/a;->F:[I

    const/4 v4, -0x1

    aput v4, v2, v3

    goto :goto_b

    .line 70
    :cond_18
    iget-object v2, v0, Lx0/a;->F:[I

    aput v3, v2, v3

    :goto_b
    const/4 v2, 0x0

    .line 71
    :goto_c
    iget-object v3, v0, Lx0/a;->B:[F

    array-length v4, v3

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ge v2, v4, :cond_19

    add-int/lit8 v4, v2, 0x1

    .line 72
    aget v8, v3, v4

    aput v8, v3, v2

    move v2, v4

    goto :goto_c

    .line 73
    :cond_19
    array-length v2, v3

    sub-int/2addr v2, v5

    iget-object v4, v0, Lx0/a;->v:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    aput v4, v3, v2

    const/4 v2, 0x0

    .line 74
    :goto_d
    iget-object v3, v0, Lx0/a;->B:[F

    array-length v4, v3

    if-ge v2, v4, :cond_1a

    .line 75
    iget-object v4, v0, Lx0/a;->A:[F

    aget v3, v3, v2

    aput v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_1a
    const/4 v2, 0x0

    .line 76
    :goto_e
    iget-object v3, v0, Lx0/a;->A:[F

    array-length v4, v3

    if-ge v2, v4, :cond_1d

    .line 77
    array-length v3, v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_f
    if-le v3, v2, :cond_1c

    .line 78
    iget-object v4, v0, Lx0/a;->A:[F

    aget v5, v4, v3

    add-int/lit8 v8, v3, -0x1

    aget v9, v4, v8

    cmpg-float v5, v5, v9

    if-gez v5, :cond_1b

    .line 79
    aget v5, v4, v8

    .line 80
    aget v9, v4, v3

    aput v9, v4, v8

    .line 81
    aput v5, v4, v3

    :cond_1b
    add-int/lit8 v3, v3, -0x1

    goto :goto_f

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1d
    const/4 v2, 0x0

    .line 82
    :goto_10
    iget-object v3, v0, Lx0/a;->z:[[F

    const/4 v4, 0x2

    aget-object v5, v3, v4

    array-length v4, v5

    if-ge v2, v4, :cond_1e

    const/4 v4, 0x0

    .line 83
    aget-object v3, v3, v4

    iget-object v5, v0, Lx0/a;->A:[F

    add-int/lit8 v16, v2, 0x1

    aget v5, v5, v16

    aput v5, v3, v2

    move/from16 v2, v16

    goto :goto_10

    :cond_1e
    const/4 v4, 0x0

    .line 84
    iget-object v2, v0, Lx0/a;->C:[F

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Lx0/a;->l([F)F

    move-result v3

    aput v3, v2, v4

    .line 85
    iget-boolean v2, v0, Lx0/a;->l:Z

    if-eqz v2, :cond_22

    .line 86
    iget v2, v0, Lx0/a;->n:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, v0, Lx0/a;->n:I

    if-ltz v2, :cond_1f

    .line 87
    iget-object v5, v0, Lx0/a;->o:[[F

    aget-object v8, v5, v4

    iget-object v9, v0, Lx0/a;->u:[F

    aget v11, v9, v4

    aput v11, v8, v2

    .line 88
    aget-object v8, v5, v3

    aget v11, v9, v3

    aput v11, v8, v2

    const/4 v8, 0x2

    .line 89
    aget-object v5, v5, v8

    aget v9, v9, v8

    aput v9, v5, v2

    .line 90
    iget-object v5, v0, Lx0/a;->p:[[F

    aget-object v9, v5, v4

    iget-object v11, v0, Lx0/a;->E:[F

    aget v12, v11, v4

    aput v12, v9, v2

    .line 91
    aget-object v9, v5, v3

    aget v12, v11, v3

    aput v12, v9, v2

    .line 92
    aget-object v5, v5, v8

    aget v9, v11, v8

    aput v9, v5, v2

    move v4, v3

    goto/16 :goto_13

    :cond_1f
    const/4 v8, 0x2

    .line 93
    iput-boolean v4, v0, Lx0/a;->l:Z

    .line 94
    iget-object v2, v0, Lx0/a;->a0:[I

    aget v5, v14, v4

    sub-int/2addr v5, v4

    aput v5, v2, v4

    .line 95
    aget v5, v14, v3

    sub-int/2addr v5, v4

    aput v5, v2, v3

    .line 96
    aget v3, v14, v8

    add-int/lit16 v3, v3, -0x3e8

    aput v3, v2, v8

    .line 97
    iget-object v3, v0, Lx0/d;->b:Lo1/h0;

    invoke-virtual {v3, v4, v2}, Lo1/h0;->r(I[I)V

    .line 98
    iget-object v2, v0, Lx0/d;->b:Lo1/h0;

    invoke-virtual {v2, v4}, Lo1/h0;->e(I)V

    const/4 v2, 0x0

    .line 99
    :goto_11
    iget-object v3, v0, Lx0/a;->w:[F

    array-length v4, v3

    if-ge v2, v4, :cond_20

    .line 100
    iget-object v4, v0, Lx0/a;->p:[[F

    aget-object v4, v4, v2

    invoke-virtual {v0, v4}, Lx0/a;->l([F)F

    move-result v4

    aput v4, v3, v2

    .line 101
    iget-object v3, v0, Lx0/a;->s:[I

    iget-object v4, v0, Lx0/a;->w:[F

    aget v4, v4, v2

    const v5, 0x461c4000    # 10000.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 102
    :cond_20
    iget-object v2, v0, Lx0/d;->b:Lo1/h0;

    iget-object v3, v0, Lx0/a;->s:[I

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v3}, Lo1/h0;->r(I[I)V

    .line 103
    iget-object v2, v0, Lx0/d;->b:Lo1/h0;

    invoke-virtual {v2, v4}, Lo1/h0;->e(I)V

    const/4 v2, 0x0

    .line 104
    :goto_12
    iget-object v3, v0, Lx0/a;->u:[F

    array-length v3, v3

    if-ge v2, v3, :cond_21

    .line 105
    iget-object v3, v0, Lx0/a;->t:[F

    iget-object v4, v0, Lx0/a;->o:[[F

    aget-object v4, v4, v2

    invoke-virtual {v0, v4}, Lx0/a;->l([F)F

    move-result v4

    aput v4, v3, v2

    .line 106
    iget-object v3, v0, Lx0/a;->r:[I

    iget-object v4, v0, Lx0/a;->t:[F

    aget v4, v4, v2

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 107
    :cond_21
    iget-object v2, v0, Lx0/d;->b:Lo1/h0;

    iget-object v3, v0, Lx0/a;->r:[I

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Lo1/h0;->r(I[I)V

    .line 108
    iget-object v2, v0, Lx0/d;->b:Lo1/h0;

    invoke-virtual {v2, v4}, Lo1/h0;->e(I)V

    goto :goto_13

    :cond_22
    const/4 v4, 0x1

    .line 109
    :goto_13
    iget v2, v0, Lx0/a;->e0:I

    add-int/2addr v2, v4

    iput v2, v0, Lx0/a;->e0:I

    if-lt v2, v4, :cond_23

    const/4 v2, 0x0

    .line 110
    iput v2, v0, Lx0/a;->e0:I

    .line 111
    :cond_23
    iput-object v14, v0, Lx0/a;->g0:[I

    const/4 v3, 0x0

    .line 112
    :goto_14
    iget-object v2, v0, Lx0/a;->h0:[F

    array-length v4, v2

    if-ge v3, v4, :cond_26

    .line 113
    new-instance v4, Ljava/math/BigDecimal;

    iget-object v5, v0, Lx0/a;->Z:[F

    aget v5, v5, v3

    float-to-double v8, v5

    invoke-direct {v4, v8, v9}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v5, 0x4

    const/4 v8, 0x3

    invoke-virtual {v4, v8, v5}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->floatValue()F

    move-result v4

    aput v4, v2, v3

    .line 114
    iget-object v4, v0, Lx0/a;->i0:[F

    new-instance v2, Ljava/math/BigDecimal;

    iget-object v8, v0, Lx0/a;->b0:[F

    aget v8, v8, v3

    float-to-double v8, v8

    invoke-direct {v2, v8, v9}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v8, 0x2

    invoke-virtual {v2, v8, v5}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v9

    invoke-virtual {v9}, Ljava/math/BigDecimal;->floatValue()F

    move-result v5

    aput v5, v4, v3

    const/4 v4, 0x0

    .line 115
    :goto_15
    iget-object v5, v0, Lx0/a;->j0:[[F

    aget-object v8, v5, v3

    array-length v8, v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    if-ge v4, v8, :cond_24

    .line 116
    aget-object v8, v5, v3

    aget-object v5, v5, v3

    add-int/lit8 v9, v4, 0x1

    aget v5, v5, v9

    aput v5, v8, v4

    move v4, v9

    goto :goto_15

    .line 117
    :cond_24
    aget-object v5, v5, v3

    iget-object v8, v0, Lx0/a;->i0:[F

    aget v8, v8, v3

    const/high16 v9, 0x42c80000    # 100.0f

    mul-float/2addr v8, v9

    aput v8, v5, v4

    const/4 v4, 0x0

    .line 118
    :goto_16
    iget-object v5, v0, Lx0/a;->k0:[[F

    aget-object v8, v5, v3

    array-length v8, v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    if-ge v4, v8, :cond_25

    .line 119
    aget-object v8, v5, v3

    aget-object v5, v5, v3

    add-int/lit8 v9, v4, 0x1

    aget v5, v5, v9

    aput v5, v8, v4

    move v4, v9

    goto :goto_16

    .line 120
    :cond_25
    aget-object v5, v5, v3

    iget-object v8, v0, Lx0/a;->i0:[F

    aget v8, v8, v3

    const/high16 v9, 0x42c80000    # 100.0f

    mul-float/2addr v8, v9

    aput v8, v5, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 121
    :cond_26
    iget-object v3, v0, Lx0/a;->k0:[[F

    const/4 v4, 0x1

    aget-object v5, v3, v4

    const/4 v8, 0x2

    aget v5, v5, v8

    cmpl-float v5, v5, v6

    if-lez v5, :cond_27

    .line 122
    aget-object v5, v3, v4

    aget v5, v5, v8

    add-float/2addr v5, v6

    goto :goto_17

    .line 123
    :cond_27
    aget-object v5, v3, v4

    aget v5, v5, v8

    sub-float v5, v6, v5

    .line 124
    :goto_17
    aget-object v8, v3, v4

    aget v8, v8, v4

    cmpl-float v6, v8, v6

    if-lez v6, :cond_28

    .line 125
    aget-object v3, v3, v4

    aget v3, v3, v4

    add-float/2addr v5, v3

    goto :goto_18

    .line 126
    :cond_28
    aget-object v3, v3, v4

    aget v3, v3, v4

    sub-float/2addr v5, v3

    .line 127
    :goto_18
    iget-object v3, v0, Lx0/a;->p0:[[F

    const/4 v6, 0x0

    aget-object v8, v3, v6

    aget-object v9, v3, v6

    aget v9, v9, v4

    aput v9, v8, v6

    .line 128
    aget-object v8, v3, v6

    aget-object v9, v3, v6

    const/4 v11, 0x2

    aget v9, v9, v11

    aput v9, v8, v4

    .line 129
    aget-object v8, v3, v6

    aput v5, v8, v11

    .line 130
    aget-object v5, v3, v6

    aget v5, v5, v4

    sget-object v4, Lx0/a;->L0:[I

    const/4 v8, 0x3

    aget v9, v4, v8

    int-to-float v9, v9

    cmpl-float v5, v5, v9

    if-lez v5, :cond_29

    aget-object v5, v3, v6

    aget v5, v5, v11

    aget v9, v4, v8

    int-to-float v9, v9

    cmpl-float v5, v5, v9

    if-lez v5, :cond_29

    .line 131
    iget-object v3, v0, Lx0/a;->F:[I

    const/4 v2, 0x4

    aput v2, v3, v8

    move v4, v8

    :goto_19
    const/4 v5, 0x1

    goto :goto_1a

    .line 132
    :cond_29
    aget-object v5, v3, v6

    const/4 v8, 0x1

    aget v5, v5, v8

    const/4 v8, 0x2

    aget v9, v4, v8

    int-to-float v9, v9

    cmpl-float v5, v5, v9

    if-lez v5, :cond_2a

    aget-object v5, v3, v6

    aget v5, v5, v8

    aget v9, v4, v8

    int-to-float v8, v9

    cmpl-float v5, v5, v8

    if-lez v5, :cond_2a

    .line 133
    iget-object v3, v0, Lx0/a;->F:[I

    const/4 v4, 0x3

    aput v4, v3, v4

    goto :goto_19

    .line 134
    :cond_2a
    aget-object v5, v3, v6

    const/4 v8, 0x1

    aget v5, v5, v8

    aget v9, v4, v8

    int-to-float v9, v9

    cmpl-float v5, v5, v9

    if-lez v5, :cond_2b

    aget-object v5, v3, v6

    const/4 v9, 0x2

    aget v5, v5, v9

    aget v11, v4, v8

    int-to-float v11, v11

    cmpl-float v5, v5, v11

    if-lez v5, :cond_2c

    .line 135
    iget-object v3, v0, Lx0/a;->F:[I

    const/4 v4, 0x3

    aput v9, v3, v4

    move v5, v8

    goto :goto_1a

    :cond_2b
    const/4 v9, 0x2

    .line 136
    :cond_2c
    aget-object v5, v3, v6

    aget v5, v5, v8

    aget v8, v4, v6

    int-to-float v8, v8

    cmpl-float v5, v5, v8

    if-lez v5, :cond_2d

    aget-object v3, v3, v6

    aget v3, v3, v9

    aget v4, v4, v6

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2d

    .line 137
    iget-object v3, v0, Lx0/a;->F:[I

    const/4 v4, 0x3

    const/4 v5, 0x1

    aput v5, v3, v4

    goto :goto_1a

    :cond_2d
    const/4 v4, 0x3

    const/4 v5, 0x1

    .line 138
    iget-object v3, v0, Lx0/a;->F:[I

    aput v6, v3, v4

    .line 139
    :goto_1a
    invoke-static {}, Lx0/c;->X2()Lx0/c;

    move-result-object v3

    iget-object v6, v0, Lx0/a;->h0:[F

    invoke-virtual {v3, v5, v7, v6, v7}, Lx0/c;->H0(I[I[F[Ljava/lang/String;)V

    .line 140
    invoke-static {}, Lx0/c;->X2()Lx0/c;

    move-result-object v3

    iget-object v6, v0, Lx0/a;->i0:[F

    invoke-virtual {v3, v4, v7, v6, v7}, Lx0/c;->H0(I[I[F[Ljava/lang/String;)V

    .line 141
    iget-object v3, v0, Lx0/a;->p0:[[F

    aget-object v4, v3, v5

    const/4 v6, 0x2

    aget v4, v4, v6

    float-to-int v4, v4

    const/4 v8, 0x0

    .line 142
    aget-object v3, v3, v8

    aget v3, v3, v6

    float-to-int v3, v3

    .line 143
    iget-object v6, v0, Lx0/a;->F:[I

    aget v8, v6, v5

    const/16 v5, 0xf

    const/16 v9, 0xe

    const/16 v11, 0xd

    const/16 v12, 0xc

    const/16 v13, 0xb

    const/16 v14, 0xa

    const/4 v15, 0x7

    const/16 v2, 0x10

    const/4 v10, -0x1

    if-ne v8, v10, :cond_30

    const/4 v8, 0x2

    .line 144
    aget v7, v6, v8

    if-ne v7, v10, :cond_2e

    .line 145
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v6

    sget-object v7, Lutil/log/LogType;->q:Lutil/log/LogType;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v10, v0, Lx0/a;->v:[F

    aget v10, v10, v8

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const/16 v16, 0x0

    aput-object v10, v2, v16

    iget-object v10, v0, Lx0/a;->C:[F

    aget v10, v10, v8

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const/16 v20, 0x1

    aput-object v10, v2, v20

    iget-object v10, v0, Lx0/a;->C:[F

    aget v10, v10, v16

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v2, v8

    iget-object v10, v0, Lx0/a;->F:[I

    aget v10, v10, v16

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v19, 0x3

    aput-object v10, v2, v19

    iget-object v10, v0, Lx0/a;->F:[I

    aget v10, v10, v20

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v18, 0x4

    aput-object v10, v2, v18

    iget-object v10, v0, Lx0/a;->F:[I

    aget v10, v10, v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v10, 0x5

    aput-object v8, v2, v10

    iget-object v8, v0, Lx0/a;->F:[I

    aget v8, v8, v19

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v10, 0x6

    aput-object v8, v2, v10

    iget v8, v0, Lx0/a;->K:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v15

    iget v8, v0, Lx0/a;->J:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v10, 0x8

    aput-object v8, v2, v10

    iget v8, v0, Lx0/a;->L:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v10, 0x9

    aput-object v8, v2, v10

    iget-object v8, v0, Lx0/a;->V:[F

    array-length v10, v8

    const/4 v15, 0x1

    sub-int/2addr v10, v15

    aget v8, v8, v10

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v2, v14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v13

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v12

    sget v3, Lu0/b;->X1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v11

    sget v3, Lx0/a;->K0:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    iget v3, v0, Lx0/a;->H0:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "\u4e0a\u4e0b\u5761\u89d2\u5ea6: %3.2f,  %4.2f,  %4.2f, \u7ed3\u679c\uff1a%4d\uff0c%4d\uff0c%4d\uff0c%4d  \u5de6\u8f6c  ,\u52a0\u901f\u4e2d\uff01\uff01\uff01tim:%3d,%3d,%3d,\u8f6c\u89d2\uff1a%3.2f,ACCSUM:%4d,%4d,spd:%3d,%3d,T:%3.2f"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v7, v2}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    goto/16 :goto_1b

    :cond_2e
    move v7, v8

    .line 146
    aget v6, v6, v7

    const/4 v8, 0x1

    if-ne v6, v8, :cond_2f

    .line 147
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v6

    sget-object v10, Lutil/log/LogType;->q:Lutil/log/LogType;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, v0, Lx0/a;->v:[F

    aget v5, v5, v7

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/16 v16, 0x0

    aput-object v5, v2, v16

    iget-object v5, v0, Lx0/a;->C:[F

    aget v5, v5, v7

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v2, v8

    iget-object v5, v0, Lx0/a;->C:[F

    aget v5, v5, v16

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v2, v7

    iget-object v5, v0, Lx0/a;->F:[I

    aget v5, v5, v16

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v19, 0x3

    aput-object v5, v2, v19

    iget-object v5, v0, Lx0/a;->F:[I

    aget v5, v5, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v8, 0x4

    aput-object v5, v2, v8

    iget-object v8, v0, Lx0/a;->F:[I

    aget v8, v8, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x5

    aput-object v7, v2, v8

    iget-object v7, v0, Lx0/a;->F:[I

    aget v7, v7, v19

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x6

    aput-object v7, v2, v8

    iget v7, v0, Lx0/a;->K:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v15

    iget v7, v0, Lx0/a;->J:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v8, 0x8

    aput-object v7, v2, v8

    iget v7, v0, Lx0/a;->L:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v8, 0x9

    aput-object v7, v2, v8

    iget-object v7, v0, Lx0/a;->V:[F

    array-length v8, v7

    const/4 v15, 0x1

    sub-int/2addr v8, v15

    aget v7, v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v2, v14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v13

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v12

    sget v3, Lu0/b;->X1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v11

    sget v3, Lx0/a;->K0:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    iget v3, v0, Lx0/a;->H0:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/16 v4, 0xf

    aput-object v3, v2, v4

    const-string v3, "\u4e0a\u4e0b\u5761\u89d2\u5ea6: %3.2f,  %4.2f,  %4.2f, \u7ed3\u679c\uff1a%4d\uff0c%4d\uff0c%4d\uff0c%4d  \u5de6\u8f6c  ,\u51cf\u901f\u4e2d\uff01\uff01\uff01tim:%3d,%3d,%3d,\u8f6c\u89d2\uff1a%3.2f,ACCSUM:%4d,%4d,spd:%3d,%3d,T:%3.2f"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v10, v2}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    goto/16 :goto_1b

    .line 148
    :cond_2f
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v6

    sget-object v7, Lutil/log/LogType;->q:Lutil/log/LogType;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v8, v0, Lx0/a;->v:[F

    const/4 v10, 0x2

    aget v8, v8, v10

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    const/16 v16, 0x0

    aput-object v8, v2, v16

    iget-object v8, v0, Lx0/a;->C:[F

    aget v8, v8, v10

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    const/16 v18, 0x1

    aput-object v8, v2, v18

    iget-object v8, v0, Lx0/a;->C:[F

    aget v8, v8, v16

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v2, v10

    iget-object v8, v0, Lx0/a;->F:[I

    aget v8, v8, v16

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v19, 0x3

    aput-object v8, v2, v19

    iget-object v8, v0, Lx0/a;->F:[I

    aget v8, v8, v18

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v5, 0x4

    aput-object v8, v2, v5

    iget-object v8, v0, Lx0/a;->F:[I

    aget v8, v8, v10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v10, 0x5

    aput-object v8, v2, v10

    iget-object v8, v0, Lx0/a;->F:[I

    aget v8, v8, v19

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v10, 0x6

    aput-object v8, v2, v10

    iget v8, v0, Lx0/a;->K:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v15

    iget v8, v0, Lx0/a;->J:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v10, 0x8

    aput-object v8, v2, v10

    iget v8, v0, Lx0/a;->L:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v10, 0x9

    aput-object v8, v2, v10

    iget-object v8, v0, Lx0/a;->V:[F

    array-length v10, v8

    const/4 v15, 0x1

    sub-int/2addr v10, v15

    aget v8, v8, v10

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v2, v14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v13

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v12

    sget v3, Lu0/b;->X1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v11

    sget v3, Lx0/a;->K0:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    iget v3, v0, Lx0/a;->H0:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/16 v4, 0xf

    aput-object v3, v2, v4

    const-string v3, "\u4e0a\u4e0b\u5761\u89d2\u5ea6: %3.2f,  %4.2f,  %4.2f, \u7ed3\u679c\uff1a%4d\uff0c%4d\uff0c%4d\uff0c%4d  \u5de6\u8f6c  ,---------tim:%3d,%3d,%3d,\u8f6c\u89d2\uff1a%3.2f,ACCSUM:%4d,%4d,spd:%3d,%3d,T:%3.2f"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v7, v2}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    goto/16 :goto_1b

    :cond_30
    const/4 v7, 0x1

    .line 149
    aget v8, v6, v7

    if-ne v8, v7, :cond_33

    const/4 v7, 0x2

    .line 150
    aget v8, v6, v7

    const/4 v10, -0x1

    if-ne v8, v10, :cond_31

    .line 151
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v6

    sget-object v8, Lutil/log/LogType;->q:Lutil/log/LogType;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, v0, Lx0/a;->v:[F

    aget v5, v5, v7

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/16 v16, 0x0

    aput-object v5, v2, v16

    iget-object v5, v0, Lx0/a;->C:[F

    aget v5, v5, v7

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/16 v20, 0x1

    aput-object v5, v2, v20

    iget-object v5, v0, Lx0/a;->C:[F

    aget v5, v5, v16

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v2, v7

    iget-object v5, v0, Lx0/a;->F:[I

    aget v5, v5, v16

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v19, 0x3

    aput-object v5, v2, v19

    iget-object v5, v0, Lx0/a;->F:[I

    aget v5, v5, v20

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v18, 0x4

    aput-object v5, v2, v18

    iget-object v5, v0, Lx0/a;->F:[I

    aget v5, v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x5

    aput-object v5, v2, v7

    iget-object v5, v0, Lx0/a;->F:[I

    aget v5, v5, v19

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x6

    aput-object v5, v2, v7

    iget v5, v0, Lx0/a;->K:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v15

    iget v5, v0, Lx0/a;->J:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v7, 0x8

    aput-object v5, v2, v7

    iget v5, v0, Lx0/a;->L:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v7, 0x9

    aput-object v5, v2, v7

    iget-object v5, v0, Lx0/a;->V:[F

    array-length v7, v5

    const/4 v15, 0x1

    sub-int/2addr v7, v15

    aget v5, v5, v7

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v2, v14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v13

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v12

    sget v3, Lu0/b;->X1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v11

    sget v3, Lx0/a;->K0:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    iget v3, v0, Lx0/a;->H0:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/16 v4, 0xf

    aput-object v3, v2, v4

    const-string v3, "\u4e0a\u4e0b\u5761\u89d2\u5ea6: %3.2f,  %4.2f,  %4.2f, \u7ed3\u679c\uff1a%4d\uff0c%4d\uff0c%4d\uff0c%4d  \u53f3\u8f6c  ,\u52a0\u901f\u4e2d\uff01\uff01\uff01tim:%3d,%3d,%3d,\u8f6c\u89d2\uff1a%3.2f,ACCSUM:%4d,%4d,spd:%3d,%3d,T:%3.2f"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v8, v2}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    goto/16 :goto_1b

    :cond_31
    move v5, v7

    .line 152
    aget v6, v6, v5

    const/4 v7, 0x1

    if-ne v6, v7, :cond_32

    .line 153
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v6

    sget-object v8, Lutil/log/LogType;->q:Lutil/log/LogType;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v10, v0, Lx0/a;->v:[F

    aget v10, v10, v5

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const/16 v16, 0x0

    aput-object v10, v2, v16

    iget-object v10, v0, Lx0/a;->C:[F

    aget v10, v10, v5

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v2, v7

    iget-object v10, v0, Lx0/a;->C:[F

    aget v10, v10, v16

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v2, v5

    iget-object v10, v0, Lx0/a;->F:[I

    aget v10, v10, v16

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v19, 0x3

    aput-object v10, v2, v19

    iget-object v10, v0, Lx0/a;->F:[I

    aget v10, v10, v7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v10, 0x4

    aput-object v7, v2, v10

    iget-object v10, v0, Lx0/a;->F:[I

    aget v10, v10, v5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v10, 0x5

    aput-object v5, v2, v10

    iget-object v5, v0, Lx0/a;->F:[I

    aget v5, v5, v19

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v10, 0x6

    aput-object v5, v2, v10

    iget v5, v0, Lx0/a;->K:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v15

    iget v5, v0, Lx0/a;->J:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v10, 0x8

    aput-object v5, v2, v10

    iget v5, v0, Lx0/a;->L:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v10, 0x9

    aput-object v5, v2, v10

    iget-object v5, v0, Lx0/a;->V:[F

    array-length v10, v5

    const/4 v15, 0x1

    sub-int/2addr v10, v15

    aget v5, v5, v10

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v2, v14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v13

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v12

    sget v3, Lu0/b;->X1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v11

    sget v3, Lx0/a;->K0:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    iget v3, v0, Lx0/a;->H0:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/16 v4, 0xf

    aput-object v3, v2, v4

    const-string v3, "\u4e0a\u4e0b\u5761\u89d2\u5ea6: %3.2f,  %4.2f,  %4.2f, \u7ed3\u679c\uff1a%4d\uff0c%4d\uff0c%4d\uff0c%4d  \u53f3\u8f6c  ,\u51cf\u901f\u4e2d\uff01\uff01\uff01tim:%3d,%3d,%3d,\u8f6c\u89d2\uff1a%3.2f,ACCSUM:%4d,%4d,spd:%3d,%3d,T:%3.2f"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v8, v2}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    goto/16 :goto_1b

    .line 154
    :cond_32
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v5

    sget-object v6, Lutil/log/LogType;->q:Lutil/log/LogType;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v8, v0, Lx0/a;->v:[F

    const/4 v10, 0x2

    aget v8, v8, v10

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    const/16 v16, 0x0

    aput-object v8, v2, v16

    iget-object v8, v0, Lx0/a;->C:[F

    aget v8, v8, v10

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    const/16 v18, 0x1

    aput-object v8, v2, v18

    iget-object v8, v0, Lx0/a;->C:[F

    aget v8, v8, v16

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v2, v10

    iget-object v8, v0, Lx0/a;->F:[I

    aget v8, v8, v16

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v19, 0x3

    aput-object v8, v2, v19

    iget-object v8, v0, Lx0/a;->F:[I

    aget v8, v8, v18

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v7, 0x4

    aput-object v8, v2, v7

    iget-object v8, v0, Lx0/a;->F:[I

    aget v8, v8, v10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v10, 0x5

    aput-object v8, v2, v10

    iget-object v8, v0, Lx0/a;->F:[I

    aget v8, v8, v19

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v10, 0x6

    aput-object v8, v2, v10

    iget v8, v0, Lx0/a;->K:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v15

    iget v8, v0, Lx0/a;->J:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v10, 0x8

    aput-object v8, v2, v10

    iget v8, v0, Lx0/a;->L:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v10, 0x9

    aput-object v8, v2, v10

    iget-object v8, v0, Lx0/a;->V:[F

    array-length v10, v8

    const/4 v15, 0x1

    sub-int/2addr v10, v15

    aget v8, v8, v10

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v2, v14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v13

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v12

    sget v3, Lu0/b;->X1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v11

    sget v3, Lx0/a;->K0:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    iget v3, v0, Lx0/a;->H0:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/16 v4, 0xf

    aput-object v3, v2, v4

    const-string v3, "\u4e0a\u4e0b\u5761\u89d2\u5ea6: %3.2f,  %4.2f,  %4.2f, \u7ed3\u679c\uff1a%4d\uff0c%4d\uff0c%4d\uff0c%4d  \u53f3\u8f6c  ,--------tim:%3d,%3d,%3d,\u8f6c\u89d2\uff1a%3.2f,ACCSUM:%4d,%4d,spd:%3d,%3d,T:%3.2f"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    goto/16 :goto_1b

    :cond_33
    const/4 v5, 0x2

    .line 155
    aget v8, v6, v5

    const/4 v10, -0x1

    if-ne v8, v10, :cond_34

    .line 156
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v6

    sget-object v8, Lutil/log/LogType;->q:Lutil/log/LogType;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v7, v0, Lx0/a;->v:[F

    aget v7, v7, v5

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const/16 v16, 0x0

    aput-object v7, v2, v16

    iget-object v7, v0, Lx0/a;->C:[F

    aget v7, v7, v5

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const/16 v20, 0x1

    aput-object v7, v2, v20

    iget-object v7, v0, Lx0/a;->C:[F

    aget v7, v7, v16

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v2, v5

    iget-object v7, v0, Lx0/a;->F:[I

    aget v7, v7, v16

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v19, 0x3

    aput-object v7, v2, v19

    iget-object v7, v0, Lx0/a;->F:[I

    aget v7, v7, v20

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v18, 0x4

    aput-object v7, v2, v18

    iget-object v7, v0, Lx0/a;->F:[I

    aget v7, v7, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x5

    aput-object v5, v2, v7

    iget-object v5, v0, Lx0/a;->F:[I

    aget v5, v5, v19

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x6

    aput-object v5, v2, v7

    iget v5, v0, Lx0/a;->K:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v15

    iget v5, v0, Lx0/a;->J:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v7, 0x8

    aput-object v5, v2, v7

    iget v5, v0, Lx0/a;->L:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v7, 0x9

    aput-object v5, v2, v7

    iget-object v5, v0, Lx0/a;->V:[F

    array-length v7, v5

    const/4 v15, 0x1

    sub-int/2addr v7, v15

    aget v5, v5, v7

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v2, v14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v13

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v12

    sget v3, Lu0/b;->X1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v11

    sget v3, Lx0/a;->K0:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    iget v3, v0, Lx0/a;->H0:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/16 v4, 0xf

    aput-object v3, v2, v4

    const-string v3, "\u4e0a\u4e0b\u5761\u89d2\u5ea6: %3.2f,  %4.2f,  %4.2f, \u7ed3\u679c\uff1a%4d\uff0c%4d\uff0c%4d\uff0c%4d -----,\u52a0\u901f\u4e2d\uff01\uff01\uff01tim:%3d,%3d,%3d,\u8f6c\u89d2\uff1a%3.2f,ACCSUM:%4d,%4d,spd:%3d,%3d,T:%3.2f"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v8, v2}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    goto/16 :goto_1b

    .line 157
    :cond_34
    aget v6, v6, v5

    const/4 v7, 0x1

    if-ne v6, v7, :cond_35

    .line 158
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v6

    sget-object v8, Lutil/log/LogType;->q:Lutil/log/LogType;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v10, v0, Lx0/a;->v:[F

    aget v10, v10, v5

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const/16 v16, 0x0

    aput-object v10, v2, v16

    iget-object v10, v0, Lx0/a;->C:[F

    aget v10, v10, v5

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v2, v7

    iget-object v10, v0, Lx0/a;->C:[F

    aget v10, v10, v16

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v2, v5

    iget-object v10, v0, Lx0/a;->F:[I

    aget v10, v10, v16

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v19, 0x3

    aput-object v10, v2, v19

    iget-object v10, v0, Lx0/a;->F:[I

    aget v10, v10, v7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v10, 0x4

    aput-object v7, v2, v10

    iget-object v10, v0, Lx0/a;->F:[I

    aget v10, v10, v5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v10, 0x5

    aput-object v5, v2, v10

    iget-object v5, v0, Lx0/a;->F:[I

    aget v5, v5, v19

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v10, 0x6

    aput-object v5, v2, v10

    iget v5, v0, Lx0/a;->K:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v15

    iget v5, v0, Lx0/a;->J:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v10, 0x8

    aput-object v5, v2, v10

    iget v5, v0, Lx0/a;->L:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v10, 0x9

    aput-object v5, v2, v10

    iget-object v5, v0, Lx0/a;->V:[F

    array-length v10, v5

    const/4 v15, 0x1

    sub-int/2addr v10, v15

    aget v5, v5, v10

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v2, v14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v13

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v12

    sget v3, Lu0/b;->X1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v11

    sget v3, Lx0/a;->K0:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    iget v3, v0, Lx0/a;->H0:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/16 v4, 0xf

    aput-object v3, v2, v4

    const-string v3, "\u4e0a\u4e0b\u5761\u89d2\u5ea6: %3.2f,  %4.2f,  %4.2f, \u7ed3\u679c\uff1a%4d\uff0c%4d\uff0c%4d\uff0c%4d -----,\u51cf\u901f\u4e2d\uff01\uff01\uff01tim:%3d,%3d,%3d,\u8f6c\u89d2\uff1a%3.2f,ACCSUM:%4d,%4d,spd:%3d,%3d,T:%3.2f"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v8, v2}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    goto/16 :goto_1b

    .line 159
    :cond_35
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v5

    sget-object v6, Lutil/log/LogType;->q:Lutil/log/LogType;

    new-array v8, v2, [Ljava/lang/Object;

    iget-object v2, v0, Lx0/a;->v:[F

    const/4 v10, 0x2

    aget v2, v2, v10

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/16 v16, 0x0

    aput-object v2, v8, v16

    iget-object v2, v0, Lx0/a;->C:[F

    aget v2, v2, v10

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/16 v18, 0x1

    aput-object v2, v8, v18

    iget-object v2, v0, Lx0/a;->C:[F

    aget v2, v2, v16

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v8, v10

    iget-object v2, v0, Lx0/a;->F:[I

    aget v2, v2, v16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v19, 0x3

    aput-object v2, v8, v19

    iget-object v2, v0, Lx0/a;->F:[I

    aget v2, v2, v18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v7, 0x4

    aput-object v2, v8, v7

    iget-object v7, v0, Lx0/a;->F:[I

    aget v7, v7, v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v10, 0x5

    aput-object v7, v8, v10

    iget-object v7, v0, Lx0/a;->F:[I

    aget v7, v7, v19

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v10, 0x6

    aput-object v7, v8, v10

    iget v7, v0, Lx0/a;->K:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v8, v15

    iget v7, v0, Lx0/a;->J:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v10, 0x8

    aput-object v7, v8, v10

    iget v7, v0, Lx0/a;->L:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v10, 0x9

    aput-object v7, v8, v10

    iget-object v7, v0, Lx0/a;->V:[F

    array-length v10, v7

    const/4 v15, 0x1

    sub-int/2addr v10, v15

    aget v7, v7, v10

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v8, v14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v13

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v12

    sget v3, Lu0/b;->X1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v11

    sget v3, Lx0/a;->K0:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v9

    iget v3, v0, Lx0/a;->H0:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/16 v4, 0xf

    aput-object v3, v8, v4

    const-string v3, "\u4e0a\u4e0b\u5761\u89d2\u5ea6: %3.2f,  %4.2f,  %4.2f, \u7ed3\u679c\uff1a%4d\uff0c%4d\uff0c%4d\uff0c%4d------,--------tim:%3d,%3d,%3d,\u8f6c\u89d2\uff1a%3.2f,ACCSUM:%4d,%4d,spd:%3d,%3d,T:%3.2f"

    invoke-static {v3, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    :cond_36
    :goto_1b
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_3a

    const/4 v3, 0x1

    new-array v4, v3, [I

    const/16 v3, 0x22

    const/4 v5, 0x0

    aput v3, v4, v5

    const/4 v3, 0x6

    .line 160
    invoke-virtual {v0, v3, v4}, Lx0/a;->r(I[I)[I

    move-result-object v4

    const/4 v3, 0x3

    new-array v5, v3, [F

    const/4 v6, 0x0

    :goto_1c
    if-ge v6, v3, :cond_37

    mul-int/lit8 v3, v6, 0x2

    add-int/lit8 v7, v3, 0x1

    .line 161
    aget v7, v4, v7

    aget v3, v4, v3

    invoke-static {v7, v3}, Lo1/s0;->x(II)I

    move-result v3

    invoke-virtual {v0, v3}, Lx0/a;->t(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lx0/a;->o(F)F

    move-result v3

    aput v3, v5, v6

    add-int/lit8 v6, v6, 0x1

    const/4 v3, 0x3

    goto :goto_1c

    :cond_37
    new-array v3, v3, [F

    const/4 v4, 0x0

    .line 162
    aget v6, v5, v4

    const v7, 0x3a83126f    # 0.001f

    mul-float/2addr v6, v7

    aput v6, v3, v4

    const/4 v6, 0x1

    .line 163
    aget v7, v5, v6

    const v8, 0x3a83126f    # 0.001f

    mul-float/2addr v7, v8

    aput v7, v3, v6

    const/4 v7, 0x2

    .line 164
    aget v5, v5, v7

    mul-float/2addr v5, v8

    aput v5, v3, v7

    .line 165
    iget-object v5, v0, Lx0/a;->u:[F

    aget v8, v3, v4

    iget v9, v0, Lx0/a;->N:I

    int-to-float v10, v9

    mul-float/2addr v8, v10

    aput v8, v5, v4

    .line 166
    aget v8, v3, v6

    int-to-float v10, v9

    mul-float/2addr v8, v10

    aput v8, v5, v6

    .line 167
    aget v3, v3, v7

    int-to-float v6, v9

    mul-float/2addr v3, v6

    aput v3, v5, v7

    .line 168
    iget-object v3, v0, Lx0/a;->V:[F

    aget v6, v5, v4

    iget-object v7, v0, Lx0/a;->t:[F

    aget v8, v7, v4

    sub-float/2addr v6, v8

    aput v6, v3, v4

    .line 169
    array-length v4, v3

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    aget v5, v5, v6

    aget v7, v7, v6

    sub-float/2addr v5, v7

    aput v5, v3, v4

    .line 170
    array-length v4, v3

    sub-int/2addr v4, v6

    aget v4, v3, v4

    const/high16 v5, 0x40a00000    # 5.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_38

    .line 171
    iget-object v3, v0, Lx0/a;->F:[I

    aput v6, v3, v6

    :goto_1d
    const/4 v2, 0x4

    const/4 v4, 0x0

    goto :goto_1f

    .line 172
    :cond_38
    array-length v4, v3

    sub-int/2addr v4, v6

    aget v3, v3, v4

    const/high16 v4, -0x3f600000    # -5.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_39

    .line 173
    iget-object v3, v0, Lx0/a;->F:[I

    const/4 v4, -0x1

    aput v4, v3, v6

    goto :goto_1d

    .line 174
    :cond_39
    iget-object v3, v0, Lx0/a;->F:[I

    const/4 v4, 0x0

    aput v4, v3, v6

    goto :goto_1e

    :cond_3a
    const/4 v4, 0x0

    const/4 v6, 0x1

    :goto_1e
    const/4 v2, 0x4

    :goto_1f
    and-int/2addr v1, v2

    if-eqz v1, :cond_3c

    .line 175
    iget v1, v0, Lx0/a;->M:I

    const/16 v3, 0x19

    if-lt v1, v3, :cond_3c

    .line 176
    iput v4, v0, Lx0/a;->M:I

    new-array v1, v6, [I

    const/16 v3, 0x20

    aput v3, v1, v4

    const/4 v3, 0x2

    .line 177
    invoke-virtual {v0, v3, v1}, Lx0/a;->r(I[I)[I

    move-result-object v1

    .line 178
    aget v3, v1, v6

    aget v1, v1, v4

    invoke-static {v3, v1}, Lo1/s0;->x(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lx0/a;->t(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lx0/a;->m(F)F

    move-result v1

    .line 179
    iget v3, v0, Lx0/a;->H0:F

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_3b

    .line 180
    iput v1, v0, Lx0/a;->H0:F

    .line 181
    invoke-static {}, Lx0/c;->X2()Lx0/c;

    move-result-object v1

    new-array v3, v6, [F

    iget v4, v0, Lx0/a;->H0:F

    const/4 v5, 0x0

    aput v4, v3, v5

    const/16 v4, 0x8

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v6, v3, v6}, Lx0/c;->H0(I[I[F[Ljava/lang/String;)V

    goto :goto_20

    :cond_3b
    const/4 v5, 0x0

    goto :goto_20

    :cond_3c
    move v5, v4

    .line 182
    :goto_20
    iget-object v1, v0, Lx0/a;->G:[I

    iget-object v3, v0, Lx0/a;->F:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 183
    iget-object v1, v0, Lx0/a;->F:[I

    array-length v3, v1

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, v0, Lx0/a;->G:[I

    .line 184
    invoke-static {}, Lx0/c;->X2()Lx0/c;

    move-result-object v1

    iget-object v3, v0, Lx0/a;->G:[I

    const/4 v4, 0x5

    invoke-virtual {v1, v4, v3}, Lx0/c;->a3(I[I)V

    .line 185
    :cond_3d
    iget-object v1, v0, Lx0/a;->D:[F

    iget-object v3, v0, Lx0/a;->C:[F

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 186
    iget-object v1, v0, Lx0/a;->C:[F

    array-length v3, v1

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    iput-object v1, v0, Lx0/a;->D:[F

    .line 187
    invoke-static {}, Lx0/c;->X2()Lx0/c;

    move-result-object v1

    iget-object v3, v0, Lx0/a;->D:[F

    const/4 v4, 0x0

    const/16 v6, 0x9

    invoke-virtual {v1, v6, v4, v3, v4}, Lx0/c;->H0(I[I[F[Ljava/lang/String;)V

    .line 188
    :cond_3e
    iget-object v1, v0, Lx0/a;->V:[F

    array-length v1, v1

    new-array v3, v1, [F

    .line 189
    :goto_21
    iget-object v4, v0, Lx0/a;->V:[F

    array-length v4, v4

    if-ge v5, v4, :cond_3f

    .line 190
    new-instance v4, Ljava/math/BigDecimal;

    iget-object v6, v0, Lx0/a;->V:[F

    aget v6, v6, v5

    float-to-double v6, v6

    invoke-direct {v4, v6, v7}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v2, 0x4

    const/4 v6, 0x2

    invoke-virtual {v4, v6, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->floatValue()F

    move-result v4

    aput v4, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    .line 191
    :cond_3f
    iget-object v2, v0, Lx0/a;->W:[F

    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v2

    if-nez v2, :cond_40

    .line 192
    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    iput-object v1, v0, Lx0/a;->W:[F

    .line 193
    invoke-static {}, Lx0/c;->X2()Lx0/c;

    move-result-object v1

    iget-object v2, v0, Lx0/a;->W:[F

    const/4 v3, 0x0

    const/4 v4, 0x6

    invoke-virtual {v1, v4, v3, v2, v3}, Lx0/c;->H0(I[I[F[Ljava/lang/String;)V

    :cond_40
    return-void
.end method

.method public varargs r(I[I)[I
    .locals 3

    .line 1
    iget-object v0, p0, Lx0/a;->f:Lo1/n;

    iget v1, p0, Lx0/a;->h:I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, p2}, Lo1/n;->e(IIZ[I)[I

    move-result-object p1

    return-object p1
.end method

.method public s(I)I
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 1
    invoke-virtual {p0, v0, v1}, Lx0/a;->r(I[I)[I

    move-result-object p1

    aget p1, p1, v2

    return p1
.end method

.method public t(I)I
    .locals 3

    const v0, 0x8000

    and-int/2addr v0, p1

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-ne v0, v1, :cond_1

    and-int/lit16 v1, p1, 0x7fff

    sub-int/2addr v1, v2

    not-int v1, v1

    and-int/lit16 v1, v1, 0x7fff

    mul-int/2addr v0, v1

    goto :goto_1

    :cond_1
    move v0, p1

    :goto_1
    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "%04X"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v0
.end method

.method public varargs u(I[I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lx0/a;->f:Lo1/n;

    if-eqz v0, :cond_0

    iget v1, p0, Lx0/a;->h:I

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    invoke-virtual {v0, v1, v2, p2}, Lo1/n;->d(I[I[I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method
