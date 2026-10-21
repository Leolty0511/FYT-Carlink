.class public Lmodule/canbus/j;
.super Lk0/lt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmodule/canbus/j$b;
    }
.end annotation


# static fields
.field public static h:I

.field public static i:I

.field public static j:I

.field public static k:I

.field public static l:I

.field public static m:I

.field public static n:I

.field public static o:I

.field public static p:I

.field public static q:I

.field public static final r:[I

.field public static final s:[I

.field public static final t:[I

.field public static final u:Lo1/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo1/f<",
            "Lmodule/canbus/j$b;",
            ">;"
        }
    .end annotation
.end field

.field public static final v:Lo1/y;


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:Ljava/lang/Runnable;

.field public g:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x25

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lmodule/canbus/j;->r:[I

    const/16 v0, 0xb

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lmodule/canbus/j;->s:[I

    const/16 v0, 0x11

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_2

    sput-object v0, Lmodule/canbus/j;->t:[I

    .line 4
    new-instance v0, Lo1/f;

    invoke-direct {v0}, Lo1/f;-><init>()V

    sput-object v0, Lmodule/canbus/j;->u:Lo1/f;

    .line 5
    new-instance v0, Lo1/y;

    invoke-direct {v0}, Lo1/y;-><init>()V

    sput-object v0, Lmodule/canbus/j;->v:Lo1/y;

    return-void

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
        0xa
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x16
    .end array-data

    :array_2
    .array-data 4
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
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lmodule/canbus/j;->c:I

    const/16 v1, 0xa

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

    new-array v2, v2, [I

    fill-array-data v2, :array_9

    const/16 v3, 0x9

    aput-object v2, v1, v3

    iput-object v1, p0, Lmodule/canbus/j;->d:[[I

    const/16 v1, 0xc8

    .line 4
    iput v1, p0, Lmodule/canbus/j;->e:I

    .line 5
    new-instance v1, Lmodule/canbus/j$a;

    invoke-direct {v1, p0}, Lmodule/canbus/j$a;-><init>(Lmodule/canbus/j;)V

    iput-object v1, p0, Lmodule/canbus/j;->f:Ljava/lang/Runnable;

    .line 6
    iput v0, p0, Lmodule/canbus/j;->g:I

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
        0xc
    .end array-data

    :array_3
    .array-data 4
        0x4
        -0x1
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x12
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x1a
    .end array-data

    :array_6
    .array-data 4
        0x7
        -0x1
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x3
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x4
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x2
    .end array-data
.end method

.method public static synthetic a3(Lmodule/canbus/j;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/j;->e:I

    return p0
.end method

.method public static synthetic b3(Lmodule/canbus/j;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/j;->g:I

    return p0
.end method

.method public static synthetic c3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/j;->m:I

    return v0
.end method

.method public static synthetic d3(Lmodule/canbus/j;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/j;->g:I

    return p1
.end method

.method public static synthetic e3(Lmodule/canbus/j;)I
    .locals 2

    .line 1
    iget v0, p0, Lmodule/canbus/j;->g:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmodule/canbus/j;->g:I

    return v0
.end method

.method public static synthetic f3(Lmodule/canbus/j;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/j;->B3()V

    return-void
.end method

.method public static synthetic g3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/j;->n:I

    return v0
.end method

.method public static synthetic h3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/j;->p:I

    return v0
.end method

.method public static synthetic i3(Lmodule/canbus/j;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/j;->A3()V

    return-void
.end method

.method public static synthetic j3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/j;->o:I

    return v0
.end method

.method public static synthetic k3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/j;->q:I

    return v0
.end method

.method public static synthetic l3(Lmodule/canbus/j;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/j;->y3()V

    return-void
.end method

.method public static synthetic m3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/j;->i:I

    return v0
.end method

.method public static synthetic n3(I)I
    .locals 0

    .line 1
    sput p0, Lmodule/canbus/j;->i:I

    return p0
.end method

.method public static synthetic o3()[I
    .locals 1

    .line 1
    sget-object v0, Lmodule/canbus/j;->r:[I

    return-object v0
.end method

.method public static synthetic p3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/j;->h:I

    return v0
.end method

.method public static synthetic q3(Lmodule/canbus/j;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/j;->C3()V

    return-void
.end method

.method public static synthetic r3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/j;->j:I

    return v0
.end method

.method public static synthetic s3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/j;->l:I

    return v0
.end method

.method public static synthetic t3(Lmodule/canbus/j;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/j;->z3()V

    return-void
.end method

.method public static synthetic u3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/j;->k:I

    return v0
.end method

.method public static w3(II)V
    .locals 1

    .line 1
    sget-object v0, Lmodule/canbus/j;->u:Lo1/f;

    invoke-virtual {v0, p0}, Lo1/f;->c(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmodule/canbus/j$b;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lmodule/canbus/j$b;->a(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized A3()V
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
    sget v0, Lmodule/canbus/j;->p:I

    const/4 v1, 0x3

    .line 3
    invoke-static {v1, v0}, Lmodule/canbus/j;->w3(II)V
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

.method public final declared-synchronized B3()V
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
    sget v0, Lmodule/canbus/j;->m:I

    const/4 v1, 0x6

    .line 3
    invoke-static {v1, v0}, Lmodule/canbus/j;->w3(II)V
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

.method public final declared-synchronized C3()V
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

    :cond_0
    const/4 v0, 0x1

    .line 2
    :try_start_1
    sget v1, Lmodule/canbus/j;->i:I

    invoke-static {v0, v1}, Lmodule/canbus/j;->w3(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
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

.method public N2()V
    .locals 2

    .line 1
    sget v0, Lk0/nt;->c:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    .line 2
    sput v0, Ly0/f;->C0:I

    :goto_0
    return-void
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
    sget-object p1, Lmodule/canbus/j;->s:[I

    sget-object v1, Ly0/f;->c0:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    shr-int/2addr v3, v0

    const/16 v4, 0xa

    invoke-static {v3, v2, v4}, Lo1/o0;->a(III)I

    move-result v3

    aget v3, p1, v3

    sput v3, Lmodule/canbus/j;->l:I

    const/4 v3, 0x2

    .line 3
    aget v1, v1, v3

    shr-int/lit8 v0, v1, 0x1

    invoke-static {v0, v2, v4}, Lo1/o0;->a(III)I

    move-result v0

    aget p1, p1, v0

    sput p1, Lmodule/canbus/j;->m:I

    :cond_0
    return-void
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
    sget-object p1, Lmodule/canbus/j;->t:[I

    sget v0, Ly0/f;->l:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Lo1/o0;->a(III)I

    move-result v0

    aget v0, p1, v0

    sput v0, Lmodule/canbus/j;->p:I

    .line 3
    sget v0, Ly0/f;->j:I

    invoke-static {v0, v1, v2}, Lo1/o0;->a(III)I

    move-result v0

    aget p1, p1, v0

    sput p1, Lmodule/canbus/j;->q:I

    :cond_0
    return-void
.end method

.method public S2()V
    .locals 4

    .line 1
    sget v0, Lk0/nt;->c:I

    const-string v1, "com.syu.canbus"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    .line 2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 3
    iput v3, v0, Lk0/mt;->e:I

    .line 4
    iput v3, v0, Lk0/mt;->f:I

    .line 5
    iput v3, v0, Lk0/mt;->g:I

    .line 6
    iput v3, v0, Lk0/mt;->b:I

    .line 7
    iput v3, v0, Lk0/mt;->c:I

    .line 8
    iput v3, v0, Lk0/mt;->d:I

    .line 9
    iput v3, v0, Lk0/mt;->o:I

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 11
    iput v3, v0, Lk0/mt;->e:I

    .line 12
    iput v3, v0, Lk0/mt;->f:I

    .line 13
    iput v3, v0, Lk0/mt;->g:I

    .line 14
    iput v2, v0, Lk0/mt;->b:I

    .line 15
    iput v2, v0, Lk0/mt;->c:I

    .line 16
    iput v2, v0, Lk0/mt;->d:I

    .line 17
    iput v3, v0, Lk0/mt;->o:I

    .line 18
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19
    invoke-virtual {p0}, Lmodule/canbus/j;->init()V

    .line 20
    iget-object v0, p0, Lmodule/canbus/j;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    .line 21
    invoke-virtual {p0}, Lmodule/canbus/j;->x3()V

    .line 22
    :cond_1
    :goto_0
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 23
    sget-object v0, Ll0/g0;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 24
    sget-object v0, Lw0/e;->a:Lo1/y;

    sget-object v1, Ll0/g0;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 25
    sget-object v0, Lw0/e;->e:Lo1/y;

    sget-object v1, Ll0/g0;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    :cond_2
    return-void
.end method

.method public U2([BII)V
    .locals 5

    add-int/lit8 p3, p2, 0x1

    .line 1
    aget-byte p3, p1, p3

    const/16 v0, -0x5a

    const/4 v1, 0x0

    const/16 v2, 0xff

    if-eq p3, v0, :cond_5

    const/16 v0, 0x72

    if-eq p3, v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_6

    add-int/lit8 p2, p2, 0x4

    .line 3
    aget-byte p1, p1, p2

    and-int/2addr p1, v2

    iput p1, p0, Lmodule/canbus/j;->c:I

    move p1, v1

    .line 4
    :goto_0
    iget-object p2, p0, Lmodule/canbus/j;->d:[[I

    array-length p3, p2

    if-ge p1, p3, :cond_2

    .line 5
    iget p3, p0, Lmodule/canbus/j;->c:I

    aget-object v0, p2, p1

    aget v0, v0, v1

    if-ne p3, v0, :cond_1

    if-eqz p3, :cond_2

    .line 6
    iput p1, p0, Lmodule/canbus/j;->b:I

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 7
    :cond_2
    :goto_1
    iget p3, p0, Lmodule/canbus/j;->c:I

    const/4 v0, 0x1

    if-eqz p3, :cond_3

    .line 8
    array-length p3, p2

    if-ge p1, p3, :cond_6

    .line 9
    aget-object p1, p2, p1

    aget p1, p1, v0

    invoke-static {p1, v1}, Ll0/b0;->l0(II)V

    goto :goto_2

    .line 10
    :cond_3
    iget p1, p0, Lmodule/canbus/j;->b:I

    array-length p3, p2

    if-ge p1, p3, :cond_4

    if-eq p1, v2, :cond_4

    .line 11
    aget-object p1, p2, p1

    aget p1, p1, v0

    invoke-static {p1, v0}, Ll0/b0;->l0(II)V

    .line 12
    :cond_4
    iput v2, p0, Lmodule/canbus/j;->b:I

    goto :goto_2

    .line 13
    :cond_5
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_6

    add-int/lit8 p3, p2, 0x2

    .line 14
    aget-byte p3, p1, p3

    add-int/lit8 v0, p2, 0x3

    .line 15
    aget-byte v0, p1, v0

    add-int/lit8 v3, p2, 0x4

    .line 16
    aget-byte v3, p1, v3

    add-int/lit8 v4, p2, 0x5

    .line 17
    aget-byte v4, p1, v4

    add-int/lit8 p2, p2, 0x7

    .line 18
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    const/16 p3, 0x3f

    .line 19
    invoke-static {p2, v1, p3}, Lo1/o0;->a(III)I

    move-result p2

    sput p2, Lmodule/canbus/j;->h:I

    and-int/lit16 p2, v3, 0xff

    const/16 p3, 0x8

    const/16 v1, 0x18

    .line 20
    invoke-static {p2, p3, v1}, Lo1/o0;->a(III)I

    move-result p2

    sput p2, Lmodule/canbus/j;->n:I

    and-int/lit16 p2, v0, 0xff

    .line 21
    invoke-static {p2, p3, v1}, Lo1/o0;->a(III)I

    move-result p2

    sput p2, Lmodule/canbus/j;->o:I

    and-int/lit16 p2, v4, 0xff

    .line 22
    invoke-static {p2, p3, v1}, Lo1/o0;->a(III)I

    move-result p2

    sput p2, Lmodule/canbus/j;->j:I

    and-int/2addr p1, v2

    .line 23
    invoke-static {p1, p3, v1}, Lo1/o0;->a(III)I

    move-result p1

    sput p1, Lmodule/canbus/j;->k:I

    :cond_6
    :goto_2
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Ll0/g0;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lw0/e;->a:Lo1/y;

    sget-object v1, Ll0/g0;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lw0/e;->e:Lo1/y;

    sget-object v1, Ll0/g0;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lmodule/canbus/j;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 0

    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x83

    .line 1
    invoke-virtual {p0, p1}, Lmodule/canbus/j;->v3(I)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x82

    .line 2
    invoke-virtual {p0, p1}, Lmodule/canbus/j;->v3(I)V

    goto :goto_0

    :cond_2
    const/16 p1, 0x81

    .line 3
    invoke-virtual {p0, p1}, Lmodule/canbus/j;->v3(I)V

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
    sget-object v0, Lmodule/canbus/j;->r:[I

    const/4 v1, 0x0

    const/16 v2, 0x24

    invoke-static {p1, v1, v2}, Lo1/o0;->a(III)I

    move-result p1

    aget p1, v0, p1

    sput p1, Lmodule/canbus/j;->i:I

    :cond_0
    return-void
.end method

.method public final init()V
    .locals 4

    .line 1
    sget-object v0, Lmodule/canbus/j;->u:Lo1/f;

    new-instance v1, Lmodule/canbus/j$b;

    const/4 v2, 0x3

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3}, Lmodule/canbus/j$b;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    .line 2
    new-instance v1, Lmodule/canbus/j$b;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v3}, Lmodule/canbus/j$b;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    .line 3
    new-instance v1, Lmodule/canbus/j$b;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v3}, Lmodule/canbus/j$b;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    .line 4
    new-instance v1, Lmodule/canbus/j$b;

    const/4 v2, 0x6

    invoke-direct {v1, v2, v3}, Lmodule/canbus/j$b;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    .line 5
    new-instance v1, Lmodule/canbus/j$b;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v3}, Lmodule/canbus/j$b;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    return-void
.end method

.method public final v3(I)V
    .locals 5

    const/16 v0, 0x10

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/16 v3, 0xd

    aput v3, v0, v1

    const/4 v1, 0x2

    const/16 v4, -0x2e

    aput v4, v0, v1

    int-to-byte p1, p1

    const/4 v1, 0x3

    aput p1, v0, v1

    const/4 p1, 0x4

    aput v2, v0, p1

    const/4 p1, 0x5

    aput v2, v0, p1

    const/4 p1, 0x6

    aput v2, v0, p1

    const/4 p1, 0x7

    aput v2, v0, p1

    const/16 p1, 0x8

    aput v2, v0, p1

    const/16 p1, 0x9

    aput v2, v0, p1

    const/16 p1, 0xa

    aput v2, v0, p1

    const/16 p1, 0xb

    aput v2, v0, p1

    const/16 p1, 0xc

    aput v2, v0, p1

    aput v2, v0, v3

    const/16 p1, 0xe

    aput v2, v0, p1

    const/16 p1, 0xf

    aput v2, v0, p1

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final x3()V
    .locals 1

    .line 1
    sget v0, Ly0/f;->c:I

    invoke-virtual {p0, v0}, Lmodule/canbus/j;->Z2(I)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lmodule/canbus/j;->P2([I)V

    .line 3
    invoke-virtual {p0, v0}, Lmodule/canbus/j;->R2([I)V

    return-void
.end method

.method public final declared-synchronized y3()V
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
    sget v0, Lmodule/canbus/j;->q:I

    const/4 v1, 0x2

    .line 3
    invoke-static {v1, v0}, Lmodule/canbus/j;->w3(II)V
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

.method public final declared-synchronized z3()V
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
    sget v0, Lmodule/canbus/j;->l:I

    const/4 v1, 0x4

    .line 3
    invoke-static {v1, v0}, Lmodule/canbus/j;->w3(II)V
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
