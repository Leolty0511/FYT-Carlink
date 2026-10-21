.class public Lk0/i3;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static f:I

.field public static g:I


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:[[I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0xff

    .line 2
    iput v0, p0, Lk0/i3;->d:I

    const/16 v0, 0xc

    new-array v0, v0, [[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 3
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v2, v1, [I

    fill-array-data v2, :array_3

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_4

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_5

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_6

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_7

    const/4 v3, 0x7

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_8

    const/16 v3, 0x8

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_9

    const/16 v3, 0x9

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_a

    const/16 v3, 0xa

    aput-object v2, v0, v3

    new-array v1, v1, [I

    fill-array-data v1, :array_b

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iput-object v0, p0, Lk0/i3;->e:[[I

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
        0xa
        0x2
    .end array-data

    :array_8
    .array-data 4
        0xb
        -0x1
    .end array-data

    :array_9
    .array-data 4
        0xc
        -0x1
    .end array-data

    :array_a
    .array-data 4
        0xd
        0x4
    .end array-data

    :array_b
    .array-data 4
        0xe
        0x3
    .end array-data
.end method

.method public static a3(I)V
    .locals 4

    .line 1
    sput p0, Lk0/i3;->f:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    const/4 v2, 0x2

    if-ne p0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    .line 2
    :goto_1
    sget v3, Lk0/i3;->g:I

    if-eq v3, p0, :cond_3

    const/16 p0, 0x3f7

    if-ne v2, v1, :cond_2

    new-array v2, v1, [I

    aput v1, v2, v0

    .line 3
    invoke-static {p0, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_2
    new-array v1, v1, [I

    aput v0, v1, v0

    .line 4
    invoke-static {p0, v1}, Lk0/qt;->y0(I[I)V

    .line 5
    :cond_3
    :goto_2
    sget p0, Lk0/i3;->f:I

    sput p0, Lk0/i3;->g:I

    return-void
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public S2()V
    .locals 0

    return-void
.end method

.method public U2([BII)V
    .locals 5

    add-int/lit8 v0, p2, 0x1

    .line 1
    aget-byte v0, p1, v0

    const/16 v1, -0x4f

    const/16 v2, 0xff

    if-eq v0, v1, :cond_7

    const/16 v1, -0x10

    if-eq v0, v1, :cond_6

    const/16 p3, 0x72

    if-eq v0, p3, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_8

    add-int/lit8 p3, p2, 0x4

    .line 3
    aget-byte p3, p1, p3

    and-int/2addr p3, v2

    iput p3, p0, Lk0/i3;->c:I

    const/4 p3, 0x0

    move v0, p3

    .line 4
    :goto_0
    iget-object v1, p0, Lk0/i3;->e:[[I

    array-length v3, v1

    if-ge v0, v3, :cond_2

    .line 5
    iget v3, p0, Lk0/i3;->c:I

    aget-object v4, v1, v0

    aget v4, v4, p3

    if-ne v3, v4, :cond_1

    if-eqz v3, :cond_2

    .line 6
    iput v0, p0, Lk0/i3;->b:I

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_2
    :goto_1
    iget v3, p0, Lk0/i3;->c:I

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 8
    array-length v2, v1

    if-ge v0, v2, :cond_5

    .line 9
    aget-object v0, v1, v0

    aget v0, v0, v4

    invoke-static {v0, p3}, Ll0/b0;->l0(II)V

    goto :goto_2

    .line 10
    :cond_3
    iget v0, p0, Lk0/i3;->b:I

    array-length v3, v1

    if-ge v0, v3, :cond_4

    if-eq v0, v2, :cond_4

    .line 11
    aget-object v0, v1, v0

    aget v0, v0, v4

    invoke-static {v0, v4}, Ll0/b0;->l0(II)V

    .line 12
    :cond_4
    iput v2, p0, Lk0/i3;->b:I

    :cond_5
    :goto_2
    add-int/lit8 v0, p2, 0x7

    .line 13
    aget-byte v0, p1, v0

    add-int/lit8 p2, p2, 0x6

    aget-byte p1, p1, p2

    const/16 p2, 0x1e78

    invoke-static {v0, p1, p3, p2}, Lk0/qt;->l(IIZI)V

    goto :goto_3

    .line 14
    :cond_6
    new-instance v0, Ljava/lang/String;

    add-int/lit8 p2, p2, 0x2

    add-int/lit8 p3, p3, -0x2

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_3

    .line 15
    :cond_7
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_8

    add-int/lit8 p2, p2, 0x2

    .line 16
    aget-byte p1, p1, p2

    and-int/2addr p1, v2

    invoke-static {p1}, Lk0/i3;->a3(I)V

    :cond_8
    :goto_3
    return-void
.end method

.method public W2()V
    .locals 0

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
