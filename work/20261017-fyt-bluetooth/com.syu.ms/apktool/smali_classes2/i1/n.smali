.class public Li1/n;
.super Li1/a;
.source "SourceFile"

# interfaces
.implements Li1/g;
.implements Lo1/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li1/n$j;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li1/a<",
        "Li1/n$j;",
        ">;",
        "Li1/g;",
        "Lo1/p;"
    }
.end annotation


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public D:Landroid/os/Handler;

.field public E:Landroid/util/SparseIntArray;

.field public F:J

.field public G:Ljava/lang/Runnable;

.field public final H:Ljava/lang/Runnable;

.field public final I:Ljava/lang/Runnable;

.field public final J:Ljava/lang/Runnable;

.field public final K:Ljava/lang/Runnable;

.field public final L:Lo1/p;

.field public final M:Ljava/lang/Runnable;

.field public final N:Ljava/lang/Runnable;

.field public final O:Ljava/lang/Runnable;

.field public P:I

.field public Q:J

.field public final k:Z

.field public l:Le/e$a;

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:[I

.field public t:I

.field public u:I

.field public final v:I

.field public final w:I

.field public final x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(II)V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p2}, Li1/a;-><init>(II)V

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Li1/n;->k:Z

    .line 3
    new-instance v2, Le/e$a;

    invoke-direct {v2, v1, v1, v1}, Le/e$a;-><init>(III)V

    iput-object v2, v0, Li1/n;->l:Le/e$a;

    const/16 v2, 0x31

    .line 4
    iput v2, v0, Li1/n;->m:I

    .line 5
    iput v1, v0, Li1/n;->n:I

    .line 6
    iput v1, v0, Li1/n;->o:I

    const/16 v3, 0x80

    .line 7
    iput v3, v0, Li1/n;->p:I

    .line 8
    iput v1, v0, Li1/n;->q:I

    .line 9
    iput v1, v0, Li1/n;->r:I

    const/16 v3, 0x8

    new-array v4, v3, [I

    .line 10
    fill-array-data v4, :array_0

    iput-object v4, v0, Li1/n;->s:[I

    .line 11
    iput v1, v0, Li1/n;->t:I

    .line 12
    iput v1, v0, Li1/n;->u:I

    const/16 v4, 0xc

    .line 13
    iput v4, v0, Li1/n;->v:I

    const/4 v5, 0x4

    .line 14
    iput v5, v0, Li1/n;->w:I

    const/4 v6, 0x2

    .line 15
    iput v6, v0, Li1/n;->x:I

    .line 16
    iput v1, v0, Li1/n;->y:I

    iput v1, v0, Li1/n;->z:I

    .line 17
    iput-boolean v1, v0, Li1/n;->A:Z

    iput-boolean v1, v0, Li1/n;->B:Z

    iput-boolean v1, v0, Li1/n;->C:Z

    .line 18
    new-instance v7, Landroid/util/SparseIntArray;

    invoke-direct {v7}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v7, v0, Li1/n;->E:Landroid/util/SparseIntArray;

    const-wide/16 v7, 0x0

    .line 19
    iput-wide v7, v0, Li1/n;->F:J

    .line 20
    new-instance v9, Li1/n$a;

    invoke-direct {v9, v0}, Li1/n$a;-><init>(Li1/n;)V

    iput-object v9, v0, Li1/n;->G:Ljava/lang/Runnable;

    .line 21
    new-instance v9, Li1/n$b;

    invoke-direct {v9, v0}, Li1/n$b;-><init>(Li1/n;)V

    iput-object v9, v0, Li1/n;->H:Ljava/lang/Runnable;

    .line 22
    new-instance v10, Li1/n$c;

    invoke-direct {v10, v0}, Li1/n$c;-><init>(Li1/n;)V

    iput-object v10, v0, Li1/n;->I:Ljava/lang/Runnable;

    .line 23
    new-instance v10, Li1/n$d;

    invoke-direct {v10, v0}, Li1/n$d;-><init>(Li1/n;)V

    iput-object v10, v0, Li1/n;->J:Ljava/lang/Runnable;

    .line 24
    new-instance v11, Li1/n$e;

    invoke-direct {v11, v0}, Li1/n$e;-><init>(Li1/n;)V

    iput-object v11, v0, Li1/n;->K:Ljava/lang/Runnable;

    .line 25
    new-instance v12, Li1/n$f;

    invoke-direct {v12, v0}, Li1/n$f;-><init>(Li1/n;)V

    iput-object v12, v0, Li1/n;->L:Lo1/p;

    .line 26
    new-instance v13, Li1/n$g;

    invoke-direct {v13, v0}, Li1/n$g;-><init>(Li1/n;)V

    iput-object v13, v0, Li1/n;->M:Ljava/lang/Runnable;

    .line 27
    new-instance v13, Li1/n$h;

    invoke-direct {v13, v0}, Li1/n$h;-><init>(Li1/n;)V

    iput-object v13, v0, Li1/n;->N:Ljava/lang/Runnable;

    .line 28
    new-instance v14, Li1/n$i;

    invoke-direct {v14, v0}, Li1/n$i;-><init>(Li1/n;)V

    iput-object v14, v0, Li1/n;->O:Ljava/lang/Runnable;

    .line 29
    iput v1, v0, Li1/n;->P:I

    .line 30
    iput-wide v7, v0, Li1/n;->Q:J

    .line 31
    new-instance v7, Landroid/os/HandlerThread;

    const-string v8, "817_360_Work"

    invoke-direct {v7, v8}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 33
    new-instance v8, Landroid/os/Handler;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v8, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v8, v0, Li1/n;->D:Landroid/os/Handler;

    .line 34
    iget-object v7, v0, Li1/n;->E:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 35
    iget-object v7, v0, Li1/n;->E:Landroid/util/SparseIntArray;

    const/4 v8, 0x1

    invoke-virtual {v7, v8, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 36
    iget-object v7, v0, Li1/n;->E:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v6, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 37
    iget-object v6, v0, Li1/n;->E:Landroid/util/SparseIntArray;

    const/4 v7, 0x5

    const/4 v15, 0x3

    invoke-virtual {v6, v7, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 38
    iget-object v6, v0, Li1/n;->E:Landroid/util/SparseIntArray;

    const/4 v1, 0x6

    invoke-virtual {v6, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 39
    iget-object v6, v0, Li1/n;->E:Landroid/util/SparseIntArray;

    const/4 v1, 0x7

    const/16 v7, 0x11

    invoke-virtual {v6, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 40
    iget-object v1, v0, Li1/n;->E:Landroid/util/SparseIntArray;

    const/16 v6, 0x12

    invoke-virtual {v1, v3, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 41
    iget-object v1, v0, Li1/n;->E:Landroid/util/SparseIntArray;

    const/16 v3, 0x9

    const/16 v8, 0x13

    invoke-virtual {v1, v3, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 42
    iget-object v1, v0, Li1/n;->E:Landroid/util/SparseIntArray;

    const/16 v3, 0xa

    const/16 v2, 0x14

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 43
    iget-object v1, v0, Li1/n;->E:Landroid/util/SparseIntArray;

    const/16 v3, 0xb

    const/16 v2, 0x16

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 44
    iget-object v1, v0, Li1/n;->E:Landroid/util/SparseIntArray;

    const/16 v3, 0x17

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 45
    iget-object v1, v0, Li1/n;->E:Landroid/util/SparseIntArray;

    const/16 v4, 0xd

    const/16 v3, 0x18

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 46
    iget-object v1, v0, Li1/n;->E:Landroid/util/SparseIntArray;

    const/16 v3, 0xe

    const/16 v4, 0x21

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 47
    iget-object v1, v0, Li1/n;->E:Landroid/util/SparseIntArray;

    const/16 v3, 0xf

    const/16 v4, 0x22

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 48
    iget-object v1, v0, Li1/n;->E:Landroid/util/SparseIntArray;

    const/16 v3, 0x10

    const/16 v4, 0x23

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 49
    iget-object v1, v0, Li1/n;->E:Landroid/util/SparseIntArray;

    const/16 v3, 0x24

    invoke-virtual {v1, v7, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 50
    iget-object v1, v0, Li1/n;->E:Landroid/util/SparseIntArray;

    const/16 v3, 0x25

    invoke-virtual {v1, v6, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 51
    iget-object v1, v0, Li1/n;->E:Landroid/util/SparseIntArray;

    const/16 v3, 0x26

    invoke-virtual {v1, v8, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 52
    iget-object v1, v0, Li1/n;->E:Landroid/util/SparseIntArray;

    const/16 v3, 0x27

    invoke-virtual {v1, v15, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 53
    iget-object v1, v0, Li1/n;->E:Landroid/util/SparseIntArray;

    const/16 v3, 0x28

    invoke-virtual {v1, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 54
    iget-object v1, v0, Li1/n;->E:Landroid/util/SparseIntArray;

    const/16 v4, 0x29

    const/16 v6, 0x14

    invoke-virtual {v1, v6, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 55
    iget-object v1, v0, Li1/n;->E:Landroid/util/SparseIntArray;

    const/16 v4, 0x15

    const/16 v6, 0x2a

    invoke-virtual {v1, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 56
    iget-object v1, v0, Li1/n;->E:Landroid/util/SparseIntArray;

    const/16 v4, 0x30

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 57
    iget-object v1, v0, Li1/n;->E:Landroid/util/SparseIntArray;

    const/16 v2, 0x17

    const/16 v4, 0x31

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 58
    new-instance v1, Li1/n$j;

    invoke-direct {v1, v0}, Li1/n$j;-><init>(Li1/n;)V

    iput-object v1, v0, Li1/s;->a:Li1/e;

    .line 59
    invoke-virtual {v1}, Li1/e;->h()V

    .line 60
    sget-object v1, Lu0/c;->O:Lo1/z;

    invoke-virtual {v1, v0}, Lo1/z;->a(Lo1/p;)V

    const/4 v1, 0x5

    const/4 v2, 0x1

    .line 61
    invoke-static {v1, v2}, Lcom/syu/jni/ToolsJni;->setInputForGpio(II)I

    const/4 v1, 0x6

    .line 62
    invoke-static {v1, v2}, Lcom/syu/jni/ToolsJni;->setInputForGpio(II)I

    .line 63
    sget-object v1, Lu0/c;->z:Lo1/y;

    const/4 v4, 0x0

    invoke-virtual {v1, v9, v4}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 64
    sget-object v1, Lu0/c;->B:Lo1/y;

    invoke-virtual {v1, v9, v4}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 65
    sget-object v1, Lu0/c;->f:Lo1/y;

    invoke-virtual {v1, v9, v4}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 66
    sget-object v1, Lu0/c;->m:Lo1/y;

    invoke-virtual {v1, v9, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 67
    sget-object v6, Lu0/c;->I:Lo1/y;

    invoke-virtual {v6, v11, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 68
    sget-object v6, Lo1/h;->b:Lo1/y;

    invoke-virtual {v6, v10, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 69
    sget-object v6, Lu0/c;->R:Lo1/z;

    invoke-virtual {v6, v12}, Lo1/z;->a(Lo1/p;)V

    .line 70
    sget-object v6, Lu0/c;->j:Lo1/y;

    invoke-virtual {v6, v14, v4}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 71
    invoke-virtual {v1, v13, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    const-string v1, "persist.fyt.track_angle_max"

    .line 72
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    mul-int/2addr v1, v5

    iput v1, v0, Li1/n;->P:I

    return-void

    :array_0
    .array-data 4
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
    .end array-data
.end method


# virtual methods
.method public d(Ljava/lang/Object;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    check-cast p1, Le/e$a;

    iput-object p1, p0, Li1/n;->l:Le/e$a;

    .line 2
    iget v0, p1, Le/e$a;->b:I

    mul-int/lit16 v0, v0, 0x1000

    div-int/lit16 v0, v0, 0x320

    .line 3
    iget v1, p1, Le/e$a;->c:I

    mul-int/lit16 v1, v1, 0x1000

    div-int/lit16 v1, v1, 0x1e0

    .line 4
    iget p1, p1, Le/e$a;->a:I

    const/4 v2, 0x6

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x5

    if-nez p1, :cond_1

    new-array p1, v6, [I

    aput v9, p1, v7

    aput v9, p1, v8

    aput v8, p1, v5

    shr-int/lit8 v5, v0, 0x8

    and-int/lit16 v5, v5, 0xff

    aput v5, p1, v4

    and-int/lit16 v0, v0, 0xff

    aput v0, p1, v3

    shr-int/lit8 v0, v1, 0x8

    and-int/lit16 v0, v0, 0xff

    aput v0, p1, v9

    and-int/lit16 v0, v1, 0xff

    aput v0, p1, v2

    .line 5
    invoke-virtual {p0, p1}, Li1/n;->y([I)V

    goto :goto_0

    :cond_1
    if-ne p1, v8, :cond_2

    new-array p1, v6, [I

    aput v9, p1, v7

    aput v9, p1, v8

    aput v7, p1, v5

    shr-int/lit8 v5, v0, 0x8

    and-int/lit16 v5, v5, 0xff

    aput v5, p1, v4

    and-int/lit16 v0, v0, 0xff

    aput v0, p1, v3

    shr-int/lit8 v0, v1, 0x8

    and-int/lit16 v0, v0, 0xff

    aput v0, p1, v9

    and-int/lit16 v0, v1, 0xff

    aput v0, p1, v2

    .line 6
    invoke-virtual {p0, p1}, Li1/n;->y([I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public e(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Li1/n;->E:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    if-eq p1, v1, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x9

    aput v2, v0, v1

    const/4 v1, 0x1

    aput v1, v0, v1

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 2
    invoke-virtual {p0, v0}, Li1/n;->y([I)V

    :cond_0
    return-void
.end method

.method public l([I)V
    .locals 6

    const/4 v0, 0x0

    .line 1
    aget v1, p1, v0

    const/16 v2, 0x92

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    const/16 v0, 0x98

    if-eq v1, v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-static {p1, v3}, Lo1/s0;->h([II)Z

    move-result v0

    if-eqz v0, :cond_7

    aget p1, p1, v3

    goto :goto_1

    .line 3
    :cond_1
    iget-object v1, p0, Li1/n;->D:Landroid/os/Handler;

    iget-object v2, p0, Li1/n;->G:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    sget v1, Lu0/b;->a0:I

    if-ne v1, v3, :cond_2

    sget v1, Lu0/b;->f:I

    if-ne v1, v3, :cond_2

    .line 5
    iget-object v1, p0, Li1/n;->D:Landroid/os/Handler;

    iget-object v2, p0, Li1/n;->G:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1770

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    const/4 v1, 0x2

    .line 6
    invoke-static {p1, v1}, Lo1/s0;->h([II)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 7
    aget v2, p1, v1

    if-eqz v2, :cond_6

    .line 8
    aget v2, p1, v3

    and-int/2addr v2, v3

    .line 9
    aget v4, p1, v3

    shr-int/2addr v4, v3

    and-int/2addr v4, v3

    .line 10
    aget p1, p1, v3

    shr-int/2addr p1, v1

    and-int/2addr p1, v3

    if-nez p1, :cond_3

    move p1, v3

    goto :goto_0

    :cond_3
    move p1, v0

    :goto_0
    if-eqz p1, :cond_5

    if-eqz p1, :cond_4

    if-ne v2, v3, :cond_4

    if-ne v4, v3, :cond_4

    move v0, v3

    :cond_4
    move p1, v0

    .line 11
    :cond_5
    sget-object v0, Le1/h;->Q:Le1/h;

    invoke-virtual {v0, p1}, Le1/h;->L(Z)V

    goto :goto_1

    .line 12
    :cond_6
    sget-object p1, Le1/h;->Q:Le1/h;

    invoke-virtual {p1, v3}, Le1/h;->L(Z)V

    :cond_7
    :goto_1
    return-void
.end method

.method public w()V
    .locals 11

    const/16 v0, 0xa

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x3

    aput v2, v0, v1

    const/4 v3, 0x1

    const/16 v4, 0x8

    aput v4, v0, v3

    .line 1
    iget v5, p0, Li1/n;->m:I

    const/4 v6, 0x2

    aput v5, v0, v6

    iget v5, p0, Li1/n;->n:I

    aput v5, v0, v2

    iget v2, p0, Li1/n;->o:I

    const/4 v5, 0x4

    aput v2, v0, v5

    iget v2, p0, Li1/n;->p:I

    const/4 v5, 0x5

    aput v2, v0, v5

    iget v2, p0, Li1/n;->q:I

    const/4 v5, 0x6

    aput v2, v0, v5

    iget v2, p0, Li1/n;->r:I

    const/4 v5, 0x7

    aput v2, v0, v5

    iget v2, p0, Li1/n;->t:I

    aput v2, v0, v4

    iget v2, p0, Li1/n;->u:I

    const/16 v5, 0x9

    aput v2, v0, v5

    invoke-virtual {p0, v0}, Li1/n;->y([I)V

    .line 2
    iget-wide v7, p0, Li1/n;->Q:J

    const-wide/16 v9, 0x5

    rem-long/2addr v7, v9

    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Li1/n;->s:[I

    array-length v0, v0

    add-int/2addr v0, v6

    new-array v0, v0, [I

    const/16 v2, 0x68

    .line 4
    aput v2, v0, v1

    .line 5
    aput v4, v0, v3

    .line 6
    :goto_0
    iget-object v2, p0, Li1/n;->s:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    add-int/lit8 v3, v1, 0x2

    .line 7
    aget v2, v2, v1

    aput v2, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0, v0}, Li1/n;->y([I)V

    .line 9
    :cond_1
    iget-wide v0, p0, Li1/n;->Q:J

    const-wide/16 v2, 0x32

    rem-long/2addr v0, v2

    cmp-long v0, v0, v9

    if-nez v0, :cond_2

    .line 10
    invoke-virtual {p0}, Li1/n;->x()V

    .line 11
    iget-wide v0, p0, Li1/n;->Q:J

    cmp-long v0, v0, v9

    if-eqz v0, :cond_2

    .line 12
    iput-wide v9, p0, Li1/n;->Q:J

    .line 13
    :cond_2
    iget-wide v0, p0, Li1/n;->Q:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Li1/n;->Q:J

    return-void
.end method

.method public x()V
    .locals 17

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit16 v2, v2, -0x7d0

    const/4 v3, 0x2

    .line 3
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v1

    const/4 v5, 0x5

    .line 4
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 5
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v7

    invoke-static {v7}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v8, 0xb

    .line 6
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    goto :goto_0

    :cond_0
    const/16 v8, 0xa

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/2addr v8, v1

    :goto_0
    const/16 v9, 0xc

    .line 7
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/16 v10, 0xd

    .line 8
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 9
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x6

    new-array v12, v11, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v15, 0x3

    aput-object v13, v12, v15

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v16, 0x4

    aput-object v13, v12, v16

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v5

    const-string v13, "%d-%d-%d %d:%d:%d"

    invoke-static {v13, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " is24: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v12, "Device"

    invoke-static {v12, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v10, 0x9

    new-array v10, v10, [I

    aput v16, v10, v14

    const/4 v12, 0x7

    aput v12, v10, v1

    xor-int/2addr v1, v7

    aput v1, v10, v3

    aput v2, v10, v15

    aput v4, v10, v16

    aput v6, v10, v5

    aput v8, v10, v11

    aput v9, v10, v12

    const/16 v1, 0x8

    aput v0, v10, v1

    move-object/from16 v0, p0

    .line 10
    invoke-virtual {v0, v10}, Li1/n;->y([I)V

    return-void
.end method

.method public varargs y([I)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    .line 1
    :cond_0
    array-length v1, p1

    :goto_0
    if-nez v1, :cond_1

    return-void

    :cond_1
    add-int/lit8 v2, v1, 0x2

    .line 2
    new-array v2, v2, [I

    const/16 v3, 0x2e

    .line 3
    aput v3, v2, v0

    move v3, v0

    :goto_1
    if-ge v0, v1, :cond_2

    .line 4
    aget v4, p1, v0

    add-int/2addr v3, v4

    add-int/lit8 v4, v0, 0x1

    .line 5
    aget v0, p1, v0

    aput v0, v2, v4

    move v0, v4

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    xor-int/lit16 p1, v3, 0xff

    .line 6
    aput p1, v2, v1

    .line 7
    iget-object p1, p0, Li1/a;->h:Li1/b0;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v2}, Lb/c$b;->f([I)V

    :cond_3
    return-void
.end method
