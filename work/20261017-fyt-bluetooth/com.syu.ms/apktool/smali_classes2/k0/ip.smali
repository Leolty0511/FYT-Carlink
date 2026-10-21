.class public Lk0/ip;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static q:I = 0x1

.field public static r:I = 0x1

.field public static s:I = 0x1

.field public static t:I = 0x1

.field public static u:I = 0x1


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:Ljava/lang/Runnable;

.field public g:Ljava/lang/Runnable;

.field public h:I

.field public i:Ljava/lang/Runnable;

.field public j:Ljava/lang/Runnable;

.field public k:Lo1/g0;

.field public final l:I

.field public final m:I

.field public final n:I

.field public final o:I

.field public final p:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/ip;->c:I

    const/4 v1, 0x7

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

    const/4 v5, 0x3

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_4

    const/4 v6, 0x4

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_5

    const/4 v7, 0x5

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_6

    const/4 v8, 0x6

    aput-object v3, v1, v8

    iput-object v1, p0, Lk0/ip;->d:[[I

    const/4 v1, -0x1

    .line 4
    iput v1, p0, Lk0/ip;->e:I

    .line 5
    new-instance v1, Lk0/ip$a;

    invoke-direct {v1, p0}, Lk0/ip$a;-><init>(Lk0/ip;)V

    iput-object v1, p0, Lk0/ip;->f:Ljava/lang/Runnable;

    .line 6
    new-instance v1, Lk0/ip$b;

    invoke-direct {v1, p0}, Lk0/ip$b;-><init>(Lk0/ip;)V

    iput-object v1, p0, Lk0/ip;->g:Ljava/lang/Runnable;

    .line 7
    iput v0, p0, Lk0/ip;->h:I

    .line 8
    new-instance v0, Lk0/ip$c;

    invoke-direct {v0, p0}, Lk0/ip$c;-><init>(Lk0/ip;)V

    iput-object v0, p0, Lk0/ip;->i:Ljava/lang/Runnable;

    .line 9
    new-instance v0, Lk0/ip$d;

    invoke-direct {v0, p0}, Lk0/ip$d;-><init>(Lk0/ip;)V

    iput-object v0, p0, Lk0/ip;->j:Ljava/lang/Runnable;

    .line 10
    new-instance v0, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x20

    invoke-direct {v0, v1, v3}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lk0/ip;->k:Lo1/g0;

    .line 11
    iput v4, p0, Lk0/ip;->l:I

    .line 12
    iput v2, p0, Lk0/ip;->m:I

    .line 13
    iput v5, p0, Lk0/ip;->n:I

    .line 14
    iput v6, p0, Lk0/ip;->o:I

    .line 15
    iput v7, p0, Lk0/ip;->p:I

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
        0xc
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x2
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x12
    .end array-data
.end method

.method public static a3()V
    .locals 9

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    new-array v0, v2, [I

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_2

    :pswitch_0
    new-array v0, v2, [I

    .line 3
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_2

    :cond_0
    new-array v0, v2, [I

    .line 4
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_2

    :cond_1
    const/4 v0, 0x5

    new-array v4, v0, [I

    const/16 v5, 0xa2

    const/4 v6, 0x0

    aput v5, v4, v6

    aput v1, v4, v3

    .line 5
    sget v5, Lw0/d;->h:I

    const/high16 v7, 0x10000

    const/4 v8, 0x2

    if-ne v5, v7, :cond_2

    aput v3, v4, v8

    goto :goto_0

    :cond_2
    const v7, 0x10001

    if-ne v5, v7, :cond_3

    aput v3, v4, v8

    goto :goto_0

    :cond_3
    const v7, 0x10002

    if-ne v5, v7, :cond_4

    aput v3, v4, v8

    goto :goto_0

    :cond_4
    if-nez v5, :cond_5

    aput v8, v4, v8

    goto :goto_0

    :cond_5
    if-ne v5, v3, :cond_6

    aput v8, v4, v8

    .line 6
    :cond_6
    :goto_0
    sget v3, Lw0/d;->i:I

    and-int/lit16 v5, v3, 0xff

    aput v5, v4, v2

    shr-int/lit8 v2, v3, 0x8

    and-int/lit16 v2, v2, 0xff

    aput v2, v4, v1

    const/4 v1, 0x6

    new-array v1, v1, [I

    const/16 v2, 0xe3

    aput v2, v1, v6

    :goto_1
    if-ge v6, v0, :cond_7

    add-int/lit8 v2, v6, 0x1

    .line 7
    aget v3, v4, v6

    aput v3, v1, v2

    move v6, v2

    goto :goto_1

    .line 8
    :cond_7
    invoke-static {v1}, Lz/k;->s([I)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0xa2
        0x1
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xa2
        0x1
        0x3
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0xa2
        0x1
        0x4
    .end array-data
.end method

.method public static synthetic b3(Lk0/ip;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/ip;->e:I

    return p0
.end method

.method public static synthetic c3(Lk0/ip;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/ip;->e:I

    return p1
.end method

.method public static synthetic d3(Lk0/ip;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/ip;->k:Lo1/g0;

    return-object p0
.end method

.method public static synthetic e3(Lk0/ip;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/ip;->j3(I)V

    return-void
.end method

.method public static synthetic f3(Lk0/ip;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/ip;->k3(I)V

    return-void
.end method

.method public static synthetic g3(Lk0/ip;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/ip;->l3(I)V

    return-void
.end method

.method public static synthetic h3(Lk0/ip;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/ip;->m3(I)V

    return-void
.end method

.method public static synthetic i3(Lk0/ip;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/ip;->n3(I)V

    return-void
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public S2()V
    .locals 5

    .line 1
    iget-object v0, p0, Lk0/ip;->k:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    .line 3
    iput v1, v0, Lk0/mt;->e:I

    .line 4
    iput v1, v0, Lk0/mt;->f:I

    .line 5
    iput v1, v0, Lk0/mt;->i:I

    const/4 v2, 0x0

    .line 6
    iput v2, v0, Lk0/mt;->g:I

    .line 7
    iput v2, v0, Lk0/mt;->j:I

    .line 8
    iput v2, v0, Lk0/mt;->n:I

    .line 9
    iput v2, v0, Lk0/mt;->o:I

    .line 10
    iput v2, v0, Lk0/mt;->l:I

    .line 11
    sget v3, Lk0/nt;->c:I

    const/16 v4, 0x87

    if-ne v3, v4, :cond_0

    const/4 v2, 0x2

    .line 12
    iput v2, v0, Lk0/mt;->h:I

    goto :goto_0

    .line 13
    :cond_0
    iput v2, v0, Lk0/mt;->h:I

    .line 14
    :goto_0
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/ip;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 15
    iget-object v0, p0, Lk0/ip;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 16
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v2, p0, Lk0/ip;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 11

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, 0x7f

    const/4 v2, 0x2

    if-eq v0, v1, :cond_13

    const/4 p3, 0x5

    const/4 v1, 0x4

    const/4 v3, 0x3

    const/16 v4, 0xff

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_8

    :pswitch_0
    const/16 v0, 0x62

    new-array v3, v6, [I

    add-int/2addr p2, v2

    .line 2
    aget-byte v2, p1, p2

    shr-int/lit8 v2, v2, 0x7

    and-int/2addr v2, v6

    aput v2, v3, v5

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x63

    new-array v2, v6, [I

    .line 3
    aget-byte v3, p1, p2

    shr-int/lit8 v3, v3, 0x6

    and-int/2addr v3, v6

    aput v3, v2, v5

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x64

    new-array v2, v6, [I

    .line 4
    aget-byte v3, p1, p2

    shr-int/lit8 p3, v3, 0x5

    and-int/2addr p3, v6

    aput p3, v2, v5

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x65

    new-array v0, v6, [I

    .line 5
    aget-byte p1, p1, p2

    shr-int/2addr p1, v1

    and-int/2addr p1, v6

    aput p1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :pswitch_1
    add-int/2addr p2, v2

    .line 6
    aget-byte p1, p1, p2

    and-int/2addr p1, v4

    if-eqz p1, :cond_0

    .line 7
    invoke-static {v6}, Lk0/qt;->a(I)V

    goto/16 :goto_8

    .line 8
    :cond_0
    invoke-static {v5}, Lk0/qt;->a(I)V

    goto/16 :goto_8

    :pswitch_2
    add-int/lit8 p3, p2, 0x2

    .line 9
    aget-byte p3, p1, p3

    add-int/2addr p2, v3

    .line 10
    aget-byte p1, p1, p2

    const/16 p2, 0x1545

    .line 11
    invoke-static {p1, p3, v5, p2}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_8

    :pswitch_3
    add-int/lit8 v0, p2, 0x2

    .line 12
    aget-byte v2, p1, v0

    and-int/2addr v2, v4

    add-int/lit8 v3, p2, 0x3

    .line 13
    aget-byte v7, p1, v3

    and-int/2addr v7, v4

    add-int/lit8 v8, p2, 0x4

    .line 14
    aget-byte v9, p1, v8

    and-int/2addr v9, v4

    add-int/2addr p2, p3

    .line 15
    aget-byte p3, p1, p2

    and-int/2addr p3, v4

    if-nez v2, :cond_1

    if-nez v7, :cond_1

    if-nez v9, :cond_1

    if-nez p3, :cond_1

    .line 16
    invoke-static {v5}, Lu0/d;->C2(I)V

    goto :goto_0

    .line 17
    :cond_1
    sget v5, Ll0/c0;->g:I

    if-ne v5, v2, :cond_2

    sget v5, Ll0/c0;->h:I

    if-ne v5, v7, :cond_2

    sget v5, Ll0/c0;->i:I

    if-ne v5, v9, :cond_2

    sget v5, Ll0/c0;->j:I

    if-eq v5, p3, :cond_3

    .line 18
    :cond_2
    sget v5, Lu0/b;->o:I

    if-nez v5, :cond_3

    .line 19
    invoke-static {v6}, Lu0/d;->C2(I)V

    .line 20
    sput v1, Ll0/c0;->k:I

    .line 21
    sget-object v1, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 22
    :cond_3
    :goto_0
    sput v2, Ll0/c0;->g:I

    .line 23
    sput v7, Ll0/c0;->h:I

    .line 24
    sput v9, Ll0/c0;->i:I

    .line 25
    sput p3, Ll0/c0;->j:I

    .line 26
    aget-byte p3, p1, v0

    and-int/2addr p3, v4

    invoke-static {p3}, Ll0/c0;->L0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->D2(I)V

    .line 27
    aget-byte p3, p1, v3

    and-int/2addr p3, v4

    invoke-static {p3}, Ll0/c0;->L0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->E2(I)V

    .line 28
    aget-byte p3, p1, v8

    and-int/2addr p3, v4

    invoke-static {p3}, Ll0/c0;->L0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->F2(I)V

    .line 29
    aget-byte p1, p1, p2

    and-int/2addr p1, v4

    invoke-static {p1}, Ll0/c0;->L0(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->G2(I)V

    goto/16 :goto_8

    :pswitch_4
    add-int/lit8 v0, p2, 0x2

    .line 30
    aget-byte v0, p1, v0

    and-int/2addr v0, v4

    invoke-static {v0}, Ll0/c0;->L0(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->R2(I)V

    add-int/lit8 v0, p2, 0x3

    .line 31
    aget-byte v0, p1, v0

    and-int/2addr v0, v4

    invoke-static {v0}, Ll0/c0;->L0(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->S2(I)V

    add-int/lit8 v0, p2, 0x4

    .line 32
    aget-byte v0, p1, v0

    and-int/2addr v0, v4

    invoke-static {v0}, Ll0/c0;->L0(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->T2(I)V

    add-int/2addr p2, p3

    .line 33
    aget-byte p1, p1, p2

    and-int/2addr p1, v4

    invoke-static {p1}, Ll0/c0;->L0(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->U2(I)V

    goto/16 :goto_8

    :pswitch_5
    add-int/2addr p2, v2

    .line 34
    aget-byte p1, p1, p2

    and-int/2addr p1, v4

    const-string p2, "persist.syu.reversefrontdoor"

    .line 35
    invoke-static {p2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_4

    new-array p2, v6, [I

    shr-int/lit8 v0, p1, 0x6

    and-int/2addr v0, v6

    aput v0, p2, v5

    .line 36
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/lit8 v0, p1, 0x7

    and-int/2addr v0, v6

    aput v0, p2, v5

    .line 37
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_4
    new-array p2, v6, [I

    shr-int/lit8 v0, p1, 0x7

    and-int/2addr v0, v6

    aput v0, p2, v5

    .line 38
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/lit8 v0, p1, 0x6

    and-int/2addr v0, v6

    aput v0, p2, v5

    .line 39
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    :goto_1
    new-array p2, v6, [I

    shr-int/lit8 v0, p1, 0x4

    and-int/2addr v0, v6

    aput v0, p2, v5

    .line 40
    invoke-static {v1, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/lit8 v0, p1, 0x5

    and-int/2addr v0, v6

    aput v0, p2, v5

    .line 41
    invoke-static {v3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/lit8 v0, p1, 0x3

    and-int/2addr v0, v6

    aput v0, p2, v5

    .line 42
    invoke-static {p3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/2addr p1, v2

    and-int/2addr p1, v6

    aput p1, p2, v5

    .line 43
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :pswitch_6
    const/16 v0, 0xa

    new-array v7, v6, [I

    add-int/lit8 v8, p2, 0x2

    .line 44
    aget-byte v9, p1, v8

    shr-int/lit8 v9, v9, 0x7

    and-int/2addr v9, v6

    aput v9, v7, v5

    invoke-static {v0, v7}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xb

    new-array v7, v6, [I

    .line 45
    aget-byte v9, p1, v8

    shr-int/lit8 v9, v9, 0x6

    and-int/2addr v9, v6

    aput v9, v7, v5

    invoke-static {v0, v7}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xc

    new-array v7, v6, [I

    .line 46
    aget-byte v9, p1, v8

    shr-int/2addr v9, p3

    and-int/2addr v9, v6

    aput v9, v7, v5

    invoke-static {v0, v7}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x35

    new-array v7, v6, [I

    .line 47
    aget-byte v9, p1, v8

    shr-int/2addr v9, v1

    and-int/2addr v9, v6

    aput v9, v7, v5

    invoke-static {v0, v7}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xd

    new-array v7, v6, [I

    .line 48
    aget-byte v9, p1, v8

    shr-int/2addr v9, v3

    and-int/2addr v9, v6

    aput v9, v7, v5

    invoke-static {v0, v7}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xe

    new-array v7, v6, [I

    .line 49
    aget-byte v9, p1, v8

    shr-int/2addr v9, v2

    and-int/2addr v9, v6

    aput v9, v7, v5

    invoke-static {v0, v7}, Lk0/qt;->y0(I[I)V

    new-array v0, v6, [I

    .line 50
    aget-byte v7, p1, v8

    shr-int/2addr v7, v6

    and-int/2addr v7, v6

    aput v7, v0, v5

    const/16 v7, 0x10

    invoke-static {v7, v0}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xf

    new-array v9, v6, [I

    .line 51
    aget-byte v8, p1, v8

    shr-int/2addr v8, v5

    and-int/2addr v8, v6

    aput v8, v9, v5

    invoke-static {v0, v9}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v0, p2, 0x3

    .line 52
    aget-byte v8, p1, v0

    and-int/2addr v8, v4

    if-eq v8, v6, :cond_9

    if-eq v8, v2, :cond_8

    if-eq v8, v3, :cond_7

    if-eq v8, v1, :cond_6

    if-eq v8, p3, :cond_5

    move p3, v5

    move v2, p3

    :goto_2
    move v8, v2

    goto :goto_3

    :cond_5
    move v2, v5

    move v8, v2

    move p3, v6

    goto :goto_3

    :cond_6
    move v2, v5

    move p3, v6

    move v8, p3

    goto :goto_3

    :cond_7
    move p3, v5

    move v2, v6

    goto :goto_2

    :cond_8
    move p3, v5

    move v2, p3

    move v8, v6

    goto :goto_3

    :cond_9
    move p3, v5

    move v8, p3

    move v2, v6

    :goto_3
    const/16 v9, 0x12

    new-array v10, v6, [I

    aput p3, v10, v5

    .line 53
    invoke-static {v9, v10}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x13

    new-array v9, v6, [I

    aput v2, v9, v5

    .line 54
    invoke-static {p3, v9}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x14

    new-array v2, v6, [I

    aput v8, v2, v5

    .line 55
    invoke-static {p3, v2}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x4d

    new-array v2, v6, [I

    .line 56
    aget-byte v0, p1, v0

    and-int/2addr v0, v4

    aput v0, v2, v5

    invoke-static {p3, v2}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x15

    new-array v0, v6, [I

    add-int/lit8 v2, p2, 0x4

    .line 57
    aget-byte v2, p1, v2

    and-int/2addr v2, v4

    aput v2, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x5

    .line 58
    aget-byte v0, p1, p3

    and-int/2addr v0, v4

    add-int/lit8 v2, p2, 0x6

    .line 59
    aget-byte v8, p1, v2

    and-int/2addr v8, v4

    const-string v9, "persist.fyt.reversetemp"

    .line 60
    invoke-static {v9, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 61
    aget-byte v0, p1, v2

    and-int/2addr v0, v4

    .line 62
    aget-byte p3, p1, p3

    and-int/lit16 v8, p3, 0xff

    :cond_a
    const/4 p3, -0x3

    const/4 v2, -0x2

    const/16 v4, 0x1b

    if-eqz v0, :cond_c

    if-eq v0, v7, :cond_b

    new-array v9, v6, [I

    aput v0, v9, v5

    .line 63
    invoke-static {v4, v9}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_b
    new-array v0, v6, [I

    aput p3, v0, v5

    .line 64
    invoke-static {v4, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_c
    new-array v0, v6, [I

    aput v2, v0, v5

    .line 65
    invoke-static {v4, v0}, Lk0/qt;->y0(I[I)V

    :goto_4
    const/16 v0, 0x1c

    if-eqz v8, :cond_e

    if-eq v8, v7, :cond_d

    new-array p3, v6, [I

    aput v8, p3, v5

    .line 66
    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_d
    new-array v2, v6, [I

    aput p3, v2, v5

    .line 67
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_e
    new-array p3, v6, [I

    aput v2, p3, v5

    .line 68
    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    :goto_5
    const/16 p3, 0x1d

    new-array v0, v6, [I

    add-int/lit8 p2, p2, 0x7

    .line 69
    aget-byte v2, p1, p2

    shr-int/lit8 v2, v2, 0x7

    and-int/2addr v2, v6

    aput v2, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x1e

    new-array v0, v6, [I

    .line 70
    aget-byte v2, p1, p2

    shr-int/lit8 v2, v2, 0x6

    and-int/2addr v2, v6

    aput v2, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x3a

    new-array v0, v6, [I

    .line 71
    aget-byte p1, p1, p2

    shr-int/2addr p1, v1

    and-int/2addr p1, v3

    aput p1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :pswitch_7
    add-int/lit8 p3, p2, 0x2

    .line 72
    aget-byte p3, p1, p3

    add-int/2addr p2, v3

    .line 73
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 74
    iput p2, p0, Lk0/ip;->c:I

    move p2, v5

    .line 75
    :goto_6
    iget-object p3, p0, Lk0/ip;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_10

    .line 76
    iget v0, p0, Lk0/ip;->c:I

    aget-object v1, p3, p2

    aget v1, v1, v5

    if-ne v0, v1, :cond_f

    if-eqz v0, :cond_10

    .line 77
    iput p2, p0, Lk0/ip;->b:I

    goto :goto_7

    :cond_f
    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    :cond_10
    :goto_7
    and-int/2addr p1, v4

    if-ne p1, v6, :cond_11

    .line 78
    array-length p1, p3

    if-ge p2, p1, :cond_14

    .line 79
    aget-object p1, p3, p2

    aget p1, p1, v6

    invoke-static {p1, v5}, Ll0/b0;->l0(II)V

    goto :goto_8

    :cond_11
    if-nez p1, :cond_14

    .line 80
    iget p1, p0, Lk0/ip;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_12

    if-eq p1, v4, :cond_12

    .line 81
    aget-object p1, p3, p1

    aget p1, p1, v6

    invoke-static {p1, v6}, Ll0/b0;->l0(II)V

    .line 82
    :cond_12
    iput v4, p0, Lk0/ip;->b:I

    goto :goto_8

    .line 83
    :cond_13
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    :cond_14
    :goto_8
    return-void

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/ip;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/ip;->j:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/ip;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v1, p0, Lk0/ip;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x6b

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

    move/from16 v1, p1

    move-object/from16 v2, p2

    const/16 v3, 0xe3

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x5

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v1, :cond_6

    if-eq v1, v9, :cond_5

    const/16 v12, 0x8

    if-eq v1, v7, :cond_4

    const/16 v13, 0x3eb

    if-eq v1, v13, :cond_2

    const/16 v13, 0x405

    if-eq v1, v13, :cond_0

    goto/16 :goto_0

    .line 1
    :cond_0
    invoke-virtual {v0, v2, v7}, Lk0/lt;->T2([II)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2
    aget v1, v2, v9

    mul-int/lit16 v1, v1, 0x500

    invoke-static {}, La/f;->w()I

    move-result v13

    div-int/2addr v1, v13

    .line 3
    aget v13, v2, v7

    mul-int/lit16 v13, v13, 0x2d0

    invoke-static {}, La/f;->i()I

    move-result v14

    div-int/2addr v13, v14

    .line 4
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v14

    sget-object v15, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " touch_x = "

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "touch_y =="

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " ObjApp.getHeight()"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, La/f;->i()I

    move-result v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v15, v10}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 5
    aget v10, v2, v8

    const/16 v11, 0xa4

    if-nez v10, :cond_1

    new-array v2, v12, [I

    aput v3, v2, v8

    aput v11, v2, v9

    aput v6, v2, v7

    aput v9, v2, v4

    shr-int/lit8 v3, v1, 0x8

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v5

    and-int/lit16 v1, v1, 0xff

    aput v1, v2, v6

    shr-int/lit8 v1, v13, 0x8

    and-int/lit16 v1, v1, 0xff

    const/4 v3, 0x6

    aput v1, v2, v3

    and-int/lit16 v1, v13, 0xff

    const/4 v3, 0x7

    aput v1, v2, v3

    .line 6
    invoke-static {v2}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 7
    :cond_1
    aget v2, v2, v8

    if-ne v2, v9, :cond_7

    new-array v2, v12, [I

    aput v3, v2, v8

    aput v11, v2, v9

    aput v6, v2, v7

    aput v8, v2, v4

    shr-int/lit8 v3, v1, 0x8

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v5

    and-int/lit16 v1, v1, 0xff

    aput v1, v2, v6

    shr-int/lit8 v1, v13, 0x8

    and-int/lit16 v1, v1, 0xff

    const/4 v3, 0x6

    aput v1, v2, v3

    and-int/lit16 v1, v13, 0xff

    const/4 v3, 0x7

    aput v1, v2, v3

    .line 8
    invoke-static {v2}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_2
    if-eqz v2, :cond_7

    .line 9
    array-length v1, v2

    if-lez v1, :cond_7

    .line 10
    sget v1, Lu0/b;->o:I

    if-ne v1, v9, :cond_3

    new-array v1, v5, [I

    .line 11
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_3
    new-array v1, v5, [I

    .line 12
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0xa

    new-array v1, v1, [I

    aput v3, v1, v8

    const/16 v3, 0x83

    aput v3, v1, v9

    const/4 v3, 0x7

    aput v3, v1, v7

    .line 13
    aget v8, v2, v8

    aput v8, v1, v4

    aget v8, v2, v9

    aput v8, v1, v5

    aget v7, v2, v7

    aput v7, v1, v6

    aget v4, v2, v4

    const/4 v7, 0x6

    aput v4, v1, v7

    aget v4, v2, v5

    aput v4, v1, v3

    aget v3, v2, v6

    aput v3, v1, v12

    const/16 v3, 0x9

    aget v2, v2, v7

    aput v2, v1, v3

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_5
    new-array v1, v6, [I

    aput v3, v1, v8

    const/16 v3, 0x90

    aput v3, v1, v9

    aput v7, v1, v7

    .line 14
    aget v3, v2, v8

    aput v3, v1, v4

    aget v2, v2, v9

    aput v2, v1, v5

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    .line 15
    :cond_6
    aget v1, v2, v8

    packed-switch v1, :pswitch_data_0

    new-array v1, v6, [I

    aput v3, v1, v8

    const/16 v3, 0x82

    aput v3, v1, v9

    aput v7, v1, v7

    .line 16
    aget v3, v2, v8

    aput v3, v1, v4

    aget v2, v2, v9

    aput v2, v1, v5

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    .line 17
    :pswitch_0
    aget v1, v2, v9

    invoke-virtual {v0, v1}, Lk0/ip;->n3(I)V

    goto :goto_0

    .line 18
    :pswitch_1
    aget v1, v2, v9

    invoke-virtual {v0, v1}, Lk0/ip;->m3(I)V

    goto :goto_0

    .line 19
    :pswitch_2
    aget v1, v2, v9

    invoke-virtual {v0, v1}, Lk0/ip;->l3(I)V

    goto :goto_0

    .line 20
    :pswitch_3
    aget v1, v2, v9

    invoke-virtual {v0, v1}, Lk0/ip;->k3(I)V

    goto :goto_0

    .line 21
    :pswitch_4
    aget v1, v2, v9

    invoke-virtual {v0, v1}, Lk0/ip;->j3(I)V

    :cond_7
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        -0x5b
        0x1
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x5b
        0x1
        0x1
    .end array-data
.end method

.method public final j3(I)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    if-le p1, v1, :cond_1

    move p1, v1

    .line 1
    :cond_1
    :goto_0
    sput p1, Lk0/ip;->q:I

    const/4 v2, 0x5

    new-array v2, v2, [I

    const/16 v3, 0xe3

    aput v3, v2, v0

    const/16 v3, 0x82

    aput v3, v2, v1

    const/4 v3, 0x2

    aput v3, v2, v3

    const/4 v3, 0x3

    const/4 v4, 0x7

    aput v4, v2, v3

    const/4 v3, 0x4

    aput p1, v2, v3

    .line 2
    invoke-static {v2}, Lz/k;->s([I)V

    const/16 p1, 0x66

    new-array v2, v1, [I

    .line 3
    sget v3, Lk0/ip;->q:I

    aput v3, v2, v0

    invoke-static {p1, v2}, Lk0/qt;->y0(I[I)V

    .line 4
    iget-object p1, p0, Lk0/ip;->k:Lo1/g0;

    invoke-virtual {p1, v1, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/ip;->q:I

    if-eq p1, v0, :cond_2

    .line 5
    iget-object p1, p0, Lk0/ip;->k:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_2
    return-void
.end method

.method public final k3(I)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    if-le p1, v1, :cond_1

    move p1, v1

    .line 1
    :cond_1
    :goto_0
    sput p1, Lk0/ip;->r:I

    const/4 v2, 0x5

    new-array v2, v2, [I

    const/16 v3, 0xe3

    aput v3, v2, v0

    const/16 v3, 0x82

    aput v3, v2, v1

    const/4 v3, 0x2

    aput v3, v2, v3

    const/4 v4, 0x3

    const/16 v5, 0x8

    aput v5, v2, v4

    const/4 v4, 0x4

    aput p1, v2, v4

    .line 2
    invoke-static {v2}, Lz/k;->s([I)V

    const/16 p1, 0x67

    new-array v2, v1, [I

    .line 3
    sget v4, Lk0/ip;->r:I

    aput v4, v2, v0

    invoke-static {p1, v2}, Lk0/qt;->y0(I[I)V

    .line 4
    iget-object p1, p0, Lk0/ip;->k:Lo1/g0;

    invoke-virtual {p1, v3, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/ip;->r:I

    if-eq p1, v0, :cond_2

    .line 5
    iget-object p1, p0, Lk0/ip;->k:Lo1/g0;

    invoke-virtual {p1, v3, v0}, Lo1/g0;->g(II)V

    :cond_2
    return-void
.end method

.method public final l3(I)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    if-le p1, v1, :cond_1

    move p1, v1

    .line 1
    :cond_1
    :goto_0
    sput p1, Lk0/ip;->s:I

    const/4 v2, 0x5

    new-array v2, v2, [I

    const/16 v3, 0xe3

    aput v3, v2, v0

    const/16 v3, 0x82

    aput v3, v2, v1

    const/4 v3, 0x2

    aput v3, v2, v3

    const/16 v3, 0x9

    const/4 v4, 0x3

    aput v3, v2, v4

    const/4 v3, 0x4

    aput p1, v2, v3

    .line 2
    invoke-static {v2}, Lz/k;->s([I)V

    const/16 p1, 0x68

    new-array v2, v1, [I

    .line 3
    sget v3, Lk0/ip;->s:I

    aput v3, v2, v0

    invoke-static {p1, v2}, Lk0/qt;->y0(I[I)V

    .line 4
    iget-object p1, p0, Lk0/ip;->k:Lo1/g0;

    invoke-virtual {p1, v4, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/ip;->s:I

    if-eq p1, v0, :cond_2

    .line 5
    iget-object p1, p0, Lk0/ip;->k:Lo1/g0;

    invoke-virtual {p1, v4, v0}, Lo1/g0;->g(II)V

    :cond_2
    return-void
.end method

.method public final m3(I)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    if-le p1, v1, :cond_1

    move p1, v1

    .line 1
    :cond_1
    :goto_0
    sput p1, Lk0/ip;->t:I

    const/4 v2, 0x5

    new-array v2, v2, [I

    const/16 v3, 0xe3

    aput v3, v2, v0

    const/16 v3, 0x82

    aput v3, v2, v1

    const/4 v3, 0x2

    aput v3, v2, v3

    const/4 v3, 0x3

    const/16 v4, 0xa

    aput v4, v2, v3

    const/4 v3, 0x4

    aput p1, v2, v3

    .line 2
    invoke-static {v2}, Lz/k;->s([I)V

    const/16 p1, 0x69

    new-array v2, v1, [I

    .line 3
    sget v4, Lk0/ip;->t:I

    aput v4, v2, v0

    invoke-static {p1, v2}, Lk0/qt;->y0(I[I)V

    .line 4
    iget-object p1, p0, Lk0/ip;->k:Lo1/g0;

    invoke-virtual {p1, v3, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/ip;->t:I

    if-eq p1, v0, :cond_2

    .line 5
    iget-object p1, p0, Lk0/ip;->k:Lo1/g0;

    invoke-virtual {p1, v3, v0}, Lo1/g0;->g(II)V

    :cond_2
    return-void
.end method

.method public final n3(I)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    if-le p1, v1, :cond_1

    move p1, v1

    .line 1
    :cond_1
    :goto_0
    sput p1, Lk0/ip;->u:I

    const/4 v2, 0x5

    new-array v3, v2, [I

    const/16 v4, 0xe3

    aput v4, v3, v0

    const/16 v4, 0x82

    aput v4, v3, v1

    const/4 v4, 0x2

    aput v4, v3, v4

    const/4 v4, 0x3

    const/16 v5, 0xb

    aput v5, v3, v4

    const/4 v4, 0x4

    aput p1, v3, v4

    .line 2
    invoke-static {v3}, Lz/k;->s([I)V

    const/16 p1, 0x6a

    new-array v3, v1, [I

    .line 3
    sget v4, Lk0/ip;->u:I

    aput v4, v3, v0

    invoke-static {p1, v3}, Lk0/qt;->y0(I[I)V

    .line 4
    iget-object p1, p0, Lk0/ip;->k:Lo1/g0;

    invoke-virtual {p1, v2, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/ip;->u:I

    if-eq p1, v0, :cond_2

    .line 5
    iget-object p1, p0, Lk0/ip;->k:Lo1/g0;

    invoke-virtual {p1, v2, v0}, Lo1/g0;->g(II)V

    :cond_2
    return-void
.end method
