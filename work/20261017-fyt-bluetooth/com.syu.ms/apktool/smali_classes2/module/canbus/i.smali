.class public Lmodule/canbus/i;
.super Lk0/lt;
.source "SourceFile"

# interfaces
.implements Lo1/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmodule/canbus/i$f;
    }
.end annotation


# static fields
.field public static A:I

.field public static B:I

.field public static final C:[I

.field public static final D:[I

.field public static final E:[I

.field public static final F:Lo1/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo1/f<",
            "Lmodule/canbus/i$f;",
            ">;"
        }
    .end annotation
.end field

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
.field public b:[[I

.field public c:I

.field public d:I

.field public e:[[I

.field public final f:[B

.field public g:I

.field public h:I

.field public i:I

.field public final j:Ljava/lang/Runnable;

.field public k:Ljava/lang/Runnable;

.field public l:Ljava/lang/Runnable;

.field public m:Z

.field public n:I

.field public o:Ljava/lang/Runnable;

.field public p:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x25

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lmodule/canbus/i;->C:[I

    const/16 v0, 0xb

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lmodule/canbus/i;->D:[I

    const/16 v0, 0x11

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_2

    sput-object v0, Lmodule/canbus/i;->E:[I

    .line 4
    new-instance v0, Lo1/f;

    invoke-direct {v0}, Lo1/f;-><init>()V

    sput-object v0, Lmodule/canbus/i;->F:Lo1/f;

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

    const/16 v0, 0xf

    new-array v0, v0, [[I

    .line 2
    iput-object v0, p0, Lmodule/canbus/i;->b:[[I

    const/16 v0, 0xff

    .line 3
    iput v0, p0, Lmodule/canbus/i;->d:I

    const/16 v0, 0xe

    new-array v0, v0, [[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 4
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const/4 v4, 0x1

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v2, v1, [I

    fill-array-data v2, :array_3

    const/4 v5, 0x3

    aput-object v2, v0, v5

    new-array v2, v1, [I

    fill-array-data v2, :array_4

    const/4 v5, 0x4

    aput-object v2, v0, v5

    new-array v2, v1, [I

    fill-array-data v2, :array_5

    const/4 v5, 0x5

    aput-object v2, v0, v5

    new-array v2, v1, [I

    fill-array-data v2, :array_6

    const/4 v5, 0x6

    aput-object v2, v0, v5

    new-array v2, v1, [I

    fill-array-data v2, :array_7

    const/4 v5, 0x7

    aput-object v2, v0, v5

    new-array v2, v1, [I

    fill-array-data v2, :array_8

    const/16 v5, 0x8

    aput-object v2, v0, v5

    new-array v2, v1, [I

    fill-array-data v2, :array_9

    const/16 v5, 0x9

    aput-object v2, v0, v5

    new-array v2, v1, [I

    fill-array-data v2, :array_a

    const/16 v5, 0xa

    aput-object v2, v0, v5

    new-array v2, v1, [I

    fill-array-data v2, :array_b

    const/16 v5, 0xb

    aput-object v2, v0, v5

    new-array v2, v1, [I

    fill-array-data v2, :array_c

    const/16 v5, 0xc

    aput-object v2, v0, v5

    new-array v1, v1, [I

    fill-array-data v1, :array_d

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iput-object v0, p0, Lmodule/canbus/i;->e:[[I

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 5
    iput-object v0, p0, Lmodule/canbus/i;->f:[B

    .line 6
    iput v3, p0, Lmodule/canbus/i;->g:I

    .line 7
    iput v3, p0, Lmodule/canbus/i;->h:I

    .line 8
    iput v3, p0, Lmodule/canbus/i;->i:I

    .line 9
    new-instance v0, Lmodule/canbus/i$a;

    invoke-direct {v0, p0}, Lmodule/canbus/i$a;-><init>(Lmodule/canbus/i;)V

    iput-object v0, p0, Lmodule/canbus/i;->j:Ljava/lang/Runnable;

    .line 10
    new-instance v0, Lmodule/canbus/i$b;

    invoke-direct {v0, p0}, Lmodule/canbus/i$b;-><init>(Lmodule/canbus/i;)V

    iput-object v0, p0, Lmodule/canbus/i;->k:Ljava/lang/Runnable;

    .line 11
    new-instance v0, Lmodule/canbus/i$c;

    invoke-direct {v0, p0}, Lmodule/canbus/i$c;-><init>(Lmodule/canbus/i;)V

    iput-object v0, p0, Lmodule/canbus/i;->l:Ljava/lang/Runnable;

    .line 12
    iput-boolean v4, p0, Lmodule/canbus/i;->m:Z

    const/16 v0, 0xc8

    .line 13
    iput v0, p0, Lmodule/canbus/i;->n:I

    .line 14
    new-instance v0, Lmodule/canbus/i$e;

    invoke-direct {v0, p0}, Lmodule/canbus/i$e;-><init>(Lmodule/canbus/i;)V

    iput-object v0, p0, Lmodule/canbus/i;->o:Ljava/lang/Runnable;

    .line 15
    iput v3, p0, Lmodule/canbus/i;->p:I

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
        -0x1
    .end array-data

    :array_3
    .array-data 4
        0x4
        0xd
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
        0xc
        0x2
    .end array-data

    :array_a
    .array-data 4
        0xd
        0x3
    .end array-data

    :array_b
    .array-data 4
        0xe
        0x4
    .end array-data

    :array_c
    .array-data 4
        0xf
        0x1d
    .end array-data

    :array_d
    .array-data 4
        0x10
        0x6
    .end array-data
.end method

.method public static synthetic A3(Lmodule/canbus/i;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/i;->Q3()V

    return-void
.end method

.method public static synthetic B3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/i;->s:I

    return v0
.end method

.method public static synthetic C3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/i;->v:I

    return v0
.end method

.method public static D3(II)V
    .locals 1

    .line 1
    sget-object v0, Lmodule/canbus/i;->F:Lo1/f;

    invoke-virtual {v0, p0}, Lo1/f;->c(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmodule/canbus/i$f;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lmodule/canbus/i$f;->a(I)V

    :cond_0
    return-void
.end method

.method public static R3([B)V
    .locals 4

    if-eqz p0, :cond_1

    .line 1
    array-length v0, p0

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    .line 2
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    .line 3
    aget-byte v2, p0, v2

    :goto_0
    if-gt v1, v0, :cond_0

    .line 4
    aget-byte v3, p0, v1

    add-int/2addr v2, v3

    int-to-byte v2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    and-int/lit16 v1, v2, 0xff

    int-to-byte v1, v1

    .line 5
    aput-byte v1, p0, v0

    .line 6
    invoke-static {p0}, Lz/k;->q([B)V

    :cond_1
    return-void
.end method

.method public static synthetic access$1700()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/i;->y:I

    return v0
.end method

.method public static b3(I)I
    .locals 3

    const/16 v0, 0xf

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz p0, :cond_4

    if-eq p0, v2, :cond_3

    const/4 v2, 0x2

    if-eq p0, v2, :cond_2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    :cond_4
    :goto_0
    return v0
.end method

.method public static synthetic e3(Lmodule/canbus/i;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/i;->I3()V

    return-void
.end method

.method public static synthetic f3(Lmodule/canbus/i;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lmodule/canbus/i;->c3(I)V

    return-void
.end method

.method public static synthetic g3(Lmodule/canbus/i;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/i;->L3()V

    return-void
.end method

.method public static synthetic h3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/i;->t:I

    return v0
.end method

.method public static synthetic i3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/i;->w:I

    return v0
.end method

.method public static synthetic j3(Lmodule/canbus/i;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/i;->O3()V

    return-void
.end method

.method public static synthetic k3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/i;->u:I

    return v0
.end method

.method public static synthetic l3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/i;->x:I

    return v0
.end method

.method public static synthetic m3(Lmodule/canbus/i;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/i;->P3()V

    return-void
.end method

.method public static synthetic n3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/i;->A:I

    return v0
.end method

.method public static synthetic o3(Lmodule/canbus/i;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/i;->N3()V

    return-void
.end method

.method public static synthetic p3(Lmodule/canbus/i;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/i;->n:I

    return p0
.end method

.method public static synthetic q3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/i;->z:I

    return v0
.end method

.method public static synthetic r3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/i;->B:I

    return v0
.end method

.method public static synthetic s3(Lmodule/canbus/i;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/i;->K3()V

    return-void
.end method

.method public static synthetic t3(Lmodule/canbus/i;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/i;->p:I

    return p0
.end method

.method public static synthetic u3(Lmodule/canbus/i;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/i;->p:I

    return p1
.end method

.method public static synthetic v3(Lmodule/canbus/i;)I
    .locals 2

    .line 1
    iget v0, p0, Lmodule/canbus/i;->p:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmodule/canbus/i;->p:I

    return v0
.end method

.method public static synthetic w3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/i;->r:I

    return v0
.end method

.method public static synthetic x3(I)I
    .locals 0

    .line 1
    sput p0, Lmodule/canbus/i;->r:I

    return p0
.end method

.method public static synthetic y3()[I
    .locals 1

    .line 1
    sget-object v0, Lmodule/canbus/i;->C:[I

    return-object v0
.end method

.method public static synthetic z3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/i;->q:I

    return v0
.end method


# virtual methods
.method public final E3()V
    .locals 1

    .line 1
    sget v0, Ly0/f;->c:I

    invoke-virtual {p0, v0}, Lmodule/canbus/i;->Z2(I)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lmodule/canbus/i;->P2([I)V

    .line 3
    invoke-virtual {p0, v0}, Lmodule/canbus/i;->R2([I)V

    return-void
.end method

.method public final F3()Z
    .locals 2

    .line 1
    sget v0, Lk0/nt;->c:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

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

.method public final G3(II)V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, -0x1d

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x2

    aput v2, v0, v1

    const/16 v1, 0x6c

    aput v1, v0, v2

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

.method public final H3(II)V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, -0x1d

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x2

    aput v2, v0, v1

    const/16 v1, 0x6b

    aput v1, v0, v2

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

.method public final I3()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/i;->F3()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    .line 2
    invoke-virtual {p0, v0, v1}, Lmodule/canbus/i;->M3(II)V

    goto :goto_0

    .line 3
    :cond_0
    sget v0, Lk0/nt;->c:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    const/4 v2, 0x7

    if-eq v0, v2, :cond_1

    const/16 v2, 0x8

    if-ne v0, v2, :cond_2

    :cond_1
    const/16 v0, 0x12

    .line 4
    invoke-virtual {p0, v0, v1}, Lmodule/canbus/i;->M3(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final J3(II)V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, -0x1d

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x2

    aput v2, v0, v1

    const/16 v1, 0x6a

    aput v1, v0, v2

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

.method public final declared-synchronized K3()V
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
    sget v0, Lmodule/canbus/i;->B:I

    const/4 v1, 0x2

    .line 3
    invoke-static {v1, v0}, Lmodule/canbus/i;->D3(II)V
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

.method public final declared-synchronized L3()V
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
    sget v0, Lmodule/canbus/i;->v:I

    const/4 v1, 0x4

    .line 3
    invoke-static {v1, v0}, Lmodule/canbus/i;->D3(II)V
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

.method public final M3(II)V
    .locals 9

    const/4 v0, 0x7

    new-array v0, v0, [B

    const/16 v1, 0x5a

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/16 v1, -0x5b

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    const/4 v1, 0x2

    aput-byte v1, v0, v1

    const/4 v4, 0x3

    const/16 v5, 0x24

    aput-byte v5, v0, v4

    int-to-byte v6, p1

    const/4 v7, 0x4

    aput-byte v6, v0, v7

    int-to-byte p2, p2

    const/4 v6, 0x5

    aput-byte p2, v0, v6

    const/4 v8, 0x6

    aput-byte v2, v0, v8

    .line 1
    invoke-static {v0}, Lmodule/canbus/i;->R3([B)V

    new-array v0, v8, [I

    const/16 v8, 0xe3

    aput v8, v0, v2

    aput v1, v0, v3

    aput v5, v0, v1

    aput p1, v0, v4

    aput p2, v0, v7

    aput v2, v0, v6

    .line 2
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
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
    sget v0, Lmodule/canbus/i;->A:I

    const/4 v1, 0x3

    .line 3
    invoke-static {v1, v0}, Lmodule/canbus/i;->D3(II)V
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

.method public O2([I)V
    .locals 7

    if-eqz p1, :cond_b

    .line 1
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    aget v0, p1, v0

    const/16 v2, 0x10

    const/16 v3, 0xd

    const/16 v4, 0xb

    const/16 v5, 0xc

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 3
    :pswitch_1
    aget p1, p1, v6

    if-eqz p1, :cond_1

    const/16 p1, 0xf

    .line 4
    invoke-virtual {p0, p1}, Lmodule/canbus/i;->c3(I)V

    goto/16 :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, v2}, Lmodule/canbus/i;->c3(I)V

    goto/16 :goto_0

    .line 6
    :pswitch_2
    aget p1, p1, v6

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p0, v3}, Lmodule/canbus/i;->c3(I)V

    goto/16 :goto_0

    :cond_2
    const/16 p1, 0xe

    .line 8
    invoke-virtual {p0, p1}, Lmodule/canbus/i;->c3(I)V

    goto/16 :goto_0

    .line 9
    :pswitch_3
    aget p1, p1, v6

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    .line 10
    invoke-virtual {p0, v4}, Lmodule/canbus/i;->c3(I)V

    goto/16 :goto_0

    .line 11
    :cond_3
    invoke-virtual {p0, v5}, Lmodule/canbus/i;->c3(I)V

    goto/16 :goto_0

    .line 12
    :pswitch_4
    aget v0, p1, v6

    const/4 v1, 0x7

    if-ne v0, v6, :cond_4

    .line 13
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v5

    if-nez p1, :cond_b

    .line 14
    invoke-virtual {p0, v1}, Lmodule/canbus/i;->c3(I)V

    goto/16 :goto_0

    .line 15
    :cond_4
    aget p1, p1, v6

    if-nez p1, :cond_b

    .line 16
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v5

    if-ne p1, v6, :cond_b

    .line 17
    invoke-virtual {p0, v1}, Lmodule/canbus/i;->c3(I)V

    goto/16 :goto_0

    .line 18
    :pswitch_5
    aget p1, p1, v6

    const/4 v0, 0x6

    if-eqz p1, :cond_5

    .line 19
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-nez p1, :cond_b

    .line 20
    invoke-virtual {p0, v0}, Lmodule/canbus/i;->c3(I)V

    goto/16 :goto_0

    .line 21
    :cond_5
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-ne p1, v6, :cond_b

    .line 22
    invoke-virtual {p0, v0}, Lmodule/canbus/i;->c3(I)V

    goto/16 :goto_0

    .line 23
    :pswitch_6
    aget p1, p1, v6

    const/4 v0, 0x5

    const/16 v1, 0x41

    if-eqz p1, :cond_6

    .line 24
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-nez p1, :cond_b

    .line 25
    invoke-virtual {p0, v0}, Lmodule/canbus/i;->c3(I)V

    goto :goto_0

    .line 26
    :cond_6
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-ne p1, v6, :cond_b

    .line 27
    invoke-virtual {p0, v0}, Lmodule/canbus/i;->c3(I)V

    goto :goto_0

    .line 28
    :pswitch_7
    aget p1, p1, v6

    const/4 v0, 0x4

    if-eqz p1, :cond_7

    .line 29
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v3

    if-nez p1, :cond_b

    .line 30
    invoke-virtual {p0, v0}, Lmodule/canbus/i;->c3(I)V

    goto :goto_0

    .line 31
    :cond_7
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v3

    if-ne p1, v6, :cond_b

    .line 32
    invoke-virtual {p0, v0}, Lmodule/canbus/i;->c3(I)V

    goto :goto_0

    .line 33
    :pswitch_8
    aget p1, p1, v6

    if-eqz p1, :cond_8

    .line 34
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v4

    if-nez p1, :cond_b

    .line 35
    invoke-virtual {p0, v1}, Lmodule/canbus/i;->c3(I)V

    goto :goto_0

    .line 36
    :cond_8
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v4

    if-ne p1, v6, :cond_b

    .line 37
    invoke-virtual {p0, v1}, Lmodule/canbus/i;->c3(I)V

    goto :goto_0

    .line 38
    :pswitch_9
    aget p1, p1, v6

    const/16 v0, 0x15

    if-eqz p1, :cond_a

    .line 39
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-nez p1, :cond_b

    .line 40
    invoke-virtual {p0}, Lmodule/canbus/i;->F3()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 41
    invoke-virtual {p0, v5}, Lmodule/canbus/i;->c3(I)V

    goto :goto_0

    .line 42
    :cond_9
    invoke-virtual {p0, v6}, Lmodule/canbus/i;->c3(I)V

    goto :goto_0

    .line 43
    :cond_a
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-le p1, v6, :cond_b

    .line 44
    invoke-virtual {p0, v6}, Lmodule/canbus/i;->c3(I)V

    :cond_b
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
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
    sget v0, Lmodule/canbus/i;->w:I

    const/4 v1, 0x5

    .line 3
    invoke-static {v1, v0}, Lmodule/canbus/i;->D3(II)V
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
    sget-object p1, Lmodule/canbus/i;->D:[I

    sget-object v1, Ly0/f;->c0:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    shr-int/2addr v3, v0

    const/16 v4, 0xa

    invoke-static {v3, v2, v4}, Lo1/o0;->a(III)I

    move-result v3

    aget v3, p1, v3

    sput v3, Lmodule/canbus/i;->v:I

    .line 3
    aget v3, v1, v0

    shr-int/2addr v3, v0

    invoke-static {v3, v2, v4}, Lo1/o0;->a(III)I

    move-result v3

    aget v3, p1, v3

    sput v3, Lmodule/canbus/i;->w:I

    const/4 v3, 0x2

    .line 4
    aget v1, v1, v3

    shr-int/lit8 v0, v1, 0x1

    invoke-static {v0, v2, v4}, Lo1/o0;->a(III)I

    move-result v0

    aget p1, p1, v0

    sput p1, Lmodule/canbus/i;->x:I

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
    sget v0, Lmodule/canbus/i;->x:I

    const/4 v1, 0x6

    .line 3
    invoke-static {v1, v0}, Lmodule/canbus/i;->D3(II)V
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
    .locals 5

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
    const/4 v0, 0x0

    .line 2
    :try_start_1
    sget v1, Lmodule/canbus/i;->q:I

    .line 3
    sget v2, Lmodule/canbus/i;->r:I

    const/4 v3, 0x1

    const/4 v4, 0x5

    if-gt v1, v2, :cond_1

    sub-int v0, v2, v1

    if-lt v0, v4, :cond_3

    move v0, v4

    goto :goto_0

    :cond_1
    if-le v1, v2, :cond_3

    sub-int/2addr v1, v2

    if-lt v1, v4, :cond_2

    const/16 v0, 0xfb

    goto :goto_0

    :cond_2
    rsub-int v0, v1, 0xff

    add-int/2addr v0, v3

    .line 4
    :cond_3
    :goto_0
    invoke-static {v3, v0}, Lmodule/canbus/i;->D3(II)V
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
    sget-object p1, Lmodule/canbus/i;->E:[I

    sget v0, Ly0/f;->l:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Lo1/o0;->a(III)I

    move-result v0

    aget v0, p1, v0

    sput v0, Lmodule/canbus/i;->A:I

    .line 3
    sget v0, Ly0/f;->j:I

    invoke-static {v0, v1, v2}, Lo1/o0;->a(III)I

    move-result v0

    aget p1, p1, v0

    sput p1, Lmodule/canbus/i;->B:I

    :cond_0
    return-void
.end method

.method public S2()V
    .locals 5

    .line 1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v2, 0x1

    .line 2
    iput v2, v0, Lk0/mt;->e:I

    const/4 v3, 0x0

    .line 3
    iput v3, v0, Lk0/mt;->f:I

    .line 4
    iput v3, v0, Lk0/mt;->g:I

    .line 5
    iput v2, v0, Lk0/mt;->o:I

    const/16 v4, 0x9

    new-array v4, v4, [I

    .line 6
    fill-array-data v4, :array_0

    iput-object v4, v0, Lk0/mt;->m:[I

    .line 7
    invoke-static {}, Lo1/q0;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lmodule/canbus/i;->k:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->y(Ljava/lang/Runnable;)V

    .line 9
    :cond_0
    sget-object v0, Lz/c;->d:Lo1/y;

    iget-object v4, p0, Lmodule/canbus/i;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v4, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    sget v0, Lk0/nt;->c:I

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 11
    :pswitch_0
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_1

    .line 12
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    goto :goto_0

    .line 13
    :cond_1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput-object v4, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 14
    :goto_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->e:I

    .line 15
    iput v3, v0, Lk0/mt;->f:I

    .line 16
    iput v2, v0, Lk0/mt;->g:I

    .line 17
    iput v3, v0, Lk0/mt;->b:I

    .line 18
    iput v3, v0, Lk0/mt;->c:I

    .line 19
    iput v3, v0, Lk0/mt;->d:I

    goto/16 :goto_2

    .line 20
    :pswitch_1
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_2

    .line 21
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    goto :goto_1

    .line 22
    :cond_2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput-object v4, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 23
    :goto_1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->e:I

    .line 24
    iput v3, v0, Lk0/mt;->f:I

    .line 25
    iput v3, v0, Lk0/mt;->g:I

    .line 26
    iput v3, v0, Lk0/mt;->b:I

    .line 27
    iput v3, v0, Lk0/mt;->c:I

    .line 28
    iput v3, v0, Lk0/mt;->d:I

    goto :goto_2

    .line 29
    :pswitch_2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 30
    iput v2, v0, Lk0/mt;->e:I

    .line 31
    iput v3, v0, Lk0/mt;->f:I

    .line 32
    iput v3, v0, Lk0/mt;->g:I

    .line 33
    iput v2, v0, Lk0/mt;->b:I

    .line 34
    iput v2, v0, Lk0/mt;->c:I

    .line 35
    iput v2, v0, Lk0/mt;->d:I

    .line 36
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 37
    invoke-virtual {p0}, Lmodule/canbus/i;->init()V

    .line 38
    iget-object v0, p0, Lmodule/canbus/i;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    .line 39
    invoke-virtual {p0}, Lmodule/canbus/i;->E3()V

    goto :goto_2

    .line 40
    :pswitch_3
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 41
    iput v2, v0, Lk0/mt;->e:I

    .line 42
    iput v3, v0, Lk0/mt;->f:I

    .line 43
    iput v3, v0, Lk0/mt;->g:I

    .line 44
    iput v2, v0, Lk0/mt;->b:I

    .line 45
    iput v2, v0, Lk0/mt;->c:I

    .line 46
    iput v2, v0, Lk0/mt;->d:I

    .line 47
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 48
    invoke-virtual {p0}, Lmodule/canbus/i;->init()V

    .line 49
    iget-object v0, p0, Lmodule/canbus/i;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    .line 50
    invoke-virtual {p0}, Lmodule/canbus/i;->E3()V

    goto :goto_2

    .line 51
    :pswitch_4
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 52
    iput v2, v0, Lk0/mt;->e:I

    .line 53
    iput v3, v0, Lk0/mt;->f:I

    .line 54
    iput v3, v0, Lk0/mt;->g:I

    .line 55
    iput v3, v0, Lk0/mt;->b:I

    .line 56
    iput v3, v0, Lk0/mt;->c:I

    .line 57
    iput v3, v0, Lk0/mt;->d:I

    .line 58
    :cond_3
    :goto_2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->q:I

    .line 59
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    iget-object v1, p0, Lmodule/canbus/i;->j:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-static {v0, v1, v2, v3}, Lo1/j;->b(Landroid/os/Handler;Ljava/lang/Runnable;J)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch

    :array_0
    .array-data 4
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x29
        0x2a
    .end array-data
.end method

.method public U2([BII)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    add-int/lit8 v2, p2, 0x1

    .line 1
    aget-byte v2, v1, v2

    const/16 v3, -0x5a

    const/16 v5, 0xa

    const/16 v6, 0xff

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v2, v3, :cond_2f

    const/16 v3, -0x10

    const/4 v9, 0x2

    if-eq v2, v3, :cond_2e

    const/16 v3, 0x11

    const/4 v10, 0x5

    const/4 v11, 0x4

    const/4 v12, 0x3

    if-eq v2, v3, :cond_26

    const/16 v3, 0x13

    const/16 v13, 0xb

    const/high16 v14, 0x1000000

    if-eq v2, v3, :cond_20

    const/16 v3, 0x17

    if-eq v2, v3, :cond_1b

    const/16 v3, 0x41

    if-eq v2, v3, :cond_1a

    const/16 v3, 0x31

    if-eq v2, v3, :cond_a

    const/16 v3, 0x32

    if-eq v2, v3, :cond_9

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_18

    :pswitch_0
    const/16 v2, 0x73

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 2
    aget-byte v5, v1, v4

    shr-int/2addr v5, v8

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v8, [I

    .line 3
    aget-byte v1, v1, v4

    and-int/2addr v1, v8

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_18

    :pswitch_1
    add-int/lit8 v2, p2, 0x3

    .line 4
    aget-byte v3, v1, v2

    and-int/lit8 v3, v3, 0x7

    add-int/lit8 v3, v3, -0x1

    if-gez v3, :cond_0

    move v11, v7

    goto :goto_0

    :cond_0
    if-le v3, v11, :cond_1

    goto :goto_0

    :cond_1
    move v11, v3

    :goto_0
    const/16 v3, 0x75

    new-array v4, v8, [I

    .line 5
    aget-byte v5, v1, v2

    shr-int/2addr v5, v10

    and-int/2addr v5, v12

    aput v5, v4, v7

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x66

    new-array v4, v8, [I

    .line 6
    aget-byte v1, v1, v2

    shr-int/2addr v1, v12

    and-int/2addr v1, v12

    aput v1, v4, v7

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x68

    new-array v2, v8, [I

    aput v11, v2, v7

    .line 7
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_18

    :pswitch_2
    const/16 v2, 0x6a

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 8
    aget-byte v5, v1, v4

    shr-int/2addr v5, v11

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v8, [I

    .line 9
    aget-byte v5, v1, v4

    shr-int/2addr v5, v12

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v8, [I

    .line 10
    aget-byte v5, v1, v4

    shr-int/2addr v5, v9

    and-int/2addr v5, v8

    if-eqz v5, :cond_2

    move v5, v8

    goto :goto_1

    :cond_2
    move v5, v7

    :goto_1
    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v8, [I

    .line 11
    aget-byte v5, v1, v4

    shr-int/2addr v5, v8

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v8, [I

    .line 12
    aget-byte v1, v1, v4

    and-int/2addr v1, v8

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_18

    :pswitch_3
    add-int/lit8 v2, p2, 0x3

    .line 13
    aget-byte v1, v1, v2

    const/16 v2, 0x6f

    new-array v3, v8, [I

    and-int/lit16 v4, v1, 0x80

    aput v4, v3, v7

    .line 14
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    and-int/lit8 v2, v1, 0x70

    shr-int/2addr v2, v11

    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_3

    move v11, v7

    goto :goto_2

    :cond_3
    if-le v2, v11, :cond_4

    goto :goto_2

    :cond_4
    move v11, v2

    :goto_2
    const/16 v2, 0x70

    new-array v3, v8, [I

    aput v11, v3, v7

    .line 15
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    and-int/lit8 v2, v1, 0xc

    shr-int/2addr v2, v9

    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_5

    move v2, v7

    goto :goto_3

    :cond_5
    if-le v2, v8, :cond_6

    move v2, v8

    :cond_6
    :goto_3
    const/16 v3, 0x71

    new-array v4, v8, [I

    aput v2, v4, v7

    .line 16
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    and-int/2addr v1, v12

    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_7

    move v1, v7

    goto :goto_4

    :cond_7
    if-le v1, v8, :cond_8

    move v1, v8

    :cond_8
    :goto_4
    const/16 v2, 0x72

    new-array v3, v8, [I

    aput v1, v3, v7

    .line 17
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_18

    :cond_9
    const/16 v2, 0x7a

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x4

    .line 18
    aget-byte v5, v1, v4

    shl-int/lit8 v5, v5, 0x8

    const v9, 0xff00

    and-int/2addr v5, v9

    add-int/lit8 v10, p2, 0x5

    aget-byte v11, v1, v10

    and-int/2addr v11, v6

    or-int/2addr v5, v11

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x408

    new-array v3, v8, [I

    .line 19
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v9

    aget-byte v5, v1, v10

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x6

    .line 20
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v9

    add-int/lit8 v5, p2, 0x7

    aget-byte v1, v1, v5

    and-int/2addr v1, v6

    or-int/2addr v1, v4

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_18

    :cond_a
    add-int/lit8 v2, p2, 0x2

    .line 21
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 22
    aget-byte v3, v1, v3

    add-int/lit8 v11, p2, 0x4

    .line 23
    aget-byte v11, v1, v11

    add-int/lit8 v14, p2, 0x6

    .line 24
    aget-byte v16, v1, v14

    add-int/lit8 v17, p2, 0x7

    .line 25
    aget-byte v6, v1, v17

    add-int/lit8 v17, p2, 0xa

    .line 26
    aget-byte v10, v1, v17

    add-int/lit8 v17, p2, 0xb

    .line 27
    aget-byte v15, v1, v17

    add-int/lit8 v17, p2, 0xc

    .line 28
    aget-byte v4, v1, v17

    add-int/lit8 v17, p2, 0xd

    .line 29
    aget-byte v17, v1, v17

    new-array v9, v8, [I

    shr-int/lit8 v18, v2, 0x6

    and-int/lit8 v18, v18, 0x1

    aput v18, v9, v7

    .line 30
    invoke-static {v5, v9}, Lk0/qt;->y0(I[I)V

    const/16 v9, 0x2a

    new-array v5, v8, [I

    shr-int/lit8 v19, v2, 0x4

    and-int/lit8 v19, v19, 0x1

    aput v19, v5, v7

    .line 31
    invoke-static {v9, v5}, Lk0/qt;->y0(I[I)V

    new-array v5, v8, [I

    shr-int/2addr v2, v12

    and-int/2addr v2, v8

    aput v2, v5, v7

    const/16 v2, 0xd

    .line 32
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v5, v3, 0x4

    and-int/2addr v5, v8

    aput v5, v2, v7

    const/16 v5, 0xc

    .line 33
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v5, v3, 0x6

    and-int/2addr v5, v8

    aput v5, v2, v7

    .line 34
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    const/4 v5, 0x2

    shr-int/2addr v3, v5

    and-int/2addr v3, v8

    aput v3, v2, v7

    const/16 v3, 0xe

    .line 35
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10

    new-array v3, v8, [I

    shr-int/lit8 v5, v11, 0x5

    and-int/2addr v5, v8

    aput v5, v3, v7

    .line 36
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v3, v8, [I

    shr-int/lit8 v5, v11, 0x4

    and-int/2addr v5, v8

    aput v5, v3, v7

    .line 37
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x48

    new-array v3, v8, [I

    shr-int/lit8 v5, v11, 0x3

    and-int/2addr v5, v8

    aput v5, v3, v7

    .line 38
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x26

    new-array v3, v8, [I

    const/4 v5, 0x2

    shr-int/lit8 v9, v11, 0x2

    and-int/lit8 v5, v9, 0x1

    aput v5, v3, v7

    .line 39
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 40
    aget-byte v2, v1, v14

    const/16 v3, 0xf

    and-int/2addr v2, v3

    if-eq v2, v12, :cond_d

    const/4 v3, 0x5

    if-eq v2, v3, :cond_c

    const/4 v3, 0x6

    if-eq v2, v3, :cond_b

    packed-switch v2, :pswitch_data_1

    move v2, v7

    :goto_5
    move v3, v2

    :goto_6
    move v5, v3

    goto :goto_7

    :pswitch_4
    move v2, v8

    goto :goto_5

    :pswitch_5
    move v2, v7

    move v3, v8

    goto :goto_6

    :pswitch_6
    move v3, v7

    move v2, v8

    move v5, v2

    goto :goto_7

    :cond_b
    move v2, v7

    move v5, v2

    move v3, v8

    goto :goto_7

    :cond_c
    move v5, v7

    move v2, v8

    move v3, v2

    goto :goto_7

    :cond_d
    move v3, v7

    move v5, v3

    move v2, v8

    :goto_7
    const/16 v9, 0x14

    new-array v11, v8, [I

    aput v2, v11, v7

    .line 41
    invoke-static {v9, v11}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v9, v8, [I

    aput v3, v9, v7

    .line 42
    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v3, v8, [I

    aput v5, v3, v7

    .line 43
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x4d

    new-array v3, v8, [I

    const/16 v5, 0xf

    and-int/lit8 v5, v16, 0xf

    aput v5, v3, v7

    .line 44
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xff

    and-int/lit16 v3, v6, 0xff

    const/16 v2, 0x15

    new-array v5, v8, [I

    aput v3, v5, v7

    .line 45
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x8

    .line 46
    aget-byte v3, v1, v2

    add-int/lit8 v5, p2, 0x9

    .line 47
    aget-byte v6, v1, v5

    const-string v9, "persist.fyt.reversetemp"

    .line 48
    invoke-static {v9, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 49
    aget-byte v3, v1, v5

    .line 50
    aget-byte v6, v1, v2

    :cond_e
    const/16 v1, 0xff

    and-int/lit16 v2, v3, 0xff

    const/16 v3, 0xfe

    if-eq v2, v3, :cond_10

    if-eq v2, v1, :cond_f

    const/16 v1, 0x1b

    new-array v5, v8, [I

    aput v2, v5, v7

    .line 51
    invoke-static {v1, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_f
    const/16 v1, 0x1b

    new-array v2, v8, [I

    const/4 v5, -0x3

    aput v5, v2, v7

    .line 52
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_10
    const/16 v1, 0x1b

    new-array v2, v8, [I

    const/4 v5, -0x2

    aput v5, v2, v7

    .line 53
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    :goto_8
    const/16 v1, 0xff

    and-int/lit16 v2, v6, 0xff

    if-eq v2, v3, :cond_12

    if-eq v2, v1, :cond_11

    const/16 v1, 0x1c

    new-array v5, v8, [I

    aput v2, v5, v7

    .line 54
    invoke-static {v1, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_11
    const/16 v1, 0x1c

    new-array v2, v8, [I

    const/4 v5, -0x3

    aput v5, v2, v7

    .line 55
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_12
    const/16 v1, 0x1c

    new-array v2, v8, [I

    const/4 v5, -0x2

    aput v5, v2, v7

    .line 56
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    :goto_9
    const/16 v1, 0xff

    and-int/lit16 v2, v10, 0xff

    if-eq v2, v8, :cond_15

    const/4 v1, 0x2

    if-eq v2, v1, :cond_14

    if-eq v2, v12, :cond_13

    move v1, v7

    :goto_a
    move v2, v1

    goto :goto_b

    :cond_13
    move v1, v8

    goto :goto_a

    :cond_14
    move v2, v7

    move v1, v8

    goto :goto_b

    :cond_15
    move v1, v7

    move v2, v8

    :goto_b
    const/16 v5, 0x2e

    new-array v6, v8, [I

    aput v1, v6, v7

    .line 57
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x2f

    new-array v5, v8, [I

    aput v2, v5, v7

    .line 58
    invoke-static {v1, v5}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xff

    and-int/lit16 v2, v15, 0xff

    const/16 v5, 0x2c

    new-array v6, v8, [I

    aput v2, v6, v7

    .line 59
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    and-int/lit16 v2, v4, 0xff

    if-eq v2, v3, :cond_17

    if-eq v2, v1, :cond_16

    const/16 v1, 0x28

    new-array v3, v8, [I

    aput v2, v3, v7

    .line 60
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_c

    :cond_16
    const/16 v1, 0x28

    new-array v2, v8, [I

    const/4 v3, -0x3

    aput v3, v2, v7

    .line 61
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_c

    :cond_17
    const/16 v1, 0x28

    new-array v2, v8, [I

    const/4 v3, -0x2

    aput v3, v2, v7

    .line 62
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    :goto_c
    const/16 v1, 0xa

    mul-int/lit8 v17, v17, 0xa

    const/4 v1, 0x2

    .line 63
    div-int/lit8 v1, v17, 0x2

    const/16 v2, 0x190

    if-ge v1, v2, :cond_18

    sub-int/2addr v2, v1

    rsub-int v7, v2, 0x3e8

    goto :goto_d

    :cond_18
    if-lt v1, v2, :cond_19

    const/16 v3, 0x4e2

    if-gt v1, v3, :cond_19

    add-int/lit16 v1, v1, 0x3e8

    add-int/lit16 v7, v1, -0x190

    :cond_19
    :goto_d
    const/16 v1, 0x258

    if-le v7, v1, :cond_30

    .line 64
    invoke-static {v7}, Lu0/d;->A3(I)V

    goto/16 :goto_18

    .line 65
    :cond_1a
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_30

    add-int/lit8 v2, p2, 0x2

    .line 66
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    invoke-static {v2}, Lmodule/canbus/i;->b3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 67
    aget-byte v4, v1, v2

    and-int/2addr v4, v3

    invoke-static {v4}, Lmodule/canbus/i;->b3(I)I

    move-result v4

    invoke-static {v4}, Lu0/d;->S2(I)V

    .line 68
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Lmodule/canbus/i;->b3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 69
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Lmodule/canbus/i;->b3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->U2(I)V

    add-int/lit8 v2, p2, 0x6

    .line 70
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Lmodule/canbus/i;->b3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    add-int/lit8 v2, p2, 0x7

    .line 71
    aget-byte v4, v1, v2

    and-int/2addr v4, v3

    invoke-static {v4}, Lmodule/canbus/i;->b3(I)I

    move-result v4

    invoke-static {v4}, Lu0/d;->E2(I)V

    .line 72
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Lmodule/canbus/i;->b3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    add-int/lit8 v2, p2, 0x9

    .line 73
    aget-byte v1, v1, v2

    and-int/2addr v1, v3

    invoke-static {v1}, Lmodule/canbus/i;->b3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_18

    :cond_1b
    add-int/lit8 v2, p2, 0x3e

    .line 74
    aget-byte v2, v1, v2

    if-eqz v2, :cond_1e

    if-eq v2, v8, :cond_1d

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1c

    :goto_e
    move v14, v7

    goto :goto_f

    :cond_1c
    const/high16 v14, 0x2000000

    goto :goto_f

    :cond_1d
    const/4 v3, 0x2

    goto :goto_f

    :cond_1e
    const/4 v3, 0x2

    goto :goto_e

    :goto_f
    move v2, v7

    const/16 v4, 0xf

    :goto_10
    if-ge v2, v4, :cond_30

    new-array v5, v3, [I

    aput v2, v5, v7

    mul-int/lit8 v3, v2, 0x2

    add-int v3, p2, v3

    add-int/lit8 v6, v3, 0x2

    .line 75
    aget-byte v6, v1, v6

    const/16 v9, 0xff

    and-int/2addr v6, v9

    shl-int/lit8 v6, v6, 0x8

    add-int/2addr v3, v12

    aget-byte v3, v1, v3

    and-int/2addr v3, v9

    or-int/2addr v3, v6

    or-int/2addr v3, v14

    aput v3, v5, v8

    const/16 v3, 0x6d

    .line 76
    iget-object v6, v0, Lmodule/canbus/i;->b:[[I

    aget-object v6, v6, v2

    invoke-static {v3, v5, v6}, Lk0/qt;->C0(I[I[I)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 77
    iget-object v3, v0, Lmodule/canbus/i;->b:[[I

    aput-object v5, v3, v2

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x2

    goto :goto_10

    :cond_20
    add-int/lit8 v2, p2, 0xc

    .line 78
    aget-byte v2, v1, v2

    if-eqz v2, :cond_21

    if-eq v2, v8, :cond_23

    const/4 v3, 0x2

    if-eq v2, v3, :cond_22

    :cond_21
    move v2, v7

    goto :goto_11

    :cond_22
    const/high16 v2, 0x2000000

    goto :goto_11

    :cond_23
    move v2, v14

    :goto_11
    add-int/lit8 v3, p2, 0xd

    .line 79
    aget-byte v3, v1, v3

    if-eqz v3, :cond_24

    if-eq v3, v8, :cond_25

    :cond_24
    move v3, v7

    move v14, v3

    goto :goto_12

    :cond_25
    move v3, v14

    :goto_12
    const/16 v4, 0x62

    new-array v5, v8, [I

    add-int/lit8 v6, p2, 0x2

    .line 80
    aget-byte v6, v1, v6

    const/16 v9, 0xff

    and-int/2addr v6, v9

    shl-int/lit8 v6, v6, 0x8

    add-int/lit8 v10, p2, 0x3

    aget-byte v10, v1, v10

    and-int/2addr v10, v9

    or-int/2addr v6, v10

    or-int/2addr v6, v2

    aput v6, v5, v7

    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x63

    new-array v5, v8, [I

    add-int/lit8 v6, p2, 0x4

    .line 81
    aget-byte v6, v1, v6

    and-int/2addr v6, v9

    shl-int/lit8 v6, v6, 0x8

    add-int/lit8 v10, p2, 0x5

    aget-byte v10, v1, v10

    and-int/2addr v10, v9

    or-int/2addr v6, v10

    or-int/2addr v6, v14

    aput v6, v5, v7

    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x6e

    new-array v5, v8, [I

    add-int/lit8 v6, p2, 0x6

    .line 82
    aget-byte v6, v1, v6

    and-int/2addr v6, v9

    shl-int/lit8 v6, v6, 0x8

    add-int/lit8 v10, p2, 0x7

    aget-byte v10, v1, v10

    and-int/2addr v10, v9

    or-int/2addr v6, v10

    or-int/2addr v2, v6

    aput v2, v5, v7

    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v4, v8, [I

    add-int/lit8 v5, p2, 0x8

    .line 83
    aget-byte v5, v1, v5

    and-int/2addr v5, v9

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, p2, 0x9

    aget-byte v6, v1, v6

    and-int/2addr v6, v9

    or-int/2addr v5, v6

    aput v5, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v4, v8, [I

    add-int/lit8 v5, p2, 0xa

    .line 84
    aget-byte v5, v1, v5

    and-int/2addr v5, v9

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, p2, 0xb

    aget-byte v1, v1, v6

    and-int/2addr v1, v9

    or-int/2addr v1, v5

    or-int/2addr v1, v3

    aput v1, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_18

    :cond_26
    move v9, v6

    const/16 v2, 0x76

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 85
    aget-byte v4, v1, v4

    and-int/2addr v4, v9

    or-int/2addr v4, v7

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x6

    .line 86
    aget-byte v2, v1, v2

    new-array v3, v8, [I

    shr-int/lit8 v4, v2, 0x3

    and-int/2addr v4, v8

    aput v4, v3, v7

    const/4 v4, 0x5

    .line 87
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v8, [I

    shr-int/lit8 v4, v2, 0x4

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 88
    invoke-static {v12, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v8, [I

    shr-int/lit8 v4, v2, 0x5

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 89
    invoke-static {v11, v3}, Lk0/qt;->y0(I[I)V

    const-string v3, "persist.syu.reversefrontdoor"

    .line 90
    invoke-static {v3, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_27

    new-array v3, v8, [I

    shr-int/lit8 v4, v2, 0x6

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 91
    invoke-static {v8, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v8, [I

    shr-int/lit8 v2, v2, 0x7

    and-int/2addr v2, v8

    aput v2, v3, v7

    const/4 v4, 0x2

    .line 92
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_13

    :cond_27
    const/4 v4, 0x2

    new-array v3, v8, [I

    shr-int/lit8 v5, v2, 0x6

    and-int/2addr v5, v8

    aput v5, v3, v7

    .line 93
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v8, [I

    shr-int/lit8 v2, v2, 0x7

    and-int/2addr v2, v8

    aput v2, v3, v7

    .line 94
    invoke-static {v8, v3}, Lk0/qt;->y0(I[I)V

    .line 95
    :goto_13
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_30

    add-int/lit8 v2, p2, 0x4

    .line 96
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x5

    .line 97
    aget-byte v3, v1, v3

    const/16 v4, 0xff

    and-int/2addr v2, v4

    .line 98
    iput v2, v0, Lmodule/canbus/i;->d:I

    move v2, v7

    .line 99
    :goto_14
    iget-object v4, v0, Lmodule/canbus/i;->e:[[I

    array-length v5, v4

    if-ge v2, v5, :cond_29

    .line 100
    iget v5, v0, Lmodule/canbus/i;->d:I

    aget-object v6, v4, v2

    aget v6, v6, v7

    if-ne v5, v6, :cond_28

    if-eqz v5, :cond_29

    .line 101
    iput v2, v0, Lmodule/canbus/i;->c:I

    goto :goto_15

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_29
    :goto_15
    const/16 v5, 0xff

    and-int/2addr v3, v5

    if-eqz v3, :cond_2a

    .line 102
    array-length v3, v4

    if-ge v2, v3, :cond_2d

    .line 103
    aget-object v2, v4, v2

    aget v2, v2, v8

    invoke-static {v2, v7}, Ll0/b0;->l0(II)V

    goto :goto_17

    .line 104
    :cond_2a
    iget v2, v0, Lmodule/canbus/i;->c:I

    array-length v3, v4

    if-ge v2, v3, :cond_2b

    const/16 v3, 0xff

    if-eq v2, v3, :cond_2c

    .line 105
    aget-object v2, v4, v2

    aget v2, v2, v8

    invoke-static {v2, v8}, Ll0/b0;->l0(II)V

    goto :goto_16

    :cond_2b
    const/16 v3, 0xff

    .line 106
    :cond_2c
    :goto_16
    iput v3, v0, Lmodule/canbus/i;->c:I

    :cond_2d
    :goto_17
    add-int/lit8 v2, p2, 0x9

    .line 107
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x8

    aget-byte v1, v1, v3

    const/16 v3, 0x21c

    invoke-static {v2, v1, v8, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_18

    .line 108
    :cond_2e
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x2

    add-int/lit8 v4, p2, 0x2

    add-int/lit8 v3, p3, -0x2

    invoke-direct {v2, v1, v4, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_18

    :cond_2f
    const/16 v2, 0x77

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x8

    .line 109
    aget-byte v5, v1, v4

    shr-int/2addr v5, v8

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v3, v8, [I

    .line 110
    aget-byte v4, v1, v4

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 111
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_30

    add-int/lit8 v2, p2, 0x2

    .line 112
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 113
    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x4

    .line 114
    aget-byte v4, v1, v4

    add-int/lit8 v5, p2, 0x5

    .line 115
    aget-byte v5, v1, v5

    add-int/lit8 v6, p2, 0x6

    .line 116
    aget-byte v6, v1, v6

    add-int/lit8 v8, p2, 0x7

    .line 117
    aget-byte v1, v1, v8

    const/16 v8, 0xff

    and-int/2addr v2, v8

    const/16 v9, 0x3f

    .line 118
    invoke-static {v2, v7, v9}, Lo1/o0;->a(III)I

    move-result v2

    sput v2, Lmodule/canbus/i;->q:I

    and-int/lit16 v2, v4, 0xff

    const/16 v4, 0xe

    .line 119
    invoke-static {v2, v7, v4}, Lo1/o0;->a(III)I

    move-result v2

    sput v2, Lmodule/canbus/i;->y:I

    and-int/lit16 v2, v3, 0xff

    .line 120
    invoke-static {v2, v7, v4}, Lo1/o0;->a(III)I

    move-result v2

    sput v2, Lmodule/canbus/i;->z:I

    and-int/lit16 v2, v5, 0xff

    const/16 v3, 0xa

    .line 121
    invoke-static {v2, v7, v3}, Lo1/o0;->a(III)I

    move-result v2

    sput v2, Lmodule/canbus/i;->s:I

    and-int/lit16 v2, v6, 0xff

    .line 122
    invoke-static {v2, v7, v3}, Lo1/o0;->a(III)I

    move-result v2

    sput v2, Lmodule/canbus/i;->t:I

    and-int/2addr v1, v8

    .line 123
    invoke-static {v1, v7, v3}, Lo1/o0;->a(III)I

    move-result v1

    sput v1, Lmodule/canbus/i;->u:I

    :cond_30
    :goto_18
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    invoke-static {}, Lo1/q0;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lmodule/canbus/i;->k:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->p0(Ljava/lang/Runnable;)V

    .line 3
    :cond_0
    sget-object v0, Lz/c;->d:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/i;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lmodule/canbus/i;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_1

    const/16 p3, 0x7b

    if-ge p2, p3, :cond_1

    const/16 p3, 0x6d

    const/4 v0, 0x0

    if-eq p2, p3, :cond_0

    const/4 p3, 0x1

    new-array p3, p3, [I

    .line 1
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, p2

    aput v1, p3, v0

    invoke-static {p1, p2, p3}, Lo1/x;->v(Ly/b;I[I)V

    goto :goto_1

    :cond_0
    :goto_0
    const/16 p3, 0xf

    if-ge v0, p3, :cond_1

    .line 2
    iget-object p3, p0, Lmodule/canbus/i;->b:[[I

    aget-object p3, p3, v0

    invoke-static {p1, p2, p3}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 9

    const/4 p3, 0x7

    const/4 p4, 0x4

    const/4 v0, 0x5

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_5

    .line 1
    :pswitch_1
    aget p1, p2, v4

    if-ne p1, v3, :cond_0

    invoke-virtual {p0}, Lmodule/canbus/i;->F3()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Lk0/nt;->g:[I

    const/16 v5, 0x15

    aget p1, p1, v5

    if-nez p1, :cond_0

    const/16 p1, 0xc

    .line 3
    aput p1, p2, v4

    .line 4
    :cond_0
    array-length p1, p2

    if-le p1, v3, :cond_19

    .line 5
    aget p1, p2, v3

    const/4 v5, 0x6

    const/16 v6, -0x5b

    const/16 v7, 0x5a

    const/16 v8, 0x3d

    if-ne p1, v3, :cond_1

    new-array p1, p3, [B

    aput-byte v7, p1, v4

    aput-byte v6, p1, v3

    aput-byte v2, p1, v2

    aput-byte v8, p1, v1

    .line 6
    aget p3, p2, v4

    int-to-byte p3, p3

    aput-byte p3, p1, p4

    aput-byte v3, p1, v0

    aput-byte v4, p1, v5

    invoke-static {p1}, Lmodule/canbus/i;->R3([B)V

    goto :goto_0

    .line 7
    :cond_1
    aget p1, p2, v3

    if-nez p1, :cond_2

    new-array p1, p3, [B

    aput-byte v7, p1, v4

    aput-byte v6, p1, v3

    aput-byte v2, p1, v2

    aput-byte v8, p1, v1

    .line 8
    aget p3, p2, v4

    int-to-byte p3, p3

    aput-byte p3, p1, p4

    aput-byte v4, p1, v0

    aput-byte v4, p1, v5

    invoke-static {p1}, Lmodule/canbus/i;->R3([B)V

    .line 9
    :cond_2
    :goto_0
    aget p1, p2, v3

    const/16 p3, 0xe3

    if-ne p1, v3, :cond_3

    new-array p1, v0, [I

    aput p3, p1, v4

    aput v2, p1, v3

    aput v8, p1, v2

    .line 10
    aget p2, p2, v4

    aput p2, p1, v1

    aput v3, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_5

    .line 11
    :cond_3
    aget p1, p2, v3

    if-nez p1, :cond_19

    new-array p1, v0, [I

    aput p3, p1, v4

    aput v2, p1, v3

    aput v8, p1, v2

    .line 12
    aget p2, p2, v4

    aput p2, p1, v1

    aput v4, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_5

    :pswitch_2
    if-eqz p2, :cond_19

    .line 13
    array-length p1, p2

    if-lez p1, :cond_19

    .line 14
    aget p1, p2, v4

    if-eqz p1, :cond_4

    .line 15
    aput v3, p2, v4

    :cond_4
    const/16 p1, 0x8

    .line 16
    aget p2, p2, v4

    invoke-virtual {p0, p1, p2}, Lmodule/canbus/i;->d3(II)V

    goto/16 :goto_5

    :pswitch_3
    if-eqz p2, :cond_19

    .line 17
    array-length p1, p2

    if-lez p1, :cond_19

    .line 18
    aget p1, p2, v4

    if-eqz p1, :cond_5

    .line 19
    aput v3, p2, v4

    .line 20
    :cond_5
    aget p1, p2, v4

    invoke-virtual {p0, p3, p1}, Lmodule/canbus/i;->d3(II)V

    goto/16 :goto_5

    :pswitch_4
    new-array p1, v0, [I

    .line 21
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_5

    :pswitch_5
    if-eqz p2, :cond_19

    .line 22
    array-length p1, p2

    if-lez p1, :cond_19

    .line 23
    aget p1, p2, v4

    if-eqz p1, :cond_7

    if-eq p1, v3, :cond_6

    goto/16 :goto_5

    .line 24
    :cond_6
    invoke-virtual {p0, v1, v2}, Lmodule/canbus/i;->J3(II)V

    goto/16 :goto_5

    .line 25
    :cond_7
    invoke-virtual {p0, v1, v3}, Lmodule/canbus/i;->J3(II)V

    goto/16 :goto_5

    :pswitch_6
    if-eqz p2, :cond_19

    .line 26
    array-length p1, p2

    if-lez p1, :cond_19

    .line 27
    aget p1, p2, v4

    add-int/2addr p1, v3

    aput p1, p2, v4

    .line 28
    aget p1, p2, v4

    if-ge p1, v3, :cond_8

    .line 29
    aput v3, p2, v4

    goto :goto_1

    .line 30
    :cond_8
    aget p1, p2, v4

    if-le p1, v0, :cond_9

    .line 31
    aput v0, p2, v4

    .line 32
    :cond_9
    :goto_1
    aget p1, p2, v4

    invoke-virtual {p0, v2, p1}, Lmodule/canbus/i;->J3(II)V

    goto/16 :goto_5

    :pswitch_7
    if-eqz p2, :cond_19

    .line 33
    array-length p1, p2

    if-lez p1, :cond_19

    .line 34
    aget p1, p2, v4

    if-eqz p1, :cond_a

    .line 35
    aput v3, p2, v4

    .line 36
    :cond_a
    aget p1, p2, v4

    invoke-virtual {p0, v3, p1}, Lmodule/canbus/i;->J3(II)V

    goto/16 :goto_5

    :pswitch_8
    if-eqz p2, :cond_19

    .line 37
    array-length p1, p2

    if-lez p1, :cond_19

    .line 38
    aget p1, p2, v4

    if-eqz p1, :cond_b

    .line 39
    aput v3, p2, v4

    .line 40
    :cond_b
    aget p1, p2, v4

    invoke-virtual {p0, v2, p1}, Lmodule/canbus/i;->a3(II)V

    goto/16 :goto_5

    :pswitch_9
    if-eqz p2, :cond_19

    .line 41
    array-length p1, p2

    if-lez p1, :cond_19

    .line 42
    aget p1, p2, v4

    if-eqz p1, :cond_c

    .line 43
    aput v3, p2, v4

    .line 44
    :cond_c
    aget p1, p2, v4

    invoke-virtual {p0, v3, p1}, Lmodule/canbus/i;->a3(II)V

    goto/16 :goto_5

    :pswitch_a
    if-eqz p2, :cond_19

    .line 45
    array-length p1, p2

    if-lez p1, :cond_19

    .line 46
    aget p1, p2, v4

    if-eqz p1, :cond_d

    .line 47
    aput v3, p2, v4

    .line 48
    :cond_d
    aget p1, p2, v4

    invoke-virtual {p0, v0, p1}, Lmodule/canbus/i;->H3(II)V

    goto/16 :goto_5

    :pswitch_b
    if-eqz p2, :cond_19

    .line 49
    array-length p1, p2

    if-lez p1, :cond_19

    .line 50
    aget p1, p2, v4

    if-eqz p1, :cond_e

    .line 51
    aput v3, p2, v4

    .line 52
    :cond_e
    aget p1, p2, v4

    invoke-virtual {p0, p4, p1}, Lmodule/canbus/i;->H3(II)V

    goto/16 :goto_5

    :pswitch_c
    if-eqz p2, :cond_19

    .line 53
    array-length p1, p2

    if-lez p1, :cond_19

    .line 54
    aget p1, p2, v4

    if-eqz p1, :cond_10

    if-eq p1, v3, :cond_f

    goto/16 :goto_5

    .line 55
    :cond_f
    invoke-virtual {p0, v1, v4}, Lmodule/canbus/i;->H3(II)V

    goto/16 :goto_5

    .line 56
    :cond_10
    invoke-virtual {p0, v1, v3}, Lmodule/canbus/i;->H3(II)V

    goto/16 :goto_5

    :pswitch_d
    if-eqz p2, :cond_19

    .line 57
    array-length p1, p2

    if-lez p1, :cond_19

    .line 58
    aget p1, p2, v4

    if-eqz p1, :cond_11

    .line 59
    aput v3, p2, v4

    .line 60
    :cond_11
    aget p1, p2, v4

    invoke-virtual {p0, v3, p1}, Lmodule/canbus/i;->H3(II)V

    goto :goto_5

    :pswitch_e
    if-eqz p2, :cond_19

    .line 61
    array-length p1, p2

    if-lez p1, :cond_19

    .line 62
    aget p1, p2, v4

    if-gez p1, :cond_12

    .line 63
    aput v4, p2, v4

    goto :goto_2

    .line 64
    :cond_12
    aget p1, p2, v4

    if-le p1, v1, :cond_13

    .line 65
    aput v1, p2, v4

    .line 66
    :cond_13
    :goto_2
    aget p1, p2, v4

    invoke-virtual {p0, v1, p1}, Lmodule/canbus/i;->G3(II)V

    goto :goto_5

    :pswitch_f
    if-eqz p2, :cond_19

    .line 67
    array-length p1, p2

    if-lez p1, :cond_19

    .line 68
    aget p1, p2, v4

    if-gez p1, :cond_14

    .line 69
    aput v4, p2, v4

    goto :goto_3

    .line 70
    :cond_14
    aget p1, p2, v4

    if-le p1, v1, :cond_15

    .line 71
    aput v1, p2, v4

    .line 72
    :cond_15
    :goto_3
    aget p1, p2, v4

    invoke-virtual {p0, v2, p1}, Lmodule/canbus/i;->G3(II)V

    goto :goto_5

    :pswitch_10
    if-eqz p2, :cond_19

    .line 73
    array-length p1, p2

    if-lez p1, :cond_19

    .line 74
    aget p1, p2, v4

    if-eqz p1, :cond_16

    .line 75
    aput v3, p2, v4

    .line 76
    :cond_16
    aget p1, p2, v4

    invoke-virtual {p0, v2, p1}, Lmodule/canbus/i;->H3(II)V

    goto :goto_5

    :pswitch_11
    if-eqz p2, :cond_19

    .line 77
    array-length p1, p2

    if-lez p1, :cond_19

    .line 78
    aget p1, p2, v4

    if-ge p1, v3, :cond_17

    .line 79
    aput v3, p2, v4

    goto :goto_4

    .line 80
    :cond_17
    aget p1, p2, v4

    if-le p1, v0, :cond_18

    .line 81
    aput v0, p2, v4

    .line 82
    :cond_18
    :goto_4
    aget p1, p2, v4

    invoke-virtual {p0, v3, p1}, Lmodule/canbus/i;->G3(II)V

    :cond_19
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :array_0
    .array-data 4
        -0x1d
        0x2
        0x1b
        0x1
        0x1
    .end array-data
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
    sget-object v0, Lmodule/canbus/i;->C:[I

    const/4 v1, 0x0

    const/16 v2, 0x24

    invoke-static {p1, v1, v2}, Lo1/o0;->a(III)I

    move-result p1

    aget p1, v0, p1

    sput p1, Lmodule/canbus/i;->r:I

    :cond_0
    return-void
.end method

.method public final a3(II)V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, -0x1d

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x2

    aput v2, v0, v1

    const/16 v1, 0x6d

    aput v1, v0, v2

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

.method public b([B)V
    .locals 6

    if-eqz p1, :cond_d

    .line 1
    array-length v0, p1

    if-gtz v0, :cond_0

    goto/16 :goto_7

    .line 2
    :cond_0
    iget v0, p0, Lmodule/canbus/i;->g:I

    array-length v1, p1

    add-int/2addr v0, v1

    const/16 v1, 0x400

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    .line 3
    iput v2, p0, Lmodule/canbus/i;->g:I

    .line 4
    iput v2, p0, Lmodule/canbus/i;->h:I

    .line 5
    iput v2, p0, Lmodule/canbus/i;->i:I

    .line 6
    :cond_1
    iget-object v0, p0, Lmodule/canbus/i;->f:[B

    iget v1, p0, Lmodule/canbus/i;->g:I

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iget v0, p0, Lmodule/canbus/i;->g:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lmodule/canbus/i;->g:I

    .line 8
    iget p1, p0, Lmodule/canbus/i;->i:I

    const/4 v1, 0x3

    const/4 v3, 0x2

    if-eqz p1, :cond_5

    if-lt p1, v0, :cond_2

    return-void

    .line 9
    :cond_2
    iget-object p1, p0, Lmodule/canbus/i;->f:[B

    aget-byte p1, p1, v3

    move v0, v1

    .line 10
    :goto_0
    iget v4, p0, Lmodule/canbus/i;->i:I

    if-ge v0, v4, :cond_3

    .line 11
    iget-object v4, p0, Lmodule/canbus/i;->f:[B

    aget-byte v4, v4, v0

    add-int/2addr p1, v4

    int-to-byte p1, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 p1, p1, -0x1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 12
    iget-object v0, p0, Lmodule/canbus/i;->f:[B

    aget-byte v4, v0, v4

    if-ne p1, v4, :cond_4

    .line 13
    aget-byte p1, v0, v3

    invoke-virtual {p0, v0, v3, p1}, Lmodule/canbus/i;->U2([BII)V

    .line 14
    iget p1, p0, Lmodule/canbus/i;->i:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lmodule/canbus/i;->h:I

    goto :goto_1

    .line 15
    :cond_4
    iput v3, p0, Lmodule/canbus/i;->h:I

    .line 16
    :goto_1
    iput v2, p0, Lmodule/canbus/i;->i:I

    .line 17
    :cond_5
    iget p1, p0, Lmodule/canbus/i;->g:I

    sub-int/2addr p1, v1

    :goto_2
    iget v0, p0, Lmodule/canbus/i;->h:I

    if-ge v0, p1, :cond_b

    .line 18
    iget-object v1, p0, Lmodule/canbus/i;->f:[B

    aget-byte v4, v1, v0

    const/16 v5, 0x5a

    if-ne v4, v5, :cond_a

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, v1, v4

    const/16 v5, -0x5b

    if-ne v4, v5, :cond_a

    .line 19
    iget v4, p0, Lmodule/canbus/i;->i:I

    const/16 v5, 0x200

    if-le v4, v5, :cond_6

    .line 20
    iput v2, p0, Lmodule/canbus/i;->i:I

    goto :goto_5

    :cond_6
    add-int/lit8 v4, v0, 0x2

    .line 21
    aget-byte v4, v1, v4

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x4

    iput v4, p0, Lmodule/canbus/i;->i:I

    .line 22
    iget v5, p0, Lmodule/canbus/i;->g:I

    if-lt v4, v5, :cond_7

    sub-int/2addr v4, v0

    .line 23
    iput v4, p0, Lmodule/canbus/i;->i:I

    goto :goto_6

    :cond_7
    add-int/lit8 v4, v0, 0x2

    .line 24
    aget-byte v1, v1, v4

    add-int/lit8 v0, v0, 0x3

    .line 25
    :goto_3
    iget v4, p0, Lmodule/canbus/i;->i:I

    if-ge v0, v4, :cond_8

    .line 26
    iget-object v4, p0, Lmodule/canbus/i;->f:[B

    aget-byte v4, v4, v0

    add-int/2addr v1, v4

    int-to-byte v1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    add-int/lit8 v1, v1, -0x1

    and-int/lit16 v0, v1, 0xff

    int-to-byte v0, v0

    .line 27
    iget-object v1, p0, Lmodule/canbus/i;->f:[B

    aget-byte v4, v1, v4

    if-ne v0, v4, :cond_9

    .line 28
    iget v0, p0, Lmodule/canbus/i;->h:I

    add-int/lit8 v4, v0, 0x2

    add-int/2addr v0, v3

    aget-byte v0, v1, v0

    invoke-virtual {p0, v1, v4, v0}, Lmodule/canbus/i;->U2([BII)V

    .line 29
    iget v0, p0, Lmodule/canbus/i;->i:I

    iput v0, p0, Lmodule/canbus/i;->h:I

    goto :goto_4

    .line 30
    :cond_9
    iget v0, p0, Lmodule/canbus/i;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmodule/canbus/i;->h:I

    .line 31
    :goto_4
    iput v2, p0, Lmodule/canbus/i;->i:I

    .line 32
    :cond_a
    :goto_5
    iget v0, p0, Lmodule/canbus/i;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmodule/canbus/i;->h:I

    goto :goto_2

    :cond_b
    :goto_6
    if-eqz v0, :cond_d

    .line 33
    iget p1, p0, Lmodule/canbus/i;->g:I

    sub-int/2addr p1, v0

    iput p1, p0, Lmodule/canbus/i;->g:I

    if-eqz p1, :cond_c

    .line 34
    iget-object v1, p0, Lmodule/canbus/i;->f:[B

    invoke-static {v1, v0, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    :cond_c
    iput v2, p0, Lmodule/canbus/i;->h:I

    :cond_d
    :goto_7
    return-void
.end method

.method public final c3(I)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lmodule/canbus/i;->m:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lmodule/canbus/i;->m:Z

    const/4 v1, 0x7

    new-array v1, v1, [B

    const/16 v2, 0x5a

    aput-byte v2, v1, v0

    const/16 v2, -0x5b

    const/4 v3, 0x1

    aput-byte v2, v1, v3

    const/4 v2, 0x2

    aput-byte v2, v1, v2

    const/4 v4, 0x3

    const/16 v5, 0x3d

    aput-byte v5, v1, v4

    int-to-byte v6, p1

    const/4 v7, 0x4

    aput-byte v6, v1, v7

    const/4 v6, 0x5

    aput-byte v3, v1, v6

    const/4 v8, 0x6

    aput-byte v0, v1, v8

    .line 3
    invoke-static {v1}, Lmodule/canbus/i;->R3([B)V

    new-array v1, v6, [I

    const/16 v6, 0xe3

    aput v6, v1, v0

    aput v2, v1, v3

    aput v5, v1, v2

    aput p1, v1, v4

    aput v3, v1, v7

    .line 4
    invoke-static {v1}, Lz/k;->s([I)V

    .line 5
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    new-instance v1, Lmodule/canbus/i$d;

    invoke-direct {v1, p0, p1}, Lmodule/canbus/i$d;-><init>(Lmodule/canbus/i;I)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final d3(II)V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, -0x1d

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x2

    aput v2, v0, v1

    const/16 v1, -0x53

    aput v1, v0, v2

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

.method public final init()V
    .locals 4

    .line 1
    sget-object v0, Lmodule/canbus/i;->F:Lo1/f;

    new-instance v1, Lmodule/canbus/i$f;

    const/4 v2, 0x3

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3}, Lmodule/canbus/i$f;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    .line 2
    new-instance v1, Lmodule/canbus/i$f;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v3}, Lmodule/canbus/i$f;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    .line 3
    new-instance v1, Lmodule/canbus/i$f;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v3}, Lmodule/canbus/i$f;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    .line 4
    new-instance v1, Lmodule/canbus/i$f;

    const/4 v2, 0x6

    invoke-direct {v1, v2, v3}, Lmodule/canbus/i$f;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    .line 5
    new-instance v1, Lmodule/canbus/i$f;

    const/4 v2, 0x5

    invoke-direct {v1, v2, v3}, Lmodule/canbus/i$f;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    .line 6
    new-instance v1, Lmodule/canbus/i$f;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v3}, Lmodule/canbus/i$f;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    return-void
.end method
