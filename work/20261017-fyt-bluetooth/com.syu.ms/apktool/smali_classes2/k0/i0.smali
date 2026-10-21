.class public Lk0/i0;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static F:I


# instance fields
.field public A:Ljava/lang/Runnable;

.field public B:Ljava/lang/Runnable;

.field public C:I

.field public D:Z

.field public E:Ljava/lang/String;

.field public final b:[I

.field public final c:[I

.field public final d:[I

.field public final e:[I

.field public final f:[I

.field public final g:[I

.field public h:Lo1/g0;

.field public final i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:[[I

.field public n:B

.field public o:Ljava/lang/Runnable;

.field public p:Ljava/lang/Runnable;

.field public q:Ljava/lang/Runnable;

.field public r:Ljava/lang/Runnable;

.field public s:Ljava/lang/Runnable;

.field public t:Ljava/lang/Runnable;

.field public u:Ljava/lang/Runnable;

.field public v:Ljava/lang/Runnable;

.field public w:I

.field public x:Ljava/lang/Runnable;

.field public y:Ljava/lang/Runnable;

.field public z:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x6

    new-array v1, v0, [I

    .line 2
    iput-object v1, p0, Lk0/i0;->b:[I

    const/16 v1, 0xc

    new-array v2, v1, [I

    .line 3
    iput-object v2, p0, Lk0/i0;->c:[I

    const/16 v2, 0x1e

    new-array v3, v2, [I

    .line 4
    iput-object v3, p0, Lk0/i0;->d:[I

    new-array v3, v2, [I

    .line 5
    iput-object v3, p0, Lk0/i0;->e:[I

    new-array v3, v2, [I

    .line 6
    iput-object v3, p0, Lk0/i0;->f:[I

    new-array v2, v2, [I

    .line 7
    iput-object v2, p0, Lk0/i0;->g:[I

    .line 8
    new-instance v2, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x20

    invoke-direct {v2, v3, v4}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lk0/i0;->h:Lo1/g0;

    const/4 v2, 0x1

    .line 9
    iput v2, p0, Lk0/i0;->i:I

    const/16 v3, 0xa

    .line 10
    iput v3, p0, Lk0/i0;->j:I

    const/16 v4, 0xff

    .line 11
    iput v4, p0, Lk0/i0;->l:I

    new-array v1, v1, [[I

    const/4 v4, 0x2

    new-array v5, v4, [I

    .line 12
    fill-array-data v5, :array_0

    const/4 v6, 0x0

    aput-object v5, v1, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_1

    aput-object v5, v1, v2

    new-array v2, v4, [I

    fill-array-data v2, :array_2

    aput-object v2, v1, v4

    new-array v2, v4, [I

    fill-array-data v2, :array_3

    const/4 v5, 0x3

    aput-object v2, v1, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_4

    const/4 v5, 0x4

    aput-object v2, v1, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_5

    const/4 v5, 0x5

    aput-object v2, v1, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_6

    aput-object v2, v1, v0

    new-array v0, v4, [I

    fill-array-data v0, :array_7

    const/4 v2, 0x7

    aput-object v0, v1, v2

    new-array v0, v4, [I

    fill-array-data v0, :array_8

    const/16 v2, 0x8

    aput-object v0, v1, v2

    new-array v0, v4, [I

    fill-array-data v0, :array_9

    const/16 v2, 0x9

    aput-object v0, v1, v2

    new-array v0, v4, [I

    fill-array-data v0, :array_a

    aput-object v0, v1, v3

    new-array v0, v4, [I

    fill-array-data v0, :array_b

    const/16 v2, 0xb

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/i0;->m:[[I

    .line 13
    iput-byte v6, p0, Lk0/i0;->n:B

    .line 14
    new-instance v0, Lk0/i0$e;

    invoke-direct {v0, p0}, Lk0/i0$e;-><init>(Lk0/i0;)V

    iput-object v0, p0, Lk0/i0;->o:Ljava/lang/Runnable;

    .line 15
    new-instance v0, Lk0/i0$f;

    invoke-direct {v0, p0}, Lk0/i0$f;-><init>(Lk0/i0;)V

    iput-object v0, p0, Lk0/i0;->p:Ljava/lang/Runnable;

    .line 16
    new-instance v0, Lk0/i0$g;

    invoke-direct {v0, p0}, Lk0/i0$g;-><init>(Lk0/i0;)V

    iput-object v0, p0, Lk0/i0;->q:Ljava/lang/Runnable;

    .line 17
    new-instance v0, Lk0/i0$h;

    invoke-direct {v0, p0}, Lk0/i0$h;-><init>(Lk0/i0;)V

    iput-object v0, p0, Lk0/i0;->r:Ljava/lang/Runnable;

    .line 18
    new-instance v0, Lk0/i0$i;

    invoke-direct {v0, p0}, Lk0/i0$i;-><init>(Lk0/i0;)V

    iput-object v0, p0, Lk0/i0;->s:Ljava/lang/Runnable;

    .line 19
    new-instance v0, Lk0/i0$j;

    invoke-direct {v0, p0}, Lk0/i0$j;-><init>(Lk0/i0;)V

    iput-object v0, p0, Lk0/i0;->t:Ljava/lang/Runnable;

    .line 20
    new-instance v0, Lk0/i0$k;

    invoke-direct {v0, p0}, Lk0/i0$k;-><init>(Lk0/i0;)V

    iput-object v0, p0, Lk0/i0;->u:Ljava/lang/Runnable;

    .line 21
    new-instance v0, Lk0/i0$l;

    invoke-direct {v0, p0}, Lk0/i0$l;-><init>(Lk0/i0;)V

    iput-object v0, p0, Lk0/i0;->v:Ljava/lang/Runnable;

    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lk0/i0;->w:I

    .line 23
    new-instance v1, Lk0/i0$m;

    invoke-direct {v1, p0}, Lk0/i0$m;-><init>(Lk0/i0;)V

    iput-object v1, p0, Lk0/i0;->x:Ljava/lang/Runnable;

    .line 24
    new-instance v1, Lk0/i0$a;

    invoke-direct {v1, p0}, Lk0/i0$a;-><init>(Lk0/i0;)V

    iput-object v1, p0, Lk0/i0;->y:Ljava/lang/Runnable;

    .line 25
    new-instance v1, Lk0/i0$b;

    invoke-direct {v1, p0}, Lk0/i0$b;-><init>(Lk0/i0;)V

    iput-object v1, p0, Lk0/i0;->z:Ljava/lang/Runnable;

    .line 26
    new-instance v1, Lk0/i0$c;

    invoke-direct {v1, p0}, Lk0/i0$c;-><init>(Lk0/i0;)V

    iput-object v1, p0, Lk0/i0;->A:Ljava/lang/Runnable;

    .line 27
    new-instance v1, Lk0/i0$d;

    invoke-direct {v1, p0}, Lk0/i0$d;-><init>(Lk0/i0;)V

    iput-object v1, p0, Lk0/i0;->B:Ljava/lang/Runnable;

    .line 28
    iput v0, p0, Lk0/i0;->C:I

    .line 29
    iput-boolean v6, p0, Lk0/i0;->D:Z

    const-string v0, ""

    .line 30
    iput-object v0, p0, Lk0/i0;->E:Ljava/lang/String;

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
        -0x1
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x5
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x12
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x6
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

    :array_a
    .array-data 4
        0xb
        0xd
    .end array-data

    :array_b
    .array-data 4
        0xc
        -0x1
    .end array-data
.end method

.method public static synthetic d3(Lk0/i0;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/i0;->o:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic e3(Lk0/i0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/i0;->a3()V

    return-void
.end method

.method public static synthetic f3(Lk0/i0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/i0;->c3()V

    return-void
.end method

.method public static synthetic g3(Lk0/i0;BLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk0/i0;->p3(BLjava/lang/String;)V

    return-void
.end method

.method public static synthetic h3(Lk0/i0;II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk0/i0;->u3(II)V

    return-void
.end method

.method public static synthetic i3(Lk0/i0;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lk0/i0;->D:Z

    return p0
.end method

.method public static synthetic j3(Lk0/i0;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lk0/i0;->D:Z

    return p1
.end method

.method public static synthetic k3(Lk0/i0;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/i0;->C:I

    return p0
.end method

.method public static synthetic l3(Lk0/i0;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/i0;->C:I

    return p1
.end method

.method public static synthetic m3(Lk0/i0;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/i0;->E:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic n3(Lk0/i0;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/i0;->E:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic o3(Lk0/i0;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk0/i0;->r3(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public S2()V
    .locals 7

    .line 1
    iget-object v0, p0, Lk0/i0;->h:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 3
    iput v1, v0, Lk0/mt;->e:I

    .line 4
    iput v1, v0, Lk0/mt;->f:I

    .line 5
    iput v1, v0, Lk0/mt;->h:I

    .line 6
    iput v1, v0, Lk0/mt;->o:I

    .line 7
    sget-object v0, Ln0/j4;->c:Ljava/lang/String;

    const-string v2, "DCE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->j:I

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->j:I

    .line 10
    :goto_0
    iget-object v0, p0, Lk0/i0;->h:Lo1/g0;

    invoke-virtual {v0, v2, v1}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lk0/i0;->q3(I)V

    .line 11
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v3, p0, Lk0/i0;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 12
    sget-object v0, Lu0/c;->p:Lo1/y;

    iget-object v3, p0, Lk0/i0;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 13
    sget-object v0, Lu0/c;->q:Lo1/y;

    iget-object v3, p0, Lk0/i0;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 14
    sget-object v0, Lu0/c;->w:Lo1/y;

    iget-object v3, p0, Lk0/i0;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 15
    sget-object v0, Lu0/c;->c:Lo1/y;

    iget-object v3, p0, Lk0/i0;->v:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 16
    sget-object v3, Lh0/d;->c:Lo1/y;

    iget-object v4, p0, Lk0/i0;->B:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 17
    sget-object v3, Lh0/d;->a:Lo1/y;

    iget-object v4, p0, Lk0/i0;->B:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 18
    sget-object v4, Lh0/d;->d:Lo1/y;

    iget-object v5, p0, Lk0/i0;->x:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 19
    iget-object v4, p0, Lk0/i0;->A:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 20
    sget-object v3, Lu0/c;->u:Lo1/y;

    iget-object v4, p0, Lk0/i0;->A:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 21
    sget-object v3, Lu0/c;->v:Lo1/y;

    iget-object v4, p0, Lk0/i0;->A:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 22
    iget-object v3, p0, Lk0/i0;->A:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 23
    sget-object v3, Lu0/c;->a:Lo1/y;

    iget-object v4, p0, Lk0/i0;->A:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 24
    sget-object v4, Ly0/g;->d:Lo1/y;

    iget-object v5, p0, Lk0/i0;->A:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 25
    iget-object v5, p0, Lk0/i0;->A:Ljava/lang/Runnable;

    invoke-virtual {v3, v5, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 26
    sget v3, Lk0/nt;->c:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_1

    .line 27
    sget-object v3, Lu0/c;->i:Lo1/y;

    iget-object v6, p0, Lk0/i0;->y:Ljava/lang/Runnable;

    invoke-virtual {v3, v6, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 28
    iget-object v3, p0, Lk0/i0;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 29
    sget-object v0, Lu0/c;->l:Lo1/y;

    iget-object v3, p0, Lk0/i0;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 30
    :cond_1
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 31
    sget v0, Lk0/nt;->c:I

    if-ne v0, v5, :cond_2

    .line 32
    invoke-static {v1}, Lu0/d;->I0(I)V

    .line 33
    :cond_2
    iget-object v0, p0, Lk0/i0;->q:Ljava/lang/Runnable;

    invoke-virtual {v4, v0, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 34
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/i0;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    :cond_3
    return-void
.end method

.method public U2([BII)V
    .locals 11

    add-int/lit8 v0, p2, 0x1

    .line 1
    aget-byte v0, p1, v0

    const/16 v1, -0x7c

    const/4 v2, 0x6

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v1, :cond_17

    const/16 v1, -0x7b

    const/16 v6, 0xc

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x2

    if-eq v0, v1, :cond_12

    const/16 v1, -0x18

    const/4 v10, 0x4

    if-eq v0, v1, :cond_11

    const/16 v1, -0x10

    if-eq v0, v1, :cond_10

    const/16 p3, 0x11

    if-eq v0, p3, :cond_4

    const/16 p3, 0x1e

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_c

    :pswitch_0
    const/16 v0, 0x8a

    new-array v1, v5, [I

    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    aput v2, v1, v4

    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    move v0, v4

    :goto_0
    if-ge v0, p3, :cond_19

    add-int/lit8 v1, p2, 0x3

    add-int/2addr v1, v0

    .line 3
    aget-byte v1, p1, v1

    and-int/2addr v1, v3

    .line 4
    iget-object v2, p0, Lk0/i0;->f:[I

    aget v6, v2, v0

    if-eq v6, v1, :cond_0

    .line 5
    aput v1, v2, v0

    .line 6
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v6, 0x86

    new-array v10, v9, [I

    aput v0, v10, v4

    aput v1, v10, v5

    invoke-static {v2, v6, v10, v8, v8}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_1
    move v0, v4

    :goto_1
    if-ge v0, p3, :cond_19

    add-int/lit8 v1, p2, 0x3

    mul-int/lit8 v2, v0, 0x2

    add-int/2addr v1, v2

    .line 7
    aget-byte v1, p1, v1

    add-int/lit8 v3, p2, 0x2

    add-int/2addr v3, v2

    aget-byte v2, p1, v3

    invoke-static {v1, v2}, Lo1/p0;->c(BB)I

    move-result v1

    .line 8
    iget-object v2, p0, Lk0/i0;->d:[I

    aget v3, v2, v0

    if-eq v3, v1, :cond_1

    .line 9
    aput v1, v2, v0

    .line 10
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v3, 0x85

    new-array v6, v9, [I

    aput v0, v6, v4

    aput v1, v6, v5

    invoke-static {v2, v3, v6, v8, v8}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :pswitch_2
    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x2

    .line 11
    aget-byte v1, p1, v1

    and-int/2addr v1, v3

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    move p3, v4

    :goto_2
    if-ge p3, v6, :cond_19

    add-int/lit8 v0, p2, 0x3

    add-int/2addr v0, p3

    .line 12
    aget-byte v0, p1, v0

    and-int/2addr v0, v3

    .line 13
    iget-object v1, p0, Lk0/i0;->g:[I

    aget v2, v1, p3

    if-eq v2, v0, :cond_2

    .line 14
    aput v0, v1, p3

    .line 15
    sget-object v1, Lk0/nt;->f:[Lo1/x;

    const/16 v2, 0x84

    new-array v10, v9, [I

    aput p3, v10, v4

    aput v0, v10, v5

    invoke-static {v1, v2, v10, v8, v8}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :pswitch_3
    move v0, v4

    :goto_3
    if-ge v0, p3, :cond_19

    add-int/lit8 v1, p2, 0x3

    mul-int/lit8 v2, v0, 0x2

    add-int/2addr v1, v2

    .line 16
    aget-byte v1, p1, v1

    add-int/lit8 v3, p2, 0x2

    add-int/2addr v3, v2

    aget-byte v2, p1, v3

    invoke-static {v1, v2}, Lo1/p0;->c(BB)I

    move-result v1

    .line 17
    iget-object v2, p0, Lk0/i0;->e:[I

    aget v3, v2, v0

    if-eq v3, v1, :cond_3

    .line 18
    aput v1, v2, v0

    .line 19
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v3, 0x83

    new-array v6, v9, [I

    aput v0, v6, v4

    mul-int/lit8 v1, v1, 0xa

    aput v1, v6, v5

    invoke-static {v2, v3, v6, v8, v8}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    new-array p3, v5, [I

    add-int/lit8 v0, p2, 0x3

    .line 20
    aget-byte v0, p1, v0

    and-int/2addr v0, v3

    aput v0, p3, v4

    invoke-static {v4, p3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x4

    .line 21
    aget-byte v0, p1, p3

    if-ne v0, v6, :cond_6

    .line 22
    invoke-static {}, Lo1/u;->Y0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.syu.canbus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 23
    invoke-static {}, Lo1/u;->k()V

    goto :goto_4

    .line 24
    :cond_5
    invoke-static {}, Lo1/u;->v()I

    .line 25
    :cond_6
    :goto_4
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 26
    sget v0, Lk0/nt;->c:I

    if-ne v0, v9, :cond_8

    const/16 v0, 0x3fd

    new-array v1, v5, [I

    add-int/lit8 v6, p2, 0x2

    .line 27
    aget-byte v8, p1, v6

    shr-int/2addr v8, v9

    and-int/2addr v8, v5

    aput v8, v1, v4

    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    .line 28
    aget-byte v0, p1, v6

    shr-int/2addr v0, v9

    and-int/2addr v0, v5

    if-ne v0, v5, :cond_7

    .line 29
    invoke-static {v5}, Lu0/d;->W(I)V

    goto :goto_5

    .line 30
    :cond_7
    invoke-static {v4}, Lu0/d;->W(I)V

    .line 31
    :cond_8
    :goto_5
    aget-byte p3, p1, p3

    const/4 v0, 0x5

    add-int/2addr p2, v0

    .line 32
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 33
    iput p2, p0, Lk0/i0;->l:I

    move p2, v4

    .line 34
    :goto_6
    iget-object p3, p0, Lk0/i0;->m:[[I

    array-length v1, p3

    if-ge p2, v1, :cond_a

    .line 35
    iget v1, p0, Lk0/i0;->l:I

    aget-object v6, p3, p2

    aget v6, v6, v4

    if-ne v1, v6, :cond_9

    if-eqz v1, :cond_a

    .line 36
    iput p2, p0, Lk0/i0;->k:I

    goto :goto_7

    :cond_9
    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    :cond_a
    :goto_7
    and-int/2addr p1, v3

    if-eqz p1, :cond_e

    .line 37
    array-length v1, p3

    if-ge p2, v1, :cond_19

    .line 38
    iget v1, p0, Lk0/i0;->l:I

    if-eq v1, v2, :cond_b

    .line 39
    iget-byte p1, p0, Lk0/i0;->n:B

    if-nez p1, :cond_19

    add-int/2addr p1, v5

    int-to-byte p1, p1

    .line 40
    iput-byte p1, p0, Lk0/i0;->n:B

    .line 41
    aget-object p1, p3, p2

    aget p1, p1, v5

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    .line 42
    iget-object p1, p0, Lk0/i0;->o:Ljava/lang/Runnable;

    invoke-static {p1}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_c

    :cond_b
    if-ne p1, v5, :cond_d

    .line 43
    sget p1, Lh0/c;->E:I

    if-eq p1, v7, :cond_c

    if-eq p1, v10, :cond_c

    if-eq p1, v0, :cond_c

    .line 44
    invoke-static {v2, v4}, Ll0/b0;->l0(II)V

    .line 45
    invoke-static {v2, v5}, Ll0/b0;->l0(II)V

    goto :goto_8

    :cond_c
    const/16 p1, 0x1a

    .line 46
    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    .line 47
    invoke-static {p1, v5}, Ll0/b0;->l0(II)V

    .line 48
    :cond_d
    :goto_8
    iput v3, p0, Lk0/i0;->k:I

    goto/16 :goto_c

    .line 49
    :cond_e
    iget p1, p0, Lk0/i0;->k:I

    array-length p2, p3

    if-ge p1, p2, :cond_f

    if-eq p1, v3, :cond_f

    .line 50
    aget-object p1, p3, p1

    aget p1, p1, v5

    invoke-static {p1, v5}, Ll0/b0;->l0(II)V

    .line 51
    iget-object p1, p0, Lk0/i0;->o:Ljava/lang/Runnable;

    invoke-static {p1}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 52
    iput-byte v4, p0, Lk0/i0;->n:B

    .line 53
    :cond_f
    iput v3, p0, Lk0/i0;->k:I

    goto/16 :goto_c

    .line 54
    :cond_10
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v9

    sub-int/2addr p3, v9

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_11
    new-array p3, v5, [I

    add-int/lit8 v0, p2, 0x2

    .line 55
    aget-byte v0, p1, v0

    and-int/2addr v0, v3

    sub-int/2addr v0, v5

    aput v0, p3, v4

    invoke-static {v5, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    add-int/lit8 v0, p2, 0x3

    .line 56
    aget-byte v1, p1, v0

    and-int/2addr v1, v3

    sub-int/2addr v1, v5

    aput v1, p3, v4

    invoke-static {v10, p3}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x3f5

    new-array v1, v5, [I

    .line 57
    aget-byte v0, p1, v0

    and-int/2addr v0, v3

    sub-int/2addr v0, v5

    aput v0, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    add-int/2addr p2, v10

    .line 58
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    aput p1, p3, v4

    invoke-static {v9, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :cond_12
    add-int/lit8 p3, p2, 0x2

    .line 59
    aget-byte p3, p1, p3

    if-eq p3, v5, :cond_15

    if-eq p3, v9, :cond_13

    goto/16 :goto_c

    :cond_13
    move p3, v4

    :goto_9
    if-ge p3, v6, :cond_19

    add-int/lit8 v0, p2, 0x4

    mul-int/lit8 v1, p3, 0x2

    add-int/2addr v0, v1

    .line 60
    aget-byte v0, p1, v0

    add-int/lit8 v2, p2, 0x3

    add-int/2addr v2, v1

    aget-byte v1, p1, v2

    invoke-static {v0, v1}, Lo1/p0;->c(BB)I

    move-result v0

    .line 61
    iget-object v1, p0, Lk0/i0;->c:[I

    aget v2, v1, p3

    if-eq v2, v0, :cond_14

    .line 62
    aput v0, v1, p3

    .line 63
    sget-object v1, Lk0/nt;->f:[Lo1/x;

    const/16 v2, 0x82

    new-array v3, v9, [I

    aput p3, v3, v4

    mul-int/lit8 v0, v0, 0xa

    aput v0, v3, v5

    invoke-static {v1, v2, v3, v8, v8}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    :cond_14
    add-int/lit8 p3, p3, 0x1

    goto :goto_9

    :cond_15
    move p3, v4

    :goto_a
    if-ge p3, v2, :cond_19

    add-int/lit8 v0, p2, 0x4

    mul-int/lit8 v1, p3, 0x2

    add-int/2addr v0, v1

    .line 64
    aget-byte v0, p1, v0

    add-int/lit8 v3, p2, 0x3

    add-int/2addr v3, v1

    aget-byte v1, p1, v3

    invoke-static {v0, v1}, Lo1/p0;->c(BB)I

    move-result v0

    .line 65
    iget-object v1, p0, Lk0/i0;->b:[I

    aget v3, v1, p3

    if-eq v3, v0, :cond_16

    .line 66
    aput v0, v1, p3

    .line 67
    sget-object v1, Lk0/nt;->f:[Lo1/x;

    const/16 v3, 0x81

    new-array v6, v9, [I

    aput p3, v6, v4

    aput v0, v6, v5

    invoke-static {v1, v3, v6, v8, v8}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    :cond_16
    add-int/lit8 p3, p3, 0x1

    goto :goto_a

    :cond_17
    add-int/lit8 p3, p2, 0x2

    .line 68
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    add-int/lit8 v0, p2, 0x3

    .line 69
    aget-byte v0, p1, v0

    and-int/2addr v0, v3

    add-int/lit8 v1, p2, 0x4

    aget-byte v1, p1, v1

    and-int/2addr v1, v3

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    if-nez p3, :cond_18

    const/16 v1, 0xa

    goto :goto_b

    :cond_18
    move v1, v5

    :goto_b
    mul-int/2addr v0, v1

    const/16 v1, 0x80

    new-array v6, v5, [I

    aput p3, v6, v4

    .line 70
    invoke-static {v1, v6}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x87

    new-array v1, v5, [I

    aput v0, v1, v4

    .line 71
    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x8c

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x5

    .line 72
    aget-byte v1, p1, v1

    and-int/2addr v1, v3

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x89

    new-array v0, v5, [I

    add-int/2addr p2, v2

    .line 73
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    aput p1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    :cond_19
    :goto_c
    return-void

    :pswitch_data_0
    .packed-switch -0x79
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk0/i0;->h:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v1, p0, Lk0/i0;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lu0/c;->p:Lo1/y;

    iget-object v1, p0, Lk0/i0;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lu0/c;->q:Lo1/y;

    iget-object v1, p0, Lk0/i0;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lu0/c;->w:Lo1/y;

    iget-object v1, p0, Lk0/i0;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lu0/c;->c:Lo1/y;

    iget-object v1, p0, Lk0/i0;->v:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v1, Lh0/d;->c:Lo1/y;

    iget-object v2, p0, Lk0/i0;->B:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v1, Lh0/d;->a:Lo1/y;

    iget-object v2, p0, Lk0/i0;->B:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    sget-object v2, Lh0/d;->d:Lo1/y;

    iget-object v3, p0, Lk0/i0;->x:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 10
    iget-object v2, p0, Lk0/i0;->A:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 11
    sget-object v1, Lu0/c;->u:Lo1/y;

    iget-object v2, p0, Lk0/i0;->A:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 12
    sget-object v1, Lu0/c;->v:Lo1/y;

    iget-object v2, p0, Lk0/i0;->A:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 13
    iget-object v1, p0, Lk0/i0;->A:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 14
    sget-object v1, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lk0/i0;->A:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 15
    sget-object v2, Ly0/g;->d:Lo1/y;

    iget-object v3, p0, Lk0/i0;->A:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 16
    iget-object v3, p0, Lk0/i0;->A:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 17
    sget-object v1, Lu0/c;->i:Lo1/y;

    iget-object v3, p0, Lk0/i0;->y:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 18
    iget-object v1, p0, Lk0/i0;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 19
    sget-object v0, Lu0/c;->l:Lo1/y;

    iget-object v1, p0, Lk0/i0;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    .line 20
    invoke-static {v0}, Lu0/d;->I0(I)V

    .line 21
    iget-object v0, p0, Lk0/i0;->p:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 22
    iget-object v0, p0, Lk0/i0;->q:Ljava/lang/Runnable;

    invoke-virtual {v2, v0}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 23
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/i0;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 7

    if-ltz p2, :cond_0

    const/16 p3, 0x8d

    if-ge p2, p3, :cond_0

    const/16 p3, 0x1e

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    new-array p3, v2, [I

    .line 1
    sget-object v0, Lk0/nt;->g:[I

    aget v0, v0, p2

    aput v0, p3, v3

    invoke-static {p1, p2, p3}, Lo1/x;->v(Ly/b;I[I)V

    goto :goto_4

    :pswitch_1
    move v4, v3

    :goto_0
    if-ge v4, p3, :cond_0

    new-array v5, v0, [I

    aput v4, v5, v3

    .line 2
    iget-object v6, p0, Lk0/i0;->d:[I

    aget v6, v6, v4

    aput v6, v5, v2

    invoke-static {p1, p2, v5, v1, v1}, Lo1/x;->w(Ly/b;I[I[F[Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :pswitch_2
    move v4, v3

    :goto_1
    if-ge v4, p3, :cond_0

    new-array v5, v0, [I

    aput v4, v5, v3

    .line 3
    iget-object v6, p0, Lk0/i0;->e:[I

    aget v6, v6, v4

    aput v6, v5, v2

    invoke-static {p1, p2, v5, v1, v1}, Lo1/x;->w(Ly/b;I[I[F[Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :pswitch_3
    move p3, v3

    :goto_2
    const/16 v4, 0xc

    if-ge p3, v4, :cond_0

    new-array v4, v0, [I

    aput p3, v4, v3

    .line 4
    iget-object v5, p0, Lk0/i0;->c:[I

    aget v5, v5, p3

    aput v5, v4, v2

    invoke-static {p1, p2, v4, v1, v1}, Lo1/x;->w(Ly/b;I[I[F[Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :pswitch_4
    move p3, v3

    :goto_3
    const/4 v4, 0x6

    if-ge p3, v4, :cond_0

    new-array v4, v0, [I

    aput p3, v4, v3

    .line 5
    iget-object v5, p0, Lk0/i0;->b:[I

    aget v5, v5, p3

    aput v5, v4, v2

    invoke-static {p1, p2, v4, v1, v1}, Lo1/x;->w(Ly/b;I[I[F[Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    :cond_0
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 2

    const/16 p3, 0x3ed

    const/4 p4, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, p3, :cond_4

    const/4 p3, 0x4

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    const/16 p1, 0x8

    .line 1
    aget p2, p2, v1

    int-to-byte p2, p2

    invoke-virtual {p0, p1, p2}, Lk0/i0;->t3(II)V

    goto/16 :goto_3

    :pswitch_1
    const/4 p1, 0x7

    .line 2
    aget p2, p2, v1

    int-to-byte p2, p2

    invoke-virtual {p0, p1, p2}, Lk0/i0;->t3(II)V

    goto/16 :goto_3

    :pswitch_2
    const/4 p1, 0x5

    .line 3
    aget p2, p2, v1

    int-to-byte p2, p2

    invoke-virtual {p0, p1, p2}, Lk0/i0;->t3(II)V

    goto/16 :goto_3

    .line 4
    :pswitch_3
    aget p1, p2, v1

    int-to-byte p1, p1

    invoke-virtual {p0, p3, p1}, Lk0/i0;->t3(II)V

    goto/16 :goto_3

    :pswitch_4
    const/4 p1, 0x2

    .line 5
    aget p2, p2, v1

    int-to-byte p2, p2

    invoke-virtual {p0, p1, p2}, Lk0/i0;->t3(II)V

    goto :goto_3

    .line 6
    :pswitch_5
    aget p1, p2, v1

    invoke-virtual {p0, v0, p1}, Lk0/i0;->t3(II)V

    goto :goto_3

    :pswitch_6
    if-eqz p2, :cond_7

    .line 7
    array-length p1, p2

    if-lez p1, :cond_7

    .line 8
    aget p1, p2, v1

    if-ge p1, v0, :cond_0

    .line 9
    aput v0, p2, v1

    goto :goto_0

    .line 10
    :cond_0
    aget p1, p2, v1

    if-le p1, p3, :cond_1

    .line 11
    aput p3, p2, v1

    .line 12
    :cond_1
    :goto_0
    aget p1, p2, v1

    invoke-virtual {p0, p1}, Lk0/i0;->q3(I)V

    goto :goto_3

    :pswitch_7
    if-eqz p2, :cond_7

    .line 13
    array-length p1, p2

    if-lez p1, :cond_7

    .line 14
    aget p1, p2, v1

    add-int/2addr p1, v0

    aput p1, p2, v1

    .line 15
    aget p1, p2, v1

    if-ge p1, v0, :cond_2

    .line 16
    aput v0, p2, v1

    goto :goto_1

    .line 17
    :cond_2
    aget p1, p2, v1

    if-le p1, p4, :cond_3

    .line 18
    aput p4, p2, v1

    .line 19
    :cond_3
    :goto_1
    aget p1, p2, v1

    int-to-byte p1, p1

    invoke-virtual {p0, p3, p1}, Lk0/i0;->s3(II)V

    new-array p1, v0, [I

    .line 20
    aget p2, p2, v1

    sub-int/2addr p2, v0

    aput p2, p1, v1

    invoke-static {v1, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_4
    :pswitch_8
    if-eqz p2, :cond_7

    .line 21
    array-length p1, p2

    if-lez p1, :cond_7

    .line 22
    aget p1, p2, v1

    add-int/2addr p1, v0

    aput p1, p2, v1

    .line 23
    aget p1, p2, v1

    if-ge p1, v0, :cond_5

    .line 24
    aput v0, p2, v1

    goto :goto_2

    .line 25
    :cond_5
    aget p1, p2, v1

    if-le p1, p4, :cond_6

    .line 26
    aput p4, p2, v1

    .line 27
    :cond_6
    :goto_2
    aget p1, p2, v1

    int-to-byte p1, p1

    const/4 p2, -0x1

    invoke-virtual {p0, p1, p2}, Lk0/i0;->s3(II)V

    :cond_7
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a3()V
    .locals 12

    const/16 v0, 0xf

    new-array v1, v0, [I

    const/16 v2, 0xd

    const/4 v3, 0x0

    aput v2, v1, v3

    const/16 v2, 0xe1

    const/4 v4, 0x1

    aput v2, v1, v4

    .line 1
    invoke-virtual {p0}, Lk0/i0;->b3()I

    move-result v2

    const/4 v4, 0x2

    aput v2, v1, v4

    const/4 v2, 0x3

    move v4, v2

    :goto_0
    if-ge v4, v0, :cond_0

    const/16 v5, 0x20

    .line 2
    aput v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3
    :cond_0
    sget v4, Lu0/b;->D:I

    const/16 v5, 0x9

    const/4 v6, 0x7

    const/4 v7, 0x5

    const/16 v8, 0x8

    const/4 v9, 0x4

    const/16 v10, 0xa

    if-eq v4, v9, :cond_2

    if-eq v4, v8, :cond_1

    if-eq v4, v10, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    sget v4, Lu0/b;->r3:I

    div-int/lit8 v11, v4, 0x64

    rem-int/2addr v11, v10

    add-int/lit8 v11, v11, 0x30

    aput v11, v1, v2

    .line 5
    rem-int/lit8 v2, v4, 0x64

    div-int/2addr v2, v10

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v9

    .line 6
    rem-int/2addr v4, v10

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v7

    .line 7
    sget v2, Lu0/b;->t3:I

    rem-int/lit16 v4, v2, 0xe10

    div-int/lit8 v4, v4, 0x3c

    div-int/2addr v4, v10

    rem-int/2addr v4, v10

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v6

    .line 8
    rem-int/lit16 v4, v2, 0xe10

    div-int/lit8 v4, v4, 0x3c

    rem-int/2addr v4, v10

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v8

    .line 9
    rem-int/lit8 v4, v2, 0x3c

    div-int/2addr v4, v10

    rem-int/2addr v4, v10

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v5

    .line 10
    rem-int/2addr v2, v10

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v10

    goto :goto_1

    .line 11
    :cond_2
    sget v4, Lo0/e;->B:I

    div-int/lit8 v11, v4, 0x64

    rem-int/2addr v11, v10

    add-int/lit8 v11, v11, 0x30

    aput v11, v1, v2

    .line 12
    rem-int/lit8 v2, v4, 0x64

    div-int/2addr v2, v10

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v9

    .line 13
    rem-int/2addr v4, v10

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v7

    .line 14
    sget v2, Lo0/e;->r:I

    rem-int/lit16 v4, v2, 0xe10

    div-int/lit8 v4, v4, 0x3c

    div-int/2addr v4, v10

    rem-int/2addr v4, v10

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v6

    .line 15
    rem-int/lit16 v4, v2, 0xe10

    div-int/lit8 v4, v4, 0x3c

    rem-int/2addr v4, v10

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v8

    .line 16
    rem-int/lit8 v4, v2, 0x3c

    div-int/2addr v4, v10

    rem-int/2addr v4, v10

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v5

    .line 17
    rem-int/2addr v2, v10

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v10

    :goto_1
    const/16 v2, 0x10

    new-array v2, v2, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_2
    if-ge v3, v0, :cond_3

    add-int/lit8 v4, v3, 0x1

    .line 18
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_2

    .line 19
    :cond_3
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method

.method public final b3()I
    .locals 6

    .line 1
    sget v0, Lu0/b;->D:I

    const/16 v1, 0xd

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/16 v4, 0x85

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    :pswitch_1
    const/16 v1, 0x15

    goto :goto_3

    .line 2
    :pswitch_2
    sget v0, Lw0/d;->h:I

    if-ne v0, v5, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move v1, v3

    goto :goto_3

    :pswitch_3
    const/16 v1, 0xb

    goto :goto_3

    :pswitch_4
    const/16 v1, 0x8

    goto :goto_3

    :pswitch_5
    const/16 v1, 0xc

    goto :goto_3

    .line 3
    :pswitch_6
    sget v0, Lo0/e;->H:I

    if-ne v0, v5, :cond_6

    const/4 v1, 0x6

    goto :goto_3

    :pswitch_7
    move v1, v4

    goto :goto_3

    .line 4
    :pswitch_8
    sget v0, Lw0/d;->h:I

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_1

    :goto_1
    move v1, v5

    goto :goto_3

    :cond_1
    const v1, 0x10001

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    const v1, 0x10002

    if-ne v0, v1, :cond_3

    goto :goto_1

    :cond_3
    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    if-ne v0, v5, :cond_5

    goto :goto_0

    :cond_5
    :goto_2
    :pswitch_9
    move v1, v2

    .line 5
    :cond_6
    :goto_3
    :pswitch_a
    sget v0, Lu0/b;->o:I

    if-ne v0, v5, :cond_7

    const/16 v1, 0x10

    :cond_7
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_a
        :pswitch_0
        :pswitch_a
        :pswitch_2
        :pswitch_7
        :pswitch_1
    .end packed-switch
.end method

.method public final c3()V
    .locals 7

    const/16 v0, 0xc

    new-array v1, v0, [I

    const/16 v2, 0xa

    const/4 v3, 0x0

    aput v2, v1, v3

    const/16 v2, 0xe6

    const/4 v4, 0x1

    aput v2, v1, v4

    .line 1
    sget v2, Ly0/f;->C0:I

    const/4 v5, 0x2

    aput v2, v1, v5

    .line 2
    sget v2, Ly0/f;->i:I

    const/4 v6, 0x6

    if-eq v2, v4, :cond_1

    sget v2, Ly0/f;->C0:I

    if-nez v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    aget v4, v1, v5

    and-int/2addr v4, v3

    aput v4, v1, v5

    aput v2, v1, v6

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    aget v2, v1, v5

    or-int/lit8 v2, v2, 0x20

    aput v2, v1, v5

    aput v3, v1, v6

    :goto_1
    const/16 v2, 0xd

    new-array v2, v2, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_2
    if-ge v3, v0, :cond_2

    add-int/lit8 v4, v3, 0x1

    .line 5
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_2

    .line 6
    :cond_2
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method

.method public final p3(BLjava/lang/String;)V
    .locals 6

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    const/16 v0, 0x23

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x20

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v1, 0xf

    if-le p1, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    if-ge v2, v1, :cond_2

    .line 2
    invoke-virtual {p2, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result p1

    shl-int/lit8 v3, v2, 0x1

    add-int/lit8 v4, v3, 0x3

    shr-int/lit8 v5, p1, 0x8

    and-int/lit16 v5, v5, 0xff

    .line 3
    aput v5, v0, v4

    add-int/lit8 v3, v3, 0x4

    and-int/lit16 p1, p1, 0xff

    .line 4
    aput p1, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_2
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final q3(I)V
    .locals 6

    .line 1
    sput p1, Lk0/i0;->F:I

    const/4 v0, 0x5

    new-array v1, v0, [I

    const/16 v2, 0xe3

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/4 v4, 0x2

    aput v4, v1, v2

    const/16 v5, -0xe

    aput v5, v1, v4

    const/4 v4, 0x3

    aput v0, v1, v4

    int-to-byte p1, p1

    const/4 v0, 0x4

    aput p1, v1, v0

    .line 2
    invoke-static {v1}, Lz/k;->s([I)V

    new-array p1, v2, [I

    .line 3
    sget v0, Lk0/i0;->F:I

    aput v0, p1, v3

    invoke-static {v4, p1}, Lk0/qt;->y0(I[I)V

    .line 4
    iget-object p1, p0, Lk0/i0;->h:Lo1/g0;

    invoke-virtual {p1, v2, v3}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/i0;->F:I

    if-eq p1, v0, :cond_0

    .line 5
    iget-object p1, p0, Lk0/i0;->h:Lo1/g0;

    invoke-virtual {p1, v2, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final r3(ILjava/lang/String;)V
    .locals 7

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1f

    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    const/16 v0, 0x20

    new-array v2, v0, [B

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v1, :cond_2

    .line 3
    aget-char v5, p2, v4

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    move p2, v1

    :goto_2
    if-ge p2, v0, :cond_3

    .line 4
    aput-byte v0, v2, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_3
    const/16 p2, 0x24

    new-array v4, p2, [I

    const/16 v5, -0x1d

    aput v5, v4, v3

    const/4 v5, 0x1

    aput v0, v4, v5

    const/4 v0, 0x2

    const/16 v5, -0x19

    aput v5, v4, v0

    const/4 v0, 0x3

    int-to-byte p1, p1

    aput p1, v4, v0

    const/4 p1, 0x4

    move v0, v3

    :goto_3
    if-ge v0, v1, :cond_4

    add-int v5, p1, v0

    .line 5
    aget-byte v6, v2, v0

    aput v6, v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    add-int/2addr p1, v1

    :goto_4
    if-ge p1, p2, :cond_5

    .line 6
    aput v3, v4, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 7
    :cond_5
    invoke-static {v4}, Lz/k;->s([I)V

    return-void
.end method

.method public final s3(II)V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x2

    aput v2, v0, v1

    const/16 v1, -0xe

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

.method public final t3(II)V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, -0x1d

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x2

    aput v2, v0, v1

    const/16 v1, -0xf

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

.method public final u3(II)V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2
    div-int/lit8 v1, p2, 0x3c

    .line 3
    rem-int/lit8 p2, p2, 0x3c

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    if-gez v1, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    div-int/lit8 v5, v1, 0xa

    :goto_0
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-gez v1, :cond_1

    move v1, v4

    goto :goto_1

    :cond_1
    rem-int/lit8 v1, v1, 0xa

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-gez p2, :cond_2

    move v2, v4

    goto :goto_2

    :cond_2
    div-int/lit8 v2, p2, 0xa

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-gez p2, :cond_3

    move p2, v4

    goto :goto_3

    :cond_3
    rem-int/lit8 p2, p2, 0xa

    :goto_3
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    const/16 v0, 0x11

    new-array v1, v0, [I

    const/16 v2, -0x1d

    aput v2, v1, v4

    const/16 v2, 0xd

    const/4 v3, 0x1

    aput v2, v1, v3

    const/4 v2, 0x2

    const/16 v3, -0x1f

    aput v3, v1, v2

    const/4 v2, 0x3

    int-to-byte p1, p1

    aput p1, v1, v2

    const/4 p1, 0x4

    const/16 v2, 0x20

    aput v2, v1, p1

    const/4 p1, 0x5

    aput v2, v1, p1

    const/4 p1, 0x6

    aput v2, v1, p1

    const/4 p1, 0x7

    aput v2, v1, p1

    const/16 p1, 0x8

    .line 9
    array-length v3, p2

    :goto_4
    if-ge v4, v3, :cond_4

    add-int v5, p1, v4

    .line 10
    aget-char v6, p2, v4

    int-to-byte v6, v6

    aput v6, v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    add-int/lit8 p1, v3, 0x8

    if-ge p1, v0, :cond_5

    .line 11
    aput v2, v1, p1

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 12
    :cond_5
    invoke-static {v1}, Lz/k;->s([I)V

    return-void
.end method
