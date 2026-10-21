.class public Lx0/e;
.super Lx0/d;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field public static m0:[F


# instance fields
.field public A:[[F

.field public B:I

.field public C:I

.field public D:I

.field public E:I

.field public F:[F

.field public G:[F

.field public final H:I

.field public I:[F

.field public J:[[F

.field public K:[[F

.field public L:[[F

.field public M:I

.field public N:I

.field public final O:Ljava/lang/Runnable;

.field public final P:Ljava/lang/Runnable;

.field public final Q:I

.field public R:Ljava/lang/Runnable;

.field public S:Landroid/os/Handler;

.field public T:Ljava/lang/Runnable;

.field public final U:I

.field public final V:I

.field public final W:I

.field public X:[F

.field public Y:[F

.field public final Z:F

.field public a0:[F

.field public final b0:D

.field public final c:Z

.field public c0:I

.field public final d:Ljava/lang/String;

.field public d0:I

.field public e:Landroid/hardware/SensorManager;

.field public final e0:F

.field public f:[F

.field public f0:F

.field public g:[F

.field public g0:[F

.field public h:[F

.field public h0:I

.field public i:[F

.field public final i0:F

.field public j:[F

.field public j0:[F

.field public k:[F

.field public k0:[F

.field public l:[F

.field public l0:[F

.field public m:[I

.field public n:[I

.field public final o:I

.field public p:I

.field public q:[[F

.field public r:[[F

.field public s:[F

.field public t:[F

.field public u:[F

.field public v:[F

.field public final w:I

.field public x:Z

.field public y:Z

.field public z:[[F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lx0/e;->m0:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x400ccccd    # 2.2f
        0x40c00000    # 6.0f
        0x41500000    # 13.0f
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 6

    .line 1
    const-class v0, F

    invoke-direct {p0, p1}, Lx0/d;-><init>(I)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lx0/e;->c:Z

    const-string v1, "SGyro"

    .line 3
    iput-object v1, p0, Lx0/e;->d:Ljava/lang/String;

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lx0/e;->e:Landroid/hardware/SensorManager;

    const/4 v2, 0x3

    new-array v3, v2, [F

    .line 5
    iput-object v3, p0, Lx0/e;->f:[F

    new-array v3, v2, [F

    .line 6
    fill-array-data v3, :array_0

    iput-object v3, p0, Lx0/e;->g:[F

    new-array v3, v2, [F

    .line 7
    iput-object v3, p0, Lx0/e;->h:[F

    new-array v3, v2, [F

    .line 8
    iput-object v3, p0, Lx0/e;->i:[F

    new-array v3, v2, [F

    .line 9
    iput-object v3, p0, Lx0/e;->j:[F

    new-array v3, v2, [F

    .line 10
    fill-array-data v3, :array_1

    iput-object v3, p0, Lx0/e;->k:[F

    new-array v3, v2, [F

    .line 11
    iput-object v3, p0, Lx0/e;->l:[F

    const/4 v3, 0x4

    new-array v4, v3, [I

    .line 12
    fill-array-data v4, :array_2

    iput-object v4, p0, Lx0/e;->m:[I

    new-array v3, v3, [I

    .line 13
    iput-object v3, p0, Lx0/e;->n:[I

    .line 14
    iput v2, p0, Lx0/e;->o:I

    .line 15
    iput p1, p0, Lx0/e;->p:I

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 16
    fill-array-data v4, :array_3

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[F

    iput-object v4, p0, Lx0/e;->q:[[F

    new-array v4, v3, [I

    .line 17
    fill-array-data v4, :array_4

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[F

    iput-object v4, p0, Lx0/e;->r:[[F

    new-array v4, v2, [F

    .line 18
    iput-object v4, p0, Lx0/e;->s:[F

    new-array v4, v2, [F

    .line 19
    fill-array-data v4, :array_5

    iput-object v4, p0, Lx0/e;->t:[F

    const/4 v4, 0x6

    new-array v5, v4, [F

    .line 20
    iput-object v5, p0, Lx0/e;->u:[F

    new-array v4, v4, [F

    .line 21
    iput-object v4, p0, Lx0/e;->v:[F

    const/16 v4, 0x1a

    .line 22
    iput v4, p0, Lx0/e;->w:I

    .line 23
    iput-boolean p1, p0, Lx0/e;->x:Z

    .line 24
    iput-boolean p1, p0, Lx0/e;->y:Z

    .line 25
    iput-object v1, p0, Lx0/e;->z:[[F

    .line 26
    iput-object v1, p0, Lx0/e;->A:[[F

    .line 27
    iput v4, p0, Lx0/e;->B:I

    new-array v1, v2, [F

    .line 28
    iput-object v1, p0, Lx0/e;->F:[F

    new-array v1, v2, [F

    .line 29
    iput-object v1, p0, Lx0/e;->G:[F

    const/16 v1, 0x8

    .line 30
    iput v1, p0, Lx0/e;->H:I

    new-array v4, v2, [F

    .line 31
    iput-object v4, p0, Lx0/e;->I:[F

    new-array v4, v3, [I

    .line 32
    fill-array-data v4, :array_6

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[F

    iput-object v4, p0, Lx0/e;->J:[[F

    new-array v4, v3, [I

    .line 33
    fill-array-data v4, :array_7

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[F

    iput-object v4, p0, Lx0/e;->K:[[F

    new-array v4, v3, [I

    .line 34
    fill-array-data v4, :array_8

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lx0/e;->L:[[F

    .line 35
    iput v1, p0, Lx0/e;->M:I

    const/4 v0, 0x1

    .line 36
    iput v0, p0, Lx0/e;->N:I

    .line 37
    new-instance v1, Lx0/e$a;

    invoke-direct {v1, p0}, Lx0/e$a;-><init>(Lx0/e;)V

    iput-object v1, p0, Lx0/e;->O:Ljava/lang/Runnable;

    .line 38
    new-instance v1, Lx0/e$b;

    invoke-direct {v1, p0}, Lx0/e$b;-><init>(Lx0/e;)V

    iput-object v1, p0, Lx0/e;->P:Ljava/lang/Runnable;

    const/16 v1, 0x37

    .line 39
    iput v1, p0, Lx0/e;->Q:I

    .line 40
    new-instance v1, Lx0/e$c;

    invoke-direct {v1, p0}, Lx0/e$c;-><init>(Lx0/e;)V

    iput-object v1, p0, Lx0/e;->R:Ljava/lang/Runnable;

    .line 41
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lx0/e;->S:Landroid/os/Handler;

    .line 42
    new-instance v1, Lx0/e$d;

    invoke-direct {v1, p0}, Lx0/e$d;-><init>(Lx0/e;)V

    iput-object v1, p0, Lx0/e;->T:Ljava/lang/Runnable;

    .line 43
    iput p1, p0, Lx0/e;->U:I

    .line 44
    iput v0, p0, Lx0/e;->V:I

    .line 45
    iput v3, p0, Lx0/e;->W:I

    new-array v0, v2, [F

    .line 46
    fill-array-data v0, :array_9

    iput-object v0, p0, Lx0/e;->X:[F

    new-array v0, v2, [F

    .line 47
    fill-array-data v0, :array_a

    iput-object v0, p0, Lx0/e;->Y:[F

    const v0, 0x3089705f    # 1.0E-9f

    .line 48
    iput v0, p0, Lx0/e;->Z:F

    new-array v0, v2, [F

    .line 49
    fill-array-data v0, :array_b

    iput-object v0, p0, Lx0/e;->a0:[F

    const-wide v0, 0x3fb3a92a30553261L    # 0.0768

    .line 50
    iput-wide v0, p0, Lx0/e;->b0:D

    .line 51
    iput p1, p0, Lx0/e;->c0:I

    const/16 v0, 0x10

    .line 52
    iput v0, p0, Lx0/e;->d0:I

    const/high16 v0, 0x40000000    # 2.0f

    .line 53
    iput v0, p0, Lx0/e;->e0:F

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lx0/e;->f0:F

    new-array v0, v2, [F

    .line 55
    fill-array-data v0, :array_c

    iput-object v0, p0, Lx0/e;->g0:[F

    .line 56
    iput p1, p0, Lx0/e;->h0:I

    const p1, 0x3e8a3d71    # 0.27f

    .line 57
    iput p1, p0, Lx0/e;->i0:F

    new-array p1, v2, [F

    .line 58
    fill-array-data p1, :array_d

    iput-object p1, p0, Lx0/e;->j0:[F

    new-array p1, v2, [F

    .line 59
    fill-array-data p1, :array_e

    iput-object p1, p0, Lx0/e;->k0:[F

    new-array p1, v2, [F

    .line 60
    fill-array-data p1, :array_f

    iput-object p1, p0, Lx0/e;->l0:[F

    .line 61
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object p1

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lx0/e;->e:Landroid/hardware/SensorManager;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x3
        0x3
    .end array-data

    :array_4
    .array-data 4
        0x3
        0x3
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_6
    .array-data 4
        0x3
        0x8
    .end array-data

    :array_7
    .array-data 4
        0x3
        0x8
    .end array-data

    :array_8
    .array-data 4
        0x3
        0x1a
    .end array-data

    :array_9
    .array-data 4
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
        0x0
        0x0
        0x0
    .end array-data

    :array_c
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_d
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_e
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_f
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static synthetic k(Lx0/e;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lx0/e;->P:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lx0/d;->a(Z)V

    .line 2
    invoke-virtual {p0}, Lx0/e;->t()V

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lx0/e;->S:Landroid/os/Handler;

    iget-object v1, p0, Lx0/e;->T:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lo1/h;->b:Lo1/y;

    iget-object v1, p0, Lx0/e;->R:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lx0/e;->O:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lu0/c;->e:Lo1/y;

    iget-object v1, p0, Lx0/e;->O:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(ILy/b;)Z
    .locals 4

    const/16 v0, 0xa

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-array v0, v2, [I

    .line 1
    iget v3, p0, Lx0/e;->N:I

    aput v3, v0, v1

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, v1, v1}, Ly/b;->H0(I[I[F[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    :goto_0
    move v2, v1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return v2
.end method

.method public f(I[I[F[Ljava/lang/String;)Z
    .locals 2

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-eqz p1, :cond_2

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    goto :goto_2

    .line 1
    :cond_0
    invoke-static {p2, p3}, Lo1/s0;->h([II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    aget v0, p2, p3

    iget v1, p0, Lx0/e;->N:I

    if-eq v0, v1, :cond_3

    .line 3
    aget p2, p2, p3

    if-ne p2, p4, :cond_1

    move p2, p4

    goto :goto_0

    :cond_1
    const/4 p2, -0x1

    :goto_0
    iput p2, p0, Lx0/e;->N:I

    .line 4
    invoke-static {}, Lx0/c;->X2()Lx0/c;

    move-result-object p2

    new-array v0, p4, [I

    iget v1, p0, Lx0/e;->N:I

    aput v1, v0, p3

    invoke-virtual {p2, p1, v0}, Lx0/c;->a3(I[I)V

    .line 5
    iget-object p1, p0, Lx0/d;->b:Lo1/h0;

    iget p2, p0, Lx0/e;->N:I

    const/4 p3, 0x3

    invoke-virtual {p1, p3, p2}, Lo1/h0;->q(II)V

    .line 6
    iget-object p1, p0, Lx0/d;->b:Lo1/h0;

    invoke-virtual {p1, p3}, Lo1/h0;->e(I)V

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {p0, p4}, Lx0/e;->a(Z)V

    :cond_3
    :goto_1
    move p3, p4

    :goto_2
    return p3
.end method

.method public g(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lchip/Chip$UEventName;->o:Lchip/Chip$UEventName;

    invoke-virtual {v0}, Lchip/Chip$UEventName;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    sget p1, Lu0/b;->a0:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    sget p1, Lu0/b;->g:I

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lx0/e;->e:Landroid/hardware/SensorManager;

    invoke-virtual {p1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 4
    iget-object p1, p0, Lx0/e;->S:Landroid/os/Handler;

    iget-object v0, p0, Lx0/e;->P:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    iget-object p1, p0, Lx0/e;->S:Landroid/os/Handler;

    iget-object v0, p0, Lx0/e;->P:Ljava/lang/Runnable;

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public i(Lo1/h0;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lx0/d;->i(Lo1/h0;)V

    .line 2
    iget v0, p0, Lx0/e;->N:I

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lo1/h0;->h(II)I

    move-result p1

    iput p1, p0, Lx0/e;->N:I

    .line 3
    invoke-static {}, Lx0/c;->X2()Lx0/c;

    move-result-object p1

    const/4 v0, 0x1

    new-array v2, v0, [I

    iget v3, p0, Lx0/e;->N:I

    const/4 v4, 0x0

    aput v3, v2, v4

    const/16 v3, 0xa

    invoke-virtual {p1, v3, v2}, Lx0/c;->a3(I[I)V

    new-array p1, v1, [F

    .line 4
    fill-array-data p1, :array_0

    invoke-virtual {p0, v0, p1}, Lx0/d;->d(I[F)[F

    move-result-object p1

    iput-object p1, p0, Lx0/e;->t:[F

    new-array p1, v1, [F

    .line 5
    fill-array-data p1, :array_1

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lx0/d;->d(I[F)[F

    move-result-object p1

    iput-object p1, p0, Lx0/e;->i:[F

    new-array p1, v1, [F

    .line 6
    fill-array-data p1, :array_2

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lx0/d;->d(I[F)[F

    move-result-object p1

    iput-object p1, p0, Lx0/e;->G:[F

    new-array p1, v1, [F

    .line 7
    fill-array-data p1, :array_3

    invoke-virtual {p0, v0, p1}, Lx0/d;->d(I[F)[F

    move-result-object p1

    iput-object p1, p0, Lx0/e;->j:[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
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
.end method

.method public j()V
    .locals 5

    .line 1
    sget-object v0, Lu0/c;->e:Lo1/y;

    iget-object v1, p0, Lx0/e;->O:Ljava/lang/Runnable;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lx0/e;->O:Ljava/lang/Runnable;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 3
    iget-object v0, p0, Lx0/e;->S:Landroid/os/Handler;

    iget-object v1, p0, Lx0/e;->T:Ljava/lang/Runnable;

    const-wide/16 v3, 0xfa

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4
    sget-object v0, Lo1/h;->b:Lo1/y;

    iget-object v1, p0, Lx0/e;->R:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

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

.method public final m(Landroid/hardware/SensorEvent;)V
    .locals 11

    .line 1
    iget v0, p0, Lx0/e;->M:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    sub-int/2addr v0, v1

    .line 2
    iput v0, p0, Lx0/e;->M:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    .line 3
    iput v0, p0, Lx0/e;->M:I

    :goto_0
    const/4 v0, 0x0

    move v2, v0

    .line 4
    :goto_1
    iget-object v3, p0, Lx0/e;->s:[F

    array-length v4, v3

    const/4 v5, 0x0

    if-ge v2, v4, :cond_1

    .line 5
    aput v5, v3, v2

    .line 6
    iget-object v3, p0, Lx0/e;->F:[F

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v2

    iget-object v5, p0, Lx0/e;->f:[F

    aget v5, v5, v2

    sub-float/2addr v4, v5

    aput v4, v3, v2

    .line 7
    iget-object v4, p0, Lx0/e;->I:[F

    aget v3, v3, v2

    iget-object v5, p0, Lx0/e;->G:[F

    aget v5, v5, v2

    sub-float/2addr v3, v5

    aput v3, v4, v2

    .line 8
    iget-object v3, p0, Lx0/e;->K:[[F

    aget-object v3, v3, v2

    iget v5, p0, Lx0/e;->M:I

    aget v4, v4, v2

    aput v4, v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 9
    :cond_1
    iget v2, p0, Lx0/e;->M:I

    if-nez v2, :cond_2

    move v2, v0

    .line 10
    :goto_2
    iget-object v3, p0, Lx0/e;->K:[[F

    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 11
    aget-object v4, v3, v2

    iget-object v6, p0, Lx0/e;->J:[[F

    aget-object v6, v6, v2

    aget-object v3, v3, v2

    array-length v3, v3

    invoke-static {v4, v0, v6, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    move v2, v0

    :goto_3
    const/4 v3, 0x2

    if-ge v2, v3, :cond_3

    .line 12
    iget-object v4, p0, Lx0/e;->r:[[F

    aget-object v6, v4, v0

    iget-object v7, p0, Lx0/e;->q:[[F

    aget-object v8, v7, v0

    add-int/lit8 v9, v2, 0x1

    aget v8, v8, v9

    aget-object v10, v7, v0

    aget v10, v10, v2

    sub-float/2addr v8, v10

    aput v8, v6, v2

    .line 13
    aget-object v6, v4, v1

    aget-object v8, v7, v1

    aget v8, v8, v9

    aget-object v10, v7, v1

    aget v10, v10, v2

    sub-float/2addr v8, v10

    aput v8, v6, v2

    .line 14
    aget-object v4, v4, v3

    aget-object v6, v7, v3

    aget v6, v6, v9

    aget-object v8, v7, v3

    aget v8, v8, v2

    sub-float/2addr v6, v8

    aput v6, v4, v2

    .line 15
    aget-object v4, v7, v0

    aget-object v6, v7, v0

    aget v6, v6, v9

    aput v6, v4, v2

    .line 16
    aget-object v4, v7, v1

    aget-object v6, v7, v1

    aget v6, v6, v9

    aput v6, v4, v2

    .line 17
    aget-object v4, v7, v3

    aget-object v3, v7, v3

    aget v3, v3, v9

    aput v3, v4, v2

    move v2, v9

    goto :goto_3

    .line 18
    :cond_3
    iget-object v4, p0, Lx0/e;->r:[[F

    aget-object v6, v4, v0

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v7, p1, v0

    iget-object v8, p0, Lx0/e;->q:[[F

    aget-object v9, v8, v0

    aget v9, v9, v2

    sub-float/2addr v7, v9

    aput v7, v6, v2

    .line 19
    aget-object v6, v4, v1

    aget v7, p1, v1

    aget-object v9, v8, v1

    aget v9, v9, v2

    sub-float/2addr v7, v9

    aput v7, v6, v2

    .line 20
    aget-object v4, v4, v3

    aget v6, p1, v3

    aget-object v7, v8, v3

    aget v7, v7, v2

    sub-float/2addr v6, v7

    aput v6, v4, v2

    .line 21
    aget-object v4, v8, v0

    aget v6, p1, v0

    aput v6, v4, v2

    .line 22
    aget-object v4, v8, v1

    aget v6, p1, v1

    aput v6, v4, v2

    .line 23
    aget-object v4, v8, v3

    aget p1, p1, v3

    aput p1, v4, v2

    move p1, v0

    .line 24
    :goto_4
    iget-object v2, p0, Lx0/e;->s:[F

    array-length v2, v2

    const/4 v4, 0x3

    if-ge p1, v2, :cond_6

    move v2, v0

    :goto_5
    if-ge v2, v4, :cond_5

    .line 25
    iget-object v6, p0, Lx0/e;->r:[[F

    aget-object v7, v6, p1

    aget v7, v7, v2

    cmpl-float v7, v7, v5

    if-lez v7, :cond_4

    .line 26
    iget-object v7, p0, Lx0/e;->s:[F

    aget v8, v7, p1

    aget-object v6, v6, p1

    aget v6, v6, v2

    add-float/2addr v8, v6

    aput v8, v7, p1

    goto :goto_6

    .line 27
    :cond_4
    iget-object v7, p0, Lx0/e;->s:[F

    aget v8, v7, p1

    aget-object v6, v6, p1

    aget v6, v6, v2

    sub-float/2addr v8, v6

    aput v8, v7, p1

    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 28
    :cond_6
    iput v0, p0, Lx0/e;->p:I

    move p1, v0

    :goto_7
    if-ge p1, v4, :cond_a

    .line 29
    iget-object v2, p0, Lx0/e;->r:[[F

    aget-object v5, v2, v1

    aget v5, v5, p1

    float-to-double v5, v5

    const-wide v7, 0x3fceb851eb851eb8L    # 0.24

    cmpl-double v5, v5, v7

    const-wide v9, -0x403147ae147ae148L    # -0.24

    if-lez v5, :cond_7

    aget-object v5, v2, v3

    aget v5, v5, p1

    float-to-double v5, v5

    cmpg-double v5, v5, v9

    if-ltz v5, :cond_8

    :cond_7
    aget-object v5, v2, v1

    aget v5, v5, p1

    float-to-double v5, v5

    cmpg-double v5, v5, v9

    if-gez v5, :cond_9

    aget-object v2, v2, v3

    aget v2, v2, p1

    float-to-double v5, v2

    cmpl-double v2, v5, v7

    if-lez v2, :cond_9

    .line 30
    :cond_8
    iget v2, p0, Lx0/e;->p:I

    add-int/2addr v2, v1

    iput v2, p0, Lx0/e;->p:I

    :cond_9
    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    .line 31
    :cond_a
    iget p1, p0, Lx0/e;->p:I

    if-lt p1, v1, :cond_13

    .line 32
    iget-object p1, p0, Lx0/e;->s:[F

    aget v2, p1, v1

    sget-object v5, Lx0/e;->m0:[F

    aget v6, v5, v4

    cmpl-float v2, v2, v6

    if-gtz v2, :cond_12

    aget v2, p1, v3

    aget v6, v5, v4

    cmpl-float v2, v2, v6

    if-lez v2, :cond_b

    goto :goto_b

    .line 33
    :cond_b
    aget v2, p1, v1

    aget v6, v5, v3

    cmpl-float v2, v2, v6

    if-gtz v2, :cond_11

    aget v2, p1, v3

    aget v6, v5, v3

    cmpl-float v2, v2, v6

    if-lez v2, :cond_c

    goto :goto_a

    .line 34
    :cond_c
    aget v2, p1, v1

    aget v6, v5, v1

    cmpl-float v2, v2, v6

    if-gtz v2, :cond_10

    aget v2, p1, v3

    aget v6, v5, v1

    cmpl-float v2, v2, v6

    if-lez v2, :cond_d

    goto :goto_9

    .line 35
    :cond_d
    aget v2, p1, v1

    aget v6, v5, v0

    cmpl-float v2, v2, v6

    if-gtz v2, :cond_f

    aget p1, p1, v3

    aget v2, v5, v0

    cmpl-float p1, p1, v2

    if-lez p1, :cond_e

    goto :goto_8

    .line 36
    :cond_e
    iget-object p1, p0, Lx0/e;->m:[I

    aput v0, p1, v4

    goto :goto_c

    .line 37
    :cond_f
    :goto_8
    iget-object p1, p0, Lx0/e;->m:[I

    aput v1, p1, v4

    goto :goto_c

    .line 38
    :cond_10
    :goto_9
    iget-object p1, p0, Lx0/e;->m:[I

    aput v3, p1, v4

    goto :goto_c

    .line 39
    :cond_11
    :goto_a
    iget-object p1, p0, Lx0/e;->m:[I

    aput v4, p1, v4

    goto :goto_c

    .line 40
    :cond_12
    :goto_b
    iget-object p1, p0, Lx0/e;->m:[I

    const/4 v0, 0x4

    aput v0, p1, v4

    goto :goto_c

    .line 41
    :cond_13
    iget-object p1, p0, Lx0/e;->m:[I

    aput v0, p1, v4

    :goto_c
    return-void
.end method

.method public final n(Landroid/hardware/SensorEvent;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lx0/e;->f:[F

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v2, p1, v1

    aput v2, v0, v1

    const/4 v2, 0x1

    .line 2
    aget v3, p1, v2

    aput v3, v0, v2

    const/4 v3, 0x2

    .line 3
    aget p1, p1, v3

    aput p1, v0, v3

    .line 4
    aget p1, v0, v1

    const v4, 0x411ccccd    # 9.8f

    div-float/2addr p1, v4

    float-to-double v5, p1

    aget p1, v0, v2

    div-float/2addr p1, v4

    float-to-double v7, p1

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    iget-object p1, p0, Lx0/e;->f:[F

    aget p1, p1, v3

    div-float/2addr p1, v4

    float-to-double v11, p1

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    add-double/2addr v7, v11

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->atan(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    double-to-float p1, v5

    .line 5
    iget-object v0, p0, Lx0/e;->f:[F

    aget v5, v0, v2

    div-float/2addr v5, v4

    float-to-double v5, v5

    aget v0, v0, v3

    div-float/2addr v0, v4

    float-to-double v7, v0

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    iget-object v0, p0, Lx0/e;->f:[F

    aget v0, v0, v1

    div-float/2addr v0, v4

    float-to-double v11, v0

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    add-double/2addr v7, v11

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->atan(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    double-to-float v0, v5

    .line 6
    iget-object v5, p0, Lx0/e;->f:[F

    aget v6, v5, v3

    div-float/2addr v6, v4

    float-to-double v6, v6

    aget v5, v5, v1

    div-float/2addr v5, v4

    float-to-double v11, v5

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    iget-object v5, p0, Lx0/e;->f:[F

    aget v5, v5, v2

    div-float/2addr v5, v4

    float-to-double v4, v5

    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v11, v4

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    div-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->atan(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 7
    iget-object v5, p0, Lx0/e;->f:[F

    aget v6, v5, v1

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    const/high16 v8, -0x3ccc0000    # -180.0f

    const/high16 v11, 0x43340000    # 180.0f

    if-gtz v6, :cond_2

    aget v6, v5, v2

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_2

    aget v6, v5, v3

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_2

    aget v6, v5, v2

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    aget v5, v5, v3

    cmpl-float v5, v5, v7

    if-lez v5, :cond_0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_2

    :cond_0
    cmpl-float v5, p1, v7

    if-lez v5, :cond_1

    .line 8
    iget-object v5, p0, Lx0/e;->h:[F

    sub-float p1, v11, p1

    aput p1, v5, v1

    goto :goto_0

    .line 9
    :cond_1
    iget-object v5, p0, Lx0/e;->h:[F

    sub-float p1, v8, p1

    aput p1, v5, v1

    goto :goto_0

    .line 10
    :cond_2
    iget-object v5, p0, Lx0/e;->h:[F

    aput p1, v5, v1

    .line 11
    :goto_0
    iget-object p1, p0, Lx0/e;->h:[F

    aget v5, p1, v1

    cmpg-float v5, v5, v7

    const/high16 v6, 0x43b40000    # 360.0f

    if-gez v5, :cond_3

    aget v5, p1, v1

    add-float/2addr v5, v6

    aput v5, p1, v1

    .line 12
    :cond_3
    iget-object v5, p0, Lx0/e;->f:[F

    aget v12, v5, v3

    cmpg-float v12, v12, v7

    if-gez v12, :cond_5

    cmpl-float v12, v0, v7

    if-lez v12, :cond_4

    sub-float v0, v11, v0

    .line 13
    aput v0, p1, v2

    goto :goto_1

    :cond_4
    sub-float v0, v8, v0

    .line 14
    aput v0, p1, v2

    goto :goto_1

    .line 15
    :cond_5
    aput v0, p1, v2

    .line 16
    :goto_1
    aget v0, p1, v2

    cmpg-float v0, v0, v7

    if-gez v0, :cond_6

    aget v0, p1, v2

    add-float/2addr v0, v6

    aput v0, p1, v2

    .line 17
    :cond_6
    aget v0, v5, v2

    cmpl-float v0, v0, v7

    if-lez v0, :cond_8

    cmpl-float v0, v4, v7

    if-lez v0, :cond_7

    sub-float v0, v11, v4

    .line 18
    aput v0, p1, v3

    goto :goto_2

    :cond_7
    sub-float/2addr v8, v4

    .line 19
    aput v8, p1, v3

    goto :goto_2

    .line 20
    :cond_8
    aput v4, p1, v3

    .line 21
    :goto_2
    aget v0, p1, v3

    cmpg-float v0, v0, v7

    if-gez v0, :cond_9

    aget v0, p1, v3

    add-float/2addr v0, v6

    aput v0, p1, v3

    :cond_9
    const/4 p1, 0x3

    new-array v0, p1, [F

    move v4, v1

    .line 22
    :goto_3
    iget-object v5, p0, Lx0/e;->k:[F

    array-length v5, v5

    if-ge v4, v5, :cond_d

    .line 23
    iget-object v5, p0, Lx0/e;->h:[F

    aget v5, v5, v4

    iget-object v8, p0, Lx0/e;->i:[F

    aget v8, v8, v4

    sub-float/2addr v5, v8

    aput v5, v0, v4

    .line 24
    aget v5, v0, v4

    cmpg-float v5, v5, v7

    if-gez v5, :cond_a

    .line 25
    aget v5, v0, v4

    add-float/2addr v5, v6

    aput v5, v0, v4

    .line 26
    :cond_a
    aget v5, v0, v4

    cmpl-float v5, v5, v6

    if-lez v5, :cond_b

    .line 27
    aput v6, v0, v4

    .line 28
    :cond_b
    aget v5, v0, v4

    cmpl-float v5, v5, v11

    if-lez v5, :cond_c

    .line 29
    aget v5, v0, v4

    sub-float/2addr v5, v6

    aput v5, v0, v4

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 30
    :cond_d
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lx0/e;->k:[F

    .line 31
    iget-object v0, p0, Lx0/e;->j:[F

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v4, p0, Lx0/e;->j:[F

    aget v4, v4, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v0, v0, v4

    if-gez v0, :cond_e

    .line 32
    iget-object v0, p0, Lx0/e;->k:[F

    aget v4, v0, v2

    .line 33
    aget v5, v0, v3

    aput v5, v0, v2

    .line 34
    aput v4, v0, v3

    .line 35
    :cond_e
    iget-object v0, p0, Lx0/e;->k:[F

    aget v4, v0, v3

    float-to-double v4, v4

    cmpl-double v4, v4, v9

    if-lez v4, :cond_f

    .line 36
    iget-object v4, p0, Lx0/e;->m:[I

    aput v2, v4, v1

    goto :goto_4

    .line 37
    :cond_f
    aget v4, v0, v3

    float-to-double v4, v4

    const-wide/high16 v6, -0x4000000000000000L    # -2.0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_10

    .line 38
    iget-object v4, p0, Lx0/e;->m:[I

    const/4 v5, -0x1

    aput v5, v4, v1

    goto :goto_4

    .line 39
    :cond_10
    iget-object v4, p0, Lx0/e;->m:[I

    aput v1, v4, v1

    .line 40
    :goto_4
    sget v4, Lu0/b;->X1:I

    if-eqz v4, :cond_11

    .line 41
    iget-object v4, p0, Lx0/e;->m:[I

    aget v5, v4, v2

    if-eqz v5, :cond_11

    .line 42
    aget v5, v0, v3

    float-to-double v5, v5

    const-wide/high16 v7, 0x4014000000000000L    # 5.0

    cmpg-double v5, v5, v7

    if-gez v5, :cond_11

    aget v0, v0, v3

    float-to-double v5, v0

    const-wide/high16 v7, -0x3fec000000000000L    # -5.0

    cmpl-double v0, v5, v7

    if-lez v0, :cond_11

    .line 43
    aput v1, v4, v1

    .line 44
    :cond_11
    iget-object v0, p0, Lx0/e;->n:[I

    iget-object v4, p0, Lx0/e;->m:[I

    invoke-static {v0, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    const/4 v4, 0x5

    if-nez v0, :cond_12

    .line 45
    iget-object v0, p0, Lx0/e;->m:[I

    array-length v5, v0

    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lx0/e;->n:[I

    .line 46
    invoke-static {}, Lx0/c;->X2()Lx0/c;

    move-result-object v0

    iget-object v5, p0, Lx0/e;->n:[I

    invoke-virtual {v0, v4, v5}, Lx0/c;->a3(I[I)V

    .line 47
    :cond_12
    iget-object v0, p0, Lx0/e;->l:[F

    iget-object v5, p0, Lx0/e;->k:[F

    invoke-static {v0, v5}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    const/16 v5, 0x9

    const/4 v6, 0x0

    if-nez v0, :cond_13

    .line 48
    iget-object v0, p0, Lx0/e;->k:[F

    array-length v7, v0

    invoke-static {v0, v7}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lx0/e;->l:[F

    .line 49
    invoke-static {}, Lx0/c;->X2()Lx0/c;

    move-result-object v0

    iget-object v7, p0, Lx0/e;->l:[F

    invoke-virtual {v0, v5, v6, v7, v6}, Lx0/c;->H0(I[I[F[Ljava/lang/String;)V

    .line 50
    :cond_13
    iget-object v0, p0, Lx0/e;->u:[F

    iget-object v7, p0, Lx0/e;->v:[F

    invoke-static {v0, v7}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    const/4 v7, 0x6

    if-nez v0, :cond_14

    .line 51
    iget-object v0, p0, Lx0/e;->u:[F

    array-length v8, v0

    invoke-static {v0, v8}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lx0/e;->v:[F

    .line 52
    invoke-static {}, Lx0/c;->X2()Lx0/c;

    move-result-object v0

    iget-object v8, p0, Lx0/e;->v:[F

    invoke-virtual {v0, v7, v6, v8, v6}, Lx0/c;->H0(I[I[F[Ljava/lang/String;)V

    .line 53
    :cond_14
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    sget-object v6, Lutil/log/LogType;->q:Lutil/log/LogType;

    const/16 v8, 0xd

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lx0/e;->k:[F

    aget v9, v9, v3

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v1

    iget-object v9, p0, Lx0/e;->k:[F

    aget v9, v9, v1

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v2

    iget-object v9, p0, Lx0/e;->f:[F

    aget v9, v9, v1

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v3

    iget-object v9, p0, Lx0/e;->f:[F

    aget v9, v9, v2

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, p1

    const/4 p1, 0x4

    iget-object v9, p0, Lx0/e;->f:[F

    aget v9, v9, v3

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, p1

    iget-object p1, p0, Lx0/e;->g:[F

    aget p1, p1, v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v8, v4

    iget-object p1, p0, Lx0/e;->g:[F

    aget p1, p1, v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v8, v7

    const/4 p1, 0x7

    iget-object v4, p0, Lx0/e;->g:[F

    aget v4, v4, v3

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v8, p1

    const/16 p1, 0x8

    sget v4, Lu0/b;->X1:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, p1

    iget-object p1, p0, Lx0/e;->l0:[F

    aget p1, p1, v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v8, v5

    const/16 p1, 0xa

    iget-object v1, p0, Lx0/e;->l0:[F

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v8, p1

    const/16 p1, 0xb

    iget-object v1, p0, Lx0/e;->l0:[F

    aget v1, v1, v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v8, p1

    const/16 p1, 0xc

    iget v1, p0, Lx0/e;->d0:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, p1

    const-string p1, "PD:%4.2f,QX:%4.2f,gra\uff1a%4.2f\uff0c%4.2f\uff0c%4.2f,acc: %4.2f\uff0c%4.2f\uff0c%4.2f,spd:%3d,g: %4.2f\uff0c%4.2f\uff0c%4.2f,num: %d"

    invoke-static {p1, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v6, p1}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    return-void
.end method

.method public o(Landroid/hardware/SensorEvent;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lx0/e;->x:Z

    if-eqz v0, :cond_2

    .line 2
    iget v0, p0, Lx0/e;->f0:F

    const v1, 0x40001062    # 2.001f

    cmpg-float v1, v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gez v1, :cond_0

    .line 3
    iget-object v1, p0, Lx0/e;->g0:[F

    aget v4, v1, v2

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, p1, v2

    add-float/2addr v4, v5

    aput v4, v1, v2

    .line 4
    aget v2, v1, v3

    aget v4, p1, v3

    add-float/2addr v2, v4

    aput v2, v1, v3

    const/4 v2, 0x2

    .line 5
    aget v4, v1, v2

    aget p1, p1, v2

    add-float/2addr v4, p1

    aput v4, v1, v2

    .line 6
    iget-object p1, p0, Lx0/e;->X:[F

    aget p1, p1, v2

    add-float/2addr v0, p1

    iput v0, p0, Lx0/e;->f0:F

    .line 7
    iget p1, p0, Lx0/e;->h0:I

    add-int/2addr p1, v3

    iput p1, p0, Lx0/e;->h0:I

    goto :goto_1

    .line 8
    :cond_0
    iput-boolean v2, p0, Lx0/e;->x:Z

    .line 9
    :goto_0
    iget-object p1, p0, Lx0/e;->g0:[F

    array-length v0, p1

    if-ge v2, v0, :cond_1

    .line 10
    iget-object v0, p0, Lx0/e;->t:[F

    aget p1, p1, v2

    iget v1, p0, Lx0/e;->h0:I

    int-to-float v1, v1

    div-float/2addr p1, v1

    aput p1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11
    :cond_1
    iget-object p1, p0, Lx0/d;->b:Lo1/h0;

    iget-object v0, p0, Lx0/e;->t:[F

    invoke-virtual {p1, v3, v0}, Lo1/h0;->p(I[F)V

    .line 12
    iget-object p1, p0, Lx0/d;->b:Lo1/h0;

    invoke-virtual {p1, v3}, Lo1/h0;->e(I)V

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "angle_bak: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lx0/e;->t:[F

    invoke-static {v0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " caliGyroCnt: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lx0/e;->h0:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "cali"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    .line 1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    .line 2
    iget-object v1, p0, Lx0/e;->S:Landroid/os/Handler;

    iget-object v2, p0, Lx0/e;->P:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/16 v2, 0x9

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, v1, p1}, Lx0/e;->s(ILandroid/hardware/SensorEvent;)V

    .line 4
    invoke-virtual {p0, p1}, Lx0/e;->n(Landroid/hardware/SensorEvent;)V

    .line 5
    invoke-virtual {p0}, Lx0/e;->q()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    .line 6
    invoke-virtual {p0, v0, p1}, Lx0/e;->s(ILandroid/hardware/SensorEvent;)V

    .line 7
    invoke-virtual {p0, p1}, Lx0/e;->p(Landroid/hardware/SensorEvent;)V

    .line 8
    invoke-virtual {p0, p1}, Lx0/e;->o(Landroid/hardware/SensorEvent;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0, p1}, Lx0/e;->s(ILandroid/hardware/SensorEvent;)V

    .line 10
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v2, p0, Lx0/e;->g:[F

    array-length v3, v2

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    invoke-virtual {p0, p1}, Lx0/e;->m(Landroid/hardware/SensorEvent;)V

    :goto_0
    return-void
.end method

.method public final p(Landroid/hardware/SensorEvent;)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Lx0/e;->j0:[F

    array-length v3, v2

    const/4 v4, 0x2

    if-ge v1, v3, :cond_0

    .line 2
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v1

    iget-object v5, p0, Lx0/e;->t:[F

    aget v5, v5, v1

    sub-float/2addr v3, v5

    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    double-to-float v3, v5

    iget-object v5, p0, Lx0/e;->X:[F

    aget v4, v5, v4

    mul-float/2addr v3, v4

    aput v3, v2, v1

    .line 3
    iget-object v2, p0, Lx0/e;->k0:[F

    aget v3, v2, v1

    iget-object v4, p0, Lx0/e;->j0:[F

    aget v4, v4, v1

    add-float/2addr v3, v4

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lx0/e;->a0:[F

    aget v1, p1, v4

    iget-object v2, p0, Lx0/e;->X:[F

    aget v2, v2, v4

    add-float/2addr v1, v2

    aput v1, p1, v4

    .line 5
    aget v1, p1, v4

    const v2, 0x3e8a3d71    # 0.27f

    cmpg-float v1, v1, v2

    const/4 v2, 0x1

    if-gez v1, :cond_1

    .line 6
    iget p1, p0, Lx0/e;->c0:I

    add-int/2addr p1, v2

    iput p1, p0, Lx0/e;->c0:I

    goto :goto_2

    .line 7
    :cond_1
    iget v1, p0, Lx0/e;->c0:I

    add-int/2addr v1, v2

    iput v1, p0, Lx0/e;->c0:I

    iput v1, p0, Lx0/e;->d0:I

    const/4 v1, 0x0

    .line 8
    aput v1, p1, v4

    .line 9
    iput v0, p0, Lx0/e;->c0:I

    move p1, v0

    .line 10
    :goto_1
    iget-object v3, p0, Lx0/e;->l0:[F

    array-length v4, v3

    if-ge p1, v4, :cond_2

    .line 11
    iget-object v4, p0, Lx0/e;->u:[F

    iget-object v5, p0, Lx0/e;->k0:[F

    aget v6, v5, p1

    iget v7, p0, Lx0/e;->N:I

    int-to-float v7, v7

    mul-float/2addr v6, v7

    aput v6, v3, p1

    aput v6, v4, p1

    .line 12
    aput v1, v5, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 13
    :cond_2
    iget-object p1, p0, Lx0/e;->u:[F

    array-length v1, p1

    sub-int/2addr v1, v2

    aget v3, p1, v2

    aput v3, p1, v1

    .line 14
    aget v1, p1, v2

    const/high16 v3, 0x40a00000    # 5.0f

    cmpl-float v1, v1, v3

    if-lez v1, :cond_3

    .line 15
    iget-object p1, p0, Lx0/e;->m:[I

    aput v2, p1, v2

    goto :goto_2

    .line 16
    :cond_3
    aget p1, p1, v2

    const/high16 v1, -0x3f600000    # -5.0f

    cmpg-float p1, p1, v1

    if-gez p1, :cond_4

    .line 17
    iget-object p1, p0, Lx0/e;->m:[I

    const/4 v0, -0x1

    aput v0, p1, v2

    goto :goto_2

    .line 18
    :cond_4
    iget-object p1, p0, Lx0/e;->m:[I

    aput v0, p1, v2

    :goto_2
    return-void
.end method

.method public q()V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lx0/e;->y:Z

    if-eqz v0, :cond_a

    .line 2
    iget v0, p0, Lx0/e;->B:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lx0/e;->B:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ltz v0, :cond_0

    .line 3
    iget-object v4, p0, Lx0/e;->z:[[F

    aget-object v5, v4, v3

    iget-object v6, p0, Lx0/e;->h:[F

    aget v7, v6, v3

    aput v7, v5, v0

    .line 4
    aget-object v5, v4, v1

    aget v7, v6, v1

    aput v7, v5, v0

    .line 5
    aget-object v4, v4, v2

    aget v5, v6, v2

    aput v5, v4, v0

    .line 6
    iget-object v4, p0, Lx0/e;->A:[[F

    aget-object v5, v4, v3

    iget-object v6, p0, Lx0/e;->F:[F

    aget v7, v6, v3

    aput v7, v5, v0

    .line 7
    aget-object v5, v4, v1

    aget v7, v6, v1

    aput v7, v5, v0

    .line 8
    aget-object v4, v4, v2

    aget v5, v6, v2

    aput v5, v4, v0

    .line 9
    iget-object v4, p0, Lx0/e;->L:[[F

    aget-object v5, v4, v3

    iget-object v6, p0, Lx0/e;->f:[F

    aget v3, v6, v3

    aput v3, v5, v0

    .line 10
    aget-object v3, v4, v1

    aget v1, v6, v1

    aput v1, v3, v0

    .line 11
    aget-object v1, v4, v2

    aget v2, v6, v2

    aput v2, v1, v0

    goto/16 :goto_6

    .line 12
    :cond_0
    iput-boolean v3, p0, Lx0/e;->y:Z

    new-array v0, v2, [I

    .line 13
    fill-array-data v0, :array_0

    const-class v4, F

    invoke-static {v4, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    move v4, v3

    .line 14
    :goto_0
    iget-object v5, p0, Lx0/e;->z:[[F

    array-length v6, v5

    if-ge v4, v6, :cond_1

    .line 15
    aget-object v5, v5, v4

    invoke-static {v5}, Ljava/util/Arrays;->sort([F)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x3

    new-array v5, v4, [I

    .line 16
    fill-array-data v5, :array_1

    move v6, v3

    .line 17
    :goto_1
    iget-object v7, p0, Lx0/e;->z:[[F

    aget-object v8, v7, v3

    array-length v8, v8

    if-ge v6, v8, :cond_5

    .line 18
    aget-object v8, v7, v3

    aget v8, v8, v6

    const/high16 v9, 0x43340000    # 180.0f

    cmpl-float v8, v8, v9

    if-lez v8, :cond_2

    aget v8, v5, v3

    add-int/2addr v8, v1

    aput v8, v5, v3

    .line 19
    :cond_2
    aget-object v8, v7, v1

    aget v8, v8, v6

    cmpl-float v8, v8, v9

    if-lez v8, :cond_3

    aget v8, v5, v1

    add-int/2addr v8, v1

    aput v8, v5, v1

    .line 20
    :cond_3
    aget-object v7, v7, v2

    aget v7, v7, v6

    cmpl-float v7, v7, v9

    if-lez v7, :cond_4

    aget v7, v5, v2

    add-int/2addr v7, v1

    aput v7, v5, v2

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    move v6, v3

    :goto_2
    if-ge v6, v4, :cond_7

    .line 21
    aget v7, v5, v6

    const/16 v8, 0xd

    if-le v7, v8, :cond_6

    .line 22
    iget-object v7, p0, Lx0/e;->z:[[F

    aget-object v7, v7, v6

    aget-object v9, v0, v6

    invoke-static {v7, v8, v9, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    .line 23
    :cond_6
    iget-object v7, p0, Lx0/e;->z:[[F

    aget-object v7, v7, v6

    aget-object v9, v0, v6

    invoke-static {v7, v3, v9, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_7
    move v4, v3

    .line 24
    :goto_4
    iget-object v5, p0, Lx0/e;->i:[F

    array-length v6, v5

    if-ge v4, v6, :cond_9

    .line 25
    iget-object v6, p0, Lx0/e;->z:[[F

    aget-object v7, v6, v4

    aget-object v8, v6, v4

    array-length v8, v8

    sub-int/2addr v8, v1

    aget v7, v7, v8

    aget-object v8, v6, v4

    aget v8, v8, v3

    sub-float/2addr v7, v8

    const/high16 v8, 0x41200000    # 10.0f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_8

    .line 26
    aget-object v6, v0, v4

    invoke-virtual {p0, v6}, Lx0/e;->l([F)F

    move-result v6

    aput v6, v5, v4

    goto :goto_5

    .line 27
    :cond_8
    aget-object v6, v6, v4

    invoke-virtual {p0, v6}, Lx0/e;->l([F)F

    move-result v6

    aput v6, v5, v4

    .line 28
    :goto_5
    iget-object v5, p0, Lx0/e;->G:[F

    iget-object v6, p0, Lx0/e;->A:[[F

    aget-object v6, v6, v4

    invoke-virtual {p0, v6}, Lx0/e;->l([F)F

    move-result v6

    aput v6, v5, v4

    .line 29
    iget-object v5, p0, Lx0/e;->j:[F

    iget-object v6, p0, Lx0/e;->L:[[F

    aget-object v6, v6, v4

    invoke-virtual {p0, v6}, Lx0/e;->l([F)F

    move-result v6

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 30
    :cond_9
    iget-object v0, p0, Lx0/d;->b:Lo1/h0;

    invoke-virtual {v0, v2, v5}, Lo1/h0;->p(I[F)V

    .line 31
    iget-object v0, p0, Lx0/d;->b:Lo1/h0;

    invoke-virtual {v0, v2}, Lo1/h0;->e(I)V

    .line 32
    iget-object v0, p0, Lx0/d;->b:Lo1/h0;

    iget-object v1, p0, Lx0/e;->G:[F

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Lo1/h0;->p(I[F)V

    .line 33
    iget-object v0, p0, Lx0/d;->b:Lo1/h0;

    invoke-virtual {v0, v2}, Lo1/h0;->e(I)V

    .line 34
    iget-object v0, p0, Lx0/d;->b:Lo1/h0;

    iget-object v1, p0, Lx0/e;->j:[F

    invoke-virtual {v0, v2, v1}, Lo1/h0;->p(I[F)V

    .line 35
    iget-object v0, p0, Lx0/d;->b:Lo1/h0;

    invoke-virtual {v0, v2}, Lo1/h0;->e(I)V

    :cond_a
    :goto_6
    return-void

    nop

    :array_0
    .array-data 4
        0x3
        0xd
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public varargs r([I)V
    .locals 8

    .line 1
    sget v0, Lu0/b;->a0:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    sget v0, Lu0/b;->g:I

    if-eq v0, v1, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p1, :cond_3

    .line 2
    array-length v0, p1

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    const-string v0, "Gyro"

    const-string v2, "-------- observeSensor---------: "

    .line 3
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget v4, p1, v3

    .line 5
    iget-object v5, p0, Lx0/e;->e:Landroid/hardware/SensorManager;

    invoke-virtual {v5, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v5

    .line 6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-------- observeSensor---------: sensor: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " target : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v6, p0, Lx0/e;->e:Landroid/hardware/SensorManager;

    const/4 v7, 0x4

    if-ne v4, v7, :cond_2

    move v4, v1

    goto :goto_1

    :cond_2
    const/4 v4, 0x2

    :goto_1
    invoke-virtual {v6, p0, v5, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public final s(ILandroid/hardware/SensorEvent;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lx0/e;->X:[F

    array-length v1, v0

    if-lt p1, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-wide v1, p2, Landroid/hardware/SensorEvent;->timestamp:J

    long-to-float p2, v1

    iget-object v3, p0, Lx0/e;->Y:[F

    aget v4, v3, p1

    sub-float/2addr p2, v4

    const v4, 0x3089705f    # 1.0E-9f

    mul-float/2addr p2, v4

    aput p2, v0, p1

    long-to-float p2, v1

    .line 3
    aput p2, v3, p1

    return-void
.end method

.method public t()V
    .locals 6

    .line 1
    const-class v0, F

    iget-object v1, p0, Lx0/e;->g0:[F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v4, 0x1

    .line 2
    aput v3, v1, v4

    const/4 v5, 0x2

    .line 3
    aput v3, v1, v5

    .line 4
    iput v2, p0, Lx0/e;->h0:I

    .line 5
    iput v3, p0, Lx0/e;->f0:F

    .line 6
    iput-boolean v4, p0, Lx0/e;->x:Z

    new-array v1, v5, [I

    .line 7
    fill-array-data v1, :array_0

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    iput-object v1, p0, Lx0/e;->z:[[F

    const/16 v1, 0x1a

    .line 8
    iput v1, p0, Lx0/e;->B:I

    .line 9
    iput-boolean v4, p0, Lx0/e;->y:Z

    new-array v1, v5, [I

    .line 10
    fill-array-data v1, :array_1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lx0/e;->A:[[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3
        0x1a
    .end array-data

    :array_1
    .array-data 4
        0x3
        0x1a
    .end array-data
.end method
