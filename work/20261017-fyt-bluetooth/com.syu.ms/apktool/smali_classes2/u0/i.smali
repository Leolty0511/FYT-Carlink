.class public Lu0/i;
.super Lbase/b;
.source "SourceFile"


# static fields
.field public static t0:Lu0/i;

.field public static final u0:Lo1/z;


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:I

.field public E:I

.field public F:Ljava/lang/String;

.field public G:Ljava/lang/String;

.field public H:I

.field public I:I

.field public J:I

.field public K:I

.field public L:I

.field public M:I

.field public N:I

.field public O:I

.field public P:I

.field public Q:I

.field public R:Z

.field public S:I

.field public T:I

.field public U:I

.field public V:Z

.field public W:Z

.field public X:Z

.field public Y:I

.field public Z:Lo1/z;

.field public a0:Lo1/z;

.field public b0:Lo1/y;

.field public c0:Lo1/y;

.field public d0:Lo1/y;

.field public e0:Lo1/y;

.field public final f0:Ljava/lang/Object;

.field public g:Landroid/util/SparseIntArray;

.field public g0:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public h:I

.field public h0:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public i:I

.field public i0:Ljava/lang/String;

.field public j:I

.field public final j0:[I

.field public k:I

.field public k0:I

.field public l:I

.field public l0:I

.field public m:I

.field public m0:Ljava/lang/String;

.field public n:Lo1/z;

.field public final n0:Ljava/lang/Runnable;

.field public o:Ljava/lang/String;

.field public o0:Ljava/lang/Runnable;

.field public p:Ljava/lang/Runnable;

.field public final p0:Ljava/lang/Runnable;

.field public q:Ljava/lang/String;

.field public final q0:Lq1/b;

.field public r:I

.field public final r0:Ljava/lang/Runnable;

.field public s:I

.field public final s0:Ljava/lang/Runnable;

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lo1/z;

    invoke-direct {v0}, Lo1/z;-><init>()V

    sput-object v0, Lu0/i;->u0:Lo1/z;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lbase/b;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lu0/i;->g:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lu0/i;->h:I

    const/4 v1, -0x1

    iput v1, p0, Lu0/i;->j:I

    iput v0, p0, Lu0/i;->k:I

    iput v1, p0, Lu0/i;->l:I

    iput v1, p0, Lu0/i;->m:I

    .line 4
    new-instance v2, Lo1/z;

    invoke-direct {v2}, Lo1/z;-><init>()V

    iput-object v2, p0, Lu0/i;->n:Lo1/z;

    const-string v2, ""

    .line 5
    iput-object v2, p0, Lu0/i;->o:Ljava/lang/String;

    const/4 v3, 0x0

    .line 6
    iput-object v3, p0, Lu0/i;->p:Ljava/lang/Runnable;

    .line 7
    iput-object v2, p0, Lu0/i;->q:Ljava/lang/String;

    .line 8
    iput v1, p0, Lu0/i;->t:I

    const/high16 v4, 0x10000

    .line 9
    iput v4, p0, Lu0/i;->u:I

    .line 10
    iput v0, p0, Lu0/i;->v:I

    .line 11
    iput v0, p0, Lu0/i;->w:I

    .line 12
    iput-boolean v0, p0, Lu0/i;->x:Z

    .line 13
    iput-boolean v0, p0, Lu0/i;->y:Z

    .line 14
    iput-boolean v0, p0, Lu0/i;->z:Z

    .line 15
    iput v1, p0, Lu0/i;->A:I

    const/4 v4, 0x3

    .line 16
    iput v4, p0, Lu0/i;->B:I

    .line 17
    iput v0, p0, Lu0/i;->C:I

    .line 18
    iput v1, p0, Lu0/i;->D:I

    .line 19
    iput v0, p0, Lu0/i;->E:I

    .line 20
    iput-object v2, p0, Lu0/i;->F:Ljava/lang/String;

    const-string v4, "NULL"

    .line 21
    iput-object v4, p0, Lu0/i;->G:Ljava/lang/String;

    .line 22
    iput v0, p0, Lu0/i;->H:I

    .line 23
    iput v0, p0, Lu0/i;->I:I

    const/4 v4, 0x1

    .line 24
    iput v4, p0, Lu0/i;->J:I

    .line 25
    iput v0, p0, Lu0/i;->K:I

    .line 26
    iput v0, p0, Lu0/i;->L:I

    .line 27
    iput v0, p0, Lu0/i;->M:I

    .line 28
    iput v1, p0, Lu0/i;->N:I

    iput v1, p0, Lu0/i;->O:I

    .line 29
    iput v1, p0, Lu0/i;->P:I

    .line 30
    iput v1, p0, Lu0/i;->Q:I

    .line 31
    iput-boolean v4, p0, Lu0/i;->R:Z

    const/16 v5, 0x32

    .line 32
    iput v5, p0, Lu0/i;->S:I

    .line 33
    iput v1, p0, Lu0/i;->T:I

    .line 34
    iput v1, p0, Lu0/i;->U:I

    .line 35
    iput-boolean v0, p0, Lu0/i;->V:Z

    .line 36
    iput-boolean v0, p0, Lu0/i;->W:Z

    .line 37
    iput-boolean v0, p0, Lu0/i;->X:Z

    .line 38
    iput v1, p0, Lu0/i;->Y:I

    .line 39
    new-instance v5, Lo1/z;

    invoke-direct {v5}, Lo1/z;-><init>()V

    iput-object v5, p0, Lu0/i;->Z:Lo1/z;

    .line 40
    new-instance v5, Lo1/z;

    invoke-direct {v5}, Lo1/z;-><init>()V

    iput-object v5, p0, Lu0/i;->a0:Lo1/z;

    .line 41
    new-instance v5, Lo1/y;

    invoke-direct {v5}, Lo1/y;-><init>()V

    iput-object v5, p0, Lu0/i;->b0:Lo1/y;

    .line 42
    new-instance v5, Lo1/y;

    invoke-direct {v5}, Lo1/y;-><init>()V

    iput-object v5, p0, Lu0/i;->c0:Lo1/y;

    .line 43
    new-instance v5, Lo1/y;

    invoke-direct {v5}, Lo1/y;-><init>()V

    iput-object v5, p0, Lu0/i;->d0:Lo1/y;

    .line 44
    new-instance v5, Lo1/y;

    invoke-direct {v5}, Lo1/y;-><init>()V

    iput-object v5, p0, Lu0/i;->e0:Lo1/y;

    .line 45
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lu0/i;->f0:Ljava/lang/Object;

    .line 46
    iput-object v3, p0, Lu0/i;->g0:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 47
    iput-object v3, p0, Lu0/i;->h0:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 48
    iput-object v2, p0, Lu0/i;->i0:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 49
    fill-array-data v3, :array_0

    iput-object v3, p0, Lu0/i;->j0:[I

    .line 50
    iput v1, p0, Lu0/i;->k0:I

    .line 51
    iput v0, p0, Lu0/i;->l0:I

    .line 52
    iput-object v2, p0, Lu0/i;->m0:Ljava/lang/String;

    .line 53
    new-instance v1, Lu0/i$a;

    invoke-direct {v1, p0}, Lu0/i$a;-><init>(Lu0/i;)V

    iput-object v1, p0, Lu0/i;->n0:Ljava/lang/Runnable;

    .line 54
    new-instance v1, Lu0/i$b;

    invoke-direct {v1, p0}, Lu0/i$b;-><init>(Lu0/i;)V

    iput-object v1, p0, Lu0/i;->o0:Ljava/lang/Runnable;

    .line 55
    new-instance v1, Lu0/i$c;

    invoke-direct {v1, p0}, Lu0/i$c;-><init>(Lu0/i;)V

    iput-object v1, p0, Lu0/i;->p0:Ljava/lang/Runnable;

    .line 56
    new-instance v1, Lq1/b;

    const/4 v2, 0x6

    invoke-direct {v1, v0, v2}, Lq1/b;-><init>(II)V

    iput-object v1, p0, Lu0/i;->q0:Lq1/b;

    .line 57
    new-instance v1, Lu0/i$d;

    invoke-direct {v1, p0}, Lu0/i$d;-><init>(Lu0/i;)V

    iput-object v1, p0, Lu0/i;->r0:Ljava/lang/Runnable;

    .line 58
    new-instance v1, Lu0/i$g;

    invoke-direct {v1, p0}, Lu0/i$g;-><init>(Lu0/i;)V

    iput-object v1, p0, Lu0/i;->s0:Ljava/lang/Runnable;

    .line 59
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lu0/i;->h0:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 60
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lu0/i;->g0:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 61
    sget-object v1, La/b;->m:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lu0/i;->X2(Ljava/lang/String;)V

    .line 62
    sget-object v1, La/b;->q:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lu0/i;->X2(Ljava/lang/String;)V

    .line 63
    sget-object v1, Lk0/nt;->e0:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v5, v1, v3

    .line 64
    invoke-virtual {p0, v5}, Lu0/i;->X2(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "main"

    .line 65
    invoke-virtual {p0, v1}, Lbase/b;->P2(Ljava/lang/String;)V

    .line 66
    iget-object v2, p0, Lbase/b;->f:Lo1/x;

    const-string v3, "Main-TRAN"

    invoke-virtual {v2, v3}, Lo1/x;->n(Ljava/lang/String;)V

    .line 67
    iget-object v2, p0, Lbase/b;->f:Lo1/x;

    sget-object v3, Lbase/Configure$Property;->q:Lbase/Configure$Property;

    invoke-virtual {v3, v1, v0}, Lbase/Configure$Property;->c(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v2, Lo1/x;->d:Z

    .line 68
    sget-object v1, Lu0/c;->f:Lo1/y;

    iget-object v2, p0, Lu0/i;->p0:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v0}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 69
    sget-object v0, Lo1/h;->b:Lo1/y;

    iget-object v1, p0, Lu0/i;->r0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v4}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static declared-synchronized l3()Lu0/i;
    .locals 2

    const-class v0, Lu0/i;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lu0/i;->t0:Lu0/i;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lu0/i;

    invoke-direct {v1}, Lu0/i;-><init>()V

    sput-object v1, Lu0/i;->t0:Lu0/i;

    .line 3
    :cond_0
    sget-object v1, Lu0/i;->t0:Lu0/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public A3(I)V
    .locals 3

    .line 1
    iget v0, p0, Lu0/i;->S:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lu0/i;->S:I

    const/16 v0, 0xbb

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    .line 3
    invoke-static {v0, v1}, Lu0/d;->I3(I[I)V

    :cond_0
    return-void
.end method

.method public B3(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lu0/i;->F:Ljava/lang/String;

    invoke-static {v0, p1}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " activeMedia: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "focus"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iput-object p1, p0, Lu0/i;->F:Ljava/lang/String;

    const/16 v0, 0xc3

    .line 4
    invoke-virtual {p0, v0, p1}, Lbase/b;->T2(ILjava/lang/Object;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 5
    invoke-static {v0, v1}, Lu0/d;->K3(I[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public C3(I)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    new-array p1, v0, [I

    .line 1
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_0
    new-array p1, v0, [I

    .line 2
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x1
        0x0
        0xc6
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x0
        0xc7
    .end array-data
.end method

.method public D3(I)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 1
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==>> Curr :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lu0/i;->k0:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ==>>  ambientSwitchArm :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " value :"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "Qin"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget p1, p0, Lu0/i;->k0:I

    if-eq v2, p1, :cond_2

    .line 3
    iput v2, p0, Lu0/i;->k0:I

    const/4 p1, 0x3

    new-array p1, p1, [I

    aput v1, p1, v0

    aput v0, p1, v1

    if-ne v2, v1, :cond_1

    const/16 v2, 0xde

    goto :goto_1

    :cond_1
    const/16 v2, 0xdd

    :goto_1
    const/4 v3, 0x2

    aput v2, p1, v3

    .line 4
    invoke-static {p1}, Lz/k;->s([I)V

    new-array p1, v3, [I

    aput v0, p1, v0

    .line 5
    iget v0, p0, Lu0/i;->k0:I

    aput v0, p1, v1

    const/16 v0, 0xc4

    .line 6
    invoke-virtual {p0, v0, p1}, Lbase/b;->T2(ILjava/lang/Object;)V

    .line 7
    invoke-static {v0, p1}, Lu0/d;->I3(I[I)V

    :cond_2
    return-void
.end method

.method public E3(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lu0/i;->R:Z

    return-void
.end method

.method public F3(I)V
    .locals 3

    .line 1
    iget v0, p0, Lu0/i;->K:I

    if-eq v0, p1, :cond_1

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v2, v0, v1

    aput v1, v0, v2

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/16 p1, 0xdb

    goto :goto_0

    :cond_0
    const/16 p1, 0xdc

    :goto_0
    aput p1, v0, v1

    .line 2
    invoke-static {v0}, Lz/k;->s([I)V

    :cond_1
    return-void
.end method

.method public G3(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lu0/i;->X:Z

    if-eq v0, p1, :cond_1

    .line 2
    iput-boolean p1, p0, Lu0/i;->X:Z

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 p1, 0xbd

    .line 3
    invoke-static {p1, v1}, Lu0/d;->I3(I[I)V

    const/4 v1, 0x3

    new-array v1, v1, [I

    aput v0, v1, v2

    aput v2, v1, v0

    const/4 v0, 0x2

    .line 4
    iget-boolean v2, p0, Lu0/i;->X:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x92

    goto :goto_0

    :cond_0
    const/16 v2, 0x93

    :goto_0
    aput v2, v1, v0

    invoke-static {v1}, Lz/k;->s([I)V

    .line 5
    iget-boolean v0, p0, Lu0/i;->X:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lbase/b;->T2(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public H3(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lu0/i;->i0:Ljava/lang/String;

    invoke-static {v0, p1}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lu0/i;->i0:Ljava/lang/String;

    const/16 v0, 0x3fa

    .line 3
    invoke-static {v0, p1}, Lm1/c;->f(ILjava/lang/String;)V

    const/16 p1, 0xbe

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lu0/i;->i0:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lu0/d;->K3(I[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public I3(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lu0/i;->q:Ljava/lang/String;

    invoke-static {v0, p1}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lo1/u;->l0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lu0/i;->q:Ljava/lang/String;

    const/16 v0, 0x3f8

    .line 3
    invoke-static {v0, p1}, Lm1/c;->f(ILjava/lang/String;)V

    const/16 p1, 0xb9

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lu0/i;->q:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lu0/d;->K3(I[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public J3(I)V
    .locals 3

    if-ltz p1, :cond_1

    const/16 v0, 0x7d0

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget v0, p0, Lu0/i;->l0:I

    if-eq v0, p1, :cond_1

    .line 2
    iput p1, p0, Lu0/i;->l0:I

    const/16 v0, 0x3ff

    .line 3
    invoke-static {v0, p1}, Lm1/c;->e(II)I

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xcc

    invoke-virtual {p0, v1, v0}, Lbase/b;->T2(ILjava/lang/Object;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v2, 0x0

    aput p1, v0, v2

    .line 5
    invoke-static {v1, v0}, Lu0/d;->I3(I[I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public K3(I)V
    .locals 3

    .line 1
    iget v0, p0, Lu0/i;->Q:I

    if-eq p1, v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 2
    :goto_0
    iput p1, p0, Lu0/i;->Q:I

    const/16 v2, 0x3eb

    .line 3
    invoke-static {v2, p1}, Lm1/c;->e(II)I

    const/16 p1, 0xb4

    new-array v1, v1, [I

    .line 4
    iget v2, p0, Lu0/i;->Q:I

    aput v2, v1, v0

    invoke-static {p1, v1}, Lu0/d;->I3(I[I)V

    :cond_1
    return-void
.end method

.method public L3(III)V
    .locals 6

    const/16 v0, 0x17

    .line 1
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    const/16 v1, 0x3b

    .line 2
    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    const/4 v1, 0x1

    if-nez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    const/4 v2, 0x3

    new-array v3, v2, [I

    const/4 v4, 0x6

    aput v4, v3, v0

    if-eqz p1, :cond_1

    const/16 v5, 0x23

    goto :goto_1

    :cond_1
    const/16 v5, 0x25

    :goto_1
    aput v5, v3, v1

    const/4 v5, 0x2

    aput p2, v3, v5

    .line 3
    invoke-static {v3}, Lz/k;->s([I)V

    new-array p2, v2, [I

    aput v4, p2, v0

    if-eqz p1, :cond_2

    const/16 p1, 0x24

    goto :goto_2

    :cond_2
    const/16 p1, 0x26

    :goto_2
    aput p1, p2, v1

    aput p3, p2, v5

    .line 4
    invoke-static {p2}, Lz/k;->s([I)V

    return-void
.end method

.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    new-instance p1, Ly/f;

    sget p2, Lu0/b;->D:I

    invoke-direct {p1, p2}, Ly/f;-><init>(I)V

    return-object p1
.end method

.method public M3(I)V
    .locals 4

    if-gez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [I

    const/16 v1, 0x7e

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput v2, v0, v1

    const/4 v3, 0x2

    .line 1
    invoke-static {p1, v1}, Lo1/s0;->c(II)I

    move-result v1

    aput v1, v0, v3

    const/4 v1, 0x3

    invoke-static {p1, v2}, Lo1/s0;->c(II)I

    move-result p1

    aput p1, v0, v1

    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public N2(I[I[F[Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  cmd     cmdid =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "main"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    const-string v1, "Qin"

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_e

    .line 2
    :pswitch_1
    invoke-static {p2, v7}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 3
    aget p1, p2, v7

    invoke-virtual {p0, p1}, Lu0/i;->J3(I)V

    goto/16 :goto_e

    .line 4
    :pswitch_2
    invoke-static {p4, v7}, Lo1/s0;->i([Ljava/lang/Object;I)Z

    move-result p1

    if-eqz p1, :cond_21

    invoke-static {p2, v7}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 5
    aget-object p1, p4, v7

    aget p2, p2, v7

    if-ne p2, v6, :cond_0

    goto :goto_0

    :cond_0
    move v6, v7

    :goto_0
    invoke-virtual {p0, p1, v6}, Lu0/i;->d3(Ljava/lang/String;Z)V

    goto/16 :goto_e

    .line 6
    :pswitch_3
    invoke-static {p2, v7}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 7
    aget p1, p2, v7

    invoke-virtual {p0, p1}, Lu0/i;->N3(I)V

    goto/16 :goto_e

    .line 8
    :pswitch_4
    invoke-virtual {p0, p2, v5}, Lu0/i;->p3([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 9
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    .line 10
    aget p3, p2, v6

    if-ne p3, v6, :cond_1

    move p3, v6

    goto :goto_1

    :cond_1
    move p3, v7

    .line 11
    :goto_1
    aget p4, p2, v7

    invoke-virtual {p1, p4, p3}, Ln1/b;->z(IZ)V

    if-eqz p3, :cond_2

    .line 12
    invoke-virtual {p1}, Ln1/b;->r()Z

    move-result p4

    if-nez p4, :cond_2

    .line 13
    invoke-virtual {p1, v6}, Ln1/b;->setDbg(Z)V

    .line 14
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object p4

    new-instance v0, Lu0/i$e;

    invoke-direct {v0, p0, p1}, Lu0/i$e;-><init>(Lu0/i;Ln1/b;)V

    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    const/16 p1, 0xc9

    new-array p4, v5, [I

    .line 15
    aget p2, p2, v7

    aput p2, p4, v7

    aput p3, p4, v6

    invoke-static {p1, p4}, Lu0/d;->I3(I[I)V

    goto/16 :goto_e

    .line 16
    :pswitch_5
    invoke-static {p2, v7}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 17
    aget p1, p2, v7

    invoke-virtual {p0, p1}, Lu0/i;->i4(I)V

    goto/16 :goto_e

    .line 18
    :pswitch_6
    invoke-static {p2, v6}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 19
    aget p1, p2, v7

    .line 20
    aget p2, p2, v6

    if-nez p1, :cond_21

    .line 21
    invoke-virtual {p0, p2}, Lu0/i;->D3(I)V

    goto/16 :goto_e

    .line 22
    :pswitch_7
    invoke-static {p2, v7}, Lo1/s0;->h([II)Z

    move-result p3

    if-eqz p3, :cond_21

    .line 23
    invoke-virtual {p0, p1, p2, v3, v3}, Lbase/b;->H0(I[I[F[Ljava/lang/String;)V

    goto/16 :goto_e

    .line 24
    :pswitch_8
    invoke-static {p2, v6}, Lo1/s0;->h([II)Z

    move-result p3

    if-eqz p3, :cond_21

    iget-object p3, p0, Lu0/i;->j0:[I

    invoke-static {p2, p3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p3

    if-nez p3, :cond_21

    .line 25
    iget-object p3, p0, Lu0/i;->j0:[I

    aget p4, p2, v7

    aput p4, p3, v7

    .line 26
    aget p2, p2, v6

    aput p2, p3, v6

    .line 27
    invoke-virtual {p0, p1, p3, v3, v3}, Lbase/b;->H0(I[I[F[Ljava/lang/String;)V

    goto/16 :goto_e

    .line 28
    :pswitch_9
    invoke-static {p2, v6}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_21

    new-array p1, v4, [I

    const/16 p3, 0x12

    aput p3, p1, v7

    .line 29
    aget p3, p2, v7

    aput p3, p1, v6

    aget p2, p2, v6

    aput p2, p1, v5

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_e

    .line 30
    :pswitch_a
    invoke-static {p2, v7}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 31
    aget p1, p2, v7

    if-ne p1, v6, :cond_3

    goto :goto_2

    :cond_3
    move v6, v7

    :goto_2
    invoke-virtual {p0, v6}, Lu0/i;->R3(Z)V

    goto/16 :goto_e

    .line 32
    :pswitch_b
    invoke-static {p2, v7}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 33
    aget p1, p2, v7

    if-ne p1, v6, :cond_4

    goto :goto_3

    :cond_4
    move v6, v7

    :goto_3
    invoke-virtual {p0, v6}, Lu0/i;->G3(Z)V

    goto/16 :goto_e

    .line 34
    :pswitch_c
    invoke-static {p2, v7}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 35
    aget p1, p2, v7

    if-ne p1, v6, :cond_5

    goto :goto_4

    :cond_5
    move v6, v7

    .line 36
    :goto_4
    invoke-virtual {p0, v6}, Lu0/i;->S3(Z)V

    goto/16 :goto_e

    .line 37
    :pswitch_d
    invoke-static {p2, v6}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 38
    aget p1, p2, v7

    aget p2, p2, v6

    invoke-virtual {p0, p1, p2}, Lu0/i;->Y3(II)V

    goto/16 :goto_e

    .line 39
    :pswitch_e
    invoke-static {p4, v7}, Lo1/s0;->i([Ljava/lang/Object;I)Z

    move-result p2

    if-eqz p2, :cond_21

    .line 40
    invoke-static {p1, p4}, Lu0/d;->K3(I[Ljava/lang/String;)V

    .line 41
    aget-object p1, p4, v7

    if-eqz p1, :cond_21

    .line 42
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object p2

    new-instance p3, Lapp/Receiver$b;

    invoke-direct {p3, p1}, Lapp/Receiver$b;-><init>(Ljava/lang/String;)V

    const-wide/16 v0, 0x3e8

    invoke-static {p2, p3, v0, v1}, Lo1/j;->b(Landroid/os/Handler;Ljava/lang/Runnable;J)V

    goto/16 :goto_e

    .line 43
    :pswitch_f
    invoke-static {p4, v7}, Lo1/s0;->i([Ljava/lang/Object;I)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 44
    aget-object p1, p4, v7

    invoke-virtual {p0, p1}, Lu0/i;->I3(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 45
    :pswitch_10
    invoke-static {p2, v6}, Lo1/s0;->h([II)Z

    move-result p3

    if-eqz p3, :cond_21

    .line 46
    sget-object p3, Lbase/Configure$Property;->y:Lbase/Configure$Property;

    const-string p4, ""

    invoke-virtual {p3, p4}, Lbase/Configure$Property;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    iget v1, p0, Lu0/i;->A:I

    aget v3, p2, v7

    if-ne v1, v3, :cond_6

    iget v1, p0, Lu0/i;->B:I

    aget v3, p2, v6

    if-eq v1, v3, :cond_21

    .line 48
    :cond_6
    aget v1, p2, v7

    iput v1, p0, Lu0/i;->A:I

    .line 49
    aget p2, p2, v6

    iput p2, p0, Lu0/i;->B:I

    .line 50
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "=======>>>  mLinkMode: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lu0/i;->A:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mLinkState: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lu0/i;->B:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "HDL"

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    sget-object p2, Lu0/c;->N:Lo1/y;

    invoke-virtual {p2}, Lo1/y;->c()V

    new-array p2, v5, [I

    .line 52
    iget v1, p0, Lu0/i;->A:I

    aput v1, p2, v7

    iget v1, p0, Lu0/i;->B:I

    aput v1, p2, v6

    invoke-static {p1, p2}, Lu0/d;->I3(I[I)V

    .line 53
    iget p1, p0, Lu0/i;->B:I

    const-string p2, "auto_wireless"

    const-string v1, "carplay_wireless"

    if-ne p1, v2, :cond_8

    .line 54
    iget p1, p0, Lu0/i;->A:I

    if-ne p1, v6, :cond_7

    .line 55
    invoke-virtual {p3, v1}, Lbase/Configure$Property;->g(Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_7
    if-ne p1, v4, :cond_21

    .line 56
    invoke-virtual {p3, p2}, Lbase/Configure$Property;->g(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 57
    :cond_8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    :cond_9
    iget p1, p0, Lu0/i;->B:I

    if-ne p1, v4, :cond_21

    .line 58
    invoke-virtual {p3, p4}, Lbase/Configure$Property;->g(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 59
    :pswitch_11
    invoke-static {p2, v7}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 60
    aget p1, p2, v7

    if-ne p1, v6, :cond_a

    goto :goto_5

    :cond_a
    move v6, v7

    :goto_5
    invoke-static {v6}, Lu0/d;->d1(I)V

    goto/16 :goto_e

    .line 61
    :pswitch_12
    invoke-static {p2, v7}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 62
    aget p1, p2, v7

    invoke-virtual {p0, p1}, Lu0/i;->K3(I)V

    goto/16 :goto_e

    .line 63
    :pswitch_13
    invoke-static {p2, v7}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 64
    aget p1, p2, v7

    invoke-virtual {p0, p1}, Lu0/i;->W3(I)V

    goto/16 :goto_e

    .line 65
    :pswitch_14
    invoke-static {p2, v6}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 66
    aget p1, p2, v7

    if-nez p1, :cond_b

    .line 67
    aget p1, p2, v6

    invoke-virtual {p0, p1}, Lu0/i;->P3(I)V

    goto/16 :goto_e

    .line 68
    :cond_b
    aget p1, p2, v7

    if-ne p1, v6, :cond_c

    .line 69
    aget p1, p2, v6

    invoke-virtual {p0, p1}, Lu0/i;->Q3(I)V

    goto/16 :goto_e

    .line 70
    :cond_c
    aget p1, p2, v7

    if-ne p1, v5, :cond_21

    .line 71
    aget p1, p2, v6

    invoke-virtual {p0, p1}, Lu0/i;->O3(I)V

    goto/16 :goto_e

    .line 72
    :pswitch_15
    invoke-static {p2, v7}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_21

    aget p1, p2, v7

    if-ltz p1, :cond_21

    new-array p1, v4, [I

    const/16 p3, 0x7f

    aput p3, p1, v7

    .line 73
    aget p3, p2, v7

    invoke-static {p3, v7}, Lo1/s0;->c(II)I

    move-result p3

    aput p3, p1, v6

    aget p2, p2, v7

    invoke-static {p2, v6}, Lo1/s0;->c(II)I

    move-result p2

    aput p2, p1, v5

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_e

    .line 74
    :pswitch_16
    invoke-static {p2, v7}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 75
    aget p1, p2, v7

    invoke-virtual {p0, p1}, Lu0/i;->e3(I)V

    goto/16 :goto_e

    .line 76
    :pswitch_17
    invoke-static {p2, v7}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_21

    iget p1, p0, Lu0/i;->K:I

    aget p3, p2, v7

    if-eq p1, p3, :cond_21

    .line 77
    aget p1, p2, v7

    invoke-virtual {p0, p1}, Lu0/i;->F3(I)V

    goto/16 :goto_e

    .line 78
    :pswitch_18
    invoke-static {p2, v7}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 79
    iget p1, p0, Lu0/i;->w:I

    aget p3, p2, v7

    if-eq p1, p3, :cond_21

    .line 80
    aget p1, p2, v7

    iput p1, p0, Lu0/i;->w:I

    .line 81
    iget-object p1, p0, Lu0/i;->d0:Lo1/y;

    invoke-virtual {p1}, Lo1/y;->c()V

    goto/16 :goto_e

    .line 82
    :pswitch_19
    invoke-static {p2, v7}, Lo1/s0;->h([II)Z

    move-result p3

    if-eqz p3, :cond_21

    .line 83
    aget p2, p2, v7

    if-ne p2, v6, :cond_d

    move p2, v6

    goto :goto_6

    :cond_d
    move p2, v7

    .line 84
    :goto_6
    iget-boolean p3, p0, Lu0/i;->y:Z

    if-eq p2, p3, :cond_21

    .line 85
    iput-boolean p2, p0, Lu0/i;->y:Z

    new-array p3, v6, [I

    aput p2, p3, v7

    .line 86
    invoke-static {p1, p3}, Lu0/d;->I3(I[I)V

    const/16 p1, 0xe0

    .line 87
    iget-boolean p2, p0, Lu0/i;->y:Z

    invoke-static {p1, p2}, Lm1/c;->e(II)I

    goto/16 :goto_e

    .line 88
    :pswitch_1a
    invoke-static {p2, v7}, Lo1/s0;->h([II)Z

    move-result p3

    if-eqz p3, :cond_21

    .line 89
    aget p2, p2, v7

    if-ne p2, v6, :cond_e

    move p2, v6

    goto :goto_7

    :cond_e
    move p2, v7

    .line 90
    :goto_7
    iget-boolean p3, p0, Lu0/i;->z:Z

    if-eq p2, p3, :cond_21

    .line 91
    iput-boolean p2, p0, Lu0/i;->z:Z

    new-array p3, v6, [I

    aput p2, p3, v7

    .line 92
    invoke-static {p1, p3}, Lu0/d;->I3(I[I)V

    const/16 p1, 0xe1

    .line 93
    iget-boolean p2, p0, Lu0/i;->z:Z

    invoke-static {p1, p2}, Lm1/c;->e(II)I

    goto/16 :goto_e

    .line 94
    :pswitch_1b
    invoke-static {p2, v7}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 95
    aget p1, p2, v7

    invoke-virtual {p0, p1}, Lu0/i;->o4(I)V

    goto/16 :goto_e

    .line 96
    :pswitch_1c
    invoke-static {p4, v7}, Lo1/s0;->i([Ljava/lang/Object;I)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 97
    aget-object p1, p4, v7

    invoke-virtual {p0, p1}, Lu0/i;->s4(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 98
    :pswitch_1d
    invoke-static {p4, v7}, Lo1/s0;->i([Ljava/lang/Object;I)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 99
    aget-object p1, p4, v7

    iget-object p2, p0, Lu0/i;->G:Ljava/lang/String;

    invoke-static {p1, p2}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_21

    .line 100
    sget-object p1, Lg/e;->a:Lg/g;

    if-eqz p1, :cond_21

    instance-of p1, p1, Lchip/Chip;

    if-eqz p1, :cond_21

    sget-object p1, Ln0/j4;->d:Ln0/c4;

    if-eqz p1, :cond_21

    .line 101
    sget-object p2, Lg/e;->a:Lg/g;

    check-cast p2, Lchip/Chip;

    invoke-virtual {p2}, Lchip/Chip;->x()Ljava/lang/String;

    move-result-object p2

    aget-object p3, p4, v7

    invoke-virtual {p1, p2, p3}, Ln0/c4;->N2(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_e

    .line 102
    :pswitch_1e
    invoke-static {p2, v7}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 103
    sget-object p1, Lg/e;->a:Lg/g;

    if-eqz p1, :cond_21

    instance-of p3, p1, Lg/j;

    if-eqz p3, :cond_21

    .line 104
    check-cast p1, Lg/j;

    iget-object p1, p1, Lg/j;->v0:Lo1/s;

    aget p2, p2, v7

    if-ne p2, v6, :cond_f

    goto :goto_8

    :cond_f
    move v6, v7

    :goto_8
    invoke-interface {p1, v6}, Lo1/s;->R(Z)V

    goto/16 :goto_e

    .line 105
    :pswitch_1f
    invoke-static {p4, v6}, Lo1/s0;->i([Ljava/lang/Object;I)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 106
    aget-object p1, p4, v7

    invoke-static {p1}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_21

    aget-object p1, p4, v6

    invoke-static {p1}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_21

    .line 107
    aget-object p1, p4, v7

    aget-object p2, p4, v6

    invoke-static {p1, p2}, Lo1/s0;->F(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    .line 108
    :pswitch_20
    invoke-static {p2, v6}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 109
    aget p1, p2, v7

    aget p2, p2, v6

    invoke-virtual {p0, p1, p2}, Lu0/i;->a3(II)V

    goto/16 :goto_e

    .line 110
    :pswitch_21
    invoke-static {p2, v7}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 111
    aget p1, p2, v7

    if-ne p1, v6, :cond_10

    move p1, v6

    goto :goto_9

    :cond_10
    move p1, v7

    .line 112
    :goto_9
    iget-boolean p2, p0, Lu0/i;->x:Z

    if-eq p2, p1, :cond_21

    .line 113
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " ------- isExtraCalling : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lu0/i;->x:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, " to new : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iput-boolean p1, p0, Lu0/i;->x:Z

    .line 115
    iget-object p1, p0, Lu0/i;->c0:Lo1/y;

    invoke-virtual {p1}, Lo1/y;->c()V

    const/16 p1, 0x9f

    new-array p2, v6, [I

    .line 116
    iget-boolean p3, p0, Lu0/i;->x:Z

    aput p3, p2, v7

    invoke-static {p1, p2}, Lu0/d;->I3(I[I)V

    .line 117
    iget-object p1, p0, Lu0/i;->n0:Ljava/lang/Runnable;

    invoke-static {p1}, Lo1/j;->f(Ljava/lang/Runnable;)V

    .line 118
    iget-boolean p1, p0, Lu0/i;->x:Z

    const/16 p2, 0xf

    const/16 p3, 0x2000

    if-eqz p1, :cond_13

    .line 119
    invoke-static {p3}, Ly0/h;->x(I)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 120
    invoke-static {p3, v7}, Ly0/h;->Y(IZ)V

    .line 121
    :cond_11
    invoke-static {v7}, Lu0/d;->N(I)V

    .line 122
    sget-object p1, Lh0/d;->b:Lo1/y;

    invoke-virtual {p1}, Lo1/y;->c()V

    .line 123
    sget p1, Lu0/b;->h:I

    sput p1, Lh0/c;->X:I

    .line 124
    sget p1, Lu0/b;->h:I

    if-eqz p1, :cond_12

    .line 125
    invoke-static {v7}, Lu0/d;->u3(I)V

    .line 126
    :cond_12
    sget-object p1, Lu0/b;->c:Lu0/h;

    invoke-interface {p1, p2}, Lu0/h;->c(I)V

    goto :goto_a

    .line 127
    :cond_13
    sget p1, Lu0/b;->D:I

    if-ne p1, p2, :cond_15

    .line 128
    invoke-static {p3, v6}, Ly0/h;->Y(IZ)V

    .line 129
    sget-object p1, Lu0/b;->c:Lu0/h;

    invoke-interface {p1, v0}, Lu0/h;->c(I)V

    .line 130
    sget p1, Lh0/c;->X:I

    if-eqz p1, :cond_14

    .line 131
    invoke-static {v6}, Lu0/d;->u3(I)V

    .line 132
    :cond_14
    iget-object p1, p0, Lu0/i;->n0:Ljava/lang/Runnable;

    const-wide/16 p2, 0x7d0

    invoke-static {p1, p2, p3}, Lo1/j;->c(Ljava/lang/Runnable;J)V

    .line 133
    :cond_15
    :goto_a
    invoke-static {}, Ly0/h;->M()V

    goto/16 :goto_e

    .line 134
    :pswitch_22
    invoke-static {p2, v7}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 135
    aget p1, p2, v7

    invoke-static {p1}, Le/f;->j(I)V

    goto/16 :goto_e

    .line 136
    :pswitch_23
    invoke-static {p2, v7}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 137
    aget p1, p2, v7

    invoke-static {p1}, Le/f;->i(I)V

    goto/16 :goto_e

    .line 138
    :pswitch_24
    invoke-static {p2, v7}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 139
    aget p1, p2, v7

    invoke-static {p1}, Le/f;->k(I)V

    goto/16 :goto_e

    .line 140
    :pswitch_25
    invoke-static {p2, v7}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 141
    aget p1, p2, v7

    invoke-virtual {p0, p1}, Lu0/i;->C3(I)V

    goto/16 :goto_e

    :pswitch_26
    new-array p1, v4, [I

    .line 142
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_e

    .line 143
    :pswitch_27
    invoke-static {p2, v7}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 144
    aget p1, p2, v7

    if-ne p1, v6, :cond_16

    move p1, v6

    goto :goto_b

    :cond_16
    move p1, v7

    .line 145
    :goto_b
    sget-boolean p3, Lu0/b;->F3:Z

    if-eq p3, p1, :cond_21

    .line 146
    sput-boolean p1, Lu0/b;->F3:Z

    const/16 p1, 0x93

    new-array p3, v6, [I

    .line 147
    aget p2, p2, v7

    aput p2, p3, v7

    invoke-static {p1, p3}, Lu0/d;->I3(I[I)V

    goto/16 :goto_e

    .line 148
    :pswitch_28
    invoke-static {p2, v6}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 149
    sget-object p1, Ln0/j4;->d:Ln0/c4;

    if-eqz p1, :cond_21

    .line 150
    aget p3, p2, v7

    aget p2, p2, v6

    invoke-virtual {p1, p3, p2}, Ln0/c4;->M3(II)V

    goto/16 :goto_e

    .line 151
    :pswitch_29
    invoke-static {p2, v7}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 152
    sget-object p1, Ln0/j4;->d:Ln0/c4;

    if-eqz p1, :cond_21

    .line 153
    aget p2, p2, v7

    if-ne p2, v6, :cond_17

    goto :goto_c

    :cond_17
    move v6, v7

    :goto_c
    invoke-virtual {p1, v6}, Ln0/c4;->e3(Z)V

    goto/16 :goto_e

    .line 154
    :pswitch_2a
    invoke-static {p2, v7}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 155
    aget p1, p2, v7

    invoke-virtual {p0, p1}, Lu0/i;->M3(I)V

    goto/16 :goto_e

    .line 156
    :pswitch_2b
    invoke-static {p2, v7}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_21

    invoke-static {p4, v7}, Lo1/s0;->i([Ljava/lang/Object;I)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 157
    sget-object p1, Le1/a;->b:Le1/l;

    aget p2, p2, v7

    aget-object p3, p4, v7

    invoke-virtual {p1, p2, p3}, Le1/l;->g(ILjava/lang/String;)V

    goto/16 :goto_e

    .line 158
    :pswitch_2c
    invoke-static {p2, v6}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 159
    aget p1, p2, v7

    aget p3, p2, v6

    aget p2, p2, v5

    invoke-virtual {p0, p1, p3, p2}, Lu0/i;->L3(III)V

    goto/16 :goto_e

    .line 160
    :pswitch_2d
    invoke-static {p2, v7}, Lo1/s0;->h([II)Z

    move-result p3

    if-eqz p3, :cond_21

    .line 161
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p3

    sget-object p4, Lutil/log/LogType;->a:Lutil/log/LogType;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " UI TO ------------------>>> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, p2, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p4, v0}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 162
    invoke-static {}, Li1/s;->h()Li1/g;

    move-result-object p3

    if-eqz p3, :cond_18

    .line 163
    aget p1, p2, v7

    invoke-interface {p3, p1}, Li1/g;->e(I)V

    goto/16 :goto_e

    :cond_18
    new-array p3, v6, [I

    .line 164
    aget p2, p2, v7

    aput p2, p3, v7

    invoke-static {p1, p3}, Lu0/d;->I3(I[I)V

    goto/16 :goto_e

    .line 165
    :pswitch_2e
    invoke-static {p2, v7}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 166
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object p1

    aget p2, p2, v7

    invoke-virtual {p1, p2}, Lc/e;->c(I)Z

    goto/16 :goto_e

    .line 167
    :pswitch_2f
    invoke-static {p2, v7}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 168
    invoke-static {}, Lb/a;->e()Lb/a;

    move-result-object p1

    aget p2, p2, v7

    if-ne p2, v6, :cond_19

    goto :goto_d

    :cond_19
    move v6, v7

    :goto_d
    invoke-virtual {p1, v6}, Lb/a;->l(Z)V

    goto/16 :goto_e

    .line 169
    :pswitch_30
    invoke-static {p2, v7}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 170
    aget p1, p2, v7

    invoke-virtual {p0, p1}, Lu0/i;->a4(I)V

    goto/16 :goto_e

    .line 171
    :pswitch_31
    invoke-static {p2, v7}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 172
    invoke-static {}, Lb/a;->e()Lb/a;

    move-result-object p1

    aget p2, p2, v7

    invoke-virtual {p1, p2}, Lb/a;->j(I)V

    goto/16 :goto_e

    .line 173
    :pswitch_32
    invoke-static {p2, v7}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 174
    aget p1, p2, v7

    if-nez p1, :cond_1a

    .line 175
    invoke-static {}, Lb/a;->e()Lb/a;

    move-result-object p1

    invoke-virtual {p1}, Lb/a;->d()V

    goto/16 :goto_e

    .line 176
    :cond_1a
    aget p1, p2, v7

    if-ne p1, v0, :cond_1b

    invoke-static {p4, v7}, Lo1/s0;->i([Ljava/lang/Object;I)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 177
    invoke-static {}, Lb/a;->e()Lb/a;

    move-result-object p1

    aget-object p2, p4, v7

    invoke-virtual {p1, p2}, Lb/a;->k(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 178
    :cond_1b
    aget p1, p2, v7

    if-ne p1, v6, :cond_21

    invoke-static {p4, v7}, Lo1/s0;->i([Ljava/lang/Object;I)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 179
    invoke-static {}, Lb/a;->e()Lb/a;

    move-result-object p1

    aget-object p2, p4, v7

    invoke-virtual {p1, p2}, Lb/a;->a(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 180
    :pswitch_33
    invoke-static {p2, v7}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_21

    invoke-static {p4, v7}, Lo1/s0;->i([Ljava/lang/Object;I)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 181
    aget p1, p2, v7

    if-nez p1, :cond_1c

    .line 182
    invoke-static {}, Lb/a;->e()Lb/a;

    move-result-object p1

    aget-object p2, p4, v7

    invoke-virtual {p1, p2}, Lb/a;->o(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 183
    :cond_1c
    aget p1, p2, v7

    if-ne p1, v6, :cond_21

    .line 184
    invoke-static {}, Lb/a;->e()Lb/a;

    move-result-object p1

    aget-object p2, p4, v7

    invoke-virtual {p1, p2}, Lb/a;->m(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 185
    :pswitch_34
    invoke-static {p2, v7}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 186
    aget p1, p2, v7

    invoke-virtual {p0, p1}, Lu0/i;->f3(I)V

    goto/16 :goto_e

    .line 187
    :pswitch_35
    invoke-static {p2, v7}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 188
    aget p1, p2, v7

    invoke-virtual {p0, p1}, Lu0/i;->X3(I)V

    goto/16 :goto_e

    .line 189
    :pswitch_36
    invoke-virtual {p0, p4, v6}, Lu0/i;->c4([Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_21

    iget-object p1, p0, Lu0/i;->o:Ljava/lang/String;

    aget-object p2, p4, v7

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_21

    .line 190
    aget-object p1, p4, v7

    invoke-virtual {p0, p1}, Lu0/i;->f4(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 191
    :pswitch_37
    invoke-virtual {p0, p2, v5}, Lu0/i;->p3([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 192
    aget p1, p2, v7

    aget p2, p2, v6

    invoke-static {p1, p2}, Lu0/d;->q2(II)V

    goto/16 :goto_e

    .line 193
    :pswitch_38
    invoke-virtual {p0, p4, v5}, Lu0/i;->c4([Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 194
    aget-object p1, p4, v7

    aget-object p2, p4, v6

    invoke-static {p1, p2}, Lu0/d;->F0(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    .line 195
    :pswitch_39
    invoke-virtual {p0, p2, v6}, Lu0/i;->p3([II)Z

    move-result p1

    if-eqz p1, :cond_21

    aget p1, p2, v7

    sget p3, Lu0/b;->s1:I

    if-eq p1, p3, :cond_21

    .line 196
    aget p1, p2, v7

    invoke-static {p1}, Lu0/d;->A0(I)V

    goto/16 :goto_e

    .line 197
    :pswitch_3a
    invoke-virtual {p0, p2, v6}, Lu0/i;->p3([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 198
    aget p1, p2, v7

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Lu0/d;->G0(I)V

    goto/16 :goto_e

    .line 199
    :pswitch_3b
    invoke-virtual {p0, p2, v6}, Lu0/i;->p3([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 200
    aget p1, p2, v7

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Lu0/d;->B0(I)V

    goto/16 :goto_e

    .line 201
    :pswitch_3c
    invoke-static {p2}, Lu0/d;->D0([I)V

    goto/16 :goto_e

    .line 202
    :pswitch_3d
    invoke-virtual {p0, p2, v6}, Lu0/i;->p3([II)Z

    move-result p1

    if-eqz p1, :cond_21

    sget p1, Lu0/b;->o:I

    if-eq p1, v6, :cond_21

    .line 203
    aget p1, p2, v7

    invoke-virtual {p0, p1}, Lu0/i;->x3(I)V

    goto/16 :goto_e

    .line 204
    :pswitch_3e
    invoke-virtual {p0, p2, v6}, Lu0/i;->p3([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 205
    aget p1, p2, v7

    invoke-static {p1}, Lu0/d;->x3(I)V

    goto/16 :goto_e

    .line 206
    :pswitch_3f
    invoke-virtual {p0, p4, v6}, Lu0/i;->c4([Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 207
    aget-object p1, p4, v7

    invoke-static {p1}, La/i;->C(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 208
    :pswitch_40
    sget-object p1, Ly0/f;->b:Ly0/e;

    if-eqz p1, :cond_21

    instance-of p2, p1, Lmodule/sound/AudioDevice;

    if-eqz p2, :cond_21

    .line 209
    check-cast p1, Lmodule/sound/AudioDevice;

    invoke-virtual {p1, v7}, Lmodule/sound/AudioDevice;->z(Z)V

    goto/16 :goto_e

    .line 210
    :pswitch_41
    invoke-virtual {p0, p2, v6}, Lu0/i;->p3([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 211
    aget p1, p2, v7

    invoke-static {p1}, Lu0/d;->f(I)V

    goto/16 :goto_e

    .line 212
    :pswitch_42
    invoke-static {}, Lu0/d;->b()V

    goto/16 :goto_e

    .line 213
    :pswitch_43
    invoke-virtual {p0, p2, v6}, Lu0/i;->p3([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 214
    aget p1, p2, v7

    invoke-static {p1}, Lu0/d;->a(I)V

    goto/16 :goto_e

    .line 215
    :pswitch_44
    invoke-static {}, Lu0/d;->d()V

    goto/16 :goto_e

    .line 216
    :pswitch_45
    invoke-virtual {p0, p2, v6}, Lu0/i;->p3([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 217
    aget p1, p2, v7

    invoke-static {p1}, Lg/c;->c(I)V

    goto/16 :goto_e

    .line 218
    :pswitch_46
    invoke-virtual {p0, p2, v6}, Lu0/i;->p3([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 219
    invoke-static {}, Lu0/d;->c()V

    goto/16 :goto_e

    .line 220
    :pswitch_47
    invoke-virtual {p0, p2, v6}, Lu0/i;->p3([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 221
    aget p1, p2, v7

    invoke-static {p1}, Lu0/d;->g(I)V

    goto/16 :goto_e

    .line 222
    :pswitch_48
    invoke-virtual {p0, p2, v6}, Lu0/i;->p3([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 223
    aget p1, p2, v7

    invoke-static {p1}, Lu0/d;->R3(I)V

    goto/16 :goto_e

    .line 224
    :pswitch_49
    invoke-virtual {p0, p2, v6}, Lu0/i;->p3([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 225
    aget p1, p2, v7

    invoke-static {p1}, Lu0/d;->e2(I)V

    goto/16 :goto_e

    .line 226
    :pswitch_4a
    invoke-virtual {p0, p2, v6}, Lu0/i;->p3([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 227
    invoke-static {p2}, Lu0/d;->R1([I)V

    goto/16 :goto_e

    .line 228
    :pswitch_4b
    invoke-virtual {p0, p2, v5}, Lu0/i;->p3([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 229
    aget p1, p2, v7

    aget p2, p2, v6

    invoke-static {p1, p2}, Lu0/d;->X3(II)V

    goto/16 :goto_e

    .line 230
    :pswitch_4c
    invoke-virtual {p0, p2, v6}, Lu0/i;->p3([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 231
    aget p1, p2, v7

    invoke-static {p1}, Lu0/d;->E3(I)V

    goto/16 :goto_e

    .line 232
    :pswitch_4d
    invoke-virtual {p0, p2, v6}, Lu0/i;->p3([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 233
    aget p1, p2, v7

    invoke-static {p1}, Lu0/d;->a0(I)V

    goto/16 :goto_e

    .line 234
    :pswitch_4e
    invoke-virtual {p0, p2, v5}, Lu0/i;->p3([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 235
    aget p1, p2, v7

    aget p2, p2, v6

    invoke-static {p1, p2}, Lo1/q0;->z(II)V

    goto/16 :goto_e

    .line 236
    :pswitch_4f
    invoke-virtual {p0, p2, v6}, Lu0/i;->p3([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 237
    aget p1, p2, v7

    invoke-static {p1}, Lu0/d;->O3(I)V

    goto/16 :goto_e

    .line 238
    :pswitch_50
    invoke-virtual {p0, p2, v6}, Lu0/i;->p3([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 239
    aget p1, p2, v7

    invoke-static {p1}, Lu0/d;->p1(I)V

    goto/16 :goto_e

    .line 240
    :pswitch_51
    invoke-virtual {p0, p2, v6}, Lu0/i;->p3([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 241
    aget p1, p2, v7

    invoke-static {p1}, Lu0/d;->i3(I)V

    goto/16 :goto_e

    .line 242
    :pswitch_52
    invoke-virtual {p0, p2, v6}, Lu0/i;->p3([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 243
    aget p1, p2, v7

    invoke-static {p1}, Lu0/d;->h2(I)V

    goto/16 :goto_e

    .line 244
    :pswitch_53
    invoke-virtual {p0, p2, v6}, Lu0/i;->p3([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 245
    aget p1, p2, v7

    invoke-static {p1}, Lu0/d;->w3(I)V

    goto/16 :goto_e

    .line 246
    :pswitch_54
    invoke-virtual {p0, p2, v6}, Lu0/i;->p3([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 247
    aget p1, p2, v7

    invoke-static {p1}, Lu0/d;->V2(I)V

    goto/16 :goto_e

    .line 248
    :pswitch_55
    invoke-virtual {p0, p2, v6}, Lu0/i;->p3([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 249
    aget p1, p2, v7

    invoke-static {p1}, Lu0/d;->M2(I)V

    goto/16 :goto_e

    .line 250
    :pswitch_56
    invoke-static {}, Lu0/d;->G3()V

    goto/16 :goto_e

    .line 251
    :pswitch_57
    invoke-virtual {p0, p2, v6}, Lu0/i;->p3([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 252
    aget p1, p2, v7

    invoke-static {p1}, Lu0/d;->B(I)V

    goto/16 :goto_e

    .line 253
    :pswitch_58
    invoke-virtual {p0, p2, v4}, Lu0/i;->p3([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 254
    aget p1, p2, v7

    aget p3, p2, v6

    aget p2, p2, v5

    invoke-static {p1, p3, p2}, Lu0/d;->D3(III)V

    goto/16 :goto_e

    .line 255
    :pswitch_59
    invoke-virtual {p0, p2, v6}, Lu0/i;->p3([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 256
    aget p1, p2, v7

    invoke-static {p1}, Lu0/d;->s2(I)V

    goto/16 :goto_e

    .line 257
    :pswitch_5a
    invoke-virtual {p0, p2, v6}, Lu0/i;->p3([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 258
    aget p1, p2, v7

    invoke-static {p1}, Lu0/d;->L(I)V

    goto/16 :goto_e

    .line 259
    :pswitch_5b
    invoke-static {}, Lu0/d;->u()V

    goto/16 :goto_e

    .line 260
    :pswitch_5c
    invoke-virtual {p0, p2, v6}, Lu0/i;->p3([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 261
    aget p1, p2, v7

    invoke-static {p1}, Lu0/d;->m3(I)V

    goto/16 :goto_e

    .line 262
    :pswitch_5d
    invoke-virtual {p0, p2, v6}, Lu0/i;->p3([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 263
    aget p1, p2, v7

    invoke-static {p1}, Lu0/d;->V3(I)V

    goto/16 :goto_e

    .line 264
    :pswitch_5e
    invoke-virtual {p0, p2, v5}, Lu0/i;->p3([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 265
    aget p1, p2, v7

    aget p2, p2, v6

    invoke-static {p1, p2}, Lu0/d;->n(II)V

    goto/16 :goto_e

    .line 266
    :pswitch_5f
    invoke-virtual {p0, p2, v6}, Lu0/i;->p3([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 267
    aget p1, p2, v7

    invoke-static {p1}, Lu0/d;->h1(I)V

    goto/16 :goto_e

    .line 268
    :pswitch_60
    invoke-virtual {p0, p2, v6}, Lu0/i;->p3([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 269
    aget p1, p2, v7

    invoke-static {p1}, Lu0/d;->q3(I)V

    goto/16 :goto_e

    .line 270
    :pswitch_61
    invoke-virtual {p0, p2, v6}, Lu0/i;->p3([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 271
    aget p1, p2, v7

    invoke-static {p1}, Lu0/d;->A(I)V

    goto/16 :goto_e

    .line 272
    :pswitch_62
    invoke-virtual {p0, p2, v6}, Lu0/i;->p3([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 273
    aget p1, p2, v7

    invoke-static {p1}, Lu0/d;->n0(I)V

    goto/16 :goto_e

    .line 274
    :pswitch_63
    invoke-virtual {p0, p2, v2}, Lu0/i;->p3([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 275
    invoke-static {p2}, Lu0/d;->Y3([I)V

    goto/16 :goto_e

    .line 276
    :pswitch_64
    invoke-virtual {p0, p2, v6}, Lu0/i;->p3([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 277
    aget p1, p2, v7

    invoke-static {p1}, Lu0/d;->l0(I)V

    goto/16 :goto_e

    .line 278
    :pswitch_65
    invoke-virtual {p0, p2, v6}, Lu0/i;->p3([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 279
    aget p1, p2, v7

    invoke-static {p1}, Lu0/d;->f0(I)V

    goto/16 :goto_e

    .line 280
    :pswitch_66
    invoke-virtual {p0, p4, v5}, Lu0/i;->c4([Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 281
    aget-object p1, p4, v7

    aget-object p2, p4, v6

    invoke-static {p1, p2}, Lu0/d;->z3(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    .line 282
    :pswitch_67
    invoke-virtual {p0, p2, v6}, Lu0/i;->p3([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 283
    aget p1, p2, v7

    invoke-static {p1}, Lu0/d;->I0(I)V

    goto/16 :goto_e

    .line 284
    :pswitch_68
    invoke-virtual {p0, p2, v5}, Lu0/i;->p3([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 285
    aget p1, p2, v7

    aget p2, p2, v6

    invoke-static {p1, p2}, Lu0/d;->w0(II)V

    goto/16 :goto_e

    .line 286
    :pswitch_69
    invoke-static {}, Lu0/d;->o0()V

    goto/16 :goto_e

    .line 287
    :pswitch_6a
    invoke-virtual {p0, p2, v6}, Lu0/i;->p3([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 288
    aget p1, p2, v7

    invoke-static {p1}, Lu0/d;->o2(I)V

    goto/16 :goto_e

    .line 289
    :pswitch_6b
    invoke-static {}, Lf1/o;->g()Lf1/o;

    move-result-object v0

    .line 290
    invoke-virtual {p0, p2, v2}, Lu0/i;->p3([II)Z

    move-result p1

    const/4 p3, 0x4

    if-eqz p1, :cond_1d

    if-eqz v0, :cond_21

    .line 291
    invoke-virtual {v0}, Lf1/o;->m()Z

    move-result p1

    if-eqz p1, :cond_21

    .line 292
    aget v1, p2, v7

    aget v2, p2, v6

    aget v3, p2, v5

    aget v4, p2, v4

    aget v5, p2, p3

    invoke-virtual/range {v0 .. v5}, Lf1/o;->j(IIIII)Z

    goto/16 :goto_e

    .line 293
    :cond_1d
    invoke-virtual {p0, p2, p3}, Lu0/i;->p3([II)Z

    move-result p1

    if-eqz p1, :cond_21

    if-eqz v0, :cond_1e

    .line 294
    invoke-virtual {v0}, Lf1/o;->m()Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 295
    aget v1, p2, v7

    const/4 v2, -0x1

    aget v3, p2, v6

    aget p1, p2, v5

    aget v5, p2, v4

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lf1/o;->j(IIIII)Z

    goto/16 :goto_e

    .line 296
    :cond_1e
    aget p1, p2, v7

    aget p3, p2, v6

    aget p4, p2, v5

    aget p2, p2, v4

    invoke-static {p1, p3, p4, p2}, Lu0/d;->U3(IIII)V

    goto/16 :goto_e

    .line 297
    :pswitch_6c
    invoke-virtual {p0, p2, v5}, Lu0/i;->p3([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 298
    aget p1, p2, v7

    aget p2, p2, v6

    invoke-static {p1, p2}, Lu0/d;->f2(II)V

    goto/16 :goto_e

    .line 299
    :pswitch_6d
    invoke-virtual {p0, p2, v6}, Lu0/i;->p3([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 300
    aget p1, p2, v7

    invoke-static {p1}, Lu0/d;->q0(I)V

    goto/16 :goto_e

    .line 301
    :pswitch_6e
    invoke-virtual {p0, p2, v6}, Lu0/i;->p3([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 302
    aget p1, p2, v7

    invoke-static {p1}, Lu0/d;->x2(I)V

    goto/16 :goto_e

    .line 303
    :pswitch_6f
    invoke-virtual {p0, p2, v6}, Lu0/i;->p3([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 304
    aget p1, p2, v7

    invoke-static {p1}, Lu0/d;->i1(I)V

    goto/16 :goto_e

    .line 305
    :pswitch_70
    invoke-virtual {p0, p2, v6}, Lu0/i;->p3([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 306
    aget p1, p2, v7

    invoke-static {p1}, Lu0/d;->k1(I)V

    goto/16 :goto_e

    .line 307
    :pswitch_71
    invoke-virtual {p0, p2, v6}, Lu0/i;->p3([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 308
    aget p1, p2, v7

    invoke-static {p1}, Lu0/d;->m1(I)V

    goto/16 :goto_e

    .line 309
    :pswitch_72
    invoke-virtual {p0, p2, v6}, Lu0/i;->p3([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 310
    aget p1, p2, v7

    invoke-static {p1}, Lu0/d;->u2(I)V

    goto/16 :goto_e

    .line 311
    :pswitch_73
    invoke-virtual {p0, p2, v6}, Lu0/i;->p3([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 312
    aget p1, p2, v7

    invoke-static {p1}, Lu0/d;->K(I)V

    goto/16 :goto_e

    .line 313
    :pswitch_74
    invoke-static {p2, p3, p4}, Lu0/d;->a2([I[F[Ljava/lang/String;)V

    goto/16 :goto_e

    .line 314
    :pswitch_75
    invoke-virtual {p0, p2, v6}, Lu0/i;->p3([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 315
    aget p1, p2, v7

    invoke-static {p1}, Lu0/d;->n1(I)V

    goto/16 :goto_e

    .line 316
    :pswitch_76
    invoke-virtual {p0, p2, v6}, Lu0/i;->p3([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 317
    aget p1, p2, v7

    invoke-static {p1}, Lu0/d;->O0(I)V

    goto/16 :goto_e

    .line 318
    :pswitch_77
    invoke-virtual {p0, p2, v6}, Lu0/i;->p3([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 319
    aget p1, p2, v7

    invoke-static {p1}, Lu0/d;->N0(I)V

    goto/16 :goto_e

    .line 320
    :pswitch_78
    invoke-static {p2, p3, p4}, Lu0/d;->y2([I[F[Ljava/lang/String;)V

    goto/16 :goto_e

    .line 321
    :pswitch_79
    invoke-virtual {p0, p2, v5}, Lu0/i;->p3([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 322
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "C_VIDEO_IDints[0] = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p3, p2, v7

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " ints[1] ="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p3, p2, v6

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "image"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    aget p1, p2, v7

    aget p2, p2, v6

    invoke-static {p1, p2}, Lu0/d;->T3(II)V

    goto/16 :goto_e

    .line 324
    :pswitch_7a
    invoke-virtual {p0, p2, v6}, Lu0/i;->p3([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 325
    aget p1, p2, v7

    invoke-static {p1}, Lu0/d;->s1(I)V

    goto/16 :goto_e

    .line 326
    :pswitch_7b
    invoke-virtual {p0, p2, v6}, Lu0/i;->p3([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 327
    invoke-static {p2, p3, p4}, Lu0/g;->b([I[F[Ljava/lang/String;)V

    goto/16 :goto_e

    .line 328
    :pswitch_7c
    invoke-virtual {p0, p2, v6}, Lu0/i;->p3([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 329
    aget p1, p2, v7

    if-ne p1, v6, :cond_1f

    .line 330
    sget-object p1, Lu0/c;->d:Lo1/y;

    invoke-virtual {p1}, Lo1/y;->c()V

    .line 331
    :cond_1f
    aget p1, p2, v7

    invoke-static {p1}, Lu0/d;->f3(I)V

    goto/16 :goto_e

    .line 332
    :pswitch_7d
    invoke-virtual {p0, p2, v6}, Lu0/i;->p3([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 333
    aget p1, p2, v7

    invoke-static {p1}, Lu0/d;->u3(I)V

    goto/16 :goto_e

    .line 334
    :pswitch_7e
    invoke-virtual {p0, p2, v6}, Lu0/i;->p3([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 335
    sget p1, Lk0/nt;->a:I

    const p3, 0x101ba

    if-ne p1, p3, :cond_20

    .line 336
    aget p1, p2, v7

    invoke-static {p1}, Lu0/d;->N(I)V

    goto/16 :goto_e

    .line 337
    :cond_20
    aget p1, p2, v7

    invoke-static {p1}, Lu0/d;->U1(I)V

    goto/16 :goto_e

    .line 338
    :pswitch_7f
    invoke-virtual {p0, p2, v6}, Lu0/i;->p3([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 339
    aget p1, p2, v7

    invoke-static {p1}, Lu0/d;->N(I)V

    goto/16 :goto_e

    .line 340
    :pswitch_80
    invoke-virtual {p0, p2, v6}, Lu0/i;->p3([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 341
    aget p1, p2, v7

    invoke-static {p1}, Lu0/d;->W1(I)V

    goto/16 :goto_e

    .line 342
    :pswitch_81
    invoke-virtual {p0, p4, v6}, Lu0/i;->c4([Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 343
    aget-object p1, p4, v7

    invoke-static {p1}, Lu0/d;->Y1(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 344
    :pswitch_82
    invoke-virtual {p0, p2, v6}, Lu0/i;->p3([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 345
    aget p1, p2, v7

    invoke-static {p1}, Lu0/d;->y(I)V

    goto/16 :goto_e

    .line 346
    :pswitch_83
    invoke-virtual {p0, p2, v6}, Lu0/i;->p3([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 347
    aget p1, p2, v7

    invoke-static {p1}, Lu0/d;->U(I)V

    goto/16 :goto_e

    .line 348
    :pswitch_84
    invoke-virtual {p0, p2, v6}, Lu0/i;->p3([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 349
    aget p1, p2, v7

    invoke-static {p1}, Lu0/d;->S(I)V

    goto/16 :goto_e

    .line 350
    :pswitch_85
    invoke-virtual {p0, p2, v6}, Lu0/i;->p3([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 351
    aget p1, p2, v7

    invoke-static {p1}, Lu0/d;->Q(I)V

    goto/16 :goto_e

    .line 352
    :pswitch_86
    invoke-virtual {p0, p4, v6}, Lu0/i;->c4([Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 353
    aget-object p1, p4, v7

    invoke-static {p1}, Lu0/d;->l2(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 354
    :pswitch_87
    invoke-virtual {p0, p2, v6}, Lu0/i;->p3([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 355
    aget p1, p2, v7

    invoke-static {p1}, Lu0/d;->n2(I)V

    goto/16 :goto_e

    .line 356
    :pswitch_88
    invoke-virtual {p0, p2, v6}, Lu0/i;->p3([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 357
    aget p1, p2, v7

    invoke-static {p1}, Lu0/d;->E(I)V

    goto/16 :goto_e

    .line 358
    :pswitch_89
    invoke-virtual {p0, p2, v6}, Lu0/i;->p3([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 359
    aget p1, p2, v7

    invoke-static {p1}, Lu0/d;->I(I)V

    goto/16 :goto_e

    .line 360
    :pswitch_8a
    invoke-virtual {p0, p2, v6}, Lu0/i;->p3([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 361
    aget p1, p2, v7

    invoke-static {p1}, Lu0/d;->G(I)V

    goto :goto_e

    .line 362
    :pswitch_8b
    invoke-virtual {p0, p2, v6}, Lu0/i;->p3([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 363
    aget p1, p2, v7

    invoke-static {p1}, Lu0/d;->z0(I)V

    goto :goto_e

    .line 364
    :pswitch_8c
    invoke-virtual {p0, p2, v6}, Lu0/i;->p3([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 365
    aget p1, p2, v7

    invoke-static {p1}, Lu0/d;->j2(I)V

    goto :goto_e

    .line 366
    :pswitch_8d
    invoke-virtual {p0, p2, v6}, Lu0/i;->p3([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 367
    aget p1, p2, v7

    invoke-static {p1}, Lu0/d;->r(I)V

    goto :goto_e

    .line 368
    :pswitch_8e
    invoke-virtual {p0, p2, v6}, Lu0/i;->p3([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 369
    aget p1, p2, v7

    invoke-static {p1}, Lu0/d;->f1(I)V

    goto :goto_e

    .line 370
    :pswitch_8f
    invoke-virtual {p0, p2, v6}, Lu0/i;->p3([II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 371
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "UI\u5207\u7684\u901a\u9053 = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p4, p2, v7

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ln1/b;->s(Ljava/lang/String;)V

    .line 372
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  cmd     App ID =  "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p3, p2, v7

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    sget-object p1, Lu0/b;->c:Lu0/h;

    aget p2, p2, v7

    invoke-interface {p1, p2}, Lu0/h;->c(I)V

    :cond_21
    :goto_e
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_0
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
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
        :pswitch_0
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_0
        :pswitch_2e
        :pswitch_0
        :pswitch_2d
        :pswitch_2c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2b
        :pswitch_0
        :pswitch_2a
        :pswitch_0
        :pswitch_29
        :pswitch_28
        :pswitch_0
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_0
        :pswitch_0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_0
        :pswitch_0
        :pswitch_15
        :pswitch_0
        :pswitch_14
        :pswitch_13
        :pswitch_0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :array_0
    .array-data 4
        0x1
        0x0
        0xa2
    .end array-data
.end method

.method public final N3(I)V
    .locals 3

    .line 1
    iget v0, p0, Lu0/i;->E:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x3

    if-nez p1, :cond_1

    new-array p1, v1, [I

    .line 2
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    new-array p1, v1, [I

    .line 3
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0, v2}, Lu0/i;->N3(I)V

    :cond_4
    :goto_1
    return-void

    :array_0
    .array-data 4
        0x1
        0x0
        0x98
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x0
        0x99
    .end array-data
.end method

.method public O2(I[I[F[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public O3(I)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    .line 1
    :goto_0
    iget v2, p0, Lu0/i;->L:I

    if-eq v2, p1, :cond_1

    .line 2
    iput p1, p0, Lu0/i;->L:I

    const/16 v2, 0x3ec

    .line 3
    invoke-static {v2, p1}, Lm1/c;->e(II)I

    const/16 v2, 0xb1

    const/4 v3, 0x2

    new-array v4, v3, [I

    aput v3, v4, v1

    aput p1, v4, v0

    .line 4
    invoke-static {v2, v4}, Lu0/d;->I3(I[I)V

    .line 5
    invoke-virtual {p0}, Lu0/i;->w3()V

    :cond_1
    return-void
.end method

.method public P0(Ly/b;I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lbase/b;->f:Lo1/x;

    invoke-virtual {v0, p1, p2}, Lo1/x;->p(Ly/b;I)V

    return-void
.end method

.method public P3(I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    .line 1
    :goto_0
    iget v2, p0, Lu0/i;->M:I

    if-eq v2, p1, :cond_1

    .line 2
    iput p1, p0, Lu0/i;->M:I

    const/16 v2, 0xb1

    const/4 v3, 0x2

    new-array v3, v3, [I

    aput v1, v3, v1

    aput p1, v3, v0

    .line 3
    invoke-static {v2, v3}, Lu0/d;->I3(I[I)V

    .line 4
    invoke-virtual {p0}, Lu0/i;->w3()V

    :cond_1
    return-void
.end method

.method public Q2(Lo1/h0;)V
    .locals 6

    .line 1
    iget p1, p0, Lu0/i;->l:I

    const/16 v0, 0xcc

    invoke-static {v0, p1}, Lm1/c;->c(II)I

    move-result p1

    iput p1, p0, Lu0/i;->l:I

    .line 2
    sget p1, Lchip/Chip;->d0:I

    const/16 v0, 0x3ff

    invoke-static {v0, p1}, Lm1/c;->c(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lu0/i;->J3(I)V

    const/16 p1, 0xcf

    .line 3
    invoke-static {p1}, Lm1/c;->k(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {p1, v1}, Lm1/c;->c(II)I

    move-result p1

    invoke-static {p1}, Lu0/d;->F3(I)V

    :cond_0
    const/16 p1, 0x3fd

    .line 5
    invoke-static {p1}, Lm1/c;->k(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    sget-object v0, Lbase/Configure$Property;->l:Lbase/Configure$Property;

    invoke-virtual {v0, v1}, Lbase/Configure$Property;->d(I)I

    move-result v0

    invoke-static {p1, v0}, Lm1/c;->c(II)I

    move-result p1

    .line 7
    invoke-virtual {p0, p1}, Lu0/i;->N3(I)V

    :cond_1
    const/16 p1, 0xd1

    .line 8
    invoke-static {p1}, Lm1/c;->k(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    invoke-static {p1, v1}, Lm1/c;->c(II)I

    move-result p1

    iput p1, p0, Lu0/i;->t:I

    .line 10
    invoke-virtual {p0, p1}, Lu0/i;->M3(I)V

    :cond_2
    const/16 p1, 0x3fa

    .line 11
    sget-object v0, Lbase/Configure$Property;->J:Lbase/Configure$Property;

    const-string v2, ""

    invoke-virtual {v0, v2}, Lbase/Configure$Property;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lm1/c;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Lu0/i;->H3(Ljava/lang/String;)V

    const/16 p1, 0xe1

    const-string v0, "sys.carlink.auto_connect"

    .line 13
    invoke-static {v0, v1}, Lo1/s0;->l(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {p1, v3}, Lm1/c;->c(II)I

    move-result p1

    const/4 v3, 0x1

    if-ne p1, v3, :cond_3

    move p1, v3

    goto :goto_0

    :cond_3
    move p1, v1

    :goto_0
    iput-boolean p1, p0, Lu0/i;->z:Z

    const/16 v4, 0xa6

    new-array v5, v3, [I

    aput p1, v5, v1

    .line 14
    invoke-static {v4, v5}, Lu0/d;->I3(I[I)V

    const/16 p1, 0xe0

    .line 15
    invoke-static {v0, v1}, Lo1/s0;->l(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {p1, v0}, Lm1/c;->c(II)I

    move-result p1

    if-ne p1, v3, :cond_4

    move p1, v3

    goto :goto_1

    :cond_4
    move p1, v1

    :goto_1
    iput-boolean p1, p0, Lu0/i;->y:Z

    const/16 v0, 0xa7

    new-array v4, v3, [I

    aput p1, v4, v1

    .line 16
    invoke-static {v0, v4}, Lu0/d;->I3(I[I)V

    const/16 p1, 0x3ec

    .line 17
    invoke-static {p1, v1}, Lm1/c;->c(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lu0/i;->O3(I)V

    const/16 p1, 0x3e9

    const/16 v0, 0x3c

    .line 18
    invoke-static {p1, v0}, Lm1/c;->c(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lu0/i;->Q3(I)V

    const/16 p1, 0x3ea

    const-string v0, "sys.syu.ui_mode"

    .line 19
    invoke-static {v0, v1}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p1, v0}, Lm1/c;->c(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lu0/i;->W3(I)V

    const/16 p1, 0x3eb

    const-string v0, "sys.syu.reverse_anti_shaking"

    .line 20
    invoke-static {v0, v1}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p1, v0}, Lm1/c;->c(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lu0/i;->K3(I)V

    .line 21
    sget-object p1, Lbase/Configure$Property;->c0:Lbase/Configure$Property;

    iget-object v0, p0, Lu0/i;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lbase/Configure$Property;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lu0/i;->q:Ljava/lang/String;

    const/16 v0, 0x3f8

    .line 22
    invoke-static {v0, p1}, Lm1/c;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lu0/i;->I3(Ljava/lang/String;)V

    const/16 p1, 0x33

    .line 23
    invoke-static {p1}, Lg/e;->j(I)Z

    move-result p1

    if-nez p1, :cond_5

    const/16 p1, 0xa

    .line 24
    invoke-static {p1}, Lg/f;->n(I)Z

    move-result p1

    if-nez p1, :cond_5

    const/16 p1, 0xb

    .line 25
    invoke-static {p1}, Lg/f;->n(I)Z

    move-result p1

    if-nez p1, :cond_5

    const/16 p1, 0xd

    .line 26
    invoke-static {p1}, Lg/f;->n(I)Z

    move-result p1

    if-nez p1, :cond_5

    const/16 p1, 0xe

    .line 27
    invoke-static {p1}, Lg/f;->n(I)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_5
    const/16 p1, 0xe5

    const-string v0, "sys.syu.extra_mic"

    .line 28
    invoke-static {v0, v3}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p1, v0}, Lm1/c;->c(II)I

    move-result p1

    iput p1, p0, Lu0/i;->I:I

    const/16 v0, 0xf

    if-lez p1, :cond_6

    move p1, v3

    goto :goto_2

    :cond_6
    move p1, v1

    .line 29
    :goto_2
    invoke-static {v0, p1}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    .line 30
    :cond_7
    invoke-static {}, Lg/f;->g()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_8

    move p1, v3

    goto :goto_3

    :cond_8
    move p1, v1

    .line 31
    :goto_3
    invoke-static {}, Lg/f;->g()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_9

    move v0, v3

    goto :goto_4

    :cond_9
    move v0, v1

    .line 32
    :goto_4
    invoke-static {}, Lg/f;->m()Z

    move-result v5

    if-nez v5, :cond_b

    if-nez p1, :cond_b

    if-eqz v0, :cond_a

    goto :goto_5

    :cond_a
    const/16 p1, 0xc

    .line 33
    invoke-static {p1}, Lg/f;->n(I)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 34
    invoke-virtual {p0, v3}, Lu0/i;->X3(I)V

    goto :goto_6

    .line 35
    :cond_b
    :goto_5
    invoke-virtual {p0, v3}, Lu0/i;->X3(I)V

    .line 36
    :cond_c
    :goto_6
    sget-object p1, Lbase/Configure$Property;->c:Lbase/Configure$Property;

    invoke-virtual {p1, v2}, Lbase/Configure$Property;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo1/s0;->E(Ljava/lang/String;)[I

    move-result-object p1

    .line 37
    invoke-static {p1, v3}, Lo1/s0;->h([II)Z

    move-result v0

    if-nez v0, :cond_d

    new-array p1, v4, [I

    .line 38
    fill-array-data p1, :array_0

    :cond_d
    const/16 v0, 0x3fb

    .line 39
    aget v1, p1, v1

    const/16 v2, 0x1e

    const/16 v5, 0x64

    invoke-static {v1, v2, v5}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    invoke-static {v0, v1}, Lm1/c;->c(II)I

    move-result v0

    const/16 v1, 0x3fc

    .line 40
    aget p1, p1, v3

    invoke-static {p1, v2, v5}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    invoke-static {v1, p1}, Lm1/c;->c(II)I

    move-result p1

    .line 41
    invoke-virtual {p0, v3, v0}, Lu0/i;->Y3(II)V

    .line 42
    invoke-virtual {p0, v4, p1}, Lu0/i;->Y3(II)V

    .line 43
    invoke-virtual {p0}, Lu0/i;->w3()V

    return-void

    nop

    :array_0
    .array-data 4
        0x32
        0x32
    .end array-data
.end method

.method public Q3(I)V
    .locals 3

    .line 1
    iget v0, p0, Lu0/i;->O:I

    if-eq v0, p1, :cond_2

    .line 2
    iput p1, p0, Lu0/i;->O:I

    const/16 v0, 0x1e

    if-ge p1, v0, :cond_0

    .line 3
    iput v0, p0, Lu0/i;->O:I

    :cond_0
    const/16 p1, 0xb1

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v2, v0, v1

    .line 4
    iget v1, p0, Lu0/i;->O:I

    aput v1, v0, v2

    invoke-static {p1, v0}, Lu0/d;->I3(I[I)V

    const/16 p1, 0x3e9

    .line 5
    iget v0, p0, Lu0/i;->O:I

    invoke-static {p1, v0}, Lm1/c;->e(II)I

    .line 6
    iget p1, p0, Lu0/i;->O:I

    if-gtz p1, :cond_1

    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lu0/i;->N:I

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0}, Lu0/i;->w3()V

    :cond_2
    :goto_0
    return-void
.end method

.method public R3(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lu0/i;->W:Z

    if-eq v0, p1, :cond_1

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v2, v0, v1

    aput v1, v0, v2

    const/4 v1, 0x2

    if-eqz p1, :cond_0

    const/16 p1, 0x94

    goto :goto_0

    :cond_0
    const/16 p1, 0x95

    :goto_0
    aput p1, v0, v1

    .line 2
    invoke-static {v0}, Lz/k;->s([I)V

    :cond_1
    return-void
.end method

.method public S3(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lu0/i;->V:Z

    if-eq v0, p1, :cond_1

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v2, v0, v1

    aput v1, v0, v2

    const/4 v1, 0x2

    if-eqz p1, :cond_0

    const/16 p1, 0x35

    goto :goto_0

    :cond_0
    const/16 p1, 0x36

    :goto_0
    aput p1, v0, v1

    .line 2
    invoke-static {v0}, Lz/k;->s([I)V

    :cond_1
    return-void
.end method

.method public T3(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu0/i;->V3(Z)V

    .line 2
    invoke-virtual {p0, p1}, Lu0/i;->U3(Z)V

    return-void
.end method

.method public final U3(Z)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_2

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    const-string v1, "uimode"

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 3
    :goto_0
    invoke-virtual {v0, p1}, Landroid/app/UiModeManager;->setNightMode(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final V3(Z)V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    const-string v1, "uimode"

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    .line 3
    new-instance v1, Lj1/c;

    const-string v2, "setNightModeActivated"

    invoke-direct {v1, v2}, Lj1/c;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1, v0}, Lj1/c;->g(Ljava/lang/Object;)Lj1/c;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lj1/c;->d([Ljava/lang/Object;)Lj1/c;

    move-result-object p1

    invoke-virtual {p1}, Lj1/c;->a()Ljava/lang/Object;

    return-void
.end method

.method public W3(I)V
    .locals 5

    if-ltz p1, :cond_4

    const/4 v0, 0x2

    if-gt p1, v0, :cond_4

    .line 1
    iget v1, p0, Lu0/i;->P:I

    if-eq v1, p1, :cond_4

    .line 2
    iput p1, p0, Lu0/i;->P:I

    const/16 v1, 0xb2

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    aput p1, v3, v4

    .line 3
    invoke-static {v1, v3}, Lu0/d;->I3(I[I)V

    const/16 v1, 0x3ea

    .line 4
    invoke-static {v1, p1}, Lm1/c;->e(II)I

    .line 5
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object p1

    invoke-virtual {p1}, Lapp/App;->g()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 6
    iget p1, p0, Lu0/i;->P:I

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget p1, Lu0/b;->w:I

    if-ne p1, v2, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_0
    if-ne p1, v0, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v4

    .line 7
    :goto_1
    invoke-virtual {p0, v1}, Lu0/i;->T3(Z)V

    if-ne p1, v0, :cond_3

    goto :goto_2

    :cond_3
    move v2, v4

    .line 8
    :goto_2
    new-instance p1, Lu0/i$h;

    invoke-direct {p1, p0, v2}, Lu0/i$h;-><init>(Lu0/i;I)V

    const-wide/16 v0, 0x258

    invoke-static {p1, v0, v1}, Lo1/j;->c(Ljava/lang/Runnable;J)V

    :cond_4
    return-void
.end method

.method public final X2(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lu0/i;->f0:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {p1}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lu0/i;->g0:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lu0/i;->g0:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public X3(I)V
    .locals 3

    .line 1
    iget v0, p0, Lu0/i;->k:I

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xc

    aput v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0xd

    aput v2, v0, v1

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 2
    invoke-static {v0}, Lz/k;->s([I)V

    const/16 v0, 0xc8

    .line 3
    invoke-static {v0}, Lm1/c;->k(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lu0/i;->Z2(I)V

    :cond_0
    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 13

    move-object v1, p0

    move-object v0, p1

    move v4, p2

    if-nez v0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-super/range {p0 .. p3}, Lbase/b;->Y1(Ly/b;II)V

    .line 2
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    invoke-virtual {v2, p1, p2}, Lo1/x;->m(Ly/b;I)Z

    if-nez p3, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_6

    .line 3
    :pswitch_1
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    iget-object v3, v1, Lu0/i;->m0:Ljava/lang/String;

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->F(Ly/b;ILjava/lang/String;)V

    goto/16 :goto_6

    .line 4
    :pswitch_2
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    iget v5, v1, Lu0/i;->l0:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 5
    :pswitch_3
    iget-object v2, v1, Lu0/i;->h0:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 6
    iget-object v5, v1, Lbase/b;->f:Lo1/x;

    invoke-virtual {v5, p1, p2, v6, v3}, Lo1/x;->E(Ly/b;IILjava/lang/String;)V

    goto :goto_0

    .line 7
    :pswitch_4
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    iget v5, v1, Lu0/i;->E:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 8
    :pswitch_5
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 9
    invoke-virtual {v2}, Ln1/b;->getFlags()Landroid/util/SparseArray;

    move-result-object v2

    .line 10
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-nez v7, :cond_2

    return-void

    :cond_2
    move v8, v6

    :goto_1
    if-ge v8, v7, :cond_b

    .line 11
    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 12
    invoke-virtual {v2, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 13
    iget-object v11, v1, Lbase/b;->f:Lo1/x;

    new-array v12, v3, [I

    aput v9, v12, v6

    aput v10, v12, v5

    invoke-virtual {v11, p1, p2, v12}, Lo1/x;->G(Ly/b;I[I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 14
    :pswitch_6
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v3, [I

    aput v6, v3, v6

    iget v6, v1, Lu0/i;->D:I

    aput v6, v3, v5

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 15
    :pswitch_7
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->f0:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 16
    :pswitch_8
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    iget v5, v1, Lu0/i;->C:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 17
    :pswitch_9
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v3, [I

    aput v6, v3, v6

    iget v7, v1, Lu0/i;->k0:I

    if-ne v7, v5, :cond_3

    move v6, v5

    :cond_3
    aput v6, v3, v5

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 18
    :pswitch_a
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    iget-object v3, v1, Lu0/i;->F:Ljava/lang/String;

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->F(Ly/b;ILjava/lang/String;)V

    goto/16 :goto_6

    .line 19
    :pswitch_b
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    iget-object v3, v1, Lu0/i;->j0:[I

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 20
    :pswitch_c
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    iget-boolean v5, v1, Lu0/i;->W:Z

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 21
    :pswitch_d
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    iget-object v3, v1, Lu0/i;->i0:Ljava/lang/String;

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->F(Ly/b;ILjava/lang/String;)V

    goto/16 :goto_6

    .line 22
    :pswitch_e
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    iget-boolean v5, v1, Lu0/i;->X:Z

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 23
    :pswitch_f
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    iget-boolean v5, v1, Lu0/i;->V:Z

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 24
    :pswitch_10
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v7, v3, [I

    aput v6, v7, v6

    iget v8, v1, Lu0/i;->S:I

    aput v8, v7, v5

    invoke-virtual {v2, p1, p2, v7}, Lo1/x;->G(Ly/b;I[I)V

    .line 25
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v7, v3, [I

    aput v5, v7, v6

    iget v8, v1, Lu0/i;->T:I

    aput v8, v7, v5

    invoke-virtual {v2, p1, p2, v7}, Lo1/x;->G(Ly/b;I[I)V

    .line 26
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v7, v3, [I

    aput v3, v7, v6

    iget v3, v1, Lu0/i;->U:I

    aput v3, v7, v5

    invoke-virtual {v2, p1, p2, v7}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 27
    :pswitch_11
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    iget-object v3, v1, Lu0/i;->q:Ljava/lang/String;

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->F(Ly/b;ILjava/lang/String;)V

    goto/16 :goto_6

    .line 28
    :pswitch_12
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    const/4 v7, 0x0

    new-array v8, v5, [F

    sget-object v3, Lo1/a;->h:Lo1/a;

    invoke-virtual {v3}, Lo1/a;->c()F

    move-result v3

    aput v3, v8, v6

    const/4 v9, 0x0

    move-object v3, p1

    move v4, p2

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    invoke-virtual/range {v2 .. v7}, Lo1/x;->H(Ly/b;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_6

    .line 29
    :pswitch_13
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v3, [I

    iget v7, v1, Lu0/i;->A:I

    aput v7, v3, v6

    iget v6, v1, Lu0/i;->B:I

    aput v6, v3, v5

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 30
    :pswitch_14
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    iget v5, v1, Lu0/i;->Q:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 31
    :pswitch_15
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    iget v5, v1, Lu0/i;->P:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 32
    :pswitch_16
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v7, v3, [I

    aput v6, v7, v6

    iget v8, v1, Lu0/i;->M:I

    aput v8, v7, v5

    invoke-virtual {v2, p1, p2, v7}, Lo1/x;->G(Ly/b;I[I)V

    .line 33
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v7, v3, [I

    aput v5, v7, v6

    iget v8, v1, Lu0/i;->O:I

    aput v8, v7, v5

    invoke-virtual {v2, p1, p2, v7}, Lo1/x;->G(Ly/b;I[I)V

    .line 34
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v7, v3, [I

    aput v3, v7, v6

    iget v3, v1, Lu0/i;->L:I

    aput v3, v7, v5

    invoke-virtual {v2, p1, p2, v7}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 35
    :pswitch_17
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    iget v5, v1, Lu0/i;->v:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 36
    :pswitch_18
    invoke-static {}, Lf1/o;->g()Lf1/o;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lf1/o;->u(Ly/b;I)V

    goto/16 :goto_6

    .line 37
    :pswitch_19
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    iget v5, v1, Lu0/i;->I:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 38
    :pswitch_1a
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    iget v5, v1, Lu0/i;->K:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 39
    :pswitch_1b
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    iget-boolean v3, v2, Lo1/x;->d:Z

    if-eqz v3, :cond_4

    .line 40
    invoke-virtual {v2}, Lo1/x;->g()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update SCREEN_ON DataMain.sScreenOn:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Lu0/b;->g:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_4
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->g:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 42
    :pswitch_1c
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    iget-boolean v5, v1, Lu0/i;->y:Z

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 43
    :pswitch_1d
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    iget-boolean v5, v1, Lu0/i;->z:Z

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 44
    :pswitch_1e
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    iget v5, v1, Lu0/i;->J:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 45
    :pswitch_1f
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    sget-object v3, Lu0/b;->L1:Ljava/lang/String;

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->F(Ly/b;ILjava/lang/String;)V

    goto/16 :goto_6

    .line 46
    :pswitch_20
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    iget-object v3, v1, Lu0/i;->G:Ljava/lang/String;

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->F(Ly/b;ILjava/lang/String;)V

    goto/16 :goto_6

    .line 47
    :pswitch_21
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    invoke-static {}, Lcom/syu/jni/ToolsJni;->getUsbIndex()I

    move-result v5

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 48
    :pswitch_22
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    iget-boolean v5, v1, Lu0/i;->x:Z

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 49
    :pswitch_23
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    iget v5, v1, Lu0/i;->j:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 50
    :pswitch_24
    sget-object v2, Ln0/j4;->d:Ln0/c4;

    if-eqz v2, :cond_b

    .line 51
    iget-object v3, v1, Lbase/b;->f:Lo1/x;

    iget-object v2, v2, Ln0/c4;->j:[I

    invoke-virtual {v3, p1, p2, v2}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 52
    :pswitch_25
    sget-object v2, Ln0/j4;->d:Ln0/c4;

    if-eqz v2, :cond_b

    .line 53
    iget-object v3, v1, Lbase/b;->f:Lo1/x;

    new-array v5, v5, [I

    iget-boolean v2, v2, Ln0/c4;->k:Z

    aput v2, v5, v6

    invoke-virtual {v3, p1, p2, v5}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 54
    :pswitch_26
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    iget v5, v1, Lu0/i;->t:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 55
    :pswitch_27
    invoke-static {}, Lo1/u;->X0()Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_5

    .line 56
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v3, ""

    const-string v7, ""

    filled-new-array {v3, v7}, [Ljava/lang/String;

    move-result-object v7

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v2 .. v7}, Lo1/x;->H(Ly/b;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_6

    .line 57
    :cond_5
    iget-object v7, v1, Lbase/b;->f:Lo1/x;

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v10, v3, [Ljava/lang/String;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v10, v6

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v5

    move-object v2, v7

    move-object v3, p1

    move v4, p2

    move-object v5, v8

    move-object v6, v9

    move-object v7, v10

    invoke-virtual/range {v2 .. v7}, Lo1/x;->H(Ly/b;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_6

    :pswitch_28
    const-string v2, "syu.imageic.inited"

    .line 58
    invoke-static {v2, v6}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result v2

    .line 59
    iget-object v3, v1, Lbase/b;->f:Lo1/x;

    new-array v5, v5, [I

    const-string v7, "syu.imageic.inited"

    invoke-static {v7, v2}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result v2

    aput v2, v5, v6

    invoke-virtual {v3, p1, p2, v5}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 60
    :pswitch_29
    iget-object v7, v1, Lbase/b;->f:Lo1/x;

    new-array v8, v2, [I

    aput v6, v8, v6

    iget v9, v1, Lu0/i;->r:I

    invoke-static {v9, v5}, Lo1/s0;->c(II)I

    move-result v9

    aput v9, v8, v5

    iget v9, v1, Lu0/i;->r:I

    invoke-static {v9, v6}, Lo1/s0;->c(II)I

    move-result v9

    aput v9, v8, v3

    invoke-virtual {v7, p1, p2, v8}, Lo1/x;->G(Ly/b;I[I)V

    .line 61
    iget-object v7, v1, Lbase/b;->f:Lo1/x;

    new-array v2, v2, [I

    aput v5, v2, v6

    iget v8, v1, Lu0/i;->s:I

    invoke-static {v8, v5}, Lo1/s0;->c(II)I

    move-result v8

    aput v8, v2, v5

    iget v5, v1, Lu0/i;->s:I

    invoke-static {v5, v6}, Lo1/s0;->c(II)I

    move-result v5

    aput v5, v2, v3

    invoke-virtual {v7, p1, p2, v2}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 62
    :pswitch_2a
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    iget v5, v1, Lu0/i;->u:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 63
    :pswitch_2b
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    invoke-static {}, Lb/a;->e()Lb/a;

    move-result-object v5

    invoke-virtual {v5}, Lb/a;->h()Z

    move-result v5

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 64
    :pswitch_2c
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    iget v5, v1, Lu0/i;->l:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 65
    :pswitch_2d
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    invoke-static {}, Lb/a;->e()Lb/a;

    move-result-object v5

    invoke-virtual {v5}, Lb/a;->i()Z

    move-result v5

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 66
    :pswitch_2e
    invoke-static {}, Lb/a;->e()Lb/a;

    move-result-object v2

    invoke-virtual {v2}, Lb/a;->f()Ljava/util/List;

    move-result-object v2

    .line 67
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x0

    if-lez v3, :cond_6

    .line 68
    new-array v3, v3, [Ljava/lang/String;

    .line 69
    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object v7, v3

    goto :goto_2

    :cond_6
    move-object v7, v5

    .line 70
    :goto_2
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v2 .. v7}, Lo1/x;->H(Ly/b;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_6

    .line 71
    :pswitch_2f
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    invoke-static {}, Lb/a;->e()Lb/a;

    move-result-object v3

    invoke-virtual {v3}, Lb/a;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->F(Ly/b;ILjava/lang/String;)V

    goto/16 :goto_6

    .line 72
    :pswitch_30
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    iget v5, v1, Lu0/i;->m:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 73
    :pswitch_31
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    iget v5, v1, Lu0/i;->k:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 74
    :pswitch_32
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    iget-object v3, v1, Lu0/i;->o:Ljava/lang/String;

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->F(Ly/b;ILjava/lang/String;)V

    goto/16 :goto_6

    .line 75
    :pswitch_33
    iget v2, v1, Lu0/i;->h:I

    if-ltz v2, :cond_b

    iget v7, v1, Lu0/i;->i:I

    if-ltz v7, :cond_b

    .line 76
    iget-object v8, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v3, [I

    aput v2, v3, v6

    aput v7, v3, v5

    invoke-virtual {v8, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 77
    :pswitch_34
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    sget-object v3, Lu0/b;->P1:Ljava/lang/String;

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->F(Ly/b;ILjava/lang/String;)V

    goto/16 :goto_6

    .line 78
    :pswitch_35
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->s1:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 79
    :pswitch_36
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->r1:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 80
    :pswitch_37
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->q1:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    :pswitch_38
    const/4 v0, -0x1

    .line 81
    invoke-static {v0}, Lu0/d;->E0(I)V

    goto/16 :goto_6

    .line 82
    :pswitch_39
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->p1:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 83
    :pswitch_3a
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->i1:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 84
    :pswitch_3b
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->o1:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 85
    :pswitch_3c
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->n1:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 86
    :pswitch_3d
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->l1:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 87
    :pswitch_3e
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Ly0/f;->Q0:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 88
    :pswitch_3f
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->h1:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 89
    :pswitch_40
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->f1:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 90
    :pswitch_41
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->e1:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 91
    :pswitch_42
    iget-object v7, v1, Lbase/b;->f:Lo1/x;

    new-array v8, v3, [I

    aput v6, v8, v6

    sget v9, Lu0/b;->x1:I

    aput v9, v8, v5

    invoke-virtual {v7, p1, p2, v8}, Lo1/x;->G(Ly/b;I[I)V

    .line 92
    iget-object v7, v1, Lbase/b;->f:Lo1/x;

    new-array v8, v3, [I

    aput v5, v8, v6

    sget v9, Lu0/b;->y1:I

    aput v9, v8, v5

    invoke-virtual {v7, p1, p2, v8}, Lo1/x;->G(Ly/b;I[I)V

    .line 93
    iget-object v7, v1, Lbase/b;->f:Lo1/x;

    new-array v8, v3, [I

    aput v3, v8, v6

    sget v9, Lu0/b;->z1:I

    aput v9, v8, v5

    invoke-virtual {v7, p1, p2, v8}, Lo1/x;->G(Ly/b;I[I)V

    .line 94
    iget-object v7, v1, Lbase/b;->f:Lo1/x;

    new-array v8, v3, [I

    aput v2, v8, v6

    sget v2, Lu0/b;->A1:I

    aput v2, v8, v5

    invoke-virtual {v7, p1, p2, v8}, Lo1/x;->G(Ly/b;I[I)V

    .line 95
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v3, [I

    const/4 v7, 0x4

    aput v7, v3, v6

    sget v6, Lu0/b;->B1:I

    aput v6, v3, v5

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 96
    :pswitch_43
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->d1:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 97
    :pswitch_44
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->X1:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 98
    :pswitch_45
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->b1:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 99
    :pswitch_46
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->a1:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 100
    :pswitch_47
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v3, [I

    sget v7, Lu0/b;->Y0:I

    aput v7, v3, v6

    sget v6, Lu0/b;->Z0:I

    aput v6, v3, v5

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 101
    :pswitch_48
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->G2:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 102
    :pswitch_49
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->F2:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 103
    :pswitch_4a
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->E2:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 104
    :pswitch_4b
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->D2:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 105
    :pswitch_4c
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->C2:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 106
    :pswitch_4d
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->B2:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 107
    :pswitch_4e
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->A2:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 108
    :pswitch_4f
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->z2:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 109
    :pswitch_50
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v3, [I

    sget v7, Lu0/b;->V0:I

    aput v7, v3, v6

    sget v6, Lu0/b;->W0:I

    aput v6, v3, v5

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 110
    :pswitch_51
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->U0:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 111
    :pswitch_52
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->T0:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 112
    :pswitch_53
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->e0:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 113
    :pswitch_54
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    sget-object v3, Lu0/b;->H1:Ljava/lang/String;

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->F(Ly/b;ILjava/lang/String;)V

    goto/16 :goto_6

    .line 114
    :pswitch_55
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    sget-object v3, Lu0/b;->G1:Ljava/lang/String;

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->F(Ly/b;ILjava/lang/String;)V

    goto/16 :goto_6

    .line 115
    :pswitch_56
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->Q0:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 116
    :pswitch_57
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->R0:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 117
    :pswitch_58
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->P0:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 118
    :pswitch_59
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->O0:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 119
    :pswitch_5a
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v7, v3, [I

    aput v6, v7, v6

    sget v8, Lu0/b;->M0:I

    aput v8, v7, v5

    invoke-virtual {v2, p1, p2, v7}, Lo1/x;->G(Ly/b;I[I)V

    .line 120
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v7, v3, [I

    aput v3, v7, v6

    sget v3, Lu0/b;->N0:I

    aput v3, v7, v5

    invoke-virtual {v2, p1, p2, v7}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 121
    :pswitch_5b
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->L0:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 122
    :pswitch_5c
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->J0:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 123
    :pswitch_5d
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->F0:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 124
    :pswitch_5e
    invoke-static {}, Lk0/qt;->A()V

    goto/16 :goto_6

    .line 125
    :pswitch_5f
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->D0:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 126
    :pswitch_60
    invoke-static {}, Lf1/o;->g()Lf1/o;

    move-result-object v2

    invoke-virtual {v2}, Lf1/o;->m()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 127
    invoke-static {}, Lf1/o;->g()Lf1/o;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lf1/o;->u(Ly/b;I)V

    goto/16 :goto_6

    :cond_7
    const-string v2, "image"

    const-string v3, "register ------------>>>> DataMain.sSignalNtscPal : %d"

    new-array v7, v5, [Ljava/lang/Object;

    .line 128
    sget v8, Lu0/b;->s4:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->s4:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 130
    :pswitch_61
    invoke-static {}, Lf1/o;->g()Lf1/o;

    move-result-object v2

    invoke-virtual {v2}, Lf1/o;->m()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 131
    invoke-static {}, Lf1/o;->g()Lf1/o;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lf1/o;->u(Ly/b;I)V

    goto/16 :goto_6

    :cond_8
    const-string v2, "image"

    .line 132
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "22 DataMain.sSignalOn = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Lu0/b;->r4:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->r4:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 134
    :pswitch_62
    invoke-static {}, Lf1/o;->g()Lf1/o;

    move-result-object v2

    invoke-virtual {v2}, Lf1/o;->m()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 135
    invoke-static {}, Lf1/o;->g()Lf1/o;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lf1/o;->u(Ly/b;I)V

    goto/16 :goto_6

    .line 136
    :pswitch_63
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->w0:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 137
    :pswitch_64
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->u0:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 138
    :pswitch_65
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->r0:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    :pswitch_66
    move v2, v6

    :goto_3
    const/16 v4, 0x22

    if-ge v2, v4, :cond_b

    .line 139
    iget-object v4, v1, Lbase/b;->f:Lo1/x;

    const/16 v7, 0x40

    new-array v8, v3, [I

    aput v2, v8, v6

    sget-object v9, Le/d;->a:[I

    aget v9, v9, v2

    aput v9, v8, v5

    invoke-virtual {v4, p1, v7, v8}, Lo1/x;->G(Ly/b;I[I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 140
    :pswitch_67
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->q0:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 141
    :pswitch_68
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->p0:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 142
    :pswitch_69
    iget-object v7, v1, Lbase/b;->f:Lo1/x;

    new-array v2, v2, [I

    sget v8, Lu0/b;->m0:I

    aput v8, v2, v6

    sget v6, Lu0/b;->n0:I

    aput v6, v2, v5

    sget v5, Lu0/b;->o0:I

    aput v5, v2, v3

    invoke-virtual {v7, p1, p2, v2}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 143
    :pswitch_6a
    iget-object v7, v1, Lbase/b;->f:Lo1/x;

    new-array v2, v2, [I

    sget v8, Lu0/b;->j0:I

    aput v8, v2, v6

    sget v6, Lu0/b;->k0:I

    aput v6, v2, v5

    sget v5, Lu0/b;->l0:I

    aput v5, v2, v3

    invoke-virtual {v7, p1, p2, v2}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 144
    :pswitch_6b
    sget-object v2, Lu0/d;->g:Ljava/lang/Runnable;

    monitor-enter v2

    .line 145
    :try_start_0
    iget-object v7, v1, Lbase/b;->f:Lo1/x;

    new-array v8, v5, [I

    sget v9, Lu0/b;->i4:I

    if-le v9, v3, :cond_9

    goto :goto_4

    :cond_9
    move v5, v6

    :goto_4
    aput v5, v8, v6

    invoke-virtual {v7, p1, p2, v8}, Lo1/x;->G(Ly/b;I[I)V

    .line 146
    monitor-exit v2

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 147
    :pswitch_6c
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->i0:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 148
    :pswitch_6d
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->g0:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 149
    :pswitch_6e
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->h0:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 150
    :pswitch_6f
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->d0:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 151
    :pswitch_70
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->c0:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 152
    :pswitch_71
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->b0:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 153
    :pswitch_72
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->a0:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 154
    :pswitch_73
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    sget-object v3, Lu0/b;->i3:Ljava/lang/String;

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->F(Ly/b;ILjava/lang/String;)V

    goto/16 :goto_6

    .line 155
    :pswitch_74
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->Y:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 156
    :pswitch_75
    invoke-static {p1}, Lu0/d;->M3(Ly/b;)V

    goto/16 :goto_6

    :pswitch_76
    const/16 v0, 0x2d

    new-array v2, v3, [I

    const/4 v3, 0x5

    aput v3, v2, v6

    .line 157
    sget v3, Lu0/b;->S0:I

    aput v3, v2, v5

    invoke-static {v0, v2}, Lu0/d;->I3(I[I)V

    goto/16 :goto_6

    .line 158
    :pswitch_77
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->n4:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 159
    :pswitch_78
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->I2:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 160
    :pswitch_79
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->H2:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 161
    :pswitch_7a
    iget-object v2, v1, Lu0/i;->f0:Ljava/lang/Object;

    monitor-enter v2

    move v3, v6

    .line 162
    :goto_5
    :try_start_1
    iget-object v5, v1, Lu0/i;->g0:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_a

    .line 163
    iget-object v5, v1, Lbase/b;->f:Lo1/x;

    iget-object v7, v1, Lu0/i;->g0:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, p1, p2, v6, v7}, Lo1/x;->E(Ly/b;IILjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 164
    :cond_a
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 165
    invoke-static {p1}, Lu0/d;->t(Ly/b;)V

    goto/16 :goto_6

    :catchall_1
    move-exception v0

    .line 166
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 167
    :pswitch_7b
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->X:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 168
    :pswitch_7c
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->R:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 169
    :pswitch_7d
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    sget-object v3, Lu0/b;->I1:Ljava/lang/String;

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->F(Ly/b;ILjava/lang/String;)V

    goto/16 :goto_6

    .line 170
    :pswitch_7e
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    sget-object v3, Lu0/b;->F1:Ljava/lang/String;

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->F(Ly/b;ILjava/lang/String;)V

    goto/16 :goto_6

    .line 171
    :pswitch_7f
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->M:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 172
    :pswitch_80
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->L:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 173
    :pswitch_81
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->K:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 174
    :pswitch_82
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->P:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 175
    :pswitch_83
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    sget-object v3, Lu0/b;->J1:Ljava/lang/String;

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->F(Ly/b;ILjava/lang/String;)V

    goto/16 :goto_6

    .line 176
    :pswitch_84
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->G:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 177
    :pswitch_85
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->V:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 178
    :pswitch_86
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->U:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 179
    :pswitch_87
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->r:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 180
    :pswitch_88
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->I:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 181
    :pswitch_89
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->q:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 182
    :pswitch_8a
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->y2:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 183
    :pswitch_8b
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->x2:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 184
    :pswitch_8c
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->w2:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 185
    :pswitch_8d
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->v2:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 186
    :pswitch_8e
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->u2:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 187
    :pswitch_8f
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->t2:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 188
    :pswitch_90
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->s2:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 189
    :pswitch_91
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->r2:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 190
    :pswitch_92
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->p:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 191
    :pswitch_93
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->o:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 192
    :pswitch_94
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->v:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 193
    :pswitch_95
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->u:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 194
    :pswitch_96
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->t:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_6

    .line 195
    :pswitch_97
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->m:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto :goto_6

    .line 196
    :pswitch_98
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->k:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto :goto_6

    .line 197
    :pswitch_99
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->z:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto :goto_6

    .line 198
    :pswitch_9a
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->x:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto :goto_6

    .line 199
    :pswitch_9b
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->w:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto :goto_6

    .line 200
    :pswitch_9c
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->j:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto :goto_6

    .line 201
    :pswitch_9d
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->h:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    goto :goto_6

    .line 202
    :pswitch_9e
    sget v2, Lu0/b;->d:I

    if-ltz v2, :cond_b

    .line 203
    iget-object v3, v1, Lbase/b;->f:Lo1/x;

    new-array v5, v5, [I

    aput v2, v5, v6

    invoke-virtual {v3, p1, p2, v5}, Lo1/x;->G(Ly/b;I[I)V

    goto :goto_6

    .line 204
    :pswitch_9f
    iget-object v2, v1, Lbase/b;->f:Lo1/x;

    new-array v3, v5, [I

    sget v5, Lu0/b;->D:I

    aput v5, v3, v6

    invoke-virtual {v2, p1, p2, v3}, Lo1/x;->G(Ly/b;I[I)V

    :cond_b
    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_0
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_0
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_0
        :pswitch_77
        :pswitch_0
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_0
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_0
        :pswitch_0
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_0
        :pswitch_0
        :pswitch_5c
        :pswitch_0
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_0
        :pswitch_0
        :pswitch_42
        :pswitch_0
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_0
        :pswitch_3e
        :pswitch_3d
        :pswitch_0
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_0
        :pswitch_0
        :pswitch_2a
        :pswitch_0
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_26
        :pswitch_0
        :pswitch_25
        :pswitch_24
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_23
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_22
        :pswitch_0
        :pswitch_0
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_0
        :pswitch_0
        :pswitch_1a
        :pswitch_19
        :pswitch_0
        :pswitch_18
        :pswitch_0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_0
        :pswitch_14
        :pswitch_9b
        :pswitch_13
        :pswitch_12
        :pswitch_0
        :pswitch_11
        :pswitch_0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public Y2(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 1
    :goto_0
    iget v2, p0, Lu0/i;->j:I

    if-eq v2, p1, :cond_1

    .line 2
    iput p1, p0, Lu0/i;->j:I

    const/16 v2, 0x95

    new-array v1, v1, [I

    aput p1, v1, v0

    .line 3
    invoke-static {v2, v1}, Lu0/d;->I3(I[I)V

    :cond_1
    return-void
.end method

.method public Y3(II)V
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 1
    sget p1, Lu0/b;->w:I

    if-ne p1, v1, :cond_0

    .line 2
    invoke-virtual {p0, v0, p2}, Lu0/i;->Y3(II)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, v1, p2}, Lu0/i;->Y3(II)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    const/16 v3, 0xbb

    if-ne p1, v1, :cond_2

    .line 4
    iget v4, p0, Lu0/i;->T:I

    if-eq v4, p2, :cond_3

    .line 5
    iput p2, p0, Lu0/i;->T:I

    new-array v0, v0, [I

    aput p1, v0, v2

    aput p2, v0, v1

    .line 6
    invoke-static {v3, v0}, Lu0/d;->I3(I[I)V

    const/16 p1, 0x3fb

    .line 7
    invoke-static {p1, p2}, Lm1/c;->e(II)I

    .line 8
    sget p1, Lu0/b;->w:I

    if-nez p1, :cond_3

    .line 9
    invoke-virtual {p0, p2}, Lu0/i;->Z3(I)V

    goto :goto_0

    :cond_2
    if-ne p1, v0, :cond_3

    .line 10
    iget v4, p0, Lu0/i;->U:I

    if-eq v4, p2, :cond_3

    .line 11
    iput p2, p0, Lu0/i;->U:I

    new-array v0, v0, [I

    aput p1, v0, v2

    aput p2, v0, v1

    .line 12
    invoke-static {v3, v0}, Lu0/d;->I3(I[I)V

    const/16 p1, 0x3fc

    .line 13
    invoke-static {p1, p2}, Lm1/c;->e(II)I

    .line 14
    sget p1, Lu0/b;->w:I

    if-ne p1, v1, :cond_3

    .line 15
    invoke-virtual {p0, p2}, Lu0/i;->Z3(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public Z2(I)V
    .locals 3

    .line 1
    iget v0, p0, Lu0/i;->k:I

    if-eq p1, v0, :cond_1

    .line 2
    iput p1, p0, Lu0/i;->k:I

    .line 3
    iget-object v0, p0, Lu0/i;->b0:Lo1/y;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lo1/y;->c()V

    :cond_0
    const/16 v0, 0x7d

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 5
    invoke-static {v0, v1}, Lu0/d;->I3(I[I)V

    :cond_1
    return-void
.end method

.method public Z3(I)V
    .locals 4

    .line 1
    iget v0, p0, Lu0/i;->S:I

    if-eq v0, p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lu0/i;->A3(I)V

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xb

    aput v2, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v1, 0x2

    const/16 v3, 0x64

    .line 3
    invoke-static {p1, v2, v3}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    aput p1, v0, v1

    invoke-static {v0}, Lz/k;->s([I)V

    :cond_0
    return-void
.end method

.method public a3(II)V
    .locals 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v3, 0x4

    if-eq p1, v3, :cond_3

    const/4 v3, 0x5

    if-eq p1, v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    if-eq p2, v0, :cond_1

    move p2, p1

    :cond_1
    new-array v2, v2, [I

    aput v0, v2, p1

    aput p1, v2, v0

    if-ne p2, v0, :cond_2

    const/16 p1, 0xa4

    goto :goto_0

    :cond_2
    const/16 p1, 0xa3

    :goto_0
    aput p1, v2, v1

    .line 1
    invoke-static {v2}, Lz/k;->s([I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public a4(I)V
    .locals 4

    .line 1
    iget v0, p0, Lu0/i;->l:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lu0/i;->l:I

    const/16 v0, 0xcc

    .line 3
    invoke-static {v0, p1}, Lm1/c;->e(II)I

    const/16 v0, 0x82

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    .line 4
    invoke-static {v0, v2}, Lu0/d;->I3(I[I)V

    if-ne p1, v1, :cond_0

    const/16 p1, 0x21c

    .line 5
    invoke-static {v3, v3, v1, p1}, Lk0/qt;->i(IIZI)V

    :cond_0
    return-void
.end method

.method public b3()Z
    .locals 2

    .line 1
    iget v0, p0, Lu0/i;->L:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lu0/i;->q0:Lq1/b;

    invoke-virtual {v0}, Lq1/b;->d()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public b4()V
    .locals 2

    .line 1
    sget-boolean v0, Lu0/b;->D1:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lu0/i;->o0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c3()V
    .locals 6

    .line 1
    iget-object v0, p0, Lbase/b;->b:Lo1/h0;

    const/16 v1, 0x3fe

    invoke-virtual {v0, v1}, Lo1/h0;->m(I)[Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Lbase/Configure$Property;->m:Lbase/Configure$Property;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lbase/Configure$Property;->b(Z)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_0

    sget-object v1, Lbase/Configure$Property;->o:Lbase/Configure$Property;

    invoke-virtual {v1, v2}, Lbase/Configure$Property;->b(Z)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const-string v4, "com.google.android.apps.maps"

    invoke-virtual {p0, v4, v1}, Lu0/i;->d3(Ljava/lang/String;Z)V

    .line 3
    sget-object v1, Lbase/Configure$Property;->n:Lbase/Configure$Property;

    invoke-virtual {v1, v2}, Lbase/Configure$Property;->b(Z)Z

    move-result v1

    xor-int/2addr v1, v3

    const-string v3, "com.google.android.youtube"

    invoke-virtual {p0, v3, v1}, Lu0/i;->d3(Ljava/lang/String;Z)V

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "======>> loaded disabledApps: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Qin"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3

    .line 5
    array-length v1, v0

    if-lez v1, :cond_3

    .line 6
    array-length v1, v0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 7
    iget-object v5, p0, Lu0/i;->h0:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 8
    iget-object v5, p0, Lu0/i;->h0:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 9
    :cond_2
    array-length v1, v0

    move v3, v2

    :goto_2
    if-ge v3, v1, :cond_6

    aget-object v4, v0, v3

    .line 10
    invoke-virtual {p0, v4, v2}, Lu0/i;->d3(Ljava/lang/String;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 11
    :cond_3
    sget-object v0, Lbase/Configure$Property;->h:Lbase/Configure$Property;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lbase/Configure$Property;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo1/s0;->u(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==>> def disabledApps: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 15
    iget-object v4, p0, Lu0/i;->h0:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 16
    iget-object v4, p0, Lu0/i;->h0:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 17
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 18
    invoke-virtual {p0, v1, v2}, Lu0/i;->d3(Ljava/lang/String;Z)V

    goto :goto_4

    :cond_6
    return-void
.end method

.method public final c4([Ljava/lang/String;I)Z
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

.method public declared-synchronized d3(Ljava/lang/String;Z)V
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p1}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3
    :try_start_1
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x200

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v0

    goto :goto_0

    :catch_0
    move v2, v1

    :goto_0
    if-nez v2, :cond_1

    .line 4
    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    const-string v2, "com.google.android.youtube"

    .line 5
    invoke-static {p1, v2}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p2, :cond_2

    .line 6
    sget-object v2, Lbase/Configure$Property;->n:Lbase/Configure$Property;

    invoke-virtual {v2, v1}, Lbase/Configure$Property;->b(Z)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v0

    goto :goto_1

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    move v2, p2

    .line 7
    :goto_1
    invoke-static {p1}, La/i;->n(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "Qin"

    .line 8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "===============>> enableApp pkg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " enable: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " isEnable : "

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0xcb

    if-nez v2, :cond_5

    if-eqz v3, :cond_4

    .line 9
    invoke-static {p1, v1}, La/i;->a(Ljava/lang/String;I)V

    :cond_4
    new-array v0, v0, [Ljava/lang/String;

    aput-object p1, v0, v1

    .line 10
    invoke-static {p2, v1, v0}, Lu0/d;->N3(II[Ljava/lang/String;)V

    .line 11
    iget-object p2, p0, Lu0/i;->h0:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 12
    iget-object p2, p0, Lu0/i;->h0:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_2

    :cond_5
    if-nez v3, :cond_6

    .line 13
    invoke-static {p1, v0}, La/i;->a(Ljava/lang/String;I)V

    new-array v2, v0, [Ljava/lang/String;

    aput-object p1, v2, v1

    .line 14
    invoke-static {p2, v0, v2}, Lu0/d;->N3(II[Ljava/lang/String;)V

    .line 15
    iget-object p2, p0, Lu0/i;->h0:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    :cond_6
    :goto_2
    if-eqz v1, :cond_7

    .line 16
    iget-object p1, p0, Lu0/i;->h0:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    .line 17
    iget-object p2, p0, Lu0/i;->h0:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const-string p2, "Qin"

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "===============>> disabledApps : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    iget-object p2, p0, Lbase/b;->b:Lo1/h0;

    const/16 v0, 0x3fe

    invoke-virtual {p2, v0, p1}, Lo1/h0;->u(I[Ljava/lang/String;)V

    .line 20
    iget-object p1, p0, Lbase/b;->b:Lo1/h0;

    invoke-virtual {p1, v0}, Lo1/h0;->e(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 21
    :cond_7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public d4()V
    .locals 1

    .line 1
    iget-object v0, p0, Lu0/i;->q:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->S0(Ljava/lang/String;)V

    return-void
.end method

.method public e3(I)V
    .locals 4

    const/16 v0, 0x33

    .line 1
    invoke-static {v0}, Lg/e;->j(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    .line 2
    invoke-static {v0}, Lg/f;->n(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xb

    .line 3
    invoke-static {v0}, Lg/f;->n(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xd

    .line 4
    invoke-static {v0}, Lg/f;->n(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xe

    .line 5
    invoke-static {v0}, Lg/f;->n(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget v0, p0, Lu0/i;->I:I

    if-eq p1, v0, :cond_3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    move p1, v1

    .line 6
    :goto_0
    iput p1, p0, Lu0/i;->I:I

    const/16 v2, 0xe5

    .line 7
    invoke-static {v2, p1}, Lm1/c;->e(II)I

    const/16 p1, 0xac

    new-array v2, v0, [I

    .line 8
    iget v3, p0, Lu0/i;->I:I

    aput v3, v2, v1

    invoke-static {p1, v2}, Lu0/d;->I3(I[I)V

    const/16 p1, 0xf

    .line 9
    iget v2, p0, Lu0/i;->I:I

    if-lez v2, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    invoke-static {p1, v0}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    :cond_3
    return-void
.end method

.method public e4()V
    .locals 1

    .line 1
    iget v0, p0, Lu0/i;->M:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lu0/i;->P3(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lu0/i;->P3(I)V

    :goto_0
    return-void
.end method

.method public f3(I)V
    .locals 4

    .line 1
    invoke-static {}, Lg/f;->s()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p1, v1

    .line 2
    :cond_0
    iget v0, p0, Lu0/i;->m:I

    if-eq v0, p1, :cond_2

    .line 3
    iput p1, p0, Lu0/i;->m:I

    .line 4
    sget-object v0, La/b;->X:Ljava/lang/String;

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    invoke-static {v0, v3}, Lu0/d;->m0(Ljava/lang/String;Z)V

    const/16 v0, 0x7e

    new-array v2, v2, [I

    aput p1, v2, v1

    .line 5
    invoke-static {v0, v2}, Lu0/d;->I3(I[I)V

    :cond_2
    return-void
.end method

.method public f4(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lu0/i;->o:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iput-object p1, p0, Lu0/i;->o:Ljava/lang/String;

    const/16 v0, 0x183

    .line 3
    invoke-static {v0, p1}, Lm1/c;->f(ILjava/lang/String;)V

    const/16 p1, 0x7c

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lu0/i;->o:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lu0/d;->K3(I[Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lu0/i;->n:Lo1/z;

    iget-object v0, p0, Lu0/i;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lo1/z;->c(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public g3()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lu0/i;->F:Ljava/lang/String;

    return-object v0
.end method

.method public g4(IZ)V
    .locals 2

    .line 1
    iget v0, p0, Lu0/i;->u:I

    if-eqz p2, :cond_0

    or-int/2addr p1, v0

    .line 2
    iput p1, p0, Lu0/i;->u:I

    goto :goto_0

    :cond_0
    not-int p1, p1

    and-int/2addr p1, v0

    .line 3
    iput p1, p0, Lu0/i;->u:I

    .line 4
    :goto_0
    iget p1, p0, Lu0/i;->u:I

    if-eq v0, p1, :cond_1

    iget-object p1, p0, Lbase/b;->d:Landroid/os/Handler;

    if-eqz p1, :cond_1

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "  ==============>>>  turnOptions: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lu0/i;->u:I

    and-int/lit8 p2, p2, -0x1

    invoke-static {p2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Qin"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object p1, p0, Lbase/b;->d:Landroid/os/Handler;

    iget-object p2, p0, Lu0/i;->s0:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7
    iget-object p1, p0, Lbase/b;->d:Landroid/os/Handler;

    iget-object p2, p0, Lu0/i;->s0:Ljava/lang/Runnable;

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public h3()I
    .locals 1

    .line 1
    iget v0, p0, Lu0/i;->K:I

    return v0
.end method

.method public h4(I)V
    .locals 3

    .line 1
    iget v0, p0, Lu0/i;->K:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lu0/i;->K:I

    .line 3
    sget-object p1, Lutil/SunshineTimeObserver;->g:Lutil/SunshineTimeObserver;

    invoke-virtual {p1}, Lutil/SunshineTimeObserver;->d0()V

    const/16 p1, 0xab

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 4
    iget v2, p0, Lu0/i;->K:I

    aput v2, v0, v1

    invoke-static {p1, v0}, Lu0/d;->I3(I[I)V

    :cond_0
    return-void
.end method

.method public i3()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lu0/i;->i0:Ljava/lang/String;

    return-object v0
.end method

.method public i4(I)V
    .locals 3

    .line 1
    iget v0, p0, Lu0/i;->C:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lu0/i;->C:I

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v0, 0xc5

    invoke-virtual {p0, v0, p1}, Lbase/b;->T2(ILjava/lang/Object;)V

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v1, 0x0

    .line 4
    iget v2, p0, Lu0/i;->C:I

    aput v2, p1, v1

    invoke-static {v0, p1}, Lu0/d;->I3(I[I)V

    :cond_0
    return-void
.end method

.method public j3()I
    .locals 1

    .line 1
    iget v0, p0, Lu0/i;->w:I

    return v0
.end method

.method public j4(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lu0/i;->m0:Ljava/lang/String;

    invoke-static {v0, p1}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lu0/i;->m0:Ljava/lang/String;

    const/16 v0, 0xcd

    .line 3
    invoke-virtual {p0, v0, p1}, Lbase/b;->T2(ILjava/lang/Object;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 4
    invoke-static {v0, v1}, Lu0/d;->K3(I[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public k3()I
    .locals 1

    .line 1
    iget v0, p0, Lu0/i;->l0:I

    return v0
.end method

.method public k4(I)V
    .locals 3

    .line 1
    iget v0, p0, Lu0/i;->D:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lu0/i;->D:I

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-virtual {p0, v1, v0}, Lbase/b;->T2(ILjava/lang/Object;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v2, 0x0

    aput p1, v0, v2

    .line 4
    invoke-static {v1, v0}, Lu0/d;->I3(I[I)V

    :cond_0
    return-void
.end method

.method public l4(II)V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "lamplet type: %2X, value: %2X"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "main"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    const/4 p1, -0x1

    move p2, v3

    move v1, p2

    goto :goto_4

    .line 2
    :pswitch_0
    iget p1, p0, Lu0/i;->s:I

    invoke-static {p1, v4}, Lo1/s0;->c(II)I

    move-result p1

    invoke-static {p1, p2}, Lo1/s0;->x(II)I

    move-result p1

    .line 3
    iget p2, p0, Lu0/i;->s:I

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 4
    :pswitch_1
    iget p1, p0, Lu0/i;->s:I

    invoke-static {p1, v3}, Lo1/s0;->c(II)I

    move-result p1

    invoke-static {p2, p1}, Lo1/s0;->x(II)I

    move-result p1

    .line 5
    iget p2, p0, Lu0/i;->s:I

    if-eq p1, p2, :cond_0

    :goto_0
    move p2, v4

    goto :goto_1

    :cond_0
    move p2, v3

    :goto_1
    move v1, p2

    move p2, p1

    move p1, v4

    goto :goto_4

    .line 6
    :pswitch_2
    iget p1, p0, Lu0/i;->r:I

    invoke-static {p1, v4}, Lo1/s0;->c(II)I

    move-result p1

    invoke-static {p1, p2}, Lo1/s0;->x(II)I

    move-result p1

    .line 7
    iget p2, p0, Lu0/i;->r:I

    if-eq p1, p2, :cond_1

    goto :goto_2

    .line 8
    :pswitch_3
    iget p1, p0, Lu0/i;->r:I

    invoke-static {p1, v3}, Lo1/s0;->c(II)I

    move-result p1

    invoke-static {p2, p1}, Lo1/s0;->x(II)I

    move-result p1

    .line 9
    iget p2, p0, Lu0/i;->r:I

    if-eq p1, p2, :cond_1

    :goto_2
    move p2, v4

    goto :goto_3

    :cond_1
    move p2, v3

    :goto_3
    move v1, p2

    move p2, p1

    move p1, v3

    :goto_4
    if-eqz v1, :cond_3

    if-nez p1, :cond_2

    .line 10
    iput p2, p0, Lu0/i;->r:I

    goto :goto_5

    .line 11
    :cond_2
    iput p2, p0, Lu0/i;->s:I

    :goto_5
    const/4 v1, 0x3

    new-array v1, v1, [I

    aput p1, v1, v3

    .line 12
    invoke-static {p2, v4}, Lo1/s0;->c(II)I

    move-result p1

    aput p1, v1, v4

    invoke-static {p2, v3}, Lo1/s0;->c(II)I

    move-result p1

    aput p1, v1, v0

    const/16 p1, 0x88

    .line 13
    invoke-virtual {p0, p1, v1}, Lbase/b;->T2(ILjava/lang/Object;)V

    .line 14
    invoke-static {p1, v1}, Lu0/d;->I3(I[I)V

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x23
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public m3()I
    .locals 1

    .line 1
    iget v0, p0, Lu0/i;->P:I

    return v0
.end method

.method public m4(IZ)V
    .locals 2

    .line 1
    iget v0, p0, Lu0/i;->v:I

    if-eqz p2, :cond_0

    or-int/2addr p1, v0

    .line 2
    iput p1, p0, Lu0/i;->v:I

    goto :goto_0

    :cond_0
    not-int p1, p1

    and-int/2addr p1, v0

    .line 3
    iput p1, p0, Lu0/i;->v:I

    .line 4
    :goto_0
    iget p1, p0, Lu0/i;->v:I

    if-eq v0, p1, :cond_1

    iget-object p1, p0, Lbase/b;->d:Landroid/os/Handler;

    if-eqz p1, :cond_1

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "  ==============>>>  updateObstacleFlag: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lu0/i;->v:I

    and-int/lit8 p2, p2, -0x1

    invoke-static {p2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Qin"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xb0

    const/4 p2, 0x1

    new-array p2, p2, [I

    const/4 v0, 0x0

    .line 6
    iget v1, p0, Lu0/i;->v:I

    aput v1, p2, v0

    invoke-static {p1, p2}, Lu0/d;->I3(I[I)V

    :cond_1
    return-void
.end method

.method public n3(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lu0/i;->o3(Ljava/lang/String;ZLy/b;)V

    return-void
.end method

.method public n4(I)V
    .locals 3

    .line 1
    iget v0, p0, Lu0/i;->E:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lu0/i;->E:I

    const/16 v0, 0x3fd

    .line 3
    invoke-static {v0, p1}, Lm1/c;->e(II)I

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xca

    invoke-virtual {p0, v1, v0}, Lbase/b;->T2(ILjava/lang/Object;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v2, 0x0

    aput p1, v0, v2

    .line 5
    invoke-static {v1, v0}, Lu0/d;->I3(I[I)V

    :cond_0
    return-void
.end method

.method public o3(Ljava/lang/String;ZLy/b;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lu0/i;->f0:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {p1}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x27

    if-eqz p2, :cond_1

    .line 3
    iget-object v4, p0, Lu0/i;->g0:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 4
    iget-object p2, p0, Lu0/i;->g0:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    if-nez p3, :cond_0

    new-array p2, v1, [Ljava/lang/String;

    aput-object p1, p2, v2

    .line 5
    invoke-static {v3, v2, p2}, Lu0/d;->N3(II[Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p2, p0, Lbase/b;->f:Lo1/x;

    invoke-virtual {p2, p3, v3, v2, p1}, Lo1/x;->E(Ly/b;IILjava/lang/String;)V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_3

    .line 7
    iget-object p2, p0, Lu0/i;->g0:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 8
    iget-object p2, p0, Lu0/i;->g0:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    if-nez p3, :cond_2

    new-array p2, v1, [Ljava/lang/String;

    aput-object p1, p2, v2

    .line 9
    invoke-static {v3, v1, p2}, Lu0/d;->N3(II[Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object p2, p0, Lbase/b;->f:Lo1/x;

    invoke-virtual {p2, p3, v3, v1, p1}, Lo1/x;->E(Ly/b;IILjava/lang/String;)V

    .line 11
    :cond_3
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public o4(I)V
    .locals 3

    .line 1
    iget v0, p0, Lu0/i;->J:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_2

    const/4 v0, 0x4

    if-le p1, v0, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    iput p1, p0, Lu0/i;->J:I

    const/16 v0, 0xa5

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 3
    invoke-static {v0, v1}, Lu0/d;->I3(I[I)V

    const/16 p1, 0xdf

    .line 4
    iget v0, p0, Lu0/i;->J:I

    invoke-static {p1, v0}, Lm1/c;->e(II)I

    :cond_2
    :goto_0
    return-void
.end method

.method public final p3([II)Z
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

.method public p4(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    .line 1
    :goto_0
    iget v2, p0, Lu0/i;->H:I

    if-eq v2, p1, :cond_1

    .line 2
    iput p1, p0, Lu0/i;->H:I

    const/16 v2, 0xa9

    new-array v1, v1, [I

    aput p1, v1, v0

    .line 3
    invoke-static {v2, v1}, Lu0/d;->I3(I[I)V

    :cond_1
    return-void
.end method

.method public q3()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lu0/i;->R:Z

    return v0
.end method

.method public q4(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lu0/i;->W:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lu0/i;->W:Z

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 p1, 0xbf

    .line 3
    invoke-static {p1, v0}, Lu0/d;->I3(I[I)V

    .line 4
    iget-boolean v0, p0, Lu0/i;->W:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lbase/b;->T2(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public r3()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lu0/i;->x:Z

    return v0
.end method

.method public r4(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lu0/i;->G:Ljava/lang/String;

    invoke-static {p1, v0}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iput-object p1, p0, Lu0/i;->G:Ljava/lang/String;

    const/16 v0, 0xd8

    .line 3
    invoke-static {v0, p1}, Lm1/c;->f(ILjava/lang/String;)V

    const/16 v0, 0xa3

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 4
    invoke-static {v0, v1}, Lu0/d;->K3(I[Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public s3()Z
    .locals 2

    .line 1
    iget v0, p0, Lu0/i;->Q:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public s4(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {p1}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0xa4

    const/16 v4, 0xd7

    if-eqz v0, :cond_0

    sget-object v0, Lu0/b;->L1:Ljava/lang/String;

    invoke-static {v0}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, ""

    .line 2
    sput-object p1, Lu0/b;->L1:Ljava/lang/String;

    .line 3
    invoke-static {v4, p1}, Lm1/c;->f(ILjava/lang/String;)V

    new-array p1, v2, [Ljava/lang/String;

    .line 4
    sget-object v0, Lu0/b;->L1:Ljava/lang/String;

    aput-object v0, p1, v1

    invoke-static {v3, p1}, Lu0/d;->K3(I[Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p1}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-static {v0, p1}, Lo1/u;->k0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lu0/b;->L1:Ljava/lang/String;

    .line 7
    invoke-static {p1, v0}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    sput-object p1, Lu0/b;->L1:Ljava/lang/String;

    .line 9
    invoke-static {v4, p1}, Lm1/c;->f(ILjava/lang/String;)V

    new-array p1, v2, [Ljava/lang/String;

    .line 10
    sget-object v0, Lu0/b;->L1:Ljava/lang/String;

    aput-object v0, p1, v1

    invoke-static {v3, p1}, Lu0/d;->K3(I[Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public t3()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lu0/i;->V:Z

    return v0
.end method

.method public u3(I)V
    .locals 3

    .line 1
    iget v0, p0, Lu0/i;->t:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Lu0/i;->t:I

    const/16 v0, 0x8e

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 3
    invoke-static {v0, v1}, Lu0/d;->I3(I[I)V

    const/16 v0, 0xd1

    .line 4
    invoke-static {v0}, Lm1/c;->k(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-static {v0, p1}, Lm1/c;->e(II)I

    :cond_1
    return-void
.end method

.method public v3()V
    .locals 2

    .line 1
    sget-boolean v0, Lu0/b;->D1:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lu0/i;->o0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    iget-object v1, p0, Lu0/i;->o0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public w3()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lu0/i;->b3()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lu0/i;->M:I

    if-nez v0, :cond_0

    iget v0, p0, Lu0/i;->O:I

    if-lez v0, :cond_0

    .line 2
    iput v0, p0, Lu0/i;->N:I

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "===============>> resetScreenSaverRemain mScreenSaverRemain: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lu0/i;->N:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Qin"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public x3(I)V
    .locals 3

    const/16 v0, 0x3f9

    .line 1
    invoke-static {v0}, Lm1/c;->k(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lbase/Configure$Property;->p:Lbase/Configure$Property;

    .line 2
    invoke-virtual {v0, v1}, Lbase/Configure$Property;->b(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lbase/b;->d:Landroid/os/Handler;

    new-instance v1, Lu0/i$f;

    invoke-direct {v1, p0, p1}, Lu0/i$f;-><init>(Lu0/i;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v2, 0x0

    aput v1, v0, v2

    aput v2, v0, v1

    const/4 v2, 0x2

    if-ne p1, v1, :cond_1

    const/16 p1, 0xc9

    goto :goto_0

    :cond_1
    const/16 p1, 0xc8

    :goto_0
    aput p1, v0, v2

    .line 4
    invoke-static {v0}, Lz/k;->s([I)V

    .line 5
    :goto_1
    iget-object p1, p0, Lu0/i;->p:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method

.method public y3()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lu0/i;->b3()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lu0/i;->N:I

    .line 3
    invoke-virtual {p0, v0}, Lu0/i;->P3(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget v0, p0, Lu0/i;->M:I

    if-nez v0, :cond_1

    iget v0, p0, Lu0/i;->O:I

    if-lez v0, :cond_1

    .line 5
    iget v0, p0, Lu0/i;->N:I

    if-lez v0, :cond_1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 6
    iput v0, p0, Lu0/i;->N:I

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "===============>> screenSaverTick mScreenSaverRemain: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lu0/i;->N:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Qin"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget v0, p0, Lu0/i;->N:I

    if-nez v0, :cond_1

    .line 9
    invoke-virtual {p0, v1}, Lu0/i;->P3(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public z3(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lu0/i;->V:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lu0/i;->V:Z

    const/16 v0, 0xbc

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 3
    invoke-static {v0, v1}, Lu0/d;->I3(I[I)V

    :cond_0
    return-void
.end method
