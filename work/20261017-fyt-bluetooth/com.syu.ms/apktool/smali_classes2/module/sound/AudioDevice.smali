.class public abstract Lmodule/sound/AudioDevice;
.super Ly0/e;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmodule/sound/AudioDevice$STORE;
    }
.end annotation


# static fields
.field public static A0:[I

.field public static B0:[I

.field public static final C0:[I

.field public static final D0:[I

.field public static E0:I

.field public static F0:I

.field public static G0:[I

.field public static H0:Z

.field public static z0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public D:Z

.field public E:Z

.field public F:I

.field public G:Ljava/lang/Integer;

.field public H:I

.field public I:I

.field public J:Z

.field public K:Z

.field public final L:Ljava/lang/Object;

.field public M:Z

.field public N:Z

.field public O:Z

.field public P:[I

.field public Q:I

.field public R:Z

.field public S:Landroid/animation/ValueAnimator;

.field public T:I

.field public U:I

.field public volatile V:I

.field public volatile W:I

.field public volatile X:I

.field public Y:I

.field public final Z:I

.field public final a:Z

.field public final a0:I

.field public b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end field

.field public b0:I

.field public c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end field

.field public final c0:Ljava/lang/Object;

.field public final d:Landroid/util/SparseIntArray;

.field public final d0:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field public e:Z

.field public e0:Ljava/util/concurrent/atomic/AtomicInteger;

.field public f:Z

.field public final f0:I

.field public g:I

.field public final g0:I

.field public h:I

.field public h0:I

.field public i:I

.field public final i0:Ljava/lang/Runnable;

.field public j:I

.field public j0:Ljava/lang/Runnable;

.field public k:I

.field public final k0:Ljava/lang/Runnable;

.field public l:I

.field public l0:Ljava/lang/Runnable;

.field public m:[I

.field public m0:Lo1/p;

.field public n:[I

.field public n0:Ljava/lang/Runnable;

.field public o:[I

.field public o0:Lo1/p;

.field public p:I

.field public p0:Lo1/p;

.field public q:[I

.field public q0:Lo1/p;

.field public r:Landroid/os/Handler;

.field public final r0:Ljava/lang/Runnable;

.field public s:Landroid/os/Looper;

.field public final s0:Ljava/lang/Runnable;

.field public t:Lo1/h0;

.field public t0:Ljava/lang/Runnable;

.field public u:Z

.field public u0:Ljava/lang/Runnable;

.field public v:Z

.field public v0:Ljava/lang/Runnable;

.field public w:Z

.field public w0:Ljava/lang/Runnable;

.field public x:Z

.field public final x0:Ljava/lang/Runnable;

.field public y:Z

.field public final y0:Ljava/lang/Runnable;

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmodule/sound/AudioDevice;->z0:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    sget-object v0, Lmodule/sound/AudioDevice;->z0:Ljava/util/ArrayList;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object v0, Lmodule/sound/AudioDevice;->z0:Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    sget-object v0, Lmodule/sound/AudioDevice;->z0:Ljava/util/ArrayList;

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    sget-object v0, Lmodule/sound/AudioDevice;->z0:Ljava/util/ArrayList;

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    sget-object v0, Lmodule/sound/AudioDevice;->z0:Ljava/util/ArrayList;

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x2

    new-array v2, v0, [I

    .line 8
    fill-array-data v2, :array_0

    sput-object v2, Lmodule/sound/AudioDevice;->A0:[I

    new-array v2, v0, [I

    .line 9
    fill-array-data v2, :array_1

    sput-object v2, Lmodule/sound/AudioDevice;->B0:[I

    new-array v2, v0, [I

    .line 10
    fill-array-data v2, :array_2

    sput-object v2, Lmodule/sound/AudioDevice;->C0:[I

    new-array v2, v0, [I

    .line 11
    fill-array-data v2, :array_3

    sput-object v2, Lmodule/sound/AudioDevice;->D0:[I

    .line 12
    sput v0, Lmodule/sound/AudioDevice;->E0:I

    .line 13
    sput v1, Lmodule/sound/AudioDevice;->F0:I

    const/4 v0, 0x1

    .line 14
    sput-boolean v0, Lmodule/sound/AudioDevice;->H0:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x4
        0x4
    .end array-data

    :array_1
    .array-data 4
        0xc
        0x4
    .end array-data

    :array_2
    .array-data 4
        0x8
        0x8
    .end array-data

    :array_3
    .array-data 4
        0x8
        0xc
    .end array-data
.end method

.method public constructor <init>(II)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ly0/e;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lmodule/sound/AudioDevice;->a:Z

    .line 3
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lmodule/sound/AudioDevice;->b:Landroid/util/SparseArray;

    .line 4
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lmodule/sound/AudioDevice;->c:Landroid/util/SparseArray;

    .line 5
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lmodule/sound/AudioDevice;->d:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lmodule/sound/AudioDevice;->e:Z

    .line 7
    iput-boolean v1, p0, Lmodule/sound/AudioDevice;->f:Z

    .line 8
    iput v1, p0, Lmodule/sound/AudioDevice;->g:I

    .line 9
    iput v1, p0, Lmodule/sound/AudioDevice;->h:I

    const/4 v2, -0x1

    .line 10
    iput v2, p0, Lmodule/sound/AudioDevice;->i:I

    .line 11
    iput v2, p0, Lmodule/sound/AudioDevice;->j:I

    .line 12
    iput v2, p0, Lmodule/sound/AudioDevice;->k:I

    .line 13
    iput v2, p0, Lmodule/sound/AudioDevice;->l:I

    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 14
    fill-array-data v3, :array_0

    iput-object v3, p0, Lmodule/sound/AudioDevice;->m:[I

    const/4 v3, 0x0

    .line 15
    iput-object v3, p0, Lmodule/sound/AudioDevice;->n:[I

    .line 16
    iput-object v3, p0, Lmodule/sound/AudioDevice;->o:[I

    .line 17
    iput v2, p0, Lmodule/sound/AudioDevice;->p:I

    .line 18
    iput-object v3, p0, Lmodule/sound/AudioDevice;->q:[I

    .line 19
    iput-object v3, p0, Lmodule/sound/AudioDevice;->r:Landroid/os/Handler;

    .line 20
    iput-object v3, p0, Lmodule/sound/AudioDevice;->s:Landroid/os/Looper;

    .line 21
    iput-object v3, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    .line 22
    iput-boolean v1, p0, Lmodule/sound/AudioDevice;->u:Z

    .line 23
    iput-boolean v1, p0, Lmodule/sound/AudioDevice;->v:Z

    .line 24
    iput-boolean v1, p0, Lmodule/sound/AudioDevice;->w:Z

    .line 25
    iput-boolean v1, p0, Lmodule/sound/AudioDevice;->x:Z

    .line 26
    iput-boolean v1, p0, Lmodule/sound/AudioDevice;->y:Z

    .line 27
    iput v1, p0, Lmodule/sound/AudioDevice;->z:I

    .line 28
    iput-boolean v0, p0, Lmodule/sound/AudioDevice;->A:Z

    .line 29
    iput-boolean v1, p0, Lmodule/sound/AudioDevice;->B:Z

    .line 30
    iput-boolean v1, p0, Lmodule/sound/AudioDevice;->C:Z

    .line 31
    iput-boolean v1, p0, Lmodule/sound/AudioDevice;->D:Z

    .line 32
    iput-boolean v1, p0, Lmodule/sound/AudioDevice;->E:Z

    .line 33
    iput v1, p0, Lmodule/sound/AudioDevice;->F:I

    .line 34
    iput-object v3, p0, Lmodule/sound/AudioDevice;->G:Ljava/lang/Integer;

    .line 35
    iput v1, p0, Lmodule/sound/AudioDevice;->H:I

    .line 36
    iput v1, p0, Lmodule/sound/AudioDevice;->I:I

    .line 37
    iput-boolean v1, p0, Lmodule/sound/AudioDevice;->J:Z

    .line 38
    iput-boolean v0, p0, Lmodule/sound/AudioDevice;->K:Z

    .line 39
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lmodule/sound/AudioDevice;->L:Ljava/lang/Object;

    .line 40
    iput-boolean v1, p0, Lmodule/sound/AudioDevice;->M:Z

    .line 41
    iput-boolean v0, p0, Lmodule/sound/AudioDevice;->N:Z

    .line 42
    iput-boolean v1, p0, Lmodule/sound/AudioDevice;->O:Z

    .line 43
    iput-object v3, p0, Lmodule/sound/AudioDevice;->P:[I

    const/high16 v4, -0x80000000

    .line 44
    iput v4, p0, Lmodule/sound/AudioDevice;->Q:I

    .line 45
    iput-boolean v0, p0, Lmodule/sound/AudioDevice;->R:Z

    .line 46
    iput-object v3, p0, Lmodule/sound/AudioDevice;->S:Landroid/animation/ValueAnimator;

    .line 47
    iput v2, p0, Lmodule/sound/AudioDevice;->T:I

    .line 48
    iput v4, p0, Lmodule/sound/AudioDevice;->U:I

    .line 49
    iput v1, p0, Lmodule/sound/AudioDevice;->V:I

    iput v1, p0, Lmodule/sound/AudioDevice;->W:I

    const/16 v0, 0xff

    iput v0, p0, Lmodule/sound/AudioDevice;->X:I

    const/16 v0, 0x8

    .line 50
    iput v0, p0, Lmodule/sound/AudioDevice;->Y:I

    const/4 v0, 0x5

    .line 51
    iput v0, p0, Lmodule/sound/AudioDevice;->Z:I

    const/16 v2, 0xa

    .line 52
    iput v2, p0, Lmodule/sound/AudioDevice;->a0:I

    .line 53
    iput v0, p0, Lmodule/sound/AudioDevice;->b0:I

    .line 54
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lmodule/sound/AudioDevice;->c0:Ljava/lang/Object;

    .line 55
    new-instance v2, Lmodule/sound/AudioDevice$j;

    invoke-direct {v2, p0}, Lmodule/sound/AudioDevice$j;-><init>(Lmodule/sound/AudioDevice;)V

    iput-object v2, p0, Lmodule/sound/AudioDevice;->d0:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 56
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v2, p0, Lmodule/sound/AudioDevice;->e0:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v2, 0x1a

    .line 57
    iput v2, p0, Lmodule/sound/AudioDevice;->f0:I

    const/16 v2, 0x3c

    .line 58
    iput v2, p0, Lmodule/sound/AudioDevice;->g0:I

    .line 59
    iput v0, p0, Lmodule/sound/AudioDevice;->h0:I

    .line 60
    new-instance v0, Lmodule/sound/AudioDevice$k;

    invoke-direct {v0, p0}, Lmodule/sound/AudioDevice$k;-><init>(Lmodule/sound/AudioDevice;)V

    iput-object v0, p0, Lmodule/sound/AudioDevice;->i0:Ljava/lang/Runnable;

    .line 61
    new-instance v0, Lmodule/sound/AudioDevice$l;

    invoke-direct {v0, p0}, Lmodule/sound/AudioDevice$l;-><init>(Lmodule/sound/AudioDevice;)V

    iput-object v0, p0, Lmodule/sound/AudioDevice;->j0:Ljava/lang/Runnable;

    .line 62
    new-instance v0, Lmodule/sound/AudioDevice$m;

    invoke-direct {v0, p0}, Lmodule/sound/AudioDevice$m;-><init>(Lmodule/sound/AudioDevice;)V

    iput-object v0, p0, Lmodule/sound/AudioDevice;->k0:Ljava/lang/Runnable;

    .line 63
    new-instance v0, Lmodule/sound/AudioDevice$n;

    invoke-direct {v0, p0}, Lmodule/sound/AudioDevice$n;-><init>(Lmodule/sound/AudioDevice;)V

    iput-object v0, p0, Lmodule/sound/AudioDevice;->l0:Ljava/lang/Runnable;

    .line 64
    new-instance v0, Lmodule/sound/AudioDevice$o;

    invoke-direct {v0, p0}, Lmodule/sound/AudioDevice$o;-><init>(Lmodule/sound/AudioDevice;)V

    iput-object v0, p0, Lmodule/sound/AudioDevice;->m0:Lo1/p;

    .line 65
    new-instance v0, Lmodule/sound/AudioDevice$p;

    invoke-direct {v0, p0}, Lmodule/sound/AudioDevice$p;-><init>(Lmodule/sound/AudioDevice;)V

    iput-object v0, p0, Lmodule/sound/AudioDevice;->n0:Ljava/lang/Runnable;

    .line 66
    new-instance v0, Lmodule/sound/AudioDevice$q;

    invoke-direct {v0, p0}, Lmodule/sound/AudioDevice$q;-><init>(Lmodule/sound/AudioDevice;)V

    iput-object v0, p0, Lmodule/sound/AudioDevice;->o0:Lo1/p;

    .line 67
    new-instance v0, Lmodule/sound/AudioDevice$r;

    invoke-direct {v0, p0}, Lmodule/sound/AudioDevice$r;-><init>(Lmodule/sound/AudioDevice;)V

    iput-object v0, p0, Lmodule/sound/AudioDevice;->p0:Lo1/p;

    .line 68
    new-instance v0, Lmodule/sound/AudioDevice$a;

    invoke-direct {v0, p0}, Lmodule/sound/AudioDevice$a;-><init>(Lmodule/sound/AudioDevice;)V

    iput-object v0, p0, Lmodule/sound/AudioDevice;->q0:Lo1/p;

    .line 69
    new-instance v0, Lmodule/sound/AudioDevice$b;

    invoke-direct {v0, p0}, Lmodule/sound/AudioDevice$b;-><init>(Lmodule/sound/AudioDevice;)V

    iput-object v0, p0, Lmodule/sound/AudioDevice;->r0:Ljava/lang/Runnable;

    .line 70
    new-instance v0, Lmodule/sound/AudioDevice$c;

    invoke-direct {v0, p0}, Lmodule/sound/AudioDevice$c;-><init>(Lmodule/sound/AudioDevice;)V

    iput-object v0, p0, Lmodule/sound/AudioDevice;->s0:Ljava/lang/Runnable;

    .line 71
    new-instance v0, Lmodule/sound/AudioDevice$d;

    invoke-direct {v0, p0}, Lmodule/sound/AudioDevice$d;-><init>(Lmodule/sound/AudioDevice;)V

    iput-object v0, p0, Lmodule/sound/AudioDevice;->t0:Ljava/lang/Runnable;

    .line 72
    new-instance v0, Lmodule/sound/AudioDevice$e;

    invoke-direct {v0, p0}, Lmodule/sound/AudioDevice$e;-><init>(Lmodule/sound/AudioDevice;)V

    iput-object v0, p0, Lmodule/sound/AudioDevice;->u0:Ljava/lang/Runnable;

    .line 73
    new-instance v0, Lmodule/sound/AudioDevice$f;

    invoke-direct {v0, p0}, Lmodule/sound/AudioDevice$f;-><init>(Lmodule/sound/AudioDevice;)V

    iput-object v0, p0, Lmodule/sound/AudioDevice;->v0:Ljava/lang/Runnable;

    .line 74
    new-instance v0, Lmodule/sound/AudioDevice$g;

    invoke-direct {v0, p0}, Lmodule/sound/AudioDevice$g;-><init>(Lmodule/sound/AudioDevice;)V

    iput-object v0, p0, Lmodule/sound/AudioDevice;->w0:Ljava/lang/Runnable;

    .line 75
    new-instance v0, Lmodule/sound/AudioDevice$h;

    invoke-direct {v0, p0}, Lmodule/sound/AudioDevice$h;-><init>(Lmodule/sound/AudioDevice;)V

    iput-object v0, p0, Lmodule/sound/AudioDevice;->x0:Ljava/lang/Runnable;

    .line 76
    new-instance v0, Lmodule/sound/AudioDevice$i;

    invoke-direct {v0, p0}, Lmodule/sound/AudioDevice$i;-><init>(Lmodule/sound/AudioDevice;)V

    iput-object v0, p0, Lmodule/sound/AudioDevice;->y0:Ljava/lang/Runnable;

    .line 77
    sget-object v0, Lz0/d;->d:Lz0/d;

    const-string v2, "default"

    invoke-virtual {v0, v2}, Lz0/d;->a(Ljava/lang/String;)Lz0/a;

    move v0, v1

    :goto_0
    const/16 v2, 0x14

    if-ge v0, v2, :cond_0

    .line 78
    sget-object v2, Lbase/Configure$Property;->H:Lbase/Configure$Property;

    invoke-virtual {v2, v0, v1}, Lbase/Configure$Property;->e(II)I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lmodule/sound/AudioDevice;->V0(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    :cond_0
    sget-object v0, Lbase/Configure$Property;->W:Lbase/Configure$Property;

    invoke-virtual {v0, v1}, Lbase/Configure$Property;->b(Z)Z

    move-result v0

    iput-boolean v0, p0, Lmodule/sound/AudioDevice;->O:Z

    .line 80
    sget-object v0, Lbase/Configure$Property;->S:Lbase/Configure$Property;

    const/16 v1, 0xb

    invoke-static {v1}, Lg/f;->f(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lbase/Configure$Property;->b(Z)Z

    move-result v0

    iput-boolean v0, p0, Lmodule/sound/AudioDevice;->N:Z

    .line 81
    new-instance v0, Lo1/h0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lo1/h0;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    .line 82
    iget-object v0, p0, Lmodule/sound/AudioDevice;->r:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 83
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AudioDevice-thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 85
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lmodule/sound/AudioDevice;->s:Landroid/os/Looper;

    .line 86
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lmodule/sound/AudioDevice;->r:Landroid/os/Handler;

    .line 87
    :cond_1
    iput p1, p0, Lmodule/sound/AudioDevice;->j:I

    .line 88
    iput p2, p0, Lmodule/sound/AudioDevice;->p:I

    if-lez p1, :cond_2

    if-lez p2, :cond_2

    mul-int/2addr p1, p2

    .line 89
    new-array p1, p1, [I

    iput-object p1, p0, Lmodule/sound/AudioDevice;->q:[I

    .line 90
    invoke-virtual {p0}, Lmodule/sound/AudioDevice;->F()V

    return-void

    .line 91
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "EQ   :   band  < = 0 or  eqParamNum <= 0!!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :array_0
    .array-data 4
        0x8
        0x8
    .end array-data
.end method

.method public static Q0([I)V
    .locals 1

    .line 1
    sput-object p0, Lmodule/sound/AudioDevice;->G0:[I

    .line 2
    invoke-static {}, Lmodule/sound/AudioDevice;->W()Lmodule/sound/AudioDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p0}, Lmodule/sound/AudioDevice;->x([I)V

    :cond_0
    return-void
.end method

.method public static W()Lmodule/sound/AudioDevice;
    .locals 2

    .line 1
    sget-object v0, Ly0/f;->b:Ly0/e;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lmodule/sound/AudioDevice;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lmodule/sound/AudioDevice;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic q(Lmodule/sound/AudioDevice;)Lo1/p;
    .locals 0

    .line 1
    iget-object p0, p0, Lmodule/sound/AudioDevice;->m0:Lo1/p;

    return-object p0
.end method

.method public static synthetic r(Lmodule/sound/AudioDevice;)Lo1/p;
    .locals 0

    .line 1
    iget-object p0, p0, Lmodule/sound/AudioDevice;->o0:Lo1/p;

    return-object p0
.end method

.method public static synthetic s(Lmodule/sound/AudioDevice;)Lo1/p;
    .locals 0

    .line 1
    iget-object p0, p0, Lmodule/sound/AudioDevice;->p0:Lo1/p;

    return-object p0
.end method

.method public static synthetic t(Lmodule/sound/AudioDevice;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lmodule/sound/AudioDevice;->t0:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic u(Lmodule/sound/AudioDevice;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lmodule/sound/AudioDevice;->u0:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic v(Lmodule/sound/AudioDevice;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lmodule/sound/AudioDevice;->n0:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public A(I)V
    .locals 3

    const/16 v0, 0xa

    .line 1
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2
    iget v1, p0, Lmodule/sound/AudioDevice;->b0:I

    if-eq p1, v1, :cond_0

    .line 3
    iput p1, p0, Lmodule/sound/AudioDevice;->b0:I

    .line 4
    invoke-virtual {p0}, Lmodule/sound/AudioDevice;->N0()V

    .line 5
    sget-object v1, Lmodule/sound/AudioDevice$STORE;->K0:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {p0, v1, p1}, Lmodule/sound/AudioDevice;->G0(Lmodule/sound/AudioDevice$STORE;I)V

    .line 6
    iget-object v2, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v2, v1}, Lo1/h0;->e(I)V

    :cond_0
    const/16 v1, 0x5f

    const/4 v2, 0x1

    new-array v2, v2, [I

    aput p1, v2, v0

    .line 7
    invoke-static {v1, v2}, Ly0/h;->s0(I[I)V

    return-void
.end method

.method public A0()V
    .locals 0

    return-void
.end method

.method public A1(IZ)V
    .locals 3

    .line 1
    invoke-static {}, Lf0/c;->X2()Lf0/c;

    move-result-object p2

    invoke-virtual {p2}, Lf0/c;->Y2()Lf0/a;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, -0x1

    .line 2
    iget v1, p0, Lmodule/sound/AudioDevice;->h0:I

    iget-object v2, p0, Lmodule/sound/AudioDevice;->e0:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {p2, p1, v0, v1, v2}, Lf0/a;->b(IIII)V

    :cond_0
    return-void
.end method

.method public B()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public B0(III)V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const/4 p1, 0x2

    aput p3, v0, p1

    const/16 p1, 0x24

    .line 1
    invoke-static {p1, v0}, Ly0/h;->s0(I[I)V

    return-void
.end method

.method public B1(IZ)V
    .locals 11

    .line 1
    invoke-virtual {p0, p1}, Lmodule/sound/AudioDevice;->m1(I)I

    move-result v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=====>>>volumeAnimatorExec vol : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " this.vol:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmodule/sound/AudioDevice;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " target:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " tempVol:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmodule/sound/AudioDevice;->Q:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " targetVol:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmodule/sound/AudioDevice;->U:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Sound"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget v1, p0, Lmodule/sound/AudioDevice;->g:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, p1, :cond_0

    iget v1, p0, Lmodule/sound/AudioDevice;->U:I

    if-ne v1, v0, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lmodule/sound/AudioDevice;->S:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object v1, p0, Lmodule/sound/AudioDevice;->S:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lmodule/sound/AudioDevice;->S:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    .line 8
    iput v1, p0, Lmodule/sound/AudioDevice;->T:I

    .line 9
    iget v1, p0, Lmodule/sound/AudioDevice;->Q:I

    if-ne v1, v0, :cond_3

    iget-boolean v5, p0, Lmodule/sound/AudioDevice;->R:Z

    if-nez v5, :cond_3

    if-nez p2, :cond_3

    return-void

    :cond_3
    const/high16 v5, -0x80000000

    if-ne v1, v5, :cond_4

    .line 10
    invoke-virtual {p0, v4}, Lmodule/sound/AudioDevice;->m1(I)I

    move-result v1

    iput v1, p0, Lmodule/sound/AudioDevice;->Q:I

    :cond_4
    if-eqz p2, :cond_6

    .line 11
    iget p1, p0, Lmodule/sound/AudioDevice;->Q:I

    if-ne p1, v0, :cond_5

    .line 12
    iput v5, p0, Lmodule/sound/AudioDevice;->Q:I

    .line 13
    :cond_5
    invoke-virtual {p0, v0}, Lmodule/sound/AudioDevice;->C1(I)V

    .line 14
    iput v5, p0, Lmodule/sound/AudioDevice;->U:I

    return-void

    .line 15
    :cond_6
    iget p2, p0, Lmodule/sound/AudioDevice;->U:I

    if-eq p2, v5, :cond_7

    iget v1, p0, Lmodule/sound/AudioDevice;->Q:I

    if-eq v1, p2, :cond_7

    .line 16
    invoke-virtual {p0, p2}, Lmodule/sound/AudioDevice;->C1(I)V

    .line 17
    iput v5, p0, Lmodule/sound/AudioDevice;->U:I

    .line 18
    :cond_7
    iget p2, p0, Lmodule/sound/AudioDevice;->g:I

    sub-int/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    const/high16 v1, 0x40a00000    # 5.0f

    div-float/2addr p2, v1

    const-wide/16 v5, 0x4b0

    float-to-double v7, p2

    const-wide v9, 0x3fd999999999999aL    # 0.4

    cmpg-double v1, v7, v9

    if-gez v1, :cond_8

    .line 19
    invoke-virtual {p0, v0}, Lmodule/sound/AudioDevice;->C1(I)V

    return-void

    :cond_8
    const v1, 0x3f19999a    # 0.6f

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_9

    const-wide/16 v5, 0x1f4

    goto :goto_1

    :cond_9
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_a

    const-wide/16 v5, 0x320

    .line 20
    :cond_a
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "=====>>>  volumeAnimatorExec value:"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " space :"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " duration:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    iput v0, p0, Lmodule/sound/AudioDevice;->U:I

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 22
    iget p2, p0, Lmodule/sound/AudioDevice;->Q:I

    aput p2, p1, v4

    aput v0, p1, v3

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lmodule/sound/AudioDevice;->S:Landroid/animation/ValueAnimator;

    .line 23
    iget-object p2, p0, Lmodule/sound/AudioDevice;->d0:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 24
    iget-object p1, p0, Lmodule/sound/AudioDevice;->S:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 25
    iget-object p1, p0, Lmodule/sound/AudioDevice;->S:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public C()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lmodule/sound/AudioDevice;->M:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lmodule/sound/AudioDevice;->M:Z

    const/16 v1, 0x48

    const/4 v2, 0x1

    new-array v2, v2, [I

    aput v0, v2, v0

    .line 3
    invoke-static {v1, v2}, Ly0/h;->s0(I[I)V

    .line 4
    :cond_0
    sget-object v0, Lmodule/sound/AudioDevice;->z0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 5
    invoke-virtual {p0, v1}, Lmodule/sound/AudioDevice;->Q(I)Lmodule/sound/AudioDevice$STORE;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v2, v1}, Lo1/h0;->v(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public C0(II)V
    .locals 3

    const/high16 v0, 0x10000

    if-ne p1, v0, :cond_0

    .line 1
    sget-object v0, Lmodule/sound/AudioDevice$STORE;->q:Lmodule/sound/AudioDevice$STORE;

    goto :goto_0

    :cond_0
    const/high16 v0, 0x20000

    if-ne p1, v0, :cond_1

    .line 2
    sget-object v0, Lmodule/sound/AudioDevice$STORE;->s:Lmodule/sound/AudioDevice$STORE;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p0, v0, p2}, Lmodule/sound/AudioDevice;->G0(Lmodule/sound/AudioDevice$STORE;I)V

    :cond_2
    const/16 v0, 0x1e

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    .line 4
    invoke-static {v0, v1}, Ly0/h;->s0(I[I)V

    return-void
.end method

.method public C1(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "=====>>>  writeVolume value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "C2313"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public D(I[I[F[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public D0(II)V
    .locals 3

    const/high16 v0, 0x10000

    if-ne p1, v0, :cond_0

    .line 1
    sget-object v0, Lmodule/sound/AudioDevice$STORE;->p:Lmodule/sound/AudioDevice$STORE;

    goto :goto_0

    :cond_0
    const/high16 v0, 0x20000

    if-ne p1, v0, :cond_1

    .line 2
    sget-object v0, Lmodule/sound/AudioDevice$STORE;->r:Lmodule/sound/AudioDevice$STORE;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p0, v0, p2}, Lmodule/sound/AudioDevice;->G0(Lmodule/sound/AudioDevice$STORE;I)V

    :cond_2
    const/16 v0, 0x1d

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    .line 4
    invoke-static {v0, v1}, Ly0/h;->s0(I[I)V

    return-void
.end method

.method public E(I)I
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lmodule/sound/AudioDevice;->J(I)I

    move-result v0

    .line 2
    iget-object v1, p0, Lmodule/sound/AudioDevice;->e0:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/16 v2, 0x3c

    if-le v1, v2, :cond_1

    if-le v0, p1, :cond_1

    const/16 v3, 0x78

    if-lt v1, v3, :cond_0

    .line 3
    sget-object v1, Lmodule/sound/AudioDevice;->G0:[I

    aget v0, v1, v0

    aget p1, v1, p1

    sub-int/2addr v0, p1

    return v0

    .line 4
    :cond_0
    sget-object v3, Lmodule/sound/AudioDevice;->G0:[I

    aget v0, v3, v0

    aget p1, v3, p1

    sub-int/2addr v0, p1

    sub-int/2addr v1, v2

    mul-int/2addr v0, v1

    int-to-float p1, v0

    const/high16 v0, 0x42700000    # 60.0f

    div-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public E0(Z)V
    .locals 3

    .line 1
    sget-object v0, Lmodule/sound/AudioDevice$STORE;->c:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {p0, v0, p1}, Lmodule/sound/AudioDevice;->G0(Lmodule/sound/AudioDevice$STORE;I)V

    const/16 v0, 0x1c

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 2
    invoke-static {v0, v1}, Ly0/h;->s0(I[I)V

    return-void
.end method

.method public abstract F()V
.end method

.method public F0()I
    .locals 4

    .line 1
    sget-object v0, Lmodule/sound/AudioDevice;->G0:[I

    if-eqz v0, :cond_2

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    aget v2, v0, v1

    const/4 v3, 0x2

    aget v0, v0, v3

    if-le v2, v0, :cond_1

    const/4 v1, -0x1

    :cond_1
    invoke-virtual {p0}, Lmodule/sound/AudioDevice;->H()I

    move-result v0

    iget v2, p0, Lmodule/sound/AudioDevice;->H:I

    sub-int/2addr v0, v2

    mul-int/2addr v1, v0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public G(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lmodule/sound/AudioDevice;->r:Landroid/os/Handler;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lmodule/sound/AudioDevice;->l0:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public G0(Lmodule/sound/AudioDevice$STORE;I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmodule/sound/AudioDevice;->e:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lo1/h0;->q(II)V

    return-void
.end method

.method public H()I
    .locals 2

    .line 1
    sget-object v0, Lmodule/sound/AudioDevice;->G0:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-virtual {p0}, Lmodule/sound/AudioDevice;->q0()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method public H0(Lmodule/sound/AudioDevice$STORE;[I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmodule/sound/AudioDevice;->e:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lo1/h0;->r(I[I)V

    return-void
.end method

.method public I(I)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 2
    sget-object p1, Lmodule/sound/AudioDevice;->z0:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, Lmodule/sound/AudioDevice;->z0:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public I0(Lmodule/sound/AudioDevice$STORE;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {v0, p1}, Lo1/h0;->v(I)V

    return-void
.end method

.method public J(I)I
    .locals 2

    .line 1
    sget-object v0, Lmodule/sound/AudioDevice;->G0:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    .line 2
    iget v1, p0, Lmodule/sound/AudioDevice;->h0:I

    if-lt v0, v1, :cond_0

    add-int/2addr p1, v1

    goto :goto_0

    :cond_0
    if-lez v0, :cond_1

    add-int/2addr p1, v0

    :cond_1
    :goto_0
    return p1
.end method

.method public J0(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmodule/sound/AudioDevice;->L:Ljava/lang/Object;

    monitor-enter v0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    :try_start_0
    invoke-virtual {p0, p1}, Lmodule/sound/AudioDevice;->G(I)V

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lmodule/sound/AudioDevice;->G(I)V

    const/4 p1, 0x4

    .line 4
    invoke-virtual {p0, p1}, Lmodule/sound/AudioDevice;->G(I)V

    const/4 p1, 0x2

    .line 5
    invoke-virtual {p0, p1}, Lmodule/sound/AudioDevice;->G(I)V

    const/4 p1, 0x3

    .line 6
    invoke-virtual {p0, p1}, Lmodule/sound/AudioDevice;->G(I)V

    const/4 p1, 0x5

    .line 7
    invoke-virtual {p0, p1}, Lmodule/sound/AudioDevice;->G(I)V

    const/4 p1, 0x6

    .line 8
    invoke-virtual {p0, p1}, Lmodule/sound/AudioDevice;->G(I)V

    const/4 p1, 0x7

    .line 9
    invoke-virtual {p0, p1}, Lmodule/sound/AudioDevice;->G(I)V

    const/16 p1, 0x8

    .line 10
    invoke-virtual {p0, p1}, Lmodule/sound/AudioDevice;->G(I)V

    const/16 p1, 0x9

    .line 11
    invoke-virtual {p0, p1}, Lmodule/sound/AudioDevice;->G(I)V

    const/16 p1, 0xa

    .line 12
    invoke-virtual {p0, p1}, Lmodule/sound/AudioDevice;->G(I)V

    const/16 p1, 0xb

    .line 13
    invoke-virtual {p0, p1}, Lmodule/sound/AudioDevice;->G(I)V

    .line 14
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public K(I)V
    .locals 6

    .line 1
    iget v0, p0, Lmodule/sound/AudioDevice;->h0:I

    .line 2
    sget v1, Lmodule/sound/AudioDevice;->F0:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const-string v3, "sound"

    const-string v4, "envVolOffsetLevel === > "

    .line 3
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget v3, p0, Lmodule/sound/AudioDevice;->h0:I

    const/4 v4, 0x1

    if-eq v3, v1, :cond_1

    .line 5
    iput v1, p0, Lmodule/sound/AudioDevice;->h0:I

    .line 6
    sget v3, Ly0/f;->i:I

    if-eq v3, v4, :cond_0

    .line 7
    iget v3, p0, Lmodule/sound/AudioDevice;->g:I

    invoke-virtual {p0, v3, v4}, Lmodule/sound/AudioDevice;->A1(IZ)V

    .line 8
    :cond_0
    sget-object v3, Lmodule/sound/AudioDevice$STORE;->R:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {p0, v3, v1}, Lmodule/sound/AudioDevice;->G0(Lmodule/sound/AudioDevice$STORE;I)V

    .line 9
    iget-object v3, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    invoke-virtual {v3}, Lo1/h0;->d()V

    const/16 v3, 0x39

    new-array v5, v4, [I

    aput v1, v5, v2

    .line 10
    invoke-static {v3, v5}, Ly0/h;->s0(I[I)V

    :cond_1
    if-lez v0, :cond_2

    if-gtz p1, :cond_2

    .line 11
    sget-object p1, Lo1/h;->b:Lo1/y;

    iget-object v0, p0, Lmodule/sound/AudioDevice;->i0:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 12
    sget-object p1, Lk0/ot;->c:Lo1/y;

    iget-object v0, p0, Lmodule/sound/AudioDevice;->i0:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lo1/y;->d(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    if-gtz v0, :cond_3

    if-lez p1, :cond_3

    .line 13
    sget-object p1, Lk0/ot;->c:Lo1/y;

    iget-object v0, p0, Lmodule/sound/AudioDevice;->i0:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 14
    sget-object p1, Lo1/h;->b:Lo1/y;

    iget-object v0, p0, Lmodule/sound/AudioDevice;->i0:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, v4}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public K0(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lmodule/sound/AudioDevice;->L:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "C2313"

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " saveCustomEq to customMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " isCustomized : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lmodule/sound/AudioDevice;->M:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-boolean v1, p0, Lmodule/sound/AudioDevice;->N:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lmodule/sound/AudioDevice;->M:Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lmodule/sound/AudioDevice;->q:[I

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 5
    invoke-virtual {p0, p1, v1}, Lmodule/sound/AudioDevice;->Z0(I[I)V

    .line 6
    invoke-virtual {p0, p1}, Lmodule/sound/AudioDevice;->h(I)V

    .line 7
    invoke-virtual {p0, p1}, Lmodule/sound/AudioDevice;->Q(I)Lmodule/sound/AudioDevice$STORE;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    .line 8
    iget-object v3, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    invoke-virtual {v3, v2, v1}, Lo1/h0;->r(I[I)V

    .line 9
    iget-object v3, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    invoke-virtual {v3, v2}, Lo1/h0;->e(I)V

    const-string v2, "C2313"

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " saveCustomEq data : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " customMode : "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " current mode: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lmodule/sound/AudioDevice;->k:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public L(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lmodule/sound/AudioDevice;->q:[I

    if-eqz v0, :cond_1

    array-length v0, v0

    if-le v0, p1, :cond_1

    .line 2
    iget-boolean v0, p0, Lmodule/sound/AudioDevice;->N:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lmodule/sound/AudioDevice;->k:I

    invoke-virtual {p0, v0}, Lmodule/sound/AudioDevice;->l0(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmodule/sound/AudioDevice;->M:Z

    if-nez v0, :cond_0

    .line 3
    iput-boolean v2, p0, Lmodule/sound/AudioDevice;->M:Z

    const/16 v0, 0x48

    new-array v3, v2, [I

    aput v2, v3, v1

    .line 4
    invoke-static {v0, v3}, Ly0/h;->s0(I[I)V

    .line 5
    invoke-virtual {p0}, Lmodule/sound/AudioDevice;->A0()V

    :cond_0
    const/16 v0, 0x12

    const/4 v3, 0x2

    new-array v3, v3, [I

    aput p1, v3, v1

    aput p2, v3, v2

    .line 6
    invoke-static {v0, v3}, Ly0/h;->s0(I[I)V

    .line 7
    sget-object v0, Ly0/f;->g0:[I

    aput p2, v0, p1

    .line 8
    invoke-virtual {p0}, Lmodule/sound/AudioDevice;->d0()V

    :cond_1
    return-void
.end method

.method public L0(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmodule/sound/AudioDevice;->d:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public M(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lmodule/sound/AudioDevice;->q:[I

    if-eqz v0, :cond_2

    array-length v0, v0

    if-le v0, p1, :cond_2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " 11  index == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " gain : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " eqData : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmodule/sound/AudioDevice;->q:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmodule/sound/AudioDevice;->q:[I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    array-length v1, v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  isCustomized: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lmodule/sound/AudioDevice;->M:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "C2313"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-boolean v0, p0, Lmodule/sound/AudioDevice;->N:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lmodule/sound/AudioDevice;->k:I

    invoke-virtual {p0, v0}, Lmodule/sound/AudioDevice;->l0(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lmodule/sound/AudioDevice;->M:Z

    if-nez v0, :cond_1

    .line 4
    iput-boolean v1, p0, Lmodule/sound/AudioDevice;->M:Z

    const/16 v0, 0x48

    new-array v3, v1, [I

    aput v1, v3, v2

    .line 5
    invoke-static {v0, v3}, Ly0/h;->s0(I[I)V

    .line 6
    invoke-virtual {p0}, Lmodule/sound/AudioDevice;->A0()V

    :cond_1
    const/16 v0, 0x9

    const/4 v3, 0x2

    new-array v3, v3, [I

    aput p1, v3, v2

    .line 7
    invoke-virtual {p0, p1}, Lmodule/sound/AudioDevice;->x0(I)I

    move-result v2

    add-int/2addr v2, p2

    aput v2, v3, v1

    invoke-static {v0, v3}, Ly0/h;->s0(I[I)V

    .line 8
    sget-object v0, Ly0/f;->c0:[I

    aput p2, v0, p1

    .line 9
    invoke-virtual {p0}, Lmodule/sound/AudioDevice;->d0()V

    :cond_2
    return-void
.end method

.method public final varargs M0([I)V
    .locals 1

    .line 1
    iput-object p1, p0, Lmodule/sound/AudioDevice;->o:[I

    .line 2
    iget-boolean v0, p0, Lmodule/sound/AudioDevice;->e:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lmodule/sound/AudioDevice;->X0([I)V

    :cond_0
    return-void
.end method

.method public N()V
    .locals 2

    .line 1
    iget v0, p0, Lmodule/sound/AudioDevice;->k:I

    add-int/lit8 v0, v0, 0x1

    .line 2
    iget-object v1, p0, Lmodule/sound/AudioDevice;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_0

    const/4 v0, 0x0

    .line 3
    :cond_0
    invoke-virtual {p0, v0}, Lmodule/sound/AudioDevice;->h(I)V

    .line 4
    invoke-static {v0}, Ly0/h;->F(I)V

    return-void
.end method

.method public N0()V
    .locals 0

    return-void
.end method

.method public O(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lmodule/sound/AudioDevice;->q:[I

    if-eqz v0, :cond_1

    array-length v0, v0

    if-le v0, p1, :cond_1

    .line 2
    iget-boolean v0, p0, Lmodule/sound/AudioDevice;->N:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lmodule/sound/AudioDevice;->k:I

    invoke-virtual {p0, v0}, Lmodule/sound/AudioDevice;->l0(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmodule/sound/AudioDevice;->M:Z

    if-nez v0, :cond_0

    .line 3
    iput-boolean v2, p0, Lmodule/sound/AudioDevice;->M:Z

    const/16 v0, 0x48

    new-array v3, v2, [I

    aput v2, v3, v1

    .line 4
    invoke-static {v0, v3}, Ly0/h;->s0(I[I)V

    .line 5
    invoke-virtual {p0}, Lmodule/sound/AudioDevice;->A0()V

    :cond_0
    const/16 v0, 0x14

    const/4 v3, 0x2

    new-array v3, v3, [I

    aput p1, v3, v1

    .line 6
    invoke-virtual {p0, p1}, Lmodule/sound/AudioDevice;->y0(I)I

    move-result v1

    add-int/2addr v1, p2

    aput v1, v3, v2

    invoke-static {v0, v3}, Ly0/h;->s0(I[I)V

    .line 7
    sget-object v0, Ly0/f;->j0:[I

    aput p2, v0, p1

    .line 8
    invoke-virtual {p0}, Lmodule/sound/AudioDevice;->d0()V

    :cond_1
    return-void
.end method

.method public O0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lmodule/sound/AudioDevice;->w:Z

    return-void
.end method

.method public P(I)V
    .locals 3

    .line 1
    sget-object v0, Lmodule/sound/AudioDevice;->C0:[I

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lmodule/sound/AudioDevice;->D0:[I

    goto :goto_0

    .line 3
    :cond_1
    sget-object v0, Lmodule/sound/AudioDevice;->B0:[I

    goto :goto_0

    .line 4
    :cond_2
    sget-object v0, Lmodule/sound/AudioDevice;->A0:[I

    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 5
    aget p1, v0, p1

    aget v0, v0, v1

    invoke-static {p1, v0}, Ly0/h;->o(II)V

    return-void
.end method

.method public P0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lmodule/sound/AudioDevice;->v:Z

    return-void
.end method

.method public Q(I)Lmodule/sound/AudioDevice$STORE;
    .locals 1

    .line 1
    sget-object v0, Lmodule/sound/AudioDevice$STORE;->i0:Lmodule/sound/AudioDevice$STORE;

    if-eqz p1, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    sget-object v0, Lmodule/sound/AudioDevice$STORE;->u0:Lmodule/sound/AudioDevice$STORE;

    goto :goto_0

    .line 3
    :pswitch_1
    sget-object v0, Lmodule/sound/AudioDevice$STORE;->s0:Lmodule/sound/AudioDevice$STORE;

    goto :goto_0

    .line 4
    :pswitch_2
    sget-object v0, Lmodule/sound/AudioDevice$STORE;->q0:Lmodule/sound/AudioDevice$STORE;

    goto :goto_0

    .line 5
    :pswitch_3
    sget-object v0, Lmodule/sound/AudioDevice$STORE;->o0:Lmodule/sound/AudioDevice$STORE;

    goto :goto_0

    .line 6
    :pswitch_4
    sget-object v0, Lmodule/sound/AudioDevice$STORE;->m0:Lmodule/sound/AudioDevice$STORE;

    goto :goto_0

    .line 7
    :pswitch_5
    sget-object v0, Lmodule/sound/AudioDevice$STORE;->k0:Lmodule/sound/AudioDevice$STORE;

    :cond_0
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public R()V
    .locals 22

    move-object/from16 v0, p0

    .line 1
    iget-boolean v1, v0, Lmodule/sound/AudioDevice;->e:Z

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget v1, Lu0/b;->D:I

    .line 3
    sget v2, Lh0/c;->G:I

    const/16 v3, 0xf

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v2, v4, :cond_2

    sget-boolean v2, Lh0/c;->m0:Z

    if-nez v2, :cond_2

    .line 4
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v2

    invoke-virtual {v2}, Lu0/i;->r3()Z

    move-result v2

    if-eqz v2, :cond_1

    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    move v2, v5

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v4

    .line 5
    :goto_1
    sget v6, Lu0/b;->o:I

    if-nez v6, :cond_4

    sget v6, Lu0/b;->Z:I

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    move v6, v5

    goto :goto_3

    :cond_4
    :goto_2
    move v6, v4

    .line 6
    :goto_3
    sget-boolean v7, Ly0/f;->w:Z

    if-nez v7, :cond_6

    if-eqz v6, :cond_5

    goto :goto_4

    :cond_5
    move v6, v5

    goto :goto_5

    :cond_6
    :goto_4
    move v6, v4

    .line 7
    :goto_5
    sget v7, Ly0/f;->C0:I

    .line 8
    sget v8, Ly0/f;->F0:I

    if-ltz v8, :cond_7

    if-le v7, v8, :cond_7

    move v7, v8

    .line 9
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lmodule/sound/AudioDevice;->s0()Z

    move-result v8

    .line 10
    sget v9, Lu0/b;->D:I

    invoke-virtual {v0, v9}, Lmodule/sound/AudioDevice;->j0(I)I

    move-result v9

    if-nez v9, :cond_8

    move v9, v4

    goto :goto_6

    :cond_8
    move v9, v5

    .line 11
    :goto_6
    sget-object v10, Lf/b;->d:Lf/b;

    iget-object v10, v10, Lf/b;->c:Lf/c;

    .line 12
    invoke-static {}, La/c;->m()I

    move-result v11

    .line 13
    invoke-static {}, La/c;->w()I

    move-result v12

    .line 14
    invoke-static {}, La/c;->t()I

    .line 15
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  ==============>>>  DataBt.mMuteFlag: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v14, Lh0/c;->Z:I

    const v15, 0xffff

    and-int/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "sound"

    invoke-static {v14, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    sget v13, Ly0/f;->F0:I

    if-ltz v13, :cond_9

    .line 17
    invoke-static {v7, v13}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 18
    :cond_9
    sget v13, Ly0/f;->K0:I

    and-int/lit16 v13, v13, -0x101

    and-int/lit8 v13, v13, -0x11

    and-int/2addr v13, v15

    if-eqz v13, :cond_a

    .line 19
    invoke-virtual {v0, v4}, Lmodule/sound/AudioDevice;->u0(Z)V

    return-void

    :cond_a
    const-string v13, " vol = "

    const/high16 v15, 0x3f000000    # 0.5f

    const/4 v3, 0x2

    if-eqz v2, :cond_10

    .line 20
    sget v6, Ly0/f;->J0:I

    if-ge v7, v6, :cond_b

    goto :goto_7

    :cond_b
    move v6, v7

    .line 21
    :goto_7
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v9

    .line 22
    iget v9, v9, Lu0/i;->A:I

    if-ne v1, v3, :cond_c

    .line 23
    invoke-static {}, Lh0/e;->C()Z

    move-result v9

    if-eqz v9, :cond_c

    const/4 v6, 0x0

    .line 24
    :cond_c
    iget-boolean v9, v0, Lmodule/sound/AudioDevice;->v:Z

    if-eqz v9, :cond_e

    if-lez v6, :cond_d

    move v9, v4

    goto :goto_8

    :cond_d
    const/4 v9, 0x0

    :goto_8
    move/from16 v16, v6

    goto :goto_9

    :cond_e
    const/4 v9, 0x0

    const/16 v16, 0x0

    .line 25
    :goto_9
    invoke-virtual {v10}, Lf/c;->h()Z

    move-result v10

    if-eqz v10, :cond_f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v17, 0x0

    goto :goto_a

    :cond_f
    const/4 v10, -0x1

    const/16 v17, -0x1

    .line 26
    :goto_a
    invoke-static {}, La/c;->g()I

    move-result v18

    sget v19, Lh0/c;->a0:I

    mul-int v5, v18, v19

    int-to-float v5, v5

    sget v3, Lh0/c;->b0:I

    int-to-float v3, v3

    div-float/2addr v5, v3

    add-float/2addr v5, v15

    float-to-int v3, v5

    move/from16 v4, v16

    move/from16 v5, v17

    goto/16 :goto_22

    :cond_10
    if-eqz v6, :cond_12

    .line 27
    sget v3, Ly0/f;->x:I

    if-nez v3, :cond_11

    sget v3, Ly0/f;->R:I

    mul-int/2addr v3, v7

    int-to-float v3, v3

    sget v5, Ly0/f;->S:I

    int-to-float v5, v5

    div-float/2addr v3, v5

    add-float/2addr v3, v15

    goto :goto_b

    :cond_11
    const/4 v3, 0x0

    :goto_b
    float-to-int v3, v3

    goto :goto_c

    :cond_12
    move v3, v7

    :goto_c
    if-nez v3, :cond_13

    .line 28
    invoke-virtual {v0, v4}, Lmodule/sound/AudioDevice;->u0(Z)V

    return-void

    .line 29
    :cond_13
    sget v5, Ly0/f;->R0:I

    if-eqz v5, :cond_14

    move v5, v4

    goto :goto_d

    :cond_14
    const/4 v5, 0x0

    .line 30
    :goto_d
    sget v6, Ly0/f;->T0:I

    if-eqz v6, :cond_15

    move v6, v4

    goto :goto_e

    :cond_15
    const/4 v6, 0x0

    .line 31
    :goto_e
    sget v10, Ly0/f;->Q0:I

    if-eqz v10, :cond_16

    move v10, v4

    goto :goto_f

    :cond_16
    const/4 v10, 0x0

    .line 32
    :goto_f
    sget-object v4, Lf/b;->d:Lf/b;

    iget-object v4, v4, Lf/b;->c:Lf/c;

    invoke-virtual {v4}, Lf/c;->h()Z

    move-result v4

    if-eqz v4, :cond_19

    if-nez v5, :cond_17

    if-nez v6, :cond_17

    if-nez v10, :cond_17

    .line 33
    sget-boolean v4, Lplugins/BusKtv;->g:Z

    if-eqz v4, :cond_18

    :cond_17
    if-eqz v8, :cond_18

    const/4 v8, 0x1

    goto :goto_10

    :cond_18
    const/4 v8, 0x0

    .line 34
    :cond_19
    :goto_10
    iget-boolean v4, v0, Lmodule/sound/AudioDevice;->v:Z

    if-eqz v4, :cond_1a

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1a

    move v4, v3

    move/from16 v21, v8

    goto :goto_12

    :cond_1a
    if-eqz v8, :cond_1c

    .line 35
    sget-object v4, Ly0/f;->y0:[I

    const/16 v19, 0x7

    aget v4, v4, v19

    .line 36
    sget-object v20, Ly0/f;->w0:[I

    aget v19, v20, v19

    div-int/lit8 v20, v4, 0x2

    sub-int v19, v19, v20

    if-nez v10, :cond_1b

    int-to-float v4, v3

    move/from16 v21, v8

    goto :goto_11

    :cond_1b
    int-to-float v15, v3

    move/from16 v21, v8

    mul-int v8, v3, v19

    int-to-float v8, v8

    int-to-float v4, v4

    div-float/2addr v8, v4

    add-float/2addr v15, v8

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v4, v15

    :goto_11
    float-to-int v4, v4

    goto :goto_12

    :cond_1c
    move/from16 v21, v8

    const/4 v4, 0x0

    :goto_12
    if-lez v4, :cond_1d

    const/4 v8, 0x1

    goto :goto_13

    :cond_1d
    const/4 v8, 0x0

    .line 37
    :goto_13
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v4

    const-string v4, "===========>>>>>   002   tipAudio = "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "  voiceAudio = "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "  naviAudio = "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "  DataSound.isLowerTheSound = "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Ly0/f;->w:Z

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "  DataMain.sArmMuteAndAmpMute = "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lu0/b;->V3:Z

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_24

    .line 38
    invoke-static {}, Lh1/a;->d()Lh1/a;

    move-result-object v4

    invoke-virtual {v4}, Lh1/a;->e()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1e

    invoke-static {}, Le/f;->m()Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-static {}, La/c;->m()I

    move-result v4

    move v11, v4

    goto :goto_14

    :cond_1e
    const/4 v11, 0x0

    :goto_14
    if-eqz v8, :cond_22

    .line 39
    iget-boolean v4, v0, Lmodule/sound/AudioDevice;->v:Z

    if-eqz v4, :cond_1f

    if-eq v1, v5, :cond_22

    .line 40
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lmodule/sound/AudioDevice;->g1()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 41
    instance-of v4, v0, Lmodule/sound/C2313;

    if-eqz v4, :cond_20

    goto :goto_15

    :cond_20
    move/from16 v16, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    goto :goto_17

    :cond_21
    :goto_15
    move v6, v3

    move/from16 v16, v6

    :goto_16
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_17
    const/4 v10, 0x0

    goto/16 :goto_21

    .line 42
    :cond_22
    iget-boolean v4, v0, Lmodule/sound/AudioDevice;->v:Z

    if-eqz v4, :cond_23

    if-eqz v8, :cond_23

    if-eqz v10, :cond_23

    invoke-virtual {v0, v3}, Lmodule/sound/AudioDevice;->a0(I)I

    move-result v4

    goto :goto_18

    :cond_23
    move v4, v3

    :goto_18
    move/from16 v16, v3

    move v6, v4

    goto :goto_16

    :cond_24
    if-eqz v5, :cond_26

    .line 43
    invoke-static {}, La/c;->e()I

    move-result v4

    .line 44
    invoke-virtual/range {p0 .. p0}, Lmodule/sound/AudioDevice;->u1()I

    move-result v5

    :cond_25
    :goto_19
    move v6, v3

    move v3, v4

    move v4, v5

    move/from16 v16, v19

    :goto_1a
    const/4 v10, -0x1

    goto/16 :goto_21

    :cond_26
    if-eqz v8, :cond_27

    if-eqz v9, :cond_27

    if-eqz v10, :cond_27

    .line 45
    invoke-virtual/range {p0 .. p0}, Lmodule/sound/AudioDevice;->g1()Z

    move-result v4

    if-eqz v4, :cond_37

    .line 46
    instance-of v4, v0, Lmodule/sound/C2313;

    if-nez v4, :cond_37

    .line 47
    invoke-virtual {v0, v3}, Lmodule/sound/AudioDevice;->a0(I)I

    move-result v3

    goto/16 :goto_20

    :cond_27
    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eq v1, v5, :cond_34

    const/4 v5, 0x2

    if-eq v1, v5, :cond_2e

    if-eq v1, v4, :cond_2e

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    .line 48
    invoke-virtual/range {p0 .. p0}, Lmodule/sound/AudioDevice;->u1()I

    move-result v4

    if-eqz v10, :cond_28

    .line 49
    invoke-virtual {v0, v4}, Lmodule/sound/AudioDevice;->a0(I)I

    move-result v4

    :cond_28
    :goto_1b
    move v6, v3

    move/from16 v16, v19

    const/4 v3, 0x0

    goto :goto_1a

    .line 50
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lmodule/sound/AudioDevice;->u1()I

    move-result v4

    const/4 v5, -0x1

    invoke-virtual {v0, v5, v4, v5, v10}, Lmodule/sound/AudioDevice;->S(IIIZ)[I

    move-result-object v4

    const/4 v5, 0x0

    .line 51
    aget v6, v4, v5

    if-ltz v6, :cond_29

    .line 52
    aget v6, v4, v5

    move v5, v6

    goto :goto_1c

    :cond_29
    const/4 v5, -0x1

    :goto_1c
    const/4 v6, 0x1

    .line 53
    aget v9, v4, v6

    if-ltz v9, :cond_2b

    .line 54
    aget v4, v4, v6

    :cond_2a
    :goto_1d
    move v6, v3

    move v10, v5

    move/from16 v16, v19

    const/4 v3, 0x0

    goto/16 :goto_21

    :cond_2b
    move v6, v3

    move v10, v5

    move/from16 v16, v19

    const/4 v3, 0x0

    const/4 v4, -0x1

    goto/16 :goto_21

    .line 55
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lmodule/sound/AudioDevice;->t1()I

    move-result v4

    .line 56
    invoke-virtual/range {p0 .. p0}, Lmodule/sound/AudioDevice;->u1()I

    move-result v5

    if-eqz v10, :cond_2c

    .line 57
    invoke-virtual {v0, v4}, Lmodule/sound/AudioDevice;->a0(I)I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    :cond_2c
    if-eqz v10, :cond_25

    .line 58
    invoke-virtual {v0, v5}, Lmodule/sound/AudioDevice;->a0(I)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto/16 :goto_19

    .line 59
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lmodule/sound/AudioDevice;->u1()I

    move-result v4

    if-eqz v10, :cond_2d

    .line 60
    invoke-virtual {v0, v4}, Lmodule/sound/AudioDevice;->a0(I)I

    move-result v4

    :cond_2d
    move v6, v3

    move/from16 v16, v19

    const/4 v3, 0x0

    goto/16 :goto_17

    .line 61
    :cond_2e
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lmodule/sound/AudioDevice;->t1()I

    move-result v4

    if-eqz v10, :cond_2f

    .line 62
    invoke-virtual {v0, v4}, Lmodule/sound/AudioDevice;->a0(I)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    :cond_2f
    move v5, v4

    .line 63
    sget v4, Lu0/b;->L3:I

    if-gtz v4, :cond_31

    sget-boolean v4, Lu0/b;->M3:Z

    if-eqz v4, :cond_30

    goto :goto_1e

    :cond_30
    const/16 v4, 0xf

    goto :goto_1f

    :cond_31
    :goto_1e
    const/16 v4, 0xf

    const/4 v5, 0x0

    :goto_1f
    if-eq v1, v4, :cond_32

    .line 64
    invoke-static {}, Lh0/e;->C()Z

    move-result v4

    if-eqz v4, :cond_32

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 65
    :cond_32
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v4

    invoke-virtual {v4}, Lu0/i;->r3()Z

    move-result v4

    if-eqz v4, :cond_33

    const/4 v11, 0x0

    :cond_33
    move v6, v3

    move v3, v5

    move/from16 v16, v19

    const/4 v4, 0x0

    goto/16 :goto_1a

    .line 66
    :cond_34
    sget v5, Lw0/d;->a:I

    if-ne v5, v4, :cond_36

    .line 67
    invoke-virtual/range {p0 .. p0}, Lmodule/sound/AudioDevice;->u1()I

    move-result v4

    .line 68
    invoke-virtual/range {p0 .. p0}, Lmodule/sound/AudioDevice;->v1()I

    move-result v5

    if-eqz v10, :cond_35

    .line 69
    invoke-virtual {v0, v4}, Lmodule/sound/AudioDevice;->a0(I)I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    :cond_35
    if-eqz v10, :cond_2a

    .line 70
    invoke-virtual {v0, v5}, Lmodule/sound/AudioDevice;->a0(I)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto/16 :goto_1d

    .line 71
    :cond_36
    sget-boolean v4, Lplugins/BusKtv;->g:Z

    if-eqz v4, :cond_37

    .line 72
    invoke-virtual/range {p0 .. p0}, Lmodule/sound/AudioDevice;->u1()I

    move-result v4

    if-eqz v10, :cond_28

    .line 73
    invoke-virtual {v0, v4}, Lmodule/sound/AudioDevice;->a0(I)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto/16 :goto_1b

    :cond_37
    :goto_20
    move v6, v3

    move/from16 v16, v19

    const/4 v3, 0x0

    const/4 v4, -0x1

    goto/16 :goto_1a

    .line 74
    :goto_21
    sget v5, Ly0/f;->p:I

    if-lez v5, :cond_38

    const-string v4, "========================>>>>>   002   DataSound.sStreamPlayerLoseTick > 0  musicStream = 0"

    .line 75
    invoke-static {v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v8

    move/from16 v4, v16

    move/from16 v8, v21

    const/4 v5, 0x0

    goto :goto_22

    :cond_38
    move v5, v4

    move v9, v8

    move/from16 v4, v16

    move/from16 v8, v21

    .line 76
    :goto_22
    sget v15, Ly0/f;->i:I

    move/from16 v16, v7

    const/4 v7, 0x1

    if-ne v15, v7, :cond_39

    move v15, v7

    goto :goto_23

    :cond_39
    const/4 v15, 0x0

    .line 77
    :goto_23
    invoke-virtual {v0, v1}, Lmodule/sound/AudioDevice;->w(I)Z

    move-result v17

    const-string v7, "  mixVol = "

    if-eqz v17, :cond_3a

    const-string v8, "analogChannelWithoutAudio =========  mute"

    .line 78
    invoke-static {v14, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v20, v12

    const/4 v8, 0x1

    const/4 v12, 0x1

    const/16 v19, 0x0

    goto :goto_26

    :cond_3a
    move/from16 v17, v15

    const-string v15, "fix Stream =========  <<<<< *** >>>>>>  vol"

    .line 79
    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v12

    const-string v12, "========================>>>>>   002  mixOn = "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v14, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-boolean v12, v0, Lmodule/sound/AudioDevice;->v:Z

    if-eqz v12, :cond_3b

    const/4 v12, 0x2

    if-ne v1, v12, :cond_3b

    goto :goto_24

    :cond_3b
    if-nez v8, :cond_3c

    xor-int/lit8 v8, v9, 0x1

    goto :goto_25

    :cond_3c
    :goto_24
    const/4 v8, 0x1

    .line 82
    :goto_25
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "========================>>>>>   hasMainVol = "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v14, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v12, v8

    move/from16 v8, v17

    const/16 v19, 0x1

    :goto_26
    if-nez v19, :cond_3d

    if-eqz v8, :cond_3d

    .line 83
    invoke-virtual {v0, v8}, Lmodule/sound/AudioDevice;->u0(Z)V

    :cond_3d
    const/4 v15, -0x1

    if-eq v3, v15, :cond_3e

    .line 84
    invoke-static {v3}, La/c;->f(I)V

    :cond_3e
    if-eq v5, v15, :cond_3f

    .line 85
    invoke-static {v5}, La/c;->p(I)V

    :cond_3f
    if-eq v10, v15, :cond_40

    .line 86
    invoke-static {v10}, La/c;->i(I)V

    .line 87
    :cond_40
    iget-boolean v3, v0, Lmodule/sound/AudioDevice;->D:Z

    if-eq v3, v2, :cond_41

    .line 88
    iput-boolean v2, v0, Lmodule/sound/AudioDevice;->D:Z

    .line 89
    iget v2, v0, Lmodule/sound/AudioDevice;->z:I

    invoke-virtual {v0, v2}, Lmodule/sound/AudioDevice;->o(I)V

    .line 90
    :cond_41
    invoke-static {v11}, La/c;->l(I)V

    .line 91
    invoke-static/range {v20 .. v20}, La/c;->v(I)V

    if-eqz v19, :cond_44

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "========================>>>>>   003  mixOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " hasMainVol = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v12, :cond_42

    move v5, v6

    goto :goto_27

    :cond_42
    const/4 v5, 0x0

    :goto_27
    int-to-float v2, v6

    move/from16 v7, v16

    int-to-float v3, v7

    div-float/2addr v2, v3

    .line 93
    invoke-virtual {v0, v5, v2}, Lmodule/sound/AudioDevice;->z1(IF)V

    if-eqz v9, :cond_43

    move v5, v4

    goto :goto_28

    :cond_43
    const/4 v5, 0x0

    .line 94
    :goto_28
    invoke-virtual {v0, v5}, Lmodule/sound/AudioDevice;->r0(I)V

    const/4 v2, 0x0

    .line 95
    invoke-virtual {v0, v2}, Lmodule/sound/AudioDevice;->u0(Z)V

    .line 96
    invoke-virtual {v0, v8}, Lmodule/sound/AudioDevice;->v0(Z)V

    .line 97
    :cond_44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vol = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, La/c;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mutePlayer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, La/c;->b()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "   appid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public R0(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lmodule/sound/AudioDevice;->J:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lmodule/sound/AudioDevice;->J:Z

    const/16 v0, 0x51

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 3
    invoke-static {v0, v1}, Ly0/h;->s0(I[I)V

    .line 4
    sget-object v0, Lmodule/sound/AudioDevice$STORE;->C0:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {p0, v0, p1}, Lmodule/sound/AudioDevice;->G0(Lmodule/sound/AudioDevice$STORE;I)V

    .line 5
    iget-object p1, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Lo1/h0;->e(I)V

    :cond_0
    return-void
.end method

.method public S(IIIZ)[I
    .locals 0

    const/4 p1, 0x3

    const/4 p2, -0x1

    .line 1
    invoke-static {p1, p2}, Lo1/s0;->q(II)[I

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lmodule/sound/AudioDevice;->u1()I

    move-result p2

    if-eqz p4, :cond_0

    .line 3
    invoke-virtual {p0, p2}, Lmodule/sound/AudioDevice;->a0(I)I

    move-result p2

    :cond_0
    const/4 p3, 0x1

    aput p2, p1, p3

    const/4 p2, 0x0

    .line 4
    aput p2, p1, p2

    return-object p1
.end method

.method public S0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lmodule/sound/AudioDevice;->K:Z

    return-void
.end method

.method public T()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lmodule/sound/AudioDevice;->o1()I

    move-result v0

    .line 2
    sget-object v1, Lmodule/sound/AudioDevice$STORE;->J0:Lmodule/sound/AudioDevice$STORE;

    sget-object v2, Lbase/Configure$Property;->L:Lbase/Configure$Property;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lbase/Configure$Property;->d(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lmodule/sound/AudioDevice;->Y(Lmodule/sound/AudioDevice$STORE;I)I

    move-result v1

    iput v1, p0, Lmodule/sound/AudioDevice;->I:I

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Object;

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p0, Lmodule/sound/AudioDevice;->H:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    iget v3, p0, Lmodule/sound/AudioDevice;->I:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-string v3, "00 ======>> total: %d, offset: %d, volOffsetUI: %d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "c32107"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget v2, p0, Lmodule/sound/AudioDevice;->I:I

    if-ltz v2, :cond_0

    .line 5
    invoke-virtual {p0}, Lmodule/sound/AudioDevice;->q1()I

    move-result v2

    iput v2, p0, Lmodule/sound/AudioDevice;->H:I

    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v4

    iget v0, p0, Lmodule/sound/AudioDevice;->H:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v5

    iget v0, p0, Lmodule/sound/AudioDevice;->I:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v6

    const-string v0, "01 ======>> total: %d, offset: %d, volOffsetUI: %d"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 7
    :cond_0
    sget-object v2, Lmodule/sound/AudioDevice$STORE;->J:Lmodule/sound/AudioDevice$STORE;

    sget-object v7, Lbase/Configure$Property;->K:Lbase/Configure$Property;

    const/high16 v8, -0x80000000

    invoke-virtual {v7, v8}, Lbase/Configure$Property;->d(I)I

    move-result v7

    invoke-virtual {p0, v2, v7}, Lmodule/sound/AudioDevice;->Y(Lmodule/sound/AudioDevice$STORE;I)I

    move-result v7

    iput v7, p0, Lmodule/sound/AudioDevice;->H:I

    if-ne v7, v8, :cond_1

    .line 8
    invoke-virtual {p0}, Lmodule/sound/AudioDevice;->H()I

    move-result v2

    iput v2, p0, Lmodule/sound/AudioDevice;->H:I

    goto :goto_0

    :cond_1
    if-le v7, v0, :cond_2

    .line 9
    invoke-virtual {p0, v2}, Lmodule/sound/AudioDevice;->I0(Lmodule/sound/AudioDevice$STORE;)V

    .line 10
    invoke-virtual {p0}, Lmodule/sound/AudioDevice;->H()I

    move-result v2

    iput v2, p0, Lmodule/sound/AudioDevice;->H:I

    .line 11
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lmodule/sound/AudioDevice;->n1()I

    move-result v2

    iput v2, p0, Lmodule/sound/AudioDevice;->I:I

    new-array v1, v1, [Ljava/lang/Object;

    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v4

    iget v0, p0, Lmodule/sound/AudioDevice;->H:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v5

    iget v0, p0, Lmodule/sound/AudioDevice;->I:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v6

    const-string v0, "02 ======>> total: %d, offset: %d, volOffsetUI: %d"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/16 v0, 0x33

    new-array v1, v6, [I

    .line 13
    fill-array-data v1, :array_0

    invoke-static {v0, v1}, Ly0/h;->s0(I[I)V

    const/16 v0, 0x34

    new-array v1, v5, [I

    .line 14
    iget v2, p0, Lmodule/sound/AudioDevice;->I:I

    aput v2, v1, v4

    invoke-static {v0, v1}, Ly0/h;->s0(I[I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x64
    .end array-data
.end method

.method public T0(I)V
    .locals 3

    .line 1
    iget v0, p0, Lmodule/sound/AudioDevice;->i:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lmodule/sound/AudioDevice;->i:I

    .line 3
    sget-object v0, Lmodule/sound/AudioDevice$STORE;->w:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {p0, v0, p1}, Lmodule/sound/AudioDevice;->G0(Lmodule/sound/AudioDevice$STORE;I)V

    .line 4
    invoke-virtual {p0}, Lmodule/sound/AudioDevice;->k()V

    :cond_0
    const/16 v0, 0x25

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 5
    invoke-static {v0, v1}, Ly0/h;->s0(I[I)V

    return-void
.end method

.method public U(ILy/b;)Z
    .locals 4

    const/16 v0, 0x1b

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_8

    const/16 v0, 0x39

    if-eq p1, v0, :cond_7

    const/16 v0, 0x48

    if-eq p1, v0, :cond_6

    const/16 v0, 0x4a

    if-eq p1, v0, :cond_5

    const/16 v0, 0x51

    if-eq p1, v0, :cond_4

    const/16 v0, 0x57

    if-eq p1, v0, :cond_3

    const/16 v0, 0x5f

    if-eq p1, v0, :cond_2

    const/16 v0, 0x33

    const/4 v3, 0x2

    if-eq p1, v0, :cond_1

    const/16 v0, 0x34

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    new-array v0, v3, [Ljava/lang/Object;

    .line 1
    iget v3, p0, Lmodule/sound/AudioDevice;->H:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    iget v3, p0, Lmodule/sound/AudioDevice;->I:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v3, " flush ======>> offset: %d, volOffsetUI: %d"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "c32107"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v2, [I

    .line 2
    iget v3, p0, Lmodule/sound/AudioDevice;->I:I

    aput v3, v0, v1

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    goto :goto_0

    :cond_1
    new-array v0, v3, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    goto :goto_0

    :cond_2
    new-array v0, v2, [I

    .line 4
    iget v3, p0, Lmodule/sound/AudioDevice;->b0:I

    aput v3, v0, v1

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    goto :goto_0

    .line 5
    :cond_3
    sget-object v0, Lz0/d;->d:Lz0/d;

    invoke-virtual {v0, p1, p2}, Lz0/d;->b(ILy/b;)Z

    move-result v1

    goto :goto_1

    :cond_4
    new-array v0, v2, [I

    .line 6
    iget-boolean v3, p0, Lmodule/sound/AudioDevice;->J:Z

    aput v3, v0, v1

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    goto :goto_0

    :cond_5
    new-array v0, v2, [I

    .line 7
    iget-boolean v3, p0, Lmodule/sound/AudioDevice;->N:Z

    aput v3, v0, v1

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    goto :goto_0

    :cond_6
    new-array v0, v2, [I

    .line 8
    iget-boolean v3, p0, Lmodule/sound/AudioDevice;->M:Z

    aput v3, v0, v1

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    goto :goto_0

    :cond_7
    new-array v0, v2, [I

    .line 9
    iget v3, p0, Lmodule/sound/AudioDevice;->h0:I

    aput v3, v0, v1

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    goto :goto_0

    :cond_8
    new-array v0, v2, [I

    .line 10
    iget-boolean v3, p0, Lmodule/sound/AudioDevice;->E:Z

    aput v3, v0, v1

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    :goto_0
    move v1, v2

    :goto_1
    return v1

    nop

    :array_0
    .array-data 4
        0x0
        0x64
    .end array-data
.end method

.method public U0(I)V
    .locals 4

    const/16 v0, 0x64

    .line 1
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2
    iget v1, p0, Lmodule/sound/AudioDevice;->I:I

    if-ne v1, p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lmodule/sound/AudioDevice;->o1()I

    move-result v1

    .line 4
    iput p1, p0, Lmodule/sound/AudioDevice;->I:I

    int-to-float v2, p1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    int-to-float v3, v1

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 5
    iput v2, p0, Lmodule/sound/AudioDevice;->H:I

    .line 6
    sget-object v2, Lmodule/sound/AudioDevice$STORE;->J0:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {p0, v2, p1}, Lmodule/sound/AudioDevice;->G0(Lmodule/sound/AudioDevice$STORE;I)V

    .line 7
    iget-object p1, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {p1, v2}, Lo1/h0;->e(I)V

    .line 8
    sget-object p1, Lmodule/sound/AudioDevice$STORE;->J:Lmodule/sound/AudioDevice$STORE;

    iget v2, p0, Lmodule/sound/AudioDevice;->H:I

    invoke-virtual {p0, p1, v2}, Lmodule/sound/AudioDevice;->G0(Lmodule/sound/AudioDevice$STORE;I)V

    .line 9
    iget-object v2, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {v2, p1}, Lo1/h0;->e(I)V

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    iget v1, p0, Lmodule/sound/AudioDevice;->H:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, p1, v2

    const/4 v1, 0x2

    iget v3, p0, Lmodule/sound/AudioDevice;->I:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p1, v1

    const-string v1, "======>> total: %d, offset: %d, volOffsetUI: %d"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "c32107"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x34

    new-array v1, v2, [I

    .line 11
    iget v3, p0, Lmodule/sound/AudioDevice;->I:I

    aput v3, v1, v0

    invoke-static {p1, v1}, Ly0/h;->s0(I[I)V

    .line 12
    iget p1, p0, Lmodule/sound/AudioDevice;->g:I

    invoke-virtual {p0, p1, v2}, Lmodule/sound/AudioDevice;->A1(IZ)V

    return-void
.end method

.method public V(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lmodule/sound/AudioDevice;->d:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    return p1
.end method

.method public V0(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmodule/sound/AudioDevice;->P:[I

    const/16 v1, 0x14

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-static {v1, v0}, Lo1/s0;->q(II)[I

    move-result-object v0

    iput-object v0, p0, Lmodule/sound/AudioDevice;->P:[I

    :cond_0
    if-lez p1, :cond_1

    if-ge p1, v1, :cond_1

    .line 3
    iget-object v0, p0, Lmodule/sound/AudioDevice;->P:[I

    sget-object v1, Lbase/Configure$Property;->H:Lbase/Configure$Property;

    invoke-virtual {v1, p1, p2}, Lbase/Configure$Property;->e(II)I

    move-result p2

    aput p2, v0, p1

    :cond_1
    return-void
.end method

.method public W0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lmodule/sound/AudioDevice;->r:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lmodule/sound/AudioDevice;->v0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lmodule/sound/AudioDevice;->r:Landroid/os/Handler;

    iget-object v1, p0, Lmodule/sound/AudioDevice;->v0:Ljava/lang/Runnable;

    const-wide/16 v2, 0x50

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public X(I)[I
    .locals 1

    .line 1
    iget-object v0, p0, Lmodule/sound/AudioDevice;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    return-object p1
.end method

.method public varargs X0([I)V
    .locals 0

    return-void
.end method

.method public Y(Lmodule/sound/AudioDevice$STORE;I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lo1/h0;->h(II)I

    move-result p1

    return p1
.end method

.method public Y0([I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/sound/AudioDevice;->n:[I

    return-void
.end method

.method public Z(Lmodule/sound/AudioDevice$STORE;[I)[I
    .locals 1

    .line 1
    iget-object v0, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {v0, p1}, Lo1/h0;->i(I)[I

    move-result-object p1

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    return-object p2
.end method

.method public Z0(I[I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmodule/sound/AudioDevice;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2
    iget p2, p0, Lmodule/sound/AudioDevice;->k:I

    if-ne p1, p2, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lmodule/sound/AudioDevice;->w0(I)V

    :cond_0
    return-void
.end method

.method public a0(I)I
    .locals 2

    .line 1
    sget v0, Ly0/f;->L:I

    mul-int/2addr p1, v0

    add-int/lit8 p1, p1, 0xa

    div-int/lit8 p1, p1, 0x14

    .line 2
    sget v0, Ly0/f;->J:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public a1(II)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const/16 p1, 0x35

    .line 1
    invoke-static {p1, v0}, Ly0/h;->s0(I[I)V

    return-void
.end method

.method public varargs b0(I[I)[I
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public b1(Z)V
    .locals 2

    const/4 v0, 0x1

    new-array v1, v0, [I

    xor-int/2addr p1, v0

    const/4 v0, 0x0

    aput p1, v1, v0

    const/16 p1, 0x37

    .line 1
    invoke-static {p1, v1}, Ly0/h;->s0(I[I)V

    return-void
.end method

.method public c0(Z)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioDevice App Mute   mute = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " loaded:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lmodule/sound/AudioDevice;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "soundMute"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "00 handleAppMute Mute  mMuteStatus = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmodule/sound/AudioDevice;->X:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mUserMute:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lmodule/sound/AudioDevice;->V:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iput p1, p0, Lmodule/sound/AudioDevice;->W:I

    .line 4
    iget p1, p0, Lmodule/sound/AudioDevice;->W:I

    if-lez p1, :cond_1

    .line 5
    iget-object p1, p0, Lmodule/sound/AudioDevice;->S:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/high16 p1, -0x80000000

    .line 7
    iput p1, p0, Lmodule/sound/AudioDevice;->U:I

    .line 8
    iget p1, p0, Lmodule/sound/AudioDevice;->V:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lmodule/sound/AudioDevice;->V:I

    iput p1, p0, Lmodule/sound/AudioDevice;->X:I

    .line 9
    iget-boolean p1, p0, Lmodule/sound/AudioDevice;->e:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p1}, Lmodule/sound/AudioDevice;->m1(I)I

    move-result p1

    .line 11
    invoke-virtual {p0, p1}, Lmodule/sound/AudioDevice;->C1(I)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p0}, Lmodule/sound/AudioDevice;->t0()V

    .line 13
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "01 handleAppMute Mute  mMuteStatus = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lmodule/sound/AudioDevice;->X:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lmodule/sound/AudioDevice;->V:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public abstract c1()[I
.end method

.method public d0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lmodule/sound/AudioDevice;->r:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lmodule/sound/AudioDevice;->l0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lmodule/sound/AudioDevice;->r:Landroid/os/Handler;

    iget-object v1, p0, Lmodule/sound/AudioDevice;->l0:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public d1(Z)V
    .locals 3

    .line 1
    sget-object v0, Lmodule/sound/AudioDevice$STORE;->X:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {p0, v0, p1}, Lmodule/sound/AudioDevice;->G0(Lmodule/sound/AudioDevice$STORE;I)V

    const/16 v0, 0x40

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 2
    invoke-static {v0, v1}, Ly0/h;->s0(I[I)V

    return-void
.end method

.method public e()V
    .locals 3

    .line 1
    invoke-super {p0}, Ly0/e;->e()V

    const-string v0, "c32107"

    const-string v1, " load >>>>>>>>>>>>>>>>>>>>>>>>>>>SETUP START  IN()  ENTER !! "

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    const-string v1, " load >>>>>>>>>>>>>>>>>>>>>>>>>>>SETUP START IN()  ENTER !! "

    invoke-virtual {v0, v1}, Ln1/b;->w(Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lmodule/sound/AudioDevice;->l:I

    .line 5
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lmodule/sound/AudioDevice;->s0:Ljava/lang/Runnable;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 6
    sget-object v0, Lu0/c;->c:Lo1/y;

    iget-object v1, p0, Lmodule/sound/AudioDevice;->s0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 7
    sget-object v0, Lu0/c;->e:Lo1/y;

    iget-object v1, p0, Lmodule/sound/AudioDevice;->s0:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public e0()Z
    .locals 1

    .line 1
    sget v0, Ly0/f;->R0:I

    if-nez v0, :cond_1

    sget v0, Ly0/f;->T0:I

    if-nez v0, :cond_1

    sget v0, Ly0/f;->Q0:I

    if-nez v0, :cond_1

    sget-boolean v0, Lplugins/BusKtv;->g:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public e1(II)V
    .locals 3

    if-nez p1, :cond_0

    .line 1
    sget-object v0, Lmodule/sound/AudioDevice$STORE;->l:Lmodule/sound/AudioDevice$STORE;

    goto :goto_0

    :cond_0
    const/16 v0, 0x100

    if-ne p1, v0, :cond_1

    .line 2
    sget-object v0, Lmodule/sound/AudioDevice$STORE;->m:Lmodule/sound/AudioDevice$STORE;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p0, v0, p2}, Lmodule/sound/AudioDevice;->G0(Lmodule/sound/AudioDevice$STORE;I)V

    const/16 v0, 0x1b

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    .line 4
    invoke-static {v0, v1}, Ly0/h;->s0(I[I)V

    :cond_2
    return-void
.end method

.method public f()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lmodule/sound/AudioDevice;->e:Z

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lmodule/sound/AudioDevice;->l:I

    .line 3
    invoke-super {p0}, Ly0/e;->f()V

    .line 4
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lmodule/sound/AudioDevice;->s0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lu0/c;->c:Lo1/y;

    iget-object v1, p0, Lmodule/sound/AudioDevice;->s0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lu0/c;->e:Lo1/y;

    iget-object v1, p0, Lmodule/sound/AudioDevice;->s0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    iget-object v0, p0, Lmodule/sound/AudioDevice;->r:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 8
    iget-object v1, p0, Lmodule/sound/AudioDevice;->v0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public f0(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lmodule/sound/AudioDevice;->E:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lmodule/sound/AudioDevice;->E:Z

    .line 3
    sget-object v0, Lmodule/sound/AudioDevice$STORE;->I:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {p0, v0, p1}, Lmodule/sound/AudioDevice;->G0(Lmodule/sound/AudioDevice$STORE;I)V

    const/16 v0, 0x1b

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 4
    invoke-static {v0, v1}, Ly0/h;->s0(I[I)V

    :cond_0
    return-void
.end method

.method public f1(Z)V
    .locals 3

    .line 1
    sget-object v0, Lmodule/sound/AudioDevice$STORE;->x:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {p0, v0, p1}, Lmodule/sound/AudioDevice;->G0(Lmodule/sound/AudioDevice$STORE;I)V

    const/16 v0, 0x26

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 2
    invoke-static {v0, v1}, Ly0/h;->s0(I[I)V

    return-void
.end method

.method public g0(II)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/16 v3, 0x1f

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 1
    :sswitch_0
    sget-object v4, Lmodule/sound/AudioDevice$STORE;->k:Lmodule/sound/AudioDevice$STORE;

    goto :goto_1

    .line 2
    :sswitch_1
    sget-object v4, Lmodule/sound/AudioDevice$STORE;->j:Lmodule/sound/AudioDevice$STORE;

    goto :goto_1

    .line 3
    :sswitch_2
    sget-object v4, Lmodule/sound/AudioDevice$STORE;->j:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {p0, v4, p2}, Lmodule/sound/AudioDevice;->G0(Lmodule/sound/AudioDevice$STORE;I)V

    new-array v4, v2, [I

    const v5, 0x20010

    aput v5, v4, v1

    aput p2, v4, v0

    .line 4
    invoke-static {v3, v4}, Ly0/h;->s0(I[I)V

    .line 5
    sget-object v4, Lmodule/sound/AudioDevice$STORE;->k:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {p0, v4, p2}, Lmodule/sound/AudioDevice;->G0(Lmodule/sound/AudioDevice$STORE;I)V

    new-array v4, v2, [I

    const v5, 0x20020

    aput v5, v4, v1

    aput p2, v4, v0

    .line 6
    invoke-static {v3, v4}, Ly0/h;->s0(I[I)V

    goto :goto_0

    .line 7
    :sswitch_3
    sget-object v4, Lmodule/sound/AudioDevice$STORE;->i:Lmodule/sound/AudioDevice$STORE;

    goto :goto_1

    .line 8
    :sswitch_4
    sget-object v4, Lmodule/sound/AudioDevice$STORE;->h:Lmodule/sound/AudioDevice$STORE;

    goto :goto_1

    .line 9
    :sswitch_5
    sget-object v4, Lmodule/sound/AudioDevice$STORE;->h:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {p0, v4, p2}, Lmodule/sound/AudioDevice;->G0(Lmodule/sound/AudioDevice$STORE;I)V

    new-array v4, v2, [I

    const v5, 0x10010

    aput v5, v4, v1

    aput p2, v4, v0

    .line 10
    invoke-static {v3, v4}, Ly0/h;->s0(I[I)V

    .line 11
    sget-object v4, Lmodule/sound/AudioDevice$STORE;->i:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {p0, v4, p2}, Lmodule/sound/AudioDevice;->G0(Lmodule/sound/AudioDevice$STORE;I)V

    new-array v4, v2, [I

    const v5, 0x10020

    aput v5, v4, v1

    aput p2, v4, v0

    .line 12
    invoke-static {v3, v4}, Ly0/h;->s0(I[I)V

    :goto_0
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_0

    .line 13
    invoke-virtual {p0, v4, p2}, Lmodule/sound/AudioDevice;->G0(Lmodule/sound/AudioDevice$STORE;I)V

    new-array v2, v2, [I

    aput p1, v2, v1

    aput p2, v2, v0

    .line 14
    invoke-static {v3, v2}, Ly0/h;->s0(I[I)V

    :cond_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_5
        0x10010 -> :sswitch_4
        0x10020 -> :sswitch_3
        0x20000 -> :sswitch_2
        0x20010 -> :sswitch_1
        0x20020 -> :sswitch_0
    .end sparse-switch
.end method

.method public g1()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmodule/sound/AudioDevice;->K:Z

    return v0
.end method

.method public h(I)V
    .locals 3

    .line 1
    iget v0, p0, Lmodule/sound/AudioDevice;->k:I

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lmodule/sound/AudioDevice;->M:Z

    if-eqz v0, :cond_3

    .line 2
    :cond_0
    iget-object v0, p0, Lmodule/sound/AudioDevice;->r:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Lmodule/sound/AudioDevice;->l0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    :cond_1
    iput p1, p0, Lmodule/sound/AudioDevice;->k:I

    .line 5
    iget-boolean v0, p0, Lmodule/sound/AudioDevice;->N:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lmodule/sound/AudioDevice;->M:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lmodule/sound/AudioDevice;->M:Z

    const/16 v1, 0x48

    const/4 v2, 0x1

    new-array v2, v2, [I

    aput v0, v2, v0

    .line 7
    invoke-static {v1, v2}, Ly0/h;->s0(I[I)V

    .line 8
    :cond_2
    sget-object v0, Lmodule/sound/AudioDevice$STORE;->a:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {p0, v0, p1}, Lmodule/sound/AudioDevice;->G0(Lmodule/sound/AudioDevice$STORE;I)V

    .line 9
    invoke-static {p1}, Ly0/h;->F(I)V

    .line 10
    iget p1, p0, Lmodule/sound/AudioDevice;->k:I

    invoke-virtual {p0, p1}, Lmodule/sound/AudioDevice;->w0(I)V

    :cond_3
    return-void
.end method

.method public h0(Z)V
    .locals 0

    return-void
.end method

.method public h1(II)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const/16 p1, 0x36

    .line 1
    invoke-static {p1, v0}, Ly0/h;->s0(I[I)V

    return-void
.end method

.method public final i0([II)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    array-length p1, p1

    if-lt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public i1(II)V
    .locals 8

    const/16 v0, 0x10

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/16 v5, 0x23

    if-eq p1, v0, :cond_2

    const/16 v6, 0x20

    if-eq p1, v6, :cond_1

    const/high16 v7, 0x40000000    # 2.0f

    if-eq p1, v7, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget-object v7, Lmodule/sound/AudioDevice$STORE;->t:Lmodule/sound/AudioDevice$STORE;

    .line 2
    invoke-virtual {p0, v7, p2}, Lmodule/sound/AudioDevice;->G0(Lmodule/sound/AudioDevice$STORE;I)V

    new-array v7, v4, [I

    aput v0, v7, v3

    aput p2, v7, v2

    .line 3
    invoke-static {v5, v7}, Ly0/h;->s0(I[I)V

    .line 4
    sget-object v0, Lmodule/sound/AudioDevice$STORE;->u:Lmodule/sound/AudioDevice$STORE;

    .line 5
    invoke-virtual {p0, v0, p2}, Lmodule/sound/AudioDevice;->G0(Lmodule/sound/AudioDevice$STORE;I)V

    new-array v0, v4, [I

    aput v6, v0, v3

    aput p2, v0, v2

    .line 6
    invoke-static {v5, v0}, Ly0/h;->s0(I[I)V

    goto :goto_0

    .line 7
    :cond_1
    sget-object v1, Lmodule/sound/AudioDevice$STORE;->u:Lmodule/sound/AudioDevice$STORE;

    goto :goto_0

    .line 8
    :cond_2
    sget-object v1, Lmodule/sound/AudioDevice$STORE;->t:Lmodule/sound/AudioDevice$STORE;

    :goto_0
    if-eqz v1, :cond_3

    .line 9
    invoke-virtual {p0, v1, p2}, Lmodule/sound/AudioDevice;->G0(Lmodule/sound/AudioDevice$STORE;I)V

    new-array v0, v4, [I

    aput p1, v0, v3

    aput p2, v0, v2

    .line 10
    invoke-static {v5, v0}, Ly0/h;->s0(I[I)V

    :cond_3
    return-void
.end method

.method public j([I)V
    .locals 5

    .line 1
    iget-object p1, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    sget-object v0, Lmodule/sound/AudioDevice$STORE;->G:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    sget v3, Ly0/f;->j:I

    const/4 v4, 0x0

    aput v3, v2, v4

    sget v3, Ly0/f;->l:I

    const/4 v4, 0x1

    aput v3, v2, v4

    invoke-virtual {p1, v1, v2}, Lo1/h0;->r(I[I)V

    .line 2
    iget-object p1, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Lo1/h0;->e(I)V

    return-void
.end method

.method public abstract j0(I)I
.end method

.method public j1(II)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const/16 p1, 0x22

    .line 1
    invoke-static {p1, v0}, Ly0/h;->s0(I[I)V

    return-void
.end method

.method public k()V
    .locals 8

    .line 1
    iget-object v0, p0, Lmodule/sound/AudioDevice;->c0:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " load >>>>>>>>>>>>>SETUP START !!  +    DataMain.sAccOn=  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lu0/b;->a0:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "   loaded : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lmodule/sound/AudioDevice;->e:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ln1/b;->w(Ljava/lang/String;)V

    const-string v1, "c32107"

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " load >>>>>>>>>>>>>SETUP START !!  +    DataMain.sAccOn=  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lu0/b;->a0:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "   loaded : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lmodule/sound/AudioDevice;->e:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-boolean v1, p0, Lmodule/sound/AudioDevice;->e:Z

    if-eqz v1, :cond_0

    .line 5
    monitor-exit v0

    return-void

    :cond_0
    const-string v1, "c32107"

    const-string v2, " load >>>>>>>>>>>>>>>>>>>>>>>>>>>SETUP START !! "

    .line 6
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v1

    const-string v2, " load >>>>>>>>>>>>>>>>>>>>>>>>>>>SETUP START !! "

    invoke-virtual {v1, v2}, Ln1/b;->w(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object v1

    iget-object v2, p0, Lmodule/sound/AudioDevice;->x0:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/16 v1, 0x800

    const/4 v2, 0x1

    .line 9
    invoke-static {v1, v2}, Ly0/h;->X(IZ)V

    const-wide/16 v3, 0xc8

    .line 10
    invoke-static {v3, v4}, Lo1/s0;->C(J)V

    .line 11
    iput-boolean v2, p0, Lmodule/sound/AudioDevice;->e:Z

    .line 12
    invoke-virtual {p0}, Lmodule/sound/AudioDevice;->m0()V

    .line 13
    invoke-virtual {p0}, Lmodule/sound/AudioDevice;->n0()V

    .line 14
    sget-object v3, Lz0/d;->d:Lz0/d;

    invoke-virtual {v3}, Lz0/d;->e()V

    .line 15
    invoke-virtual {p0}, Lmodule/sound/AudioDevice;->W0()V

    .line 16
    sget-object v3, Lz0/d;->d:Lz0/d;

    invoke-virtual {v3}, Lz0/d;->c()V

    .line 17
    iget-object v3, p0, Lmodule/sound/AudioDevice;->o:[I

    if-eqz v3, :cond_1

    .line 18
    invoke-virtual {p0, v3}, Lmodule/sound/AudioDevice;->X0([I)V

    .line 19
    :cond_1
    iget-boolean v3, p0, Lmodule/sound/AudioDevice;->e:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    move v3, v4

    .line 20
    :goto_0
    sget v5, Ly0/f;->u:I

    if-eq v5, v3, :cond_3

    .line 21
    sput v3, Ly0/f;->u:I

    .line 22
    sget-object v3, Ly0/g;->c:Lo1/y;

    invoke-virtual {v3}, Lo1/y;->c()V

    :cond_3
    const-string v3, "c32107"

    .line 23
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " load >>>>>>>>>>>>>>>>>>>>>>>>>>>MODE   : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lmodule/sound/AudioDevice;->k:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lmodule/sound/AudioDevice;->e:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v3

    const-string v5, " load >>>>>>>>>>>>>>>>>>>>>>>>>>>SETUP SUCCESS !! "

    invoke-virtual {v3, v5}, Ln1/b;->w(Ljava/lang/String;)V

    const-string v3, "c32107"

    const-string v5, " load >>>>>>>>>>>>>>>>>>>>>>>>>>>SETUP SUCCESS !! "

    .line 25
    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    sget-object v3, Ly0/g;->p:Lo1/z;

    iget-object v5, p0, Lmodule/sound/AudioDevice;->m0:Lo1/p;

    invoke-virtual {v3, v5}, Lo1/z;->a(Lo1/p;)V

    .line 27
    sget-object v3, Ly0/g;->n:Lo1/z;

    iget-object v5, p0, Lmodule/sound/AudioDevice;->o0:Lo1/p;

    invoke-virtual {v3, v5}, Lo1/z;->a(Lo1/p;)V

    .line 28
    sget-object v3, Ly0/g;->o:Lo1/z;

    iget-object v5, p0, Lmodule/sound/AudioDevice;->p0:Lo1/p;

    invoke-virtual {v3, v5}, Lo1/z;->a(Lo1/p;)V

    .line 29
    sget-object v3, Lu0/c;->a:Lo1/y;

    iget-object v5, p0, Lmodule/sound/AudioDevice;->t0:Ljava/lang/Runnable;

    invoke-virtual {v3, v5, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 30
    sget-object v3, Lh0/d;->b:Lo1/y;

    iget-object v5, p0, Lmodule/sound/AudioDevice;->u0:Ljava/lang/Runnable;

    invoke-virtual {v3, v5, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 31
    sget-object v3, Lk0/ot;->b:Lo1/y;

    iget-object v5, p0, Lmodule/sound/AudioDevice;->n0:Ljava/lang/Runnable;

    invoke-virtual {v3, v5, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 32
    sget-object v3, Lo1/j0;->j:Lo1/j0;

    invoke-virtual {v3, p0}, Lo1/j0;->c(Ljava/lang/Runnable;)V

    .line 33
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object v3

    iget-object v5, p0, Lmodule/sound/AudioDevice;->x0:Ljava/lang/Runnable;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 34
    sget-object v3, Lu0/c;->H:Lo1/y;

    iget-object v5, p0, Lmodule/sound/AudioDevice;->y0:Ljava/lang/Runnable;

    invoke-virtual {v3, v5, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 35
    iget v3, p0, Lmodule/sound/AudioDevice;->h0:I

    if-lez v3, :cond_4

    .line 36
    sget-object v3, Lk0/ot;->c:Lo1/y;

    iget-object v5, p0, Lmodule/sound/AudioDevice;->i0:Ljava/lang/Runnable;

    invoke-virtual {v3, v5, v4}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 37
    sget-object v3, Lo1/h;->b:Lo1/y;

    iget-object v5, p0, Lmodule/sound/AudioDevice;->i0:Ljava/lang/Runnable;

    invoke-virtual {v3, v5, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 38
    :cond_4
    iget-boolean v2, p0, Lmodule/sound/AudioDevice;->e:Z

    if-eqz v2, :cond_5

    .line 39
    invoke-static {v1, v4}, Ly0/h;->X(IZ)V

    .line 40
    invoke-static {}, Ly0/h;->M()V

    .line 41
    :cond_5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public k0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmodule/sound/AudioDevice;->w:Z

    return v0
.end method

.method public k1(I)V
    .locals 2

    .line 1
    sget-object v0, Lmodule/sound/AudioDevice$STORE;->e:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {p0, v0, p1}, Lmodule/sound/AudioDevice;->G0(Lmodule/sound/AudioDevice$STORE;I)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 p1, 0x21

    .line 2
    invoke-static {p1, v0}, Ly0/h;->s0(I[I)V

    return-void
.end method

.method public l(I)V
    .locals 1

    .line 1
    sget-object v0, Lmodule/sound/AudioDevice$STORE;->b:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {p0, v0, p1}, Lmodule/sound/AudioDevice;->G0(Lmodule/sound/AudioDevice$STORE;I)V

    return-void
.end method

.method public l0(I)Z
    .locals 1

    .line 1
    sget-object v0, Lmodule/sound/AudioDevice;->z0:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public l1(Z)V
    .locals 3

    .line 1
    sget-object v0, Lmodule/sound/AudioDevice$STORE;->d:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {p0, v0, p1}, Lmodule/sound/AudioDevice;->G0(Lmodule/sound/AudioDevice$STORE;I)V

    const/16 v0, 0x20

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 2
    invoke-static {v0, v1}, Ly0/h;->s0(I[I)V

    return-void
.end method

.method public m0()V
    .locals 5

    .line 1
    sget-object v0, Lmodule/sound/AudioDevice$STORE;->a:Lmodule/sound/AudioDevice$STORE;

    const-string v1, "sys.syu.eqmode"

    const/4 v2, 0x1

    invoke-static {v1, v2}, La/i;->k(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lmodule/sound/AudioDevice;->Y(Lmodule/sound/AudioDevice$STORE;I)I

    move-result v0

    iput v0, p0, Lmodule/sound/AudioDevice;->k:I

    sput v0, Ly0/f;->a0:I

    .line 2
    sget-object v0, Lmodule/sound/AudioDevice$STORE;->b:Lmodule/sound/AudioDevice$STORE;

    sget v1, Ly0/f;->E:I

    invoke-virtual {p0, v0, v1}, Lmodule/sound/AudioDevice;->Y(Lmodule/sound/AudioDevice$STORE;I)I

    move-result v0

    sput v0, Ly0/f;->E:I

    const/4 v1, 0x0

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 3
    :goto_0
    iput-boolean v0, p0, Lmodule/sound/AudioDevice;->f:Z

    .line 4
    iget-object v0, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    sget-object v3, Lmodule/sound/AudioDevice$STORE;->G:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-virtual {v0, v3}, Lo1/h0;->i(I)[I

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    array-length v3, v0

    iget-object v4, p0, Lmodule/sound/AudioDevice;->m:[I

    array-length v4, v4

    if-ne v3, v4, :cond_1

    .line 6
    iput-object v0, p0, Lmodule/sound/AudioDevice;->m:[I

    :cond_1
    const-string v0, "c32107"

    const-string v3, " =====>>   loadCustom"

    .line 7
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    sget-object v0, Lmodule/sound/AudioDevice$STORE;->R:Lmodule/sound/AudioDevice$STORE;

    const-string v3, "ro.syu.env_voloffset_level"

    invoke-static {v3, v1}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p0, v0, v3}, Lmodule/sound/AudioDevice;->Y(Lmodule/sound/AudioDevice$STORE;I)I

    move-result v0

    iput v0, p0, Lmodule/sound/AudioDevice;->h0:I

    .line 9
    sget v3, Lmodule/sound/AudioDevice;->F0:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lmodule/sound/AudioDevice;->h0:I

    .line 10
    iget-object v0, p0, Lmodule/sound/AudioDevice;->m:[I

    aget v3, v0, v1

    sput v3, Ly0/f;->j:I

    sput v3, Ly0/f;->L0:I

    .line 11
    aget v0, v0, v2

    sput v0, Ly0/f;->l:I

    sput v0, Ly0/f;->M0:I

    .line 12
    sput-boolean v2, Ly0/f;->v:Z

    .line 13
    sget-object v0, Lmodule/sound/AudioDevice$STORE;->o:Lmodule/sound/AudioDevice$STORE;

    sget v3, Ly0/f;->W0:I

    const-string v4, "ro.fyt.subwoof"

    invoke-static {v4, v3}, La/i;->k(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p0, v0, v3}, Lmodule/sound/AudioDevice;->Y(Lmodule/sound/AudioDevice$STORE;I)I

    move-result v0

    iput v0, p0, Lmodule/sound/AudioDevice;->z:I

    sput v0, Ly0/f;->V0:I

    .line 14
    sget-object v0, Lmodule/sound/AudioDevice$STORE;->x:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {p0, v0, v2}, Lmodule/sound/AudioDevice;->Y(Lmodule/sound/AudioDevice$STORE;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lmodule/sound/AudioDevice;->A:Z

    .line 15
    sget-object v0, Lmodule/sound/AudioDevice$STORE;->S:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {p0, v0, v1}, Lmodule/sound/AudioDevice;->Y(Lmodule/sound/AudioDevice$STORE;I)I

    move-result v0

    if-ne v0, v2, :cond_3

    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lmodule/sound/AudioDevice;->B:Z

    .line 16
    sget-object v0, Lmodule/sound/AudioDevice$STORE;->I:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {p0, v0, v1}, Lmodule/sound/AudioDevice;->Y(Lmodule/sound/AudioDevice$STORE;I)I

    move-result v0

    if-ne v0, v2, :cond_4

    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lmodule/sound/AudioDevice;->E:Z

    .line 17
    sget-object v0, Lmodule/sound/AudioDevice$STORE;->C0:Lmodule/sound/AudioDevice$STORE;

    iget-boolean v3, p0, Lmodule/sound/AudioDevice;->J:Z

    invoke-virtual {p0, v0, v3}, Lmodule/sound/AudioDevice;->Y(Lmodule/sound/AudioDevice$STORE;I)I

    move-result v0

    if-ne v0, v2, :cond_5

    goto :goto_4

    :cond_5
    move v2, v1

    :goto_4
    iput-boolean v2, p0, Lmodule/sound/AudioDevice;->J:Z

    .line 18
    sget-object v0, Lmodule/sound/AudioDevice$STORE;->K0:Lmodule/sound/AudioDevice$STORE;

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lmodule/sound/AudioDevice;->Y(Lmodule/sound/AudioDevice$STORE;I)I

    move-result v0

    iput v0, p0, Lmodule/sound/AudioDevice;->b0:I

    return-void
.end method

.method public m1(I)I
    .locals 6

    .line 1
    sget-object v0, Lmodule/sound/AudioDevice;->G0:[I

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    if-nez p1, :cond_0

    .line 2
    sget-object v0, Lmodule/sound/AudioDevice;->G0:[I

    aget p1, v0, p1

    return p1

    :cond_0
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    sget-object v3, Lmodule/sound/AudioDevice;->G0:[I

    aget v3, v3, p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    sget-object v3, Lmodule/sound/AudioDevice;->G0:[I

    aget v4, v3, v1

    const/4 v5, 0x2

    aget v3, v3, v5

    sub-int/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x3

    invoke-virtual {p0}, Lmodule/sound/AudioDevice;->H()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget v4, p0, Lmodule/sound/AudioDevice;->H:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "index : %d,  TabVol: %2X, mainVolTob[1] - mainVolTob[2]: %d, defOffset(): %d, volTableOffset: %d"

    .line 4
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "c32107"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    sget-object v2, Lmodule/sound/AudioDevice;->G0:[I

    aget v2, v2, p1

    invoke-virtual {p0}, Lmodule/sound/AudioDevice;->F0()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {p0, p1}, Lmodule/sound/AudioDevice;->E(I)I

    move-result v4

    add-int/2addr v2, v4

    new-array v4, v5, [Ljava/lang/Object;

    .line 6
    sget-object v5, Lmodule/sound/AudioDevice;->G0:[I

    aget p1, v5, p1

    const v5, 0xffff

    and-int/2addr p1, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v0

    and-int p1, v2, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    const-string p1, "mainVolTob[index] : %02X,  result: %02X"

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public n0()V
    .locals 2

    .line 1
    sget-object v0, Lmodule/sound/AudioDevice;->z0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2
    invoke-virtual {p0, v1}, Lmodule/sound/AudioDevice;->o0(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final n1()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lmodule/sound/AudioDevice;->o1()I

    move-result v0

    .line 2
    iget v1, p0, Lmodule/sound/AudioDevice;->H:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v1, v0

    float-to-int v0, v1

    const/16 v1, 0x64

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public o(I)V
    .locals 1

    .line 1
    iget v0, p0, Lmodule/sound/AudioDevice;->z:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lmodule/sound/AudioDevice;->z:I

    .line 3
    sget-object v0, Lmodule/sound/AudioDevice$STORE;->o:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {p0, v0, p1}, Lmodule/sound/AudioDevice;->G0(Lmodule/sound/AudioDevice$STORE;I)V

    :cond_0
    return-void
.end method

.method public o0(I)V
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lmodule/sound/AudioDevice;->X(I)[I

    move-result-object v0

    .line 2
    invoke-virtual {p0, p1}, Lmodule/sound/AudioDevice;->Q(I)Lmodule/sound/AudioDevice$STORE;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lmodule/sound/AudioDevice;->Z(Lmodule/sound/AudioDevice$STORE;[I)[I

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    array-length v0, v0

    array-length v2, v1

    if-ne v0, v2, :cond_0

    .line 4
    invoke-virtual {p0, p1, v1}, Lmodule/sound/AudioDevice;->Z0(I[I)V

    :cond_0
    return-void
.end method

.method public o1()I
    .locals 2

    .line 1
    sget-object v0, Lmodule/sound/AudioDevice;->G0:[I

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    invoke-virtual {p0}, Lmodule/sound/AudioDevice;->p0()I

    move-result v1

    sub-int/2addr v0, v1

    .line 2
    invoke-virtual {p0}, Lmodule/sound/AudioDevice;->H()I

    move-result v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public p()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/sound/AudioDevice;->R()V

    return-void
.end method

.method public p0()I
    .locals 2

    .line 1
    sget-object v0, Lmodule/sound/AudioDevice;->G0:[I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    :goto_0
    return v0
.end method

.method public varargs p1(I[I[I)V
    .locals 0

    return-void
.end method

.method public q0()I
    .locals 2

    .line 1
    sget-object v0, Lmodule/sound/AudioDevice;->G0:[I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    aget v1, v0, v1

    :goto_0
    return v1
.end method

.method public final q1()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lmodule/sound/AudioDevice;->o1()I

    move-result v0

    .line 2
    iget v1, p0, Lmodule/sound/AudioDevice;->I:I

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    int-to-float v2, v0

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 3
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public r0(I)V
    .locals 4

    .line 1
    invoke-static {}, Lf0/c;->X2()Lf0/c;

    move-result-object v0

    invoke-virtual {v0}, Lf0/c;->Y2()Lf0/a;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    .line 2
    iget v2, p0, Lmodule/sound/AudioDevice;->h0:I

    iget-object v3, p0, Lmodule/sound/AudioDevice;->e0:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v0, v1, p1, v2, v3}, Lf0/a;->b(IIII)V

    :cond_0
    return-void
.end method

.method public varargs r1(Ly/b;I[I)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .line 1
    invoke-virtual/range {v0 .. v5}, Lmodule/sound/AudioDevice;->s1(Ly/b;I[I[F[Ljava/lang/String;)V

    return-void
.end method

.method public run()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lmodule/sound/AudioDevice;->B()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lmodule/sound/AudioDevice;->F:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmodule/sound/AudioDevice;->F:I

    goto :goto_0

    .line 3
    :cond_0
    iput v1, p0, Lmodule/sound/AudioDevice;->F:I

    .line 4
    :goto_0
    iget v0, p0, Lmodule/sound/AudioDevice;->F:I

    const/4 v2, 0x4

    if-lt v0, v2, :cond_1

    .line 5
    sget-object v0, Lo1/j0;->j:Lo1/j0;

    invoke-virtual {v0, p0}, Lo1/j0;->d(Ljava/lang/Runnable;)V

    .line 6
    iput-boolean v1, p0, Lmodule/sound/AudioDevice;->e:Z

    .line 7
    invoke-virtual {p0}, Lmodule/sound/AudioDevice;->k()V

    .line 8
    iput v1, p0, Lmodule/sound/AudioDevice;->F:I

    :cond_1
    return-void
.end method

.method public s0()Z
    .locals 1

    .line 1
    sget v0, Lu0/b;->D:I

    invoke-virtual {p0, v0}, Lmodule/sound/AudioDevice;->j0(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final s1(Ly/b;I[I[F[Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    invoke-interface {p1, p2, p3, p4, p5}, Ly/b;->H0(I[I[F[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_0
    move-exception p2

    .line 3
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 4
    :goto_0
    monitor-exit p1

    goto :goto_2

    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    :cond_0
    :goto_2
    return-void
.end method

.method public final t0()V
    .locals 4

    .line 1
    iget v0, p0, Lmodule/sound/AudioDevice;->V:I

    .line 2
    iget v1, p0, Lmodule/sound/AudioDevice;->W:I

    if-lez v1, :cond_0

    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    and-int/lit8 v0, v0, -0x3

    .line 3
    :goto_0
    iget v1, p0, Lmodule/sound/AudioDevice;->X:I

    const/16 v2, 0xff

    if-eq v1, v2, :cond_1

    iget v1, p0, Lmodule/sound/AudioDevice;->X:I

    if-eq v0, v1, :cond_8

    .line 4
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioDevice mute() from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmodule/sound/AudioDevice;->X:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Sound"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iput v0, p0, Lmodule/sound/AudioDevice;->X:I

    .line 6
    iget v0, p0, Lmodule/sound/AudioDevice;->X:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    .line 7
    :goto_1
    iget-boolean v3, p0, Lmodule/sound/AudioDevice;->e:Z

    if-eqz v3, :cond_8

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p0, v2}, Lmodule/sound/AudioDevice;->y1(I)V

    .line 9
    invoke-virtual {p0, v2}, Lmodule/sound/AudioDevice;->r0(I)V

    goto :goto_2

    .line 10
    :cond_3
    iget v3, p0, Lmodule/sound/AudioDevice;->g:I

    if-lez v3, :cond_4

    .line 11
    invoke-virtual {p0, v3}, Lmodule/sound/AudioDevice;->y1(I)V

    .line 12
    :cond_4
    iget v3, p0, Lmodule/sound/AudioDevice;->h:I

    if-lez v3, :cond_5

    .line 13
    invoke-virtual {p0, v3}, Lmodule/sound/AudioDevice;->r0(I)V

    :cond_5
    :goto_2
    if-nez v0, :cond_7

    .line 14
    iget v3, p0, Lmodule/sound/AudioDevice;->g:I

    if-nez v3, :cond_6

    goto :goto_3

    :cond_6
    move v1, v2

    :cond_7
    :goto_3
    invoke-virtual {p0, v1}, Lmodule/sound/AudioDevice;->v0(Z)V

    .line 15
    invoke-static {}, Lf0/c;->X2()Lf0/c;

    move-result-object v1

    invoke-virtual {v1}, Lf0/c;->Y2()Lf0/a;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 16
    invoke-virtual {v1, v0}, Lf0/a;->f(Z)V

    :cond_8
    return-void
.end method

.method public t1()I
    .locals 1

    .line 1
    invoke-static {}, La/c;->g()I

    move-result v0

    return v0
.end method

.method public u0(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lmodule/sound/AudioDevice;->e:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioDevice User Mute   mute = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " loaded:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lmodule/sound/AudioDevice;->e:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "soundMute"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iput p1, p0, Lmodule/sound/AudioDevice;->V:I

    .line 4
    invoke-virtual {p0}, Lmodule/sound/AudioDevice;->t0()V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " mUserMute:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lmodule/sound/AudioDevice;->V:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public u1()I
    .locals 1

    .line 1
    invoke-static {}, La/c;->q()I

    move-result v0

    return v0
.end method

.method public v0(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lmodule/sound/AudioDevice;->e:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    sget-boolean v0, Lu0/b;->V3:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ----- >>>> AudioDevice MuteAmp dstMuet : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "   mute = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " loaded:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lmodule/sound/AudioDevice;->e:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " vol : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lmodule/sound/AudioDevice;->g:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "soundMute"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x100

    .line 3
    invoke-static {p1, v0}, Ly0/h;->X(IZ)V

    return-void
.end method

.method public v1()I
    .locals 1

    .line 1
    invoke-static {}, La/c;->j()I

    move-result v0

    return v0
.end method

.method public w(I)Z
    .locals 3

    .line 1
    sget-boolean v0, Lu0/b;->d4:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    :cond_0
    invoke-virtual {p0, p1}, Lmodule/sound/AudioDevice;->j0(I)I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 2
    sget p1, Lh0/c;->G:I

    if-nez p1, :cond_1

    sget p1, Ly0/f;->T0:I

    if-nez p1, :cond_1

    sget p1, Ly0/f;->R0:I

    if-nez p1, :cond_1

    sget p1, Ly0/f;->Q0:I

    if-nez p1, :cond_1

    sget p1, Lh0/c;->N:I

    if-eq p1, v2, :cond_1

    move v1, v2

    :cond_1
    return v1

    .line 3
    :cond_2
    sget-boolean v0, Lu0/b;->d4:Z

    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {p0, p1}, Lmodule/sound/AudioDevice;->j0(I)I

    move-result p1

    if-ne p1, v2, :cond_3

    sget p1, Ly0/f;->P0:I

    if-nez p1, :cond_3

    sget p1, Lh0/c;->G:I

    if-nez p1, :cond_3

    sget p1, Ly0/f;->T0:I

    if-nez p1, :cond_3

    sget p1, Ly0/f;->R0:I

    if-nez p1, :cond_3

    sget p1, Ly0/f;->Q0:I

    if-nez p1, :cond_3

    sget p1, Lh0/c;->N:I

    if-eq p1, v2, :cond_3

    sget p1, Lu0/b;->E:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method

.method public abstract w0(I)V
.end method

.method public w1()I
    .locals 1

    .line 1
    invoke-static {}, La/c;->w()I

    move-result v0

    return v0
.end method

.method public x([I)V
    .locals 2

    .line 1
    sget-object v0, Lmodule/sound/AudioDevice;->G0:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sput-object p1, Lmodule/sound/AudioDevice;->G0:[I

    .line 3
    :cond_0
    sget-object p1, Lmodule/sound/AudioDevice;->G0:[I

    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Lo1/b0;->e([III)Ljava/lang/String;

    move-result-object p1

    const-string v0, "sound"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {p0}, Lmodule/sound/AudioDevice;->T()V

    return-void
.end method

.method public x0(I)I
    .locals 5

    .line 1
    iget-object v0, p0, Lmodule/sound/AudioDevice;->n:[I

    if-eqz v0, :cond_3

    iget v1, p0, Lmodule/sound/AudioDevice;->p:I

    mul-int v2, p1, v1

    array-length v3, v0

    if-gt v2, v3, :cond_3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    const/4 v4, 0x3

    if-eq v1, v4, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr p1, v2

    mul-int/2addr p1, v1

    sub-int/2addr p1, v3

    .line 2
    aget p1, v0, p1

    goto :goto_1

    :cond_1
    add-int/2addr p1, v2

    mul-int/2addr p1, v1

    sub-int/2addr p1, v2

    .line 3
    aget p1, v0, p1

    goto :goto_1

    .line 4
    :cond_2
    aget p1, v0, p1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public x1(I[I)I
    .locals 6

    .line 1
    array-length v0, p2

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    if-nez p1, :cond_0

    .line 2
    aget p1, p2, p1

    return p1

    :cond_0
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    aget v3, p2, p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    aget v3, p2, v1

    const/4 v4, 0x2

    aget v5, p2, v4

    sub-int/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x3

    invoke-virtual {p0}, Lmodule/sound/AudioDevice;->H()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x4

    iget v5, p0, Lmodule/sound/AudioDevice;->H:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const-string v3, "index : %d,  TabVol: %2X, table[1] - table[2]: %d, defOffset(): %d, volTableOffset: %d"

    .line 4
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "c32107"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    aget v2, p2, p1

    invoke-virtual {p0}, Lmodule/sound/AudioDevice;->F0()I

    move-result v5

    sub-int/2addr v2, v5

    invoke-virtual {p0, p1}, Lmodule/sound/AudioDevice;->E(I)I

    move-result v5

    add-int/2addr v2, v5

    new-array v4, v4, [Ljava/lang/Object;

    .line 6
    aget p1, p2, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    const-string p1, "table[index] : %2X,  result: %2X"

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public y()V
    .locals 0

    return-void
.end method

.method public y0(I)I
    .locals 5

    .line 1
    iget-object v0, p0, Lmodule/sound/AudioDevice;->n:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v2, p0, Lmodule/sound/AudioDevice;->p:I

    mul-int v3, p1, v2

    array-length v4, v0

    if-gt v3, v4, :cond_1

    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    mul-int/2addr p1, v2

    add-int/lit8 p1, p1, -0x1

    .line 2
    aget p1, v0, p1

    move v1, p1

    :cond_1
    :goto_0
    return v1
.end method

.method public y1(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lmodule/sound/AudioDevice;->A1(IZ)V

    return-void
.end method

.method public z(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "beep DataSound.sBeep:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Ly0/f;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " dispatchBeep:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lmodule/sound/AudioDevice;->O:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ic:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "alex"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget v0, Ly0/f;->r:I

    if-eqz v0, :cond_2

    .line 3
    iget-boolean v0, p0, Lmodule/sound/AudioDevice;->O:Z

    if-eqz v0, :cond_0

    const/16 p1, 0x58

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 4
    invoke-static {p1, v0}, Ly0/h;->s0(I[I)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x3

    new-array p1, p1, [I

    .line 5
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lmodule/sound/AudioDevice;->y()V

    :cond_2
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x0
        0x52
    .end array-data
.end method

.method public z0()V
    .locals 0

    return-void
.end method

.method public z1(IF)V
    .locals 0

    const/4 p2, 0x0

    .line 1
    invoke-virtual {p0, p1, p2}, Lmodule/sound/AudioDevice;->A1(IZ)V

    return-void
.end method
