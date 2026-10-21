.class public Lk0/lf;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static i:I = 0xff


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Ljava/lang/Runnable;

.field public f:B

.field public g:Ljava/lang/Runnable;

.field public h:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/lf;->c:I

    const/16 v1, 0x8

    new-array v1, v1, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 3
    fill-array-data v3, :array_0

    aput-object v3, v1, v0

    new-array v0, v2, [I

    fill-array-data v0, :array_1

    const/4 v3, 0x1

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_2

    aput-object v0, v1, v2

    new-array v0, v2, [I

    fill-array-data v0, :array_3

    const/4 v3, 0x3

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_4

    const/4 v3, 0x4

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_5

    const/4 v3, 0x5

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_6

    const/4 v4, 0x6

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_7

    const/4 v2, 0x7

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/lf;->d:[[I

    .line 4
    new-instance v0, Lk0/lf$a;

    invoke-direct {v0, p0}, Lk0/lf$a;-><init>(Lk0/lf;)V

    iput-object v0, p0, Lk0/lf;->e:Ljava/lang/Runnable;

    .line 5
    iput-byte v3, p0, Lk0/lf;->f:B

    .line 6
    new-instance v0, Lk0/lf$b;

    invoke-direct {v0, p0}, Lk0/lf$b;-><init>(Lk0/lf;)V

    iput-object v0, p0, Lk0/lf;->g:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Lk0/lf$c;

    invoke-direct {v0, p0}, Lk0/lf$c;-><init>(Lk0/lf;)V

    iput-object v0, p0, Lk0/lf;->h:Ljava/lang/Runnable;

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
        0x7
        0x2
    .end array-data

    :array_3
    .array-data 4
        0x8
        0xd
    .end array-data

    :array_4
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_5
    .array-data 4
        0xa
        0x1a
    .end array-data

    :array_6
    .array-data 4
        0x13
        0x3
    .end array-data

    :array_7
    .array-data 4
        0x14
        0x4
    .end array-data
.end method

.method public static synthetic a3(Lk0/lf;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/lf;->h:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public S2()V
    .locals 8

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/lf;->g:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 3
    iput v2, v0, Lk0/mt;->e:I

    .line 4
    iput v2, v0, Lk0/mt;->f:I

    .line 5
    iput v2, v0, Lk0/mt;->g:I

    const/4 v3, 0x0

    .line 6
    iput v3, v0, Lk0/mt;->j:I

    .line 7
    iput v2, v0, Lk0/mt;->o:I

    .line 8
    sget v4, Lk0/nt;->c:I

    const/16 v5, 0x1c

    const/4 v6, 0x4

    if-eq v4, v5, :cond_5

    const/16 v5, 0x1d

    const-string v7, "com.syu.canbus"

    if-eq v4, v5, :cond_4

    const/16 v5, 0x75

    if-eq v4, v5, :cond_2

    const/16 v1, 0x76

    if-eq v4, v1, :cond_0

    goto/16 :goto_2

    .line 9
    :cond_0
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 10
    iput v2, v0, Lk0/mt;->e:I

    .line 11
    iput v2, v0, Lk0/mt;->f:I

    .line 12
    iput v3, v0, Lk0/mt;->g:I

    .line 13
    iput v2, v0, Lk0/mt;->l:I

    .line 14
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_1

    .line 15
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v3, v0, Lk0/mt;->i:I

    goto :goto_0

    .line 16
    :cond_1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->i:I

    .line 17
    :goto_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v3, v0, Lk0/mt;->b:I

    .line 18
    iput v3, v0, Lk0/mt;->c:I

    .line 19
    iput v3, v0, Lk0/mt;->d:I

    .line 20
    iput v2, v0, Lk0/mt;->q:I

    new-array v0, v6, [I

    .line 21
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    .line 22
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/lf;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    goto/16 :goto_2

    .line 23
    :cond_2
    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 24
    iput v2, v0, Lk0/mt;->e:I

    .line 25
    iput v2, v0, Lk0/mt;->f:I

    .line 26
    iput v2, v0, Lk0/mt;->l:I

    .line 27
    iput v3, v0, Lk0/mt;->g:I

    .line 28
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_3

    .line 29
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 30
    iput v3, v0, Lk0/mt;->i:I

    goto :goto_1

    .line 31
    :cond_3
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->i:I

    .line 32
    :goto_1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v3, v0, Lk0/mt;->b:I

    .line 33
    iput v3, v0, Lk0/mt;->c:I

    .line 34
    iput v3, v0, Lk0/mt;->d:I

    .line 35
    iput v2, v0, Lk0/mt;->q:I

    new-array v0, v6, [I

    .line 36
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    .line 37
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/lf;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    goto :goto_2

    .line 38
    :cond_4
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 39
    iput v2, v0, Lk0/mt;->e:I

    .line 40
    iput v2, v0, Lk0/mt;->f:I

    .line 41
    iput v3, v0, Lk0/mt;->g:I

    .line 42
    iput v3, v0, Lk0/mt;->i:I

    .line 43
    iput v3, v0, Lk0/mt;->b:I

    .line 44
    iput v3, v0, Lk0/mt;->c:I

    .line 45
    iput v3, v0, Lk0/mt;->d:I

    .line 46
    iput v3, v0, Lk0/mt;->l:I

    new-array v0, v6, [I

    .line 47
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_2

    .line 48
    :cond_5
    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 49
    iput v2, v0, Lk0/mt;->e:I

    .line 50
    iput v2, v0, Lk0/mt;->f:I

    .line 51
    iput v3, v0, Lk0/mt;->g:I

    .line 52
    iput v3, v0, Lk0/mt;->i:I

    .line 53
    iput v3, v0, Lk0/mt;->b:I

    .line 54
    iput v3, v0, Lk0/mt;->c:I

    .line 55
    iput v3, v0, Lk0/mt;->d:I

    .line 56
    iput v3, v0, Lk0/mt;->l:I

    new-array v0, v6, [I

    .line 57
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    :goto_2
    return-void

    :array_0
    .array-data 4
        0xe3
        0xe2
        0x1
        0x41
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xe2
        0x1
        0x40
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0xe2
        0x1
        0x31
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0xe2
        0x1
        0x30
    .end array-data
.end method

.method public U2([BII)V
    .locals 12

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, 0x1d

    const/4 v2, 0x5

    const/16 v3, 0xff

    if-eq v0, v1, :cond_1d

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_1c

    const/16 v1, 0x20

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v0, v1, :cond_17

    const/16 v1, 0x24

    const/4 v7, 0x4

    const/4 v8, 0x2

    if-eq v0, v1, :cond_15

    const/16 v1, 0x50

    const v9, 0xff00

    if-eq v0, v1, :cond_14

    const/16 v1, 0x65

    const/16 v10, 0xe

    const/16 v11, 0xf

    if-eq v0, v1, :cond_13

    const/16 v1, 0x28

    if-eq v0, v1, :cond_8

    const/16 v1, 0x29

    if-eq v0, v1, :cond_7

    const/16 v1, 0x30

    if-eq v0, v1, :cond_6

    const/16 p3, 0x31

    if-eq v0, p3, :cond_5

    const/16 p3, 0x61

    if-eq v0, p3, :cond_4

    const/16 p3, 0x62

    if-eq v0, p3, :cond_0

    goto/16 :goto_7

    :cond_0
    const/16 p3, 0x98

    new-array v0, v6, [I

    add-int/lit8 v1, p2, 0x2

    .line 2
    aget-byte v4, p1, v1

    and-int/2addr v4, v3

    aput v4, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    .line 3
    aget-byte p3, p1, v1

    if-eq p3, v6, :cond_2

    if-eq p3, v8, :cond_1

    goto/16 :goto_7

    :cond_1
    const/16 p3, 0x72

    new-array v0, v6, [I

    add-int/lit8 v1, p2, 0x5

    .line 4
    aget-byte v2, p1, v1

    shr-int/2addr v2, v7

    and-int/2addr v2, v11

    aput v2, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x73

    new-array v0, v6, [I

    .line 5
    aget-byte v1, p1, v1

    shr-int/2addr v1, v5

    and-int/2addr v1, v11

    aput v1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x74

    new-array v0, v6, [I

    add-int/lit8 v1, p2, 0x7

    .line 6
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v9

    add-int/lit8 v2, p2, 0x6

    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x75

    new-array v0, v6, [I

    add-int/lit8 v1, p2, 0x9

    .line 7
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v9

    add-int/lit8 v2, p2, 0x8

    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x76

    new-array v0, v6, [I

    add-int/lit8 v1, p2, 0xa

    .line 8
    aget-byte v1, p1, v1

    and-int/2addr v1, v3

    aput v1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x77

    new-array v0, v6, [I

    add-int/lit8 v1, p2, 0xb

    .line 9
    aget-byte v1, p1, v1

    and-int/2addr v1, v3

    aput v1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x78

    new-array v0, v6, [I

    add-int/lit8 v1, p2, 0xc

    .line 10
    aget-byte v1, p1, v1

    and-int/2addr v1, v3

    aput v1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x79

    new-array v0, v6, [I

    add-int/lit8 v1, p2, 0xd

    .line 11
    aget-byte v1, p1, v1

    and-int/2addr v1, v3

    aput v1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x7a

    new-array v0, v6, [I

    add-int/lit8 v1, p2, 0xe

    .line 12
    aget-byte v1, p1, v1

    and-int/2addr v1, v3

    aput v1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x7b

    new-array v0, v6, [I

    add-int/2addr p2, v11

    .line 13
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    aput p1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_2
    add-int/lit8 p3, p2, 0x3

    .line 14
    aget-byte v0, p1, p3

    if-nez v0, :cond_3

    const/16 p3, 0x7e

    new-array v0, v6, [I

    add-int/lit8 v1, p2, 0x4

    .line 15
    aget-byte v1, p1, v1

    and-int/2addr v1, v3

    aput v1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x7f

    new-array v0, v6, [I

    add-int/lit8 v1, p2, 0x5

    .line 16
    aget-byte v4, p1, v1

    shr-int/lit8 v4, v4, 0x7

    and-int/2addr v4, v6

    aput v4, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x80

    new-array v0, v6, [I

    .line 17
    aget-byte v4, p1, v1

    shr-int/lit8 v2, v4, 0x5

    and-int/2addr v2, v6

    aput v2, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x81

    new-array v0, v6, [I

    .line 18
    aget-byte v1, p1, v1

    shr-int/2addr v1, v5

    and-int/2addr v1, v11

    aput v1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x82

    new-array v0, v6, [I

    add-int/lit8 v1, p2, 0x7

    .line 19
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v9

    add-int/lit8 p2, p2, 0x6

    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    or-int/2addr p1, v1

    aput p1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    .line 20
    :cond_3
    aget-byte p3, p1, p3

    if-ne p3, v6, :cond_1e

    const/16 p3, 0x83

    new-array v0, v6, [I

    add-int/lit8 v1, p2, 0x6

    .line 21
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v9

    add-int/lit8 v2, p2, 0x5

    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x84

    new-array v0, v6, [I

    add-int/lit8 v1, p2, 0x8

    .line 22
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v9

    add-int/lit8 v2, p2, 0x7

    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x85

    new-array v0, v6, [I

    add-int/lit8 v1, p2, 0xa

    .line 23
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v9

    add-int/lit8 v2, p2, 0x9

    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x86

    new-array v0, v6, [I

    add-int/lit8 v1, p2, 0xc

    .line 24
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v9

    add-int/lit8 v2, p2, 0xb

    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x87

    new-array v0, v6, [I

    add-int/lit8 v1, p2, 0xe

    .line 25
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v9

    add-int/lit8 v2, p2, 0xd

    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x88

    new-array v0, v6, [I

    add-int/lit8 v1, p2, 0x10

    .line 26
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v9

    add-int/2addr p2, v11

    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    or-int/2addr p1, v1

    aput p1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_4
    const/16 p3, 0x64

    new-array v0, v6, [I

    add-int/lit8 v1, p2, 0x2

    .line 27
    aget-byte v3, p1, v1

    shr-int/2addr v3, v5

    and-int/2addr v3, v6

    aput v3, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x65

    new-array v0, v6, [I

    .line 28
    aget-byte v3, p1, v1

    shr-int/2addr v3, v6

    and-int/2addr v3, v6

    aput v3, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x66

    new-array v0, v6, [I

    .line 29
    aget-byte v3, p1, v1

    shr-int/2addr v3, v8

    and-int/2addr v3, v6

    aput v3, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x67

    new-array v0, v6, [I

    .line 30
    aget-byte v3, p1, v1

    shr-int/2addr v3, v4

    and-int/2addr v3, v6

    aput v3, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x68

    new-array v0, v6, [I

    .line 31
    aget-byte v3, p1, v1

    shr-int/2addr v3, v7

    and-int/2addr v3, v6

    aput v3, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x69

    new-array v0, v6, [I

    .line 32
    aget-byte v1, p1, v1

    shr-int/2addr v1, v2

    and-int/2addr v1, v6

    aput v1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6a

    new-array v0, v6, [I

    add-int/lit8 v1, p2, 0x3

    .line 33
    aget-byte v1, p1, v1

    shr-int/2addr v1, v7

    and-int/2addr v1, v11

    aput v1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6b

    new-array v0, v6, [I

    add-int/lit8 v1, p2, 0x4

    .line 34
    aget-byte v1, p1, v1

    shr-int/2addr v1, v5

    and-int/2addr v1, v11

    aput v1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6c

    new-array v0, v6, [I

    add-int/2addr p2, v2

    .line 35
    aget-byte v1, p1, p2

    shr-int/2addr v1, v5

    and-int/2addr v1, v6

    aput v1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6d

    new-array v0, v6, [I

    .line 36
    aget-byte v1, p1, p2

    shr-int/2addr v1, v6

    and-int/2addr v1, v6

    aput v1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6e

    new-array v0, v6, [I

    .line 37
    aget-byte v1, p1, p2

    shr-int/2addr v1, v8

    and-int/2addr v1, v6

    aput v1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6f

    new-array v0, v6, [I

    .line 38
    aget-byte v1, p1, p2

    shr-int/2addr v1, v4

    and-int/2addr v1, v6

    aput v1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x70

    new-array v0, v6, [I

    .line 39
    aget-byte v1, p1, p2

    shr-int/2addr v1, v7

    and-int/2addr v1, v6

    aput v1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x71

    new-array v0, v6, [I

    .line 40
    aget-byte p1, p1, p2

    shr-int/2addr p1, v2

    and-int/2addr p1, v6

    aput p1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_5
    const/16 p3, 0x99

    new-array v0, v6, [I

    add-int/lit8 v1, p2, 0x2

    .line 41
    aget-byte v4, p1, v1

    shr-int/2addr v4, v7

    and-int/2addr v4, v11

    aput v4, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x9a

    new-array v0, v6, [I

    .line 42
    aget-byte v1, p1, v1

    shr-int/2addr v1, v5

    and-int/2addr v1, v11

    aput v1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x9b

    new-array v0, v6, [I

    add-int/lit8 v1, p2, 0x3

    .line 43
    aget-byte v4, p1, v1

    shr-int/2addr v4, v7

    and-int/2addr v4, v11

    aput v4, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x9c

    new-array v0, v6, [I

    .line 44
    aget-byte v1, p1, v1

    shr-int/2addr v1, v5

    and-int/2addr v1, v11

    aput v1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x9d

    new-array v0, v6, [I

    add-int/lit8 v1, p2, 0x4

    .line 45
    aget-byte v4, p1, v1

    shr-int/2addr v4, v7

    and-int/2addr v4, v11

    aput v4, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x9e

    new-array v0, v6, [I

    .line 46
    aget-byte v1, p1, v1

    shr-int/2addr v1, v5

    and-int/2addr v1, v11

    aput v1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x9f

    new-array v0, v6, [I

    add-int/2addr p2, v2

    .line 47
    aget-byte v1, p1, p2

    shr-int/2addr v1, v5

    and-int/2addr v1, v3

    aput v1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xa0

    new-array v0, v6, [I

    .line 48
    aget-byte p1, p1, p2

    shr-int/2addr p1, v5

    and-int/2addr p1, v6

    aput p1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    .line 49
    :cond_6
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v8

    sub-int/2addr p3, v8

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_7
    add-int/lit8 p3, p2, 0x2

    .line 50
    aget-byte p3, p1, p3

    add-int/2addr p2, v4

    aget-byte p1, p1, p2

    const/16 p2, 0x17c

    invoke-static {p3, p1, v5, p2}, Lk0/qt;->k(IIZI)V

    goto/16 :goto_7

    :cond_8
    add-int/lit8 p3, p2, 0x2

    .line 51
    aget-byte p3, p1, p3

    add-int/lit8 v0, p2, 0x3

    .line 52
    aget-byte v0, p1, v0

    add-int/lit8 v1, p2, 0x4

    .line 53
    aget-byte v1, p1, v1

    add-int/lit8 v4, p2, 0x5

    .line 54
    aget-byte v4, p1, v4

    add-int/lit8 v7, p2, 0x6

    .line 55
    aget-byte v7, p1, v7

    new-array v8, v6, [I

    shr-int/lit8 v9, p3, 0x7

    and-int/2addr v9, v6

    aput v9, v8, v5

    const/16 v9, 0xa

    .line 56
    invoke-static {v9, v8}, Lk0/qt;->y0(I[I)V

    new-array v8, v6, [I

    shr-int/lit8 v9, p3, 0x6

    and-int/2addr v9, v6

    aput v9, v8, v5

    const/16 v9, 0xb

    .line 57
    invoke-static {v9, v8}, Lk0/qt;->y0(I[I)V

    new-array v8, v6, [I

    shr-int/lit8 v9, p3, 0x5

    and-int/2addr v9, v6

    aput v9, v8, v5

    const/16 v9, 0xc

    .line 58
    invoke-static {v9, v8}, Lk0/qt;->y0(I[I)V

    new-array v8, v6, [I

    shr-int/lit8 v9, p3, 0x3

    and-int/2addr v9, v6

    aput v9, v8, v5

    const/16 v9, 0xd

    .line 59
    invoke-static {v9, v8}, Lk0/qt;->y0(I[I)V

    new-array v8, v6, [I

    shr-int/lit8 v9, p3, 0x2

    and-int/2addr v9, v6

    aput v9, v8, v5

    .line 60
    invoke-static {v10, v8}, Lk0/qt;->y0(I[I)V

    new-array v8, v6, [I

    shr-int/2addr p3, v6

    and-int/2addr p3, v6

    aput p3, v8, v5

    .line 61
    invoke-static {v11, v8}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x12

    new-array v8, v6, [I

    shr-int/lit8 v9, v0, 0x7

    and-int/2addr v9, v6

    aput v9, v8, v5

    .line 62
    invoke-static {p3, v8}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x13

    new-array v8, v6, [I

    shr-int/lit8 v9, v0, 0x6

    and-int/2addr v9, v6

    aput v9, v8, v5

    .line 63
    invoke-static {p3, v8}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x14

    new-array v8, v6, [I

    shr-int/lit8 v9, v0, 0x5

    and-int/2addr v9, v6

    aput v9, v8, v5

    .line 64
    invoke-static {p3, v8}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x15

    new-array v8, v6, [I

    and-int/2addr v0, v11

    aput v0, v8, v5

    .line 65
    invoke-static {p3, v8}, Lk0/qt;->y0(I[I)V

    const-string p3, "persist.fyt.reversetemp"

    .line 66
    invoke-static {p3, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    const/4 v0, -0x3

    const/4 v8, -0x2

    const/16 v9, 0x1f

    const/16 v10, 0x1c

    const/16 v11, 0x1b

    if-nez p3, :cond_d

    and-int/lit16 p3, v1, 0xff

    if-nez v1, :cond_9

    new-array p3, v6, [I

    aput v8, p3, v5

    .line 67
    invoke-static {v11, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_9
    if-ne v1, v9, :cond_a

    new-array p3, v6, [I

    aput v0, p3, v5

    .line 68
    invoke-static {v11, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_a
    new-array v1, v6, [I

    aput p3, v1, v5

    .line 69
    invoke-static {v11, v1}, Lk0/qt;->y0(I[I)V

    :goto_0
    and-int/lit16 p3, v4, 0xff

    if-nez v4, :cond_b

    new-array p3, v6, [I

    aput v8, p3, v5

    .line 70
    invoke-static {v10, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_b
    if-ne v4, v9, :cond_c

    new-array p3, v6, [I

    aput v0, p3, v5

    .line 71
    invoke-static {v10, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_c
    new-array v0, v6, [I

    aput p3, v0, v5

    .line 72
    invoke-static {v10, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_d
    and-int/lit16 p3, v4, 0xff

    if-nez v4, :cond_e

    new-array p3, v6, [I

    aput v8, p3, v5

    .line 73
    invoke-static {v11, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_e
    if-ne v4, v9, :cond_f

    new-array p3, v6, [I

    aput v0, p3, v5

    .line 74
    invoke-static {v11, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_f
    new-array v4, v6, [I

    aput p3, v4, v5

    .line 75
    invoke-static {v11, v4}, Lk0/qt;->y0(I[I)V

    :goto_1
    and-int/lit16 p3, v1, 0xff

    if-nez v1, :cond_10

    new-array p3, v6, [I

    aput v8, p3, v5

    .line 76
    invoke-static {v10, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_10
    if-ne v1, v9, :cond_11

    new-array p3, v6, [I

    aput v0, p3, v5

    .line 77
    invoke-static {v10, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_11
    new-array v0, v6, [I

    aput p3, v0, v5

    .line 78
    invoke-static {v10, v0}, Lk0/qt;->y0(I[I)V

    :goto_2
    const/16 p3, 0x21

    new-array v0, v6, [I

    shr-int/lit8 v1, v7, 0x7

    and-int/2addr v1, v6

    aput v1, v0, v5

    .line 79
    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x10

    new-array v0, v6, [I

    shr-int/lit8 v1, v7, 0x6

    and-int/2addr v1, v6

    aput v1, v0, v5

    .line 80
    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x36

    new-array v0, v6, [I

    shr-int/lit8 v1, v7, 0x5

    and-int/2addr v1, v6

    aput v1, v0, v5

    .line 81
    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x25

    new-array v0, v6, [I

    shr-int/lit8 v1, v7, 0x0

    and-int/2addr v1, v6

    aput v1, v0, v5

    .line 82
    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p2, p2, 0x7

    .line 83
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    mul-int/2addr p1, v2

    const/16 p2, 0x190

    if-ge p1, p2, :cond_12

    rsub-int p1, p1, 0x190

    rsub-int p1, p1, 0x3e8

    goto :goto_3

    :cond_12
    add-int/lit16 p1, p1, -0x190

    add-int/lit16 p1, p1, 0x3e8

    .line 84
    :goto_3
    invoke-static {p1}, Lu0/d;->A3(I)V

    goto/16 :goto_7

    :cond_13
    const/16 p3, 0x8b

    new-array v0, v6, [I

    add-int/lit8 v1, p2, 0x2

    .line 85
    aget-byte v2, p1, v1

    shr-int/2addr v2, v5

    and-int/2addr v2, v6

    aput v2, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x8c

    new-array v0, v6, [I

    .line 86
    aget-byte v1, p1, v1

    shr-int/2addr v1, v6

    and-int/2addr v1, v6

    aput v1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x8d

    new-array v0, v6, [I

    add-int/lit8 v1, p2, 0x3

    .line 87
    aget-byte v1, p1, v1

    shr-int/2addr v1, v7

    and-int/2addr v1, v11

    aput v1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x8e

    new-array v0, v6, [I

    add-int/lit8 v1, p2, 0x4

    .line 88
    aget-byte v2, p1, v1

    shr-int/2addr v2, v7

    and-int/2addr v2, v11

    aput v2, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x8f

    new-array v0, v6, [I

    .line 89
    aget-byte v1, p1, v1

    shr-int/2addr v1, v5

    and-int/2addr v1, v11

    aput v1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x90

    new-array v0, v6, [I

    add-int/lit8 v1, p2, 0x6

    .line 90
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v9

    add-int/lit8 v2, p2, 0x5

    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x91

    new-array v0, v6, [I

    add-int/lit8 v1, p2, 0x8

    .line 91
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v9

    add-int/lit8 v2, p2, 0x7

    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x92

    new-array v0, v6, [I

    add-int/lit8 v1, p2, 0x9

    .line 92
    aget-byte v1, p1, v1

    and-int/2addr v1, v3

    aput v1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x93

    new-array v0, v6, [I

    add-int/lit8 v1, p2, 0xa

    .line 93
    aget-byte v1, p1, v1

    and-int/2addr v1, v3

    aput v1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x94

    new-array v0, v6, [I

    add-int/lit8 v1, p2, 0xb

    .line 94
    aget-byte v1, p1, v1

    and-int/2addr v1, v3

    aput v1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x95

    new-array v0, v6, [I

    add-int/lit8 v1, p2, 0xc

    .line 95
    aget-byte v1, p1, v1

    and-int/2addr v1, v3

    aput v1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x96

    new-array v0, v6, [I

    add-int/lit8 v1, p2, 0xd

    .line 96
    aget-byte v1, p1, v1

    and-int/2addr v1, v3

    aput v1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x97

    new-array v0, v6, [I

    add-int/2addr p2, v10

    .line 97
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    aput p1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_14
    const/16 p3, 0x408

    new-array v0, v6, [I

    add-int/lit8 v1, p2, 0x3

    .line 98
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v9

    add-int/2addr p2, v8

    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    or-int/2addr p1, v1

    aput p1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_15
    add-int/2addr p2, v8

    .line 99
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    const-string p2, "persist.syu.reversefrontdoor"

    .line 100
    invoke-static {p2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_16

    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v6

    aput p3, p2, v5

    .line 101
    invoke-static {v8, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v6

    aput p3, p2, v5

    .line 102
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_16
    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v6

    aput p3, p2, v5

    .line 103
    invoke-static {v8, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v6

    aput p3, p2, v5

    .line 104
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    :goto_4
    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v6

    aput p3, p2, v5

    .line 105
    invoke-static {v7, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v6

    aput p3, p2, v5

    .line 106
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/2addr p1, v4

    and-int/2addr p1, v6

    aput p1, p2, v5

    .line 107
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_17
    add-int/lit8 p3, p2, 0x2

    .line 108
    aget-byte p3, p1, p3

    add-int/2addr p2, v4

    .line 109
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 110
    iput p2, p0, Lk0/lf;->c:I

    move p2, v5

    .line 111
    :goto_5
    iget-object p3, p0, Lk0/lf;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_19

    .line 112
    iget v0, p0, Lk0/lf;->c:I

    aget-object v1, p3, p2

    aget v1, v1, v5

    if-ne v0, v1, :cond_18

    if-eqz v0, :cond_19

    .line 113
    iput p2, p0, Lk0/lf;->b:I

    goto :goto_6

    :cond_18
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_19
    :goto_6
    and-int/2addr p1, v3

    if-ne p1, v6, :cond_1a

    .line 114
    array-length p1, p3

    if-ge p2, p1, :cond_1e

    .line 115
    aget-object p1, p3, p2

    aget p1, p1, v6

    invoke-static {p1, v5}, Ll0/b0;->l0(II)V

    goto :goto_7

    :cond_1a
    if-nez p1, :cond_1e

    .line 116
    iget p1, p0, Lk0/lf;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_1b

    if-eq p1, v3, :cond_1b

    .line 117
    aget-object p1, p3, p1

    aget p1, p1, v6

    invoke-static {p1, v6}, Ll0/b0;->l0(II)V

    .line 118
    :cond_1b
    iput v3, p0, Lk0/lf;->b:I

    goto :goto_7

    :cond_1c
    add-int/lit8 p3, p2, 0x2

    .line 119
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x3

    .line 120
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->S2(I)V

    add-int/lit8 p3, p2, 0x4

    .line 121
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/2addr p2, v2

    .line 122
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    invoke-static {p1}, Ll0/c0;->E0(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->U2(I)V

    goto :goto_7

    :cond_1d
    add-int/lit8 p3, p2, 0x2

    .line 123
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->D2(I)V

    add-int/lit8 p3, p2, 0x3

    .line 124
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->E2(I)V

    add-int/lit8 p3, p2, 0x4

    .line 125
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->F2(I)V

    add-int/2addr p2, v2

    .line 126
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    invoke-static {p1}, Ll0/c0;->E0(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->G2(I)V

    :cond_1e
    :goto_7
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/lf;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/lf;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/lf;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0xa1

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

    const/4 p3, 0x4

    const/4 p4, 0x3

    const/16 v0, 0xe3

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v4, :cond_1

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, v1, [I

    aput v0, p1, v2

    const/16 v0, 0x90

    aput v0, p1, v4

    aput v3, p1, v3

    .line 1
    aget v0, p2, v2

    aput v0, p1, p4

    aget p2, p2, v4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array p1, v1, [I

    aput v0, p1, v2

    const/16 v0, 0x84

    aput v0, p1, v4

    aput v3, p1, v3

    .line 2
    aget v0, p2, v2

    aput v0, p1, p4

    aget p2, p2, v4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array p1, v1, [I

    aput v0, p1, v2

    const/16 v0, 0xe0

    aput v0, p1, v4

    aput v3, p1, v3

    .line 3
    aget v0, p2, v2

    aput v0, p1, p4

    aget p2, p2, v4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method
