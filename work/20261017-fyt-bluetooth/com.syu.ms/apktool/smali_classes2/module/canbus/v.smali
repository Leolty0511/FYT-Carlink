.class public Lmodule/canbus/v;
.super Lk0/lt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmodule/canbus/v$c;
    }
.end annotation


# static fields
.field public static i:I

.field public static j:I

.field public static k:I

.field public static l:I

.field public static m:I

.field public static n:I

.field public static o:I

.field public static p:I

.field public static q:I

.field public static r:I

.field public static s:I

.field public static final t:[I

.field public static final u:[I

.field public static final v:[I

.field public static final w:Lo1/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo1/f<",
            "Lmodule/canbus/v$c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Ljava/lang/Runnable;

.field public f:I

.field public g:Ljava/lang/Runnable;

.field public h:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x25

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lmodule/canbus/v;->t:[I

    const/16 v0, 0xb

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lmodule/canbus/v;->u:[I

    const/16 v0, 0x11

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_2

    sput-object v0, Lmodule/canbus/v;->v:[I

    .line 4
    new-instance v0, Lo1/f;

    invoke-direct {v0}, Lo1/f;-><init>()V

    sput-object v0, Lmodule/canbus/v;->w:Lo1/f;

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
        0x1f
        0x20
        0x21
        0x23
        0x25
        0x28
    .end array-data

    :array_1
    .array-data 4
        0xfa
        0xfb
        0xfd
        0xfe
        0xff
        0x0
        0x1
        0x2
        0x3
        0x5
        0x6
    .end array-data

    :array_2
    .array-data 4
        0xfa
        0xfa
        0xfb
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
        0x5
        0x6
        0x6
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lmodule/canbus/v;->c:I

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

    iput-object v1, p0, Lmodule/canbus/v;->d:[[I

    .line 4
    new-instance v1, Lmodule/canbus/v$a;

    invoke-direct {v1, p0}, Lmodule/canbus/v$a;-><init>(Lmodule/canbus/v;)V

    iput-object v1, p0, Lmodule/canbus/v;->e:Ljava/lang/Runnable;

    const/16 v1, 0x64

    .line 5
    iput v1, p0, Lmodule/canbus/v;->f:I

    .line 6
    new-instance v1, Lmodule/canbus/v$b;

    invoke-direct {v1, p0}, Lmodule/canbus/v$b;-><init>(Lmodule/canbus/v;)V

    iput-object v1, p0, Lmodule/canbus/v;->g:Ljava/lang/Runnable;

    .line 7
    iput v0, p0, Lmodule/canbus/v;->h:I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x43
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x44
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x7
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x8
    .end array-data

    :array_5
    .array-data 4
        0x6
        0xc
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x12
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x1a
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x5
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x40
    .end array-data
.end method

.method public static synthetic a3(Lmodule/canbus/v;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/v;->f:I

    return p0
.end method

.method public static synthetic b3(Lmodule/canbus/v;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/v;->h:I

    return p0
.end method

.method public static synthetic c3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/v;->o:I

    return v0
.end method

.method public static synthetic d3(Lmodule/canbus/v;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/v;->h:I

    return p1
.end method

.method public static synthetic e3(Lmodule/canbus/v;)I
    .locals 2

    .line 1
    iget v0, p0, Lmodule/canbus/v;->h:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmodule/canbus/v;->h:I

    return v0
.end method

.method public static synthetic f3(Lmodule/canbus/v;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/v;->A3()V

    return-void
.end method

.method public static synthetic g3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/v;->p:I

    return v0
.end method

.method public static synthetic h3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/v;->r:I

    return v0
.end method

.method public static synthetic i3(Lmodule/canbus/v;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/v;->z3()V

    return-void
.end method

.method public static synthetic j3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/v;->q:I

    return v0
.end method

.method public static synthetic k3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/v;->s:I

    return v0
.end method

.method public static synthetic l3(Lmodule/canbus/v;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/v;->x3()V

    return-void
.end method

.method public static synthetic m3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/v;->j:I

    return v0
.end method

.method public static synthetic n3(I)I
    .locals 0

    .line 1
    sput p0, Lmodule/canbus/v;->j:I

    return p0
.end method

.method public static synthetic o3()[I
    .locals 1

    .line 1
    sget-object v0, Lmodule/canbus/v;->t:[I

    return-object v0
.end method

.method public static synthetic p3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/v;->i:I

    return v0
.end method

.method public static synthetic q3(Lmodule/canbus/v;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/v;->B3()V

    return-void
.end method

.method public static synthetic r3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/v;->k:I

    return v0
.end method

.method public static synthetic s3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/v;->m:I

    return v0
.end method

.method public static synthetic t3(Lmodule/canbus/v;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/v;->y3()V

    return-void
.end method

.method public static synthetic u3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/v;->l:I

    return v0
.end method

.method public static v3(II)V
    .locals 1

    .line 1
    sget-object v0, Lmodule/canbus/v;->w:Lo1/f;

    invoke-virtual {v0, p0}, Lo1/f;->c(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmodule/canbus/v$c;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lmodule/canbus/v$c;->a(I)V

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

    iget v0, v0, Lk0/mt;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    sget v0, Lmodule/canbus/v;->o:I

    const/4 v1, 0x3

    .line 3
    invoke-static {v1, v0}, Lmodule/canbus/v;->v3(II)V
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

    iget v0, v0, Lk0/mt;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    sget v0, Lmodule/canbus/v;->i:I

    .line 3
    sget v1, Lmodule/canbus/v;->j:I

    if-ge v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-le v0, v1, :cond_2

    add-int/lit8 v0, v0, -0x1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 4
    invoke-static {v1, v0}, Lmodule/canbus/v;->v3(II)V
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

    if-eqz p1, :cond_0

    iget-object p1, p0, Lk0/lt;->a:Lk0/mt;

    iget p1, p1, Lk0/mt;->d:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    sget-object p1, Lmodule/canbus/v;->u:[I

    sget-object v1, Ly0/f;->c0:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    shr-int/2addr v3, v0

    const/16 v4, 0xa

    invoke-static {v3, v2, v4}, Lo1/o0;->a(III)I

    move-result v3

    aget v3, p1, v3

    sput v3, Lmodule/canbus/v;->m:I

    .line 3
    aget v3, v1, v0

    shr-int/2addr v3, v0

    invoke-static {v3, v2, v4}, Lo1/o0;->a(III)I

    move-result v3

    aget v3, p1, v3

    sput v3, Lmodule/canbus/v;->n:I

    const/4 v3, 0x2

    .line 4
    aget v1, v1, v3

    shr-int/lit8 v0, v1, 0x1

    invoke-static {v0, v2, v4}, Lo1/o0;->a(III)I

    move-result v0

    aget p1, p1, v0

    sput p1, Lmodule/canbus/v;->o:I

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
    sget-object p1, Lmodule/canbus/v;->v:[I

    sget v0, Ly0/f;->l:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Lo1/o0;->a(III)I

    move-result v0

    aget v0, p1, v0

    sput v0, Lmodule/canbus/v;->r:I

    .line 3
    sget v0, Ly0/f;->j:I

    invoke-static {v0, v1, v2}, Lo1/o0;->a(III)I

    move-result v0

    aget p1, p1, v0

    sput p1, Lmodule/canbus/v;->s:I

    :cond_0
    return-void
.end method

.method public S2()V
    .locals 5

    .line 1
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v1}, Ll0/e0;->e(I)V

    .line 3
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/v;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 4
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/v;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 5
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/v;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 6
    sget-object v0, Lu0/c;->t:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/v;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 7
    iget-object v0, p0, Lmodule/canbus/v;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 8
    :cond_0
    sget v0, Lk0/nt;->a:I

    shr-int/lit8 v0, v0, 0x10

    const v2, 0xffff

    and-int/2addr v0, v2

    .line 9
    iget-object v2, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v2, Lk0/mt;->g:I

    const/4 v3, 0x0

    .line 10
    iput v3, v2, Lk0/mt;->o:I

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    .line 11
    iput v3, v2, Lk0/mt;->e:I

    .line 12
    iput v3, v2, Lk0/mt;->f:I

    .line 13
    iput v3, v2, Lk0/mt;->b:I

    .line 14
    iput v3, v2, Lk0/mt;->c:I

    .line 15
    iput v3, v2, Lk0/mt;->d:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 16
    iput-object v0, v2, Lk0/mt;->a:[Ljava/lang/String;

    .line 17
    iput v3, v2, Lk0/mt;->e:I

    .line 18
    iput v3, v2, Lk0/mt;->f:I

    .line 19
    iput v3, v2, Lk0/mt;->i:I

    .line 20
    iput v1, v2, Lk0/mt;->b:I

    .line 21
    iput v1, v2, Lk0/mt;->c:I

    .line 22
    iput v1, v2, Lk0/mt;->d:I

    .line 23
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 24
    invoke-virtual {p0}, Lmodule/canbus/v;->init()V

    .line 25
    iget-object v0, p0, Lmodule/canbus/v;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    .line 26
    invoke-virtual {p0}, Lmodule/canbus/v;->w3()V

    :cond_2
    :goto_0
    return-void
.end method

.method public U2([BII)V
    .locals 5

    .line 1
    aget-byte p3, p1, p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p3, v0, :cond_5

    const/4 v2, 0x5

    const/4 v3, 0x2

    if-eq p3, v3, :cond_3

    if-eq p3, v2, :cond_1

    const/16 v0, 0x40

    if-eq p3, v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_9

    add-int/lit8 p3, p2, 0x2

    .line 3
    aget-byte p3, p1, p3

    add-int/lit8 v0, p2, 0x3

    .line 4
    aget-byte v0, p1, v0

    add-int/lit8 v2, p2, 0x4

    .line 5
    aget-byte v2, p1, v2

    add-int/lit8 v4, p2, 0x5

    .line 6
    aget-byte v4, p1, v4

    add-int/lit8 p2, p2, 0x6

    .line 7
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    const/16 p2, 0xe

    .line 8
    invoke-static {p1, v1, p2}, Lo1/o0;->a(III)I

    move-result p1

    sput p1, Lmodule/canbus/v;->p:I

    and-int/lit16 p1, v4, 0xff

    .line 9
    invoke-static {p1, v1, p2}, Lo1/o0;->a(III)I

    move-result p1

    sput p1, Lmodule/canbus/v;->q:I

    and-int/lit16 p1, v0, 0xff

    const/16 p2, 0xc

    .line 10
    invoke-static {p1, v3, p2}, Lo1/o0;->a(III)I

    move-result p1

    sput p1, Lmodule/canbus/v;->k:I

    and-int/lit16 p1, v2, 0xff

    .line 11
    invoke-static {p1, v3, p2}, Lo1/o0;->a(III)I

    move-result p1

    sput p1, Lmodule/canbus/v;->l:I

    and-int/lit16 p1, p3, 0xff

    const/16 p2, 0x3f

    .line 12
    invoke-static {p1, v1, p2}, Lo1/o0;->a(III)I

    move-result p1

    sput p1, Lmodule/canbus/v;->i:I

    goto/16 :goto_3

    :cond_1
    add-int/2addr p2, v3

    .line 13
    aget-byte p3, p1, p2

    const/16 v2, 0x80

    and-int/2addr p3, v2

    const/16 v3, 0x28

    if-eqz p3, :cond_2

    .line 14
    aget-byte p1, p1, p2

    invoke-static {p1, v1, v2, v0, v3}, Lk0/qt;->m(IIIZI)V

    goto/16 :goto_3

    .line 15
    :cond_2
    aget-byte p1, p1, p2

    invoke-static {p1, v1, v1, v3}, Lk0/qt;->j(IIII)V

    goto :goto_3

    :cond_3
    add-int/lit8 p3, p2, 0x4

    .line 16
    aget-byte p3, p1, p3

    shl-int/lit8 p3, p3, 0x8

    const v0, 0xff00

    and-int/2addr p3, v0

    add-int/2addr p2, v2

    aget-byte p1, p1, p2

    shl-int/2addr p1, v1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, p3

    const p2, 0x8000

    and-int/2addr p2, p1

    if-eqz p2, :cond_4

    rsub-int p1, p1, 0x3e8

    goto :goto_0

    :cond_4
    add-int/lit16 p1, p1, 0x3e8

    :goto_0
    and-int/lit16 p1, p1, 0x7ff

    .line 17
    invoke-static {p1}, Lu0/d;->A3(I)V

    goto :goto_3

    .line 18
    :cond_5
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_9

    add-int/lit8 p3, p2, 0x2

    .line 19
    aget-byte p3, p1, p3

    add-int/lit8 p2, p2, 0x3

    .line 20
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 21
    iput p2, p0, Lmodule/canbus/v;->c:I

    move p2, v1

    .line 22
    :goto_1
    iget-object p3, p0, Lmodule/canbus/v;->d:[[I

    array-length v2, p3

    if-ge p2, v2, :cond_7

    .line 23
    iget v2, p0, Lmodule/canbus/v;->c:I

    aget-object v3, p3, p2

    aget v3, v3, v1

    if-ne v2, v3, :cond_6

    if-eqz v2, :cond_7

    .line 24
    iput p2, p0, Lmodule/canbus/v;->b:I

    goto :goto_2

    :cond_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    and-int/lit16 p1, p1, 0xff

    if-eqz p1, :cond_8

    .line 25
    array-length p1, p3

    if-ge p2, p1, :cond_9

    .line 26
    aget-object p1, p3, p2

    aget p1, p1, v0

    invoke-static {p1, v1}, Ll0/b0;->l0(II)V

    goto :goto_3

    .line 27
    :cond_8
    array-length p1, p3

    if-gt p2, p1, :cond_9

    .line 28
    iget p1, p0, Lmodule/canbus/v;->b:I

    aget-object p1, p3, p1

    aget p1, p1, v0

    invoke-static {p1, v0}, Ll0/b0;->l0(II)V

    :cond_9
    :goto_3
    return-void
.end method

.method public W2()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Ll0/e0;->e(I)V

    .line 2
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/v;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/v;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/v;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/v;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lu0/c;->t:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/v;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    iget-object v0, p0, Lmodule/canbus/v;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 8
    iget-object v0, p0, Lmodule/canbus/v;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 0

    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 0

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
    sget-object v0, Lmodule/canbus/v;->t:[I

    const/4 v1, 0x0

    const/16 v2, 0x24

    invoke-static {p1, v1, v2}, Lo1/o0;->a(III)I

    move-result p1

    aget p1, v0, p1

    sput p1, Lmodule/canbus/v;->j:I

    :cond_0
    return-void
.end method

.method public final init()V
    .locals 4

    .line 1
    sget-object v0, Lmodule/canbus/v;->w:Lo1/f;

    new-instance v1, Lmodule/canbus/v$c;

    const/4 v2, 0x5

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3}, Lmodule/canbus/v$c;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    .line 2
    new-instance v1, Lmodule/canbus/v$c;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v3}, Lmodule/canbus/v$c;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    .line 3
    new-instance v1, Lmodule/canbus/v$c;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v3}, Lmodule/canbus/v$c;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    .line 4
    new-instance v1, Lmodule/canbus/v$c;

    const/4 v2, 0x3

    invoke-direct {v1, v2, v3}, Lmodule/canbus/v$c;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    .line 5
    new-instance v1, Lmodule/canbus/v$c;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v3}, Lmodule/canbus/v$c;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    return-void
.end method

.method public final w3()V
    .locals 1

    .line 1
    sget v0, Ly0/f;->c:I

    invoke-virtual {p0, v0}, Lmodule/canbus/v;->Z2(I)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lmodule/canbus/v;->P2([I)V

    .line 3
    invoke-virtual {p0, v0}, Lmodule/canbus/v;->R2([I)V

    return-void
.end method

.method public final declared-synchronized x3()V
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
    sget v0, Lmodule/canbus/v;->s:I

    const/4 v1, 0x4

    .line 3
    invoke-static {v1, v0}, Lmodule/canbus/v;->v3(II)V
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

.method public final declared-synchronized y3()V
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
    sget v0, Lmodule/canbus/v;->m:I

    const/4 v1, 0x2

    .line 3
    invoke-static {v1, v0}, Lmodule/canbus/v;->v3(II)V
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

    iget v0, v0, Lk0/mt;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    sget v0, Lmodule/canbus/v;->r:I

    const/4 v1, 0x5

    .line 3
    invoke-static {v1, v0}, Lmodule/canbus/v;->v3(II)V
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
