.class public Lmodule/canbus/h0;
.super Lk0/lt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmodule/canbus/h0$f;
    }
.end annotation


# static fields
.field public static final A:Lo1/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo1/f<",
            "Lmodule/canbus/h0$f;",
            ">;"
        }
    .end annotation
.end field

.field public static l:I

.field public static m:I

.field public static n:I

.field public static o:I

.field public static p:I

.field public static q:I

.field public static r:I

.field public static s:I

.field public static t:I

.field public static u:I

.field public static v:I

.field public static w:I

.field public static final x:[I

.field public static final y:[I

.field public static final z:[I


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Ljava/lang/Runnable;

.field public f:Ljava/lang/Runnable;

.field public g:Ljava/lang/Runnable;

.field public h:Ljava/lang/Runnable;

.field public i:I

.field public j:Ljava/lang/Runnable;

.field public k:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x25

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lmodule/canbus/h0;->x:[I

    const/16 v0, 0x13

    new-array v1, v0, [I

    .line 2
    fill-array-data v1, :array_1

    sput-object v1, Lmodule/canbus/h0;->y:[I

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_2

    sput-object v0, Lmodule/canbus/h0;->z:[I

    .line 4
    new-instance v0, Lo1/f;

    invoke-direct {v0}, Lo1/f;-><init>()V

    sput-object v0, Lmodule/canbus/h0;->A:Lo1/f;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1e
        0x1e
        0x1e
        0x1e
        0x1e
        0x1e
    .end array-data

    :array_1
    .array-data 4
        0xf7
        0xf8
        0xf9
        0xfa
        0xfb
        0xfc
        0xfd
        0xfe
        0xff
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
    .end array-data

    :array_2
    .array-data 4
        0xf7
        0xf8
        0xf9
        0xfa
        0xfb
        0xfc
        0xfd
        0xfe
        0xff
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lmodule/canbus/h0;->c:I

    const/16 v1, 0x8

    new-array v1, v1, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 3
    fill-array-data v3, :array_0

    aput-object v3, v1, v0

    new-array v3, v2, [I

    fill-array-data v3, :array_1

    const/4 v4, 0x1

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_2

    aput-object v3, v1, v2

    new-array v3, v2, [I

    fill-array-data v3, :array_3

    const/4 v4, 0x3

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_4

    const/4 v4, 0x4

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_5

    const/4 v4, 0x5

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_6

    const/4 v4, 0x6

    aput-object v3, v1, v4

    new-array v2, v2, [I

    fill-array-data v2, :array_7

    const/4 v3, 0x7

    aput-object v2, v1, v3

    iput-object v1, p0, Lmodule/canbus/h0;->d:[[I

    .line 4
    new-instance v1, Lmodule/canbus/h0$a;

    invoke-direct {v1, p0}, Lmodule/canbus/h0$a;-><init>(Lmodule/canbus/h0;)V

    iput-object v1, p0, Lmodule/canbus/h0;->e:Ljava/lang/Runnable;

    .line 5
    new-instance v1, Lmodule/canbus/h0$b;

    invoke-direct {v1, p0}, Lmodule/canbus/h0$b;-><init>(Lmodule/canbus/h0;)V

    iput-object v1, p0, Lmodule/canbus/h0;->f:Ljava/lang/Runnable;

    .line 6
    new-instance v1, Lmodule/canbus/h0$c;

    invoke-direct {v1, p0}, Lmodule/canbus/h0$c;-><init>(Lmodule/canbus/h0;)V

    iput-object v1, p0, Lmodule/canbus/h0;->g:Ljava/lang/Runnable;

    .line 7
    new-instance v1, Lmodule/canbus/h0$d;

    invoke-direct {v1, p0}, Lmodule/canbus/h0$d;-><init>(Lmodule/canbus/h0;)V

    iput-object v1, p0, Lmodule/canbus/h0;->h:Ljava/lang/Runnable;

    const/16 v1, 0x64

    .line 8
    iput v1, p0, Lmodule/canbus/h0;->i:I

    .line 9
    new-instance v1, Lmodule/canbus/h0$e;

    invoke-direct {v1, p0}, Lmodule/canbus/h0$e;-><init>(Lmodule/canbus/h0;)V

    iput-object v1, p0, Lmodule/canbus/h0;->j:Ljava/lang/Runnable;

    .line 10
    iput v0, p0, Lmodule/canbus/h0;->k:I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x8
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x3
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x12
    .end array-data

    :array_5
    .array-data 4
        0x6
        0xc
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_7
    .array-data 4
        0x8
        0xd
    .end array-data
.end method

.method public static synthetic A3(Lmodule/canbus/h0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/h0;->F3()V

    return-void
.end method

.method public static synthetic B3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/h0;->o:I

    return v0
.end method

.method public static C3(II)V
    .locals 1

    .line 1
    sget-object v0, Lmodule/canbus/h0;->A:Lo1/f;

    invoke-virtual {v0, p0}, Lo1/f;->c(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmodule/canbus/h0$f;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lmodule/canbus/h0$f;->a(I)V

    :cond_0
    return-void
.end method

.method public static synthetic e3(Lmodule/canbus/h0;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/h0;->i:I

    return p0
.end method

.method public static synthetic f3(Lmodule/canbus/h0;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/h0;->k:I

    return p0
.end method

.method public static synthetic g3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/h0;->r:I

    return v0
.end method

.method public static synthetic h3(Lmodule/canbus/h0;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/h0;->k:I

    return p1
.end method

.method public static synthetic i3(Lmodule/canbus/h0;)I
    .locals 2

    .line 1
    iget v0, p0, Lmodule/canbus/h0;->k:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmodule/canbus/h0;->k:I

    return v0
.end method

.method public static synthetic j3(Lmodule/canbus/h0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/h0;->H3()V

    return-void
.end method

.method public static synthetic k3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/h0;->p:I

    return v0
.end method

.method public static synthetic l3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/h0;->s:I

    return v0
.end method

.method public static synthetic m3(Lmodule/canbus/h0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/h0;->I3()V

    return-void
.end method

.method public static synthetic n3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/h0;->t:I

    return v0
.end method

.method public static synthetic o3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/h0;->v:I

    return v0
.end method

.method public static synthetic p3(Lmodule/canbus/h0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/h0;->G3()V

    return-void
.end method

.method public static synthetic q3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/h0;->u:I

    return v0
.end method

.method public static synthetic r3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/h0;->w:I

    return v0
.end method

.method public static synthetic s3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/h0;->m:I

    return v0
.end method

.method public static synthetic t3(Lmodule/canbus/h0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/h0;->E3()V

    return-void
.end method

.method public static synthetic u3(I)I
    .locals 0

    .line 1
    sput p0, Lmodule/canbus/h0;->m:I

    return p0
.end method

.method public static synthetic v3()[I
    .locals 1

    .line 1
    sget-object v0, Lmodule/canbus/h0;->x:[I

    return-object v0
.end method

.method public static synthetic w3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/h0;->l:I

    return v0
.end method

.method public static synthetic x3(Lmodule/canbus/h0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/h0;->J3()V

    return-void
.end method

.method public static synthetic y3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/h0;->n:I

    return v0
.end method

.method public static synthetic z3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/h0;->q:I

    return v0
.end method


# virtual methods
.method public final D3()V
    .locals 1

    .line 1
    sget v0, Ly0/f;->c:I

    invoke-virtual {p0, v0}, Lmodule/canbus/h0;->Z2(I)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lmodule/canbus/h0;->P2([I)V

    .line 3
    invoke-virtual {p0, v0}, Lmodule/canbus/h0;->R2([I)V

    return-void
.end method

.method public final declared-synchronized E3()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    sget v0, Lmodule/canbus/h0;->w:I

    const/4 v1, 0x1

    .line 4
    invoke-static {v1, v0}, Lmodule/canbus/h0;->C3(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized F3()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    sget v0, Lmodule/canbus/h0;->q:I

    const/4 v1, 0x3

    .line 4
    invoke-static {v1, v0}, Lmodule/canbus/h0;->C3(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized G3()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    sget v0, Lmodule/canbus/h0;->v:I

    const/4 v1, 0x2

    .line 4
    invoke-static {v1, v0}, Lmodule/canbus/h0;->C3(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized H3()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    sget v0, Lmodule/canbus/h0;->r:I

    const/4 v1, 0x5

    .line 4
    invoke-static {v1, v0}, Lmodule/canbus/h0;->C3(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized I3()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    sget v0, Lmodule/canbus/h0;->s:I

    const/4 v1, 0x4

    .line 4
    invoke-static {v1, v0}, Lmodule/canbus/h0;->C3(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized J3()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    sget v0, Lmodule/canbus/h0;->l:I

    .line 4
    sget v1, Lmodule/canbus/h0;->m:I

    if-ge v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-le v0, v1, :cond_2

    add-int/lit8 v0, v0, -0x1

    :cond_2
    :goto_0
    const/4 v1, 0x0

    .line 5
    invoke-static {v1, v0}, Lmodule/canbus/h0;->C3(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public P2([I)V
    .locals 5

    .line 1
    invoke-static {}, Lk0/nt;->a()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Lk0/lt;->a:Lk0/mt;

    iget p1, p1, Lk0/mt;->d:I

    if-ne p1, v0, :cond_1

    sget p1, Lk0/nt;->c:I

    if-ne p1, v0, :cond_1

    .line 2
    :cond_0
    sget-object p1, Lmodule/canbus/h0;->y:[I

    sget-object v1, Ly0/f;->c0:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    const/16 v4, 0x12

    mul-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x14

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    invoke-static {v3, v2, v4}, Lo1/o0;->a(III)I

    move-result v3

    aget v3, p1, v3

    sput v3, Lmodule/canbus/h0;->q:I

    .line 3
    aget v0, v1, v0

    mul-int/2addr v0, v4

    div-int/lit8 v0, v0, 0x14

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-static {v0, v2, v4}, Lo1/o0;->a(III)I

    move-result v0

    aget v0, p1, v0

    sput v0, Lmodule/canbus/h0;->r:I

    const/4 v0, 0x2

    .line 4
    aget v0, v1, v0

    mul-int/2addr v0, v4

    div-int/lit8 v0, v0, 0x14

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-static {v0, v2, v4}, Lo1/o0;->a(III)I

    move-result v0

    aget p1, p1, v0

    sput p1, Lmodule/canbus/h0;->s:I

    :cond_1
    return-void
.end method

.method public R2([I)V
    .locals 3

    .line 1
    invoke-static {}, Lk0/nt;->a()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lk0/lt;->a:Lk0/mt;

    iget p1, p1, Lk0/mt;->c:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    sget p1, Lk0/nt;->c:I

    if-ne p1, v0, :cond_1

    .line 2
    :cond_0
    sget-object p1, Lmodule/canbus/h0;->z:[I

    sget v0, Ly0/f;->l:I

    const/16 v1, 0x12

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lo1/o0;->a(III)I

    move-result v0

    aget v0, p1, v0

    sput v0, Lmodule/canbus/h0;->v:I

    .line 3
    sget v0, Ly0/f;->j:I

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-static {v0, v2, v1}, Lo1/o0;->a(III)I

    move-result v0

    aget p1, p1, v0

    sput p1, Lmodule/canbus/h0;->w:I

    :cond_1
    return-void
.end method

.method public S2()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    .line 3
    iput v1, v0, Lk0/mt;->f:I

    .line 4
    iput v1, v0, Lk0/mt;->g:I

    .line 5
    iput v1, v0, Lk0/mt;->o:I

    .line 6
    sget v2, Lk0/nt;->c:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    .line 7
    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    :cond_0
    const/4 v0, 0x5

    new-array v2, v0, [I

    .line 8
    fill-array-data v2, :array_0

    invoke-static {v2}, Lz/k;->s([I)V

    new-array v2, v0, [I

    .line 9
    fill-array-data v2, :array_1

    invoke-static {v2}, Lz/k;->s([I)V

    new-array v0, v0, [I

    .line 10
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    .line 11
    sget v0, Lk0/nt;->c:I

    if-ne v0, v1, :cond_1

    .line 12
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->d:I

    .line 13
    iput v1, v0, Lk0/mt;->c:I

    .line 14
    iput v1, v0, Lk0/mt;->b:I

    .line 15
    invoke-virtual {p0}, Lmodule/canbus/h0;->init()V

    .line 16
    iget-object v0, p0, Lmodule/canbus/h0;->j:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    .line 17
    invoke-virtual {p0}, Lmodule/canbus/h0;->D3()V

    .line 18
    iget-object v0, p0, Lmodule/canbus/h0;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 19
    :cond_1
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/h0;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 20
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/h0;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 21
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/h0;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 22
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/h0;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 23
    iget-object v0, p0, Lmodule/canbus/h0;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->y(Ljava/lang/Runnable;)V

    .line 24
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/h0;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x90
        0x2
        0x41
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x90
        0x2
        0x41
        0x2
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x90
        0x2
        0x41
        0x3
    .end array-data
.end method

.method public U2([BII)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x10

    const/4 v4, 0x2

    if-eq v2, v3, :cond_1e

    const/16 v5, 0x16

    const/4 v6, 0x3

    const/16 v7, 0xff

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v2, v5, :cond_1d

    const/16 v5, 0x30

    if-eq v2, v5, :cond_1c

    const/16 v5, 0x41

    const/4 v10, 0x4

    const/4 v11, 0x5

    if-eq v2, v5, :cond_16

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, v1, v2

    add-int/lit8 v2, p2, 0x3

    .line 3
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x4

    .line 4
    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x5

    .line 5
    aget-byte v4, v1, v4

    add-int/lit8 v5, p2, 0x6

    .line 6
    aget-byte v5, v1, v5

    add-int/lit8 v6, p2, 0x7

    .line 7
    aget-byte v6, v1, v6

    add-int/lit8 v8, p2, 0x8

    .line 8
    aget-byte v1, v1, v8

    and-int/2addr v2, v7

    .line 9
    sput v2, Lmodule/canbus/h0;->l:I

    and-int/lit16 v2, v4, 0xff

    .line 10
    sput v2, Lmodule/canbus/h0;->t:I

    and-int/lit16 v2, v3, 0xff

    .line 11
    sput v2, Lmodule/canbus/h0;->u:I

    and-int/lit16 v2, v5, 0xff

    .line 12
    sput v2, Lmodule/canbus/h0;->n:I

    and-int/lit16 v2, v6, 0xff

    .line 13
    sput v2, Lmodule/canbus/h0;->o:I

    and-int/2addr v1, v7

    .line 14
    sput v1, Lmodule/canbus/h0;->p:I

    goto/16 :goto_9

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 15
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    const/16 v3, 0x2af8

    invoke-static {v2, v1, v9, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_9

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 16
    aget-byte v1, v1, v2

    const/16 v2, 0x6b

    new-array v3, v9, [I

    shr-int/lit8 v4, v1, 0x1

    and-int/2addr v4, v9

    aput v4, v3, v8

    .line 17
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v9, [I

    shr-int/2addr v1, v8

    and-int/2addr v1, v9

    aput v1, v3, v8

    .line 18
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 19
    invoke-static {}, Lk0/nt;->a()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 20
    invoke-static {v4}, Lu0/d;->C2(I)V

    goto/16 :goto_9

    :pswitch_3
    add-int/lit8 v2, p2, 0x3

    .line 21
    aget-byte v1, v1, v2

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 22
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 23
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 24
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x2

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 25
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.syu.reversefrontdoor"

    .line 26
    invoke-static {v2, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x0

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 27
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/2addr v1, v9

    and-int/2addr v1, v9

    aput v1, v2, v8

    .line 28
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_0
    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x1

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 29
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/2addr v1, v8

    and-int/2addr v1, v9

    aput v1, v2, v8

    .line 30
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :pswitch_4
    add-int/lit8 v2, p2, 0x2

    .line 31
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    invoke-virtual {v0, v2}, Lmodule/canbus/h0;->d3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 32
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    invoke-virtual {v0, v2}, Lmodule/canbus/h0;->d3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 33
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    invoke-virtual {v0, v2}, Lmodule/canbus/h0;->d3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 34
    aget-byte v1, v1, v2

    and-int/2addr v1, v7

    invoke-virtual {v0, v1}, Lmodule/canbus/h0;->d3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_9

    :pswitch_5
    add-int/lit8 v2, p2, 0x2

    .line 35
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    invoke-virtual {v0, v2}, Lmodule/canbus/h0;->d3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 36
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    invoke-virtual {v0, v2}, Lmodule/canbus/h0;->d3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 37
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    invoke-virtual {v0, v2}, Lmodule/canbus/h0;->d3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 38
    aget-byte v1, v1, v2

    and-int/2addr v1, v7

    invoke-virtual {v0, v1}, Lmodule/canbus/h0;->d3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_9

    :pswitch_6
    add-int/lit8 v2, p2, 0x2

    .line 39
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0x3

    .line 40
    aget-byte v4, v1, v4

    add-int/lit8 v5, p2, 0x4

    .line 41
    aget-byte v5, v1, v5

    add-int/lit8 v10, p2, 0x5

    .line 42
    aget-byte v10, v1, v10

    add-int/lit8 v12, p2, 0x6

    .line 43
    aget-byte v12, v1, v12

    add-int/lit8 v13, p2, 0x7

    .line 44
    aget-byte v13, v1, v13

    add-int/lit8 v14, p2, 0x8

    .line 45
    aget-byte v1, v1, v14

    shr-int/lit8 v14, v13, 0x7

    and-int/2addr v14, v9

    const/16 v15, 0xb

    const/16 v6, 0xa

    const/16 v3, 0x43

    const/16 v16, -0x1

    const/16 v17, -0x3

    const/16 v18, -0x2

    const/16 v7, 0xf

    const/16 v11, 0x1f

    if-nez v14, :cond_a

    new-array v14, v9, [I

    shr-int/lit8 v19, v2, 0x7

    and-int/lit8 v19, v19, 0x1

    aput v19, v14, v8

    .line 46
    invoke-static {v6, v14}, Lk0/qt;->y0(I[I)V

    new-array v6, v9, [I

    shr-int/lit8 v14, v2, 0x6

    and-int/2addr v14, v9

    aput v14, v6, v8

    .line 47
    invoke-static {v15, v6}, Lk0/qt;->y0(I[I)V

    const/16 v6, 0xc

    new-array v14, v9, [I

    shr-int/lit8 v15, v2, 0x5

    and-int/2addr v15, v9

    aput v15, v14, v8

    .line 48
    invoke-static {v6, v14}, Lk0/qt;->y0(I[I)V

    const/16 v6, 0xd

    new-array v14, v9, [I

    shr-int/lit8 v15, v2, 0x4

    and-int/2addr v15, v9

    aput v15, v14, v8

    .line 49
    invoke-static {v6, v14}, Lk0/qt;->y0(I[I)V

    const/16 v6, 0x1a

    new-array v14, v9, [I

    shr-int/lit8 v15, v2, 0x3

    and-int/2addr v15, v9

    aput v15, v14, v8

    .line 50
    invoke-static {v6, v14}, Lk0/qt;->y0(I[I)V

    const/16 v6, 0xe

    new-array v14, v9, [I

    shr-int/lit8 v15, v2, 0x2

    and-int/2addr v15, v9

    aput v15, v14, v8

    .line 51
    invoke-static {v6, v14}, Lk0/qt;->y0(I[I)V

    new-array v6, v9, [I

    shr-int/lit8 v14, v2, 0x1

    and-int/2addr v14, v9

    aput v14, v6, v8

    .line 52
    invoke-static {v7, v6}, Lk0/qt;->y0(I[I)V

    new-array v6, v9, [I

    shr-int/2addr v2, v8

    and-int/2addr v2, v9

    aput v2, v6, v8

    .line 53
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v6, v4, 0x7

    and-int/2addr v6, v9

    aput v6, v2, v8

    const/16 v6, 0x12

    .line 54
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v6, v9, [I

    shr-int/lit8 v14, v4, 0x6

    and-int/2addr v14, v9

    aput v14, v6, v8

    .line 55
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v6, v9, [I

    shr-int/lit8 v14, v4, 0x5

    and-int/2addr v14, v9

    aput v14, v6, v8

    .line 56
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v6, v9, [I

    and-int/2addr v4, v7

    aput v4, v6, v8

    .line 57
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xff

    and-int/lit16 v4, v5, 0xff

    if-eqz v4, :cond_3

    if-eq v4, v11, :cond_2

    if-lez v4, :cond_1

    const/16 v2, 0x12

    if-ge v4, v2, :cond_1

    sub-int/2addr v4, v9

    const/4 v2, 0x5

    mul-int/2addr v4, v2

    add-int/lit16 v4, v4, 0xb4

    goto :goto_0

    :cond_1
    move/from16 v4, v16

    goto :goto_0

    :cond_2
    move/from16 v4, v17

    goto :goto_0

    :cond_3
    move/from16 v4, v18

    :goto_0
    const/16 v2, 0x1b

    new-array v5, v9, [I

    aput v4, v5, v8

    .line 58
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xff

    and-int/lit16 v4, v10, 0xff

    if-eqz v4, :cond_6

    if-eq v4, v11, :cond_5

    if-lez v4, :cond_4

    const/16 v2, 0x12

    if-ge v4, v2, :cond_4

    sub-int/2addr v4, v9

    const/4 v2, 0x5

    mul-int/2addr v4, v2

    add-int/lit16 v4, v4, 0xb4

    goto :goto_1

    :cond_4
    move/from16 v4, v16

    goto :goto_1

    :cond_5
    move/from16 v4, v17

    goto :goto_1

    :cond_6
    move/from16 v4, v18

    :goto_1
    const/16 v2, 0x1c

    new-array v5, v9, [I

    aput v4, v5, v8

    .line 59
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x36

    new-array v4, v9, [I

    shr-int/lit8 v5, v12, 0x7

    and-int/2addr v5, v9

    aput v5, v4, v8

    .line 60
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v4, v12, 0x6

    and-int/2addr v4, v9

    aput v4, v2, v8

    const/16 v4, 0x10

    .line 61
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1d

    new-array v4, v9, [I

    shr-int/lit8 v5, v12, 0x4

    const/4 v6, 0x3

    and-int/2addr v5, v6

    aput v5, v4, v8

    .line 62
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x35

    new-array v4, v9, [I

    shr-int/lit8 v5, v12, 0x2

    and-int/2addr v5, v9

    aput v5, v4, v8

    .line 63
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1e

    new-array v4, v9, [I

    shr-int/lit8 v5, v12, 0x0

    const/4 v6, 0x3

    and-int/2addr v5, v6

    aput v5, v4, v8

    .line 64
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v4, v13, 0x6

    and-int/2addr v4, v9

    aput v4, v2, v8

    .line 65
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x40

    new-array v3, v9, [I

    shr-int/lit8 v4, v13, 0x0

    and-int/2addr v4, v7

    aput v4, v3, v8

    .line 66
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/4 v2, 0x5

    shr-int/lit8 v3, v13, 0x5

    and-int/2addr v3, v9

    if-ne v3, v9, :cond_1f

    const/16 v3, 0xff

    and-int/2addr v1, v3

    if-eqz v1, :cond_8

    if-eq v1, v11, :cond_7

    if-lez v1, :cond_9

    const/16 v3, 0x12

    if-ge v1, v3, :cond_9

    sub-int/2addr v1, v9

    mul-int/2addr v1, v2

    add-int/lit16 v1, v1, 0xb4

    move/from16 v16, v1

    goto :goto_2

    :cond_7
    move/from16 v16, v17

    goto :goto_2

    :cond_8
    move/from16 v16, v18

    :cond_9
    :goto_2
    const/16 v1, 0x28

    new-array v2, v9, [I

    aput v16, v2, v8

    .line 67
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_a
    if-ne v14, v9, :cond_1f

    new-array v1, v9, [I

    shr-int/lit8 v14, v2, 0x7

    and-int/2addr v14, v9

    aput v14, v1, v8

    .line 68
    invoke-static {v6, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v9, [I

    shr-int/lit8 v6, v2, 0x6

    and-int/2addr v6, v9

    aput v6, v1, v8

    .line 69
    invoke-static {v15, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xc

    new-array v6, v9, [I

    shr-int/lit8 v14, v2, 0x5

    and-int/2addr v14, v9

    aput v14, v6, v8

    .line 70
    invoke-static {v1, v6}, Lk0/qt;->y0(I[I)V

    new-array v1, v9, [I

    shr-int/lit8 v6, v2, 0x1

    and-int/2addr v6, v9

    aput v6, v1, v8

    .line 71
    invoke-static {v7, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v9, [I

    shr-int/2addr v2, v8

    and-int/2addr v2, v9

    aput v2, v1, v8

    .line 72
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v9, [I

    shr-int/lit8 v2, v4, 0x7

    and-int/2addr v2, v9

    aput v2, v1, v8

    const/16 v2, 0x12

    .line 73
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x13

    new-array v2, v9, [I

    shr-int/lit8 v6, v4, 0x6

    and-int/2addr v6, v9

    aput v6, v2, v8

    .line 74
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x14

    new-array v2, v9, [I

    shr-int/lit8 v6, v4, 0x5

    and-int/2addr v6, v9

    aput v6, v2, v8

    .line 75
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x15

    new-array v2, v9, [I

    and-int/2addr v4, v7

    aput v4, v2, v8

    .line 76
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xff

    and-int/lit16 v2, v5, 0xff

    if-eqz v2, :cond_d

    if-eq v2, v11, :cond_c

    if-lez v2, :cond_b

    if-ge v2, v11, :cond_b

    sub-int/2addr v2, v9

    const/4 v1, 0x5

    mul-int/2addr v2, v1

    add-int/lit16 v2, v2, 0xb4

    goto :goto_3

    :cond_b
    move/from16 v2, v16

    goto :goto_3

    :cond_c
    move/from16 v2, v17

    goto :goto_3

    :cond_d
    move/from16 v2, v18

    :goto_3
    const/16 v1, 0x1b

    new-array v4, v9, [I

    aput v2, v4, v8

    .line 77
    invoke-static {v1, v4}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xff

    and-int/2addr v1, v10

    if-eqz v1, :cond_f

    if-eq v1, v11, :cond_e

    if-lez v1, :cond_10

    if-ge v1, v11, :cond_10

    sub-int/2addr v1, v9

    const/4 v2, 0x5

    mul-int/2addr v1, v2

    add-int/lit16 v1, v1, 0xb4

    move/from16 v16, v1

    goto :goto_4

    :cond_e
    move/from16 v16, v17

    goto :goto_4

    :cond_f
    move/from16 v16, v18

    :cond_10
    :goto_4
    const/16 v1, 0x1c

    new-array v2, v9, [I

    aput v16, v2, v8

    .line 78
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x36

    new-array v2, v9, [I

    shr-int/lit8 v4, v12, 0x7

    and-int/2addr v4, v9

    aput v4, v2, v8

    .line 79
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    new-array v1, v9, [I

    shr-int/lit8 v2, v12, 0x6

    and-int/2addr v2, v9

    aput v2, v1, v8

    const/16 v2, 0x10

    .line 80
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x1d

    new-array v2, v9, [I

    shr-int/lit8 v4, v12, 0x4

    const/4 v5, 0x3

    and-int/2addr v4, v5

    aput v4, v2, v8

    .line 81
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x35

    new-array v2, v9, [I

    shr-int/lit8 v4, v12, 0x2

    and-int/2addr v4, v9

    aput v4, v2, v8

    .line 82
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x1e

    new-array v2, v9, [I

    shr-int/lit8 v4, v12, 0x0

    const/4 v5, 0x3

    and-int/2addr v4, v5

    aput v4, v2, v8

    .line 83
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    new-array v1, v9, [I

    shr-int/lit8 v2, v13, 0x6

    and-int/2addr v2, v9

    aput v2, v1, v8

    .line 84
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x40

    new-array v2, v9, [I

    shr-int/lit8 v3, v13, 0x0

    and-int/2addr v3, v7

    aput v3, v2, v8

    .line 85
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :pswitch_7
    add-int/lit8 v2, p2, 0x2

    .line 86
    aget-byte v2, v1, v2

    const/4 v3, 0x3

    add-int/lit8 v3, p2, 0x3

    .line 87
    aget-byte v1, v1, v3

    const/16 v3, 0xff

    and-int/2addr v2, v3

    .line 88
    iput v2, v0, Lmodule/canbus/h0;->c:I

    move v2, v8

    .line 89
    :goto_5
    iget-object v3, v0, Lmodule/canbus/h0;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_12

    .line 90
    iget v4, v0, Lmodule/canbus/h0;->c:I

    aget-object v5, v3, v2

    aget v5, v5, v8

    if-ne v4, v5, :cond_11

    if-eqz v4, :cond_12

    .line 91
    iput v2, v0, Lmodule/canbus/h0;->b:I

    goto :goto_6

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_12
    :goto_6
    const/16 v4, 0xff

    and-int/2addr v1, v4

    if-eqz v1, :cond_13

    .line 92
    array-length v1, v3

    if-ge v2, v1, :cond_1f

    .line 93
    aget-object v1, v3, v2

    aget v1, v1, v9

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    .line 94
    :cond_13
    iget v1, v0, Lmodule/canbus/h0;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_14

    const/16 v2, 0xff

    if-eq v1, v2, :cond_15

    .line 95
    aget-object v1, v3, v1

    aget v1, v1, v9

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto :goto_7

    :cond_14
    const/16 v2, 0xff

    .line 96
    :cond_15
    :goto_7
    iput v2, v0, Lmodule/canbus/h0;->b:I

    goto/16 :goto_9

    :cond_16
    add-int/lit8 v2, p2, 0x2

    .line 97
    aget-byte v2, v1, v2

    if-eq v2, v9, :cond_1a

    if-eq v2, v4, :cond_18

    const/4 v3, 0x3

    if-eq v2, v3, :cond_17

    goto/16 :goto_9

    :cond_17
    add-int/lit8 v2, p2, 0x3

    .line 98
    aget-byte v1, v1, v2

    const/16 v2, 0x63

    new-array v3, v9, [I

    shr-int/lit8 v4, v1, 0x7

    and-int/2addr v4, v9

    aput v4, v3, v8

    .line 99
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v9, [I

    shr-int/lit8 v1, v1, 0x6

    and-int/2addr v1, v9

    aput v1, v3, v8

    .line 100
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_18
    const/16 v2, 0x6e

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x3

    .line 101
    aget-byte v5, v1, v4

    shl-int/lit8 v5, v5, 0x8

    const v6, 0xff00

    and-int/2addr v5, v6

    add-int/lit8 v7, p2, 0x4

    aget-byte v10, v1, v7

    shl-int/2addr v10, v8

    const/16 v11, 0xff

    and-int/2addr v10, v11

    or-int/2addr v5, v10

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x408

    new-array v3, v9, [I

    .line 102
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v6

    aget-byte v5, v1, v7

    shl-int/2addr v5, v8

    and-int/2addr v5, v11

    or-int/2addr v4, v5

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x407

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x5

    .line 103
    aget-byte v5, v1, v4

    shl-int/lit8 v5, v5, 0x8

    and-int/2addr v5, v6

    add-int/lit8 v7, p2, 0x6

    aget-byte v10, v1, v7

    shl-int/2addr v10, v8

    const/16 v11, 0xff

    and-int/2addr v10, v11

    or-int/2addr v5, v10

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v9, [I

    .line 104
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v6

    aget-byte v5, v1, v7

    shl-int/2addr v5, v8

    and-int/2addr v5, v11

    or-int/2addr v4, v5

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x7

    .line 105
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v6

    add-int/lit8 v5, p2, 0x8

    aget-byte v5, v1, v5

    shl-int/2addr v5, v8

    const/16 v7, 0xff

    and-int/2addr v5, v7

    or-int/2addr v4, v5

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x9

    .line 106
    aget-byte v5, v1, v4

    shl-int/lit8 v5, v5, 0x8

    and-int/2addr v5, v6

    add-int/lit8 v7, p2, 0xa

    aget-byte v10, v1, v7

    shl-int/2addr v10, v8

    const/16 v11, 0xff

    and-int/2addr v10, v11

    or-int/2addr v5, v10

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 107
    aget-byte v2, v1, v4

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v2, v6

    aget-byte v3, v1, v7

    shl-int/2addr v3, v8

    and-int/2addr v3, v11

    or-int/2addr v2, v3

    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_19

    const v3, 0xffff

    sub-int/2addr v3, v2

    add-int/2addr v3, v9

    rsub-int v2, v3, 0x3e8

    goto :goto_8

    :cond_19
    add-int/lit16 v2, v2, 0x3e8

    .line 108
    :goto_8
    invoke-static {v2}, Lu0/d;->A3(I)V

    const/16 v2, 0x6a

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0xb

    .line 109
    aget-byte v4, v1, v4

    const/16 v5, 0x10

    shl-int/2addr v4, v5

    const/high16 v5, 0xff0000

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0xc

    aget-byte v5, v1, v5

    shl-int/lit8 v5, v5, 0x8

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    add-int/lit8 v5, p2, 0xd

    aget-byte v5, v1, v5

    shl-int/2addr v5, v8

    const/16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0xe

    .line 110
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_1a
    const/4 v2, 0x3

    add-int/lit8 v3, p2, 0x3

    .line 111
    aget-byte v1, v1, v3

    const/16 v2, 0x65

    new-array v3, v9, [I

    shr-int/lit8 v5, v1, 0x7

    and-int/2addr v5, v9

    aput v5, v3, v8

    .line 112
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v9, [I

    shr-int/lit8 v5, v1, 0x6

    and-int/2addr v5, v9

    aput v5, v3, v8

    .line 113
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v9, [I

    shr-int/lit8 v5, v1, 0x5

    and-int/2addr v5, v9

    aput v5, v3, v8

    .line 114
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v9

    aput v3, v2, v8

    const/4 v3, 0x5

    .line 115
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 116
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x2

    and-int/2addr v3, v9

    aput v3, v2, v8

    const/4 v3, 0x3

    .line 117
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.syu.reversefrontdoor"

    .line 118
    invoke-static {v2, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1b

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x0

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 119
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/2addr v1, v9

    and-int/2addr v1, v9

    aput v1, v2, v8

    .line 120
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_1b
    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x1

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 121
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/2addr v1, v8

    and-int/2addr v1, v9

    aput v1, v2, v8

    .line 122
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    .line 123
    :cond_1c
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_9

    :cond_1d
    add-int/lit8 v2, p2, 0x2

    .line 124
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    const/4 v4, 0x3

    add-int/lit8 v4, p2, 0x3

    .line 125
    aget-byte v1, v1, v4

    and-int/2addr v1, v3

    const/16 v3, 0x407

    new-array v4, v9, [I

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v2

    const/16 v2, 0x10

    .line 126
    div-int/2addr v1, v2

    aput v1, v4, v8

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_1e
    add-int/lit8 v2, p2, 0x2

    .line 127
    aget-byte v1, v1, v2

    :cond_1f
    :goto_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmodule/canbus/h0;->j:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lmodule/canbus/h0;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/h0;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/h0;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/h0;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/h0;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    iget-object v0, p0, Lmodule/canbus/h0;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->p0(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/h0;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x72

    if-ge p2, p3, :cond_0

    const/4 p3, 0x1

    new-array p3, p3, [I

    const/4 v0, 0x0

    .line 1
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, p2

    aput v1, p3, v0

    invoke-static {p1, p2, p3}, Lo1/x;->v(Ly/b;I[I)V

    :cond_0
    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 3

    const/4 p3, 0x5

    if-eqz p1, :cond_3

    const/4 p4, 0x1

    if-eq p1, p4, :cond_2

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, p3, [I

    .line 1
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    new-array p1, p3, [I

    .line 2
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    new-array p1, p3, [I

    .line 3
    fill-array-data p1, :array_2

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0, p2, p4}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_4

    new-array p1, p3, [I

    const/16 p3, 0xe3

    const/4 v2, 0x0

    aput p3, p1, v2

    const/16 p3, 0xc6

    aput p3, p1, p4

    aput v1, p1, v1

    aput v2, p1, v0

    const/4 p3, 0x4

    .line 5
    aget p2, p2, v2

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array p1, p3, [I

    .line 6
    fill-array-data p1, :array_3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    new-array p1, p3, [I

    .line 7
    fill-array-data p1, :array_4

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_4
    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe3
        0x90
        0x2
        0x41
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x90
        0x2
        0x41
        0x2
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x90
        0x2
        0x41
        0x3
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0xc6
        0x2
        0x2
        0x1
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0xc6
        0x2
        0x2
        0x0
    .end array-data
.end method

.method public Z2(I)V
    .locals 3

    .line 1
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget v0, Lk0/nt;->c:I

    if-ne v0, v1, :cond_1

    .line 2
    :cond_0
    sget-object v0, Lmodule/canbus/h0;->x:[I

    const/4 v1, 0x0

    const/16 v2, 0x24

    invoke-static {p1, v1, v2}, Lo1/o0;->a(III)I

    move-result p1

    aget p1, v0, p1

    sput p1, Lmodule/canbus/h0;->m:I

    :cond_1
    return-void
.end method

.method public a3()V
    .locals 15

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/h0;->b3()V

    .line 2
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x7

    const/4 v2, 0x5

    const/16 v3, 0xe3

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x6

    const/16 v7, 0x8

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eq v0, v9, :cond_6

    const/16 v11, 0xc3

    const/16 v12, 0x9

    if-eq v0, v5, :cond_3

    if-eq v0, v6, :cond_d

    if-eq v0, v7, :cond_1

    if-eq v0, v12, :cond_1

    new-array v0, v7, [I

    .line 3
    fill-array-data v0, :array_0

    new-array v1, v12, [I

    aput v3, v1, v10

    :goto_0
    if-ge v10, v7, :cond_0

    add-int/lit8 v2, v10, 0x1

    .line 4
    aget v3, v0, v10

    aput v3, v1, v2

    move v10, v2

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_6

    :cond_1
    new-array v0, v7, [I

    aput v11, v0, v10

    aput v6, v0, v9

    .line 6
    sget v9, Lu0/b;->s3:I

    and-int/lit16 v11, v9, 0xff

    aput v11, v0, v8

    shr-int/lit8 v8, v9, 0x8

    and-int/lit16 v8, v8, 0xff

    aput v8, v0, v4

    .line 7
    sget v4, Lu0/b;->r3:I

    and-int/lit16 v8, v4, 0xff

    aput v8, v0, v5

    shr-int/2addr v4, v7

    and-int/lit16 v4, v4, 0xff

    aput v4, v0, v2

    .line 8
    sget v2, Lu0/b;->t3:I

    div-int/lit8 v4, v2, 0x3c

    aput v4, v0, v6

    .line 9
    rem-int/lit8 v2, v2, 0x3c

    aput v2, v0, v1

    new-array v1, v12, [I

    aput v3, v1, v10

    :goto_1
    if-ge v10, v7, :cond_2

    add-int/lit8 v2, v10, 0x1

    .line 10
    aget v3, v0, v10

    aput v3, v1, v2

    move v10, v2

    goto :goto_1

    .line 11
    :cond_2
    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_6

    :cond_3
    new-array v0, v7, [I

    aput v11, v0, v10

    aput v6, v0, v9

    .line 12
    sget v9, Ln0/j4;->b:I

    if-ne v9, v7, :cond_4

    .line 13
    sget v9, Lo0/e;->C:I

    aput v9, v0, v4

    .line 14
    sget v4, Lo0/e;->B:I

    aput v4, v0, v8

    goto :goto_2

    .line 15
    :cond_4
    sget v9, Lo0/e;->C:I

    aput v9, v0, v8

    .line 16
    sget v8, Lo0/e;->B:I

    aput v8, v0, v4

    :goto_2
    aput v10, v0, v5

    aput v10, v0, v2

    .line 17
    sget v2, Lo0/e;->r:I

    div-int/lit8 v4, v2, 0x3c

    aput v4, v0, v6

    .line 18
    rem-int/lit8 v2, v2, 0x3c

    aput v2, v0, v1

    new-array v1, v12, [I

    aput v3, v1, v10

    :goto_3
    if-ge v10, v7, :cond_5

    add-int/lit8 v2, v10, 0x1

    .line 19
    aget v3, v0, v10

    aput v3, v1, v2

    move v10, v2

    goto :goto_3

    .line 20
    :cond_5
    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_6

    :cond_6
    new-array v0, v6, [I

    const/16 v11, 0xc2

    aput v11, v0, v10

    aput v5, v0, v9

    .line 21
    sget v11, Lw0/d;->i:I

    .line 22
    sget v12, Lw0/d;->j:I

    and-int/lit16 v12, v12, 0xff

    .line 23
    sget v13, Lw0/d;->h:I

    const/high16 v14, 0x10000

    if-ne v13, v14, :cond_7

    aput v9, v0, v8

    goto :goto_4

    :cond_7
    const v14, 0x10001

    if-ne v13, v14, :cond_8

    aput v8, v0, v8

    goto :goto_4

    :cond_8
    const v14, 0x10002

    if-ne v13, v14, :cond_9

    aput v4, v0, v8

    goto :goto_4

    :cond_9
    if-nez v13, :cond_a

    const/16 v13, 0x11

    aput v13, v0, v8

    goto :goto_4

    :cond_a
    if-ne v13, v9, :cond_b

    const/16 v13, 0x12

    aput v13, v0, v8

    :cond_b
    :goto_4
    and-int/lit16 v8, v11, 0xff

    aput v8, v0, v4

    shr-int/lit8 v4, v11, 0x8

    and-int/lit16 v4, v4, 0xff

    aput v4, v0, v5

    .line 24
    rem-int/2addr v12, v6

    add-int/2addr v12, v9

    aput v12, v0, v2

    new-array v1, v1, [I

    aput v3, v1, v10

    :goto_5
    if-ge v10, v6, :cond_c

    add-int/lit8 v2, v10, 0x1

    .line 25
    aget v3, v0, v10

    aput v3, v1, v2

    move v10, v2

    goto :goto_5

    .line 26
    :cond_c
    invoke-static {v1}, Lz/k;->s([I)V

    :cond_d
    :goto_6
    return-void

    :array_0
    .array-data 4
        0xc3
        0x6
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public b3()V
    .locals 9

    .line 1
    sget v0, Lu0/b;->D:I

    const/16 v1, 0x9

    const/4 v2, 0x5

    const/16 v3, 0x8

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x30

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/16 v1, 0xc

    goto :goto_2

    :pswitch_1
    move v1, v7

    goto :goto_1

    .line 2
    :pswitch_2
    sget v0, Ln0/j4;->b:I

    const/16 v8, 0x20

    if-ne v0, v8, :cond_0

    move v1, v3

    :cond_0
    const/16 v8, 0x11

    goto :goto_2

    :pswitch_3
    const/4 v1, 0x6

    const/16 v8, 0x12

    goto :goto_2

    :pswitch_4
    move v1, v4

    goto :goto_2

    :pswitch_5
    const/4 v1, 0x7

    goto :goto_2

    .line 3
    :pswitch_6
    sget v0, Lo0/e;->H:I

    if-ne v0, v6, :cond_1

    move v1, v5

    goto :goto_0

    :cond_1
    if-ne v0, v5, :cond_2

    goto :goto_0

    :cond_2
    if-ne v0, v4, :cond_3

    move v1, v3

    goto :goto_0

    :cond_3
    move v1, v7

    .line 4
    :goto_0
    sget v0, Ln0/j4;->b:I

    if-ne v0, v3, :cond_4

    const/16 v8, 0x21

    goto :goto_2

    :cond_4
    const/16 v8, 0x10

    goto :goto_2

    :pswitch_7
    const/16 v1, 0xb

    goto :goto_2

    :pswitch_8
    const/16 v8, 0x40

    move v1, v2

    goto :goto_2

    :pswitch_9
    move v1, v6

    :goto_1
    move v8, v1

    goto :goto_2

    :pswitch_a
    move v1, v7

    :goto_2
    new-array v0, v2, [I

    const/16 v2, 0xe3

    aput v2, v0, v7

    const/16 v2, 0xc0

    aput v2, v0, v6

    aput v5, v0, v5

    aput v1, v0, v4

    const/4 v1, 0x4

    aput v8, v0, v1

    .line 5
    invoke-static {v0}, Lz/k;->s([I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public c3()V
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [I

    const/16 v2, 0xc4

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v2, v1, v2

    .line 1
    sget v4, Ly0/f;->C0:I

    const/4 v5, 0x2

    aput v4, v1, v5

    .line 2
    sget v4, Ly0/f;->i:I

    if-eq v4, v2, :cond_0

    sget v2, Ly0/f;->C0:I

    if-nez v2, :cond_1

    .line 3
    :cond_0
    aget v2, v1, v5

    or-int/lit16 v2, v2, 0x80

    aput v2, v1, v5

    .line 4
    :cond_1
    sget v2, Ly0/f;->C0:I

    const/16 v4, 0x1e

    if-le v2, v4, :cond_2

    aput v4, v1, v5

    :cond_2
    const/4 v2, 0x4

    new-array v2, v2, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_0
    if-ge v3, v0, :cond_3

    add-int/lit8 v4, v3, 0x1

    .line 5
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_0

    .line 6
    :cond_3
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method

.method public d3(I)I
    .locals 0

    if-nez p1, :cond_0

    const/16 p1, 0xa

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    :goto_0
    return p1
.end method

.method public final init()V
    .locals 4

    .line 1
    sget-object v0, Lmodule/canbus/h0;->A:Lo1/f;

    new-instance v1, Lmodule/canbus/h0$f;

    const/4 v2, 0x2

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3}, Lmodule/canbus/h0$f;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    .line 2
    new-instance v1, Lmodule/canbus/h0$f;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v3}, Lmodule/canbus/h0$f;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    .line 3
    new-instance v1, Lmodule/canbus/h0$f;

    const/4 v2, 0x3

    invoke-direct {v1, v2, v3}, Lmodule/canbus/h0$f;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    .line 4
    new-instance v1, Lmodule/canbus/h0$f;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v3}, Lmodule/canbus/h0$f;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    .line 5
    new-instance v1, Lmodule/canbus/h0$f;

    const/4 v2, 0x5

    invoke-direct {v1, v2, v3}, Lmodule/canbus/h0$f;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    .line 6
    new-instance v1, Lmodule/canbus/h0$f;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v3}, Lmodule/canbus/h0$f;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    return-void
.end method
