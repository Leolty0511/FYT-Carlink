.class public Lm0/m;
.super Lm0/a;
.source "SourceFile"

# interfaces
.implements Lo1/q;


# instance fields
.field public final a:Z

.field public final b:[B

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:[B

.field public j:[B

.field public k:[B

.field public l:[B

.field public m:I

.field public n:I

.field public o:[B

.field public p:I

.field public q:I

.field public r:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lm0/a;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lm0/m;->a:Z

    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 3
    iput-object v1, p0, Lm0/m;->b:[B

    .line 4
    iput v0, p0, Lm0/m;->c:I

    .line 5
    iput v0, p0, Lm0/m;->d:I

    .line 6
    iput v0, p0, Lm0/m;->e:I

    const/4 v1, -0x1

    .line 7
    iput v1, p0, Lm0/m;->f:I

    iput v0, p0, Lm0/m;->g:I

    const/16 v1, 0x80

    .line 8
    iput v1, p0, Lm0/m;->h:I

    add-int/lit8 v1, v1, 0x2

    .line 9
    new-array v1, v1, [B

    iput-object v1, p0, Lm0/m;->i:[B

    const/16 v1, 0x40

    new-array v1, v1, [B

    .line 10
    iput-object v1, p0, Lm0/m;->j:[B

    const/16 v1, 0xa

    new-array v1, v1, [B

    .line 11
    iput-object v1, p0, Lm0/m;->l:[B

    .line 12
    iput v0, p0, Lm0/m;->n:I

    const/4 v1, 0x1

    new-array v1, v1, [B

    aput-byte v0, v1, v0

    .line 13
    iput-object v1, p0, Lm0/m;->o:[B

    .line 14
    iput v0, p0, Lm0/m;->p:I

    .line 15
    iput v0, p0, Lm0/m;->q:I

    .line 16
    iput v0, p0, Lm0/m;->r:I

    return-void
.end method

.method public static varargs Q2([I)V
    .locals 1

    .line 1
    invoke-static {p0}, Lz/k;->b([I)[B

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    sget-object v0, Lz/a;->b:Lo1/e0;

    invoke-virtual {v0, p0}, Lo1/e0;->i([B)V

    :cond_0
    return-void
.end method


# virtual methods
.method public K2()V
    .locals 0

    return-void
.end method

.method public L2()V
    .locals 1

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lm0/m;->f:I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lm0/m;->k:[B

    const/4 v0, 0x0

    .line 3
    sput v0, Lm0/b;->e:I

    return-void
.end method

.method public final N2()V
    .locals 3

    .line 1
    sget-object v0, Lz/a;->b:Lo1/e0;

    const/4 v1, 0x3

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    invoke-static {v2}, Lz/k;->b([I)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lo1/e0;->i([B)V

    new-array v1, v1, [I

    .line 2
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->b([I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lo1/e0;->i([B)V

    return-void

    :array_0
    .array-data 4
        0x1
        0x56
        0xaa
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x56
        0x55
    .end array-data
.end method

.method public O2([BII)V
    .locals 2

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, -0x1d

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lm0/m;->f:I

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lm0/m;->P2([BII)V

    :goto_0
    return-void
.end method

.method public final P2([BII)V
    .locals 15

    move-object v0, p0

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCanUpInfo :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p3}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LG"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    aget-byte v1, p1, p2

    const/4 v3, 0x3

    if-eq v1, v3, :cond_8

    const/16 v4, 0xa

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eq v1, v4, :cond_7

    const/16 v8, 0xc

    const/4 v9, 0x7

    if-eq v1, v8, :cond_6

    const/16 v8, 0x82

    const/16 v10, 0xea

    const/4 v11, 0x4

    const/16 v12, 0x80

    const/16 v13, 0x8

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    new-array v1, v4, [B

    move v3, v5

    :goto_0
    if-ge v3, v4, :cond_0

    add-int v8, p2, v3

    add-int/2addr v8, v7

    .line 3
    aget-byte v8, p1, v8

    aput-byte v8, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0xE2 :"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v5, v4}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v3, v0, Lm0/m;->l:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Arraysequals OK"

    .line 6
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v1, v11, [I

    .line 7
    fill-array-data v1, :array_0

    invoke-static {v1}, Lm0/m;->Q2([I)V

    goto :goto_1

    :cond_1
    const-string v1, "Arraysequals  ERROR"

    .line 8
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    new-array v1, v6, [I

    aput v6, v1, v5

    .line 9
    invoke-static {v7, v1}, Lm0/d;->j(I[I)V

    goto/16 :goto_2

    .line 10
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0xE1 :"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p3}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, p2, 0x2

    .line 11
    aget-byte v4, p1, v1

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v13

    const v9, 0xff00

    and-int/2addr v4, v9

    add-int/lit8 v3, p2, 0x3

    aget-byte v9, p1, v3

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v4, v9

    iput v4, v0, Lm0/m;->r:I

    .line 12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "block ="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Lm0/m;->r:I

    const v11, 0xffff

    and-int/2addr v9, v11

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " block0 ="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v1, p1, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " block1="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v1, p1, v3

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iget-object v1, v0, Lm0/m;->i:[B

    iget v2, v0, Lm0/m;->r:I

    and-int/lit16 v3, v2, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v5

    shr-int/lit8 v3, v2, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 14
    aput-byte v3, v1, v6

    .line 15
    iget-object v3, v0, Lm0/m;->k:[B

    mul-int/2addr v2, v12

    invoke-static {v3, v2, v1, v7, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v1, v6, [I

    .line 16
    iget v2, v0, Lm0/m;->r:I

    mul-int/lit8 v2, v2, 0x64

    iget v3, v0, Lm0/m;->n:I

    div-int/2addr v2, v3

    aput v2, v1, v5

    invoke-static {v5, v1}, Lm0/d;->j(I[I)V

    .line 17
    iget-object v1, v0, Lm0/m;->i:[B

    invoke-virtual {p0, v10, v8, v1}, Lm0/m;->R2(II[B)V

    goto/16 :goto_2

    .line 18
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "0xE0 :"

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p3}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, p2, 0x2

    .line 19
    aget-byte v1, p1, v1

    const/4 v14, -0x2

    if-eq v1, v14, :cond_5

    const/4 v14, -0x1

    if-eq v1, v14, :cond_5

    if-eqz v1, :cond_5

    if-eq v1, v6, :cond_4

    if-eq v1, v7, :cond_3

    if-eq v1, v3, :cond_2

    const/16 v2, 0x10

    if-eq v1, v2, :cond_5

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_2

    .line 20
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0xE03 :"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p3}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "size ="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lm0/m;->p:I

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " checksum ="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lm0/m;->q:I

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xb

    new-array v1, v1, [I

    const/16 v2, 0xe3

    aput v2, v1, v5

    const/16 v2, 0xe9

    aput v2, v1, v6

    aput v13, v1, v7

    .line 22
    iget v2, v0, Lm0/m;->p:I

    shr-int/lit8 v5, v2, 0x18

    and-int/lit16 v5, v5, 0xff

    aput v5, v1, v3

    shr-int/lit8 v3, v2, 0x10

    and-int/lit16 v3, v3, 0xff

    aput v3, v1, v11

    const/4 v3, 0x5

    shr-int/lit8 v5, v2, 0x8

    and-int/lit16 v5, v5, 0xff

    aput v5, v1, v3

    const/4 v3, 0x6

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v3

    iget v2, v0, Lm0/m;->q:I

    shr-int/lit8 v3, v2, 0x18

    and-int/lit16 v3, v3, 0xff

    aput v3, v1, v9

    shr-int/lit8 v3, v2, 0x10

    and-int/lit16 v3, v3, 0xff

    aput v3, v1, v13

    const/16 v3, 0x9

    shr-int/lit8 v5, v2, 0x8

    and-int/lit16 v5, v5, 0xff

    aput v5, v1, v3

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v4

    invoke-static {v1}, Lm0/m;->Q2([I)V

    goto :goto_2

    :cond_3
    new-array v1, v6, [I

    aput v3, v1, v5

    .line 23
    invoke-static {v7, v1}, Lm0/d;->j(I[I)V

    goto :goto_2

    .line 24
    :cond_4
    iget-object v1, v0, Lm0/m;->i:[B

    iget v2, v0, Lm0/m;->r:I

    and-int/lit16 v3, v2, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v5

    shr-int/lit8 v3, v2, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 25
    aput-byte v3, v1, v6

    .line 26
    iget-object v3, v0, Lm0/m;->k:[B

    mul-int/2addr v2, v12

    invoke-static {v3, v2, v1, v7, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    iget-object v1, v0, Lm0/m;->i:[B

    invoke-virtual {p0, v10, v8, v1}, Lm0/m;->R2(II[B)V

    goto :goto_2

    :cond_5
    :pswitch_3
    new-array v1, v6, [I

    aput v11, v1, v5

    .line 28
    invoke-static {v7, v1}, Lm0/d;->j(I[I)V

    goto :goto_2

    :cond_6
    new-array v1, v6, [I

    aput v9, v1, v5

    .line 29
    invoke-static {v7, v1}, Lm0/d;->j(I[I)V

    goto :goto_2

    :cond_7
    new-array v1, v6, [I

    aput v3, v1, v5

    .line 30
    invoke-static {v7, v1}, Lm0/d;->j(I[I)V

    goto :goto_2

    .line 31
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x03 :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p3}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch -0x20
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0xf
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0xeb
        0x1
        0x1
    .end array-data
.end method

.method public final R2(II[B)V
    .locals 4

    .line 1
    array-length p2, p3

    const/4 v0, 0x2

    add-int/2addr p2, v0

    const/4 v1, 0x1

    add-int/2addr p2, v1

    new-array p2, p2, [I

    const/16 v2, -0x1d

    const/4 v3, 0x0

    .line 2
    aput v2, p2, v3

    int-to-byte p1, p1

    .line 3
    aput p1, p2, v1

    .line 4
    array-length p1, p3

    int-to-byte p1, p1

    aput p1, p2, v0

    .line 5
    array-length p1, p3

    :goto_0
    if-ge v3, p1, :cond_0

    const/4 v0, 0x3

    add-int/2addr v0, v3

    .line 6
    aget-byte v1, p3, v3

    aput v1, p2, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p2}, Lm0/m;->Q2([I)V

    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 6

    if-eqz p1, :cond_0

    goto/16 :goto_b

    :cond_0
    const-string p1, "LG"

    const-string p2, "C_UP_FILE_PATH"

    .line 1
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lm0/m;->N2()V

    if-eqz p4, :cond_9

    .line 3
    array-length p1, p4

    if-lez p1, :cond_9

    const/4 p1, 0x0

    const/4 p2, 0x4

    const/4 p3, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    aget-object p4, p4, v1

    invoke-direct {v2, p4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result p1

    iput p1, p0, Lm0/m;->p:I

    const-string p1, "CAN"

    .line 6
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "size = "

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lm0/m;->p:I

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget p1, p0, Lm0/m;->p:I

    if-nez p1, :cond_1

    new-array p1, v0, [I

    const/4 p4, 0x5

    aput p4, p1, v1

    .line 8
    invoke-static {p3, p1}, Lm0/d;->j(I[I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 9
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    :cond_1
    const/high16 p4, 0x200000

    if-le p1, p4, :cond_2

    :try_start_3
    new-array p1, v0, [I

    const/4 p4, 0x6

    aput p4, p1, v1

    .line 11
    invoke-static {p3, p1}, Lm0/d;->j(I[I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 12
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void

    .line 14
    :cond_2
    :try_start_5
    rem-int/lit16 p4, p1, 0x80

    if-nez p4, :cond_3

    div-int/lit16 p1, p1, 0x80

    mul-int/lit16 p1, p1, 0x80

    iput p1, p0, Lm0/m;->m:I

    goto :goto_2

    .line 15
    :cond_3
    div-int/lit16 p1, p1, 0x80

    add-int/2addr p1, v0

    mul-int/lit16 p1, p1, 0x80

    iput p1, p0, Lm0/m;->m:I

    .line 16
    :goto_2
    iget p1, p0, Lm0/m;->m:I

    new-array p1, p1, [B

    iput-object p1, p0, Lm0/m;->k:[B

    .line 17
    invoke-virtual {v2, p1}, Ljava/io/InputStream;->read([B)I

    .line 18
    iget p1, p0, Lm0/m;->p:I

    :goto_3
    iget p4, p0, Lm0/m;->m:I

    if-ge p1, p4, :cond_4

    .line 19
    iget-object p4, p0, Lm0/m;->k:[B

    aput-byte v1, p4, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_4
    move p1, v1

    :goto_4
    const/16 p4, 0xa

    if-ge p1, p4, :cond_5

    .line 20
    iget-object v3, p0, Lm0/m;->l:[B

    iget-object v4, p0, Lm0/m;->k:[B

    iget v5, p0, Lm0/m;->p:I

    sub-int/2addr v5, p4

    add-int/2addr v5, p1

    aget-byte p4, v4, v5

    aput-byte p4, v3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 21
    :cond_5
    iget p1, p0, Lm0/m;->m:I

    div-int/lit16 p1, p1, 0x80

    iput p1, p0, Lm0/m;->n:I

    .line 22
    iput v1, p0, Lm0/m;->q:I

    move p1, v1

    .line 23
    :goto_5
    iget p4, p0, Lm0/m;->p:I

    if-ge p1, p4, :cond_6

    .line 24
    iget p4, p0, Lm0/m;->q:I

    iget-object v3, p0, Lm0/m;->k:[B

    aget-byte v3, v3, p1

    and-int/lit16 v3, v3, 0xff

    add-int/2addr p4, v3

    iput p4, p0, Lm0/m;->q:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_6
    new-array p1, p2, [I

    const/16 p4, 0xe3

    aput p4, p1, v1

    const/16 p4, 0xe8

    aput p4, p1, v0

    aput v0, p1, p3

    const/4 p4, 0x3

    aput v0, p1, p4

    .line 25
    invoke-static {p1}, Lm0/m;->Q2([I)V

    .line 26
    iput v1, p0, Lm0/m;->f:I

    new-array p1, v0, [I

    const/16 p4, 0x64

    aput p4, p1, v1

    .line 27
    invoke-static {v0, p1}, Lm0/d;->j(I[I)V

    new-array p1, v0, [I

    .line 28
    iget v3, p0, Lm0/m;->n:I

    div-int/2addr p4, v3

    aput p4, p1, v1

    invoke-static {v1, p1}, Lm0/d;->j(I[I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 29
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_6

    :catch_2
    move-exception p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 31
    :goto_6
    sput v1, Lm0/b;->e:I

    const-wide/16 p1, 0x64

    .line 32
    invoke-static {p1, p2}, La/i;->a0(J)V

    .line 33
    iput v1, p0, Lm0/m;->g:I

    goto :goto_b

    :catch_3
    move-exception p1

    goto :goto_7

    :catchall_0
    move-exception p2

    move-object v2, p1

    move-object p1, p2

    goto :goto_9

    :catch_4
    move-exception p4

    move-object v2, p1

    move-object p1, p4

    .line 34
    :goto_7
    :try_start_7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array p1, v0, [I

    aput p2, p1, v1

    .line 35
    invoke-static {p3, p1}, Lm0/d;->j(I[I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v2, :cond_7

    .line 36
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_8

    :catch_5
    move-exception p1

    .line 37
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_8
    return-void

    :catchall_1
    move-exception p1

    :goto_9
    if-eqz v2, :cond_8

    .line 38
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_a

    :catch_6
    move-exception p2

    .line 39
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 40
    :cond_8
    :goto_a
    throw p1

    :cond_9
    :goto_b
    return-void
.end method

.method public b([B)V
    .locals 7

    if-eqz p1, :cond_e

    .line 1
    array-length v0, p1

    if-gtz v0, :cond_0

    goto/16 :goto_7

    .line 2
    :cond_0
    iget v0, p0, Lm0/m;->c:I

    array-length v1, p1

    add-int/2addr v0, v1

    const/16 v1, 0x400

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    .line 3
    iput v2, p0, Lm0/m;->c:I

    .line 4
    iput v2, p0, Lm0/m;->d:I

    .line 5
    iput v2, p0, Lm0/m;->e:I

    .line 6
    :cond_1
    iget-object v0, p0, Lm0/m;->b:[B

    iget v1, p0, Lm0/m;->c:I

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iget v0, p0, Lm0/m;->c:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lm0/m;->c:I

    .line 8
    iget p1, p0, Lm0/m;->e:I

    const/4 v1, 0x3

    const/4 v3, 0x4

    if-eqz p1, :cond_5

    if-lt p1, v0, :cond_2

    return-void

    .line 9
    :cond_2
    iget-object p1, p0, Lm0/m;->b:[B

    const/4 v0, 0x2

    aget-byte p1, p1, v0

    move v4, v1

    .line 10
    :goto_0
    iget v5, p0, Lm0/m;->e:I

    if-ge v4, v5, :cond_3

    .line 11
    iget-object v5, p0, Lm0/m;->b:[B

    aget-byte v5, v5, v4

    xor-int/2addr p1, v5

    int-to-byte p1, p1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 12
    :cond_3
    iget-object v4, p0, Lm0/m;->b:[B

    aget-byte v6, v4, v5

    if-ne p1, v6, :cond_4

    sub-int/2addr v5, v3

    .line 13
    invoke-virtual {p0, v4, v3, v5}, Lm0/m;->O2([BII)V

    .line 14
    iget p1, p0, Lm0/m;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lm0/m;->d:I

    goto :goto_1

    .line 15
    :cond_4
    iput v0, p0, Lm0/m;->d:I

    .line 16
    :goto_1
    iput v2, p0, Lm0/m;->e:I

    .line 17
    :cond_5
    iget p1, p0, Lm0/m;->c:I

    sub-int/2addr p1, v1

    :goto_2
    iget v0, p0, Lm0/m;->d:I

    if-ge v0, p1, :cond_b

    .line 18
    iget-object v1, p0, Lm0/m;->b:[B

    aget-byte v4, v1, v0

    const/16 v5, -0x78

    if-ne v4, v5, :cond_a

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, v1, v4

    const/16 v5, 0x55

    if-ne v4, v5, :cond_a

    add-int/lit8 v4, v0, 0x2

    .line 19
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    const v5, 0xff00

    and-int/2addr v4, v5

    add-int/lit8 v5, v0, 0x3

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    iput v4, p0, Lm0/m;->e:I

    const/16 v5, 0x200

    if-le v4, v5, :cond_6

    .line 20
    iput v2, p0, Lm0/m;->e:I

    goto :goto_5

    :cond_6
    add-int/lit8 v5, v0, 0x4

    add-int/2addr v4, v5

    .line 21
    iput v4, p0, Lm0/m;->e:I

    .line 22
    iget v5, p0, Lm0/m;->c:I

    if-lt v4, v5, :cond_7

    sub-int/2addr v4, v0

    .line 23
    iput v4, p0, Lm0/m;->e:I

    goto :goto_6

    :cond_7
    add-int/lit8 v4, v0, 0x2

    .line 24
    aget-byte v1, v1, v4

    add-int/lit8 v0, v0, 0x3

    .line 25
    :goto_3
    iget v4, p0, Lm0/m;->e:I

    if-ge v0, v4, :cond_8

    .line 26
    iget-object v4, p0, Lm0/m;->b:[B

    aget-byte v4, v4, v0

    xor-int/2addr v1, v4

    int-to-byte v1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 27
    :cond_8
    iget-object v0, p0, Lm0/m;->b:[B

    aget-byte v5, v0, v4

    if-ne v1, v5, :cond_9

    .line 28
    iget v1, p0, Lm0/m;->d:I

    add-int/lit8 v5, v1, 0x4

    sub-int/2addr v4, v1

    sub-int/2addr v4, v3

    invoke-virtual {p0, v0, v5, v4}, Lm0/m;->O2([BII)V

    .line 29
    iget v0, p0, Lm0/m;->e:I

    iput v0, p0, Lm0/m;->d:I

    goto :goto_4

    .line 30
    :cond_9
    iget v0, p0, Lm0/m;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lm0/m;->d:I

    .line 31
    :goto_4
    iput v2, p0, Lm0/m;->e:I

    .line 32
    :cond_a
    :goto_5
    iget v0, p0, Lm0/m;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lm0/m;->d:I

    goto :goto_2

    :cond_b
    :goto_6
    if-eqz v0, :cond_d

    .line 33
    iget p1, p0, Lm0/m;->c:I

    sub-int/2addr p1, v0

    iput p1, p0, Lm0/m;->c:I

    if-eqz p1, :cond_c

    .line 34
    iget-object v1, p0, Lm0/m;->b:[B

    invoke-static {v1, v0, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    :cond_c
    iput v2, p0, Lm0/m;->d:I

    :cond_d
    return-void

    :cond_e
    :goto_7
    const-wide/16 v0, 0x64

    .line 36
    invoke-static {v0, v1}, La/i;->a0(J)V

    .line 37
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    const-string v0, "MCU DATA IS NULL"

    invoke-virtual {p1, v0}, Ln1/b;->s(Ljava/lang/String;)V

    return-void
.end method
