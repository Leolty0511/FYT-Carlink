.class public Lk0/h7;
.super Lk0/lt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk0/h7$d;
    }
.end annotation


# static fields
.field public static final A:[I

.field public static final B:[I

.field public static final C:[I

.field public static final D:Lo1/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo1/f<",
            "Lk0/h7$d;",
            ">;"
        }
    .end annotation
.end field

.field public static o:I

.field public static p:I

.field public static q:I

.field public static r:I

.field public static s:I

.field public static t:I

.field public static u:I

.field public static v:I

.field public static w:I

.field public static x:I

.field public static y:I

.field public static z:I


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:Ljava/lang/Runnable;

.field public g:I

.field public h:Ljava/lang/Runnable;

.field public i:[I

.field public j:I

.field public k:I

.field public l:Ljava/lang/Runnable;

.field public m:I

.field public n:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x25

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lk0/h7;->A:[I

    const/16 v0, 0xb

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lk0/h7;->B:[I

    const/16 v0, 0x11

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_2

    sput-object v0, Lk0/h7;->C:[I

    .line 4
    new-instance v0, Lo1/f;

    invoke-direct {v0}, Lo1/f;-><init>()V

    sput-object v0, Lk0/h7;->D:Lo1/f;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3
        0x6
        0x8
        0xa
        0xc
        0xe
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
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xc
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x2
        0x3
        0x5
        0x6
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0x10
        0x11
        0x13
        0x14
        0x16
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/h7;->c:I

    const/16 v1, 0xc

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

    new-array v3, v2, [I

    fill-array-data v3, :array_7

    const/4 v4, 0x7

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_8

    const/16 v4, 0x8

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_9

    const/16 v4, 0x9

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_a

    const/16 v4, 0xa

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_b

    const/16 v4, 0xb

    aput-object v3, v1, v4

    iput-object v1, p0, Lk0/h7;->d:[[I

    .line 4
    iput v0, p0, Lk0/h7;->e:I

    .line 5
    new-instance v1, Lk0/h7$a;

    invoke-direct {v1, p0}, Lk0/h7$a;-><init>(Lk0/h7;)V

    iput-object v1, p0, Lk0/h7;->f:Ljava/lang/Runnable;

    const/4 v1, -0x1

    .line 6
    iput v1, p0, Lk0/h7;->g:I

    .line 7
    new-instance v1, Lk0/h7$b;

    invoke-direct {v1, p0}, Lk0/h7$b;-><init>(Lk0/h7;)V

    iput-object v1, p0, Lk0/h7;->h:Ljava/lang/Runnable;

    new-array v1, v2, [I

    .line 8
    fill-array-data v1, :array_c

    iput-object v1, p0, Lk0/h7;->i:[I

    .line 9
    iput v0, p0, Lk0/h7;->j:I

    const/16 v1, 0x64

    .line 10
    iput v1, p0, Lk0/h7;->k:I

    .line 11
    new-instance v1, Lk0/h7$c;

    invoke-direct {v1, p0}, Lk0/h7$c;-><init>(Lk0/h7;)V

    iput-object v1, p0, Lk0/h7;->l:Ljava/lang/Runnable;

    .line 12
    iput v0, p0, Lk0/h7;->m:I

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
        0x3
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x4
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x6
        0xd
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

    :array_8
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x1a
    .end array-data

    :array_a
    .array-data 4
        0x20
        0x12
    .end array-data

    :array_b
    .array-data 4
        0x21
        0x1a
    .end array-data

    :array_c
    .array-data 4
        0x22
        0xcc
    .end array-data
.end method

.method public static synthetic A3(Lk0/h7;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/h7;->m:I

    return p1
.end method

.method public static synthetic B3(Lk0/h7;)I
    .locals 2

    .line 1
    iget v0, p0, Lk0/h7;->m:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lk0/h7;->m:I

    return v0
.end method

.method public static synthetic C3()I
    .locals 1

    .line 1
    sget v0, Lk0/h7;->p:I

    return v0
.end method

.method public static synthetic D3(I)I
    .locals 0

    .line 1
    sput p0, Lk0/h7;->p:I

    return p0
.end method

.method public static synthetic E3()[I
    .locals 1

    .line 1
    sget-object v0, Lk0/h7;->A:[I

    return-object v0
.end method

.method public static synthetic F3()I
    .locals 1

    .line 1
    sget v0, Lk0/h7;->o:I

    return v0
.end method

.method public static synthetic G3(Lk0/h7;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/h7;->Q3()V

    return-void
.end method

.method public static synthetic H3()I
    .locals 1

    .line 1
    sget v0, Lk0/h7;->q:I

    return v0
.end method

.method public static synthetic I3(I)I
    .locals 0

    .line 1
    sput p0, Lk0/h7;->q:I

    return p0
.end method

.method public static J3(II)V
    .locals 1

    .line 1
    sget-object v0, Lk0/h7;->D:Lo1/f;

    invoke-virtual {v0, p0}, Lo1/f;->c(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lk0/h7$d;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lk0/h7$d;->a(I)V

    :cond_0
    return-void
.end method

.method public static synthetic b3(Lk0/h7;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/h7;->h:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic c3(Lk0/h7;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/h7;->n:I

    return p0
.end method

.method public static synthetic d3()I
    .locals 1

    .line 1
    sget v0, Lk0/h7;->t:I

    return v0
.end method

.method public static synthetic e3(Lk0/h7;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/h7;->n:I

    return p1
.end method

.method public static synthetic f3(Lk0/h7;)I
    .locals 2

    .line 1
    iget v0, p0, Lk0/h7;->n:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lk0/h7;->n:I

    return v0
.end method

.method public static synthetic g3(Lk0/h7;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/h7;->M3()V

    return-void
.end method

.method public static synthetic h3()I
    .locals 1

    .line 1
    sget v0, Lk0/h7;->r:I

    return v0
.end method

.method public static synthetic i3(I)I
    .locals 0

    .line 1
    sput p0, Lk0/h7;->r:I

    return p0
.end method

.method public static synthetic j3()I
    .locals 1

    .line 1
    sget v0, Lk0/h7;->u:I

    return v0
.end method

.method public static synthetic k3(Lk0/h7;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/h7;->O3()V

    return-void
.end method

.method public static synthetic l3()I
    .locals 1

    .line 1
    sget v0, Lk0/h7;->s:I

    return v0
.end method

.method public static synthetic m3(I)I
    .locals 0

    .line 1
    sput p0, Lk0/h7;->s:I

    return p0
.end method

.method public static synthetic n3()I
    .locals 1

    .line 1
    sget v0, Lk0/h7;->v:I

    return v0
.end method

.method public static synthetic o3(Lk0/h7;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/h7;->P3()V

    return-void
.end method

.method public static synthetic p3()I
    .locals 1

    .line 1
    sget v0, Lk0/h7;->w:I

    return v0
.end method

.method public static synthetic q3(I)I
    .locals 0

    .line 1
    sput p0, Lk0/h7;->w:I

    return p0
.end method

.method public static synthetic r3()I
    .locals 1

    .line 1
    sget v0, Lk0/h7;->y:I

    return v0
.end method

.method public static synthetic s3(Lk0/h7;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/h7;->K3()V

    return-void
.end method

.method public static synthetic t3(Lk0/h7;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/h7;->N3()V

    return-void
.end method

.method public static synthetic u3()I
    .locals 1

    .line 1
    sget v0, Lk0/h7;->x:I

    return v0
.end method

.method public static synthetic v3(I)I
    .locals 0

    .line 1
    sput p0, Lk0/h7;->x:I

    return p0
.end method

.method public static synthetic w3()I
    .locals 1

    .line 1
    sget v0, Lk0/h7;->z:I

    return v0
.end method

.method public static synthetic x3(Lk0/h7;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/h7;->L3()V

    return-void
.end method

.method public static synthetic y3(Lk0/h7;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/h7;->k:I

    return p0
.end method

.method public static synthetic z3(Lk0/h7;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/h7;->m:I

    return p0
.end method


# virtual methods
.method public final K3()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/h7;->Q3()V

    .line 2
    invoke-virtual {p0}, Lk0/h7;->N3()V

    .line 3
    invoke-virtual {p0}, Lk0/h7;->L3()V

    .line 4
    invoke-virtual {p0}, Lk0/h7;->M3()V

    .line 5
    invoke-virtual {p0}, Lk0/h7;->O3()V

    .line 6
    invoke-virtual {p0}, Lk0/h7;->P3()V

    return-void
.end method

.method public final declared-synchronized L3()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    sget v0, Lk0/h7;->z:I

    const/4 v1, 0x1

    .line 3
    invoke-static {v1, v0}, Lk0/h7;->J3(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
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

.method public final declared-synchronized M3()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    sget v0, Lk0/h7;->t:I

    const/4 v1, 0x3

    .line 3
    invoke-static {v1, v0}, Lk0/h7;->J3(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized N3()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    sget v0, Lk0/h7;->y:I

    const/4 v1, 0x2

    .line 3
    invoke-static {v1, v0}, Lk0/h7;->J3(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized O3()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    sget v0, Lk0/h7;->u:I

    const/4 v1, 0x5

    .line 3
    invoke-static {v1, v0}, Lk0/h7;->J3(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public P2([I)V
    .locals 5

    .line 1
    invoke-static {}, Lk0/nt;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lk0/lt;->a:Lk0/mt;

    iget p1, p1, Lk0/mt;->d:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    sget-object p1, Lk0/h7;->B:[I

    sget-object v1, Ly0/f;->c0:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    shr-int/2addr v3, v0

    const/16 v4, 0xa

    invoke-static {v3, v2, v4}, Lo1/o0;->a(III)I

    move-result v3

    aget v3, p1, v3

    sput v3, Lk0/h7;->t:I

    .line 3
    aget v3, v1, v0

    shr-int/2addr v3, v0

    invoke-static {v3, v2, v4}, Lo1/o0;->a(III)I

    move-result v3

    aget v3, p1, v3

    sput v3, Lk0/h7;->u:I

    const/4 v3, 0x2

    .line 4
    aget v1, v1, v3

    shr-int/lit8 v0, v1, 0x1

    invoke-static {v0, v2, v4}, Lo1/o0;->a(III)I

    move-result v0

    aget p1, p1, v0

    sput p1, Lk0/h7;->v:I

    :cond_0
    return-void
.end method

.method public final declared-synchronized P3()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    sget v0, Lk0/h7;->v:I

    const/4 v1, 0x4

    .line 3
    invoke-static {v1, v0}, Lk0/h7;->J3(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized Q3()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    sget v0, Lk0/h7;->o:I

    sget v1, Lk0/h7;->p:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 3
    sput v0, Lk0/h7;->o:I

    .line 4
    iput v2, p0, Lk0/h7;->n:I

    goto :goto_0

    :cond_1
    if-le v0, v1, :cond_2

    add-int/lit8 v0, v0, -0x1

    .line 5
    sput v0, Lk0/h7;->o:I

    .line 6
    iput v2, p0, Lk0/h7;->n:I

    goto :goto_0

    .line 7
    :cond_2
    sput v1, Lk0/h7;->o:I

    .line 8
    :goto_0
    sget v0, Lk0/h7;->o:I

    invoke-static {v2, v0}, Lk0/h7;->J3(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public R2([I)V
    .locals 3

    .line 1
    invoke-static {}, Lk0/nt;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lk0/lt;->a:Lk0/mt;

    iget p1, p1, Lk0/mt;->c:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    sget-object p1, Lk0/h7;->C:[I

    sget v0, Ly0/f;->l:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Lo1/o0;->a(III)I

    move-result v0

    aget v0, p1, v0

    sput v0, Lk0/h7;->y:I

    .line 3
    sget v0, Ly0/f;->j:I

    invoke-static {v0, v1, v2}, Lo1/o0;->a(III)I

    move-result v0

    aget p1, p1, v0

    sput p1, Lk0/h7;->z:I

    :cond_0
    return-void
.end method

.method public S2()V
    .locals 8

    .line 1
    sget v0, Lk0/nt;->a:I

    shr-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr v0, v1

    .line 2
    iget-object v1, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v2, 0x1

    iput v2, v1, Lk0/mt;->o:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, v3, :cond_4

    const/4 v5, 0x3

    const-string v6, "com.syu.canbus"

    const/4 v7, 0x0

    if-eq v0, v5, :cond_2

    const/4 v5, 0x4

    if-eq v0, v5, :cond_0

    .line 3
    iput v4, v1, Lk0/mt;->e:I

    .line 4
    iput v4, v1, Lk0/mt;->f:I

    .line 5
    iput v4, v1, Lk0/mt;->g:I

    .line 6
    iput v4, v1, Lk0/mt;->b:I

    .line 7
    iput v4, v1, Lk0/mt;->c:I

    .line 8
    iput v4, v1, Lk0/mt;->d:I

    goto :goto_2

    .line 9
    :cond_0
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_1

    .line 10
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput-object v7, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 12
    :goto_0
    iput v3, p0, Lk0/h7;->e:I

    .line 13
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->e:I

    .line 14
    iput v2, v0, Lk0/mt;->f:I

    .line 15
    iput v2, v0, Lk0/mt;->g:I

    goto :goto_2

    .line 16
    :cond_2
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_3

    .line 17
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    goto :goto_1

    .line 18
    :cond_3
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput-object v7, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 19
    :goto_1
    iput v2, p0, Lk0/h7;->e:I

    .line 20
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->e:I

    .line 21
    iput v2, v0, Lk0/mt;->f:I

    .line 22
    iput v2, v0, Lk0/mt;->g:I

    goto :goto_2

    .line 23
    :cond_4
    iput v4, v1, Lk0/mt;->e:I

    .line 24
    iput v4, v1, Lk0/mt;->f:I

    .line 25
    iput v4, v1, Lk0/mt;->g:I

    .line 26
    iput v4, v1, Lk0/mt;->b:I

    .line 27
    iput v4, v1, Lk0/mt;->c:I

    .line 28
    iput v4, v1, Lk0/mt;->d:I

    .line 29
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 30
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/h7;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    :cond_5
    :goto_2
    return-void
.end method

.method public U2([BII)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/4 v3, 0x3

    const/16 v4, 0xff

    if-eq v2, v3, :cond_16

    const/16 v5, 0x20

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v2, v5, :cond_10

    const/16 v5, 0x24

    const/4 v8, 0x5

    const/4 v10, 0x2

    if-eq v2, v5, :cond_e

    const/16 v11, 0x26

    if-eq v2, v11, :cond_d

    const/16 v11, 0x41

    if-eq v2, v11, :cond_c

    const/16 v11, 0x55

    if-eq v2, v11, :cond_1

    const/16 v3, 0x57

    if-eq v2, v3, :cond_0

    goto/16 :goto_7

    .line 2
    :cond_0
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_1
    add-int/lit8 v2, p2, 0x2

    .line 3
    aget-byte v10, v1, v2

    add-int/lit8 v11, p2, 0x3

    .line 4
    aget-byte v12, v1, v11

    add-int/lit8 v13, p2, 0x4

    .line 5
    aget-byte v13, v1, v13

    add-int/lit8 v14, p2, 0x5

    .line 6
    aget-byte v14, v1, v14

    add-int/lit8 v15, p2, 0x6

    .line 7
    aget-byte v15, v1, v15

    add-int/lit8 v16, p2, 0x7

    .line 8
    aget-byte v16, v1, v16

    add-int/lit8 v17, p2, 0x9

    .line 9
    aget-byte v17, v1, v17

    const-string v3, "persist.fyt.reversetemp"

    .line 10
    invoke-static {v3, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 11
    aget-byte v10, v1, v11

    .line 12
    aget-byte v12, v1, v2

    :cond_2
    and-int/lit16 v1, v10, 0xff

    const/4 v2, -0x3

    const/4 v3, -0x2

    const/16 v10, 0x50

    const/16 v11, 0xa

    const/16 v9, 0x10

    const/16 v4, 0x1b

    if-eq v1, v9, :cond_5

    if-eq v1, v10, :cond_4

    if-ge v1, v11, :cond_3

    new-array v1, v7, [I

    const/16 v18, -0x1

    aput v18, v1, v6

    .line 13
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_3
    new-array v11, v7, [I

    sub-int/2addr v1, v5

    mul-int/2addr v1, v8

    add-int/lit16 v1, v1, 0xb4

    aput v1, v11, v6

    .line 14
    invoke-static {v4, v11}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_4
    new-array v1, v7, [I

    aput v2, v1, v6

    .line 15
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_5
    new-array v1, v7, [I

    aput v3, v1, v6

    .line 16
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    :goto_0
    const/16 v1, 0xff

    and-int/lit16 v4, v12, 0xff

    const/16 v1, 0x1c

    if-eq v4, v9, :cond_8

    if-eq v4, v10, :cond_7

    const/16 v3, 0xa

    if-ge v4, v3, :cond_6

    new-array v2, v7, [I

    const/4 v3, -0x1

    aput v3, v2, v6

    .line 17
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_6
    new-array v2, v7, [I

    sub-int/2addr v4, v5

    mul-int/2addr v4, v8

    add-int/lit16 v4, v4, 0xb4

    aput v4, v2, v6

    .line 18
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_7
    new-array v3, v7, [I

    aput v2, v3, v6

    .line 19
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_8
    new-array v2, v7, [I

    aput v3, v2, v6

    .line 20
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    :goto_1
    and-int/lit8 v1, v13, 0xf

    const/16 v2, 0x15

    new-array v3, v7, [I

    const/16 v4, 0xff

    and-int/2addr v1, v4

    aput v1, v3, v6

    .line 21
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x4d

    new-array v2, v7, [I

    const/4 v3, 0x4

    shr-int/lit8 v4, v13, 0x4

    and-int/lit8 v3, v4, 0xf

    aput v3, v2, v6

    .line 22
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x1d

    new-array v2, v7, [I

    and-int/lit8 v3, v14, 0x3

    aput v3, v2, v6

    .line 23
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x1e

    new-array v2, v7, [I

    const/4 v3, 0x4

    shr-int/lit8 v3, v14, 0x4

    const/4 v4, 0x3

    and-int/2addr v3, v4

    aput v3, v2, v6

    .line 24
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xd

    new-array v2, v7, [I

    and-int/lit8 v3, v15, 0x1

    aput v3, v2, v6

    .line 25
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xb

    new-array v2, v7, [I

    shr-int/lit8 v3, v15, 0x1

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 26
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xe

    new-array v2, v7, [I

    shr-int/lit8 v3, v15, 0x2

    and-int/2addr v3, v7

    if-nez v3, :cond_9

    move v3, v7

    goto :goto_2

    :cond_9
    move v3, v6

    :goto_2
    aput v3, v2, v6

    .line 27
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    new-array v1, v7, [I

    shr-int/lit8 v2, v15, 0x6

    and-int/2addr v2, v7

    aput v2, v1, v6

    .line 28
    invoke-static {v9, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xc

    new-array v2, v7, [I

    const/4 v3, 0x3

    and-int/lit8 v3, v16, 0x3

    aput v3, v2, v6

    .line 29
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xa

    mul-int/lit8 v1, v17, 0xa

    const/16 v2, 0x190

    if-ge v1, v2, :cond_a

    sub-int/2addr v2, v1

    rsub-int v6, v2, 0x3e8

    goto :goto_3

    :cond_a
    if-lt v1, v2, :cond_b

    const/16 v3, 0x4e2

    if-gt v1, v3, :cond_b

    add-int/lit16 v1, v1, 0x3e8

    add-int/lit16 v6, v1, -0x190

    :cond_b
    :goto_3
    const/16 v1, 0x258

    if-le v6, v1, :cond_17

    .line 30
    invoke-static {v6}, Lu0/d;->A3(I)V

    goto/16 :goto_7

    :cond_c
    const/16 v2, 0x408

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x2

    .line 31
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    const v5, 0xff00

    and-int/2addr v4, v5

    add-int/lit8 v9, p2, 0x3

    aget-byte v9, v1, v9

    const/16 v10, 0xff

    and-int/2addr v9, v10

    add-int/2addr v4, v9

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x407

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x4

    .line 32
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x5

    aget-byte v1, v1, v5

    const/16 v5, 0xff

    and-int/2addr v1, v5

    add-int/2addr v4, v1

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_d
    add-int/lit8 v2, p2, 0x2

    .line 33
    aget-byte v2, v1, v2

    const/4 v3, 0x3

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    const/16 v3, 0x546

    invoke-static {v2, v1, v6, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_7

    :cond_e
    add-int/lit8 v2, p2, 0x2

    .line 34
    aget-byte v1, v1, v2

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 35
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 36
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v7

    aput v3, v2, v6

    const/4 v3, 0x4

    .line 37
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x2

    and-int/2addr v3, v7

    aput v3, v2, v6

    const/4 v3, 0x3

    .line 38
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.syu.reversefrontdoor"

    .line 39
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_f

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x0

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 40
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/2addr v1, v7

    and-int/2addr v1, v7

    aput v1, v2, v6

    .line 41
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_f
    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x1

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 42
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/2addr v1, v6

    and-int/2addr v1, v7

    aput v1, v2, v6

    .line 43
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    .line 44
    :cond_10
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_17

    add-int/lit8 v2, p2, 0x2

    .line 45
    aget-byte v2, v1, v2

    const/4 v3, 0x3

    add-int/lit8 v3, p2, 0x3

    .line 46
    aget-byte v1, v1, v3

    const/16 v3, 0xff

    and-int/2addr v2, v3

    .line 47
    iput v2, v0, Lk0/h7;->c:I

    move v2, v6

    .line 48
    :goto_4
    iget-object v3, v0, Lk0/h7;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_12

    .line 49
    iget v4, v0, Lk0/h7;->c:I

    aget-object v5, v3, v2

    aget v5, v5, v6

    if-ne v4, v5, :cond_11

    if-eqz v4, :cond_12

    .line 50
    iput v2, v0, Lk0/h7;->b:I

    goto :goto_5

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_12
    :goto_5
    const/16 v4, 0xff

    and-int/2addr v1, v4

    if-ne v1, v7, :cond_13

    .line 51
    array-length v1, v3

    if-ge v2, v1, :cond_17

    .line 52
    aget-object v1, v3, v2

    aget v1, v1, v7

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_7

    :cond_13
    if-nez v1, :cond_17

    .line 53
    iget v1, v0, Lk0/h7;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_14

    const/16 v2, 0xff

    if-eq v1, v2, :cond_15

    .line 54
    aget-object v1, v3, v1

    aget v1, v1, v7

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto :goto_6

    :cond_14
    const/16 v2, 0xff

    .line 55
    :cond_15
    :goto_6
    iput v2, v0, Lk0/h7;->b:I

    goto :goto_7

    :cond_16
    move v2, v4

    add-int/lit8 v3, p2, 0x2

    .line 56
    aget-byte v3, v1, v3

    and-int/2addr v3, v2

    invoke-virtual {v0, v3}, Lk0/h7;->a3(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->D2(I)V

    add-int/lit8 v3, p2, 0x3

    .line 57
    aget-byte v3, v1, v3

    and-int/2addr v3, v2

    invoke-virtual {v0, v3}, Lk0/h7;->a3(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->E2(I)V

    add-int/lit8 v3, p2, 0x4

    .line 58
    aget-byte v3, v1, v3

    and-int/2addr v3, v2

    invoke-virtual {v0, v3}, Lk0/h7;->a3(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->F2(I)V

    add-int/lit8 v3, p2, 0x5

    .line 59
    aget-byte v3, v1, v3

    and-int/2addr v3, v2

    invoke-virtual {v0, v3}, Lk0/h7;->a3(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->G2(I)V

    add-int/lit8 v3, p2, 0x6

    .line 60
    aget-byte v3, v1, v3

    and-int/2addr v3, v2

    invoke-virtual {v0, v3}, Lk0/h7;->a3(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->R2(I)V

    add-int/lit8 v3, p2, 0x7

    .line 61
    aget-byte v3, v1, v3

    and-int/2addr v3, v2

    invoke-virtual {v0, v3}, Lk0/h7;->a3(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->S2(I)V

    add-int/lit8 v3, p2, 0x8

    .line 62
    aget-byte v3, v1, v3

    and-int/2addr v3, v2

    invoke-virtual {v0, v3}, Lk0/h7;->a3(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->T2(I)V

    add-int/lit8 v3, p2, 0x9

    .line 63
    aget-byte v1, v1, v3

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lk0/h7;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    :cond_17
    :goto_7
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/h7;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/h7;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/h7;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x62

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
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x1

    move/from16 v2, p1

    if-eq v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    new-array v3, v2, [I

    const/4 v4, 0x0

    const/16 v5, 0xe3

    aput v5, v3, v4

    const/16 v6, 0x33

    aput v6, v3, v1

    const/4 v7, 0x2

    const/4 v8, 0x5

    aput v8, v3, v7

    .line 1
    aget v9, p2, v4

    const/4 v10, 0x3

    aput v9, v3, v10

    iget-object v9, v0, Lk0/h7;->i:[I

    iget v11, v0, Lk0/h7;->j:I

    rem-int/2addr v11, v7

    aget v9, v9, v11

    const/4 v11, 0x4

    aput v9, v3, v11

    const/16 v9, 0x25

    aput v9, v3, v8

    iget v12, v0, Lk0/h7;->e:I

    const/4 v13, 0x6

    aput v12, v3, v13

    const/4 v12, 0x7

    const/16 v14, 0xaa

    aput v14, v3, v12

    invoke-static {v3}, Lz/k;->s([I)V

    new-array v3, v2, [I

    aput v5, v3, v4

    aput v6, v3, v1

    aput v8, v3, v7

    .line 2
    aget v15, p2, v4

    aput v15, v3, v10

    iget-object v15, v0, Lk0/h7;->i:[I

    iget v10, v0, Lk0/h7;->j:I

    rem-int/2addr v10, v7

    aget v10, v15, v10

    aput v10, v3, v11

    aput v9, v3, v8

    iget v10, v0, Lk0/h7;->e:I

    aput v10, v3, v13

    aput v14, v3, v12

    invoke-static {v3}, Lz/k;->s([I)V

    new-array v2, v2, [I

    aput v5, v2, v4

    aput v6, v2, v1

    aput v8, v2, v7

    .line 3
    aget v3, p2, v4

    const/4 v4, 0x3

    aput v3, v2, v4

    iget-object v3, v0, Lk0/h7;->i:[I

    iget v4, v0, Lk0/h7;->j:I

    rem-int/2addr v4, v7

    aget v3, v3, v4

    aput v3, v2, v11

    aput v9, v2, v8

    iget v3, v0, Lk0/h7;->e:I

    aput v3, v2, v13

    aput v14, v2, v12

    invoke-static {v2}, Lz/k;->s([I)V

    .line 4
    iget v2, v0, Lk0/h7;->j:I

    add-int/2addr v2, v1

    iput v2, v0, Lk0/h7;->j:I

    .line 5
    rem-int/2addr v2, v7

    iput v2, v0, Lk0/h7;->j:I

    :goto_0
    return-void
.end method

.method public Z2(I)V
    .locals 3

    .line 1
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lk0/h7;->A:[I

    const/4 v1, 0x0

    const/16 v2, 0x24

    invoke-static {p1, v1, v2}, Lo1/o0;->a(III)I

    move-result p1

    aget p1, v0, p1

    sput p1, Lk0/h7;->p:I

    :cond_0
    return-void
.end method

.method public a3(I)I
    .locals 3

    const/4 v0, 0x3

    const/16 v1, 0xa

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/16 v0, 0x9

    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0
.end method
