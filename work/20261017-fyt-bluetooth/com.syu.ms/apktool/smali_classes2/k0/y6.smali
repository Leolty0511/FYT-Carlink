.class public Lk0/y6;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static h:I


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Z

.field public f:Lo1/g0;

.field public final g:I


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
    iput v0, p0, Lk0/y6;->c:I

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

    const/4 v5, 0x4

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_5

    const/4 v5, 0x5

    aput-object v3, v1, v5

    new-array v2, v2, [I

    fill-array-data v2, :array_6

    const/4 v3, 0x6

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/y6;->d:[[I

    .line 4
    iput-boolean v0, p0, Lk0/y6;->e:Z

    .line 5
    new-instance v0, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lk0/y6;->f:Lo1/g0;

    .line 6
    iput v4, p0, Lk0/y6;->g:I

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
        0x2
    .end array-data
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
    sget v0, Lk0/nt;->c:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    const/4 v4, 0x0

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput-object v4, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 3
    iput v2, v0, Lk0/mt;->e:I

    .line 4
    iput v3, v0, Lk0/mt;->f:I

    .line 5
    iput v3, v0, Lk0/mt;->g:I

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput-object v4, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 7
    iput v2, v0, Lk0/mt;->e:I

    .line 8
    iput v3, v0, Lk0/mt;->f:I

    .line 9
    iput v3, v0, Lk0/mt;->g:I

    .line 10
    iget-object v0, p0, Lk0/y6;->f:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 11
    iget-object v0, p0, Lk0/y6;->f:Lo1/g0;

    invoke-virtual {v0, v2, v3}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lk0/y6;->a3(I)V

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 13
    iput v2, v0, Lk0/mt;->e:I

    .line 14
    iput v3, v0, Lk0/mt;->f:I

    .line 15
    iput v3, v0, Lk0/mt;->g:I

    :goto_0
    return-void
.end method

.method public U2([BII)V
    .locals 7

    .line 1
    aget-byte p3, p1, p2

    const/16 v0, 0x20

    const/16 v1, 0xff

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq p3, v0, :cond_a

    const/16 v0, 0x29

    if-eq p3, v0, :cond_9

    const/16 v0, 0x33

    const/4 v5, 0x2

    if-eq p3, v0, :cond_8

    const/16 v0, 0x7d

    const/4 v6, 0x4

    if-eq p3, v0, :cond_3

    const/16 v0, 0x24

    if-eq p3, v0, :cond_1

    const/16 v0, 0x25

    if-eq p3, v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/16 p3, 0x62

    new-array v0, v4, [I

    add-int/2addr p2, v5

    .line 2
    aget-byte p1, p1, p2

    and-int/2addr p1, v4

    aput p1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_3

    :cond_1
    add-int/2addr p2, v5

    .line 3
    aget-byte p1, p1, p2

    const-string p2, "persist.syu.reversefrontdoor"

    .line 4
    invoke-static {p2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_2

    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v4

    aput p3, p2, v3

    .line 5
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v4

    aput p3, p2, v3

    .line 6
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_2
    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v4

    aput p3, p2, v3

    .line 7
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v4

    aput p3, p2, v3

    .line 8
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v4

    aput p3, p2, v3

    .line 9
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v4

    aput p3, p2, v3

    .line 10
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x3

    and-int/2addr p3, v4

    aput p3, p2, v3

    const/4 p3, 0x5

    .line 11
    invoke-static {p3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v4, [I

    shr-int/2addr p1, v5

    and-int/2addr p1, v4

    aput p1, p2, v3

    .line 12
    invoke-static {v3, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_3

    :cond_3
    add-int/lit8 p3, p2, 0x2

    .line 13
    aget-byte p3, p1, p3

    and-int/2addr p3, v1

    if-eq p3, v4, :cond_6

    const/16 v0, 0x8

    if-eq p3, v2, :cond_5

    if-eq p3, v0, :cond_4

    goto/16 :goto_3

    :cond_4
    add-int/lit8 p3, p2, 0x3

    .line 14
    aget-byte p3, p1, p3

    add-int/2addr p2, v6

    .line 15
    aget-byte p1, p1, p2

    const/16 p2, 0x21c

    .line 16
    invoke-static {p3, p1, v4, p2}, Lk0/qt;->i(IIZI)V

    .line 17
    iput-boolean v4, p0, Lk0/y6;->e:Z

    goto/16 :goto_3

    :cond_5
    add-int/lit8 p3, p2, 0x4

    .line 18
    aget-byte p3, p1, p3

    shl-int/2addr p3, v0

    const v0, 0xff00

    and-int/2addr p3, v0

    add-int/2addr p2, v2

    aget-byte p1, p1, p2

    and-int/2addr p1, v1

    or-int/2addr p1, p3

    div-int/lit8 p1, p1, 0x64

    const/16 p2, 0x407

    new-array p3, v4, [I

    aput p1, p3, v3

    .line 19
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    .line 20
    sget-object p2, Lk0/nt;->f:[Lo1/x;

    const/16 p3, 0x419

    new-array v0, v5, [I

    aput v4, v0, v3

    aput p1, v0, v4

    const/4 p1, 0x0

    invoke-static {p2, p3, v0, p1, p1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_6
    const-string p3, "persist.fyt.leftrightlighttype"

    .line 21
    invoke-static {p3, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p3

    if-nez p3, :cond_7

    add-int/2addr p2, v2

    .line 22
    aget-byte p3, p1, p2

    shr-int/2addr p3, v2

    and-int/2addr p3, v4

    aget-byte p1, p1, p2

    shr-int/2addr p1, v6

    and-int/2addr p1, v4

    invoke-static {p3, p1, v3}, Ll0/c0;->b(III)V

    goto/16 :goto_3

    :cond_7
    add-int/2addr p2, v2

    .line 23
    aget-byte p3, p1, p2

    shr-int/2addr p3, v2

    and-int/2addr p3, v4

    aget-byte p1, p1, p2

    shr-int/2addr p1, v6

    and-int/2addr p1, v4

    invoke-static {p3, p1, v3}, Ll0/c0;->a(III)V

    goto/16 :goto_3

    :cond_8
    add-int/2addr p2, v5

    .line 24
    aget-byte p1, p1, p2

    const/16 p2, 0x3f5

    new-array p3, v4, [I

    add-int/2addr p1, v4

    aput p1, p3, v3

    .line 25
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    .line 26
    :cond_9
    iget-boolean p3, p0, Lk0/y6;->e:Z

    if-nez p3, :cond_f

    add-int/lit8 p3, p2, 0x2

    .line 27
    aget-byte p3, p1, p3

    add-int/2addr p2, v2

    aget-byte p1, p1, p2

    const/16 p2, 0x1f00

    const/16 v0, 0x1400

    invoke-static {p3, p1, p2, v3, v0}, Lk0/qt;->m(IIIZI)V

    goto :goto_3

    .line 28
    :cond_a
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_f

    add-int/lit8 p3, p2, 0x2

    .line 29
    aget-byte p3, p1, p3

    add-int/2addr p2, v2

    .line 30
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 31
    iput p2, p0, Lk0/y6;->c:I

    move p2, v3

    .line 32
    :goto_1
    iget-object p3, p0, Lk0/y6;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_c

    .line 33
    iget v0, p0, Lk0/y6;->c:I

    aget-object v2, p3, p2

    aget v2, v2, v3

    if-ne v0, v2, :cond_b

    if-eqz v0, :cond_c

    .line 34
    iput p2, p0, Lk0/y6;->b:I

    goto :goto_2

    :cond_b
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_c
    :goto_2
    and-int/2addr p1, v1

    if-ne p1, v4, :cond_d

    .line 35
    array-length p1, p3

    if-ge p2, p1, :cond_f

    .line 36
    aget-object p1, p3, p2

    aget p1, p1, v4

    invoke-static {p1, v3}, Ll0/b0;->l0(II)V

    goto :goto_3

    :cond_d
    if-nez p1, :cond_f

    .line 37
    iget p1, p0, Lk0/y6;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_e

    if-eq p1, v1, :cond_e

    .line 38
    aget-object p1, p3, p1

    aget p1, p1, v4

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    .line 39
    :cond_e
    iput v1, p0, Lk0/y6;->b:I

    :cond_f
    :goto_3
    return-void
.end method

.method public W2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk0/y6;->f:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x63

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
    .locals 1

    const/4 p3, 0x0

    if-eqz p1, :cond_1

    const/16 p4, 0x3ed

    if-eq p1, p4, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    aget p1, p2, p3

    invoke-virtual {p0, p1}, Lk0/y6;->a3(I)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 2
    array-length p1, p2

    if-lez p1, :cond_2

    const/4 p1, 0x4

    new-array p1, p1, [I

    const/16 p4, 0xe3

    aput p4, p1, p3

    const/16 p4, 0x82

    const/4 v0, 0x1

    aput p4, p1, v0

    const/4 p4, 0x2

    aput v0, p1, p4

    const/4 p4, 0x3

    .line 3
    aget p2, p2, p3

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a3(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lk0/y6;->f:Lo1/g0;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo1/g0;->b(II)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 2
    iget-object v0, p0, Lk0/y6;->f:Lo1/g0;

    sget v3, Lk0/y6;->h:I

    invoke-virtual {v0, v1, v3}, Lo1/g0;->g(II)V

    :cond_0
    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v3, 0xe3

    aput v3, v0, v2

    const/16 v2, 0xc1

    aput v2, v0, v1

    const/4 v2, 0x2

    aput v2, v0, v2

    const/4 v2, 0x3

    aput v1, v0, v2

    const/4 v1, 0x4

    aput p1, v0, v1

    .line 3
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method
