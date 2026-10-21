.class public Lk0/jq;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static F:I = 0xff

.field public static G:I = 0x14

.field public static H:I = 0x24

.field public static I:I

.field public static J:I


# instance fields
.field public A:Ljava/lang/Runnable;

.field public B:Ljava/lang/Runnable;

.field public C:I

.field public D:Ljava/lang/Runnable;

.field public E:Ljava/lang/Runnable;

.field public b:I

.field public c:I

.field public d:[[I

.field public e:Z

.field public f:I

.field public g:I

.field public h:I

.field public i:Ljava/lang/Runnable;

.field public j:I

.field public k:Ljava/lang/Runnable;

.field public l:Z

.field public m:Z

.field public n:I

.field public o:Z

.field public final p:I

.field public final q:I

.field public final r:I

.field public final s:I

.field public t:Lo1/g0;

.field public u:Ljava/lang/Runnable;

.field public v:Ljava/lang/Runnable;

.field public w:Ljava/lang/Runnable;

.field public x:I

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/jq;->c:I

    const/16 v1, 0xb

    new-array v2, v1, [[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 3
    fill-array-data v4, :array_0

    aput-object v4, v2, v0

    new-array v4, v3, [I

    fill-array-data v4, :array_1

    const/4 v5, 0x1

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_2

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_3

    const/4 v5, 0x3

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_4

    const/4 v5, 0x4

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_5

    const/4 v5, 0x5

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_6

    const/4 v5, 0x6

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_7

    const/4 v5, 0x7

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_8

    const/16 v5, 0x8

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_9

    const/16 v5, 0x9

    aput-object v4, v2, v5

    new-array v3, v3, [I

    fill-array-data v3, :array_a

    const/16 v4, 0xa

    aput-object v3, v2, v4

    iput-object v2, p0, Lk0/jq;->d:[[I

    .line 4
    iput-boolean v0, p0, Lk0/jq;->e:Z

    .line 5
    iput v0, p0, Lk0/jq;->f:I

    const/4 v2, -0x1

    .line 6
    iput v2, p0, Lk0/jq;->g:I

    .line 7
    iput v0, p0, Lk0/jq;->h:I

    .line 8
    new-instance v3, Lk0/jq$f;

    invoke-direct {v3, p0}, Lk0/jq$f;-><init>(Lk0/jq;)V

    iput-object v3, p0, Lk0/jq;->i:Ljava/lang/Runnable;

    .line 9
    iput v0, p0, Lk0/jq;->j:I

    .line 10
    new-instance v3, Lk0/jq$g;

    invoke-direct {v3, p0}, Lk0/jq$g;-><init>(Lk0/jq;)V

    iput-object v3, p0, Lk0/jq;->k:Ljava/lang/Runnable;

    .line 11
    iput-boolean v0, p0, Lk0/jq;->l:Z

    .line 12
    iput-boolean v0, p0, Lk0/jq;->m:Z

    .line 13
    iput v0, p0, Lk0/jq;->n:I

    .line 14
    iput-boolean v0, p0, Lk0/jq;->o:Z

    .line 15
    iput v4, p0, Lk0/jq;->p:I

    .line 16
    iput v1, p0, Lk0/jq;->q:I

    const/16 v1, 0xf

    .line 17
    iput v1, p0, Lk0/jq;->r:I

    const/16 v1, 0xe

    .line 18
    iput v1, p0, Lk0/jq;->s:I

    .line 19
    new-instance v1, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x20

    invoke-direct {v1, v3, v4}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lk0/jq;->t:Lo1/g0;

    .line 20
    new-instance v1, Lk0/jq$h;

    invoke-direct {v1, p0}, Lk0/jq$h;-><init>(Lk0/jq;)V

    iput-object v1, p0, Lk0/jq;->u:Ljava/lang/Runnable;

    .line 21
    new-instance v1, Lk0/jq$i;

    invoke-direct {v1, p0}, Lk0/jq$i;-><init>(Lk0/jq;)V

    iput-object v1, p0, Lk0/jq;->v:Ljava/lang/Runnable;

    .line 22
    new-instance v1, Lk0/jq$j;

    invoke-direct {v1, p0}, Lk0/jq$j;-><init>(Lk0/jq;)V

    iput-object v1, p0, Lk0/jq;->w:Ljava/lang/Runnable;

    .line 23
    iput v2, p0, Lk0/jq;->x:I

    const-string v1, ""

    .line 24
    iput-object v1, p0, Lk0/jq;->y:Ljava/lang/String;

    .line 25
    new-instance v1, Lk0/jq$k;

    invoke-direct {v1, p0}, Lk0/jq$k;-><init>(Lk0/jq;)V

    iput-object v1, p0, Lk0/jq;->z:Ljava/lang/Runnable;

    .line 26
    new-instance v1, Lk0/jq$l;

    invoke-direct {v1, p0}, Lk0/jq$l;-><init>(Lk0/jq;)V

    iput-object v1, p0, Lk0/jq;->A:Ljava/lang/Runnable;

    .line 27
    new-instance v1, Lk0/jq$a;

    invoke-direct {v1, p0}, Lk0/jq$a;-><init>(Lk0/jq;)V

    iput-object v1, p0, Lk0/jq;->B:Ljava/lang/Runnable;

    .line 28
    iput v0, p0, Lk0/jq;->C:I

    .line 29
    new-instance v0, Lk0/jq$b;

    invoke-direct {v0, p0}, Lk0/jq$b;-><init>(Lk0/jq;)V

    iput-object v0, p0, Lk0/jq;->D:Ljava/lang/Runnable;

    .line 30
    new-instance v0, Lk0/jq$c;

    invoke-direct {v0, p0}, Lk0/jq$c;-><init>(Lk0/jq;)V

    iput-object v0, p0, Lk0/jq;->E:Ljava/lang/Runnable;

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
        0x7
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x8
        0xd
    .end array-data

    :array_6
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_7
    .array-data 4
        0xa
        0x1a
    .end array-data

    :array_8
    .array-data 4
        0x13
        0x22
    .end array-data

    :array_9
    .array-data 4
        0x14
        0x23
    .end array-data

    :array_a
    .array-data 4
        0x87
        0x0
    .end array-data
.end method

.method public static synthetic d3(Lk0/jq;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/jq;->c3(Z)V

    return-void
.end method

.method public static synthetic e3(Lk0/jq;BBLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lk0/jq;->a3(BBLjava/lang/String;)V

    return-void
.end method

.method public static synthetic f3(Lk0/jq;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/jq;->x:I

    return p0
.end method

.method public static synthetic g3(Lk0/jq;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/jq;->x:I

    return p1
.end method

.method public static synthetic h3(Lk0/jq;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/jq;->y:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic i3(Lk0/jq;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/jq;->y:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic j3(Lk0/jq;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk0/jq;->q3(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic k3(Lk0/jq;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/jq;->b3()V

    return-void
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public S2()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk0/jq;->t:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/jq;->D:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 3
    iget-object v0, p0, Lk0/jq;->A:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 5
    iput v2, v0, Lk0/mt;->e:I

    .line 6
    iput v2, v0, Lk0/mt;->f:I

    const/4 v1, 0x0

    .line 7
    iput v1, v0, Lk0/mt;->g:I

    .line 8
    iput v2, v0, Lk0/mt;->i:I

    .line 9
    iput v1, v0, Lk0/mt;->j:I

    .line 10
    iput v1, v0, Lk0/mt;->o:I

    .line 11
    iput v1, v0, Lk0/mt;->l:I

    .line 12
    sget v1, Lk0/nt;->a:I

    const v3, 0x2d01c7

    if-eq v1, v3, :cond_0

    const v3, 0xc101c8

    if-eq v1, v3, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    iput v2, v0, Lk0/mt;->l:I

    .line 14
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/jq;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 15
    sget-object v0, Ly0/g;->t:Lo1/y;

    iget-object v1, p0, Lk0/jq;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 16
    sget-object v0, Ly0/g;->k:Lo1/z;

    new-instance v1, Lk0/jq$d;

    invoke-direct {v1, p0}, Lk0/jq$d;-><init>(Lk0/jq;)V

    invoke-virtual {v0, v1}, Lo1/z;->a(Lo1/p;)V

    .line 17
    :goto_0
    iget-object v0, p0, Lk0/jq;->B:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 18
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v1, p0, Lk0/jq;->v:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 19
    sget-object v0, Lu0/c;->p:Lo1/y;

    iget-object v1, p0, Lk0/jq;->v:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 20
    sget-object v0, Lu0/c;->q:Lo1/y;

    iget-object v1, p0, Lk0/jq;->v:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 21
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v1, p0, Lk0/jq;->v:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 22
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/jq;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 23
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/jq;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 24
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v1, p0, Lk0/jq;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 25
    sget-object v0, Lh0/d;->c:Lo1/y;

    iget-object v1, p0, Lk0/jq;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 26
    sget-object v0, Lh0/d;->d:Lo1/y;

    iget-object v1, p0, Lk0/jq;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x1d

    const/4 v4, 0x5

    const/16 v6, 0xff

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v2, v3, :cond_2a

    const/16 v3, 0x1e

    if-eq v2, v3, :cond_29

    const/16 v3, 0x20

    const/4 v9, 0x3

    if-eq v2, v3, :cond_24

    const/16 v3, 0x24

    const/4 v10, 0x2

    if-eq v2, v3, :cond_22

    const/16 v3, 0x26

    if-eq v2, v3, :cond_21

    const/16 v3, 0x30

    if-eq v2, v3, :cond_20

    const/16 v3, 0x7d

    const/16 v11, 0x419

    const/4 v5, 0x0

    if-eq v2, v3, :cond_1b

    const/16 v3, 0x28

    const/16 v12, 0x41

    const/16 v14, 0x1c

    if-eq v2, v3, :cond_13

    const/16 v3, 0x29

    if-eq v2, v3, :cond_11

    const/16 v3, 0x40

    const v15, 0xc101c8

    const v13, 0x2d01c7

    if-eq v2, v3, :cond_e

    if-eq v2, v12, :cond_b

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_a

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v3, v1, v2

    if-nez v3, :cond_0

    .line 3
    sget-object v1, Lk0/nt;->f:[Lo1/x;

    new-array v2, v10, [I

    fill-array-data v2, :array_0

    invoke-static {v1, v11, v2, v5, v5}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_a

    .line 4
    :cond_0
    aget-byte v1, v1, v2

    if-ne v1, v8, :cond_2e

    .line 5
    sget-object v1, Lk0/nt;->f:[Lo1/x;

    new-array v2, v10, [I

    fill-array-data v2, :array_1

    invoke-static {v1, v11, v2, v5, v5}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_a

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 6
    aget-byte v3, v1, v2

    if-nez v3, :cond_1

    .line 7
    sget-object v1, Lk0/nt;->f:[Lo1/x;

    new-array v2, v10, [I

    fill-array-data v2, :array_2

    invoke-static {v1, v11, v2, v5, v5}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_a

    .line 8
    :cond_1
    aget-byte v1, v1, v2

    if-ne v1, v8, :cond_2e

    .line 9
    sget-object v1, Lk0/nt;->f:[Lo1/x;

    new-array v2, v10, [I

    fill-array-data v2, :array_3

    invoke-static {v1, v11, v2, v5, v5}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_a

    :pswitch_2
    const/16 v2, 0x407

    new-array v3, v8, [I

    add-int/lit8 v12, p2, 0x2

    .line 10
    aget-byte v13, v1, v12

    and-int/2addr v13, v6

    aput v13, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 11
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v3, v10, [I

    aput v8, v3, v7

    aget-byte v12, v1, v12

    and-int/2addr v12, v6

    aput v12, v3, v8

    invoke-static {v2, v11, v3, v5, v5}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    new-array v3, v10, [I

    aput v4, v3, v7

    add-int/lit8 v4, p2, 0x3

    .line 12
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v8

    invoke-static {v2, v11, v3, v5, v5}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    new-array v3, v10, [I

    const/16 v4, 0x18

    aput v4, v3, v7

    add-int/lit8 v4, p2, 0x4

    .line 13
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v8

    invoke-static {v2, v11, v3, v5, v5}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    new-array v3, v10, [I

    aput v9, v3, v7

    add-int/lit8 v4, p2, 0x5

    .line 14
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v8

    invoke-static {v2, v11, v3, v5, v5}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    add-int/lit8 v3, p2, 0x6

    .line 15
    aget-byte v3, v1, v3

    and-int/2addr v3, v6

    if-eq v3, v8, :cond_4

    if-eq v3, v10, :cond_3

    if-eq v3, v9, :cond_2

    new-array v3, v10, [I

    .line 16
    fill-array-data v3, :array_4

    invoke-static {v2, v11, v3, v5, v5}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-array v3, v10, [I

    .line 17
    fill-array-data v3, :array_5

    invoke-static {v2, v11, v3, v5, v5}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-array v3, v10, [I

    .line 18
    fill-array-data v3, :array_6

    invoke-static {v2, v11, v3, v5, v5}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    new-array v3, v10, [I

    .line 19
    fill-array-data v3, :array_7

    invoke-static {v2, v11, v3, v5, v5}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    :goto_0
    new-array v3, v10, [I

    aput v14, v3, v7

    add-int/lit8 v4, p2, 0x7

    .line 20
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v8

    invoke-static {v2, v11, v3, v5, v5}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    add-int/lit8 v3, p2, 0x8

    .line 21
    aget-byte v3, v1, v3

    and-int/2addr v3, v6

    if-eq v3, v8, :cond_6

    if-eq v3, v10, :cond_5

    new-array v3, v10, [I

    .line 22
    fill-array-data v3, :array_8

    invoke-static {v2, v11, v3, v5, v5}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    new-array v3, v10, [I

    .line 23
    fill-array-data v3, :array_9

    invoke-static {v2, v11, v3, v5, v5}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    new-array v3, v10, [I

    .line 24
    fill-array-data v3, :array_a

    invoke-static {v2, v11, v3, v5, v5}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v3, p2, 0x9

    .line 25
    aget-byte v4, v1, v3

    if-nez v4, :cond_7

    new-array v1, v10, [I

    .line 26
    fill-array-data v1, :array_b

    invoke-static {v2, v11, v1, v5, v5}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_a

    .line 27
    :cond_7
    aget-byte v1, v1, v3

    if-ne v1, v8, :cond_2e

    new-array v1, v10, [I

    .line 28
    fill-array-data v1, :array_c

    invoke-static {v2, v11, v1, v5, v5}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_a

    .line 29
    :pswitch_3
    sget v2, Lk0/nt;->a:I

    if-eq v2, v13, :cond_8

    if-eq v2, v15, :cond_8

    goto/16 :goto_a

    :cond_8
    const/16 v2, 0x7f

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x2

    .line 30
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    .line 31
    :pswitch_4
    sget v2, Lk0/nt;->a:I

    if-eq v2, v13, :cond_9

    if-eq v2, v15, :cond_9

    goto/16 :goto_a

    :cond_9
    add-int/lit8 v2, p2, 0x2

    .line 32
    aget-byte v3, v1, v2

    if-ne v3, v10, :cond_a

    .line 33
    invoke-static {}, Lo1/u;->a0()Z

    move-result v1

    if-eqz v1, :cond_2e

    const/4 v1, 0x6

    .line 34
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 35
    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_a

    .line 36
    :cond_a
    aget-byte v1, v1, v2

    if-ne v1, v8, :cond_2e

    .line 37
    invoke-static {}, Lo1/u;->a0()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 38
    invoke-static {}, Lo1/u;->z()I

    goto/16 :goto_a

    :cond_b
    add-int/lit8 v2, p2, 0x2

    .line 39
    aget-byte v1, v1, v2

    and-int/2addr v1, v6

    .line 40
    iget v2, v0, Lk0/jq;->f:I

    if-eq v2, v1, :cond_2e

    if-ne v1, v8, :cond_c

    .line 41
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.syu.carinfo.xp.xiandai.XiandaiSosPage"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 42
    invoke-virtual/range {p0 .. p0}, Lk0/jq;->l3()V

    goto :goto_2

    :cond_c
    if-nez v1, :cond_d

    .line 43
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.syu.carinfo.xp.xiandai.XiandaiSosPage"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, 0x6

    .line 44
    invoke-static {v2, v7}, Ll0/b0;->l0(II)V

    .line 45
    invoke-static {v2, v8}, Ll0/b0;->l0(II)V

    .line 46
    :cond_d
    :goto_2
    iput v1, v0, Lk0/jq;->f:I

    goto/16 :goto_a

    :cond_e
    const/16 v2, 0x75

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x2

    .line 47
    aget-byte v4, v1, v4

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    const v5, 0xff00

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x3

    aget-byte v5, v1, v5

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x4

    .line 48
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 49
    sget v2, Lk0/nt;->a:I

    if-ne v2, v13, :cond_f

    if-eq v2, v15, :cond_10

    .line 50
    :cond_f
    iget v2, v0, Lk0/jq;->g:I

    add-int/lit8 v3, p2, 0x5

    aget-byte v4, v1, v3

    shr-int/2addr v4, v7

    and-int/2addr v4, v8

    if-eq v2, v4, :cond_10

    .line 51
    aget-byte v2, v1, v3

    shr-int/2addr v2, v7

    and-int/2addr v2, v8

    iput v2, v0, Lk0/jq;->g:I

    .line 52
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.syu.carinfo.rzc.sanlin.RZCVinFastPlusCarInfo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 53
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.syu.canbus"

    const-string v4, "com.syu.carinfo.rzc.sanlin.RZCVinFastPlusCarInfo"

    .line 54
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.category.DEFAULT"

    .line 55
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    .line 56
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 57
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    :cond_10
    const/16 v2, 0x77

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x5

    .line 58
    aget-byte v4, v1, v4

    shr-int/2addr v4, v7

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x6

    .line 59
    aget-byte v4, v1, v4

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    const v5, 0xff00

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x7

    aget-byte v1, v1, v5

    and-int/2addr v1, v6

    or-int/2addr v1, v4

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    .line 60
    :cond_11
    iget-boolean v2, v0, Lk0/jq;->e:Z

    if-nez v2, :cond_2e

    add-int/lit8 v2, p2, 0x3

    .line 61
    aget-byte v3, v1, v2

    const/16 v4, 0x8

    and-int/2addr v3, v4

    if-eqz v3, :cond_12

    add-int/lit8 v3, p2, 0x2

    .line 62
    aget-byte v3, v1, v3

    and-int/2addr v3, v6

    aget-byte v1, v1, v2

    const/16 v4, 0xf

    and-int/2addr v1, v4

    or-int/lit16 v1, v1, 0xf0

    const/16 v2, 0x17c

    invoke-static {v3, v1, v7, v2}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_a

    :cond_12
    const/16 v4, 0xf

    add-int/lit8 v3, p2, 0x2

    .line 63
    aget-byte v3, v1, v3

    and-int/2addr v3, v6

    aget-byte v1, v1, v2

    and-int/2addr v1, v4

    const/16 v2, 0x17c

    invoke-static {v3, v1, v7, v2}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_a

    :cond_13
    new-array v2, v8, [I

    add-int/lit8 v3, p2, 0x2

    .line 64
    aget-byte v5, v1, v3

    shr-int/lit8 v5, v5, 0x7

    and-int/2addr v5, v8

    aput v5, v2, v7

    const/16 v5, 0xa

    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb

    new-array v11, v8, [I

    .line 65
    aget-byte v13, v1, v3

    const/4 v15, 0x6

    shr-int/2addr v13, v15

    and-int/2addr v13, v8

    aput v13, v11, v7

    invoke-static {v2, v11}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc

    new-array v11, v8, [I

    .line 66
    aget-byte v13, v1, v3

    shr-int/2addr v13, v4

    and-int/2addr v13, v8

    aput v13, v11, v7

    invoke-static {v2, v11}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x31

    new-array v11, v8, [I

    .line 67
    aget-byte v13, v1, v3

    const/4 v15, 0x4

    shr-int/2addr v13, v15

    and-int/2addr v13, v8

    aput v13, v11, v7

    invoke-static {v2, v11}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd

    new-array v11, v8, [I

    .line 68
    aget-byte v13, v1, v3

    shr-int/lit8 v9, v13, 0x3

    and-int/2addr v9, v8

    aput v9, v11, v7

    invoke-static {v2, v11}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe

    new-array v9, v8, [I

    .line 69
    aget-byte v11, v1, v3

    shr-int/lit8 v10, v11, 0x2

    and-int/2addr v10, v8

    aput v10, v9, v7

    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    .line 70
    aget-byte v3, v1, v3

    shr-int/2addr v3, v8

    and-int/2addr v3, v8

    aput v3, v2, v7

    const/16 v3, 0xf

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v3, v8, [I

    add-int/lit8 v9, p2, 0x3

    .line 71
    aget-byte v10, v1, v9

    shr-int/lit8 v10, v10, 0x7

    and-int/2addr v10, v8

    aput v10, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v3, v8, [I

    .line 72
    aget-byte v10, v1, v9

    const/4 v11, 0x6

    shr-int/2addr v10, v11

    and-int/2addr v10, v8

    aput v10, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v8, [I

    .line 73
    aget-byte v10, v1, v9

    shr-int/2addr v10, v4

    and-int/2addr v10, v8

    aput v10, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v8, [I

    .line 74
    aget-byte v9, v1, v9

    const/16 v10, 0xf

    and-int/2addr v9, v10

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    add-int/lit8 v3, p2, 0x6

    .line 75
    aget-byte v9, v1, v3

    shr-int/2addr v9, v7

    and-int/2addr v9, v8

    aput v9, v2, v7

    const/16 v9, 0x25

    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x4

    .line 76
    aget-byte v10, v1, v2

    and-int/2addr v10, v6

    add-int/lit8 v11, p2, 0x5

    .line 77
    aget-byte v13, v1, v11

    and-int/2addr v13, v6

    const-string v15, "persist.fyt.reversetemp"

    .line 78
    invoke-static {v15, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    if-eqz v15, :cond_14

    .line 79
    aget-byte v10, v1, v11

    and-int/2addr v10, v6

    .line 80
    aget-byte v2, v1, v2

    and-int/lit16 v13, v2, 0xff

    :cond_14
    const/16 v2, 0x1b

    if-eqz v10, :cond_17

    if-eq v10, v6, :cond_16

    .line 81
    sget-object v11, Lk0/nt;->g:[I

    aget v11, v11, v9

    if-ne v11, v8, :cond_15

    new-array v11, v8, [I

    mul-int/2addr v10, v5

    aput v10, v11, v7

    .line 82
    invoke-static {v2, v11}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_15
    new-array v11, v8, [I

    mul-int/2addr v10, v4

    aput v10, v11, v7

    .line 83
    invoke-static {v2, v11}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_16
    new-array v10, v8, [I

    const/4 v11, -0x3

    aput v11, v10, v7

    .line 84
    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_17
    new-array v10, v8, [I

    const/4 v11, -0x2

    aput v11, v10, v7

    .line 85
    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    :goto_3
    if-eqz v13, :cond_1a

    if-eq v13, v6, :cond_19

    .line 86
    sget-object v2, Lk0/nt;->g:[I

    aget v2, v2, v9

    if-ne v2, v8, :cond_18

    new-array v2, v8, [I

    mul-int/2addr v13, v5

    aput v13, v2, v7

    .line 87
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_18
    new-array v2, v8, [I

    mul-int/2addr v13, v4

    aput v13, v2, v7

    .line 88
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_19
    new-array v2, v8, [I

    const/4 v4, -0x3

    aput v4, v2, v7

    .line 89
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_1a
    new-array v2, v8, [I

    const/4 v4, -0x2

    aput v4, v2, v7

    .line 90
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    :goto_4
    new-array v2, v8, [I

    .line 91
    aget-byte v4, v1, v3

    shr-int/lit8 v4, v4, 0x7

    and-int/2addr v4, v8

    aput v4, v2, v7

    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10

    new-array v4, v8, [I

    .line 92
    aget-byte v1, v1, v3

    const/4 v3, 0x6

    shr-int/2addr v1, v3

    and-int/2addr v1, v8

    aput v1, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    :cond_1b
    add-int/lit8 v2, p2, 0x2

    .line 93
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    if-eq v2, v8, :cond_1e

    if-eq v2, v9, :cond_1d

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1c

    goto/16 :goto_a

    :cond_1c
    add-int/lit8 v2, p2, 0x3

    .line 94
    aget-byte v2, v1, v2

    const/4 v3, 0x4

    add-int/lit8 v3, p2, 0x4

    .line 95
    aget-byte v1, v1, v3

    const/16 v3, 0x21c

    .line 96
    invoke-static {v2, v1, v8, v3}, Lk0/qt;->i(IIZI)V

    .line 97
    iput-boolean v8, v0, Lk0/jq;->e:Z

    goto/16 :goto_a

    :cond_1d
    add-int/lit8 v2, p2, 0x4

    .line 98
    aget-byte v2, v1, v2

    const/16 v3, 0x8

    shl-int/2addr v2, v3

    const v3, 0xff00

    and-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    and-int/2addr v1, v6

    or-int/2addr v1, v2

    const/16 v2, 0x64

    div-int/2addr v1, v2

    const/16 v2, 0x407

    new-array v3, v8, [I

    aput v1, v3, v7

    .line 99
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 100
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v3, v10, [I

    aput v8, v3, v7

    aput v1, v3, v8

    invoke-static {v2, v11, v3, v5, v5}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_1e
    const-string v2, "persist.fyt.leftrightlighttype"

    .line 101
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1f

    add-int/lit8 v2, p2, 0x3

    .line 102
    aget-byte v3, v1, v2

    shr-int/2addr v3, v9

    and-int/2addr v3, v8

    aget-byte v2, v1, v2

    const/4 v4, 0x4

    shr-int/2addr v2, v4

    and-int/2addr v2, v8

    invoke-static {v3, v2, v7}, Ll0/c0;->b(III)V

    goto :goto_5

    :cond_1f
    const/4 v4, 0x4

    add-int/lit8 v2, p2, 0x3

    .line 103
    aget-byte v3, v1, v2

    shr-int/2addr v3, v9

    and-int/2addr v3, v8

    aget-byte v2, v1, v2

    shr-int/2addr v2, v4

    and-int/2addr v2, v8

    invoke-static {v3, v2, v7}, Ll0/c0;->a(III)V

    .line 104
    :goto_5
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v3, v10, [I

    const/16 v4, 0xb

    aput v4, v3, v7

    add-int/lit8 v4, p2, 0x3

    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v8

    invoke-static {v2, v11, v3, v5, v5}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_a

    .line 105
    :cond_20
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_21
    const/16 v2, 0x62

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x2

    .line 106
    aget-byte v11, v1, v5

    const/4 v12, 0x4

    shr-int/2addr v11, v12

    const/16 v12, 0xf

    and-int/2addr v11, v12

    aput v11, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    new-array v3, v8, [I

    .line 107
    aget-byte v5, v1, v5

    shr-int/2addr v5, v7

    and-int/2addr v5, v12

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    add-int/lit8 v3, p2, 0x3

    .line 108
    aget-byte v5, v1, v3

    shr-int/lit8 v5, v5, 0x7

    and-int/2addr v5, v8

    aput v5, v2, v7

    const/16 v5, 0x64

    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v5, v8, [I

    .line 109
    aget-byte v3, v1, v3

    shr-int/2addr v3, v7

    const/16 v11, 0xf

    and-int/2addr v3, v11

    aput v3, v5, v7

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x4

    .line 110
    aget-byte v11, v1, v5

    shr-int/lit8 v11, v11, 0x7

    and-int/2addr v11, v8

    aput v11, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v8, [I

    .line 111
    aget-byte v11, v1, v5

    const/4 v12, 0x6

    shr-int/2addr v11, v12

    and-int/2addr v11, v8

    aput v11, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v8, [I

    .line 112
    aget-byte v5, v1, v5

    shr-int/2addr v5, v4

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x5

    .line 113
    aget-byte v11, v1, v5

    shr-int/lit8 v11, v11, 0x7

    and-int/2addr v11, v8

    aput v11, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v8, [I

    .line 114
    aget-byte v11, v1, v5

    const/4 v12, 0x6

    shr-int/2addr v11, v12

    and-int/2addr v11, v8

    aput v11, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v8, [I

    .line 115
    aget-byte v11, v1, v5

    shr-int/lit8 v4, v11, 0x5

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v8, [I

    .line 116
    aget-byte v4, v1, v5

    const/4 v11, 0x4

    shr-int/2addr v4, v11

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v8, [I

    .line 117
    aget-byte v4, v1, v5

    shr-int/2addr v4, v9

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v8, [I

    .line 118
    aget-byte v4, v1, v5

    shr-int/2addr v4, v10

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x6

    .line 119
    aget-byte v5, v1, v4

    shr-int/lit8 v5, v5, 0x7

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v8, [I

    .line 120
    aget-byte v5, v1, v4

    const/4 v10, 0x6

    shr-int/2addr v5, v10

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v8, [I

    .line 121
    aget-byte v5, v1, v4

    const/4 v10, 0x4

    shr-int/2addr v5, v10

    and-int/2addr v5, v9

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v3, v8, [I

    .line 122
    aget-byte v5, v1, v4

    shr-int/2addr v5, v9

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v3, v8, [I

    .line 123
    aget-byte v4, v1, v4

    shr-int/2addr v4, v7

    and-int/lit8 v4, v4, 0x7

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x7

    .line 124
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x8

    .line 125
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x9

    .line 126
    aget-byte v1, v1, v4

    shr-int/2addr v1, v7

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    :cond_22
    add-int/lit8 v2, p2, 0x2

    .line 127
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 128
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_23

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 129
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 130
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_23
    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 131
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 132
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    :goto_6
    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v8

    aput v3, v2, v7

    const/4 v3, 0x4

    .line 133
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 134
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/2addr v1, v9

    and-int/2addr v1, v8

    aput v1, v2, v7

    .line 135
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    :cond_24
    add-int/lit8 v2, p2, 0x2

    .line 136
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 137
    aget-byte v1, v1, v3

    and-int/2addr v2, v6

    .line 138
    iput v2, v0, Lk0/jq;->c:I

    move v2, v7

    .line 139
    :goto_7
    iget-object v3, v0, Lk0/jq;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_26

    .line 140
    iget v4, v0, Lk0/jq;->c:I

    aget-object v5, v3, v2

    aget v5, v5, v7

    if-ne v4, v5, :cond_25

    if-eqz v4, :cond_26

    .line 141
    iput v2, v0, Lk0/jq;->b:I

    goto :goto_8

    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_26
    :goto_8
    and-int/2addr v1, v6

    if-ne v1, v8, :cond_27

    .line 142
    array-length v1, v3

    if-ge v2, v1, :cond_2e

    .line 143
    aget-object v1, v3, v2

    aget v1, v1, v8

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_a

    :cond_27
    if-nez v1, :cond_2e

    .line 144
    iget v1, v0, Lk0/jq;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_28

    if-eq v1, v6, :cond_28

    .line 145
    aget-object v1, v3, v1

    aget v1, v1, v8

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    .line 146
    :cond_28
    iput v6, v0, Lk0/jq;->b:I

    goto/16 :goto_a

    :cond_29
    add-int/lit8 v2, p2, 0x2

    .line 147
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->V0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 148
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->V0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 149
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->V0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 150
    aget-byte v1, v1, v2

    and-int/2addr v1, v6

    invoke-static {v1}, Ll0/c0;->V0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto :goto_a

    :cond_2a
    add-int/lit8 v2, p2, 0x2

    .line 151
    aget-byte v3, v1, v2

    and-int/2addr v3, v6

    add-int/lit8 v5, p2, 0x3

    .line 152
    aget-byte v9, v1, v5

    and-int/2addr v9, v6

    add-int/lit8 v10, p2, 0x4

    .line 153
    aget-byte v11, v1, v10

    and-int/2addr v11, v6

    add-int/lit8 v4, p2, 0x5

    .line 154
    aget-byte v12, v1, v4

    and-int/2addr v12, v6

    if-nez v3, :cond_2b

    if-nez v9, :cond_2b

    if-nez v11, :cond_2b

    if-nez v12, :cond_2b

    .line 155
    invoke-static {v7}, Lu0/d;->C2(I)V

    goto :goto_9

    .line 156
    :cond_2b
    sget v7, Ll0/c0;->g:I

    if-ne v7, v3, :cond_2c

    sget v7, Ll0/c0;->h:I

    if-ne v7, v9, :cond_2c

    sget v7, Ll0/c0;->i:I

    if-ne v7, v11, :cond_2c

    sget v7, Ll0/c0;->j:I

    if-eq v7, v12, :cond_2d

    .line 157
    :cond_2c
    sget v7, Lu0/b;->o:I

    if-nez v7, :cond_2d

    .line 158
    invoke-static {v8}, Lu0/d;->C2(I)V

    const/4 v7, 0x4

    .line 159
    sput v7, Ll0/c0;->k:I

    .line 160
    sget-object v7, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v7}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 161
    :cond_2d
    :goto_9
    sput v3, Ll0/c0;->g:I

    .line 162
    sput v9, Ll0/c0;->h:I

    .line 163
    sput v11, Ll0/c0;->i:I

    .line 164
    sput v12, Ll0/c0;->j:I

    .line 165
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->V0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 166
    aget-byte v2, v1, v5

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->V0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 167
    aget-byte v2, v1, v10

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->V0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 168
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    invoke-static {v1}, Ll0/c0;->V0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    :cond_2e
    :goto_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x50
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x9
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x9
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x19
        0x2
    .end array-data

    :array_3
    .array-data 4
        0x19
        0x1
    .end array-data

    :array_4
    .array-data 4
        0x4
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x4
        0x3
    .end array-data

    :array_6
    .array-data 4
        0x4
        0x2
    .end array-data

    :array_7
    .array-data 4
        0x4
        0x1
    .end array-data

    :array_8
    .array-data 4
        0x1a
        0x0
    .end array-data

    :array_9
    .array-data 4
        0x1a
        0x3
    .end array-data

    :array_a
    .array-data 4
        0x1a
        0x1
    .end array-data

    :array_b
    .array-data 4
        0xa
        0x1
    .end array-data

    :array_c
    .array-data 4
        0xa
        0x0
    .end array-data
.end method

.method public W2()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/jq;->t:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    iget-object v0, p0, Lk0/jq;->A:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/jq;->D:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/jq;->E:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lk0/jq;->B:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v1, p0, Lk0/jq;->v:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 7
    sget-object v0, Lu0/c;->p:Lo1/y;

    iget-object v1, p0, Lk0/jq;->v:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 8
    sget-object v0, Lu0/c;->q:Lo1/y;

    iget-object v1, p0, Lk0/jq;->v:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 9
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v1, p0, Lk0/jq;->v:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/jq;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 11
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/jq;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 12
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v1, p0, Lk0/jq;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 13
    sget-object v0, Lh0/d;->c:Lo1/y;

    iget-object v1, p0, Lk0/jq;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 14
    sget-object v0, Lh0/d;->d:Lo1/y;

    iget-object v1, p0, Lk0/jq;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 15
    sget-object v0, Ly0/g;->t:Lo1/y;

    iget-object v1, p0, Lk0/jq;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 16
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/jq;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 17
    sget-object v0, Ly0/g;->k:Lo1/z;

    new-instance v1, Lk0/jq$e;

    invoke-direct {v1, p0}, Lk0/jq$e;-><init>(Lk0/jq;)V

    invoke-virtual {v0, v1}, Lo1/z;->d(Lo1/p;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x80

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
    .locals 8

    const/4 p3, 0x5

    const/16 p4, 0xe3

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_c

    if-eq p1, v4, :cond_b

    const/16 v5, 0x8

    const/4 v6, 0x7

    const/4 v7, 0x6

    if-eq p1, v2, :cond_a

    if-eq p1, v1, :cond_6

    if-eq p1, p3, :cond_5

    const/16 v5, 0x2b

    if-eq p1, v5, :cond_4

    const/16 v5, 0x2e

    if-eq p1, v5, :cond_3

    const/16 v5, 0xee

    if-eq p1, v5, :cond_2

    const/16 v5, 0x410

    if-eq p1, v5, :cond_0

    goto/16 :goto_0

    .line 1
    :cond_0
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    sget-object v5, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FinalCanbus.C_CMD_6606 --- "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v7, p2

    invoke-static {p2, v3, v7}, Lo1/b0;->e([III)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 2
    aget p1, p2, v3

    const/16 v5, 0x19

    if-eq p1, v5, :cond_1

    goto/16 :goto_0

    :cond_1
    new-array p1, p3, [I

    aput p4, p1, v3

    const/16 p3, 0xe6

    aput p3, p1, v4

    aput v2, p1, v2

    .line 3
    aget p3, p2, v4

    aput p3, p1, v1

    aget p2, p2, v2

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_2
    new-array p1, v0, [I

    aput p4, p1, v3

    const/16 p3, 0x86

    aput p3, p1, v4

    aput v4, p1, v2

    .line 4
    aget p2, p2, v3

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_3
    new-array p1, v0, [I

    aput p4, p1, v3

    aput p4, p1, v4

    aput v4, p1, v2

    .line 5
    aget p2, p2, v3

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_4
    new-array p1, v0, [I

    aput p4, p1, v3

    const/16 p3, 0xe5

    aput p3, p1, v4

    aput v4, p1, v2

    .line 6
    aget p2, p2, v3

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_5
    new-array p1, v5, [I

    aput p4, p1, v3

    const/16 p4, 0xe4

    aput p4, p1, v4

    aput p3, p1, v2

    .line 7
    aget p4, p2, v3

    aput p4, p1, v1

    aget p4, p2, v4

    aput p4, p1, v0

    aget p4, p2, v2

    aput p4, p1, p3

    aget p3, p2, v1

    aput p3, p1, v7

    aget p2, p2, v0

    aput p2, p1, v6

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 8
    :cond_6
    aget p1, p2, v3

    and-int/lit16 p1, p1, 0xff

    const/16 p3, 0xfd

    if-ne p1, p3, :cond_7

    .line 9
    aget p1, p2, v4

    invoke-virtual {p0, p1}, Lk0/jq;->o3(I)V

    goto/16 :goto_0

    .line 10
    :cond_7
    aget p1, p2, v3

    and-int/lit16 p1, p1, 0xff

    const/16 p3, 0xfc

    if-ne p1, p3, :cond_8

    .line 11
    aget p1, p2, v4

    invoke-virtual {p0, p1}, Lk0/jq;->m3(I)V

    goto :goto_0

    .line 12
    :cond_8
    aget p1, p2, v3

    and-int/lit16 p1, p1, 0xff

    const/16 p3, 0xf9

    if-ne p1, p3, :cond_9

    .line 13
    aget p1, p2, v4

    invoke-virtual {p0, p1}, Lk0/jq;->n3(I)V

    goto :goto_0

    .line 14
    :cond_9
    aget p1, p2, v3

    and-int/lit16 p1, p1, 0xff

    const/16 p3, 0xf7

    if-ne p1, p3, :cond_d

    .line 15
    aget p1, p2, v4

    invoke-virtual {p0, p1}, Lk0/jq;->p3(I)V

    goto :goto_0

    :cond_a
    const/16 p1, 0x9

    new-array p1, p1, [I

    aput p4, p1, v3

    const/16 p4, 0xc7

    aput p4, p1, v4

    aput v7, p1, v2

    .line 16
    aget p4, p2, v3

    aput p4, p1, v1

    aget p4, p2, v4

    aput p4, p1, v0

    aget p4, p2, v2

    aput p4, p1, p3

    aget p4, p2, v1

    aput p4, p1, v7

    aget p4, p2, v0

    aput p4, p1, v6

    aget p2, p2, p3

    aput p2, p1, v5

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_b
    new-array p1, p3, [I

    aput p4, p1, v3

    const/16 p3, 0x83

    aput p3, p1, v4

    aput v2, p1, v2

    .line 17
    aget p3, p2, v3

    aput p3, p1, v1

    aget p2, p2, v4

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_c
    new-array p1, p3, [I

    aput p4, p1, v3

    const/16 p3, 0x90

    aput p3, p1, v4

    aput v2, p1, v2

    .line 18
    aget p3, p2, v3

    aput p3, p1, v1

    aget p2, p2, v4

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_d
    :goto_0
    return-void
.end method

.method public final a3(BBLjava/lang/String;)V
    .locals 4

    if-nez p3, :cond_0

    const-string p3, "Unkown"

    :cond_0
    const/16 v0, 0x25

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    .line 1
    aput v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    const/16 v0, 0xe3

    aput v0, v1, v2

    const/16 v0, 0x99

    const/4 v3, 0x1

    aput v0, v1, v3

    const/4 v0, 0x2

    const/16 v3, 0x22

    aput v3, v1, v0

    const/4 v0, 0x3

    aput p1, v1, v0

    const/4 p1, 0x4

    aput p2, v1, p1

    .line 3
    array-length p1, p3

    const/16 p2, 0x20

    if-le p1, p2, :cond_2

    goto :goto_1

    :cond_2
    array-length p2, p3

    :goto_1
    if-ge v2, p2, :cond_3

    add-int/lit8 p1, v2, 0x5

    .line 4
    aget-byte v0, p3, v2

    aput v0, v1, p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5
    :cond_3
    invoke-static {v1}, Lz/k;->s([I)V

    return-void
.end method

.method public final b3()V
    .locals 6

    .line 1
    sget v0, Lw0/d;->h:I

    const/high16 v1, 0x10000

    sub-int v2, v0, v1

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    sub-int v2, v0, v1

    if-eq v4, v2, :cond_0

    sub-int/2addr v0, v1

    if-ne v3, v0, :cond_2

    :cond_0
    const/16 v0, 0x25

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v5, v2

    :goto_0
    if-ge v5, v0, :cond_1

    .line 2
    aput v2, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0xe3

    aput v0, v1, v2

    const/16 v0, 0x99

    aput v0, v1, v4

    const/16 v0, 0x22

    aput v0, v1, v3

    const/4 v0, 0x3

    aput v4, v1, v0

    const/4 v0, 0x4

    aput v4, v1, v0

    const/4 v0, 0x5

    .line 3
    sget v2, Lw0/d;->i:I

    shr-int/lit8 v3, v2, 0x8

    and-int/lit16 v3, v3, 0xff

    aput v3, v1, v0

    const/4 v0, 0x6

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v0

    .line 4
    invoke-static {v1}, Lz/k;->s([I)V

    :cond_2
    return-void
.end method

.method public final c3(Z)V
    .locals 4

    .line 1
    sget v0, Lu0/b;->a0:I

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    sget-object v1, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SoundChangeTo 1111111=== "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lk0/jq;->l:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 3
    iget-boolean v0, p0, Lk0/jq;->l:Z

    if-ne v0, p1, :cond_1

    return-void

    .line 4
    :cond_1
    iput-boolean p1, p0, Lk0/jq;->l:Z

    .line 5
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SoundChangeTo 222222=== "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lk0/jq;->l:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    const-string v0, "ro.fyt.platform"

    const-string v1, ""

    .line 6
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "6521"

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    if-eqz p1, :cond_2

    .line 8
    invoke-static {v2}, Lcom/syu/jni/ToolsJni;->cmd_31_fan_en(I)V

    goto :goto_2

    .line 9
    :cond_2
    invoke-static {v3}, Lcom/syu/jni/ToolsJni;->cmd_31_fan_en(I)V

    goto :goto_2

    :cond_3
    const-string v1, "6316"

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "6312"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    const-string v1, "6315"

    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "6318"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "6319"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x5

    if-eqz p1, :cond_6

    .line 12
    invoke-static {v0, v2}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    goto :goto_2

    .line 13
    :cond_6
    invoke-static {v0, v3}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    goto :goto_2

    :cond_7
    :goto_0
    const/16 v0, 0xe

    if-eqz p1, :cond_8

    .line 14
    invoke-static {v0, v2}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    goto :goto_2

    .line 15
    :cond_8
    invoke-static {v0, v3}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    goto :goto_2

    :cond_9
    :goto_1
    const/16 v0, 0xd

    if-eqz p1, :cond_a

    .line 16
    invoke-static {v0, v2}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    goto :goto_2

    .line 17
    :cond_a
    invoke-static {v0, v3}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    :goto_2
    return-void
.end method

.method public final l3()V
    .locals 3

    const-string v0, "com.syu.carinfo.xp.xiandai.XiandaiSosPage"

    .line 1
    :try_start_0
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.syu.canbus"

    .line 3
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.DEFAULT"

    .line 4
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 5
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public final m3(I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 v1, 0x7c

    .line 1
    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/jq;->H:I

    .line 3
    iget-object p1, p0, Lk0/jq;->t:Lo1/g0;

    const/16 v0, 0xb

    const/16 v1, 0x24

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/jq;->H:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/jq;->t:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final n3(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 v2, 0x7e

    .line 1
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/jq;->J:I

    .line 3
    iget-object p1, p0, Lk0/jq;->t:Lo1/g0;

    const/16 v0, 0xe

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/jq;->J:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/jq;->t:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final o3(I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 v1, 0x7b

    .line 1
    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/jq;->G:I

    .line 3
    iget-object p1, p0, Lk0/jq;->t:Lo1/g0;

    const/16 v0, 0xa

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/jq;->G:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/jq;->t:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final p3(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 v2, 0x7d

    .line 1
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/jq;->I:I

    .line 3
    iget-object p1, p0, Lk0/jq;->t:Lo1/g0;

    const/16 v0, 0xf

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/jq;->I:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/jq;->t:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final q3(ILjava/lang/String;)V
    .locals 5

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    const/16 v0, 0x1c

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    .line 1
    aput v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/16 v3, 0xe3

    aput v3, v1, v2

    const/16 v3, 0x9b

    const/4 v4, 0x1

    aput v3, v1, v4

    const/4 v3, 0x2

    const/16 v4, 0x19

    aput v4, v1, v3

    const/4 v3, 0x3

    aput p1, v1, v3

    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v3, 0x18

    if-le p1, v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    :goto_1
    if-ge v2, v3, :cond_3

    add-int/lit8 p1, v2, 0x4

    .line 4
    aget-byte p2, v0, v2

    aput p2, v1, p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5
    :cond_3
    invoke-static {v1}, Lz/k;->s([I)V

    return-void
.end method
