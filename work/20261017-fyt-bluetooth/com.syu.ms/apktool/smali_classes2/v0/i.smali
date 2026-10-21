.class public Lv0/i;
.super Lv0/m;
.source "SourceFile"

# interfaces
.implements Lo1/q;


# instance fields
.field public final a:[B

.field public b:I

.field public c:I

.field public d:I

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lv0/m;-><init>()V

    const/16 v0, 0x480

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lv0/i;->a:[B

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lv0/i;->b:I

    .line 4
    iput v0, p0, Lv0/i;->c:I

    const/4 v1, 0x1

    .line 5
    iput v1, p0, Lv0/i;->d:I

    .line 6
    iput-boolean v0, p0, Lv0/i;->e:Z

    return-void
.end method


# virtual methods
.method public K2()V
    .locals 0

    return-void
.end method

.method public L2()V
    .locals 0

    return-void
.end method

.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final M2([BII)V
    .locals 10

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, 0x56

    const/16 v2, 0x45

    const/16 v3, 0x54

    const/16 v4, 0x4e

    if-eq v0, v2, :cond_8

    const/16 v2, 0x4a

    const/16 v5, 0x44

    const/16 v6, 0x57

    const-string v7, "Windows-936"

    if-eq v0, v2, :cond_5

    const/16 v2, 0x4f

    const/16 v8, 0x49

    if-eq v0, v2, :cond_4

    const/16 v2, 0x53

    if-eq v0, v2, :cond_3

    const/16 v5, 0x41

    const/16 v9, 0x52

    if-eq v0, v3, :cond_2

    if-eq v0, v1, :cond_1

    if-eq v0, v6, :cond_0

    goto/16 :goto_2

    :cond_0
    add-int/lit8 p3, p2, 0x1

    .line 2
    aget-byte p3, p1, p3

    if-ne p3, v5, :cond_9

    add-int/lit8 p3, p2, 0x2

    aget-byte p3, p1, p3

    if-ne p3, v9, :cond_9

    add-int/lit8 p2, p2, 0x3

    aget-byte p1, p1, p2

    goto/16 :goto_2

    :cond_1
    add-int/lit8 p3, p2, 0x1

    .line 3
    aget-byte p3, p1, p3

    if-ne p3, v8, :cond_9

    add-int/lit8 p3, p2, 0x2

    aget-byte p3, p1, p3

    if-ne p3, v4, :cond_9

    add-int/lit8 p2, p2, 0x3

    aget-byte p1, p1, p2

    goto/16 :goto_2

    :cond_2
    add-int/lit8 v0, p2, 0x1

    .line 4
    aget-byte v0, p1, v0

    if-ne v0, v9, :cond_9

    add-int/lit8 v0, p2, 0x2

    aget-byte v0, p1, v0

    if-ne v0, v5, :cond_9

    add-int/lit8 v0, p2, 0x3

    aget-byte v0, p1, v0

    if-ne v0, v4, :cond_9

    add-int/lit8 v0, p2, 0x4

    aget-byte v0, p1, v0

    if-ne v0, v2, :cond_9

    .line 5
    :try_start_0
    new-instance v0, Ljava/lang/String;

    add-int/lit8 p2, p2, 0x17

    add-int/lit8 p3, p3, -0x17

    invoke-direct {v0, p1, p2, p3, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_2

    :cond_3
    add-int/lit8 p3, p2, 0x1

    .line 7
    aget-byte p3, p1, p3

    if-ne p3, v2, :cond_9

    add-int/lit8 p3, p2, 0x2

    aget-byte p3, p1, p3

    const/16 v0, 0x4c

    if-ne p3, v0, :cond_9

    add-int/lit8 p2, p2, 0x3

    aget-byte p1, p1, p2

    goto/16 :goto_2

    :cond_4
    add-int/lit8 v0, p2, 0x1

    .line 8
    aget-byte v0, p1, v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_9

    add-int/lit8 v0, p2, 0x2

    aget-byte v0, p1, v0

    if-ne v0, v5, :cond_9

    add-int/lit8 v0, p2, 0x3

    aget-byte v0, p1, v0

    if-ne v0, v8, :cond_9

    add-int/lit8 v0, p2, 0x4

    aget-byte v0, p1, v0

    if-ne v0, v4, :cond_9

    add-int/lit8 v0, p2, 0x5

    aget-byte v0, p1, v0

    const/16 v1, 0x46

    if-ne v0, v1, :cond_9

    .line 9
    :try_start_1
    new-instance v0, Ljava/lang/String;

    add-int/lit8 p2, p2, 0x6

    add-int/lit8 p3, p3, -0x6

    invoke-direct {v0, p1, p2, p3, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2

    :cond_5
    add-int/lit8 v0, p2, 0x1

    .line 11
    aget-byte v0, p1, v0

    if-ne v0, v3, :cond_9

    add-int/lit8 v0, p2, 0x2

    aget-byte v0, p1, v0

    if-ne v0, v6, :cond_9

    add-int/lit8 v0, p2, 0x3

    aget-byte v0, p1, v0

    if-ne v0, v5, :cond_9

    const/16 v0, 0xc

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p3, :cond_7

    add-int v2, p2, v0

    .line 12
    aget-byte v2, p1, v2

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_6

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    goto :goto_1

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    :goto_1
    add-int/lit8 v1, p3, -0x4

    if-ge v0, v1, :cond_9

    .line 13
    :try_start_2
    new-instance v1, Ljava/lang/String;

    add-int/2addr p2, v0

    add-int/lit8 p2, p2, 0x1

    sub-int/2addr p3, v0

    add-int/lit8 p3, p3, -0x4

    invoke-direct {v1, p1, p2, p3, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2

    :cond_8
    add-int/lit8 p3, p2, 0x1

    .line 15
    aget-byte p3, p1, p3

    if-ne p3, v1, :cond_9

    add-int/lit8 p3, p2, 0x2

    aget-byte p3, p1, p3

    if-ne p3, v2, :cond_9

    add-int/lit8 p3, p2, 0x3

    aget-byte p3, p1, p3

    if-ne p3, v4, :cond_9

    add-int/lit8 p3, p2, 0x4

    aget-byte p3, p1, p3

    if-ne p3, v3, :cond_9

    add-int/lit8 p2, p2, 0x8

    .line 16
    aget-byte p1, p1, p2

    :cond_9
    :goto_2
    return-void
.end method

.method public P0(Ly/b;I)V
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

.method public b([B)V
    .locals 4

    if-eqz p1, :cond_a

    .line 1
    array-length v0, p1

    if-gtz v0, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    iget v0, p0, Lv0/i;->b:I

    array-length v1, p1

    add-int/2addr v0, v1

    const/16 v1, 0x400

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    .line 3
    iput v2, p0, Lv0/i;->b:I

    .line 4
    iput v2, p0, Lv0/i;->d:I

    .line 5
    iput v2, p0, Lv0/i;->c:I

    .line 6
    iput-boolean v2, p0, Lv0/i;->e:Z

    .line 7
    :cond_1
    iget-object v0, p0, Lv0/i;->a:[B

    iget v1, p0, Lv0/i;->b:I

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget v0, p0, Lv0/i;->b:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lv0/i;->b:I

    .line 9
    iget p1, p0, Lv0/i;->d:I

    if-gt v0, p1, :cond_2

    return-void

    .line 10
    :cond_2
    :goto_0
    iget v0, p0, Lv0/i;->b:I

    const/4 v1, 0x1

    if-ge p1, v0, :cond_5

    .line 11
    iget-boolean v0, p0, Lv0/i;->e:Z

    if-eqz v0, :cond_3

    .line 12
    iget-object v0, p0, Lv0/i;->a:[B

    add-int/lit8 v1, p1, -0x1

    aget-byte v1, v0, v1

    const/16 v3, 0xd

    if-ne v1, v3, :cond_4

    aget-byte v1, v0, p1

    const/16 v3, 0xa

    if-ne v1, v3, :cond_4

    .line 13
    iput-boolean v2, p0, Lv0/i;->e:Z

    .line 14
    iget v1, p0, Lv0/i;->c:I

    add-int/lit8 v3, v1, 0x1

    sub-int v1, p1, v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0, v0, v3, v1}, Lv0/i;->M2([BII)V

    add-int/lit8 v0, p1, 0x1

    .line 15
    iput v0, p0, Lv0/i;->c:I

    goto :goto_1

    .line 16
    :cond_3
    iget-object v0, p0, Lv0/i;->a:[B

    aget-byte v0, v0, p1

    const/16 v3, 0x24

    if-ne v0, v3, :cond_4

    .line 17
    iput-boolean v1, p0, Lv0/i;->e:Z

    .line 18
    iput p1, p0, Lv0/i;->c:I

    :cond_4
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 19
    :cond_5
    iget p1, p0, Lv0/i;->c:I

    if-eqz p1, :cond_7

    if-ne p1, v0, :cond_6

    .line 20
    iput v2, p0, Lv0/i;->b:I

    goto :goto_2

    :cond_6
    sub-int/2addr v0, p1

    .line 21
    iput v0, p0, Lv0/i;->b:I

    .line 22
    iget-object v3, p0, Lv0/i;->a:[B

    invoke-static {v3, p1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    :goto_2
    iput v2, p0, Lv0/i;->c:I

    .line 24
    :cond_7
    iget-boolean p1, p0, Lv0/i;->e:Z

    if-eqz p1, :cond_9

    .line 25
    iget p1, p0, Lv0/i;->b:I

    if-le p1, v1, :cond_8

    .line 26
    iput p1, p0, Lv0/i;->d:I

    goto :goto_3

    .line 27
    :cond_8
    iput v1, p0, Lv0/i;->d:I

    goto :goto_3

    .line 28
    :cond_9
    iput v2, p0, Lv0/i;->d:I

    :goto_3
    return-void

    :cond_a
    :goto_4
    const-wide/16 v0, 0x64

    .line 29
    invoke-static {v0, v1}, La/i;->a0(J)V

    return-void
.end method
