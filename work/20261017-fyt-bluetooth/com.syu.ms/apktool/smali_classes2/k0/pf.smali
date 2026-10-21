.class public Lk0/pf;
.super Lk0/lt;
.source "SourceFile"

# interfaces
.implements Lo1/q;


# instance fields
.field public final b:[B

.field public c:I

.field public d:I

.field public e:I

.field public f:Ljava/lang/Runnable;

.field public g:B

.field public h:Ljava/lang/Runnable;

.field public i:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lk0/pf;->b:[B

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lk0/pf;->c:I

    .line 4
    iput v0, p0, Lk0/pf;->d:I

    .line 5
    iput v0, p0, Lk0/pf;->e:I

    .line 6
    new-instance v0, Lk0/pf$a;

    invoke-direct {v0, p0}, Lk0/pf$a;-><init>(Lk0/pf;)V

    iput-object v0, p0, Lk0/pf;->f:Ljava/lang/Runnable;

    const/16 v0, 0xa

    .line 7
    iput-byte v0, p0, Lk0/pf;->g:B

    .line 8
    new-instance v0, Lk0/pf$b;

    invoke-direct {v0, p0}, Lk0/pf$b;-><init>(Lk0/pf;)V

    iput-object v0, p0, Lk0/pf;->h:Ljava/lang/Runnable;

    .line 9
    new-instance v0, Lk0/pf$c;

    invoke-direct {v0, p0}, Lk0/pf$c;-><init>(Lk0/pf;)V

    iput-object v0, p0, Lk0/pf;->i:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic b3(Lk0/pf;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/pf;->i:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static c3([B)V
    .locals 6

    if-eqz p0, :cond_4

    .line 1
    array-length v0, p0

    const/4 v1, 0x2

    if-le v0, v1, :cond_4

    .line 2
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_2

    move v4, v1

    :goto_1
    const/16 v5, 0x8

    if-ge v4, v5, :cond_1

    shl-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    .line 3
    aget-byte v5, p0, v2

    shl-int/2addr v5, v4

    xor-int/2addr v5, v3

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_0

    const/16 v5, 0x9

    goto :goto_2

    :cond_0
    move v5, v1

    :goto_2
    xor-int/2addr v3, v5

    int-to-byte v3, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_2
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    .line 5
    :goto_3
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 6
    aget-byte v2, p0, v1

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 7
    :cond_3
    array-length p0, p0

    and-int/lit8 v1, v3, 0x7f

    int-to-byte v1, v1

    aput-byte v1, v0, p0

    .line 8
    invoke-static {v0}, Lz/k;->q([B)V

    :cond_4
    return-void
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public O2([I)V
    .locals 6

    if-eqz p1, :cond_a

    .line 1
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    aget v0, p1, v0

    const/4 v2, 0x5

    const/16 v3, 0xc

    const/16 v4, 0xb

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 3
    :pswitch_1
    aget p1, p1, v5

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0, v5}, Lk0/pf;->a3(I)V

    goto/16 :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, v1}, Lk0/pf;->a3(I)V

    goto/16 :goto_0

    .line 6
    :pswitch_2
    aget p1, p1, v5

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p0, v5}, Lk0/pf;->a3(I)V

    goto/16 :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0, v1}, Lk0/pf;->a3(I)V

    goto/16 :goto_0

    .line 9
    :pswitch_3
    aget p1, p1, v5

    const/4 v0, -0x2

    if-eq p1, v0, :cond_4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/4 p1, 0x3

    .line 10
    invoke-virtual {p0, p1}, Lk0/pf;->a3(I)V

    goto/16 :goto_0

    :cond_4
    const/4 p1, 0x4

    .line 11
    invoke-virtual {p0, p1}, Lk0/pf;->a3(I)V

    goto/16 :goto_0

    .line 12
    :pswitch_4
    aget p1, p1, v5

    if-eqz p1, :cond_5

    .line 13
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v3

    if-nez p1, :cond_a

    .line 14
    invoke-virtual {p0, v2}, Lk0/pf;->a3(I)V

    goto/16 :goto_0

    .line 15
    :cond_5
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v3

    if-ne p1, v5, :cond_a

    const/4 p1, 0x6

    .line 16
    invoke-virtual {p0, p1}, Lk0/pf;->a3(I)V

    goto/16 :goto_0

    .line 17
    :pswitch_5
    aget p1, p1, v5

    const/16 v0, 0xd

    const/16 v1, 0x26

    if-eqz p1, :cond_6

    .line 18
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-nez p1, :cond_a

    .line 19
    invoke-virtual {p0, v0}, Lk0/pf;->a3(I)V

    goto :goto_0

    .line 20
    :cond_6
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-ne p1, v5, :cond_a

    .line 21
    invoke-virtual {p0, v0}, Lk0/pf;->a3(I)V

    goto :goto_0

    .line 22
    :pswitch_6
    aget p1, p1, v5

    const/16 v0, 0x4d

    if-eqz p1, :cond_7

    .line 23
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-eq p1, v2, :cond_a

    .line 24
    invoke-virtual {p0, v4}, Lk0/pf;->a3(I)V

    goto :goto_0

    .line 25
    :cond_7
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-ne p1, v2, :cond_a

    .line 26
    invoke-virtual {p0, v4}, Lk0/pf;->a3(I)V

    goto :goto_0

    .line 27
    :pswitch_7
    aget p1, p1, v5

    if-eqz p1, :cond_8

    .line 28
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v4

    if-nez p1, :cond_a

    .line 29
    invoke-virtual {p0, v3}, Lk0/pf;->a3(I)V

    goto :goto_0

    .line 30
    :cond_8
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v4

    if-ne p1, v5, :cond_a

    .line 31
    invoke-virtual {p0, v3}, Lk0/pf;->a3(I)V

    goto :goto_0

    .line 32
    :pswitch_8
    aget p1, p1, v5

    const/16 v0, 0xe

    const/16 v1, 0xa

    if-eqz p1, :cond_9

    .line 33
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-nez p1, :cond_a

    .line 34
    invoke-virtual {p0, v0}, Lk0/pf;->a3(I)V

    goto :goto_0

    .line 35
    :cond_9
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-ne p1, v5, :cond_a

    .line 36
    invoke-virtual {p0, v0}, Lk0/pf;->a3(I)V

    :cond_a
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public S2()V
    .locals 3

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

    const/4 v1, 0x1

    .line 5
    iput v1, v0, Lk0/mt;->i:I

    .line 6
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/pf;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 7
    iget-object v0, p0, Lk0/pf;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    return-void
.end method

.method public U2([BII)V
    .locals 5

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, 0x21

    if-eq v0, v1, :cond_1

    const/16 v1, 0x30

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/String;

    add-int/lit8 p2, p2, 0x2

    add-int/lit8 p3, p3, -0x2

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    add-int/lit8 p3, p2, 0x2

    .line 3
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    add-int/lit8 v0, p2, 0x3

    .line 4
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p2, 0x4

    .line 5
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 p2, p2, 0x5

    .line 6
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    and-int/lit16 p2, p3, 0xff

    const/16 p3, 0x1b

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_4

    if-eq p2, v3, :cond_3

    const/16 v4, 0x11

    if-eq p2, v4, :cond_2

    new-array v4, v3, [I

    aput p2, v4, v2

    .line 7
    invoke-static {p3, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_2
    new-array p2, v3, [I

    const/4 v4, -0x3

    aput v4, p2, v2

    .line 8
    invoke-static {p3, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_3
    new-array p2, v3, [I

    const/4 v4, -0x2

    aput v4, p2, v2

    .line 9
    invoke-static {p3, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_4
    new-array p2, v3, [I

    const/4 v4, -0x1

    aput v4, p2, v2

    .line 10
    invoke-static {p3, p2}, Lk0/qt;->y0(I[I)V

    :goto_0
    const/16 p2, 0x15

    new-array p3, v3, [I

    and-int/lit8 v0, v0, 0xf

    aput v0, p3, v2

    .line 11
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x4d

    new-array p3, v3, [I

    and-int/lit16 v0, v1, 0xff

    aput v0, p3, v2

    .line 12
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x26

    new-array p3, v3, [I

    shr-int/lit8 v0, p1, 0x7

    and-int/2addr v0, v3

    aput v0, p3, v2

    .line 13
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0xc

    new-array p3, v3, [I

    shr-int/lit8 v0, p1, 0x6

    and-int/2addr v0, v3

    aput v0, p3, v2

    .line 14
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0xb

    new-array p3, v3, [I

    shr-int/lit8 v0, p1, 0x5

    and-int/2addr v0, v3

    aput v0, p3, v2

    .line 15
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0xa

    new-array p3, v3, [I

    shr-int/2addr p1, v2

    and-int/2addr p1, v3

    aput p1, p3, v2

    .line 16
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    :goto_1
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/pf;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/pf;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/pf;->f:Ljava/lang/Runnable;

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
    .locals 7

    const/4 p3, 0x4

    const/4 p4, 0x3

    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    const/16 v4, 0x405

    if-eq p1, v4, :cond_0

    goto/16 :goto_1

    .line 1
    :cond_0
    invoke-virtual {p0, p2, v2}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2
    aget p1, p2, v2

    if-ltz p1, :cond_3

    aget p1, p2, v2

    const/16 v4, 0x28a

    if-gt p1, v4, :cond_3

    .line 3
    aget p1, p2, v1

    mul-int/lit16 p1, p1, 0x1000

    invoke-static {}, La/f;->w()I

    move-result v5

    div-int/2addr p1, v5

    .line 4
    aget v5, p2, v2

    mul-int/lit16 v5, v5, 0x1000

    div-int/2addr v5, v4

    .line 5
    aget v4, p2, v3

    if-ne v4, v1, :cond_1

    const/16 v4, 0x11

    .line 6
    aput v4, p2, v3

    goto :goto_0

    :cond_1
    const/16 v4, 0x10

    .line 7
    aput v4, p2, v3

    :goto_0
    const/16 v4, 0xa

    new-array v4, v4, [B

    const/16 v6, 0x53

    aput-byte v6, v4, v3

    const/16 v6, 0x57

    aput-byte v6, v4, v1

    const/16 v1, -0x80

    aput-byte v1, v4, v2

    const/4 v1, 0x6

    aput-byte v1, v4, p4

    const/4 p4, 0x7

    aput-byte p4, v4, p3

    .line 8
    aget p2, p2, v3

    int-to-byte p2, p2

    aput-byte p2, v4, v0

    shr-int/lit8 p2, p1, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    aput-byte p2, v4, v1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v4, p4

    shr-int/lit8 p1, v5, 0x8

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/16 p2, 0x8

    aput-byte p1, v4, p2

    const/16 p1, 0x9

    and-int/lit16 p2, v5, 0xff

    int-to-byte p2, p2

    aput-byte p2, v4, p1

    invoke-static {v4}, Lk0/pf;->c3([B)V

    goto :goto_1

    :cond_2
    new-array p1, v0, [I

    const/16 v0, 0xe3

    aput v0, p1, v3

    const/16 v0, 0x82

    aput v0, p1, v1

    aput v2, p1, v2

    .line 9
    aget p2, p2, v3

    aput p2, p1, p4

    aput v1, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final a3(I)V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/16 v1, 0x82

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v1, 0x2

    aput v1, v0, v1

    const/4 v1, 0x3

    aput p1, v0, v1

    const/4 p1, 0x4

    aput v2, v0, p1

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public b([B)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v1

    sget-object v2, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OBD Rcv--> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    invoke-static {p1, v0, v4}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_e

    .line 2
    array-length v1, p1

    if-gtz v1, :cond_1

    goto/16 :goto_7

    .line 3
    :cond_1
    iget v1, p0, Lk0/pf;->c:I

    array-length v2, p1

    add-int/2addr v1, v2

    const/16 v2, 0x400

    if-le v1, v2, :cond_2

    .line 4
    iput v0, p0, Lk0/pf;->c:I

    .line 5
    iput v0, p0, Lk0/pf;->d:I

    .line 6
    iput v0, p0, Lk0/pf;->e:I

    .line 7
    :cond_2
    iget-object v1, p0, Lk0/pf;->b:[B

    iget v2, p0, Lk0/pf;->c:I

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget v1, p0, Lk0/pf;->c:I

    array-length p1, p1

    add-int/2addr v1, p1

    iput v1, p0, Lk0/pf;->c:I

    .line 9
    iget p1, p0, Lk0/pf;->e:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eqz p1, :cond_6

    if-lt p1, v1, :cond_3

    return-void

    .line 10
    :cond_3
    iget-object p1, p0, Lk0/pf;->b:[B

    aget-byte p1, p1, v3

    move v1, v2

    .line 11
    :goto_0
    iget v4, p0, Lk0/pf;->e:I

    if-ge v1, v4, :cond_4

    .line 12
    iget-object v4, p0, Lk0/pf;->b:[B

    aget-byte v4, v4, v1

    add-int/2addr p1, v4

    int-to-byte p1, p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 p1, p1, -0x1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 13
    iget-object v1, p0, Lk0/pf;->b:[B

    aget-byte v4, v1, v4

    if-ne p1, v4, :cond_5

    .line 14
    sget-object p1, Lk0/nt;->d:Lk0/lt;

    aget-byte v4, v1, v3

    add-int/2addr v4, v3

    invoke-virtual {p1, v1, v3, v4}, Lk0/lt;->U2([BII)V

    .line 15
    iget p1, p0, Lk0/pf;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lk0/pf;->d:I

    goto :goto_1

    .line 16
    :cond_5
    iput v3, p0, Lk0/pf;->d:I

    .line 17
    :goto_1
    iput v0, p0, Lk0/pf;->e:I

    .line 18
    :cond_6
    iget p1, p0, Lk0/pf;->c:I

    sub-int/2addr p1, v2

    :goto_2
    iget v1, p0, Lk0/pf;->d:I

    if-ge v1, p1, :cond_c

    .line 19
    iget-object v2, p0, Lk0/pf;->b:[B

    aget-byte v4, v2, v1

    const/16 v5, 0x53

    if-ne v4, v5, :cond_b

    add-int/lit8 v4, v1, 0x1

    aget-byte v4, v2, v4

    const/16 v5, 0x57

    if-ne v4, v5, :cond_b

    .line 20
    iget v4, p0, Lk0/pf;->e:I

    const/16 v5, 0x200

    if-le v4, v5, :cond_7

    .line 21
    iput v0, p0, Lk0/pf;->e:I

    goto :goto_5

    :cond_7
    add-int/lit8 v4, v1, 0x2

    .line 22
    aget-byte v4, v2, v4

    add-int/2addr v4, v1

    add-int/lit8 v4, v4, 0x4

    iput v4, p0, Lk0/pf;->e:I

    .line 23
    iget v5, p0, Lk0/pf;->c:I

    if-lt v4, v5, :cond_8

    sub-int/2addr v4, v1

    .line 24
    iput v4, p0, Lk0/pf;->e:I

    goto :goto_6

    :cond_8
    add-int/lit8 v4, v1, 0x2

    .line 25
    aget-byte v2, v2, v4

    add-int/lit8 v1, v1, 0x3

    .line 26
    :goto_3
    iget v4, p0, Lk0/pf;->e:I

    if-ge v1, v4, :cond_9

    .line 27
    iget-object v4, p0, Lk0/pf;->b:[B

    aget-byte v4, v4, v1

    add-int/2addr v2, v4

    int-to-byte v2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_9
    add-int/lit8 v2, v2, -0x1

    and-int/lit16 v1, v2, 0xff

    int-to-byte v1, v1

    .line 28
    iget-object v2, p0, Lk0/pf;->b:[B

    aget-byte v4, v2, v4

    if-ne v1, v4, :cond_a

    .line 29
    sget-object v1, Lk0/nt;->d:Lk0/lt;

    iget v4, p0, Lk0/pf;->d:I

    add-int/lit8 v5, v4, 0x2

    add-int/2addr v4, v3

    aget-byte v4, v2, v4

    add-int/2addr v4, v3

    invoke-virtual {v1, v2, v5, v4}, Lk0/lt;->U2([BII)V

    .line 30
    iget v1, p0, Lk0/pf;->e:I

    iput v1, p0, Lk0/pf;->d:I

    goto :goto_4

    .line 31
    :cond_a
    iget v1, p0, Lk0/pf;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lk0/pf;->d:I

    .line 32
    :goto_4
    iput v0, p0, Lk0/pf;->e:I

    .line 33
    :cond_b
    :goto_5
    iget v1, p0, Lk0/pf;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lk0/pf;->d:I

    goto :goto_2

    :cond_c
    :goto_6
    if-eqz v1, :cond_e

    .line 34
    iget p1, p0, Lk0/pf;->c:I

    sub-int/2addr p1, v1

    iput p1, p0, Lk0/pf;->c:I

    if-eqz p1, :cond_d

    .line 35
    iget-object v2, p0, Lk0/pf;->b:[B

    invoke-static {v2, v1, v2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    :cond_d
    iput v0, p0, Lk0/pf;->d:I

    :cond_e
    :goto_7
    return-void
.end method
