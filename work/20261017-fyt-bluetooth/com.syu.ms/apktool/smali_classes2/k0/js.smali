.class public Lk0/js;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:Ljava/lang/Runnable;

.field public c:I

.field public d:Ljava/lang/Runnable;

.field public e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    .line 2
    new-instance v0, Lk0/js$a;

    invoke-direct {v0, p0}, Lk0/js$a;-><init>(Lk0/js;)V

    iput-object v0, p0, Lk0/js;->b:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lk0/js;->c:I

    .line 4
    new-instance v0, Lk0/js$b;

    invoke-direct {v0, p0}, Lk0/js$b;-><init>(Lk0/js;)V

    iput-object v0, p0, Lk0/js;->d:Ljava/lang/Runnable;

    .line 5
    new-instance v0, Lk0/js$c;

    invoke-direct {v0, p0}, Lk0/js$c;-><init>(Lk0/js;)V

    iput-object v0, p0, Lk0/js;->e:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public O2([I)V
    .locals 7

    if-eqz p1, :cond_e

    .line 1
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    aget v2, p1, v0

    .line 3
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v3

    sget-object v4, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Air codeCmd = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, p1, v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "      value = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    aget v6, p1, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    const/16 v3, 0x21

    const/16 v4, 0xa

    if-eq v2, v3, :cond_c

    const/16 v3, 0x22

    if-eq v2, v3, :cond_a

    const/16 v3, 0x26

    if-eq v2, v3, :cond_8

    const/16 v3, 0x27

    if-eq v2, v3, :cond_5

    const/16 v3, 0x29

    if-eq v2, v3, :cond_3

    const/16 v1, 0x2a

    if-eq v2, v1, :cond_1

    goto/16 :goto_0

    .line 4
    :cond_1
    aget p1, p1, v0

    if-eqz p1, :cond_2

    const/4 p1, 0x5

    .line 5
    invoke-virtual {p0, p1}, Lk0/js;->a3(I)V

    goto/16 :goto_0

    :cond_2
    const/4 p1, 0x4

    .line 6
    invoke-virtual {p0, p1}, Lk0/js;->a3(I)V

    goto/16 :goto_0

    .line 7
    :cond_3
    aget p1, p1, v0

    if-eqz p1, :cond_4

    const/4 p1, 0x3

    .line 8
    invoke-virtual {p0, p1}, Lk0/js;->a3(I)V

    goto/16 :goto_0

    .line 9
    :cond_4
    invoke-virtual {p0, v1}, Lk0/js;->a3(I)V

    goto/16 :goto_0

    .line 10
    :cond_5
    aget p1, p1, v0

    const/4 v0, -0x2

    if-eq p1, v0, :cond_7

    const/4 v0, -0x1

    if-eq p1, v0, :cond_6

    goto :goto_0

    .line 11
    :cond_6
    invoke-virtual {p0, v4}, Lk0/js;->a3(I)V

    goto :goto_0

    :cond_7
    const/16 p1, 0x9

    .line 12
    invoke-virtual {p0, p1}, Lk0/js;->a3(I)V

    goto :goto_0

    .line 13
    :cond_8
    aget p1, p1, v0

    const/16 v1, 0x19

    const/16 v2, 0xc

    if-eqz p1, :cond_9

    .line 14
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-nez p1, :cond_e

    .line 15
    invoke-virtual {p0, v1}, Lk0/js;->a3(I)V

    goto :goto_0

    .line 16
    :cond_9
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-ne p1, v0, :cond_e

    .line 17
    invoke-virtual {p0, v1}, Lk0/js;->a3(I)V

    goto :goto_0

    .line 18
    :cond_a
    aget p1, p1, v0

    const/16 v1, 0x17

    const/16 v2, 0xb

    if-eqz p1, :cond_b

    .line 19
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-nez p1, :cond_e

    .line 20
    invoke-virtual {p0, v1}, Lk0/js;->a3(I)V

    goto :goto_0

    .line 21
    :cond_b
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-ne p1, v0, :cond_e

    .line 22
    invoke-virtual {p0, v1}, Lk0/js;->a3(I)V

    goto :goto_0

    .line 23
    :cond_c
    aget p1, p1, v0

    if-eqz p1, :cond_d

    .line 24
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v4

    if-nez p1, :cond_e

    .line 25
    invoke-virtual {p0, v0}, Lk0/js;->a3(I)V

    goto :goto_0

    .line 26
    :cond_d
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v4

    if-ne p1, v0, :cond_e

    .line 27
    invoke-virtual {p0, v0}, Lk0/js;->a3(I)V

    :cond_e
    :goto_0
    return-void
.end method

.method public S2()V
    .locals 3

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/js;->d:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 3
    iput v2, v0, Lk0/mt;->e:I

    .line 4
    iput v2, v0, Lk0/mt;->f:I

    .line 5
    iput v2, v0, Lk0/mt;->i:I

    const/4 v1, 0x0

    .line 6
    iput v1, v0, Lk0/mt;->g:I

    .line 7
    iput v1, v0, Lk0/mt;->b:I

    .line 8
    iput v1, v0, Lk0/mt;->c:I

    .line 9
    iput v1, v0, Lk0/mt;->d:I

    .line 10
    iput v1, v0, Lk0/mt;->o:I

    .line 11
    iput v1, v0, Lk0/mt;->h:I

    .line 12
    iput v1, v0, Lk0/mt;->p:I

    .line 13
    iget-object v0, p0, Lk0/js;->b:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 14
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/16 v1, 0xd

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, v0, Lk0/mt;->m:[I

    return-void

    :array_0
    .array-data 4
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x27
        0x29
        0x2a
        0x37
        0x38
        0x43
    .end array-data
.end method

.method public U2([BII)V
    .locals 7

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, 0x24

    const/4 v2, 0x2

    const/4 v3, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v1, :cond_8

    const/16 v1, 0x30

    if-eq v0, v1, :cond_7

    const/16 p3, 0x28

    if-eq v0, p3, :cond_1

    const/16 p3, 0x29

    if-eq v0, p3, :cond_0

    goto/16 :goto_2

    :cond_0
    add-int/lit8 p3, p2, 0x3

    .line 2
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    add-int/2addr p2, v2

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    const/16 p2, 0x1a00

    invoke-static {p3, p1, v4, p2}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_2

    :cond_1
    const/16 p3, 0xa

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x2

    .line 3
    aget-byte v2, p1, v1

    shr-int/lit8 v2, v2, 0x7

    and-int/2addr v2, v5

    aput v2, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xb

    new-array v0, v5, [I

    .line 4
    aget-byte v2, p1, v1

    shr-int/lit8 v2, v2, 0x6

    and-int/2addr v2, v5

    aput v2, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xc

    new-array v0, v5, [I

    .line 5
    aget-byte v2, p1, v1

    shr-int/2addr v2, v3

    and-int/2addr v2, v5

    aput v2, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    .line 6
    aget-byte v0, p1, v1

    shr-int/2addr v0, v5

    and-int/2addr v0, v5

    aput v0, p3, v4

    const/16 v0, 0xf

    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x12

    new-array v1, v5, [I

    add-int/lit8 v2, p2, 0x3

    .line 7
    aget-byte v6, p1, v2

    shr-int/lit8 v6, v6, 0x7

    and-int/2addr v6, v5

    aput v6, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x13

    new-array v1, v5, [I

    .line 8
    aget-byte v6, p1, v2

    shr-int/lit8 v6, v6, 0x6

    and-int/2addr v6, v5

    aput v6, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x14

    new-array v1, v5, [I

    .line 9
    aget-byte v6, p1, v2

    shr-int/2addr v6, v3

    and-int/2addr v6, v5

    aput v6, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x4d

    new-array v1, v5, [I

    .line 10
    aget-byte v6, p1, v2

    shr-int/2addr v6, v3

    and-int/lit8 v6, v6, 0x7

    aput v6, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x15

    new-array v1, v5, [I

    .line 11
    aget-byte v2, p1, v2

    and-int/2addr v0, v2

    aput v0, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x4

    .line 12
    aget-byte v0, p1, p3

    and-int/lit16 v0, v0, 0xff

    add-int/2addr p2, v3

    .line 13
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    const-string v2, "persist.fyt.reversetemp"

    .line 14
    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 15
    aget-byte p2, p1, p2

    and-int/lit16 v0, p2, 0xff

    .line 16
    aget-byte p1, p1, p3

    and-int/lit16 v1, p1, 0xff

    :cond_2
    const/16 p1, 0x1f

    const/4 p2, -0x3

    const/4 p3, -0x2

    const/16 v2, 0x1b

    if-nez v0, :cond_3

    new-array v0, v5, [I

    aput p3, v0, v4

    .line 17
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_3
    if-ne v0, p1, :cond_4

    new-array v0, v5, [I

    aput p2, v0, v4

    .line 18
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_4
    new-array v6, v5, [I

    mul-int/2addr v0, v3

    add-int/lit16 v0, v0, 0xaf

    aput v0, v6, v4

    .line 19
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    :goto_0
    const/16 v0, 0x1c

    if-nez v1, :cond_5

    new-array p1, v5, [I

    aput p3, p1, v4

    .line 20
    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2

    :cond_5
    if-ne v1, p1, :cond_6

    new-array p1, v5, [I

    aput p2, p1, v4

    .line 21
    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_6
    new-array p1, v5, [I

    mul-int/2addr v1, v3

    add-int/lit16 v1, v1, 0xaf

    aput v1, p1, v4

    .line 22
    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    .line 23
    :cond_7
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    add-int/2addr p2, v2

    .line 24
    aget-byte p1, p1, p2

    const-string p2, "persist.syu.reversefrontdoor"

    .line 25
    invoke-static {p2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_9

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 26
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 27
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_9
    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 28
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 29
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    :goto_1
    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v5

    aput p3, p2, v4

    const/4 p3, 0x4

    .line 30
    invoke-static {p3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v5

    aput p3, p2, v4

    const/4 p3, 0x3

    .line 31
    invoke-static {p3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/2addr p1, p3

    and-int/2addr p1, v5

    aput p1, p2, v4

    .line 32
    invoke-static {v3, p2}, Lk0/qt;->y0(I[I)V

    :goto_2
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/js;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/js;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/js;->b:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x62

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

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 1
    array-length p1, p2

    if-lez p1, :cond_1

    const/4 p1, 0x5

    new-array p1, p1, [I

    const/16 p3, 0xe3

    const/4 p4, 0x0

    aput p3, p1, p4

    const/16 p3, -0x20

    const/4 v0, 0x1

    aput p3, p1, v0

    const/4 p3, 0x2

    aput p3, p1, p3

    const/4 p3, 0x3

    .line 2
    aget p4, p2, p4

    aput p4, p1, p3

    const/4 p3, 0x4

    aget p2, p2, v0

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final a3(I)V
    .locals 11

    const/4 v0, 0x5

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0xe3

    aput v3, v1, v2

    const/4 v4, 0x1

    const/16 v5, -0x20

    aput v5, v1, v4

    const/4 v6, 0x2

    aput v6, v1, v6

    const/4 v7, 0x3

    aput p1, v1, v7

    const/4 v8, 0x4

    aput v4, v1, v8

    .line 1
    invoke-static {v1}, Lz/k;->s([I)V

    const-wide/16 v9, 0x64

    .line 2
    invoke-static {v9, v10}, La/i;->a0(J)V

    new-array v0, v0, [I

    aput v3, v0, v2

    aput v5, v0, v4

    aput v6, v0, v6

    aput p1, v0, v7

    aput v2, v0, v8

    .line 3
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method
