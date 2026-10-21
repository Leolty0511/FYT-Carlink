.class public Lcom/android/fmradio/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw0/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fmradio/b$f;,
        Lcom/android/fmradio/b$g;,
        Lcom/android/fmradio/b$e;,
        Lcom/android/fmradio/b$h;
    }
.end annotation


# static fields
.field public static T:I = 0xa

.field public static U:I = 0x12

.field public static V:I = 0x0

.field public static W:I = 0x64

.field public static X:I = 0x2f

.field public static Y:I = 0x0

.field public static Z:I = 0x64

.field public static a0:I = -0x1

.field public static b0:I = 0x0

.field public static c0:I = 0x1

.field public static d0:I = 0x2

.field public static e0:I = 0x5

.field public static f0:Lcom/android/fmradio/b;


# instance fields
.field public A:Z

.field public B:Z

.field public C:I

.field public D:Lcom/android/fmradio/RdsTextChars;

.field public E:Lcom/android/fmradio/b$f;

.field public F:Lcom/android/fmradio/b$g;

.field public G:Lcom/android/fmradio/b$g;

.field public H:Lcom/android/fmradio/b$g;

.field public I:Lcom/android/fmradio/b$e;

.field public J:Landroid/os/Handler;

.field public K:J

.field public L:Lcom/android/fmradio/FmNative;

.field public M:Lo1/h0;

.field public N:Z

.field public O:I

.field public final P:Ljava/lang/Runnable;

.field public final Q:Ljava/lang/Runnable;

.field public final R:Ljava/lang/Runnable;

.field public final S:Ljava/lang/Runnable;

.field public volatile a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:Z

.field public k:Z

.field public l:I

.field public m:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lh/a;",
            ">;"
        }
    .end annotation
.end field

.field public n:Landroid/util/SparseIntArray;

.field public o:I

.field public p:I

.field public q:Lcom/android/fmradio/a$a;

.field public r:Lcom/android/fmradio/a;

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Lcom/android/fmradio/b;->a0:I

    iput v0, p0, Lcom/android/fmradio/b;->a:I

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/android/fmradio/b;->b:I

    const/16 v1, 0x222e

    .line 4
    iput v1, p0, Lcom/android/fmradio/b;->c:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/fmradio/b;->d:I

    const/high16 v2, 0x10000

    .line 5
    iput v2, p0, Lcom/android/fmradio/b;->e:I

    const/4 v2, 0x2

    .line 6
    iput v2, p0, Lcom/android/fmradio/b;->f:I

    .line 7
    sget v2, Lcom/android/fmradio/b;->V:I

    iput v2, p0, Lcom/android/fmradio/b;->g:I

    .line 8
    sget v2, Lcom/android/fmradio/b;->Y:I

    iput v2, p0, Lcom/android/fmradio/b;->h:I

    .line 9
    iput v1, p0, Lcom/android/fmradio/b;->i:I

    .line 10
    iput-boolean v0, p0, Lcom/android/fmradio/b;->j:Z

    .line 11
    iput-boolean v1, p0, Lcom/android/fmradio/b;->k:Z

    .line 12
    iput v1, p0, Lcom/android/fmradio/b;->l:I

    .line 13
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/fmradio/b;->m:Landroid/util/SparseArray;

    .line 14
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Lcom/android/fmradio/b;->n:Landroid/util/SparseIntArray;

    .line 15
    iput v1, p0, Lcom/android/fmradio/b;->o:I

    .line 16
    iput v1, p0, Lcom/android/fmradio/b;->p:I

    .line 17
    new-instance v2, Lcom/android/fmradio/a$a;

    sget-object v3, Lcom/android/fmradio/a;->f:Lcom/android/fmradio/a;

    sget-object v4, Lcom/android/fmradio/a;->k:Lcom/android/fmradio/a;

    invoke-direct {v2, v3, v4}, Lcom/android/fmradio/a$a;-><init>(Lcom/android/fmradio/a;Lcom/android/fmradio/a;)V

    iput-object v2, p0, Lcom/android/fmradio/b;->q:Lcom/android/fmradio/a$a;

    .line 18
    new-instance v2, Lcom/android/fmradio/a;

    invoke-direct {v2, v1, v1, v1}, Lcom/android/fmradio/a;-><init>(III)V

    iput-object v2, p0, Lcom/android/fmradio/b;->r:Lcom/android/fmradio/a;

    .line 19
    iput-boolean v1, p0, Lcom/android/fmradio/b;->s:Z

    iput-boolean v1, p0, Lcom/android/fmradio/b;->t:Z

    iput-boolean v1, p0, Lcom/android/fmradio/b;->u:Z

    .line 20
    iput-boolean v0, p0, Lcom/android/fmradio/b;->v:Z

    iput-boolean v1, p0, Lcom/android/fmradio/b;->w:Z

    iput-boolean v1, p0, Lcom/android/fmradio/b;->x:Z

    iput-boolean v1, p0, Lcom/android/fmradio/b;->y:Z

    iput-boolean v1, p0, Lcom/android/fmradio/b;->z:Z

    iput-boolean v1, p0, Lcom/android/fmradio/b;->A:Z

    iput-boolean v1, p0, Lcom/android/fmradio/b;->B:Z

    .line 21
    iput v1, p0, Lcom/android/fmradio/b;->C:I

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/android/fmradio/b;->D:Lcom/android/fmradio/RdsTextChars;

    .line 23
    iput-object v0, p0, Lcom/android/fmradio/b;->E:Lcom/android/fmradio/b$f;

    .line 24
    iput-object v0, p0, Lcom/android/fmradio/b;->F:Lcom/android/fmradio/b$g;

    .line 25
    iput-object v0, p0, Lcom/android/fmradio/b;->G:Lcom/android/fmradio/b$g;

    .line 26
    iput-object v0, p0, Lcom/android/fmradio/b;->H:Lcom/android/fmradio/b$g;

    .line 27
    iput-object v0, p0, Lcom/android/fmradio/b;->I:Lcom/android/fmradio/b$e;

    .line 28
    iput-object v0, p0, Lcom/android/fmradio/b;->J:Landroid/os/Handler;

    const-wide/16 v5, 0x0

    .line 29
    iput-wide v5, p0, Lcom/android/fmradio/b;->K:J

    .line 30
    iput-object v0, p0, Lcom/android/fmradio/b;->L:Lcom/android/fmradio/FmNative;

    .line 31
    iput-object v0, p0, Lcom/android/fmradio/b;->M:Lo1/h0;

    .line 32
    iput-boolean v1, p0, Lcom/android/fmradio/b;->N:Z

    const/4 v0, 0x4

    .line 33
    iput v0, p0, Lcom/android/fmradio/b;->O:I

    .line 34
    new-instance v0, Lcom/android/fmradio/b$a;

    invoke-direct {v0, p0}, Lcom/android/fmradio/b$a;-><init>(Lcom/android/fmradio/b;)V

    iput-object v0, p0, Lcom/android/fmradio/b;->P:Ljava/lang/Runnable;

    .line 35
    new-instance v0, Lcom/android/fmradio/b$b;

    invoke-direct {v0, p0}, Lcom/android/fmradio/b$b;-><init>(Lcom/android/fmradio/b;)V

    iput-object v0, p0, Lcom/android/fmradio/b;->Q:Ljava/lang/Runnable;

    .line 36
    new-instance v0, Lcom/android/fmradio/b$c;

    invoke-direct {v0, p0}, Lcom/android/fmradio/b$c;-><init>(Lcom/android/fmradio/b;)V

    iput-object v0, p0, Lcom/android/fmradio/b;->R:Ljava/lang/Runnable;

    .line 37
    new-instance v0, Lcom/android/fmradio/b$d;

    invoke-direct {v0, p0}, Lcom/android/fmradio/b$d;-><init>(Lcom/android/fmradio/b;)V

    iput-object v0, p0, Lcom/android/fmradio/b;->S:Ljava/lang/Runnable;

    .line 38
    sget-object v0, Lbase/Configure$Property;->s:Lbase/Configure$Property;

    sget v2, Lcom/android/fmradio/b;->T:I

    invoke-virtual {v0, v2}, Lbase/Configure$Property;->d(I)I

    move-result v0

    sput v0, Lcom/android/fmradio/b;->T:I

    .line 39
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "radio_work_thread"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 41
    new-instance v2, Lcom/android/fmradio/a$a;

    invoke-direct {v2, v3, v4}, Lcom/android/fmradio/a$a;-><init>(Lcom/android/fmradio/a;Lcom/android/fmradio/a;)V

    iput-object v2, p0, Lcom/android/fmradio/b;->q:Lcom/android/fmradio/a$a;

    .line 42
    new-instance v2, Lcom/android/fmradio/a;

    invoke-direct {v2, v1, v1, v1}, Lcom/android/fmradio/a;-><init>(III)V

    iput-object v2, p0, Lcom/android/fmradio/b;->r:Lcom/android/fmradio/a;

    .line 43
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/fmradio/b;->J:Landroid/os/Handler;

    .line 44
    new-instance v0, Lo1/h0;

    const-string v1, "native_radio"

    invoke-direct {v0, v1}, Lo1/h0;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/fmradio/b;->M:Lo1/h0;

    .line 45
    invoke-static {}, Lcom/android/fmradio/FmNative;->getInstance()Lcom/android/fmradio/FmNative;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fmradio/b;->L:Lcom/android/fmradio/FmNative;

    return-void
.end method

.method public static synthetic D(Lcom/android/fmradio/b;IFLjava/lang/Boolean;I)[F
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/fmradio/b;->S(IFLjava/lang/Boolean;I)[F

    move-result-object p0

    return-object p0
.end method

.method public static synthetic E(Lcom/android/fmradio/b;IZ)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/fmradio/b;->B0(IZ)V

    return-void
.end method

.method public static synthetic F(Lcom/android/fmradio/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/fmradio/b;->F0(I)V

    return-void
.end method

.method public static i0()Lcom/android/fmradio/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/fmradio/b;->f0:Lcom/android/fmradio/b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/fmradio/b;

    invoke-direct {v0}, Lcom/android/fmradio/b;-><init>()V

    sput-object v0, Lcom/android/fmradio/b;->f0:Lcom/android/fmradio/b;

    .line 3
    :cond_0
    sget-object v0, Lcom/android/fmradio/b;->f0:Lcom/android/fmradio/b;

    return-object v0
.end method


# virtual methods
.method public A(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/fmradio/b;->K()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    iget-boolean p1, p0, Lcom/android/fmradio/b;->k:Z

    xor-int/lit8 v0, p1, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 3
    :goto_0
    iget-boolean p1, p0, Lcom/android/fmradio/b;->k:Z

    if-eq p1, v0, :cond_3

    .line 4
    iput-boolean v0, p0, Lcom/android/fmradio/b;->k:Z

    .line 5
    invoke-static {v0}, Lw0/f;->k(I)V

    :cond_3
    return-void
.end method

.method public A0(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/android/fmradio/b;->B0(IZ)V

    return-void
.end method

.method public B()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/fmradio/b;->H:Lcom/android/fmradio/b$g;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/fmradio/b;->a:I

    sget v1, Lcom/android/fmradio/b;->d0:I

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/fmradio/b;->J:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/fmradio/b;->H:Lcom/android/fmradio/b$g;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lcom/android/fmradio/b;->H:Lcom/android/fmradio/b$g;

    invoke-virtual {v0}, Lcom/android/fmradio/b$g;->a()Z

    const-wide/16 v0, 0x96

    .line 4
    invoke-static {v0, v1}, Lo1/s0;->C(J)V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/fmradio/b;->H:Lcom/android/fmradio/b$g;

    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/fmradio/b;->N()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/fmradio/b;->O()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/fmradio/b;->M()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/fmradio/b;->P()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    new-instance v0, Lcom/android/fmradio/b$g;

    iget v1, p0, Lcom/android/fmradio/b;->c:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/fmradio/b$g;-><init>(Lcom/android/fmradio/b;FZ)V

    iput-object v0, p0, Lcom/android/fmradio/b;->H:Lcom/android/fmradio/b$g;

    const-wide/16 v1, 0xc8

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/android/fmradio/b$g;->c(J)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final B0(IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/fmradio/b;->C0(IZZ)V

    return-void
.end method

.method public C(I)V
    .locals 2

    const/4 v0, 0x3

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget p1, Lw0/d;->C:I

    if-nez p1, :cond_1

    .line 2
    invoke-virtual {p0, v1}, Lcom/android/fmradio/b;->C(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/fmradio/b;->C(I)V

    goto :goto_0

    :cond_2
    new-array p1, v0, [I

    .line 4
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    new-array p1, v0, [I

    .line 5
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x0
        0x63
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x0
        0x62
    .end array-data
.end method

.method public C0(IZZ)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/fmradio/b;->b:I

    invoke-virtual {p0, v0}, Lcom/android/fmradio/b;->d0(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/high16 v2, 0x10000

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, Lcom/android/fmradio/b;->o:I

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/android/fmradio/b;->p:I

    .line 3
    :goto_1
    iget v3, p0, Lcom/android/fmradio/b;->e:I

    sub-int/2addr v3, v2

    move v4, v3

    :cond_2
    add-int v5, v2, v4

    .line 4
    iget-object v6, p0, Lcom/android/fmradio/b;->m:Landroid/util/SparseArray;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lh/a;

    if-eqz v5, :cond_3

    .line 5
    iget v6, v5, Lh/a;->c:I

    if-ne v6, p1, :cond_3

    .line 6
    iget p3, v5, Lh/a;->b:I

    invoke-virtual {p0, p3}, Lcom/android/fmradio/b;->F0(I)V

    goto :goto_3

    :cond_3
    if-eqz p3, :cond_4

    add-int/lit8 v4, v4, 0x1

    if-lt v4, v0, :cond_5

    move v4, v1

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v4, -0x1

    if-gez v4, :cond_5

    add-int/lit8 v4, v0, -0x1

    :cond_5
    :goto_2
    if-ne v4, v3, :cond_2

    :goto_3
    const/4 p3, 0x1

    .line 7
    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/android/fmradio/b;->D0(IZZZ)V

    return-void
.end method

.method public D0(IZZZ)V
    .locals 5

    if-nez p2, :cond_0

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "---->> toFreq : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " seeking:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " searching:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/fmradio/b;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NativeRadio"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p2, :cond_1

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/fmradio/b;->K:J

    .line 3
    :cond_1
    iget-boolean v0, p0, Lcom/android/fmradio/b;->y:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/fmradio/b;->F:Lcom/android/fmradio/b$g;

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    if-nez p2, :cond_3

    if-nez p3, :cond_3

    .line 4
    invoke-virtual {p0}, Lcom/android/fmradio/b;->O()Z

    .line 5
    invoke-virtual {p0}, Lcom/android/fmradio/b;->N()Z

    .line 6
    invoke-virtual {p0}, Lcom/android/fmradio/b;->L()Z

    .line 7
    invoke-virtual {p0}, Lcom/android/fmradio/b;->M()Z

    .line 8
    invoke-virtual {p0}, Lcom/android/fmradio/b;->P()Z

    if-eqz v0, :cond_3

    .line 9
    iget-object v3, p0, Lcom/android/fmradio/b;->F:Lcom/android/fmradio/b$g;

    if-eqz v3, :cond_3

    .line 10
    invoke-virtual {v3}, Lcom/android/fmradio/b$g;->b()V

    :cond_3
    if-nez p2, :cond_4

    if-nez p3, :cond_4

    .line 11
    iget v3, p0, Lcom/android/fmradio/b;->a:I

    sget v4, Lcom/android/fmradio/b;->b0:I

    if-eq v3, v4, :cond_4

    return-void

    .line 12
    :cond_4
    iget-object v3, p0, Lcom/android/fmradio/b;->r:Lcom/android/fmradio/a;

    iget v4, v3, Lcom/android/fmradio/a;->a:I

    iget v3, v3, Lcom/android/fmradio/a;->b:I

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    if-nez p2, :cond_5

    .line 13
    iget v3, p0, Lcom/android/fmradio/b;->c:I

    if-eq v3, p1, :cond_5

    .line 14
    iput p1, p0, Lcom/android/fmradio/b;->c:I

    .line 15
    iget-object p4, p0, Lcom/android/fmradio/b;->M:Lo1/h0;

    iget v3, p0, Lcom/android/fmradio/b;->f:I

    mul-int/lit8 v3, v3, 0x64

    add-int/lit8 v3, v3, 0x5

    iget v4, p0, Lcom/android/fmradio/b;->b:I

    mul-int/lit8 v4, v4, 0xa

    add-int/2addr v3, v4

    invoke-virtual {p4, v3, p1}, Lo1/h0;->q(II)V

    goto :goto_1

    :cond_5
    if-eqz p2, :cond_8

    if-eqz v0, :cond_6

    .line 16
    iget-object v3, p0, Lcom/android/fmradio/b;->F:Lcom/android/fmradio/b$g;

    invoke-virtual {v3}, Lcom/android/fmradio/b$g;->b()V

    :cond_6
    if-eqz p4, :cond_7

    .line 17
    iput p1, p0, Lcom/android/fmradio/b;->c:I

    .line 18
    iget-object p4, p0, Lcom/android/fmradio/b;->M:Lo1/h0;

    iget v3, p0, Lcom/android/fmradio/b;->f:I

    mul-int/lit8 v3, v3, 0x64

    add-int/lit8 v3, v3, 0x5

    iget v4, p0, Lcom/android/fmradio/b;->b:I

    mul-int/lit8 v4, v4, 0xa

    add-int/2addr v3, v4

    invoke-virtual {p4, v3, p1}, Lo1/h0;->q(II)V

    goto :goto_1

    .line 19
    :cond_7
    iget p4, p0, Lcom/android/fmradio/b;->c:I

    iget v3, p0, Lcom/android/fmradio/b;->d:I

    if-ne p4, v3, :cond_8

    .line 20
    iput v2, p0, Lcom/android/fmradio/b;->d:I

    .line 21
    :cond_8
    :goto_1
    invoke-static {p1}, Lw0/f;->h(I)V

    if-eqz p2, :cond_9

    .line 22
    iget p2, p0, Lcom/android/fmradio/b;->a:I

    sget p4, Lcom/android/fmradio/b;->b0:I

    if-ne p2, p4, :cond_d

    .line 23
    :cond_9
    iget p2, p0, Lcom/android/fmradio/b;->c:I

    iget p4, p0, Lcom/android/fmradio/b;->d:I

    if-ne p2, p4, :cond_a

    goto :goto_2

    :cond_a
    move v1, v2

    :goto_2
    if-eqz p3, :cond_b

    if-eqz v0, :cond_b

    .line 24
    iget-object p2, p0, Lcom/android/fmradio/b;->F:Lcom/android/fmradio/b$g;

    if-eqz p2, :cond_b

    .line 25
    invoke-virtual {p2}, Lcom/android/fmradio/b$g;->b()V

    :cond_b
    if-nez v1, :cond_d

    .line 26
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    iget-wide v0, p0, Lcom/android/fmradio/b;->K:J

    sub-long/2addr p2, v0

    const-wide/16 v0, 0x12c

    cmp-long p2, p2, v0

    if-lez p2, :cond_c

    .line 27
    invoke-static {}, Ly0/j;->a3()Ly0/j;

    move-result-object p2

    .line 28
    invoke-virtual {p2, v2}, Ly0/j;->g3(I)Z

    move-result p2

    if-nez p2, :cond_c

    .line 29
    invoke-virtual {p0}, Lcom/android/fmradio/b;->j0()V

    const-wide/16 p2, 0x64

    .line 30
    invoke-static {p2, p3}, Lo1/s0;->C(J)V

    .line 31
    :cond_c
    iget-object p2, p0, Lcom/android/fmradio/b;->L:Lcom/android/fmradio/FmNative;

    int-to-float p3, p1

    invoke-virtual {p2, p3}, Lcom/android/fmradio/FmNative;->setFreq(F)Z

    .line 32
    iput p1, p0, Lcom/android/fmradio/b;->d:I

    .line 33
    invoke-virtual {p0}, Lcom/android/fmradio/b;->E0()V

    :cond_d
    return-void
.end method

.method public final E0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/fmradio/b;->J:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/fmradio/b;->P:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lcom/android/fmradio/b;->J:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/fmradio/b;->P:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final F0(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/fmradio/b;->e:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/android/fmradio/b;->e:I

    .line 3
    iget-object v0, p0, Lcom/android/fmradio/b;->M:Lo1/h0;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lo1/h0;->q(II)V

    .line 4
    invoke-static {p1}, Lw0/f;->f(I)V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "---->> updateChannel channel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NativeRadio"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public G(II)Z
    .locals 12

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "autoScan ------------------->>>> start_freq "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NativeRadio"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget v0, p0, Lcom/android/fmradio/b;->a:I

    sget v2, Lcom/android/fmradio/b;->a0:I

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    return v3

    .line 3
    :cond_0
    sget v0, Lcom/android/fmradio/b;->e0:I

    iput v0, p0, Lcom/android/fmradio/b;->a:I

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x4

    if-lt p1, v4, :cond_1

    .line 6
    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/android/fmradio/b;->s0(IILjava/util/List;Ljava/util/List;)Z

    move-result p1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/android/fmradio/b;->s0(IILjava/util/List;Ljava/util/List;)Z

    move-result v4

    const/16 v5, 0x2e4

    if-ge p2, v5, :cond_2

    .line 8
    iget p2, p0, Lcom/android/fmradio/b;->a:I

    sget v5, Lcom/android/fmradio/b;->e0:I

    if-ne p2, v5, :cond_2

    const/16 p2, 0x36b

    .line 9
    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/android/fmradio/b;->s0(IILjava/util/List;Ljava/util/List;)Z

    move-result p1

    goto :goto_0

    :cond_2
    move p1, v4

    .line 10
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "autoScan -------->>>> fmList.size() "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "  amList.size() : "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-gtz p2, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_e

    .line 12
    :cond_3
    iget-object p2, p0, Lcom/android/fmradio/b;->m:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-string v5, "----->>> fm station:  "

    const/4 v6, 0x1

    if-lez v4, :cond_8

    move v4, v3

    :goto_1
    if-ge v4, p2, :cond_8

    .line 14
    iget-object v7, p0, Lcom/android/fmradio/b;->m:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lh/a;

    .line 15
    new-instance v8, Lh/a;

    invoke-direct {v8, v7}, Lh/a;-><init>(Lh/a;)V

    .line 16
    iget v7, v8, Lh/a;->c:I

    invoke-virtual {p0, v7}, Lcom/android/fmradio/b;->e0(I)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_3

    .line 17
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lh/a;

    .line 18
    iget v10, v9, Lh/a;->b:I

    iget v11, v8, Lh/a;->b:I

    if-ne v10, v11, :cond_5

    .line 19
    new-instance v8, Lh/a;

    invoke-direct {v8, v9}, Lh/a;-><init>(Lh/a;)V

    move v7, v6

    goto :goto_2

    :cond_6
    move v7, v3

    :goto_2
    if-nez v7, :cond_7

    const/16 v7, 0x222e

    .line 20
    iput v7, v8, Lh/a;->c:I

    .line 21
    iput v3, v8, Lh/a;->d:I

    .line 22
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-virtual {p0, v8}, Lcom/android/fmradio/b;->G0(Lh/a;)V

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 24
    :cond_8
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_d

    move v0, v3

    :goto_4
    if-ge v0, p2, :cond_d

    .line 25
    iget-object v4, p0, Lcom/android/fmradio/b;->m:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lh/a;

    .line 26
    new-instance v7, Lh/a;

    invoke-direct {v7, v4}, Lh/a;-><init>(Lh/a;)V

    .line 27
    iget v4, v7, Lh/a;->c:I

    invoke-virtual {p0, v4}, Lcom/android/fmradio/b;->e0(I)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_6

    .line 28
    :cond_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lh/a;

    .line 29
    iget v9, v8, Lh/a;->b:I

    iget v10, v7, Lh/a;->b:I

    if-ne v9, v10, :cond_a

    .line 30
    new-instance v7, Lh/a;

    invoke-direct {v7, v8}, Lh/a;-><init>(Lh/a;)V

    move v4, v6

    goto :goto_5

    :cond_b
    move v4, v3

    :goto_5
    if-nez v4, :cond_c

    const/16 v4, 0x20a

    .line 31
    iput v4, v7, Lh/a;->c:I

    .line 32
    iput v3, v7, Lh/a;->d:I

    .line 33
    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-virtual {p0, v7}, Lcom/android/fmradio/b;->G0(Lh/a;)V

    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 35
    :cond_d
    invoke-virtual {p0}, Lcom/android/fmradio/b;->T()V

    .line 36
    sget-object p2, Lw0/e;->d:Lo1/y;

    invoke-virtual {p2}, Lo1/y;->c()V

    .line 37
    invoke-virtual {p0}, Lcom/android/fmradio/b;->r0()V

    .line 38
    :cond_e
    iget p2, p0, Lcom/android/fmradio/b;->a:I

    sget v0, Lcom/android/fmradio/b;->e0:I

    if-eq p2, v0, :cond_f

    goto :goto_7

    .line 39
    :cond_f
    sget p2, Lcom/android/fmradio/b;->b0:I

    iput p2, p0, Lcom/android/fmradio/b;->a:I

    .line 40
    invoke-static {v3}, Lw0/f;->A(I)V

    move v3, p1

    :goto_7
    return v3
.end method

.method public G0(Lh/a;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/fmradio/b;->m:Landroid/util/SparseArray;

    iget v1, p1, Lh/a;->b:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 2
    :goto_0
    iget-object v4, p0, Lcom/android/fmradio/b;->n:Landroid/util/SparseIntArray;

    iget v5, p1, Lh/a;->b:I

    iget v6, p1, Lh/a;->c:I

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    if-nez v3, :cond_2

    .line 3
    iget-object v3, p0, Lcom/android/fmradio/b;->m:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh/a;

    .line 4
    iget v0, v0, Lh/a;->c:I

    iget v3, p1, Lh/a;->c:I

    if-eq v0, v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    .line 5
    iget-object v0, p0, Lcom/android/fmradio/b;->m:Landroid/util/SparseArray;

    iget v3, p1, Lh/a;->b:I

    invoke-virtual {v0, v3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x4

    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 6
    iget v4, p1, Lh/a;->b:I

    aput v4, v3, v2

    iget p1, p1, Lh/a;->c:I

    aput p1, v3, v1

    invoke-static {v0, v3}, Lw0/f;->J(I[I)V

    :cond_3
    return-void
.end method

.method public H(I)V
    .locals 8

    const/4 v0, 0x4

    const/4 v1, 0x2

    const/high16 v2, 0x10000

    const/4 v3, 0x1

    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    add-int/lit8 v4, p1, 0x0

    add-int/2addr v4, v0

    goto :goto_0

    :cond_0
    if-lt p1, v2, :cond_1

    const v4, 0x10003

    if-ge p1, v4, :cond_1

    sub-int v4, p1, v2

    add-int/2addr v4, v3

    goto :goto_0

    :cond_1
    move v4, v3

    .line 1
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "---->> band2Local mBand = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/fmradio/b;->b:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " to localBand = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " to UI value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "NativeRadio"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget v5, p0, Lcom/android/fmradio/b;->b:I

    if-eq v4, v5, :cond_5

    .line 3
    iput v4, p0, Lcom/android/fmradio/b;->b:I

    .line 4
    iget-object v5, p0, Lcom/android/fmradio/b;->M:Lo1/h0;

    const/4 v6, 0x3

    invoke-virtual {v5, v6, v4}, Lo1/h0;->q(II)V

    .line 5
    iget-object v4, p0, Lcom/android/fmradio/b;->M:Lo1/h0;

    invoke-virtual {v4, v6}, Lo1/h0;->e(I)V

    .line 6
    iget v4, p0, Lcom/android/fmradio/b;->b:I

    invoke-virtual {p0, v4}, Lcom/android/fmradio/b;->d0(I)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    move v2, v5

    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/fmradio/b;->F0(I)V

    .line 7
    invoke-static {p1}, Lw0/f;->e(I)V

    .line 8
    iget p1, p0, Lcom/android/fmradio/b;->b:I

    invoke-virtual {p0, p1}, Lcom/android/fmradio/b;->d0(I)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/fmradio/b;->q:Lcom/android/fmradio/a$a;

    iget-object p1, p1, Lcom/android/fmradio/a$a;->c:Lcom/android/fmradio/a;

    invoke-virtual {p1}, Lcom/android/fmradio/a;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lcom/android/fmradio/a;

    iget-object v2, p0, Lcom/android/fmradio/b;->q:Lcom/android/fmradio/a$a;

    iget-object v4, v2, Lcom/android/fmradio/a$a;->c:Lcom/android/fmradio/a;

    iget v4, v4, Lcom/android/fmradio/a;->a:I

    iget-object v2, v2, Lcom/android/fmradio/a$a;->a:Lcom/android/fmradio/a;

    iget v7, v2, Lcom/android/fmradio/a;->b:I

    iget v2, v2, Lcom/android/fmradio/a;->c:I

    invoke-direct {p1, v4, v7, v2}, Lcom/android/fmradio/a;-><init>(III)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/android/fmradio/b;->q:Lcom/android/fmradio/a$a;

    iget-object p1, p1, Lcom/android/fmradio/a$a;->a:Lcom/android/fmradio/a;

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/android/fmradio/b;->q:Lcom/android/fmradio/a$a;

    iget-object p1, p1, Lcom/android/fmradio/a$a;->b:Lcom/android/fmradio/a;

    .line 9
    :goto_2
    iget-object v2, p0, Lcom/android/fmradio/b;->r:Lcom/android/fmradio/a;

    invoke-virtual {p1, v2}, Lcom/android/fmradio/a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 10
    iput-object p1, p0, Lcom/android/fmradio/b;->r:Lcom/android/fmradio/a;

    const/16 v2, 0x10

    new-array v0, v0, [I

    .line 11
    iget v4, p1, Lcom/android/fmradio/a;->a:I

    aput v4, v0, v5

    iget v4, p1, Lcom/android/fmradio/a;->b:I

    aput v4, v0, v3

    iget v3, p1, Lcom/android/fmradio/a;->c:I

    aput v3, v0, v1

    iget p1, p1, Lcom/android/fmradio/a;->d:I

    aput p1, v0, v6

    invoke-static {v2, v0}, Lw0/f;->J(I[I)V

    .line 12
    iget-object p1, p0, Lcom/android/fmradio/b;->M:Lo1/h0;

    iget v0, p0, Lcom/android/fmradio/b;->f:I

    mul-int/lit8 v0, v0, 0x64

    add-int/lit8 v0, v0, 0x5

    iget v1, p0, Lcom/android/fmradio/b;->b:I

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/fmradio/b;->r:Lcom/android/fmradio/a;

    iget v1, v1, Lcom/android/fmradio/a;->a:I

    invoke-virtual {p1, v0, v1}, Lo1/h0;->h(II)I

    move-result p1

    iput p1, p0, Lcom/android/fmradio/b;->c:I

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/fmradio/b;->A0(I)V

    :cond_5
    return-void
.end method

.method public I(I)I
    .locals 3

    const/4 v0, 0x1

    const/high16 v1, 0x10000

    if-lt p1, v0, :cond_0

    const/4 v2, 0x3

    if-gt p1, v2, :cond_0

    sub-int/2addr p1, v0

    add-int/2addr v1, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-lt p1, v0, :cond_1

    const/4 v2, 0x5

    if-gt p1, v2, :cond_1

    add-int/lit8 p1, p1, 0x0

    add-int/lit8 v1, p1, -0x4

    :cond_1
    :goto_0
    return v1
.end method

.method public J(ILjava/lang/String;I)I
    .locals 1

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3
    iget-object p2, p0, Lcom/android/fmradio/b;->L:Lcom/android/fmradio/FmNative;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/fmradio/FmNative;->systemCtrl(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public K()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/fmradio/b;->N()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/fmradio/b;->O()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/fmradio/b;->L()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/fmradio/b;->M()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-nez v0, :cond_5

    .line 2
    iget-boolean v3, p0, Lcom/android/fmradio/b;->y:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/fmradio/b;->F:Lcom/android/fmradio/b$g;

    if-eqz v3, :cond_2

    move v1, v2

    :cond_2
    if-eqz v1, :cond_4

    .line 3
    sget v1, Lw0/d;->r:I

    if-ne v1, v2, :cond_3

    .line 4
    iget-object v1, p0, Lcom/android/fmradio/b;->F:Lcom/android/fmradio/b$g;

    invoke-virtual {v1}, Lcom/android/fmradio/b$g;->a()Z

    :cond_3
    const-wide/16 v3, 0x96

    .line 5
    invoke-static {v3, v4}, Lo1/s0;->C(J)V

    .line 6
    iget-object v1, p0, Lcom/android/fmradio/b;->F:Lcom/android/fmradio/b$g;

    invoke-virtual {v1}, Lcom/android/fmradio/b$g;->b()V

    goto :goto_2

    .line 7
    :cond_4
    invoke-virtual {p0}, Lcom/android/fmradio/b;->P()Z

    :cond_5
    :goto_2
    xor-int/2addr v0, v2

    return v0
.end method

.method public L()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/fmradio/b;->a:I

    sget v1, Lcom/android/fmradio/b;->a0:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/fmradio/b;->H:Lcom/android/fmradio/b$g;

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Lcom/android/fmradio/b;->J:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lcom/android/fmradio/b;->H:Lcom/android/fmradio/b$g;

    invoke-virtual {v0}, Lcom/android/fmradio/b$g;->a()Z

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/fmradio/b;->H:Lcom/android/fmradio/b$g;

    const-wide/16 v0, 0x96

    .line 6
    invoke-static {v0, v1}, Lo1/s0;->C(J)V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public M()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/fmradio/b;->a:I

    sget v1, Lcom/android/fmradio/b;->a0:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/fmradio/b;->G:Lcom/android/fmradio/b$g;

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Lcom/android/fmradio/b;->J:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lcom/android/fmradio/b;->G:Lcom/android/fmradio/b$g;

    invoke-virtual {v0}, Lcom/android/fmradio/b$g;->a()Z

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/fmradio/b;->G:Lcom/android/fmradio/b$g;

    const-wide/16 v0, 0x96

    .line 6
    invoke-static {v0, v1}, Lo1/s0;->C(J)V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public N()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/fmradio/b;->a:I

    sget v1, Lcom/android/fmradio/b;->a0:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/fmradio/b;->I:Lcom/android/fmradio/b$e;

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Lcom/android/fmradio/b;->J:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lcom/android/fmradio/b;->I:Lcom/android/fmradio/b$e;

    invoke-virtual {v0}, Lcom/android/fmradio/b$e;->a()Z

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/fmradio/b;->I:Lcom/android/fmradio/b$e;

    const-wide/16 v0, 0x96

    .line 6
    invoke-static {v0, v1}, Lo1/s0;->C(J)V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public O()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/fmradio/b;->a:I

    sget v1, Lcom/android/fmradio/b;->a0:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/fmradio/b;->E:Lcom/android/fmradio/b$f;

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Lcom/android/fmradio/b;->J:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lcom/android/fmradio/b;->E:Lcom/android/fmradio/b$f;

    invoke-virtual {v0}, Lcom/android/fmradio/b$f;->a()Z

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/fmradio/b;->E:Lcom/android/fmradio/b$f;

    const-wide/16 v0, 0x96

    .line 6
    invoke-static {v0, v1}, Lo1/s0;->C(J)V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public P()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/fmradio/b;->a:I

    sget v1, Lcom/android/fmradio/b;->a0:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/fmradio/b;->F:Lcom/android/fmradio/b$g;

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Lcom/android/fmradio/b;->J:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lcom/android/fmradio/b;->F:Lcom/android/fmradio/b$g;

    invoke-virtual {v0}, Lcom/android/fmradio/b$g;->a()Z

    const-wide/16 v0, 0x96

    .line 5
    invoke-static {v0, v1}, Lo1/s0;->C(J)V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public Q(Z)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-------------->>> checkTaTask enable : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NativeRadio"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/fmradio/b;->F:Lcom/android/fmradio/b$g;

    if-eqz v0, :cond_1

    .line 3
    sget p1, Lw0/d;->r:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/fmradio/b;->P()Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/android/fmradio/b;->J:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_0
    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/android/fmradio/b;->F:Lcom/android/fmradio/b$g;

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_4

    .line 7
    invoke-virtual {p0}, Lcom/android/fmradio/b;->K()Z

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-------------->>> 01 checkTaTask enable : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object p1, p0, Lcom/android/fmradio/b;->F:Lcom/android/fmradio/b$g;

    if-eqz p1, :cond_2

    iget-boolean p1, p1, Lcom/android/fmradio/b$f;->d:Z

    if-nez p1, :cond_3

    .line 10
    :cond_2
    new-instance p1, Lcom/android/fmradio/b$g;

    iget v0, p0, Lcom/android/fmradio/b;->c:I

    int-to-float v0, v0

    const/16 v1, 0x1c

    invoke-direct {p1, p0, v0, v1}, Lcom/android/fmradio/b$g;-><init>(Lcom/android/fmradio/b;FI)V

    iput-object p1, p0, Lcom/android/fmradio/b;->F:Lcom/android/fmradio/b$g;

    .line 11
    :cond_3
    iget-object p1, p0, Lcom/android/fmradio/b;->F:Lcom/android/fmradio/b$g;

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Lcom/android/fmradio/b$g;->c(J)V

    :cond_4
    :goto_1
    return-void
.end method

.method public R()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/fmradio/b;->K()Z

    const/16 v0, 0x1000

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, v1}, Ly0/h;->Y(IZ)V

    const-wide/16 v1, 0xc8

    .line 3
    invoke-static {v1, v2}, Lo1/s0;->C(J)V

    .line 4
    iget-object v1, p0, Lcom/android/fmradio/b;->L:Lcom/android/fmradio/FmNative;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/fmradio/FmNative;->closeDev(I)Z

    move-result v1

    .line 5
    sget v3, Lcom/android/fmradio/b;->a0:I

    iput v3, p0, Lcom/android/fmradio/b;->a:I

    const-wide/16 v3, 0x64

    .line 6
    invoke-static {v3, v4}, Lo1/s0;->C(J)V

    .line 7
    invoke-static {v0, v2}, Ly0/h;->Y(IZ)V

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---->> closeRadio result: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "NativeRadio"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iput-boolean v2, p0, Lcom/android/fmradio/b;->N:Z

    .line 10
    invoke-static {v2}, Lw0/f;->m(I)V

    return v1
.end method

.method public final S(IFLjava/lang/Boolean;I)[F
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/fmradio/b;->a:I

    sget v1, Lcom/android/fmradio/b;->a0:I

    if-ne v0, v1, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 2
    fill-array-data p1, :array_0

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "---->> findStation band : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " startFreq:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " up:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/fmradio/b;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NativeRadio"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    sget v0, Lcom/android/fmradio/b;->d0:I

    iput v0, p0, Lcom/android/fmradio/b;->a:I

    .line 5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "startfreq"

    .line 7
    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    if-eqz p3, :cond_1

    .line 8
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const-string p3, "isup"

    invoke-virtual {v0, p3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    const/4 p2, 0x4

    if-lt p1, p2, :cond_2

    .line 9
    iget p2, p0, Lcom/android/fmradio/b;->h:I

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p0}, Lcom/android/fmradio/b;->W()I

    move-result p2

    :goto_0
    const-string/jumbo p3, "sensitivity"

    .line 11
    invoke-virtual {v0, p3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 p2, 0x3

    if-le p1, p2, :cond_3

    const/4 p1, 0x1

    const-string p2, "isuseam"

    .line 12
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/android/fmradio/b;->L:Lcom/android/fmradio/FmNative;

    invoke-virtual {p1, p4, v0, v3}, Lcom/android/fmradio/FmNative;->systemCtrl(ILjava/lang/Object;Ljava/lang/Object;)I

    const-string p1, "freqrssi"

    .line 14
    invoke-virtual {v3, p1}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object p1

    .line 15
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "---->> findStation fRet : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/fmradio/b;->a:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    iget p2, p0, Lcom/android/fmradio/b;->a:I

    sget p3, Lcom/android/fmradio/b;->d0:I

    if-ne p2, p3, :cond_4

    .line 17
    sget p2, Lcom/android/fmradio/b;->b0:I

    iput p2, p0, Lcom/android/fmradio/b;->a:I

    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public final declared-synchronized T()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/fmradio/b;->m:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    .line 2
    iput v1, p0, Lcom/android/fmradio/b;->o:I

    .line 3
    iput v1, p0, Lcom/android/fmradio/b;->p:I

    :goto_0
    if-ge v1, v0, :cond_1

    const/high16 v2, 0x10000

    .line 4
    iget-object v3, p0, Lcom/android/fmradio/b;->m:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    if-gt v2, v3, :cond_0

    .line 5
    iget v2, p0, Lcom/android/fmradio/b;->o:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/fmradio/b;->o:I

    goto :goto_1

    .line 6
    :cond_0
    iget v2, p0, Lcom/android/fmradio/b;->p:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/fmradio/b;->p:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public U([ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Lo1/s0;->h([II)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2
    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lcom/android/fmradio/b;->D:Lcom/android/fmradio/RdsTextChars;

    iget-object v2, v2, Lcom/android/fmradio/RdsTextChars;->tables:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/fmradio/RdsTextChars$CharTable;

    .line 4
    iget-object v4, v3, Lcom/android/fmradio/RdsTextChars$CharTable;->table:Ljava/lang/String;

    invoke-static {v4, p2}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v1, v3

    :cond_1
    if-eqz v1, :cond_2

    move p2, v0

    .line 5
    :goto_0
    array-length v2, p1

    if-ge p2, v2, :cond_2

    .line 6
    aget v2, p1, p2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v0

    const-string v2, "%02X"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/fmradio/RdsTextChars$CharTable;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 9
    :cond_3
    :try_start_0
    new-instance p2, Ljava/lang/String;

    invoke-static {p1}, Lo1/s0;->r([I)[B

    move-result-object p1

    invoke-direct {p2, p1, p3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, p2

    goto :goto_1

    :catch_0
    const-string p1, ""

    :goto_1
    return-object p1
.end method

.method public V()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/fmradio/b;->j:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/android/fmradio/b;->X:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/fmradio/b;->h:I

    :goto_0
    return v0
.end method

.method public W()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fmradio/b;->j:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/android/fmradio/b;->U:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/fmradio/b;->g:I

    .line 2
    :goto_0
    iget-boolean v1, p0, Lcom/android/fmradio/b;->k:Z

    if-eqz v1, :cond_1

    .line 3
    sget v1, Lcom/android/fmradio/b;->T:I

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public X(ILjava/lang/String;)[I
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/android/fmradio/b;->L:Lcom/android/fmradio/FmNative;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Lcom/android/fmradio/FmNative;->systemCtrl(ILjava/lang/Object;Ljava/lang/Object;)I

    .line 3
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    array-length p2, p1

    if-lez p2, :cond_0

    invoke-static {p1}, Lo1/s0;->e([B)[I

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [I

    :goto_0
    return-object p1
.end method

.method public Y()Z
    .locals 4

    const/16 v0, 0x16

    const-string v1, "rdsonoff"

    const/4 v2, -0x1

    .line 1
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/fmradio/b;->b0(ILjava/lang/String;I)I

    move-result v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "------------------>>>  getRdsEnable  ret: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "NativeRadio"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v2, :cond_0

    const-string v0, "persist.fyt.fm.rdsstate"

    const-string v1, ""

    .line 3
    invoke-static {v0, v1}, Lo1/s0;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v1, v0}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public Z()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/android/fmradio/b;->L:Lcom/android/fmradio/FmNative;

    const/16 v3, 0x1f

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/fmradio/FmNative;->systemCtrl(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const-string v2, ""

    if-nez v0, :cond_0

    const-string v0, "TextSize"

    .line 4
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    :try_start_0
    const-string v0, "Text"

    .line 5
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-static {v0}, Lo1/s0;->e([B)[I

    move-result-object v0

    sget-object v1, Lcom/android/fmradio/FmService;->rdsTable:Ljava/lang/String;

    const-string v3, "ascii"

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/fmradio/b;->U([ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    .line 7
    :catch_0
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "------------>>> RdsText : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NativeRadio"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/fmradio/b;->J:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/fmradio/b;->R:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lcom/android/fmradio/b;->R:Ljava/lang/Runnable;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 3
    sget-object v0, Lu0/c;->e:Lo1/y;

    iget-object v1, p0, Lcom/android/fmradio/b;->R:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public a0(ILjava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/fmradio/b;->b0(ILjava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/fmradio/b;->J:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/fmradio/b;->R:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lcom/android/fmradio/b;->R:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lu0/c;->e:Lo1/y;

    iget-object v1, p0, Lcom/android/fmradio/b;->R:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    invoke-virtual {p0}, Lcom/android/fmradio/b;->R()Z

    return-void
.end method

.method public b0(ILjava/lang/String;I)I
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/android/fmradio/b;->L:Lcom/android/fmradio/FmNative;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Lcom/android/fmradio/FmNative;->systemCtrl(ILjava/lang/Object;Ljava/lang/Object;)I

    .line 3
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public c()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/fmradio/b;->k0()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/fmradio/b;->F0(I)V

    .line 2
    iget v0, p0, Lcom/android/fmradio/b;->e:I

    invoke-virtual {p0, v0}, Lcom/android/fmradio/b;->z(I)V

    return-void
.end method

.method public c0(IZ)I
    .locals 2

    if-eqz p2, :cond_0

    const/high16 p2, 0x10000

    add-int/2addr p2, p1

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p1, 0x0

    .line 1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>> indexLocal2Ui index : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to ui station id: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NativeRadio"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method public d()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/fmradio/b;->K()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/android/fmradio/b;->b:I

    invoke-virtual {p0, v0}, Lcom/android/fmradio/b;->d0(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/fmradio/b;->q:Lcom/android/fmradio/a$a;

    iget-object v0, v0, Lcom/android/fmradio/a$a;->c:Lcom/android/fmradio/a;

    invoke-virtual {v0}, Lcom/android/fmradio/a;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/fmradio/b;->q:Lcom/android/fmradio/a$a;

    iget-object v0, v0, Lcom/android/fmradio/a$a;->c:Lcom/android/fmradio/a;

    iget v1, p0, Lcom/android/fmradio/b;->c:I

    invoke-virtual {v0, v1}, Lcom/android/fmradio/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    iget v0, p0, Lcom/android/fmradio/b;->c:I

    iget-object v1, p0, Lcom/android/fmradio/b;->q:Lcom/android/fmradio/a$a;

    iget-object v1, v1, Lcom/android/fmradio/a$a;->c:Lcom/android/fmradio/a;

    iget v2, v1, Lcom/android/fmradio/a;->a:I

    if-gt v0, v2, :cond_1

    sget-object v0, Lcom/android/fmradio/a;->f:Lcom/android/fmradio/a;

    iget v0, v0, Lcom/android/fmradio/a;->b:I

    goto :goto_1

    :cond_1
    iget v3, v1, Lcom/android/fmradio/a;->b:I

    iget v1, v1, Lcom/android/fmradio/a;->c:I

    sub-int/2addr v0, v1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/android/fmradio/b;->r:Lcom/android/fmradio/a;

    iget v1, v0, Lcom/android/fmradio/a;->a:I

    iget v2, p0, Lcom/android/fmradio/b;->c:I

    if-lt v1, v2, :cond_3

    iget v0, v0, Lcom/android/fmradio/a;->b:I

    goto :goto_0

    :cond_3
    iget v3, v0, Lcom/android/fmradio/a;->b:I

    iget v0, v0, Lcom/android/fmradio/a;->c:I

    sub-int/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 5
    :goto_0
    iget v1, p0, Lcom/android/fmradio/b;->b:I

    invoke-virtual {p0, v1}, Lcom/android/fmradio/b;->d0(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/fmradio/b;->q:Lcom/android/fmradio/a$a;

    iget-object v1, v1, Lcom/android/fmradio/a$a;->c:Lcom/android/fmradio/a;

    invoke-virtual {v1}, Lcom/android/fmradio/a;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/fmradio/a;->h:Lcom/android/fmradio/a;

    invoke-virtual {v1, v0}, Lcom/android/fmradio/a;->a(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 6
    iget-object v0, p0, Lcom/android/fmradio/b;->q:Lcom/android/fmradio/a$a;

    iget-object v0, v0, Lcom/android/fmradio/a$a;->c:Lcom/android/fmradio/a;

    iget v0, v0, Lcom/android/fmradio/a;->b:I

    .line 7
    :cond_4
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/fmradio/b;->A0(I)V

    return-void
.end method

.method public d0(I)Z
    .locals 1

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public e(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/fmradio/b;->K()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/fmradio/b;->A0(I)V

    return-void
.end method

.method public e0(I)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/fmradio/a;->g:Lcom/android/fmradio/a;

    iget v0, v0, Lcom/android/fmradio/a;->a:I

    if-lt p1, v0, :cond_0

    sget-object v0, Lcom/android/fmradio/a;->f:Lcom/android/fmradio/a;

    iget v0, v0, Lcom/android/fmradio/a;->b:I

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public f(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/fmradio/b;->K()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_1

    .line 2
    iget v0, p0, Lcom/android/fmradio/b;->O:I

    if-ge p1, v0, :cond_1

    iget v0, p0, Lcom/android/fmradio/b;->f:I

    if-eq v0, p1, :cond_1

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/fmradio/b;->p0(I)V

    :cond_1
    return-void
.end method

.method public f0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/fmradio/b;->N:Z

    return v0
.end method

.method public g()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/fmradio/b;->o0()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/fmradio/b;->F0(I)V

    .line 2
    iget v0, p0, Lcom/android/fmradio/b;->e:I

    invoke-virtual {p0, v0}, Lcom/android/fmradio/b;->z(I)V

    return-void
.end method

.method public g0()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/fmradio/b;->M:Lo1/h0;

    const-string/jumbo v1, "ro.fyt.area"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v1}, Lo1/h0;->h(II)I

    move-result v0

    iput v0, p0, Lcom/android/fmradio/b;->f:I

    .line 2
    iget-object v0, p0, Lcom/android/fmradio/b;->M:Lo1/h0;

    const/4 v1, 0x3

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Lo1/h0;->h(II)I

    move-result v0

    iput v0, p0, Lcom/android/fmradio/b;->b:I

    .line 3
    iget v0, p0, Lcom/android/fmradio/b;->f:I

    invoke-virtual {p0, v0}, Lcom/android/fmradio/b;->p0(I)V

    .line 4
    sget v0, Lw0/d;->w:I

    const/4 v1, 0x0

    if-ne v0, v4, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/fmradio/b;->j:Z

    .line 5
    iget-boolean v0, p0, Lcom/android/fmradio/b;->s:Z

    if-eqz v0, :cond_1

    const-string v0, "persist.fyt.fm.rdsstate"

    const-string v5, ""

    invoke-static {v0, v5}, Lo1/s0;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "on"

    invoke-static {v0, v5}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v4

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/fmradio/b;->w:Z

    const/16 v5, 0x1a

    if-eqz v0, :cond_2

    const-string v0, "TAconfig"

    .line 6
    invoke-virtual {p0, v5, v0}, Lcom/android/fmradio/b;->a0(ILjava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_2

    move v0, v4

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/fmradio/b;->y:Z

    const-string v0, "AFconfig"

    .line 7
    invoke-virtual {p0, v5, v0}, Lcom/android/fmradio/b;->a0(ILjava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_3

    move v0, v4

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/android/fmradio/b;->x:Z

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "---->> NativeRadio  isRdsEnable: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/fmradio/b;->w:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "  isRdsTaEnable : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/fmradio/b;->y:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "NativeRadio"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    sget v0, Lcom/android/fmradio/b;->U:I

    const-string/jumbo v6, "ro.fyt.fmsens"

    invoke-static {v6, v0}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/fmradio/b;->U:I

    .line 10
    sget v0, Lcom/android/fmradio/b;->X:I

    const-string/jumbo v6, "ro.fyt.amsens"

    invoke-static {v6, v0}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/fmradio/b;->X:I

    const-string v0, "persist.fyt.radio.area.size"

    .line 11
    invoke-static {v0, v3}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/fmradio/b;->O:I

    .line 12
    iget-object v0, p0, Lcom/android/fmradio/b;->M:Lo1/h0;

    sget v3, Lcom/android/fmradio/b;->U:I

    invoke-virtual {v0, v2, v3}, Lo1/h0;->h(II)I

    move-result v0

    iput v0, p0, Lcom/android/fmradio/b;->g:I

    .line 13
    iget-object v0, p0, Lcom/android/fmradio/b;->M:Lo1/h0;

    sget v2, Lcom/android/fmradio/b;->X:I

    invoke-virtual {v0, v4, v2}, Lo1/h0;->h(II)I

    move-result v0

    iput v0, p0, Lcom/android/fmradio/b;->h:I

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---->> NativeRadio  mFmSens: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/fmradio/b;->g:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  mAmSens : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/fmradio/b;->h:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    iget-object v0, p0, Lcom/android/fmradio/b;->M:Lo1/h0;

    iget v2, p0, Lcom/android/fmradio/b;->f:I

    mul-int/lit8 v2, v2, 0x64

    add-int/lit8 v2, v2, 0x5

    iget v3, p0, Lcom/android/fmradio/b;->b:I

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v2, v3

    const/16 v3, 0x222e

    invoke-virtual {v0, v2, v3}, Lo1/h0;->h(II)I

    move-result v0

    iput v0, p0, Lcom/android/fmradio/b;->c:I

    .line 16
    iget-object v0, p0, Lcom/android/fmradio/b;->M:Lo1/h0;

    const/4 v2, 0x6

    const/high16 v3, 0x10000

    invoke-virtual {v0, v2, v3}, Lo1/h0;->h(II)I

    move-result v0

    iput v0, p0, Lcom/android/fmradio/b;->e:I

    .line 17
    iget-object v0, p0, Lcom/android/fmradio/b;->M:Lo1/h0;

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Lo1/h0;->h(II)I

    move-result v0

    iput v0, p0, Lcom/android/fmradio/b;->i:I

    .line 18
    iget v0, p0, Lcom/android/fmradio/b;->b:I

    invoke-virtual {p0, v0}, Lcom/android/fmradio/b;->I(I)I

    move-result v0

    invoke-static {v0}, Lw0/f;->e(I)V

    return-void
.end method

.method public h()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/fmradio/b;->H:Lcom/android/fmradio/b$g;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/fmradio/b;->a:I

    sget v1, Lcom/android/fmradio/b;->d0:I

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/fmradio/b;->J:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/fmradio/b;->H:Lcom/android/fmradio/b$g;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lcom/android/fmradio/b;->H:Lcom/android/fmradio/b$g;

    invoke-virtual {v0}, Lcom/android/fmradio/b$g;->a()Z

    const-wide/16 v0, 0x96

    .line 4
    invoke-static {v0, v1}, Lo1/s0;->C(J)V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/fmradio/b;->H:Lcom/android/fmradio/b$g;

    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/fmradio/b;->N()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/fmradio/b;->O()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/fmradio/b;->M()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/fmradio/b;->P()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    new-instance v0, Lcom/android/fmradio/b$g;

    iget v1, p0, Lcom/android/fmradio/b;->c:I

    int-to-float v1, v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/android/fmradio/b$g;-><init>(Lcom/android/fmradio/b;FZ)V

    iput-object v0, p0, Lcom/android/fmradio/b;->H:Lcom/android/fmradio/b$g;

    const-wide/16 v1, 0xc8

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/android/fmradio/b$g;->c(J)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final h0()V
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030059

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 3
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/android/fmradio/RdsTextChars;

    invoke-virtual {v2, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fmradio/RdsTextChars;

    iput-object v1, p0, Lcom/android/fmradio/b;->D:Lcom/android/fmradio/RdsTextChars;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 4
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 5
    :catch_0
    :cond_0
    throw v1

    :catch_1
    if-eqz v0, :cond_1

    goto :goto_0

    .line 6
    :catch_2
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/fmradio/b;->D:Lcom/android/fmradio/RdsTextChars;

    const-string v1, "NativeRadio"

    if-eqz v0, :cond_2

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---->> RdsTextChars size : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/fmradio/b;->D:Lcom/android/fmradio/RdsTextChars;

    iget-object v2, v2, Lcom/android/fmradio/RdsTextChars;->tables:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Lcom/android/fmradio/b;->D:Lcom/android/fmradio/RdsTextChars;

    iget-object v0, v0, Lcom/android/fmradio/RdsTextChars;->tables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fmradio/RdsTextChars$CharTable;

    .line 9
    invoke-virtual {v2}, Lcom/android/fmradio/RdsTextChars$CharTable;->b()V

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "---->> RdsTextChar : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    const-string v0, "---->> RdsTextChars is NULL "

    .line 11
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public i()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/fmradio/b;->K()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/android/fmradio/b;->b:I

    invoke-virtual {p0, v0}, Lcom/android/fmradio/b;->d0(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/fmradio/b;->q:Lcom/android/fmradio/a$a;

    iget-object v0, v0, Lcom/android/fmradio/a$a;->c:Lcom/android/fmradio/a;

    invoke-virtual {v0}, Lcom/android/fmradio/a;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/fmradio/b;->q:Lcom/android/fmradio/a$a;

    iget-object v0, v0, Lcom/android/fmradio/a$a;->c:Lcom/android/fmradio/a;

    iget v1, p0, Lcom/android/fmradio/b;->c:I

    invoke-virtual {v0, v1}, Lcom/android/fmradio/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    iget v0, p0, Lcom/android/fmradio/b;->c:I

    iget-object v1, p0, Lcom/android/fmradio/b;->q:Lcom/android/fmradio/a$a;

    iget-object v1, v1, Lcom/android/fmradio/a$a;->c:Lcom/android/fmradio/a;

    iget v2, v1, Lcom/android/fmradio/a;->b:I

    if-lt v0, v2, :cond_1

    sget-object v0, Lcom/android/fmradio/a;->f:Lcom/android/fmradio/a;

    iget v0, v0, Lcom/android/fmradio/a;->a:I

    goto :goto_0

    :cond_1
    iget v3, v1, Lcom/android/fmradio/a;->a:I

    iget v1, v1, Lcom/android/fmradio/a;->c:I

    add-int/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 4
    :cond_2
    iget v0, p0, Lcom/android/fmradio/b;->c:I

    iget-object v1, p0, Lcom/android/fmradio/b;->r:Lcom/android/fmradio/a;

    iget v2, v1, Lcom/android/fmradio/a;->b:I

    if-lt v0, v2, :cond_3

    iget v0, v1, Lcom/android/fmradio/a;->a:I

    goto :goto_0

    :cond_3
    iget v3, v1, Lcom/android/fmradio/a;->a:I

    iget v1, v1, Lcom/android/fmradio/a;->c:I

    add-int/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 5
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/fmradio/b;->A0(I)V

    return-void
.end method

.method public j(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/fmradio/b;->K()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lh/a;

    iget v1, p0, Lcom/android/fmradio/b;->c:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lh/a;-><init>(II)V

    .line 3
    iput p1, v0, Lh/a;->b:I

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/fmradio/b;->G0(Lh/a;)V

    .line 5
    invoke-virtual {p0}, Lcom/android/fmradio/b;->r0()V

    return-void
.end method

.method public final j0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/fmradio/b;->J:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/fmradio/b;->Q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lcom/android/fmradio/b;->J:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/fmradio/b;->Q:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public k()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/fmradio/b;->a:I

    sget v1, Lcom/android/fmradio/b;->a0:I

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/fmradio/b;->I:Lcom/android/fmradio/b$e;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/android/fmradio/b;->N()Z

    return-void

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/android/fmradio/b;->P()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/fmradio/b;->O()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/fmradio/b;->L()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/fmradio/b;->M()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "NativeRadio"

    const-string v1, "----------------->>> scan"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    new-instance v0, Lcom/android/fmradio/b$e;

    invoke-direct {v0, p0}, Lcom/android/fmradio/b$e;-><init>(Lcom/android/fmradio/b;)V

    iput-object v0, p0, Lcom/android/fmradio/b;->I:Lcom/android/fmradio/b$e;

    .line 7
    iget-object v1, p0, Lcom/android/fmradio/b;->J:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public k0()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/fmradio/b;->b:I

    invoke-virtual {p0, v0}, Lcom/android/fmradio/b;->d0(I)Z

    move-result v0

    .line 2
    iget v1, p0, Lcom/android/fmradio/b;->e:I

    if-eqz v0, :cond_1

    const/high16 v0, 0x10000

    if-lt v1, v0, :cond_3

    .line 3
    iget v2, p0, Lcom/android/fmradio/b;->o:I

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    if-ltz v1, :cond_3

    .line 4
    iget v2, p0, Lcom/android/fmradio/b;->p:I

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    :cond_3
    :goto_0
    return v0
.end method

.method public l(II)V
    .locals 2

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/android/fmradio/b;->r:Lcom/android/fmradio/a;

    iget v0, p1, Lcom/android/fmradio/a;->a:I

    if-lt p2, v0, :cond_3

    iget p1, p1, Lcom/android/fmradio/a;->b:I

    if-gt p2, p1, :cond_3

    .line 2
    invoke-virtual {p0, p2}, Lcom/android/fmradio/b;->A0(I)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/android/fmradio/b;->r:Lcom/android/fmradio/a;

    iget v0, p1, Lcom/android/fmradio/a;->a:I

    if-lt p2, v0, :cond_3

    iget p1, p1, Lcom/android/fmradio/a;->b:I

    if-gt p2, p1, :cond_3

    .line 4
    invoke-virtual {p0, p2}, Lcom/android/fmradio/b;->A0(I)V

    goto :goto_0

    :cond_2
    if-ltz p2, :cond_3

    .line 5
    iget-object p1, p0, Lcom/android/fmradio/b;->r:Lcom/android/fmradio/a;

    iget v0, p1, Lcom/android/fmradio/a;->d:I

    if-gt p2, v0, :cond_3

    .line 6
    iget v0, p1, Lcom/android/fmradio/a;->b:I

    iget v1, p1, Lcom/android/fmradio/a;->a:I

    sub-int/2addr v0, v1

    mul-int/2addr p2, v0

    int-to-float p2, p2

    iget p1, p1, Lcom/android/fmradio/a;->c:I

    int-to-float p1, p1

    div-float/2addr p2, p1

    float-to-int p1, p2

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/fmradio/b;->A0(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public l0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/fmradio/b;->Z()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lw0/f;->x(Ljava/lang/String;)V

    return-void
.end method

.method public m(Ly/b;I)Z
    .locals 8

    .line 1
    invoke-static {}, Lw0/i;->X2()Lw0/i;

    move-result-object v0

    invoke-virtual {v0}, Lbase/b;->L2()Lo1/x;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p2, v1, :cond_2

    const/16 v1, 0xe

    if-eq p2, v1, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/android/fmradio/b;->m:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    :goto_0
    if-ge v2, v1, :cond_4

    .line 3
    iget-object v4, p0, Lcom/android/fmradio/b;->m:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lh/a;

    if-eqz v4, :cond_1

    .line 4
    iget v5, v4, Lh/a;->b:I

    iget-object v4, v4, Lh/a;->e:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, v5, v4}, Lo1/x;->E(Ly/b;IILjava/lang/String;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_2
    iget-object v1, p0, Lcom/android/fmradio/b;->m:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    move v4, v2

    :goto_1
    if-ge v4, v1, :cond_4

    .line 6
    iget-object v5, p0, Lcom/android/fmradio/b;->m:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lh/a;

    if-eqz v5, :cond_3

    const/4 v6, 0x2

    new-array v6, v6, [I

    .line 7
    iget v7, v5, Lh/a;->b:I

    aput v7, v6, v2

    iget v5, v5, Lh/a;->c:I

    aput v5, v6, v3

    invoke-virtual {v0, p1, p2, v6}, Lo1/x;->G(Ly/b;I[I)V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    move v2, v3

    :goto_2
    return v2
.end method

.method public m0()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/fmradio/b;->b:I

    invoke-virtual {p0, v0}, Lcom/android/fmradio/b;->d0(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    const/16 v1, 0x13

    const-string v2, "isforcemono"

    .line 2
    invoke-virtual {p0, v1, v2}, Lcom/android/fmradio/b;->a0(ILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    const/16 v0, 0x9

    const-string v1, "monostero"

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/android/fmradio/b;->a0(ILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 4
    :cond_1
    :goto_0
    invoke-static {v0}, Lw0/f;->F(I)V

    :cond_2
    return-void
.end method

.method public n(I)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/fmradio/b;->s:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/fmradio/b;->w:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    const/16 v3, 0x1a

    const-string v4, "AFconfig"

    .line 2
    invoke-virtual {p0, v3, v4}, Lcom/android/fmradio/b;->a0(ILjava/lang/String;)I

    move-result v3

    .line 3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "---->> rdsAfEnable: to value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " toVar: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " state: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v4, "NativeRadio"

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v2, v3, :cond_3

    .line 4
    invoke-static {v2}, Lw0/f;->q(I)V

    if-ne v2, v1, :cond_2

    move v0, v1

    .line 5
    :cond_2
    iput-boolean v0, p0, Lcom/android/fmradio/b;->x:Z

    const/16 p1, 0x18

    const-string v0, "configdata"

    .line 6
    invoke-virtual {p0, p1, v0, v2}, Lcom/android/fmradio/b;->J(ILjava/lang/String;I)I

    :cond_3
    :goto_1
    return-void
.end method

.method public n0()Z
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/fmradio/b;->a:I

    sget v1, Lcom/android/fmradio/b;->a0:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    return v2

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/fmradio/b;->D:Lcom/android/fmradio/RdsTextChars;

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/android/fmradio/b;->h0()V

    :cond_1
    const/16 v0, 0x1000

    .line 4
    invoke-static {v0, v2}, Ly0/h;->Y(IZ)V

    const-wide/16 v3, 0xc8

    .line 5
    invoke-static {v3, v4}, Lo1/s0;->C(J)V

    .line 6
    iget-object v1, p0, Lcom/android/fmradio/b;->L:Lcom/android/fmradio/FmNative;

    iget v3, p0, Lcom/android/fmradio/b;->c:I

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Lcom/android/fmradio/FmNative;->openDev(F)Z

    move-result v1

    const-wide/16 v3, 0x64

    .line 7
    invoke-static {v3, v4}, Lo1/s0;->C(J)V

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "---->> OpenDev result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "  isRdsEnable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/fmradio/b;->w:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NativeRadio"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    .line 9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "---->> isRdsSupport: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/fmradio/b;->s:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " isAreaSupport: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/fmradio/b;->t:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " isAmSupport: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/fmradio/b;->u:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "persist.fyt.fm.default"

    const-string v5, ""

    .line 10
    invoke-static {v4, v5}, Lo1/s0;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 11
    invoke-static {v4}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, " "

    .line 12
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 13
    array-length v5, v4

    const/4 v6, 0x6

    if-lt v5, v6, :cond_2

    .line 14
    aget-object v5, v4, v3

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sput v5, Lcom/android/fmradio/b;->U:I

    .line 15
    aget-object v2, v4, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/fmradio/b;->V:I

    const/4 v2, 0x2

    .line 16
    aget-object v2, v4, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/fmradio/b;->W:I

    const/4 v2, 0x3

    .line 17
    aget-object v2, v4, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/fmradio/b;->X:I

    const/4 v2, 0x4

    .line 18
    aget-object v2, v4, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/fmradio/b;->Y:I

    const/4 v2, 0x5

    .line 19
    aget-object v2, v4, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/fmradio/b;->Z:I

    .line 20
    :cond_2
    iget-object v2, p0, Lcom/android/fmradio/b;->M:Lo1/h0;

    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Lo1/h0;->k(I)Landroid/util/SparseIntArray;

    move-result-object v2

    iput-object v2, p0, Lcom/android/fmradio/b;->n:Landroid/util/SparseIntArray;

    if-eqz v2, :cond_4

    .line 21
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 22
    iget-object v2, p0, Lcom/android/fmradio/b;->n:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    .line 23
    iget-object v5, p0, Lcom/android/fmradio/b;->n:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    .line 24
    iget-object v6, p0, Lcom/android/fmradio/b;->n:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    .line 25
    new-instance v7, Lh/a;

    invoke-direct {v7, v6, v3}, Lh/a;-><init>(II)V

    .line 26
    invoke-virtual {p0, v6}, Lcom/android/fmradio/b;->e0(I)Z

    move-result v6

    if-eqz v6, :cond_3

    const/high16 v6, 0x10000

    sub-int v6, v5, v6

    goto :goto_1

    :cond_3
    move v6, v5

    .line 27
    :goto_1
    iput v6, v7, Lh/a;->a:I

    .line 28
    iput v5, v7, Lh/a;->b:I

    .line 29
    invoke-virtual {p0, v7}, Lcom/android/fmradio/b;->G0(Lh/a;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 30
    :cond_4
    invoke-virtual {p0}, Lcom/android/fmradio/b;->T()V

    .line 31
    invoke-virtual {p0}, Lcom/android/fmradio/b;->g0()V

    .line 32
    iput v3, p0, Lcom/android/fmradio/b;->d:I

    .line 33
    sget v2, Lcom/android/fmradio/b;->b0:I

    iput v2, p0, Lcom/android/fmradio/b;->a:I

    .line 34
    iget v2, p0, Lcom/android/fmradio/b;->c:I

    invoke-static {v2}, Lw0/f;->h(I)V

    .line 35
    iget-boolean v2, p0, Lcom/android/fmradio/b;->w:Z

    invoke-static {v2}, Lw0/f;->r(I)V

    .line 36
    iget v2, p0, Lcom/android/fmradio/b;->g:I

    invoke-static {v2}, Lw0/f;->D(I)V

    .line 37
    iget v2, p0, Lcom/android/fmradio/b;->h:I

    invoke-static {v2}, Lw0/f;->C(I)V

    .line 38
    iget v2, p0, Lcom/android/fmradio/b;->i:I

    invoke-static {v2}, Lw0/f;->o(I)V

    .line 39
    iget-boolean v2, p0, Lcom/android/fmradio/b;->v:Z

    invoke-static {v2}, Lw0/f;->F(I)V

    .line 40
    iget-boolean v2, p0, Lcom/android/fmradio/b;->u:Z

    invoke-static {v2}, Lw0/f;->j(I)V

    .line 41
    iget-boolean v2, p0, Lcom/android/fmradio/b;->t:Z

    invoke-static {v2}, Lw0/f;->G(I)V

    .line 42
    iget-boolean v2, p0, Lcom/android/fmradio/b;->x:Z

    invoke-static {v2}, Lw0/f;->q(I)V

    .line 43
    iget-boolean v2, p0, Lcom/android/fmradio/b;->y:Z

    invoke-static {v2}, Lw0/f;->v(I)V

    .line 44
    iget-boolean v2, p0, Lcom/android/fmradio/b;->B:Z

    invoke-static {v2}, Lw0/f;->y(I)V

    .line 45
    iget v2, p0, Lcom/android/fmradio/b;->c:I

    invoke-virtual {p0, v2}, Lcom/android/fmradio/b;->A0(I)V

    .line 46
    iget-boolean v2, p0, Lcom/android/fmradio/b;->v:Z

    invoke-virtual {p0, v2}, Lcom/android/fmradio/b;->w0(Z)Z

    .line 47
    iget v2, p0, Lcom/android/fmradio/b;->e:I

    invoke-static {v2}, Lw0/f;->f(I)V

    .line 48
    :cond_5
    iput-boolean v1, p0, Lcom/android/fmradio/b;->N:Z

    .line 49
    invoke-static {v1}, Lw0/f;->m(I)V

    .line 50
    invoke-static {v0, v3}, Ly0/h;->Y(IZ)V

    return v1
.end method

.method public o(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/fmradio/b;->K()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/fmradio/b;->s:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/fmradio/b;->w:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/fmradio/b;->u0(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public o0()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/fmradio/b;->b:I

    invoke-virtual {p0, v0}, Lcom/android/fmradio/b;->d0(I)Z

    move-result v0

    .line 2
    iget v1, p0, Lcom/android/fmradio/b;->e:I

    if-eqz v0, :cond_2

    const/high16 v0, 0x10000

    if-le v1, v0, :cond_0

    .line 3
    iget v2, p0, Lcom/android/fmradio/b;->o:I

    add-int/2addr v2, v0

    if-lt v1, v2, :cond_1

    .line 4
    :cond_0
    iget v1, p0, Lcom/android/fmradio/b;->o:I

    add-int/2addr v1, v0

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    if-lez v1, :cond_3

    .line 5
    iget v0, p0, Lcom/android/fmradio/b;->p:I

    add-int/lit8 v0, v0, 0x0

    if-lt v1, v0, :cond_1

    .line 6
    :cond_3
    iget v0, p0, Lcom/android/fmradio/b;->p:I

    add-int/lit8 v0, v0, 0x0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    return v1
.end method

.method public p(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "---->> stero: to value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NativeRadio"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean p1, p0, Lcom/android/fmradio/b;->v:Z

    xor-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/android/fmradio/b;->w0(Z)Z

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/fmradio/b;->w0(Z)Z

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/fmradio/b;->w0(Z)Z

    :goto_0
    return-void
.end method

.method public p0(I)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-----------------radioArea  area: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NativeRadio"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    add-int/lit8 v4, v1, 0x1

    const-string/jumbo v5, "setradioarea"

    .line 3
    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 5
    iget-object v5, v0, Lcom/android/fmradio/b;->L:Lcom/android/fmradio/FmNative;

    const/16 v6, 0x14

    invoke-virtual {v5, v6, v2, v4}, Lcom/android/fmradio/FmNative;->systemCtrl(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    const/4 v5, 0x5

    const/4 v6, 0x3

    const/16 v7, 0x10

    const/4 v8, 0x2

    const/4 v9, 0x4

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-nez v2, :cond_7

    .line 6
    iget v2, v0, Lcom/android/fmradio/b;->l:I

    const-string v12, "persist.fyt.fm.surport"

    invoke-static {v12, v2}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/android/fmradio/b;->l:I

    and-int/lit8 v12, v2, 0x4

    if-eqz v12, :cond_0

    move v12, v10

    goto :goto_0

    :cond_0
    move v12, v11

    .line 7
    :goto_0
    iput-boolean v12, v0, Lcom/android/fmradio/b;->s:Z

    and-int/lit8 v13, v2, 0x8

    if-eqz v13, :cond_1

    move v13, v10

    goto :goto_1

    :cond_1
    move v13, v11

    .line 8
    :goto_1
    iput-boolean v13, v0, Lcom/android/fmradio/b;->t:Z

    and-int/2addr v2, v7

    if-eqz v2, :cond_2

    move v2, v10

    goto :goto_2

    :cond_2
    move v2, v11

    .line 9
    :goto_2
    iput-boolean v2, v0, Lcom/android/fmradio/b;->u:Z

    .line 10
    invoke-static {v12}, Lw0/f;->H(I)V

    const-string v2, "radiorangs"

    .line 11
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    const-string v12, "defaultband"

    .line 12
    invoke-virtual {v4, v12}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    .line 13
    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_3

    .line 15
    array-length v12, v2

    const/16 v13, 0x9

    if-lt v12, v13, :cond_3

    .line 16
    iget-object v12, v0, Lcom/android/fmradio/b;->q:Lcom/android/fmradio/a$a;

    new-instance v13, Lcom/android/fmradio/a;

    aget v14, v2, v10

    aget v15, v2, v11

    aget v7, v2, v8

    invoke-direct {v13, v14, v15, v7}, Lcom/android/fmradio/a;-><init>(III)V

    iput-object v13, v12, Lcom/android/fmradio/a$a;->a:Lcom/android/fmradio/a;

    .line 17
    iget-object v7, v0, Lcom/android/fmradio/b;->q:Lcom/android/fmradio/a$a;

    new-instance v12, Lcom/android/fmradio/a;

    aget v13, v2, v9

    aget v14, v2, v6

    aget v15, v2, v5

    invoke-direct {v12, v13, v14, v15}, Lcom/android/fmradio/a;-><init>(III)V

    iput-object v12, v7, Lcom/android/fmradio/a$a;->b:Lcom/android/fmradio/a;

    .line 18
    iget-object v7, v0, Lcom/android/fmradio/b;->q:Lcom/android/fmradio/a$a;

    new-instance v12, Lcom/android/fmradio/a;

    const/4 v13, 0x7

    aget v13, v2, v13

    const/4 v14, 0x6

    aget v14, v2, v14

    const/16 v15, 0x8

    aget v2, v2, v15

    invoke-direct {v12, v13, v14, v2}, Lcom/android/fmradio/a;-><init>(III)V

    iput-object v12, v7, Lcom/android/fmradio/a$a;->c:Lcom/android/fmradio/a;

    .line 19
    :cond_3
    iget v2, v0, Lcom/android/fmradio/b;->f:I

    if-ne v2, v1, :cond_4

    iget-object v2, v0, Lcom/android/fmradio/b;->m:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-gtz v2, :cond_7

    .line 20
    :cond_4
    iget-object v2, v0, Lcom/android/fmradio/b;->n:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    .line 21
    iget-object v2, v0, Lcom/android/fmradio/b;->m:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    new-array v2, v8, [I

    .line 22
    fill-array-data v2, :array_0

    invoke-static {v9, v2}, Lw0/f;->J(I[I)V

    if-eqz v4, :cond_7

    .line 23
    array-length v2, v4

    const/16 v7, 0x1e

    if-lt v2, v7, :cond_7

    move v2, v11

    move v7, v2

    .line 24
    :goto_3
    array-length v12, v4

    if-ge v2, v12, :cond_6

    .line 25
    new-instance v12, Lh/a;

    aget v13, v4, v2

    invoke-direct {v12, v13, v11}, Lh/a;-><init>(II)V

    .line 26
    iget v13, v12, Lh/a;->c:I

    invoke-virtual {v0, v13}, Lcom/android/fmradio/b;->e0(I)Z

    move-result v13

    if-nez v13, :cond_5

    if-nez v7, :cond_5

    move v7, v2

    :cond_5
    sub-int v13, v2, v7

    .line 27
    iput v13, v12, Lh/a;->a:I

    .line 28
    iget v14, v12, Lh/a;->c:I

    invoke-virtual {v0, v14}, Lcom/android/fmradio/b;->e0(I)Z

    move-result v14

    invoke-virtual {v0, v13, v14}, Lcom/android/fmradio/b;->c0(IZ)I

    move-result v13

    iput v13, v12, Lh/a;->b:I

    .line 29
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "---->>>  add Station : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-virtual {v0, v12}, Lcom/android/fmradio/b;->G0(Lh/a;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 31
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/fmradio/b;->T()V

    .line 32
    sget-object v2, Lw0/e;->d:Lo1/y;

    invoke-virtual {v2}, Lo1/y;->c()V

    .line 33
    invoke-virtual/range {p0 .. p0}, Lcom/android/fmradio/b;->r0()V

    .line 34
    :cond_7
    iput v1, v0, Lcom/android/fmradio/b;->f:I

    .line 35
    iput v11, v0, Lcom/android/fmradio/b;->d:I

    .line 36
    iget-object v2, v0, Lcom/android/fmradio/b;->M:Lo1/h0;

    invoke-virtual {v2, v9, v1}, Lo1/h0;->q(II)V

    .line 37
    iget-object v2, v0, Lcom/android/fmradio/b;->M:Lo1/h0;

    invoke-virtual {v2, v9}, Lo1/h0;->e(I)V

    .line 38
    invoke-static/range {p1 .. p1}, Lw0/f;->c(I)V

    .line 39
    iget v1, v0, Lcom/android/fmradio/b;->b:I

    invoke-virtual {v0, v1}, Lcom/android/fmradio/b;->d0(I)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/android/fmradio/b;->q:Lcom/android/fmradio/a$a;

    iget-object v1, v1, Lcom/android/fmradio/a$a;->c:Lcom/android/fmradio/a;

    invoke-virtual {v1}, Lcom/android/fmradio/a;->b()Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Lcom/android/fmradio/a;

    iget-object v2, v0, Lcom/android/fmradio/b;->q:Lcom/android/fmradio/a$a;

    iget-object v4, v2, Lcom/android/fmradio/a$a;->c:Lcom/android/fmradio/a;

    iget v4, v4, Lcom/android/fmradio/a;->a:I

    iget-object v2, v2, Lcom/android/fmradio/a$a;->a:Lcom/android/fmradio/a;

    iget v7, v2, Lcom/android/fmradio/a;->b:I

    iget v2, v2, Lcom/android/fmradio/a;->c:I

    invoke-direct {v1, v4, v7, v2}, Lcom/android/fmradio/a;-><init>(III)V

    goto :goto_4

    :cond_8
    iget-object v1, v0, Lcom/android/fmradio/b;->q:Lcom/android/fmradio/a$a;

    iget-object v1, v1, Lcom/android/fmradio/a$a;->a:Lcom/android/fmradio/a;

    goto :goto_4

    :cond_9
    iget-object v1, v0, Lcom/android/fmradio/b;->q:Lcom/android/fmradio/a$a;

    iget-object v1, v1, Lcom/android/fmradio/a$a;->b:Lcom/android/fmradio/a;

    .line 40
    :goto_4
    iget-object v2, v0, Lcom/android/fmradio/b;->r:Lcom/android/fmradio/a;

    invoke-virtual {v1, v2}, Lcom/android/fmradio/a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 41
    iput-object v1, v0, Lcom/android/fmradio/b;->r:Lcom/android/fmradio/a;

    new-array v2, v9, [I

    .line 42
    iget v4, v1, Lcom/android/fmradio/a;->a:I

    aput v4, v2, v11

    iget v4, v1, Lcom/android/fmradio/a;->b:I

    aput v4, v2, v10

    iget v4, v1, Lcom/android/fmradio/a;->c:I

    aput v4, v2, v8

    iget v1, v1, Lcom/android/fmradio/a;->d:I

    aput v1, v2, v6

    const/16 v1, 0x10

    invoke-static {v1, v2}, Lw0/f;->J(I[I)V

    .line 43
    iget-object v1, v0, Lcom/android/fmradio/b;->M:Lo1/h0;

    iget v2, v0, Lcom/android/fmradio/b;->f:I

    mul-int/lit8 v2, v2, 0x64

    add-int/2addr v2, v5

    iget v4, v0, Lcom/android/fmradio/b;->b:I

    mul-int/lit8 v4, v4, 0xa

    add-int/2addr v2, v4

    iget v4, v0, Lcom/android/fmradio/b;->c:I

    invoke-virtual {v1, v2, v4}, Lo1/h0;->h(II)I

    move-result v1

    iput v1, v0, Lcom/android/fmradio/b;->c:I

    .line 44
    invoke-virtual {v0, v1}, Lcom/android/fmradio/b;->A0(I)V

    .line 45
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRang : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/fmradio/b;->r:Lcom/android/fmradio/a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " oirt :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/fmradio/b;->q:Lcom/android/fmradio/a$a;

    iget-object v2, v2, Lcom/android/fmradio/a$a;->c:Lcom/android/fmradio/a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public q(I)V
    .locals 0

    return-void
.end method

.method public q0(Ly/b;)V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 1
    iget-object v1, p0, Lcom/android/fmradio/b;->r:Lcom/android/fmradio/a;

    iget v2, v1, Lcom/android/fmradio/a;->a:I

    const/4 v3, 0x0

    aput v2, v0, v3

    iget v2, v1, Lcom/android/fmradio/a;->b:I

    const/4 v3, 0x1

    aput v2, v0, v3

    iget v2, v1, Lcom/android/fmradio/a;->c:I

    const/4 v3, 0x2

    aput v2, v0, v3

    iget v1, v1, Lcom/android/fmradio/a;->d:I

    const/4 v2, 0x3

    aput v1, v0, v2

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-interface {p1, v1, v0, v2, v2}, Ly/b;->H0(I[I[F[Ljava/lang/String;)V

    return-void
.end method

.method public r(I)V
    .locals 0

    return-void
.end method

.method public r0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/fmradio/b;->M:Lo1/h0;

    iget-object v1, p0, Lcom/android/fmradio/b;->n:Landroid/util/SparseIntArray;

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Lo1/h0;->s(ILandroid/util/SparseIntArray;)V

    .line 2
    iget-object v0, p0, Lcom/android/fmradio/b;->M:Lo1/h0;

    invoke-virtual {v0, v2}, Lo1/h0;->e(I)V

    return-void
.end method

.method public reset()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/fmradio/b;->K()Z

    .line 2
    iget-object v0, p0, Lcom/android/fmradio/b;->M:Lo1/h0;

    invoke-virtual {v0}, Lo1/h0;->c()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/android/fmradio/b;->d:I

    .line 4
    iput-boolean v0, p0, Lcom/android/fmradio/b;->v:Z

    .line 5
    iput-boolean v0, p0, Lcom/android/fmradio/b;->w:Z

    .line 6
    iput-boolean v0, p0, Lcom/android/fmradio/b;->x:Z

    .line 7
    iput-boolean v0, p0, Lcom/android/fmradio/b;->y:Z

    .line 8
    iput-boolean v0, p0, Lcom/android/fmradio/b;->z:Z

    .line 9
    iput-boolean v0, p0, Lcom/android/fmradio/b;->A:Z

    .line 10
    iput-boolean v0, p0, Lcom/android/fmradio/b;->B:Z

    .line 11
    iget-object v0, p0, Lcom/android/fmradio/b;->m:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 12
    iget-object v0, p0, Lcom/android/fmradio/b;->n:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 13
    fill-array-data v0, :array_0

    const/4 v1, 0x4

    invoke-static {v1, v0}, Lw0/f;->J(I[I)V

    .line 14
    invoke-virtual {p0}, Lcom/android/fmradio/b;->g0()V

    .line 15
    iget-boolean v0, p0, Lcom/android/fmradio/b;->s:Z

    if-eqz v0, :cond_0

    .line 16
    iget-boolean v0, p0, Lcom/android/fmradio/b;->w:Z

    invoke-virtual {p0, v0}, Lcom/android/fmradio/b;->u(I)V

    :cond_0
    const/4 v0, 0x1

    .line 17
    invoke-virtual {p0, v0}, Lcom/android/fmradio/b;->s(I)V

    .line 18
    iget-boolean v0, p0, Lcom/android/fmradio/b;->w:Z

    invoke-static {v0}, Lw0/f;->r(I)V

    .line 19
    iget v0, p0, Lcom/android/fmradio/b;->g:I

    invoke-static {v0}, Lw0/f;->D(I)V

    .line 20
    iget v0, p0, Lcom/android/fmradio/b;->h:I

    invoke-static {v0}, Lw0/f;->C(I)V

    .line 21
    iget v0, p0, Lcom/android/fmradio/b;->i:I

    invoke-static {v0}, Lw0/f;->o(I)V

    .line 22
    iget-boolean v0, p0, Lcom/android/fmradio/b;->v:Z

    invoke-static {v0}, Lw0/f;->F(I)V

    .line 23
    iget-boolean v0, p0, Lcom/android/fmradio/b;->u:Z

    invoke-static {v0}, Lw0/f;->j(I)V

    .line 24
    iget-boolean v0, p0, Lcom/android/fmradio/b;->t:Z

    invoke-static {v0}, Lw0/f;->G(I)V

    .line 25
    iget-boolean v0, p0, Lcom/android/fmradio/b;->x:Z

    invoke-static {v0}, Lw0/f;->q(I)V

    .line 26
    iget-boolean v0, p0, Lcom/android/fmradio/b;->y:Z

    invoke-static {v0}, Lw0/f;->v(I)V

    .line 27
    iget-boolean v0, p0, Lcom/android/fmradio/b;->B:Z

    invoke-static {v0}, Lw0/f;->y(I)V

    .line 28
    iget v0, p0, Lcom/android/fmradio/b;->c:I

    invoke-virtual {p0, v0}, Lcom/android/fmradio/b;->A0(I)V

    .line 29
    iget v0, p0, Lcom/android/fmradio/b;->e:I

    invoke-static {v0}, Lw0/f;->f(I)V

    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public s(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-boolean p1, p0, Lcom/android/fmradio/b;->j:Z

    if-eq p1, v0, :cond_1

    .line 2
    iput-boolean v0, p0, Lcom/android/fmradio/b;->j:Z

    .line 3
    invoke-static {v0}, Lw0/f;->d(I)V

    :cond_1
    return-void
.end method

.method public final s0(IILjava/util/List;Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lh/a;",
            ">;",
            "Ljava/util/List<",
            "Lh/a;",
            ">;)Z"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "param0"

    .line 3
    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v3, 0x4

    if-lt p1, v3, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/fmradio/b;->V()I

    move-result v3

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/android/fmradio/b;->W()I

    move-result v3

    :goto_0
    const-string/jumbo v4, "sensitivity"

    .line 6
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "------------------->>>>scan  isFm "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/android/fmradio/b;->d0(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "  sens: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NativeRadio"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/fmradio/b;->d0(I)Z

    move-result p1

    const/4 v3, 0x1

    if-nez p1, :cond_1

    const-string p1, "isuseam"

    .line 9
    invoke-virtual {v0, p1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/android/fmradio/b;->L:Lcom/android/fmradio/FmNative;

    invoke-virtual {p1, v3, v0, v1}, Lcom/android/fmradio/FmNative;->systemCtrl(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "scan XXXXXXX  ------------------->>>> systemCtrl start_freq: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ret: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " outparam : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    const/4 v5, 0x0

    if-eq p1, v0, :cond_9

    .line 12
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getShortArray(Ljava/lang/String;)[S

    move-result-object p1

    const-string v0, "param1"

    .line 13
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getShortArray(Ljava/lang/String;)[S

    move-result-object v0

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-------------------->>> scan result size :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_2

    move v2, v5

    goto :goto_1

    :cond_2
    array-length v2, p1

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " start_freq: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_6

    .line 15
    array-length v1, p1

    .line 16
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-------------------->>>scan size :  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v1, :cond_6

    move p2, v5

    :goto_2
    if-ge p2, v1, :cond_5

    .line 17
    iget v2, p0, Lcom/android/fmradio/b;->b:I

    invoke-virtual {p0, v2}, Lcom/android/fmradio/b;->d0(I)Z

    move-result v2

    xor-int/2addr v2, v3

    if-eqz v2, :cond_3

    .line 18
    aget-short v4, p1, p2

    goto :goto_3

    :cond_3
    aget-short v4, p1, p2

    mul-int/lit8 v4, v4, 0xa

    .line 19
    :goto_3
    aget-short v6, v0, p2

    .line 20
    new-instance v7, Lh/a;

    invoke-direct {v7, v4, v6}, Lh/a;-><init>(II)V

    if-eqz v2, :cond_4

    .line 21
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    iput v2, v7, Lh/a;->a:I

    .line 22
    invoke-virtual {p0, v2, v5}, Lcom/android/fmradio/b;->c0(IZ)I

    move-result v2

    iput v2, v7, Lh/a;->b:I

    .line 23
    invoke-interface {p4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 24
    :cond_4
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    iput v2, v7, Lh/a;->a:I

    .line 25
    invoke-virtual {p0, v2, v3}, Lcom/android/fmradio/b;->c0(IZ)I

    move-result v2

    iput v2, v7, Lh/a;->b:I

    .line 26
    invoke-interface {p3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_5
    move p1, v3

    goto :goto_5

    :cond_6
    move p1, v5

    .line 27
    :goto_5
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_7

    move p2, v5

    .line 28
    :goto_6
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_7

    .line 29
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh/a;

    .line 30
    iput p2, v0, Lh/a;->a:I

    .line 31
    invoke-virtual {p0, p2, v3}, Lcom/android/fmradio/b;->c0(IZ)I

    move-result v1

    iput v1, v0, Lh/a;->b:I

    .line 32
    invoke-virtual {p0, v0}, Lcom/android/fmradio/b;->G0(Lh/a;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    .line 33
    :cond_7
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_8

    move p2, v5

    .line 34
    :goto_7
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_8

    .line 35
    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lh/a;

    .line 36
    iput p2, p3, Lh/a;->a:I

    .line 37
    invoke-virtual {p0, p2, v5}, Lcom/android/fmradio/b;->c0(IZ)I

    move-result v0

    iput v0, p3, Lh/a;->b:I

    .line 38
    invoke-virtual {p0, p3}, Lcom/android/fmradio/b;->G0(Lh/a;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    :cond_8
    move v5, p1

    :cond_9
    return v5
.end method

.method public save()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/fmradio/b;->K()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/fmradio/b;->m:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/fmradio/b;->e:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh/a;

    .line 3
    iget v1, p0, Lcom/android/fmradio/b;->c:I

    iput v1, v0, Lh/a;->c:I

    const/4 v1, 0x0

    .line 4
    iput v1, v0, Lh/a;->d:I

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----------------->>> save station : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NativeRadio"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/fmradio/b;->G0(Lh/a;)V

    return-void
.end method

.method public t(I[I[F[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public t0(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fmradio/b;->w:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/fmradio/b;->b:I

    invoke-virtual {p0, v0}, Lcom/android/fmradio/b;->d0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PS:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 4
    :goto_0
    invoke-static {p1}, Lw0/f;->n(Ljava/lang/String;)V

    return-void
.end method

.method public u(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/fmradio/b;->K()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/16 p1, 0x15

    const-string v1, "rdsonoff"

    .line 2
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/fmradio/b;->J(ILjava/lang/String;I)I

    .line 3
    invoke-virtual {p0}, Lcom/android/fmradio/b;->Y()Z

    move-result p1

    .line 4
    iget-boolean v0, p0, Lcom/android/fmradio/b;->w:Z

    if-eq v0, p1, :cond_2

    .line 5
    iput-boolean p1, p0, Lcom/android/fmradio/b;->w:Z

    .line 6
    :cond_2
    iget-boolean p1, p0, Lcom/android/fmradio/b;->w:Z

    invoke-static {p1}, Lw0/f;->r(I)V

    return-void
.end method

.method public u0(I)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/fmradio/b;->i:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v2, :cond_4

    const/16 v3, 0x29

    const/4 v4, 0x2

    if-eq p1, v4, :cond_2

    if-le p1, v4, :cond_0

    add-int/lit8 p1, p1, -0x3

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-lt p1, v3, :cond_1

    goto :goto_1

    :cond_1
    move v0, p1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    if-lt v0, v3, :cond_4

    :cond_3
    move v0, v1

    .line 2
    :cond_4
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "------------>>> ptyIndex to value : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "NativeRadio"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget p1, p0, Lcom/android/fmradio/b;->i:I

    if-eq v0, p1, :cond_5

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x19

    const-string v1, "configdata"

    .line 5
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/fmradio/b;->J(ILjava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_5

    .line 6
    invoke-virtual {p0, v0, v2}, Lcom/android/fmradio/b;->v0(IZ)V

    :cond_5
    return-void
.end method

.method public v(I)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/fmradio/b;->E:Lcom/android/fmradio/b$f;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/fmradio/b;->O()Z

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/fmradio/b;->N()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/fmradio/b;->P()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/fmradio/b;->L()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/fmradio/b;->M()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const-string p1, "NativeRadio"

    const-string v0, "----------------->>> search"

    .line 4
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    new-instance p1, Lcom/android/fmradio/b$f;

    iget v0, p0, Lcom/android/fmradio/b;->b:I

    invoke-virtual {p0, v0}, Lcom/android/fmradio/b;->d0(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    :goto_0
    iget-object v1, p0, Lcom/android/fmradio/b;->r:Lcom/android/fmradio/a;

    iget v1, v1, Lcom/android/fmradio/a;->a:I

    int-to-float v1, v1

    invoke-direct {p1, p0, v0, v1}, Lcom/android/fmradio/b$f;-><init>(Lcom/android/fmradio/b;IF)V

    iput-object p1, p0, Lcom/android/fmradio/b;->E:Lcom/android/fmradio/b$f;

    .line 6
    iget-object v0, p0, Lcom/android/fmradio/b;->J:Landroid/os/Handler;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public v0(IZ)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "---->> setPtyId ptyIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/fmradio/b;->i:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to pty = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  mState: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/fmradio/b;->a:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "NativeRadio"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget v0, p0, Lcom/android/fmradio/b;->a:I

    sget v4, Lcom/android/fmradio/b;->a0:I

    if-ne v0, v4, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x16

    .line 3
    iget v4, p0, Lcom/android/fmradio/b;->i:I

    const-string v5, "PTYconfig"

    invoke-virtual {p0, v0, v5, v4}, Lcom/android/fmradio/b;->b0(ILjava/lang/String;I)I

    move-result v0

    .line 4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/fmradio/b;->i:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  value: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget v0, p0, Lcom/android/fmradio/b;->i:I

    if-eq v0, p1, :cond_2

    .line 6
    iput p1, p0, Lcom/android/fmradio/b;->i:I

    if-lez p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 7
    :goto_0
    iput-boolean v0, p0, Lcom/android/fmradio/b;->z:Z

    .line 8
    iget-object v0, p0, Lcom/android/fmradio/b;->M:Lo1/h0;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Lo1/h0;->q(II)V

    .line 9
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPtyId ptyIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/fmradio/b;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "  toSeek: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " isRdsPtyEnable :"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/fmradio/b;->z:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_4

    .line 10
    iget-boolean p1, p0, Lcom/android/fmradio/b;->w:Z

    if-eqz p1, :cond_4

    .line 11
    invoke-virtual {p0}, Lcom/android/fmradio/b;->K()Z

    .line 12
    iget-boolean p1, p0, Lcom/android/fmradio/b;->y:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/fmradio/b;->F:Lcom/android/fmradio/b$g;

    if-eqz p1, :cond_3

    .line 13
    invoke-virtual {p1}, Lcom/android/fmradio/b$g;->b()V

    .line 14
    :cond_3
    iget-boolean p1, p0, Lcom/android/fmradio/b;->w:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/android/fmradio/b;->z:Z

    if-eqz p1, :cond_4

    .line 15
    new-instance p1, Lcom/android/fmradio/b$g;

    iget p2, p0, Lcom/android/fmradio/b;->c:I

    int-to-float p2, p2

    const/16 v0, 0x1d

    invoke-direct {p1, p0, p2, v0}, Lcom/android/fmradio/b$g;-><init>(Lcom/android/fmradio/b;FI)V

    iput-object p1, p0, Lcom/android/fmradio/b;->G:Lcom/android/fmradio/b$g;

    const-wide/16 v0, 0x12c

    .line 16
    invoke-virtual {p1, v0, v1}, Lcom/android/fmradio/b$g;->c(J)V

    .line 17
    :cond_4
    iget p1, p0, Lcom/android/fmradio/b;->i:I

    invoke-static {p1}, Lw0/f;->o(I)V

    return-void
.end method

.method public w(I)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/fmradio/b;->s:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/fmradio/b;->w:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    iget-boolean p1, p0, Lcom/android/fmradio/b;->y:Z

    xor-int/lit8 v0, p1, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 3
    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-------------->>> rdsTaEnable toVar : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "NativeRadio"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-boolean p1, p0, Lcom/android/fmradio/b;->y:Z

    if-eq v0, p1, :cond_4

    const/16 p1, 0x17

    const-string v1, "configdata"

    .line 5
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/fmradio/b;->J(ILjava/lang/String;I)I

    :cond_4
    :goto_1
    return-void
.end method

.method public w0(Z)Z
    .locals 6

    const/16 v0, 0x13

    const-string v1, "isforcemono"

    const/4 v2, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/fmradio/b;->b0(ILjava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eq v3, p1, :cond_1

    const/16 v3, 0xa

    xor-int/2addr p1, v4

    const-string v5, "forcemono"

    .line 2
    invoke-virtual {p0, v3, v5, p1}, Lcom/android/fmradio/b;->J(ILjava/lang/String;I)I

    .line 3
    :cond_1
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/fmradio/b;->b0(ILjava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move v4, v2

    .line 4
    :goto_1
    iput-boolean v4, p0, Lcom/android/fmradio/b;->v:Z

    .line 5
    iget-object p1, p0, Lcom/android/fmradio/b;->J:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/fmradio/b;->S:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz v4, :cond_3

    .line 6
    iget-object p1, p0, Lcom/android/fmradio/b;->J:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/fmradio/b;->S:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 7
    :cond_3
    invoke-static {v2}, Lw0/f;->F(I)V

    :goto_2
    return v4
.end method

.method public x(I)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/fmradio/b;->K()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "---->> band value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NativeRadio"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget v0, p0, Lcom/android/fmradio/b;->b:I

    const/4 v1, -0x4

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-eq p1, v1, :cond_6

    const/4 v4, -0x3

    if-eq p1, v4, :cond_4

    const/4 v2, -0x2

    if-eq p1, v2, :cond_2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/fmradio/b;->H(I)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/fmradio/b;->x(I)V

    goto :goto_0

    :cond_2
    if-eq v0, v3, :cond_3

    move v0, v3

    .line 6
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/fmradio/b;->I(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/fmradio/b;->x(I)V

    goto :goto_0

    :cond_4
    if-eq v0, v2, :cond_5

    move v0, v2

    .line 7
    :cond_5
    invoke-virtual {p0, v0}, Lcom/android/fmradio/b;->I(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/fmradio/b;->x(I)V

    goto :goto_0

    :cond_6
    if-ge v0, v3, :cond_7

    move v2, v3

    .line 8
    :cond_7
    invoke-virtual {p0, v2}, Lcom/android/fmradio/b;->I(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/fmradio/b;->x(I)V

    :goto_0
    return-void
.end method

.method public x0(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-boolean p1, p0, Lcom/android/fmradio/b;->y:Z

    if-eq p1, v0, :cond_1

    .line 2
    iput-boolean v0, p0, Lcom/android/fmradio/b;->y:Z

    .line 3
    :cond_1
    iget-boolean p1, p0, Lcom/android/fmradio/b;->y:Z

    invoke-virtual {p0, p1}, Lcom/android/fmradio/b;->Q(Z)V

    .line 4
    iget-boolean p1, p0, Lcom/android/fmradio/b;->y:Z

    invoke-static {p1}, Lw0/f;->v(I)V

    return-void
.end method

.method public y(II)V
    .locals 7

    const-string v0, " to value: "

    const-string v1, "NativeRadio"

    const/4 v2, -0x2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p1, :cond_a

    if-eq p1, v5, :cond_0

    goto/16 :goto_2

    .line 1
    :cond_0
    sget p1, Lcom/android/fmradio/b;->V:I

    if-lt p2, p1, :cond_3

    sget v6, Lcom/android/fmradio/b;->W:I

    if-gt p2, v6, :cond_3

    .line 2
    iget-boolean v2, p0, Lcom/android/fmradio/b;->k:Z

    xor-int/2addr v2, v5

    if-nez p2, :cond_1

    move v4, v5

    :cond_1
    and-int/2addr v2, v4

    if-eqz v2, :cond_2

    move p2, v5

    .line 3
    :cond_2
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v6, p1}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_0

    :cond_3
    if-ne p2, v3, :cond_6

    .line 4
    iget-boolean p2, p0, Lcom/android/fmradio/b;->k:Z

    xor-int/2addr p2, v5

    if-nez p1, :cond_4

    move v4, v5

    :cond_4
    and-int/2addr p2, v4

    if-eqz p2, :cond_5

    move p1, v5

    .line 5
    :cond_5
    iget p2, p0, Lcom/android/fmradio/b;->g:I

    add-int/2addr p2, v5

    sget v2, Lcom/android/fmradio/b;->W:I

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_0

    :cond_6
    if-ne p2, v2, :cond_9

    .line 6
    iget-boolean p2, p0, Lcom/android/fmradio/b;->k:Z

    xor-int/2addr p2, v5

    if-nez p1, :cond_7

    move v4, v5

    :cond_7
    and-int/2addr p2, v4

    if-eqz p2, :cond_8

    move p1, v5

    .line 7
    :cond_8
    sget p2, Lcom/android/fmradio/b;->W:I

    iget v2, p0, Lcom/android/fmradio/b;->g:I

    sub-int/2addr v2, v5

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 8
    :cond_9
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "------------FM mFmSens : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/fmradio/b;->g:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget p1, p0, Lcom/android/fmradio/b;->g:I

    if-eq v4, p1, :cond_e

    .line 10
    iput v4, p0, Lcom/android/fmradio/b;->g:I

    .line 11
    iget-object p1, p0, Lcom/android/fmradio/b;->M:Lo1/h0;

    const/4 p2, 0x2

    invoke-virtual {p1, p2, v4}, Lo1/h0;->q(II)V

    .line 12
    iget-object p1, p0, Lcom/android/fmradio/b;->M:Lo1/h0;

    invoke-virtual {p1, p2}, Lo1/h0;->e(I)V

    .line 13
    invoke-static {v4}, Lw0/f;->D(I)V

    goto :goto_2

    :cond_a
    if-ne p2, v3, :cond_b

    .line 14
    sget p1, Lcom/android/fmradio/b;->Y:I

    iget p2, p0, Lcom/android/fmradio/b;->h:I

    add-int/2addr p2, v5

    sget v2, Lcom/android/fmradio/b;->Z:I

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_1

    :cond_b
    if-ne p2, v2, :cond_c

    .line 15
    sget p1, Lcom/android/fmradio/b;->Z:I

    iget p2, p0, Lcom/android/fmradio/b;->h:I

    sub-int/2addr p2, v5

    sget v2, Lcom/android/fmradio/b;->Y:I

    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_1

    .line 16
    :cond_c
    sget p1, Lcom/android/fmradio/b;->Y:I

    if-lt p2, p1, :cond_d

    sget p1, Lcom/android/fmradio/b;->Z:I

    if-gt p2, p1, :cond_d

    goto :goto_1

    :cond_d
    move p2, v4

    .line 17
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------------AM mAmSens : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/fmradio/b;->h:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    iget p1, p0, Lcom/android/fmradio/b;->h:I

    if-eq p2, p1, :cond_e

    .line 19
    iput p2, p0, Lcom/android/fmradio/b;->h:I

    .line 20
    iget-object p1, p0, Lcom/android/fmradio/b;->M:Lo1/h0;

    invoke-virtual {p1, v5, p2}, Lo1/h0;->q(II)V

    .line 21
    iget-object p1, p0, Lcom/android/fmradio/b;->M:Lo1/h0;

    invoke-virtual {p1, v5}, Lo1/h0;->e(I)V

    .line 22
    invoke-static {p2}, Lw0/f;->C(I)V

    :cond_e
    :goto_2
    return-void
.end method

.method public y0(I)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/fmradio/b;->C:I

    if-eq v0, p1, :cond_4

    .line 2
    iput p1, p0, Lcom/android/fmradio/b;->C:I

    .line 3
    iget-boolean v0, p0, Lcom/android/fmradio/b;->w:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/fmradio/b;->y:Z

    if-eqz v0, :cond_4

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-------------->>> setTaState state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NativeRadio"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget v0, p0, Lcom/android/fmradio/b;->C:I

    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 6
    iget v0, p0, Lcom/android/fmradio/b;->a:I

    sget v3, Lcom/android/fmradio/b;->b0:I

    if-ne v0, v3, :cond_0

    sget v0, Lw0/d;->r:I

    if-eq v0, v2, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/android/fmradio/b;->P()Z

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/android/fmradio/b;->F:Lcom/android/fmradio/b$g;

    .line 9
    :cond_0
    sget v0, Lw0/d;->r:I

    if-nez v0, :cond_4

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-------------->>> 00 setTaState state : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object v0, p0, Lcom/android/fmradio/b;->F:Lcom/android/fmradio/b$g;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/android/fmradio/b$f;->d:Z

    if-nez v0, :cond_2

    .line 12
    :cond_1
    new-instance v0, Lcom/android/fmradio/b$g;

    iget v1, p0, Lcom/android/fmradio/b;->c:I

    int-to-float v1, v1

    const/16 v2, 0x1c

    invoke-direct {v0, p0, v1, v2}, Lcom/android/fmradio/b$g;-><init>(Lcom/android/fmradio/b;FI)V

    iput-object v0, p0, Lcom/android/fmradio/b;->F:Lcom/android/fmradio/b$g;

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/android/fmradio/b;->F:Lcom/android/fmradio/b$g;

    const-wide/16 v1, 0x4e20

    invoke-virtual {v0, v1, v2}, Lcom/android/fmradio/b$g;->c(J)V

    goto :goto_0

    :cond_3
    if-ne v0, v2, :cond_4

    .line 14
    iget-object v0, p0, Lcom/android/fmradio/b;->F:Lcom/android/fmradio/b$g;

    if-eqz v0, :cond_4

    .line 15
    iget-object v1, p0, Lcom/android/fmradio/b;->J:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 16
    :cond_4
    :goto_0
    invoke-static {p1}, Lw0/f;->u(I)V

    return-void
.end method

.method public z(I)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "selectChannel----->>> mState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/fmradio/b;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NativeRadio"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/android/fmradio/b;->K()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget v0, p0, Lcom/android/fmradio/b;->b:I

    invoke-virtual {p0, v0}, Lcom/android/fmradio/b;->d0(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_1

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/android/fmradio/b;->c0(IZ)I

    move-result p1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/fmradio/b;->m:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh/a;

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "selectChannel stationId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " station: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    .line 7
    iget p1, v0, Lh/a;->c:I

    invoke-virtual {p0, p1}, Lcom/android/fmradio/b;->A0(I)V

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-------------------->>>station:  station.id: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lh/a;->b:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget p1, v0, Lh/a;->b:I

    invoke-virtual {p0, p1}, Lcom/android/fmradio/b;->F0(I)V

    :cond_2
    return-void
.end method

.method public z0(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    iput-boolean v0, p0, Lcom/android/fmradio/b;->B:Z

    .line 2
    invoke-static {v0}, Lw0/f;->y(I)V

    return-void
.end method
