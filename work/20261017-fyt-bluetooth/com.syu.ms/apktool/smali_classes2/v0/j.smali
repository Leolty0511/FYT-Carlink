.class public Lv0/j;
.super Lv0/m;
.source "SourceFile"

# interfaces
.implements Lo1/q;


# instance fields
.field public final a:[B

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lv0/m;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lv0/j;->a:[B

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lv0/j;->b:I

    .line 4
    iput v0, p0, Lv0/j;->c:I

    .line 5
    iput v0, p0, Lv0/j;->d:I

    return-void
.end method


# virtual methods
.method public final M2([BII)V
    .locals 6

    .line 1
    invoke-static {p1, p2, p3}, Lo1/b0;->h([BII)V

    .line 2
    aget-byte p3, p1, p2

    const/4 v0, 0x1

    const/4 v1, 0x4

    const/16 v2, 0xf

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    add-int/2addr p2, v0

    .line 3
    aget-byte p1, p1, p2

    const/16 p2, 0x10

    and-int/lit16 p1, p1, 0xff

    .line 4
    invoke-static {p2, p1}, Lv0/d;->c(II)V

    goto/16 :goto_0

    :pswitch_1
    add-int/lit8 p3, p2, 0x1

    .line 5
    aget-byte p3, p1, p3

    add-int/lit8 v0, p2, 0x2

    .line 6
    aget-byte v0, p1, v0

    add-int/lit8 v3, p2, 0x3

    .line 7
    aget-byte v3, p1, v3

    add-int/2addr p2, v1

    .line 8
    aget-byte p1, p1, p2

    const/16 p2, 0x8

    shr-int/lit8 v1, p3, 0x4

    and-int/2addr v1, v2

    .line 9
    invoke-static {p2, v1}, Lv0/d;->c(II)V

    const/16 p2, 0x9

    and-int/2addr p3, v2

    .line 10
    invoke-static {p2, p3}, Lv0/d;->c(II)V

    const/16 p2, 0xa

    shr-int/lit8 p3, v0, 0x4

    and-int/2addr p3, v2

    .line 11
    invoke-static {p2, p3}, Lv0/d;->c(II)V

    const/16 p2, 0xb

    and-int/lit8 p3, v0, 0xf

    .line 12
    invoke-static {p2, p3}, Lv0/d;->c(II)V

    const/16 p2, 0xc

    shr-int/lit8 p3, v3, 0x4

    and-int/2addr p3, v2

    .line 13
    invoke-static {p2, p3}, Lv0/d;->c(II)V

    const/16 p2, 0xd

    and-int/lit8 p3, v3, 0xf

    .line 14
    invoke-static {p2, p3}, Lv0/d;->c(II)V

    const/16 p2, 0xe

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v2

    .line 15
    invoke-static {p2, p3}, Lv0/d;->c(II)V

    and-int/2addr p1, v2

    .line 16
    invoke-static {v2, p1}, Lv0/d;->c(II)V

    goto :goto_0

    :pswitch_2
    add-int/lit8 p3, p2, 0x1

    .line 17
    aget-byte p3, p1, p3

    add-int/lit8 v3, p2, 0x2

    .line 18
    aget-byte v3, p1, v3

    add-int/lit8 v4, p2, 0x3

    .line 19
    aget-byte v4, p1, v4

    add-int/2addr p2, v1

    .line 20
    aget-byte p1, p1, p2

    const/4 p2, 0x0

    shr-int/lit8 v5, p3, 0x4

    and-int/2addr v5, v2

    .line 21
    invoke-static {p2, v5}, Lv0/d;->c(II)V

    and-int/lit8 p2, p3, 0xf

    .line 22
    invoke-static {v0, p2}, Lv0/d;->c(II)V

    shr-int/lit8 p2, v3, 0x4

    and-int/2addr p2, v2

    const/4 p3, 0x2

    .line 23
    invoke-static {p3, p2}, Lv0/d;->c(II)V

    and-int/lit8 p2, v3, 0xf

    const/4 p3, 0x3

    .line 24
    invoke-static {p3, p2}, Lv0/d;->c(II)V

    shr-int/lit8 p2, v4, 0x4

    and-int/2addr p2, v2

    .line 25
    invoke-static {v1, p2}, Lv0/d;->c(II)V

    const/4 p2, 0x5

    and-int/lit8 p3, v4, 0xf

    .line 26
    invoke-static {p2, p3}, Lv0/d;->c(II)V

    const/4 p2, 0x6

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v2

    .line 27
    invoke-static {p2, p3}, Lv0/d;->c(II)V

    const/4 p2, 0x7

    and-int/2addr p1, v2

    .line 28
    invoke-static {p2, p1}, Lv0/d;->c(II)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x60
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public varargs N2([B)[B
    .locals 4

    .line 1
    array-length v0, p1

    add-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    const/16 v1, 0x5a

    const/4 v2, 0x0

    .line 2
    aput-byte v1, v0, v2

    const/16 v1, -0x5b

    const/4 v3, 0x1

    .line 3
    aput-byte v1, v0, v3

    .line 4
    array-length v1, p1

    int-to-byte v1, v1

    const/4 v3, 0x2

    aput-byte v1, v0, v3

    .line 5
    :goto_0
    array-length v1, p1

    if-ge v2, v1, :cond_0

    add-int/lit8 v1, v2, 0x3

    .line 6
    aget-byte v3, p1, v2

    aput-byte v3, v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public declared-synchronized O2([B)V
    .locals 4

    monitor-enter p0

    if-eqz p1, :cond_1

    .line 1
    :try_start_0
    array-length v0, p1

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    .line 2
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    .line 3
    aget-byte v2, p1, v2

    :goto_0
    if-gt v1, v0, :cond_0

    .line 4
    aget-byte v3, p1, v1

    add-int/2addr v2, v3

    int-to-byte v2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    and-int/lit16 v1, v2, 0xff

    int-to-byte v1, v1

    .line 5
    aput-byte v1, p1, v0

    .line 6
    sget-object v0, Lz/a;->g:Lo1/e0;

    invoke-virtual {v0, p1}, Lo1/e0;->i([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 7
    :cond_1
    :goto_1
    monitor-exit p0

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x10

    if-gt p2, p3, :cond_0

    const/4 p3, 0x1

    new-array p3, p3, [I

    const/4 v0, 0x0

    .line 1
    sget-object v1, Lv0/b;->f:[I

    aget v1, v1, p2

    aput v1, p3, v0

    invoke-static {p1, p2, p3}, Lo1/x;->v(Ly/b;I[I)V

    :cond_0
    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 2

    const/4 p3, 0x2

    if-eqz p1, :cond_2

    const/4 p4, 0x5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, p4, [B

    .line 1
    fill-array-data p1, :array_0

    invoke-virtual {p0, p1}, Lv0/j;->N2([B)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lv0/j;->O2([B)V

    goto :goto_0

    :cond_1
    new-array p1, p4, [B

    const/16 p4, -0x5f

    const/4 v1, 0x0

    aput-byte p4, p1, v1

    .line 2
    aget p4, p2, v1

    int-to-byte p4, p4

    aput-byte p4, p1, v0

    aget p4, p2, v0

    int-to-byte p4, p4

    aput-byte p4, p1, p3

    aget p3, p2, p3

    int-to-byte p3, p3

    const/4 p4, 0x3

    aput-byte p3, p1, p4

    const/4 p3, 0x4

    aget p2, p2, p4

    int-to-byte p2, p2

    aput-byte p2, p1, p3

    invoke-virtual {p0, p1}, Lv0/j;->N2([B)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lv0/j;->O2([B)V

    goto :goto_0

    :cond_2
    new-array p1, p3, [B

    .line 3
    fill-array-data p1, :array_1

    invoke-virtual {p0, p1}, Lv0/j;->N2([B)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lv0/j;->O2([B)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 1
        -0x5et
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        -0x60t
        0x0t
    .end array-data
.end method

.method public b([B)V
    .locals 6

    if-eqz p1, :cond_d

    .line 1
    array-length v0, p1

    if-gtz v0, :cond_0

    goto/16 :goto_6

    .line 2
    :cond_0
    iget v0, p0, Lv0/j;->b:I

    array-length v1, p1

    add-int/2addr v0, v1

    const/16 v1, 0x400

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    .line 3
    iput v2, p0, Lv0/j;->b:I

    .line 4
    iput v2, p0, Lv0/j;->c:I

    .line 5
    iput v2, p0, Lv0/j;->d:I

    .line 6
    :cond_1
    iget-object v0, p0, Lv0/j;->a:[B

    iget v1, p0, Lv0/j;->b:I

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iget v0, p0, Lv0/j;->b:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lv0/j;->b:I

    .line 8
    iget p1, p0, Lv0/j;->d:I

    const/4 v1, 0x2

    const/4 v3, 0x3

    if-eqz p1, :cond_5

    if-lt p1, v0, :cond_2

    return-void

    .line 9
    :cond_2
    iget-object p1, p0, Lv0/j;->a:[B

    aget-byte p1, p1, v1

    move v0, v3

    .line 10
    :goto_0
    iget v4, p0, Lv0/j;->d:I

    if-ge v0, v4, :cond_3

    .line 11
    iget-object v4, p0, Lv0/j;->a:[B

    aget-byte v4, v4, v0

    add-int/2addr p1, v4

    int-to-byte p1, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 12
    :cond_3
    iget-object v0, p0, Lv0/j;->a:[B

    aget-byte v5, v0, v4

    if-ne p1, v5, :cond_4

    sub-int/2addr v4, v3

    .line 13
    invoke-virtual {p0, v0, v3, v4}, Lv0/j;->M2([BII)V

    .line 14
    iget p1, p0, Lv0/j;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lv0/j;->c:I

    goto :goto_1

    .line 15
    :cond_4
    iput v1, p0, Lv0/j;->c:I

    .line 16
    :goto_1
    iput v2, p0, Lv0/j;->d:I

    .line 17
    :cond_5
    iget p1, p0, Lv0/j;->b:I

    sub-int/2addr p1, v1

    :goto_2
    iget v0, p0, Lv0/j;->c:I

    if-ge v0, p1, :cond_a

    .line 18
    iget-object v1, p0, Lv0/j;->a:[B

    aget-byte v4, v1, v0

    const/16 v5, 0x5a

    if-ne v4, v5, :cond_9

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, v1, v4

    const/16 v5, -0x5b

    if-ne v4, v5, :cond_9

    add-int/lit8 v4, v0, 0x2

    .line 19
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    iput v4, p0, Lv0/j;->d:I

    add-int/lit8 v5, v0, 0x3

    add-int/2addr v4, v5

    .line 20
    iput v4, p0, Lv0/j;->d:I

    .line 21
    iget v5, p0, Lv0/j;->b:I

    if-lt v4, v5, :cond_6

    sub-int/2addr v4, v0

    .line 22
    iput v4, p0, Lv0/j;->d:I

    goto :goto_5

    :cond_6
    add-int/lit8 v4, v0, 0x2

    .line 23
    aget-byte v1, v1, v4

    add-int/lit8 v0, v0, 0x3

    .line 24
    :goto_3
    iget v4, p0, Lv0/j;->d:I

    if-ge v0, v4, :cond_7

    .line 25
    iget-object v4, p0, Lv0/j;->a:[B

    aget-byte v4, v4, v0

    add-int/2addr v1, v4

    int-to-byte v1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 26
    :cond_7
    iget-object v0, p0, Lv0/j;->a:[B

    aget-byte v5, v0, v4

    if-ne v1, v5, :cond_8

    .line 27
    iget v1, p0, Lv0/j;->c:I

    add-int/lit8 v5, v1, 0x3

    sub-int/2addr v4, v1

    sub-int/2addr v4, v3

    invoke-virtual {p0, v0, v5, v4}, Lv0/j;->M2([BII)V

    .line 28
    iget v0, p0, Lv0/j;->d:I

    iput v0, p0, Lv0/j;->c:I

    goto :goto_4

    .line 29
    :cond_8
    iget v0, p0, Lv0/j;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lv0/j;->c:I

    .line 30
    :goto_4
    iput v2, p0, Lv0/j;->d:I

    .line 31
    :cond_9
    iget v0, p0, Lv0/j;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lv0/j;->c:I

    goto :goto_2

    :cond_a
    :goto_5
    if-eqz v0, :cond_c

    .line 32
    iget p1, p0, Lv0/j;->b:I

    sub-int/2addr p1, v0

    iput p1, p0, Lv0/j;->b:I

    if-eqz p1, :cond_b

    .line 33
    iget-object v1, p0, Lv0/j;->a:[B

    invoke-static {v1, v0, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    :cond_b
    iput v2, p0, Lv0/j;->c:I

    :cond_c
    return-void

    :cond_d
    :goto_6
    const-wide/16 v0, 0x64

    .line 35
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception p1

    .line 36
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_7
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "OBD_0002_GPSHeat"

    return-object v0
.end method
