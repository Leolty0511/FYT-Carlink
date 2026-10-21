.class public Lk0/b2;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    .line 2
    new-instance v0, Lk0/b2$a;

    invoke-direct {v0, p0}, Lk0/b2$a;-><init>(Lk0/b2;)V

    iput-object v0, p0, Lk0/b2;->b:Ljava/lang/Runnable;

    return-void
.end method

.method public static a3()V
    .locals 9

    const/16 v0, 0xf

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 1
    aput v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 v3, 0xd

    aput v3, v1, v2

    const/16 v4, 0xd2

    const/4 v5, 0x1

    aput v4, v1, v5

    .line 2
    sget v4, Lu0/b;->D:I

    const/4 v6, 0x3

    const/16 v7, 0xa

    const/4 v8, 0x2

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    aput v3, v1, v8

    goto :goto_1

    :pswitch_2
    const/16 v3, 0xb

    aput v3, v1, v8

    goto :goto_1

    :pswitch_3
    const/16 v3, 0x8

    aput v3, v1, v8

    goto :goto_1

    :pswitch_4
    const/16 v3, 0xc

    aput v3, v1, v8

    goto :goto_1

    .line 3
    :pswitch_5
    sget v4, Lo0/e;->H:I

    if-ne v4, v5, :cond_1

    const/4 v3, 0x7

    aput v3, v1, v8

    goto :goto_1

    :cond_1
    if-ne v4, v8, :cond_2

    const/16 v3, 0xe

    aput v3, v1, v8

    goto :goto_1

    :cond_2
    if-ne v4, v6, :cond_7

    aput v3, v1, v8

    goto :goto_1

    :pswitch_6
    aput v7, v1, v8

    goto :goto_1

    :pswitch_7
    aput v7, v1, v8

    goto :goto_1

    .line 4
    :pswitch_8
    sget v3, Lw0/d;->h:I

    const/high16 v4, 0x10000

    sub-int v7, v3, v4

    if-nez v7, :cond_3

    aput v5, v1, v8

    goto :goto_1

    :cond_3
    sub-int v7, v3, v4

    if-ne v5, v7, :cond_4

    aput v8, v1, v8

    goto :goto_1

    :cond_4
    sub-int v4, v3, v4

    if-ne v8, v4, :cond_5

    aput v6, v1, v8

    goto :goto_1

    :cond_5
    add-int/lit8 v4, v3, 0x0

    if-nez v4, :cond_6

    const/4 v3, 0x4

    aput v3, v1, v8

    goto :goto_1

    :cond_6
    sub-int/2addr v3, v2

    if-ne v5, v3, :cond_7

    const/4 v3, 0x5

    aput v3, v1, v8

    goto :goto_1

    :pswitch_9
    const/16 v3, 0x9

    aput v3, v1, v8

    .line 5
    :cond_7
    :goto_1
    sget v3, Lu0/b;->o:I

    const/16 v4, 0x10

    if-ne v3, v5, :cond_8

    aput v4, v1, v8

    :cond_8
    new-array v3, v4, [I

    const/16 v4, 0xe3

    aput v4, v3, v2

    :goto_2
    if-ge v2, v0, :cond_9

    add-int/lit8 v4, v2, 0x1

    .line 6
    aget v2, v1, v2

    int-to-byte v2, v2

    aput v2, v3, v4

    move v2, v4

    goto :goto_2

    .line 7
    :cond_9
    invoke-static {v3}, Lz/k;->s([I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
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
    iget-object v0, p0, Lk0/b2;->b:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public U2([BII)V
    .locals 1

    add-int/lit8 p3, p2, 0x1

    .line 1
    aget-byte p3, p1, p3

    const/16 v0, 0x72

    if-eq p3, v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_2

    add-int/lit8 p3, p2, 0x2

    .line 3
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    const/16 v0, 0x20

    and-int/2addr p3, v0

    if-ne p3, v0, :cond_1

    const/4 p3, 0x1

    .line 4
    invoke-static {p3}, Lu0/d;->C2(I)V

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    .line 5
    invoke-static {p3}, Lu0/d;->C2(I)V

    :goto_0
    add-int/lit8 p3, p2, 0x8

    .line 6
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    invoke-virtual {p0, p3}, Lk0/b2;->b3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x9

    .line 7
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    invoke-virtual {p0, p3}, Lk0/b2;->b3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->S2(I)V

    add-int/lit8 p3, p2, 0xa

    .line 8
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    invoke-virtual {p0, p3}, Lk0/b2;->b3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/lit8 p2, p2, 0xb

    .line 9
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p0, p1}, Lk0/b2;->b3(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->U2(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public W2()V
    .locals 1

    .line 1
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lk0/b2;->b:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

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

.method public b3(I)I
    .locals 0

    .line 1
    div-int/lit8 p1, p1, 0x14

    return p1
.end method
