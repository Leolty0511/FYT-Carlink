.class public Lk0/bg;
.super Lk0/lt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk0/bg$h;
    }
.end annotation


# static fields
.field public static A:I

.field public static B:I

.field public static C:I

.field public static D:I

.field public static final E:[I

.field public static final F:[I

.field public static final G:[I

.field public static final H:Lo1/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo1/f<",
            "Lk0/bg$h;",
            ">;"
        }
    .end annotation
.end field

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

.field public e:B

.field public f:Ljava/lang/Runnable;

.field public g:Ljava/lang/Runnable;

.field public h:Ljava/lang/Runnable;

.field public i:J

.field public j:I

.field public k:Ljava/lang/Runnable;

.field public l:Ljava/lang/Runnable;

.field public m:Ljava/lang/Runnable;

.field public n:I

.field public o:Z

.field public p:I

.field public q:Ljava/lang/Runnable;

.field public r:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x25

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lk0/bg;->E:[I

    const/16 v0, 0xb

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lk0/bg;->F:[I

    const/16 v0, 0x11

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_2

    sput-object v0, Lk0/bg;->G:[I

    .line 4
    new-instance v0, Lo1/f;

    invoke-direct {v0}, Lo1/f;-><init>()V

    sput-object v0, Lk0/bg;->H:Lo1/f;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3
        0x6
        0x9
        0xc
        0xe
        0x10
        0x12
        0x14
        0x16
        0x18
        0x1a
        0x1c
        0x1e
        0x20
        0x22
        0x24
        0x26
        0x28
        0x2a
        0x2c
        0x2e
        0x30
        0x32
        0x33
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        0x3e
        0x3f
    .end array-data

    :array_1
    .array-data 4
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
    .end array-data

    :array_2
    .array-data 4
        0x0
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
        0xe
    .end array-data
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/bg;->c:I

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

    const/4 v5, 0x6

    aput-object v3, v1, v5

    new-array v2, v2, [I

    fill-array-data v2, :array_7

    const/4 v3, 0x7

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/bg;->d:[[I

    .line 4
    iput-byte v4, p0, Lk0/bg;->e:B

    .line 5
    new-instance v1, Lk0/bg$a;

    invoke-direct {v1, p0}, Lk0/bg$a;-><init>(Lk0/bg;)V

    iput-object v1, p0, Lk0/bg;->f:Ljava/lang/Runnable;

    .line 6
    new-instance v1, Lk0/bg$b;

    invoke-direct {v1, p0}, Lk0/bg$b;-><init>(Lk0/bg;)V

    iput-object v1, p0, Lk0/bg;->g:Ljava/lang/Runnable;

    .line 7
    new-instance v1, Lk0/bg$c;

    invoke-direct {v1, p0}, Lk0/bg$c;-><init>(Lk0/bg;)V

    iput-object v1, p0, Lk0/bg;->h:Ljava/lang/Runnable;

    const-wide/16 v1, -0x1

    .line 8
    iput-wide v1, p0, Lk0/bg;->i:J

    const/4 v1, -0x1

    .line 9
    iput v1, p0, Lk0/bg;->j:I

    .line 10
    new-instance v2, Lk0/bg$d;

    invoke-direct {v2, p0}, Lk0/bg$d;-><init>(Lk0/bg;)V

    iput-object v2, p0, Lk0/bg;->k:Ljava/lang/Runnable;

    .line 11
    new-instance v2, Lk0/bg$e;

    invoke-direct {v2, p0}, Lk0/bg$e;-><init>(Lk0/bg;)V

    iput-object v2, p0, Lk0/bg;->l:Ljava/lang/Runnable;

    .line 12
    new-instance v2, Lk0/bg$f;

    invoke-direct {v2, p0}, Lk0/bg$f;-><init>(Lk0/bg;)V

    iput-object v2, p0, Lk0/bg;->m:Ljava/lang/Runnable;

    .line 13
    iput v1, p0, Lk0/bg;->n:I

    .line 14
    iput-boolean v0, p0, Lk0/bg;->o:Z

    const/16 v1, 0x64

    .line 15
    iput v1, p0, Lk0/bg;->p:I

    .line 16
    new-instance v1, Lk0/bg$g;

    invoke-direct {v1, p0}, Lk0/bg$g;-><init>(Lk0/bg;)V

    iput-object v1, p0, Lk0/bg;->q:Ljava/lang/Runnable;

    .line 17
    iput v0, p0, Lk0/bg;->r:I

    return-void

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

.method public static synthetic A3(Lk0/bg;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/bg;->P3()V

    return-void
.end method

.method public static synthetic B3(Lk0/bg;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/bg;->j:I

    return p0
.end method

.method public static synthetic C3(Lk0/bg;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/bg;->j:I

    return p1
.end method

.method public static synthetic D3(Lk0/bg;I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/bg;->O3(I)I

    move-result p0

    return p0
.end method

.method public static synthetic E3(Lk0/bg;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/bg;->n:I

    return p0
.end method

.method public static synthetic F3(Lk0/bg;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/bg;->n:I

    return p1
.end method

.method public static synthetic G3(Lk0/bg;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/bg;->V3(I)V

    return-void
.end method

.method public static synthetic H3(Lk0/bg;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lk0/bg;->o:Z

    return p0
.end method

.method public static synthetic I3(Lk0/bg;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lk0/bg;->o:Z

    return p1
.end method

.method public static synthetic J3(Lk0/bg;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/bg;->p:I

    return p0
.end method

.method public static synthetic K3(Lk0/bg;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/bg;->r:I

    return p0
.end method

.method public static synthetic L3(Lk0/bg;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/bg;->r:I

    return p1
.end method

.method public static synthetic M3(Lk0/bg;)I
    .locals 2

    .line 1
    iget v0, p0, Lk0/bg;->r:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lk0/bg;->r:I

    return v0
.end method

.method public static N3(II)V
    .locals 1

    .line 1
    sget-object v0, Lk0/bg;->H:Lo1/f;

    invoke-virtual {v0, p0}, Lo1/f;->c(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lk0/bg$h;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lk0/bg$h;->a(I)V

    :cond_0
    return-void
.end method

.method public static synthetic access$1700()I
    .locals 1

    .line 1
    sget v0, Lk0/bg;->v:I

    return v0
.end method

.method public static synthetic e3(Lk0/bg;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/bg;->g:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic f3(Lk0/bg;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/bg;->W3()V

    return-void
.end method

.method public static synthetic g3()I
    .locals 1

    .line 1
    sget v0, Lk0/bg;->t:I

    return v0
.end method

.method public static synthetic h3(I)I
    .locals 0

    .line 1
    sput p0, Lk0/bg;->t:I

    return p0
.end method

.method public static synthetic i3()[I
    .locals 1

    .line 1
    sget-object v0, Lk0/bg;->E:[I

    return-object v0
.end method

.method public static synthetic j3()I
    .locals 1

    .line 1
    sget v0, Lk0/bg;->s:I

    return v0
.end method

.method public static synthetic k3(Lk0/bg;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/bg;->U3()V

    return-void
.end method

.method public static synthetic l3()I
    .locals 1

    .line 1
    sget v0, Lk0/bg;->u:I

    return v0
.end method

.method public static synthetic m3()I
    .locals 1

    .line 1
    sget v0, Lk0/bg;->x:I

    return v0
.end method

.method public static synthetic n3(Lk0/bg;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/bg;->Q3()V

    return-void
.end method

.method public static synthetic o3()I
    .locals 1

    .line 1
    sget v0, Lk0/bg;->y:I

    return v0
.end method

.method public static synthetic p3(Lk0/bg;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/bg;->S3()V

    return-void
.end method

.method public static synthetic q3(Lk0/bg;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lk0/bg;->i:J

    return-wide v0
.end method

.method public static synthetic r3()I
    .locals 1

    .line 1
    sget v0, Lk0/bg;->w:I

    return v0
.end method

.method public static synthetic s3(Lk0/bg;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lk0/bg;->i:J

    return-wide p1
.end method

.method public static synthetic t3()I
    .locals 1

    .line 1
    sget v0, Lk0/bg;->z:I

    return v0
.end method

.method public static synthetic u3(Lk0/bg;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/bg;->T3()V

    return-void
.end method

.method public static synthetic v3()I
    .locals 1

    .line 1
    sget v0, Lk0/bg;->A:I

    return v0
.end method

.method public static synthetic w3()I
    .locals 1

    .line 1
    sget v0, Lk0/bg;->C:I

    return v0
.end method

.method public static synthetic x3(Lk0/bg;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/bg;->R3()V

    return-void
.end method

.method public static synthetic y3()I
    .locals 1

    .line 1
    sget v0, Lk0/bg;->B:I

    return v0
.end method

.method public static synthetic z3()I
    .locals 1

    .line 1
    sget v0, Lk0/bg;->D:I

    return v0
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final O3(I)I
    .locals 1

    .line 1
    div-int/lit8 v0, p1, 0xa

    mul-int/lit8 v0, v0, 0x10

    rem-int/lit8 p1, p1, 0xa

    add-int/2addr v0, p1

    return v0
.end method

.method public P2([I)V
    .locals 5

    .line 1
    iget-object p1, p0, Lk0/lt;->a:Lk0/mt;

    iget p1, p1, Lk0/mt;->d:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    sget-object p1, Lk0/bg;->F:[I

    sget-object v1, Ly0/f;->c0:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    shr-int/2addr v3, v0

    const/16 v4, 0xa

    invoke-static {v3, v2, v4}, Lo1/o0;->a(III)I

    move-result v3

    aget v3, p1, v3

    sput v3, Lk0/bg;->x:I

    .line 3
    aget v3, v1, v0

    shr-int/2addr v3, v0

    invoke-static {v3, v2, v4}, Lo1/o0;->a(III)I

    move-result v3

    aget v3, p1, v3

    sput v3, Lk0/bg;->y:I

    const/4 v3, 0x2

    .line 4
    aget v1, v1, v3

    shr-int/lit8 v0, v1, 0x1

    invoke-static {v0, v2, v4}, Lo1/o0;->a(III)I

    move-result v0

    aget p1, p1, v0

    sput p1, Lk0/bg;->z:I

    :cond_0
    return-void
.end method

.method public final declared-synchronized P3()V
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
    sget v0, Lk0/bg;->D:I

    const/4 v1, 0x2

    .line 3
    invoke-static {v1, v0}, Lk0/bg;->N3(II)V
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
    sget v0, Lk0/bg;->x:I

    const/4 v1, 0x4

    .line 3
    invoke-static {v1, v0}, Lk0/bg;->N3(II)V
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

.method public R2([I)V
    .locals 3

    .line 1
    iget-object p1, p0, Lk0/lt;->a:Lk0/mt;

    iget p1, p1, Lk0/mt;->c:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    sget-object p1, Lk0/bg;->G:[I

    sget v0, Ly0/f;->l:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Lo1/o0;->a(III)I

    move-result v0

    aget v0, p1, v0

    sput v0, Lk0/bg;->C:I

    .line 3
    sget v0, Ly0/f;->j:I

    invoke-static {v0, v1, v2}, Lo1/o0;->a(III)I

    move-result v0

    aget p1, p1, v0

    sput p1, Lk0/bg;->D:I

    :cond_0
    return-void
.end method

.method public final declared-synchronized R3()V
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
    sget v0, Lk0/bg;->C:I

    const/4 v1, 0x1

    .line 3
    invoke-static {v1, v0}, Lk0/bg;->N3(II)V
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

.method public S2()V
    .locals 3

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
    iput v1, v0, Lk0/mt;->i:I

    .line 6
    iput v1, v0, Lk0/mt;->o:I

    .line 7
    iget-object v0, p0, Lk0/bg;->k:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v2, p0, Lk0/bg;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 9
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v2, p0, Lk0/bg;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v2, p0, Lk0/bg;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 11
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lk0/bg;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 12
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v2, p0, Lk0/bg;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 13
    sget-object v0, Lu0/c;->t:Lo1/y;

    iget-object v2, p0, Lk0/bg;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 14
    sget-object v0, Lh0/d;->c:Lo1/y;

    iget-object v2, p0, Lk0/bg;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 15
    iget-object v0, p0, Lk0/bg;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 16
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/bg;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public final declared-synchronized S3()V
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
    sget v0, Lk0/bg;->y:I

    const/4 v1, 0x6

    .line 3
    invoke-static {v1, v0}, Lk0/bg;->N3(II)V
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

.method public final declared-synchronized T3()V
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
    sget v0, Lk0/bg;->z:I

    const/4 v1, 0x5

    .line 3
    invoke-static {v1, v0}, Lk0/bg;->N3(II)V
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

.method public U2([BII)V
    .locals 22

    move-object/from16 v0, p0

    .line 1
    aget-byte v1, p1, p2

    const/16 v2, 0x16

    const v3, 0xff00

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v1, v2, :cond_25

    const/16 v7, 0x1c

    const/4 v8, 0x2

    if-eq v1, v7, :cond_24

    const/16 v9, 0x31

    const/4 v10, -0x3

    const/4 v11, -0x1

    const/4 v12, -0x2

    const/4 v13, 0x5

    if-eq v1, v9, :cond_1f

    const/16 v9, 0x41

    const/16 v14, 0xa

    const/4 v15, 0x3

    if-eq v1, v9, :cond_1b

    const/16 v3, 0x74

    if-eq v1, v3, :cond_18

    const/16 v9, 0xf

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_f

    :pswitch_0
    new-array v1, v6, [I

    add-int/lit8 v2, p2, 0x3

    .line 2
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v5

    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_f

    :pswitch_1
    add-int/lit8 v1, p2, 0x2

    .line 3
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    const/16 v3, 0x2cac

    invoke-static {v1, v2, v5, v3}, Lk0/qt;->l(IIZI)V

    goto/16 :goto_f

    :pswitch_2
    const/16 v1, 0x75

    new-array v2, v6, [I

    add-int/lit8 v3, p2, 0x2

    .line 4
    aget-byte v3, p1, v3

    and-int/2addr v3, v6

    aput v3, v2, v5

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_f

    :pswitch_3
    add-int/lit8 v1, p2, 0x3

    .line 5
    aget-byte v1, p1, v1

    const-string v2, "persist.syu.reversefrontdoor"

    .line 6
    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x0

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 7
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x1

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 8
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x1

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 9
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x0

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 10
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x2

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 11
    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 12
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 13
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/2addr v1, v13

    and-int/2addr v1, v6

    aput v1, v2, v5

    .line 14
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_f

    :pswitch_4
    add-int/lit8 v1, p2, 0x2

    .line 15
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x3

    .line 16
    aget-byte v2, p1, v2

    add-int/lit8 v3, p2, 0x4

    .line 17
    aget-byte v3, p1, v3

    add-int/lit8 v4, p2, 0x5

    .line 18
    aget-byte v4, p1, v4

    and-int/lit16 v1, v1, 0xff

    if-le v1, v14, :cond_1

    move v1, v14

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    move v1, v9

    .line 19
    :cond_2
    :goto_1
    invoke-static {v1}, Lu0/d;->D2(I)V

    and-int/lit16 v1, v2, 0xff

    if-le v1, v14, :cond_3

    move v1, v14

    goto :goto_2

    :cond_3
    if-nez v1, :cond_4

    move v1, v9

    .line 20
    :cond_4
    :goto_2
    invoke-static {v1}, Lu0/d;->E2(I)V

    and-int/lit16 v1, v3, 0xff

    if-le v1, v14, :cond_5

    move v1, v14

    goto :goto_3

    :cond_5
    if-nez v1, :cond_6

    move v1, v9

    .line 21
    :cond_6
    :goto_3
    invoke-static {v1}, Lu0/d;->F2(I)V

    and-int/lit16 v1, v4, 0xff

    if-le v1, v14, :cond_7

    goto :goto_4

    :cond_7
    if-nez v1, :cond_8

    move v14, v9

    goto :goto_4

    :cond_8
    move v14, v1

    .line 22
    :goto_4
    invoke-static {v14}, Lu0/d;->G2(I)V

    goto/16 :goto_f

    :pswitch_5
    add-int/lit8 v1, p2, 0x2

    .line 23
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x3

    .line 24
    aget-byte v2, p1, v2

    add-int/lit8 v3, p2, 0x4

    .line 25
    aget-byte v3, p1, v3

    add-int/lit8 v4, p2, 0x5

    .line 26
    aget-byte v4, p1, v4

    and-int/lit16 v1, v1, 0xff

    if-le v1, v14, :cond_9

    move v1, v14

    goto :goto_5

    :cond_9
    if-nez v1, :cond_a

    move v1, v9

    .line 27
    :cond_a
    :goto_5
    invoke-static {v1}, Lu0/d;->R2(I)V

    and-int/lit16 v1, v2, 0xff

    if-le v1, v14, :cond_b

    move v1, v14

    goto :goto_6

    :cond_b
    if-nez v1, :cond_c

    move v1, v9

    .line 28
    :cond_c
    :goto_6
    invoke-static {v1}, Lu0/d;->S2(I)V

    and-int/lit16 v1, v3, 0xff

    if-le v1, v14, :cond_d

    move v1, v14

    goto :goto_7

    :cond_d
    if-nez v1, :cond_e

    move v1, v9

    .line 29
    :cond_e
    :goto_7
    invoke-static {v1}, Lu0/d;->T2(I)V

    and-int/lit16 v1, v4, 0xff

    if-le v1, v14, :cond_f

    goto :goto_8

    :cond_f
    if-nez v1, :cond_10

    move v14, v9

    goto :goto_8

    :cond_10
    move v14, v1

    .line 30
    :goto_8
    invoke-static {v14}, Lu0/d;->U2(I)V

    goto/16 :goto_f

    :pswitch_6
    add-int/lit8 v1, p2, 0x2

    .line 31
    aget-byte v1, p1, v1

    add-int/lit8 v3, p2, 0x3

    .line 32
    aget-byte v3, p1, v3

    add-int/lit8 v4, p2, 0x4

    .line 33
    aget-byte v8, p1, v4

    add-int/lit8 v16, p2, 0x5

    .line 34
    aget-byte v17, p1, v16

    add-int/lit8 v18, p2, 0x6

    .line 35
    aget-byte v18, p1, v18

    add-int/lit8 v19, p2, 0x7

    .line 36
    aget-byte v19, p1, v19

    new-array v13, v6, [I

    shr-int/lit8 v20, v1, 0x7

    and-int/lit8 v20, v20, 0x1

    aput v20, v13, v5

    .line 37
    invoke-static {v14, v13}, Lk0/qt;->y0(I[I)V

    const/16 v13, 0xb

    new-array v14, v6, [I

    shr-int/lit8 v20, v1, 0x6

    and-int/lit8 v20, v20, 0x1

    aput v20, v14, v5

    .line 38
    invoke-static {v13, v14}, Lk0/qt;->y0(I[I)V

    const/16 v13, 0xc

    new-array v14, v6, [I

    shr-int/lit8 v20, v1, 0x5

    and-int/lit8 v20, v20, 0x1

    aput v20, v14, v5

    .line 39
    invoke-static {v13, v14}, Lk0/qt;->y0(I[I)V

    const/16 v13, 0xe

    new-array v14, v6, [I

    shr-int/lit8 v20, v1, 0x2

    and-int/lit8 v20, v20, 0x1

    aput v20, v14, v5

    .line 40
    invoke-static {v13, v14}, Lk0/qt;->y0(I[I)V

    new-array v13, v6, [I

    shr-int/lit8 v14, v1, 0x1

    and-int/2addr v14, v6

    aput v14, v13, v5

    .line 41
    invoke-static {v9, v13}, Lk0/qt;->y0(I[I)V

    const/16 v13, 0x26

    new-array v14, v6, [I

    and-int/lit8 v20, v1, 0x1

    aput v20, v14, v5

    .line 42
    invoke-static {v13, v14}, Lk0/qt;->y0(I[I)V

    const/16 v13, 0x36

    new-array v14, v6, [I

    shr-int/lit8 v20, v18, 0x7

    and-int/lit8 v20, v20, 0x1

    aput v20, v14, v5

    .line 43
    invoke-static {v13, v14}, Lk0/qt;->y0(I[I)V

    const/16 v13, 0x1d

    new-array v14, v6, [I

    shr-int/lit8 v21, v18, 0x4

    and-int/lit8 v21, v21, 0x3

    aput v21, v14, v5

    .line 44
    invoke-static {v13, v14}, Lk0/qt;->y0(I[I)V

    const/16 v13, 0x43

    new-array v14, v6, [I

    shr-int/lit8 v21, v18, 0x3

    and-int/lit8 v21, v21, 0x1

    aput v21, v14, v5

    .line 45
    invoke-static {v13, v14}, Lk0/qt;->y0(I[I)V

    const/16 v13, 0x35

    new-array v14, v6, [I

    shr-int/lit8 v21, v18, 0x2

    and-int/lit8 v21, v21, 0x1

    aput v21, v14, v5

    .line 46
    invoke-static {v13, v14}, Lk0/qt;->y0(I[I)V

    const/16 v13, 0x1e

    new-array v14, v6, [I

    and-int/lit8 v18, v18, 0x3

    aput v18, v14, v5

    .line 47
    invoke-static {v13, v14}, Lk0/qt;->y0(I[I)V

    const/16 v13, 0x24

    new-array v14, v6, [I

    aput v20, v14, v5

    .line 48
    invoke-static {v13, v14}, Lk0/qt;->y0(I[I)V

    const/16 v13, 0x37

    new-array v14, v6, [I

    shr-int/lit8 v18, v19, 0x3

    and-int/lit8 v18, v18, 0x1

    aput v18, v14, v5

    .line 49
    invoke-static {v13, v14}, Lk0/qt;->y0(I[I)V

    const-string v13, "persist.fyt.reversetemp"

    .line 50
    invoke-static {v13, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 51
    aget-byte v8, p1, v16

    .line 52
    aget-byte v17, p1, v4

    :cond_11
    move/from16 v4, v17

    and-int/lit16 v13, v8, 0xff

    const/16 v14, 0x1b

    if-ne v8, v12, :cond_12

    new-array v8, v6, [I

    aput v12, v8, v5

    .line 53
    invoke-static {v14, v8}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_12
    if-ne v8, v11, :cond_13

    new-array v8, v6, [I

    aput v10, v8, v5

    .line 54
    invoke-static {v14, v8}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_13
    new-array v8, v6, [I

    aput v13, v8, v5

    .line 55
    invoke-static {v14, v8}, Lk0/qt;->y0(I[I)V

    :goto_9
    and-int/lit16 v8, v4, 0xff

    if-ne v4, v12, :cond_14

    new-array v4, v6, [I

    aput v12, v4, v5

    .line 56
    invoke-static {v7, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_a

    :cond_14
    if-ne v4, v11, :cond_15

    new-array v4, v6, [I

    aput v10, v4, v5

    .line 57
    invoke-static {v7, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_a

    :cond_15
    new-array v4, v6, [I

    aput v8, v4, v5

    .line 58
    invoke-static {v7, v4}, Lk0/qt;->y0(I[I)V

    :goto_a
    const/16 v4, 0x12

    new-array v7, v6, [I

    shr-int/lit8 v8, v3, 0x7

    and-int/2addr v8, v6

    aput v8, v7, v5

    .line 59
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x13

    new-array v7, v6, [I

    shr-int/lit8 v8, v3, 0x6

    and-int/2addr v8, v6

    aput v8, v7, v5

    .line 60
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x14

    new-array v7, v6, [I

    shr-int/lit8 v8, v3, 0x5

    and-int/2addr v8, v6

    aput v8, v7, v5

    .line 61
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x15

    new-array v7, v6, [I

    and-int/2addr v3, v9

    aput v3, v7, v5

    .line 62
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    new-array v3, v6, [I

    shr-int/lit8 v4, v19, 0x7

    and-int/2addr v4, v6

    aput v4, v3, v5

    .line 63
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x17

    new-array v3, v6, [I

    shr-int/lit8 v4, v19, 0x6

    and-int/2addr v4, v6

    aput v4, v3, v5

    .line 64
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x18

    new-array v3, v6, [I

    const/4 v4, 0x5

    shr-int/lit8 v4, v19, 0x5

    and-int/2addr v4, v6

    aput v4, v3, v5

    .line 65
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd

    new-array v3, v6, [I

    shr-int/lit8 v4, v1, 0x4

    and-int/2addr v4, v6

    aput v4, v3, v5

    .line 66
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1a

    new-array v3, v6, [I

    shr-int/2addr v1, v15

    and-int/2addr v1, v6

    aput v1, v3, v5

    .line 67
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_f

    :pswitch_7
    add-int/lit8 v1, p2, 0x2

    .line 68
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x3

    .line 69
    aget-byte v2, p1, v2

    and-int/lit16 v1, v1, 0xff

    .line 70
    iput v1, v0, Lk0/bg;->c:I

    move v1, v5

    .line 71
    :goto_b
    iget-object v3, v0, Lk0/bg;->d:[[I

    array-length v4, v3

    if-ge v1, v4, :cond_17

    .line 72
    iget v4, v0, Lk0/bg;->c:I

    aget-object v7, v3, v1

    aget v7, v7, v5

    if-ne v4, v7, :cond_16

    if-eqz v4, :cond_17

    .line 73
    iput v1, v0, Lk0/bg;->b:I

    goto :goto_c

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_17
    :goto_c
    and-int/lit16 v2, v2, 0xff

    if-eqz v2, :cond_26

    .line 74
    array-length v2, v3

    if-ge v1, v2, :cond_26

    .line 75
    aget-object v2, v3, v1

    aget v2, v2, v6

    invoke-static {v2, v5}, Ll0/b0;->l0(II)V

    .line 76
    iget-object v2, v0, Lk0/bg;->d:[[I

    aget-object v1, v2, v1

    aget v1, v1, v6

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_f

    :cond_18
    add-int/lit8 v1, p2, 0x3

    .line 77
    aget-byte v2, p1, v1

    shr-int/lit8 v2, v2, 0x7

    and-int/2addr v2, v6

    if-eq v2, v6, :cond_19

    add-int/lit8 v2, p2, 0x4

    aget-byte v2, p1, v2

    shr-int/lit8 v2, v2, 0x7

    and-int/2addr v2, v6

    if-ne v2, v6, :cond_1a

    .line 78
    :cond_19
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v3, 0x73

    new-array v7, v6, [I

    aput v6, v7, v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v2, v3, v7, v8, v9}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    :cond_1a
    const/16 v2, 0x72

    new-array v3, v6, [I

    .line 79
    aget-byte v1, p1, v1

    shr-int/2addr v1, v4

    and-int/lit8 v1, v1, 0x7

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x71

    new-array v2, v6, [I

    add-int/lit8 v3, p2, 0x4

    .line 80
    aget-byte v3, p1, v3

    shr-int/lit8 v3, v3, 0x6

    and-int/2addr v3, v6

    aput v3, v2, v5

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_f

    :cond_1b
    add-int/lit8 v1, p2, 0x2

    .line 81
    aget-byte v1, p1, v1

    if-eq v1, v8, :cond_1d

    if-eq v1, v15, :cond_1c

    goto/16 :goto_f

    :cond_1c
    const/16 v1, 0x67

    new-array v2, v6, [I

    add-int/lit8 v3, p2, 0x3

    .line 82
    aget-byte v4, p1, v3

    shr-int/lit8 v4, v4, 0x7

    and-int/2addr v4, v6

    aput v4, v2, v5

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x68

    new-array v2, v6, [I

    .line 83
    aget-byte v3, p1, v3

    shr-int/lit8 v3, v3, 0x6

    and-int/2addr v3, v6

    aput v3, v2, v5

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_f

    :cond_1d
    const/16 v1, 0x64

    new-array v2, v6, [I

    add-int/lit8 v4, p2, 0x7

    .line 84
    aget-byte v4, p1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v3

    add-int/lit8 v7, p2, 0x8

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v4, v7

    aput v4, v2, v5

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x66

    new-array v2, v6, [I

    add-int/lit8 v4, p2, 0xe

    .line 85
    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v2, v5

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x65

    new-array v2, v6, [I

    add-int/lit8 v4, p2, 0xb

    .line 86
    aget-byte v4, p1, v4

    shl-int/lit8 v4, v4, 0x10

    const/high16 v7, 0xff0000

    and-int/2addr v4, v7

    add-int/lit8 v7, p2, 0xc

    aget-byte v7, p1, v7

    shl-int/lit8 v7, v7, 0x8

    and-int/2addr v7, v3

    or-int/2addr v4, v7

    add-int/lit8 v7, p2, 0xd

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v4, v7

    aput v4, v2, v5

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v1, p2, 0x9

    .line 87
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v3

    add-int/lit8 v2, p2, 0xa

    aget-byte v2, p1, v2

    shl-int/2addr v2, v5

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_1e

    const v2, 0xffff

    sub-int/2addr v2, v1

    add-int/2addr v2, v6

    rsub-int v1, v2, 0x3e8

    goto :goto_d

    :cond_1e
    add-int/lit16 v1, v1, 0x3e8

    .line 88
    :goto_d
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto/16 :goto_f

    :cond_1f
    add-int/lit8 v1, p2, 0x2

    .line 89
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x3

    .line 90
    aget-byte v2, p1, v2

    add-int/lit8 v3, p2, 0x4

    .line 91
    aget-byte v3, p1, v3

    const/4 v4, 0x5

    add-int/lit8 v4, p2, 0x5

    .line 92
    aget-byte v4, p1, v4

    const/16 v7, 0x51

    new-array v8, v6, [I

    shr-int/lit8 v9, v1, 0x7

    and-int/2addr v9, v6

    aput v9, v8, v5

    .line 93
    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x2b

    new-array v8, v6, [I

    shr-int/lit8 v9, v1, 0x6

    and-int/2addr v9, v6

    aput v9, v8, v5

    .line 94
    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x54

    new-array v8, v6, [I

    shr-int/lit8 v9, v1, 0x5

    and-int/2addr v9, v6

    aput v9, v8, v5

    .line 95
    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x52

    new-array v8, v6, [I

    shr-int/lit8 v9, v1, 0x4

    and-int/2addr v9, v6

    aput v9, v8, v5

    .line 96
    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x53

    new-array v8, v6, [I

    shr-int/lit8 v9, v1, 0x3

    and-int/2addr v9, v6

    aput v9, v8, v5

    .line 97
    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x30

    new-array v8, v6, [I

    shr-int/lit8 v9, v1, 0x2

    and-int/2addr v9, v6

    aput v9, v8, v5

    .line 98
    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x2e

    new-array v8, v6, [I

    shr-int/lit8 v9, v1, 0x1

    and-int/2addr v9, v6

    aput v9, v8, v5

    .line 99
    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x2f

    new-array v8, v6, [I

    shr-int/2addr v1, v5

    and-int/2addr v1, v6

    aput v1, v8, v5

    .line 100
    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x2a

    new-array v7, v6, [I

    shr-int/lit8 v2, v2, 0x7

    and-int/2addr v2, v6

    aput v2, v7, v5

    .line 101
    invoke-static {v1, v7}, Lk0/qt;->y0(I[I)V

    and-int/lit16 v1, v3, 0xff

    const/16 v2, 0x28

    if-ne v3, v12, :cond_20

    new-array v1, v6, [I

    aput v12, v1, v5

    .line 102
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_e

    :cond_20
    if-ne v3, v11, :cond_21

    new-array v1, v6, [I

    aput v10, v1, v5

    .line 103
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_e

    :cond_21
    new-array v3, v6, [I

    aput v1, v3, v5

    .line 104
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :goto_e
    and-int/lit16 v1, v4, 0xff

    const/16 v2, 0x29

    if-ne v4, v12, :cond_22

    new-array v1, v6, [I

    aput v12, v1, v5

    .line 105
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_f

    :cond_22
    if-ne v4, v11, :cond_23

    new-array v1, v6, [I

    aput v10, v1, v5

    .line 106
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_f

    :cond_23
    new-array v3, v6, [I

    aput v1, v3, v5

    .line 107
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_f

    :cond_24
    add-int/lit8 v1, p2, 0x2

    .line 108
    aget-byte v1, p1, v1

    if-ne v1, v8, :cond_26

    const/16 v1, 0x6d

    new-array v2, v6, [I

    add-int/lit8 v3, p2, 0x4

    .line 109
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v5

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x6e

    new-array v2, v6, [I

    add-int/lit8 v3, p2, 0x5

    .line 110
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v5

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x70

    new-array v2, v6, [I

    add-int/lit8 v3, p2, 0x8

    .line 111
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v5

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x6f

    new-array v2, v6, [I

    add-int/lit8 v3, p2, 0x9

    .line 112
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v5

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_f

    :cond_25
    const/16 v1, 0x62

    new-array v2, v6, [I

    add-int/lit8 v7, p2, 0x3

    .line 113
    aget-byte v7, p1, v7

    shl-int/lit8 v7, v7, 0x8

    and-int/2addr v7, v3

    add-int/lit8 v8, p2, 0x2

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v7, v8

    aput v7, v2, v5

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x63

    new-array v2, v6, [I

    add-int/lit8 v7, p2, 0x5

    .line 114
    aget-byte v8, p1, v7

    shl-int/lit8 v8, v8, 0x8

    and-int/2addr v8, v3

    add-int/lit8 v4, p2, 0x4

    aget-byte v9, p1, v4

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v8, v9

    aput v8, v2, v5

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x408

    new-array v2, v6, [I

    .line 115
    aget-byte v6, p1, v7

    shl-int/lit8 v6, v6, 0x8

    and-int/2addr v3, v6

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    aput v3, v2, v5

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    :cond_26
    :goto_f
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

.method public final declared-synchronized U3()V
    .locals 2

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
    sget v0, Lk0/bg;->s:I

    .line 3
    sget v1, Lk0/bg;->t:I

    if-ge v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-le v0, v1, :cond_2

    add-int/lit8 v0, v0, -0x1

    :cond_2
    :goto_0
    const/4 v1, 0x7

    .line 4
    invoke-static {v1, v0}, Lk0/bg;->N3(II)V
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

.method public final V3(I)V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, -0x1d

    aput v2, v0, v1

    const/16 v1, -0x3b

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v1, 0x2

    aput v2, v0, v1

    int-to-byte p1, p1

    const/4 v1, 0x3

    aput p1, v0, v1

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/bg;->k:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/bg;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/bg;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/bg;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/bg;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v1, p0, Lk0/bg;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lu0/c;->t:Lo1/y;

    iget-object v1, p0, Lk0/bg;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lh0/d;->c:Lo1/y;

    iget-object v1, p0, Lk0/bg;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/bg;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 10
    iget-object v0, p0, Lk0/bg;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 11
    iget-object v0, p0, Lk0/bg;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final W3()V
    .locals 9

    .line 1
    new-instance v0, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 3
    iget v1, v0, Landroid/text/format/Time;->year:I

    add-int/lit16 v1, v1, -0x7d0

    int-to-byte v1, v1

    .line 4
    iget v2, v0, Landroid/text/format/Time;->month:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    int-to-byte v2, v2

    .line 5
    iget v4, v0, Landroid/text/format/Time;->monthDay:I

    int-to-byte v4, v4

    .line 6
    iget v5, v0, Landroid/text/format/Time;->hour:I

    int-to-byte v5, v5

    .line 7
    iget v0, v0, Landroid/text/format/Time;->minute:I

    int-to-byte v0, v0

    const/16 v6, 0x9

    new-array v6, v6, [I

    const/16 v7, 0xe3

    const/4 v8, 0x0

    aput v7, v6, v8

    const/16 v7, 0x82

    aput v7, v6, v3

    const/4 v3, 0x2

    const/4 v7, 0x6

    aput v7, v6, v3

    .line 8
    invoke-virtual {p0, v1}, Lk0/bg;->O3(I)I

    move-result v1

    const/4 v3, 0x3

    aput v1, v6, v3

    invoke-virtual {p0, v2}, Lk0/bg;->O3(I)I

    move-result v1

    const/4 v2, 0x4

    aput v1, v6, v2

    invoke-virtual {p0, v4}, Lk0/bg;->O3(I)I

    move-result v1

    const/4 v2, 0x5

    aput v1, v6, v2

    invoke-virtual {p0, v5}, Lk0/bg;->O3(I)I

    move-result v1

    aput v1, v6, v7

    invoke-virtual {p0, v0}, Lk0/bg;->O3(I)I

    move-result v0

    const/4 v1, 0x7

    aput v0, v6, v1

    const/16 v0, 0x8

    aput v8, v6, v0

    invoke-static {v6}, Lz/k;->s([I)V

    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 3

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-eqz p1, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    const/4 v2, 0x6

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_5

    .line 1
    array-length p1, p2

    if-lez p1, :cond_5

    new-array p1, v1, [I

    const/16 v1, 0xe3

    aput v1, p1, p4

    const/16 v1, 0xc4

    aput v1, p1, p3

    const/4 v1, 0x2

    aput p3, p1, v1

    .line 2
    aget p2, p2, p4

    int-to-byte p2, p2

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_5

    .line 3
    array-length p1, p2

    if-lez p1, :cond_5

    .line 4
    aget p1, p2, p4

    aget p2, p2, p3

    invoke-virtual {p0, p1, p2}, Lk0/bg;->c3(II)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_5

    .line 5
    array-length p1, p2

    if-lez p1, :cond_5

    .line 6
    aget p1, p2, p4

    aget p2, p2, p3

    invoke-virtual {p0, p1, p2}, Lk0/bg;->d3(II)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_5

    .line 7
    array-length p1, p2

    if-lez p1, :cond_5

    .line 8
    aget p1, p2, p4

    aget p2, p2, p3

    invoke-virtual {p0, p1, p2}, Lk0/bg;->a3(II)V

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_5

    .line 9
    array-length p1, p2

    if-lez p1, :cond_5

    .line 10
    aget p1, p2, p4

    aget p2, p2, p3

    invoke-virtual {p0, p1, p2}, Lk0/bg;->b3(II)V

    :cond_5
    :goto_0
    return-void
.end method

.method public Z2(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lk0/bg;->E:[I

    const/4 v1, 0x0

    const/16 v2, 0x24

    invoke-static {p1, v1, v2}, Lo1/o0;->a(III)I

    move-result p1

    aget p1, v0, p1

    sput p1, Lk0/bg;->t:I

    :cond_0
    return-void
.end method

.method public final a3(II)V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x71

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v1, v0, v1

    int-to-byte p1, p1

    const/4 v1, 0x3

    aput p1, v0, v1

    int-to-byte p1, p2

    const/4 p2, 0x4

    aput p1, v0, p2

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final b3(II)V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0xc6

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v1, v0, v1

    int-to-byte p1, p1

    const/4 v1, 0x3

    aput p1, v0, v1

    int-to-byte p1, p2

    const/4 p2, 0x4

    aput p1, v0, p2

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final c3(II)V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x8a

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v1, v0, v1

    int-to-byte p1, p1

    const/4 v1, 0x3

    aput p1, v0, v1

    int-to-byte p1, p2

    const/4 p2, 0x4

    aput p1, v0, p2

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final d3(II)V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x76

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v1, v0, v1

    int-to-byte p1, p1

    const/4 v1, 0x3

    aput p1, v0, v1

    int-to-byte p1, p2

    const/4 p2, 0x4

    aput p1, v0, p2

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method
