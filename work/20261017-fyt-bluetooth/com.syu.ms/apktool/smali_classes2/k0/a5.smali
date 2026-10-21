.class public Lk0/a5;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static n:[I


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:Ljava/lang/Runnable;

.field public g:Ljava/lang/Runnable;

.field public h:Ljava/lang/Runnable;

.field public i:Ljava/lang/Runnable;

.field public j:F

.field public k:I

.field public l:I

.field public m:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xb

    new-array v0, v0, [I

    .line 1
    sput-object v0, Lk0/a5;->n:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/a5;->c:I

    const/4 v1, 0x6

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

    new-array v2, v2, [I

    fill-array-data v2, :array_5

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/a5;->d:[[I

    .line 4
    iput v0, p0, Lk0/a5;->e:I

    .line 5
    new-instance v0, Lk0/a5$a;

    invoke-direct {v0, p0}, Lk0/a5$a;-><init>(Lk0/a5;)V

    iput-object v0, p0, Lk0/a5;->f:Ljava/lang/Runnable;

    .line 6
    new-instance v0, Lk0/a5$b;

    invoke-direct {v0, p0}, Lk0/a5$b;-><init>(Lk0/a5;)V

    iput-object v0, p0, Lk0/a5;->g:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Lk0/a5$c;

    invoke-direct {v0, p0}, Lk0/a5$c;-><init>(Lk0/a5;)V

    iput-object v0, p0, Lk0/a5;->h:Ljava/lang/Runnable;

    .line 8
    new-instance v0, Lk0/a5$d;

    invoke-direct {v0, p0}, Lk0/a5$d;-><init>(Lk0/a5;)V

    iput-object v0, p0, Lk0/a5;->i:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lk0/a5;->j:F

    const/16 v0, 0xff

    .line 10
    iput v0, p0, Lk0/a5;->k:I

    .line 11
    iput v0, p0, Lk0/a5;->l:I

    .line 12
    new-instance v0, Lk0/a5$e;

    invoke-direct {v0, p0}, Lk0/a5$e;-><init>(Lk0/a5;)V

    iput-object v0, p0, Lk0/a5;->m:Ljava/lang/Runnable;

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
        0x2
    .end array-data

    :array_3
    .array-data 4
        0x4
        0xc
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x4
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x3
    .end array-data
.end method

.method public static a3()V
    .locals 12

    const/16 v0, 0xa

    new-array v1, v0, [I

    const/16 v2, 0x87

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/16 v4, 0x8

    aput v4, v1, v2

    .line 1
    invoke-static {}, Lk0/a5;->b3()B

    move-result v5

    const/4 v6, 0x2

    aput v5, v1, v6

    .line 2
    sget v5, Lu0/b;->D:I

    const/16 v6, 0x9

    const/4 v7, 0x6

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x3

    if-ne v5, v2, :cond_0

    aput v2, v1, v10

    goto :goto_1

    :cond_0
    if-eq v5, v4, :cond_2

    if-eq v5, v6, :cond_2

    if-eq v5, v9, :cond_2

    if-eq v5, v8, :cond_2

    if-ne v5, v7, :cond_1

    goto :goto_0

    :cond_1
    aput v3, v1, v10

    goto :goto_1

    :cond_2
    :goto_0
    const/16 v11, 0x10

    aput v11, v1, v10

    :goto_1
    if-ne v5, v2, :cond_3

    .line 3
    invoke-static {}, Lk0/a5;->c3()B

    move-result v5

    aput v5, v1, v9

    goto :goto_2

    :cond_3
    aput v3, v1, v9

    .line 4
    :goto_2
    sget v5, Lu0/b;->D:I

    if-ne v5, v2, :cond_4

    .line 5
    sget v5, Lw0/d;->i:I

    shr-int/lit8 v9, v5, 0x8

    aput v9, v1, v7

    and-int/lit16 v5, v5, 0xff

    aput v5, v1, v8

    goto :goto_3

    :cond_4
    aput v3, v1, v8

    aput v3, v1, v7

    :goto_3
    const/4 v5, 0x7

    aput v3, v1, v5

    aput v3, v1, v4

    aput v3, v1, v6

    .line 6
    sget-object v4, Lk0/a5;->n:[I

    const/16 v5, 0xe3

    aput v5, v4, v3

    move v4, v3

    :goto_4
    if-ge v3, v0, :cond_6

    .line 7
    sget-object v5, Lk0/a5;->n:[I

    add-int/lit8 v6, v3, 0x1

    aget v7, v5, v6

    aget v8, v1, v3

    if-eq v7, v8, :cond_5

    .line 8
    aget v3, v1, v3

    aput v3, v5, v6

    move v4, v2

    :cond_5
    move v3, v6

    goto :goto_4

    :cond_6
    if-eqz v4, :cond_7

    .line 9
    sget-object v0, Lk0/a5;->n:[I

    invoke-static {v0}, Lz/k;->s([I)V

    :cond_7
    return-void
.end method

.method public static b3()B
    .locals 8

    .line 1
    sget v0, Lu0/b;->D:I

    const/16 v1, 0x9

    const/4 v2, 0x5

    const/16 v3, 0x8

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v0, v5, :cond_7

    if-eq v0, v4, :cond_6

    const/4 v6, 0x3

    if-eq v0, v6, :cond_6

    const/4 v7, 0x4

    if-eq v0, v7, :cond_2

    if-eq v0, v2, :cond_1

    if-eq v0, v3, :cond_0

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    goto :goto_1

    :cond_0
    :goto_0
    move v1, v3

    goto :goto_1

    :cond_1
    const/4 v1, 0x7

    goto :goto_1

    .line 2
    :cond_2
    sget v0, Lo0/e;->H:I

    if-ne v0, v5, :cond_3

    move v1, v4

    goto :goto_1

    :cond_3
    if-ne v0, v4, :cond_4

    goto :goto_1

    :cond_4
    if-ne v0, v6, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    :cond_6
    move v1, v2

    goto :goto_1

    :cond_7
    move v1, v5

    :goto_1
    return v1
.end method

.method public static c3()B
    .locals 6

    .line 1
    sget v0, Lw0/d;->h:I

    const/high16 v1, 0x10000

    sub-int v2, v0, v1

    const/16 v3, 0x10

    const/4 v4, 0x0

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    move v3, v4

    goto :goto_1

    :cond_1
    sub-int v2, v0, v1

    const/4 v5, 0x1

    if-ne v5, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    sub-int v1, v0, v1

    if-ne v2, v1, :cond_3

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v0, 0x0

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    sub-int/2addr v0, v4

    if-ne v5, v0, :cond_0

    :goto_1
    return v3
.end method

.method public static synthetic d3(Lk0/a5;)F
    .locals 0

    .line 1
    iget p0, p0, Lk0/a5;->j:F

    return p0
.end method

.method public static synthetic e3(Lk0/a5;F)F
    .locals 0

    .line 1
    iput p1, p0, Lk0/a5;->j:F

    return p1
.end method

.method public static synthetic f3(Lk0/a5;F)F
    .locals 1

    .line 1
    iget v0, p0, Lk0/a5;->j:F

    rem-float/2addr v0, p1

    iput v0, p0, Lk0/a5;->j:F

    return v0
.end method

.method public static synthetic g3(Lk0/a5;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/a5;->l:I

    return p0
.end method

.method public static synthetic h3(Lk0/a5;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/a5;->k:I

    return p0
.end method

.method public static synthetic i3(Lk0/a5;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/a5;->k:I

    return p1
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
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

    const/4 v2, 0x0

    .line 4
    iput v2, v0, Lk0/mt;->g:I

    .line 5
    iput v2, v0, Lk0/mt;->o:I

    .line 6
    sget-object v0, Lo1/h;->a:Lo1/y;

    iget-object v2, p0, Lk0/a5;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 7
    iget-object v0, p0, Lk0/a5;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 8
    iget-object v0, p0, Lk0/a5;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 9
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v2, p0, Lk0/a5;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v2, p0, Lk0/a5;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0xff

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v2, v4, :cond_6

    const/16 v8, 0x10

    const/16 v9, 0xa

    const/16 v10, 0xc

    if-eq v2, v5, :cond_4

    const/4 v11, 0x5

    const/4 v12, 0x6

    const/4 v13, 0x4

    if-eq v2, v12, :cond_2

    const/16 v14, 0x7f

    if-eq v2, v10, :cond_1

    if-eq v2, v14, :cond_0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 3
    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x4

    .line 4
    aget-byte v1, v1, v4

    const/16 v4, 0x6f

    new-array v8, v7, [I

    shr-int/lit8 v9, v2, 0x2

    and-int/2addr v9, v7

    aput v9, v8, v6

    .line 5
    invoke-static {v4, v8}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x70

    new-array v8, v7, [I

    shr-int/lit8 v9, v2, 0x3

    and-int/2addr v9, v7

    aput v9, v8, v6

    .line 6
    invoke-static {v4, v8}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x71

    new-array v8, v7, [I

    shr-int/lit8 v9, v2, 0x4

    and-int/2addr v9, v7

    aput v9, v8, v6

    .line 7
    invoke-static {v4, v8}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x72

    new-array v8, v7, [I

    shr-int/lit8 v9, v2, 0x0

    and-int/2addr v9, v7

    aput v9, v8, v6

    .line 8
    invoke-static {v4, v8}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x73

    new-array v8, v7, [I

    shr-int/lit8 v9, v3, 0x3

    and-int/2addr v9, v7

    aput v9, v8, v6

    .line 9
    invoke-static {v4, v8}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x74

    new-array v8, v7, [I

    shr-int/lit8 v9, v3, 0x4

    and-int/2addr v9, v7

    aput v9, v8, v6

    .line 10
    invoke-static {v4, v8}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x7b

    new-array v8, v7, [I

    shr-int/lit8 v9, v3, 0x7

    and-int/2addr v9, v7

    aput v9, v8, v6

    .line 11
    invoke-static {v4, v8}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x7c

    new-array v8, v7, [I

    shr-int/lit8 v9, v3, 0x6

    and-int/2addr v9, v7

    aput v9, v8, v6

    .line 12
    invoke-static {v4, v8}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x75

    new-array v8, v7, [I

    shr-int/lit8 v9, v1, 0x7

    and-int/2addr v9, v7

    aput v9, v8, v6

    .line 13
    invoke-static {v4, v8}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x76

    new-array v8, v7, [I

    shr-int/2addr v1, v12

    and-int/2addr v1, v7

    aput v1, v8, v6

    .line 14
    invoke-static {v4, v8}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x77

    new-array v4, v7, [I

    shr-int/lit8 v8, v2, 0x6

    and-int/2addr v8, v5

    aput v8, v4, v6

    .line 15
    invoke-static {v1, v4}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x78

    new-array v4, v7, [I

    shr-int/2addr v2, v7

    and-int/2addr v2, v7

    aput v2, v4, v6

    .line 16
    invoke-static {v1, v4}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x79

    new-array v2, v7, [I

    shr-int/lit8 v4, v3, 0x5

    and-int/2addr v4, v7

    aput v4, v2, v6

    .line 17
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x7a

    new-array v2, v7, [I

    and-int/2addr v3, v5

    aput v3, v2, v6

    .line 18
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 19
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 20
    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x4

    .line 21
    aget-byte v1, v1, v4

    const/16 v4, 0x6a

    new-array v8, v7, [I

    and-int/lit8 v10, v2, 0x1f

    mul-int/2addr v10, v9

    aput v10, v8, v6

    .line 22
    invoke-static {v4, v8}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x6b

    new-array v8, v7, [I

    shr-int/2addr v2, v11

    and-int/2addr v2, v5

    aput v2, v8, v6

    .line 23
    invoke-static {v4, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v4, v7, [I

    and-int/lit8 v8, v3, 0x1f

    aput v8, v4, v6

    .line 24
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v4, v7, [I

    and-int/lit8 v1, v1, 0x1f

    aput v1, v4, v6

    .line 25
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x6e

    new-array v2, v7, [I

    shr-int/2addr v3, v11

    and-int/2addr v3, v5

    aput v3, v2, v6

    .line 26
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 27
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 28
    aget-byte v3, v1, v3

    const/16 v8, 0x62

    new-array v9, v7, [I

    shr-int/lit8 v10, v2, 0x0

    and-int/2addr v10, v7

    aput v10, v9, v6

    .line 29
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    const/16 v8, 0x63

    new-array v9, v7, [I

    shr-int/lit8 v10, v2, 0x1

    and-int/2addr v10, v7

    aput v10, v9, v6

    .line 30
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    const/16 v8, 0x64

    new-array v9, v7, [I

    shr-int/2addr v2, v4

    and-int/2addr v2, v5

    aput v2, v9, v6

    .line 31
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v4, v7, [I

    shr-int/2addr v3, v6

    and-int/2addr v3, v7

    aput v3, v4, v6

    .line 32
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x4

    .line 33
    aget-byte v1, v1, v2

    const/16 v2, 0x66

    new-array v3, v7, [I

    shr-int/lit8 v4, v1, 0x3

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 34
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v7, [I

    shr-int/lit8 v4, v1, 0x7

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 35
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v7, [I

    shr-int/lit8 v4, v1, 0x1

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 36
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v7, [I

    shr-int/2addr v1, v6

    and-int/2addr v1, v7

    aput v1, v3, v6

    .line 37
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    .line 38
    :cond_0
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_1
    const/16 v2, 0x7d

    new-array v4, v7, [I

    add-int/lit8 v9, p2, 0x2

    .line 39
    aget-byte v10, v1, v9

    shr-int/2addr v10, v12

    and-int/2addr v5, v10

    aput v5, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v4, v7, [I

    .line 40
    aget-byte v5, v1, v9

    shr-int/2addr v5, v6

    and-int/lit8 v5, v5, 0xf

    aput v5, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 41
    aget-byte v5, v1, v4

    shr-int/2addr v5, v13

    and-int/lit8 v5, v5, 0xf

    aput v5, v2, v6

    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x80

    new-array v5, v7, [I

    .line 42
    aget-byte v4, v1, v4

    shr-int/2addr v4, v6

    and-int/2addr v4, v7

    aput v4, v5, v6

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v4, v7, [I

    add-int/lit8 v5, p2, 0x4

    .line 43
    aget-byte v5, v1, v5

    shl-int/lit8 v5, v5, 0x18

    add-int/lit8 v9, p2, 0x5

    aget-byte v9, v1, v9

    shl-int/lit8 v8, v9, 0x10

    or-int/2addr v5, v8

    add-int/lit8 v8, p2, 0x6

    aget-byte v8, v1, v8

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v5, v8

    add-int/lit8 v8, p2, 0x7

    aget-byte v8, v1, v8

    or-int/2addr v5, v8

    aput v5, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v4, v7, [I

    add-int/lit8 v5, p2, 0x8

    .line 44
    aget-byte v5, v1, v5

    and-int/2addr v5, v3

    aput v5, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v4, v7, [I

    add-int/lit8 v5, p2, 0x9

    .line 45
    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    aput v1, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    :cond_2
    add-int/lit8 v2, p2, 0x2

    .line 46
    aget-byte v1, v1, v2

    and-int/2addr v1, v3

    const-string v2, "persist.syu.reversefrontdoor"

    .line 47
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_3

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 48
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 49
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_3
    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 50
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 51
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 52
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 53
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 54
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/2addr v1, v4

    and-int/2addr v1, v7

    aput v1, v2, v6

    .line 55
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    :cond_4
    add-int/lit8 v2, p2, 0x2

    .line 56
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0x3

    .line 57
    aget-byte v4, v1, v4

    add-int/lit8 v11, p2, 0x4

    .line 58
    aget-byte v11, v1, v11

    add-int/lit8 v12, p2, 0x5

    .line 59
    aget-byte v12, v1, v12

    add-int/lit8 v13, p2, 0x7

    .line 60
    aget-byte v1, v1, v13

    new-array v13, v7, [I

    shr-int/lit8 v14, v2, 0x7

    and-int/2addr v14, v7

    aput v14, v13, v6

    .line 61
    invoke-static {v9, v13}, Lk0/qt;->y0(I[I)V

    const/16 v9, 0xb

    new-array v13, v7, [I

    shr-int/lit8 v14, v2, 0x5

    and-int/2addr v14, v5

    aput v14, v13, v6

    .line 62
    invoke-static {v9, v13}, Lk0/qt;->y0(I[I)V

    const/16 v9, 0xd

    new-array v13, v7, [I

    shr-int/lit8 v14, v2, 0x4

    and-int/2addr v14, v7

    aput v14, v13, v6

    .line 63
    invoke-static {v9, v13}, Lk0/qt;->y0(I[I)V

    const/16 v9, 0x41

    new-array v13, v7, [I

    shr-int/lit8 v14, v2, 0x3

    and-int/2addr v14, v7

    aput v14, v13, v6

    .line 64
    invoke-static {v9, v13}, Lk0/qt;->y0(I[I)V

    new-array v9, v7, [I

    shr-int/lit8 v13, v2, 0x2

    and-int/2addr v13, v7

    aput v13, v9, v6

    .line 65
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    const/16 v8, 0xe

    new-array v9, v7, [I

    shr-int/lit8 v13, v2, 0x1

    and-int/2addr v13, v7

    aput v13, v9, v6

    .line 66
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    new-array v8, v7, [I

    and-int/2addr v2, v7

    aput v2, v8, v6

    .line 67
    invoke-static {v10, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v8, v7, [I

    shr-int/lit8 v9, v4, 0x7

    and-int/2addr v9, v7

    aput v9, v8, v6

    .line 68
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v8, v7, [I

    shr-int/lit8 v9, v4, 0x6

    and-int/2addr v9, v7

    aput v9, v8, v6

    .line 69
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v8, v7, [I

    shr-int/lit8 v9, v4, 0x5

    and-int/2addr v9, v7

    aput v9, v8, v6

    .line 70
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x35

    new-array v8, v7, [I

    shr-int/lit8 v9, v4, 0x4

    and-int/2addr v9, v7

    aput v9, v8, v6

    .line 71
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v8, v7, [I

    and-int/lit8 v4, v4, 0xf

    aput v4, v8, v6

    .line 72
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 73
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/16 v4, 0x1c

    const/16 v8, 0x1b

    if-eqz v2, :cond_5

    new-array v2, v7, [I

    and-int/lit16 v9, v12, 0xff

    aput v9, v2, v6

    .line 74
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    and-int/2addr v3, v11

    aput v3, v2, v6

    .line 75
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_5
    new-array v2, v7, [I

    and-int/lit16 v9, v11, 0xff

    aput v9, v2, v6

    .line 76
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    and-int/2addr v3, v12

    aput v3, v2, v6

    .line 77
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    :goto_1
    const/16 v2, 0x3a

    new-array v3, v7, [I

    shr-int/lit8 v4, v1, 0x4

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 78
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1e

    new-array v3, v7, [I

    shr-int/lit8 v4, v1, 0x2

    and-int/2addr v4, v5

    aput v4, v3, v6

    .line 79
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1d

    new-array v3, v7, [I

    and-int/2addr v1, v5

    aput v1, v3, v6

    .line 80
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    .line 81
    :cond_6
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_b

    add-int/lit8 v2, p2, 0x2

    .line 82
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0x3

    .line 83
    aget-byte v1, v1, v4

    and-int/2addr v2, v3

    .line 84
    iput v2, v0, Lk0/a5;->c:I

    move v2, v6

    .line 85
    :goto_2
    iget-object v4, v0, Lk0/a5;->d:[[I

    array-length v5, v4

    if-ge v2, v5, :cond_8

    .line 86
    iget v5, v0, Lk0/a5;->c:I

    aget-object v8, v4, v2

    aget v8, v8, v6

    if-ne v5, v8, :cond_7

    if-eqz v5, :cond_8

    .line 87
    iput v2, v0, Lk0/a5;->b:I

    goto :goto_3

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    :goto_3
    and-int/2addr v1, v3

    if-eqz v1, :cond_9

    .line 88
    array-length v1, v4

    if-ge v2, v1, :cond_b

    .line 89
    aget-object v1, v4, v2

    aget v1, v1, v7

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto :goto_4

    .line 90
    :cond_9
    iget v1, v0, Lk0/a5;->b:I

    array-length v2, v4

    if-ge v1, v2, :cond_a

    if-eq v1, v3, :cond_a

    .line 91
    aget-object v1, v4, v1

    aget v1, v1, v7

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 92
    :cond_a
    iput v3, v0, Lk0/a5;->b:I

    :cond_b
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lo1/h;->a:Lo1/y;

    iget-object v1, p0, Lk0/a5;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/a5;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/a5;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/a5;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/a5;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x84

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
    .locals 5

    const/4 p3, 0x5

    const/16 p4, 0xe3

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq p1, v4, :cond_3

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eqz p2, :cond_4

    .line 1
    array-length p1, p2

    if-le p1, v4, :cond_4

    const/16 p1, 0xb

    new-array p1, p1, [I

    aput p4, p1, v3

    const/16 p4, -0x77

    aput p4, p1, v4

    const/16 p4, 0x8

    aput p4, p1, v2

    .line 2
    aget v3, p2, v3

    aput v3, p1, v1

    aget v3, p2, v4

    aput v3, p1, v0

    aget v2, p2, v2

    aput v2, p1, p3

    aget v1, p2, v1

    const/4 v2, 0x6

    aput v1, p1, v2

    aget v0, p2, v0

    const/4 v1, 0x7

    aput v0, p1, v1

    aget p3, p2, p3

    aput p3, p1, p4

    const/16 p3, 0x9

    aget p4, p2, v2

    aput p4, p1, p3

    const/16 p3, 0xa

    aget p2, p2, v1

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array p1, v0, [I

    aput p4, p1, v3

    const/4 p3, -0x1

    aput p3, p1, v4

    aput v4, p1, v2

    .line 3
    aget p2, p2, v3

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_4

    .line 4
    array-length p1, p2

    if-le p1, v4, :cond_4

    new-array p1, p3, [I

    aput p4, p1, v3

    const/16 p3, -0x7c

    aput p3, p1, v4

    aput v2, p1, v2

    .line 5
    aget p3, p2, v3

    aput p3, p1, v1

    aget p2, p2, v4

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    .line 6
    array-length p1, p2

    if-le p1, v4, :cond_4

    new-array p1, p3, [I

    aput p4, p1, v3

    const/16 p3, -0x7d

    aput p3, p1, v4

    aput v2, p1, v2

    .line 7
    aget p2, p2, v3

    aput p2, p1, v1

    aput v3, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_4
    :goto_0
    return-void
.end method
