.class public Lk0/d6;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static c:I


# instance fields
.field public b:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    .line 2
    new-instance v0, Lk0/d6$a;

    invoke-direct {v0, p0}, Lk0/d6$a;-><init>(Lk0/d6;)V

    iput-object v0, p0, Lk0/d6;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public S2()V
    .locals 1

    .line 1
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ll0/g;->i()V

    .line 3
    iget-object v0, p0, Lk0/d6;->b:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public U2([BII)V
    .locals 1

    add-int/lit8 p3, p2, 0x3

    .line 1
    aget-byte p3, p1, p3

    const/16 v0, -0xd

    if-eq p3, v0, :cond_2

    const/16 v0, -0xc

    if-eq p3, v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_4

    add-int/lit8 p2, p2, 0x5

    .line 3
    aget-byte p1, p1, p2

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 4
    sput p1, Lk0/d6;->c:I

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 5
    sput p1, Lk0/d6;->c:I

    goto :goto_1

    .line 6
    :cond_2
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_4

    add-int/lit8 p2, p2, 0x4

    .line 7
    aget-byte p3, p1, p2

    and-int/lit16 p3, p3, 0xff

    const/16 v0, 0x7a

    if-eq p3, v0, :cond_4

    sget p3, Lk0/d6;->c:I

    if-eqz p3, :cond_4

    .line 8
    aget-byte p3, p1, p2

    and-int/lit16 p3, p3, 0x80

    if-eqz p3, :cond_3

    .line 9
    aget-byte p1, p1, p2

    and-int/lit8 p1, p1, 0x7f

    mul-int/lit8 p1, p1, 0xa

    rsub-int p1, p1, 0x3e8

    goto :goto_0

    .line 10
    :cond_3
    aget-byte p1, p1, p2

    and-int/lit8 p1, p1, 0x7f

    mul-int/lit8 p1, p1, 0xa

    add-int/lit16 p1, p1, 0x3e8

    :goto_0
    const/16 p2, 0x258

    if-le p1, p2, :cond_4

    .line 11
    invoke-static {p1}, Lu0/d;->A3(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public V2()V
    .locals 5

    .line 1
    invoke-static {}, Ll0/g;->g()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_5

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ll0/g;->h(I)B

    move-result v1

    const/16 v2, 0xaa

    const/4 v3, 0x1

    if-ne v1, v2, :cond_4

    move v1, v0

    move v2, v1

    :goto_0
    const/4 v4, 0x5

    if-ge v1, v4, :cond_1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v1}, Ll0/g;->h(I)B

    move-result v2

    goto :goto_1

    .line 4
    :cond_0
    invoke-static {v1}, Ll0/g;->h(I)B

    move-result v4

    xor-int/2addr v2, v4

    int-to-byte v2, v2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {v1}, Ll0/g;->h(I)B

    move-result v1

    if-ne v2, v1, :cond_3

    move v1, v0

    :goto_2
    const/4 v2, 0x4

    if-ge v1, v2, :cond_2

    .line 6
    sget-object v2, Ll0/g;->g:[B

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ll0/g;->h(I)B

    move-result v4

    aput-byte v4, v2, v1

    goto :goto_2

    .line 7
    :cond_2
    sget-object v2, Ll0/g;->g:[B

    const/4 v4, 0x2

    aput-byte v4, v2, v0

    .line 8
    sget v2, Ll0/g;->c:I

    add-int/lit8 v4, v1, 0x2

    add-int/2addr v2, v4

    sget v4, Ll0/g;->e:I

    rem-int/2addr v2, v4

    sput v2, Ll0/g;->c:I

    .line 9
    sget-object v2, Ll0/g;->g:[B

    aget-byte v4, v2, v3

    add-int/2addr v1, v3

    .line 10
    invoke-virtual {p0, v2, v0, v1}, Lk0/d6;->U2([BII)V

    goto :goto_3

    .line 11
    :cond_3
    sget v0, Ll0/g;->c:I

    add-int/2addr v0, v3

    sput v0, Ll0/g;->c:I

    .line 12
    sget v1, Ll0/g;->e:I

    rem-int/2addr v0, v1

    sput v0, Ll0/g;->c:I

    goto :goto_3

    .line 13
    :cond_4
    sget v0, Ll0/g;->c:I

    add-int/2addr v0, v3

    sput v0, Ll0/g;->c:I

    .line 14
    sget v1, Ll0/g;->e:I

    rem-int/2addr v0, v1

    sput v0, Ll0/g;->c:I

    :cond_5
    :goto_3
    return-void
.end method

.method public W2()V
    .locals 1

    .line 1
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lk0/d6;->b:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    :cond_0
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
