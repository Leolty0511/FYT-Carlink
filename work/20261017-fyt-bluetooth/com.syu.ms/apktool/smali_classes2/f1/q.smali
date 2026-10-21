.class public abstract Lf1/q;
.super Le1/l;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf1/q$b;,
        Lf1/q$c;
    }
.end annotation


# static fields
.field public static L:I = 0x0

.field public static M:I = 0x1

.field public static N:I = 0x2

.field public static O:I = 0x3


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:Z

.field public E:Z

.field public F:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public G:I

.field public H:I

.field public volatile I:Z

.field public J:Lf1/q$b;

.field public final K:Ljava/lang/Runnable;

.field public final a:Z

.field public b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lf1/q$c;",
            ">;"
        }
    .end annotation
.end field

.field public c:I

.field public final d:I

.field public e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lf1/s$a;",
            ">;"
        }
    .end annotation
.end field

.field public f:Landroid/util/SparseIntArray;

.field public g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:Z

.field public o:I

.field public p:I

.field public volatile q:Z

.field public r:Z

.field public s:Landroid/os/Handler;

.field public t:Z

.field public u:Lp1/a;

.field public v:Z

.field public w:I

.field public x:Z

.field public y:I

.field public z:J


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(IILandroid/os/Handler;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Le1/l;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lf1/q;->a:Z

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lf1/q;->b:Landroid/util/SparseArray;

    const/16 v2, 0x3c

    .line 4
    iput v2, p0, Lf1/q;->c:I

    const/16 v2, 0xc8

    .line 5
    iput v2, p0, Lf1/q;->d:I

    .line 6
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lf1/q;->e:Landroid/util/SparseArray;

    .line 7
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Lf1/q;->f:Landroid/util/SparseIntArray;

    .line 8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lf1/q;->g:Ljava/util/ArrayList;

    const/4 v2, 0x0

    .line 9
    iput v2, p0, Lf1/q;->i:I

    iput v2, p0, Lf1/q;->j:I

    const/4 v3, -0x1

    .line 10
    iput v3, p0, Lf1/q;->k:I

    iput v3, p0, Lf1/q;->l:I

    .line 11
    iput v2, p0, Lf1/q;->m:I

    .line 12
    iput-boolean v2, p0, Lf1/q;->n:Z

    const/16 v4, 0x7d0

    .line 13
    iput v4, p0, Lf1/q;->o:I

    .line 14
    iput v3, p0, Lf1/q;->p:I

    .line 15
    iput-boolean v2, p0, Lf1/q;->q:Z

    .line 16
    iput-boolean v2, p0, Lf1/q;->r:Z

    .line 17
    iput-boolean v2, p0, Lf1/q;->t:Z

    .line 18
    iput-object v1, p0, Lf1/q;->u:Lp1/a;

    .line 19
    iput-boolean v0, p0, Lf1/q;->v:Z

    .line 20
    iput-boolean v2, p0, Lf1/q;->x:Z

    .line 21
    iput v2, p0, Lf1/q;->y:I

    const-wide v3, 0x7fffffffffffffffL

    .line 22
    iput-wide v3, p0, Lf1/q;->z:J

    .line 23
    iput v2, p0, Lf1/q;->A:I

    .line 24
    iput v2, p0, Lf1/q;->B:I

    const/4 v3, 0x3

    .line 25
    iput v3, p0, Lf1/q;->C:I

    .line 26
    iput-boolean v2, p0, Lf1/q;->D:Z

    .line 27
    iput-boolean v2, p0, Lf1/q;->E:Z

    .line 28
    iput-object v1, p0, Lf1/q;->F:Landroid/util/SparseArray;

    .line 29
    iput v2, p0, Lf1/q;->G:I

    .line 30
    iput v0, p0, Lf1/q;->H:I

    .line 31
    iput-boolean v2, p0, Lf1/q;->I:Z

    .line 32
    iput-object v1, p0, Lf1/q;->J:Lf1/q$b;

    .line 33
    new-instance v1, Lf1/q$a;

    invoke-direct {v1, p0}, Lf1/q$a;-><init>(Lf1/q;)V

    iput-object v1, p0, Lf1/q;->K:Ljava/lang/Runnable;

    .line 34
    invoke-virtual {p0}, Lf1/q;->N()V

    .line 35
    invoke-virtual {p0}, Lf1/q;->o()V

    .line 36
    iput p1, p0, Lf1/q;->G:I

    .line 37
    iput-object p3, p0, Lf1/q;->s:Landroid/os/Handler;

    .line 38
    iput p2, p0, Lf1/q;->h:I

    .line 39
    iput-boolean v0, p0, Lf1/q;->t:Z

    return-void
.end method

.method public constructor <init>(IILp1/a;ILandroid/os/Handler;)V
    .locals 1

    .line 40
    invoke-direct {p0, p1, p2, p5}, Lf1/q;-><init>(IILandroid/os/Handler;)V

    .line 41
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lf1/q;->b:Landroid/util/SparseArray;

    const/4 p1, -0x1

    .line 42
    invoke-virtual {p0, p1, p1, p1}, Lf1/q;->l(III)V

    const/4 p1, 0x0

    const/16 p2, 0x2d0

    const/16 p5, 0x1e0

    .line 43
    invoke-virtual {p0, p1, p2, p5}, Lf1/q;->l(III)V

    const/4 p5, 0x1

    const/16 v0, 0x240

    .line 44
    invoke-virtual {p0, p5, p2, v0}, Lf1/q;->l(III)V

    const/4 p5, 0x2

    const/16 v0, 0x500

    .line 45
    invoke-virtual {p0, p5, v0, p2}, Lf1/q;->l(III)V

    const/4 p5, 0x3

    .line 46
    invoke-virtual {p0, p5, v0, p2}, Lf1/q;->l(III)V

    const/4 p2, 0x6

    const/16 p5, 0x780

    const/16 v0, 0x438

    .line 47
    invoke-virtual {p0, p2, p5, v0}, Lf1/q;->l(III)V

    const/4 p2, 0x7

    .line 48
    invoke-virtual {p0, p2, p5, v0}, Lf1/q;->l(III)V

    .line 49
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lf1/q;->F:Landroid/util/SparseArray;

    .line 50
    sget p5, Lf1/q;->L:I

    const-string v0, "a"

    invoke-virtual {p2, p5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51
    iget-object p2, p0, Lf1/q;->F:Landroid/util/SparseArray;

    sget p5, Lf1/q;->M:I

    const-string v0, "b"

    invoke-virtual {p2, p5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 52
    iget-object p2, p0, Lf1/q;->F:Landroid/util/SparseArray;

    sget p5, Lf1/q;->N:I

    const-string v0, "c"

    invoke-virtual {p2, p5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 53
    iget-object p2, p0, Lf1/q;->F:Landroid/util/SparseArray;

    sget p5, Lf1/q;->O:I

    const-string v0, "d"

    invoke-virtual {p2, p5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 54
    iput-boolean p1, p0, Lf1/q;->t:Z

    .line 55
    iput-object p3, p0, Lf1/q;->u:Lp1/a;

    .line 56
    iput p4, p0, Lf1/q;->w:I

    return-void
.end method


# virtual methods
.method public A(I)I
    .locals 1

    .line 1
    iget v0, p0, Lf1/q;->w:I

    invoke-virtual {p0, v0, p1}, Lf1/q;->B(II)I

    move-result p1

    return p1
.end method

.method public B(II)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Lf1/q;->n()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lf1/q;->u:Lp1/a;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v2, p0, Lf1/q;->u:Lp1/a;

    const/4 v3, -0x1

    if-eqz v2, :cond_4

    iget-boolean v4, p0, Lf1/q;->v:Z

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    new-array v4, v1, [I

    const/4 v5, 0x0

    aput p2, v4, v5

    .line 4
    invoke-interface {v2, v1, p1, v5, v4}, Lp1/a;->e(IIZ[I)[I

    move-result-object p1

    if-eqz p1, :cond_3

    .line 5
    array-length p2, p1

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    aget p1, p1, v5

    and-int/lit16 v3, p1, 0xff

    :cond_3
    :goto_0
    monitor-exit v0

    return v3

    .line 6
    :cond_4
    :goto_1
    monitor-exit v0

    return v3

    :catchall_0
    move-exception p1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public C(ILy/b;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public D()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lf1/q;->J(Z)V

    return-void
.end method

.method public E()I
    .locals 1

    .line 1
    iget v0, p0, Lf1/q;->H:I

    return v0
.end method

.method public F(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf1/q;->F:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public G(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf1/q;->f:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public H(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lf1/q;->r:Z

    if-eq v0, p1, :cond_1

    .line 2
    iput-boolean p1, p0, Lf1/q;->r:Z

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "syu.imageic.inited_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf1/q;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    invoke-static {v0, p1}, Lo1/s0;->F(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public I(Z)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lf1/q;->D:Z

    const-string v1, "    readyToReversing: "

    const-string v2, "ImageDevice2"

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setReadyToReversing:  last readyToReversing  : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lf1/q;->x:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " isSupportReversing:  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lf1/q;->D:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :goto_0
    iget-boolean v0, p0, Lf1/q;->D:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lf1/q;->x:Z

    if-eq v0, p1, :cond_7

    .line 5
    invoke-virtual {p0}, Lf1/q;->R()V

    .line 6
    iput-boolean p1, p0, Lf1/q;->x:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string v3, "persist.lesc.video.ignore"

    .line 7
    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    move v3, v0

    .line 8
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/32 v6, 0xc350

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    if-eqz v3, :cond_2

    move v3, v0

    goto :goto_2

    :cond_2
    const/16 v3, 0x7d0

    goto :goto_2

    :cond_3
    const/16 v3, 0xbb8

    :goto_2
    iput v3, p0, Lf1/q;->o:I

    if-nez p1, :cond_6

    .line 9
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
    invoke-virtual {p0}, Lf1/q;->a()V

    .line 12
    iget v3, p0, Lf1/q;->y:I

    if-nez v3, :cond_4

    iget v3, p0, Lf1/q;->j:I

    if-eqz v3, :cond_4

    .line 13
    iput v3, p0, Lf1/q;->y:I

    .line 14
    :cond_4
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

    .line 15
    iget p1, p0, Lf1/q;->y:I

    if-eqz p1, :cond_7

    const-wide/16 v1, 0x96

    .line 16
    invoke-static {v1, v2}, Lo1/s0;->C(J)V

    .line 17
    iget-object p1, p0, Lf1/q;->g:Ljava/util/ArrayList;

    iget v1, p0, Lf1/q;->y:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 18
    iget p1, p0, Lf1/q;->y:I

    invoke-virtual {p0, p1}, Lf1/q;->c(I)V

    .line 19
    :cond_5
    invoke-virtual {p0}, Lf1/q;->Q()V

    .line 20
    iput v0, p0, Lf1/q;->y:I

    const-wide/32 v0, 0x7fffffff

    .line 21
    iput-wide v0, p0, Lf1/q;->z:J

    goto :goto_3

    .line 22
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lf1/q;->z:J

    .line 23
    invoke-virtual {p0}, Lf1/q;->S()V

    :cond_7
    :goto_3
    return-void
.end method

.method public J(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ========>>  setReseted()  isI2cInvalid() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lf1/q;->s()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "  isReseted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " chipid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf1/q;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageDevice2"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lf1/q;->i:I

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lf1/q;->k:I

    .line 4
    iget-boolean p1, p0, Lf1/q;->q:Z

    .line 5
    invoke-virtual {p0}, Lf1/q;->p()V

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0}, Lf1/q;->Q()V

    :cond_0
    return-void
.end method

.method public K(I)V
    .locals 0

    .line 1
    iput p1, p0, Lf1/q;->H:I

    return-void
.end method

.method public L(Lf1/q$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf1/q;->J:Lf1/q$b;

    return-void
.end method

.method public abstract M()Z
.end method

.method public N()V
    .locals 0

    return-void
.end method

.method public O(I)V
    .locals 2

    .line 1
    iget v0, p0, Lf1/q;->j:I

    if-eqz v0, :cond_0

    iget v1, p0, Lf1/q;->l:I

    if-eq v1, p1, :cond_0

    .line 2
    iput p1, p0, Lf1/q;->l:I

    .line 3
    invoke-virtual {p0, p1, v0}, Lf1/q;->y(II)[I

    move-result-object p1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   ==========>> signalNtscPal   chipId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf1/q;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Signal"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x46

    .line 5
    invoke-static {v0, p1}, Lu0/d;->I3(I[I)V

    :cond_0
    return-void
.end method

.method public P(I)V
    .locals 2

    .line 1
    iget v0, p0, Lf1/q;->j:I

    if-eqz v0, :cond_0

    iget v1, p0, Lf1/q;->m:I

    if-eq v1, p1, :cond_0

    .line 2
    iput p1, p0, Lf1/q;->m:I

    .line 3
    invoke-virtual {p0, p1, v0}, Lf1/q;->y(II)[I

    move-result-object p1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   ==========>> signalOn   chipId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf1/q;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Signal"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x45

    .line 5
    invoke-static {v0, p1}, Lu0/d;->I3(I[I)V

    :cond_0
    return-void
.end method

.method public Q()V
    .locals 3

    .line 1
    iget-object v0, p0, Lf1/q;->s:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lf1/q;->q:Z

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   ==========>>>    startCheck    device.startCheck()  chip id : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf1/q;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageDevice2"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lf1/q;->s:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lf1/q;->s:Landroid/os/Handler;

    iget v1, p0, Lf1/q;->c:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public R()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf1/q;->s:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lf1/q;->q:Z

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   ==========>>>    stopCheck    device.stopCheck()  chip id : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf1/q;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageDevice2"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lf1/q;->s:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public S()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   ==========>>>syncReservingk()    loaded : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lf1/q;->r:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " readyToReversing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lf1/q;->x:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " chip id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf1/q;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf1/q;->G:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageDevice2"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean v0, p0, Lf1/q;->D:Z

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-boolean v0, p0, Lf1/q;->r:Z

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lf1/q;->p()V

    .line 5
    :cond_1
    iget-boolean v0, p0, Lf1/q;->x:Z

    if-nez v0, :cond_2

    return-void

    .line 6
    :cond_2
    invoke-virtual {p0}, Lf1/q;->m()Z

    move-result v0

    if-nez v0, :cond_3

    .line 7
    iget v0, p0, Lf1/q;->i:I

    iput v0, p0, Lf1/q;->y:I

    const-string v0, "  closeVideo 000"

    .line 8
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {p0}, Lf1/q;->R()V

    .line 10
    invoke-virtual {p0}, Lf1/q;->a()V

    .line 11
    :cond_3
    invoke-virtual {p0}, Lf1/q;->E()I

    move-result v0

    invoke-virtual {p0, v0}, Lf1/q;->c(I)V

    .line 12
    invoke-virtual {p0}, Lf1/q;->Q()V

    return-void
.end method

.method public T(II)V
    .locals 1

    .line 1
    iput p1, p0, Lf1/q;->j:I

    .line 2
    invoke-virtual {p0, p1, p2}, Lf1/q;->y(II)[I

    move-result-object p1

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "   ==========>> videoChannel   chipId : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lf1/q;->h:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Signal"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x44

    .line 4
    invoke-static {p2, p1}, Lu0/d;->I3(I[I)V

    return-void
.end method

.method public U(Ly/b;)V
    .locals 0

    return-void
.end method

.method public V(II)I
    .locals 1

    .line 1
    iget v0, p0, Lf1/q;->w:I

    invoke-virtual {p0, v0, p1, p2}, Lf1/q;->W(III)I

    move-result p1

    return p1
.end method

.method public W(III)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lf1/q;->n()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lf1/q;->u:Lp1/a;

    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lf1/q;->v:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-array v2, v1, [I

    const/4 v3, 0x0

    aput p2, v2, v3

    new-array p2, v1, [I

    aput p3, p2, v3

    invoke-interface {v0, p1, v2, p2}, Lp1/a;->d(I[I[I)I

    move-result p1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    :goto_1
    return p1
.end method

.method public a()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lf1/q;->n()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lf1/o;->g()Lf1/o;

    move-result-object v0

    iget v2, p0, Lf1/q;->h:I

    invoke-virtual {v0, v2, v1}, Lf1/o;->E(II)V

    .line 3
    iput v1, p0, Lf1/q;->i:I

    return-void

    .line 4
    :cond_0
    iput-boolean v1, p0, Lf1/q;->n:Z

    .line 5
    invoke-virtual {p0}, Lf1/q;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "sys.fyt.cvbs.mirror"

    const-string v2, "0"

    .line 6
    invoke-static {v0, v2}, Lo1/s0;->F(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "========================>>002 closeVideo videoId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lf1/q;->i:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " chipid : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lf1/q;->h:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImageDevice2"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iput v1, p0, Lf1/q;->i:I

    .line 9
    invoke-static {}, Lf1/o;->g()Lf1/o;

    move-result-object v0

    iget v2, p0, Lf1/q;->h:I

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Lf1/o;->D(II)V

    .line 10
    invoke-static {}, Lf1/o;->g()Lf1/o;

    move-result-object v0

    iget v2, p0, Lf1/q;->h:I

    invoke-virtual {v0, v2, v1}, Lf1/o;->E(II)V

    .line 11
    invoke-static {}, Lf1/o;->g()Lf1/o;

    move-result-object v0

    iget v2, p0, Lf1/q;->h:I

    iget v3, p0, Lf1/q;->i:I

    invoke-virtual {v0, v2, v3, v1}, Lf1/o;->G(III)V

    return-void
.end method

.method public b()V
    .locals 13

    .line 1
    invoke-super {p0}, Le1/l;->b()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "========================>>  in() 01 loaded : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lf1/q;->r:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ignoreI2c: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lf1/q;->t:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " chipid : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lf1/q;->h:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ImageDevice2"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-boolean v0, p0, Lf1/q;->t:Z

    if-nez v0, :cond_3

    .line 4
    :goto_0
    iget-object v0, p0, Lf1/q;->u:Lp1/a;

    invoke-interface {v0}, Lp1/a;->a()I

    move-result v0

    if-gez v0, :cond_0

    const-wide/16 v4, 0x50

    .line 5
    invoke-static {v4, v5}, La/i;->a0(J)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lf1/q;->u:Lp1/a;

    invoke-interface {v0}, Lp1/a;->c()I

    move-result v0

    if-gez v0, :cond_1

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "========================>>  in()   i2c.open(i2cDev) : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lf1/q;->u:Lp1/a;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " open failed\uff01\uff01\uff01 chipid : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lf1/q;->h:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {}, La/f;->k()Ln1/c;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "I2C OPEN ERROR!!!"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    const/16 v9, 0x32

    const/4 v10, -0x1

    const/16 v11, 0x3c

    const v12, 0x7fffff00

    const-string v6, "i2c error"

    invoke-virtual/range {v4 .. v12}, Ln1/c;->l(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Paint$Align;IIII)V

    .line 9
    :cond_1
    iget-object v0, p0, Lf1/q;->u:Lp1/a;

    invoke-interface {v0}, Lp1/a;->c()I

    move-result v0

    if-gez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lf1/q;->v:Z

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "========================>>  in()  END i2cInvalid : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lf1/q;->v:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lf1/q;->h:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "========================>>  in() 02 loaded : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lf1/q;->r:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lf1/q;->t:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf1/q;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-boolean v0, p0, Lf1/q;->r:Z

    if-eqz v0, :cond_4

    return-void

    .line 13
    :cond_4
    iget-object v0, p0, Lf1/q;->s:Landroid/os/Handler;

    if-eqz v0, :cond_5

    .line 14
    iget-object v1, p0, Lf1/q;->K:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 15
    iget-object v0, p0, Lf1/q;->s:Landroid/os/Handler;

    iget-object v1, p0, Lf1/q;->K:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 16
    :cond_5
    iget-object v0, p0, Lf1/q;->K:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_2
    return-void
.end method

.method public declared-synchronized c(I)V
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_0

    .line 1
    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Le1/l;->c(I)V

    .line 3
    iget-boolean v0, p0, Lf1/q;->r:Z

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==============>>  openVideo  init chipid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lf1/q;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-virtual {p0}, Lf1/q;->p()V

    .line 6
    :cond_1
    sget v0, Lu0/b;->r:I

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lf1/q;->v(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "1"

    goto :goto_0

    :cond_2
    const-string v0, "0"

    :goto_0
    const-string v1, "sys.fyt.cvbs.mirror"

    .line 7
    invoke-static {v1, v0}, Lo1/s0;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x14

    .line 8
    invoke-static {v0, v1}, La/i;->a0(J)V

    const-string v0, "ImageDevice2"

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   ==========>>>   open videoChannel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " chipid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lf1/q;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 10
    invoke-virtual {p0, p1, v0}, Lf1/q;->T(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public d()V
    .locals 4

    .line 1
    iget-object v0, p0, Lf1/q;->s:Landroid/os/Handler;

    iget-object v1, p0, Lf1/q;->K:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "========================>>  out() 01 loaded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lf1/q;->r:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " chipid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lf1/q;->h:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImageDevice2"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-boolean v0, p0, Lf1/q;->r:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lf1/q;->H(Z)V

    .line 5
    iput v0, p0, Lf1/q;->i:I

    .line 6
    iget-boolean v0, p0, Lf1/q;->t:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lf1/q;->u:Lp1/a;

    invoke-interface {v0}, Lp1/a;->close()V

    :cond_1
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lf1/q;->v:Z

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "========================>>  out() 02 loaded: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lf1/q;->r:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf1/q;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-super {p0}, Le1/l;->d()V

    return-void
.end method

.method public j(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf1/q;->g:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public abstract k()I
.end method

.method public l(III)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf1/q;->b:Landroid/util/SparseArray;

    new-instance v1, Lf1/q$c;

    invoke-direct {v1, p2, p3}, Lf1/q$c;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public m()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lf1/q;->E()I

    move-result v0

    iget v1, p0, Lf1/q;->i:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public n()Z
    .locals 2

    const-string v0, "sys.fyt.video.debug"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public o()V
    .locals 0

    return-void
.end method

.method public abstract p()V
.end method

.method public q([I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public r()Lp1/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lf1/q;->u:Lp1/a;

    return-object v0
.end method

.method public run()V
    .locals 15

    .line 1
    iget-object v0, p0, Lf1/q;->s:Landroid/os/Handler;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lf1/q;->q:Z

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Lf1/q;->s:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    invoke-virtual {p0}, Lf1/q;->k()I

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

    const-string v5, " chipid : "

    const-string v6, "   recersingBeforeChannel : "

    const-string v7, "    readyToReversing: "

    const-wide v8, 0x7fffffffffffffffL

    const-string v10, "ImageDevice2"

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lf1/q;->n:Z

    if-eq v4, v3, :cond_3

    .line 5
    :cond_2
    iput-boolean v3, p0, Lf1/q;->n:Z

    .line 6
    iget-boolean v4, p0, Lf1/q;->D:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lf1/q;->x:Z

    if-eqz v4, :cond_3

    iget-wide v11, p0, Lf1/q;->z:J

    cmp-long v4, v11, v8

    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  001  ==========>>>    reversing    :   HandlerMain.backcar(1);  chipid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lf1/q;->h:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {v2}, Lu0/d;->C(I)V

    .line 9
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v3

    sget-object v4, Lutil/log/LogType;->f:Lutil/log/LogType;

    const-string v11, "ENTER REVERSING  ===  HAS SIGNAL"

    invoke-virtual {v3, v4, v11}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ENTER REVERSING HAS SIGNAL setReadyToReversing:  last readyToReversing  : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lf1/q;->x:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lf1/q;->x:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lf1/q;->y:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lf1/q;->h:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iput-wide v8, p0, Lf1/q;->z:J

    .line 12
    :cond_3
    iget-boolean v3, p0, Lf1/q;->D:Z

    const/4 v4, -0x1

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lf1/q;->x:Z

    if-eqz v3, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    iget-wide v13, p0, Lf1/q;->z:J

    sub-long/2addr v11, v13

    iget v3, p0, Lf1/q;->o:I

    int-to-long v13, v3

    cmp-long v3, v11, v13

    if-ltz v3, :cond_4

    .line 13
    iput v4, p0, Lf1/q;->k:I

    const-string v3, "  imagFormat 002"

    .line 14
    invoke-static {v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-virtual {p0}, Lf1/q;->p()V

    .line 16
    invoke-virtual {p0}, Lf1/q;->Q()V

    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "   ==========>>>002    reversing    :   HandlerMain.backcar(1);  chipid : "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, p0, Lf1/q;->h:I

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-static {v2}, Lu0/d;->C(I)V

    .line 19
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v3

    sget-object v11, Lutil/log/LogType;->f:Lutil/log/LogType;

    const-string v12, "ENTER REVERSING  ===  CHECK TIMEOUT"

    invoke-virtual {v3, v11, v12}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ENTER REVERSING CHECK TIMEOUT setReadyToReversing:  last readyToReversing  : "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v11, p0, Lf1/q;->x:Z

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lf1/q;->x:Z

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lf1/q;->y:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lf1/q;->h:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    iput-wide v8, p0, Lf1/q;->z:J

    .line 22
    :cond_4
    invoke-static {}, Lf1/o;->g()Lf1/o;

    move-result-object v3

    iget v5, p0, Lf1/q;->h:I

    iget-boolean v6, p0, Lf1/q;->q:Z

    if-eqz v6, :cond_5

    iget v4, p0, Lf1/q;->k:I

    :cond_5
    invoke-virtual {v3, v5, v4}, Lf1/o;->D(II)V

    .line 23
    invoke-static {}, Lf1/o;->g()Lf1/o;

    move-result-object v3

    iget v4, p0, Lf1/q;->h:I

    iget-boolean v5, p0, Lf1/q;->q:Z

    if-eqz v5, :cond_7

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    move v1, v2

    :cond_7
    :goto_1
    invoke-virtual {v3, v4, v1}, Lf1/o;->E(II)V

    .line 24
    iget-boolean v0, p0, Lf1/q;->q:Z

    if-eqz v0, :cond_8

    .line 25
    iget-object v0, p0, Lf1/q;->s:Landroid/os/Handler;

    iget v1, p0, Lf1/q;->c:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_8
    :goto_2
    return-void
.end method

.method public s()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf1/q;->t:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lf1/q;->v:Z

    :goto_0
    return v0
.end method

.method public t()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf1/q;->r:Z

    return v0
.end method

.method public u()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf1/q;->x:Z

    return v0
.end method

.method public v(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf1/q;->E()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public w(I)I
    .locals 4

    .line 1
    iget v0, p0, Lf1/q;->k:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_2

    .line 2
    iget v2, p0, Lf1/q;->p:I

    const/4 v3, 0x1

    if-ne p1, v2, :cond_1

    .line 3
    iget v2, p0, Lf1/q;->A:I

    add-int/2addr v2, v3

    iput v2, p0, Lf1/q;->A:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iput v1, p0, Lf1/q;->A:I

    goto :goto_1

    .line 5
    :cond_1
    iput v3, p0, Lf1/q;->A:I

    .line 6
    iput p1, p0, Lf1/q;->p:I

    :goto_0
    move p1, v0

    goto :goto_1

    .line 7
    :cond_2
    iput v1, p0, Lf1/q;->A:I

    :goto_1
    return p1
.end method

.method public x(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public y(II)[I
    .locals 3

    .line 1
    iget-object v0, p0, Lf1/q;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, 0x2

    .line 2
    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 3
    aput p1, v1, v2

    const/4 p1, 0x1

    .line 4
    aput p2, v1, p1

    if-lez v0, :cond_0

    .line 5
    iget-object p1, p0, Lf1/q;->g:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x2

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v2, p2, 0x1

    .line 6
    aput v0, v1, p2

    move p2, v2

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public z()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lf1/o;->g()Lf1/o;

    move-result-object v0

    iget v1, p0, Lf1/q;->h:I

    invoke-virtual {v0, v1}, Lf1/o;->h(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
