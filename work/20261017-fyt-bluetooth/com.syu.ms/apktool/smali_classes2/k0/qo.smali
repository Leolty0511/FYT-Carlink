.class public Lk0/qo;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/qo;->c:I

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

    const/4 v3, 0x6

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_7

    const/4 v2, 0x7

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/qo;->d:[[I

    return-void

    :array_0
    .array-data 4
        0x11
        0x8
    .end array-data

    :array_1
    .array-data 4
        0x22
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x33
        0x12
    .end array-data

    :array_3
    .array-data 4
        0x21
        0x7
    .end array-data

    :array_4
    .array-data 4
        0x31
        0xc
    .end array-data

    :array_5
    .array-data 4
        0x41
        0x10
    .end array-data

    :array_6
    .array-data 4
        0x88
        0x3
    .end array-data

    :array_7
    .array-data 4
        0x99
        0x4
    .end array-data
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public S2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    .line 3
    iput v1, v0, Lk0/mt;->f:I

    .line 4
    iput v1, v0, Lk0/mt;->g:I

    .line 5
    iput v1, v0, Lk0/mt;->o:I

    .line 6
    iput v1, v0, Lk0/mt;->b:I

    .line 7
    iput v1, v0, Lk0/mt;->c:I

    .line 8
    iput v1, v0, Lk0/mt;->d:I

    return-void
.end method

.method public U2([BII)V
    .locals 9

    .line 1
    aget-byte p3, p1, p2

    const/16 v0, 0x68

    if-eq p3, v0, :cond_0

    goto/16 :goto_2

    :cond_0
    add-int/lit8 p3, p2, 0x2

    .line 2
    aget-byte p3, p1, p3

    const/4 v0, 0x3

    add-int/2addr p2, v0

    .line 3
    aget-byte p1, p1, p2

    const/16 p2, 0xff

    and-int/2addr p3, p2

    .line 4
    iput p3, p0, Lk0/qo;->c:I

    const/4 p3, 0x0

    move v1, p3

    .line 5
    :goto_0
    iget-object v2, p0, Lk0/qo;->d:[[I

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 6
    iget v3, p0, Lk0/qo;->c:I

    aget-object v4, v2, v1

    aget v4, v4, p3

    if-ne v3, v4, :cond_1

    if-eqz v3, :cond_2

    .line 7
    iput v1, p0, Lk0/qo;->b:I

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_2
    :goto_1
    iget v3, p0, Lk0/qo;->c:I

    const/16 v4, 0x31

    const/4 v5, 0x5

    const/16 v6, 0x12

    const/16 v7, 0x1a

    const/4 v8, 0x1

    if-eq v3, v4, :cond_a

    const/16 v4, 0x33

    if-eq v3, v4, :cond_7

    const/16 v0, 0x41

    if-eq v3, v0, :cond_5

    and-int/2addr p1, p2

    if-ne p1, v8, :cond_3

    .line 9
    array-length p1, v2

    if-ge v1, p1, :cond_d

    .line 10
    aget-object p1, v2, v1

    aget p1, p1, v8

    invoke-static {p1, p3}, Ll0/b0;->l0(II)V

    goto/16 :goto_2

    :cond_3
    if-nez p1, :cond_d

    .line 11
    iget p1, p0, Lk0/qo;->b:I

    array-length p3, v2

    if-ge p1, p3, :cond_4

    if-eq p1, p2, :cond_4

    .line 12
    aget-object p1, v2, p1

    aget p1, p1, v8

    invoke-static {p1, v8}, Ll0/b0;->l0(II)V

    .line 13
    :cond_4
    iput p2, p0, Lk0/qo;->b:I

    goto :goto_2

    :cond_5
    and-int/2addr p1, p2

    if-ne p1, v8, :cond_d

    .line 14
    sget p1, Lu0/b;->D:I

    if-eq p1, v8, :cond_6

    const/16 p1, 0x10

    .line 15
    invoke-static {p1, p3}, Ll0/b0;->l0(II)V

    .line 16
    invoke-static {p1, v8}, Ll0/b0;->l0(II)V

    goto :goto_2

    :cond_6
    const/16 p1, 0x27

    .line 17
    invoke-static {p1, p3}, Ll0/b0;->l0(II)V

    .line 18
    invoke-static {p1, v8}, Ll0/b0;->l0(II)V

    goto :goto_2

    :cond_7
    and-int/2addr p1, p2

    if-ne p1, v8, :cond_d

    .line 19
    sget p1, Lk0/nt;->c:I

    if-ne p1, v4, :cond_8

    const/16 p1, 0x18

    .line 20
    invoke-static {p1, p3}, Ll0/b0;->l0(II)V

    .line 21
    invoke-static {p1, v8}, Ll0/b0;->l0(II)V

    goto :goto_2

    .line 22
    :cond_8
    sget p1, Lh0/c;->E:I

    if-eq p1, v0, :cond_9

    if-eq p1, v5, :cond_9

    .line 23
    invoke-static {v6, p3}, Ll0/b0;->l0(II)V

    .line 24
    invoke-static {v6, v8}, Ll0/b0;->l0(II)V

    goto :goto_2

    .line 25
    :cond_9
    invoke-static {v7, p3}, Ll0/b0;->l0(II)V

    .line 26
    invoke-static {v7, v8}, Ll0/b0;->l0(II)V

    goto :goto_2

    :cond_a
    and-int/2addr p1, p2

    if-ne p1, v8, :cond_d

    .line 27
    sget p1, Lh0/c;->E:I

    if-eq p1, v0, :cond_c

    const/4 p2, 0x4

    if-eq p1, p2, :cond_b

    if-eq p1, v5, :cond_c

    const/16 p1, 0xc

    .line 28
    invoke-static {p1, p3}, Ll0/b0;->l0(II)V

    .line 29
    invoke-static {p1, v8}, Ll0/b0;->l0(II)V

    goto :goto_2

    .line 30
    :cond_b
    invoke-static {v6, p3}, Ll0/b0;->l0(II)V

    .line 31
    invoke-static {v6, v8}, Ll0/b0;->l0(II)V

    goto :goto_2

    .line 32
    :cond_c
    invoke-static {v7, p3}, Ll0/b0;->l0(II)V

    .line 33
    invoke-static {v7, v8}, Ll0/b0;->l0(II)V

    :cond_d
    :goto_2
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
