.class public Lz/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/q;


# instance fields
.field public final a:[B

.field public b:I

.field public c:I

.field public d:I

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lz/e;->a:[B

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lz/e;->b:I

    .line 4
    iput v0, p0, Lz/e;->c:I

    const/4 v1, 0x1

    .line 5
    iput v1, p0, Lz/e;->d:I

    .line 6
    iput-boolean v0, p0, Lz/e;->e:Z

    .line 7
    iput-boolean v0, p0, Lz/e;->f:Z

    iput-boolean v0, p0, Lz/e;->g:Z

    .line 8
    iput-boolean v0, p0, Lz/e;->h:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lh0/e;->L(I)V

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lh0/e;->l(I)V

    const-string v1, ""

    .line 3
    invoke-static {v1}, Lh0/e;->O(Ljava/lang/String;)V

    .line 4
    invoke-static {v1}, Lh0/e;->P(Ljava/lang/String;)V

    .line 5
    invoke-static {v1}, Lh0/e;->M(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 6
    invoke-static {v1}, Lh0/e;->N(Ljava/lang/String;)V

    .line 7
    invoke-static {v1}, Lh0/e;->k(Ljava/lang/String;)V

    .line 8
    invoke-static {v1}, Lh0/e;->i(Ljava/lang/String;)V

    .line 9
    invoke-static {v1}, Lh0/e;->j(Ljava/lang/String;)V

    .line 10
    invoke-static {v0}, Lh0/e;->o(I)V

    .line 11
    invoke-static {v0}, Lh0/e;->m(I)V

    return-void
.end method

.method public b([B)V
    .locals 7

    if-eqz p1, :cond_a

    .line 1
    array-length v0, p1

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    iget v0, p0, Lz/e;->b:I

    array-length v1, p1

    add-int/2addr v0, v1

    const/16 v1, 0x400

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v0, v1, :cond_1

    .line 3
    iput v3, p0, Lz/e;->b:I

    .line 4
    iput v2, p0, Lz/e;->d:I

    .line 5
    iput v3, p0, Lz/e;->c:I

    .line 6
    iput-boolean v3, p0, Lz/e;->e:Z

    .line 7
    :cond_1
    iget-object v0, p0, Lz/e;->a:[B

    iget v1, p0, Lz/e;->b:I

    array-length v4, p1

    invoke-static {p1, v3, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget v0, p0, Lz/e;->b:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lz/e;->b:I

    .line 9
    iget p1, p0, Lz/e;->d:I

    if-gt v0, p1, :cond_2

    return-void

    .line 10
    :cond_2
    :goto_0
    iget v0, p0, Lz/e;->b:I

    if-ge p1, v0, :cond_6

    .line 11
    iget-object v0, p0, Lz/e;->a:[B

    add-int/lit8 v1, p1, -0x1

    aget-byte v4, v0, v1

    const/16 v5, 0xd

    if-ne v4, v5, :cond_5

    aget-byte v4, v0, p1

    const/16 v5, 0xa

    if-ne v4, v5, :cond_5

    .line 12
    iget-boolean v4, p0, Lz/e;->e:Z

    if-nez v4, :cond_3

    .line 13
    iput-boolean v2, p0, Lz/e;->e:Z

    .line 14
    iput v1, p0, Lz/e;->c:I

    goto :goto_1

    .line 15
    :cond_3
    iget v4, p0, Lz/e;->c:I

    sub-int v5, p1, v4

    const/4 v6, 0x5

    if-ge v5, v6, :cond_4

    .line 16
    iput v1, p0, Lz/e;->c:I

    goto :goto_1

    .line 17
    :cond_4
    iput-boolean v3, p0, Lz/e;->e:Z

    add-int/lit8 v1, v4, 0x2

    sub-int v4, p1, v4

    add-int/lit8 v4, v4, -0x3

    .line 18
    invoke-virtual {p0, v0, v1, v4}, Lz/e;->d([BII)V

    add-int/lit8 v0, p1, 0x1

    .line 19
    iput v0, p0, Lz/e;->c:I

    :goto_1
    add-int/lit8 p1, p1, 0x1

    :cond_5
    add-int/2addr p1, v2

    goto :goto_0

    .line 20
    :cond_6
    iget p1, p0, Lz/e;->c:I

    if-eqz p1, :cond_8

    if-ne p1, v0, :cond_7

    .line 21
    iput v3, p0, Lz/e;->b:I

    goto :goto_2

    :cond_7
    sub-int/2addr v0, p1

    .line 22
    iput v0, p0, Lz/e;->b:I

    .line 23
    iget-object v1, p0, Lz/e;->a:[B

    invoke-static {v1, p1, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    :goto_2
    iput v3, p0, Lz/e;->c:I

    .line 25
    :cond_8
    iget p1, p0, Lz/e;->b:I

    if-le p1, v2, :cond_9

    .line 26
    iput p1, p0, Lz/e;->d:I

    goto :goto_3

    .line 27
    :cond_9
    iput v2, p0, Lz/e;->d:I

    :goto_3
    return-void

    :cond_a
    :goto_4
    const-wide/16 v0, 0x64

    .line 28
    invoke-static {v0, v1}, La/i;->a0(J)V

    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lz/e;->h:Z

    return v0
.end method

.method public final d([BII)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    .line 1
    new-instance v0, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    const-string v5, "XX"

    .line 2
    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x2

    if-eqz v5, :cond_0

    .line 3
    invoke-static {}, Lh0/g;->Y2()Lh0/g;

    move-result-object v2

    invoke-virtual {v2, v1}, Lh0/g;->Z2(Lz/e;)Lj0/b;

    move-result-object v2

    .line 4
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "BT"

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "XX Message : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-virtual {v2, v0}, Lj0/b;->E(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v5, "BT"

    .line 7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Message : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    aget-byte v0, v2, v3

    const/16 v5, 0x41

    const/16 v12, 0x9

    const/16 v13, 0x50

    const/16 v15, 0x31

    const/16 v10, 0x30

    const/16 v7, 0x53

    const/4 v14, 0x3

    const/4 v11, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1d

    :pswitch_1
    add-int/lit8 v0, v3, 0x1

    .line 9
    aget-byte v0, v2, v0

    const/16 v5, 0x4c

    if-eq v0, v5, :cond_3

    const/16 v5, 0x54

    if-eq v0, v5, :cond_1

    goto/16 :goto_1d

    :cond_1
    if-gt v4, v6, :cond_2

    return-void

    .line 10
    :cond_2
    new-instance v0, Ljava/lang/String;

    add-int/2addr v3, v6

    sub-int/2addr v4, v6

    invoke-direct {v0, v2, v3, v4}, Ljava/lang/String;-><init>([BII)V

    new-array v2, v8, [Ljava/lang/String;

    aput-object v0, v2, v9

    .line 11
    invoke-static {v15, v2}, Lh0/e;->Y(I[Ljava/lang/String;)V

    const-string v2, "com.syu.bt.phone.sms"

    .line 12
    sget-object v3, La/b;->k:Ljava/lang/String;

    const-string v4, "handle"

    invoke-static {v2, v3, v4, v0}, Lo1/u;->D0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1d

    .line 13
    :cond_3
    :try_start_0
    new-instance v0, Ljava/lang/String;

    add-int/lit8 v4, v3, 0x2

    invoke-direct {v0, v2, v4, v6}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 14
    new-instance v4, Ljava/lang/String;

    add-int/lit8 v5, v3, 0x4

    invoke-direct {v4, v2, v5, v6}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 15
    new-instance v5, Ljava/lang/String;

    add-int/lit8 v7, v3, 0x6

    invoke-direct {v5, v2, v7, v14}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v3, v12

    if-lez v0, :cond_4

    .line 16
    new-instance v7, Ljava/lang/String;

    const-string v10, "UTF-8"

    invoke-direct {v7, v2, v3, v0, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v7, ""

    :goto_0
    if-lez v4, :cond_5

    .line 17
    new-instance v10, Ljava/lang/String;

    add-int v11, v3, v0

    const-string v12, "UTF-8"

    invoke-direct {v10, v2, v11, v4, v12}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v10, ""

    :goto_1
    if-lez v5, :cond_6

    .line 18
    new-instance v11, Ljava/lang/String;

    add-int/2addr v3, v0

    add-int/2addr v3, v4

    const-string v0, "UTF-8"

    invoke-direct {v11, v2, v3, v5, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    goto :goto_2

    :cond_6
    const-string v11, ""

    :goto_2
    const/16 v0, 0x32

    new-array v2, v14, [Ljava/lang/String;

    aput-object v7, v2, v9

    aput-object v10, v2, v8

    aput-object v11, v2, v6

    .line 19
    invoke-static {v0, v2}, Lh0/e;->Y(I[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1d

    :catch_0
    move-exception v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1d

    :pswitch_2
    add-int/lit8 v0, v3, 0x1

    .line 21
    aget-byte v0, v2, v0

    if-eq v0, v13, :cond_8

    if-eq v0, v7, :cond_7

    goto/16 :goto_1d

    .line 22
    :cond_7
    :try_start_1
    new-instance v0, Ljava/lang/String;

    add-int/2addr v3, v6

    sub-int/2addr v4, v6

    const-string/jumbo v5, "utf-8"

    invoke-direct {v0, v2, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    const-string v2, "0"

    .line 23
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_77

    const-string v2, "Activation failed (error code: %s)"

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v0, v3, v9

    .line 24
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lh0/e;->E(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1d

    :catch_1
    move-exception v0

    .line 25
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_1d

    .line 26
    :cond_8
    new-instance v0, Ljava/lang/String;

    add-int/2addr v3, v6

    sub-int/2addr v4, v6

    invoke-direct {v0, v2, v3, v4}, Ljava/lang/String;-><init>([BII)V

    const/16 v2, 0x2f

    :try_start_2
    new-array v3, v8, [I

    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v3, v9

    invoke-static {v2, v3}, Lh0/e;->W(I[I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_c

    goto/16 :goto_1d

    :pswitch_3
    add-int/lit8 v0, v3, 0x1

    .line 28
    aget-byte v0, v2, v0

    if-eq v0, v13, :cond_9

    goto/16 :goto_1d

    :cond_9
    if-gt v4, v6, :cond_a

    return-void

    .line 29
    :cond_a
    new-instance v0, Ljava/lang/String;

    add-int/2addr v3, v6

    sub-int/2addr v4, v6

    invoke-direct {v0, v2, v3, v4}, Ljava/lang/String;-><init>([BII)V

    .line 30
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_77

    .line 31
    :try_start_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0x24

    new-array v3, v8, [I

    aput v0, v3, v9

    .line 32
    invoke-static {v2, v3, v11, v11}, Lh0/e;->X(I[I[F[Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_c

    goto/16 :goto_1d

    :pswitch_4
    add-int/lit8 v0, v3, 0x1

    .line 33
    aget-byte v0, v2, v0

    if-eq v0, v10, :cond_d

    if-eq v0, v15, :cond_c

    const/16 v5, 0x58

    if-eq v0, v5, :cond_b

    goto/16 :goto_1d

    :cond_b
    const/16 v0, 0x3b

    new-array v5, v8, [Ljava/lang/String;

    .line 34
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v2, v3, v4}, Ljava/lang/String;-><init>([BII)V

    aput-object v6, v5, v9

    invoke-static {v0, v5}, Lh0/e;->Y(I[Ljava/lang/String;)V

    goto/16 :goto_1d

    .line 35
    :cond_c
    invoke-static {v9}, Lh0/e;->B(I)V

    goto/16 :goto_1d

    .line 36
    :cond_d
    invoke-static {v8}, Lh0/e;->B(I)V

    goto/16 :goto_1d

    :pswitch_5
    add-int/lit8 v0, v3, 0x1

    .line 37
    aget-byte v0, v2, v0

    if-eq v0, v5, :cond_14

    const/16 v5, 0x46

    if-eq v0, v5, :cond_12

    const/16 v2, 0x48

    if-eq v0, v2, :cond_11

    const/16 v2, 0x54

    if-eq v0, v2, :cond_10

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_1d

    .line 38
    :pswitch_6
    iget-boolean v0, v1, Lz/e;->f:Z

    if-eqz v0, :cond_e

    .line 39
    sput-boolean v8, Lh0/c;->m0:Z

    .line 40
    sget-object v0, Ly0/f;->b:Ly0/e;

    invoke-virtual {v0, v6}, Ly0/e;->a(I)V

    .line 41
    iput-boolean v8, v1, Lz/e;->g:Z

    .line 42
    invoke-static {}, Ly0/h;->M()V

    goto/16 :goto_1d

    .line 43
    :cond_e
    sget v0, Lh0/c;->U:I

    if-ne v0, v8, :cond_f

    goto/16 :goto_1d

    :cond_f
    const/4 v0, 0x5

    .line 44
    invoke-static {v0}, Lh0/e;->s(I)V

    goto/16 :goto_1d

    .line 45
    :pswitch_7
    iput-boolean v9, v1, Lz/e;->f:Z

    const/4 v2, 0x4

    .line 46
    invoke-static {v2}, Lh0/e;->s(I)V

    goto/16 :goto_1d

    .line 47
    :pswitch_8
    iput-boolean v9, v1, Lz/e;->f:Z

    .line 48
    invoke-static {v14}, Lh0/e;->s(I)V

    goto/16 :goto_1d

    .line 49
    :pswitch_9
    invoke-static {v6}, Lh0/e;->s(I)V

    goto/16 :goto_1d

    .line 50
    :pswitch_a
    invoke-static {v8}, Lh0/e;->s(I)V

    goto/16 :goto_1d

    .line 51
    :pswitch_b
    invoke-static {v9}, Lh0/e;->s(I)V

    .line 52
    invoke-virtual/range {p0 .. p0}, Lz/e;->a()V

    goto/16 :goto_1d

    .line 53
    :cond_10
    invoke-static {v9}, Lh0/e;->t(I)V

    goto/16 :goto_1d

    :cond_11
    const/16 v0, 0x18

    .line 54
    invoke-static {v0, v11, v11, v11}, Lh0/e;->X(I[I[F[Ljava/lang/String;)V

    goto/16 :goto_1d

    :cond_12
    const/16 v0, 0xf

    if-gt v4, v0, :cond_13

    goto/16 :goto_1d

    :cond_13
    add-int/lit8 v0, v3, 0x2

    .line 55
    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    if-lt v0, v10, :cond_77

    const/16 v5, 0x39

    if-gt v0, v5, :cond_77

    add-int/lit8 v0, v0, -0x30

    .line 56
    new-instance v5, Ljava/lang/String;

    add-int/lit8 v7, v3, 0x3

    const/16 v10, 0xc

    invoke-direct {v5, v2, v7, v10}, Ljava/lang/String;-><init>([BII)V

    .line 57
    new-instance v7, Ljava/lang/String;

    const/16 v10, 0xf

    add-int/2addr v3, v10

    sub-int/2addr v4, v10

    invoke-direct {v7, v2, v3, v4}, Ljava/lang/String;-><init>([BII)V

    new-array v2, v8, [I

    aput v0, v2, v9

    new-array v0, v6, [Ljava/lang/String;

    aput-object v5, v0, v9

    aput-object v7, v0, v8

    const/16 v3, 0x18

    .line 58
    invoke-static {v3, v2, v11, v0}, Lh0/e;->X(I[I[F[Ljava/lang/String;)V

    goto/16 :goto_1d

    .line 59
    :cond_14
    new-instance v0, Ljava/lang/String;

    add-int/2addr v3, v6

    sub-int/2addr v4, v6

    invoke-direct {v0, v2, v3, v4}, Ljava/lang/String;-><init>([BII)V

    .line 60
    invoke-static {v0}, Lh0/e;->O(Ljava/lang/String;)V

    goto/16 :goto_1d

    :pswitch_c
    add-int/lit8 v0, v3, 0x1

    .line 61
    aget-byte v0, v2, v0

    if-eq v0, v7, :cond_16

    const/16 v2, 0x54

    if-eq v0, v2, :cond_15

    goto/16 :goto_1d

    .line 62
    :cond_15
    invoke-static {}, Lcom/syu/jni/ControlNative;->getInstance()Lcom/syu/jni/ControlNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/syu/jni/ControlNative;->fytResetBluetooth()I

    goto/16 :goto_1d

    .line 63
    :cond_16
    sget v0, Lu0/b;->f:I

    if-eqz v0, :cond_77

    new-array v0, v14, [I

    .line 64
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->p([I)V

    goto/16 :goto_1d

    :pswitch_d
    add-int/lit8 v0, v3, 0x1

    .line 65
    aget-byte v0, v2, v0

    if-eq v0, v10, :cond_23

    if-eq v0, v15, :cond_22

    const/16 v5, 0x4a

    if-eq v0, v5, :cond_21

    const/16 v5, 0x4d

    if-eq v0, v5, :cond_20

    if-eq v0, v7, :cond_1e

    const/16 v5, 0x5a

    if-eq v0, v5, :cond_1d

    packed-switch v0, :pswitch_data_2

    goto/16 :goto_1d

    .line 66
    :pswitch_e
    invoke-static {v14}, Lh0/e;->L(I)V

    goto/16 :goto_1d

    :pswitch_f
    const/4 v4, 0x4

    .line 67
    invoke-static {v4}, Lh0/e;->L(I)V

    .line 68
    :try_start_4
    new-instance v0, Ljava/lang/String;

    add-int/lit8 v4, v3, 0x2

    invoke-direct {v0, v2, v4, v8}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 69
    new-instance v4, Ljava/lang/String;

    add-int/lit8 v5, v3, 0x3

    invoke-direct {v4, v2, v5, v6}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 70
    new-instance v5, Ljava/lang/String;

    add-int/lit8 v7, v3, 0x5

    invoke-direct {v5, v2, v7, v6}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 71
    new-instance v7, Ljava/lang/String;

    add-int/lit8 v10, v3, 0x7

    invoke-direct {v7, v2, v10, v6}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v3, v12

    if-lez v4, :cond_17

    .line 72
    new-instance v10, Ljava/lang/String;

    const-string v12, "UTF-8"

    invoke-direct {v10, v2, v3, v4, v12}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    goto :goto_3

    :cond_17
    const-string v10, ""

    :goto_3
    if-lez v5, :cond_18

    .line 73
    new-instance v12, Ljava/lang/String;

    add-int v13, v3, v4

    const-string v15, "UTF-8"

    invoke-direct {v12, v2, v13, v5, v15}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    goto :goto_4

    :cond_18
    const-string v12, ""

    :goto_4
    if-lez v7, :cond_19

    .line 74
    new-instance v13, Ljava/lang/String;

    add-int/2addr v3, v4

    add-int/2addr v3, v5

    const-string v4, "UTF-8"

    invoke-direct {v13, v2, v3, v7, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    goto :goto_5

    :cond_19
    const-string v13, ""

    .line 75
    :goto_5
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 76
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2}, Ljava/text/SimpleDateFormat;-><init>()V

    const-string/jumbo v3, "yyyyMMddHHmmss"

    .line 77
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    const-string v3, "T"

    const-string v4, ""

    .line 78
    invoke-virtual {v13, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    const-string/jumbo v4, "yyyy/MM/dd HH:mm:ss"

    .line 79
    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    :cond_1a
    const/16 v2, 0x23

    new-array v3, v8, [I

    aput v0, v3, v9

    new-array v0, v14, [Ljava/lang/String;

    aput-object v10, v0, v9

    aput-object v12, v0, v8

    aput-object v13, v0, v6

    .line 81
    invoke-static {v2, v3, v11, v0}, Lh0/e;->X(I[I[F[Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_1d

    :catch_2
    move-exception v0

    .line 82
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1d

    .line 83
    :pswitch_10
    invoke-static {v8}, Lh0/e;->L(I)V

    goto/16 :goto_1d

    .line 84
    :pswitch_11
    invoke-static {v6}, Lh0/e;->L(I)V

    .line 85
    :try_start_5
    new-instance v0, Ljava/lang/String;

    add-int/lit8 v4, v3, 0x2

    invoke-direct {v0, v2, v4, v6}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 86
    new-instance v4, Ljava/lang/String;

    add-int/lit8 v5, v3, 0x4

    invoke-direct {v4, v2, v5, v6}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x6

    add-int/2addr v3, v5

    if-lez v0, :cond_1b

    .line 87
    new-instance v5, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v5, v2, v3, v0, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    goto :goto_6

    :cond_1b
    const-string v5, ""

    :goto_6
    if-lez v4, :cond_1c

    .line 88
    new-instance v7, Ljava/lang/String;

    add-int/2addr v3, v0

    const-string v0, "UTF-8"

    invoke-direct {v7, v2, v3, v4, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    goto :goto_7

    :cond_1c
    const-string v7, ""

    :goto_7
    const/16 v0, 0x16

    new-array v2, v6, [Ljava/lang/String;

    aput-object v5, v2, v9

    aput-object v7, v2, v8

    .line 89
    invoke-static {v0, v11, v11, v2}, Lh0/e;->X(I[I[F[Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_c

    goto/16 :goto_1d

    :cond_1d
    if-le v4, v6, :cond_77

    add-int/lit8 v0, v3, 0x2

    .line 90
    aget-byte v0, v2, v0

    const/16 v2, 0x43

    new-array v3, v8, [I

    aput v0, v3, v9

    .line 91
    invoke-static {v2, v3}, Lh0/e;->W(I[I)V

    goto/16 :goto_1d

    :cond_1e
    if-le v4, v6, :cond_1f

    .line 92
    :try_start_6
    new-instance v0, Ljava/lang/String;

    add-int/lit8 v5, v3, 0x2

    const-string v7, "UTF-8"

    invoke-direct {v0, v2, v5, v6, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lh0/e;->Q(I)V

    const-string v5, "BT"

    .line 94
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "========>> phoneSignalLevel : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_8

    :catch_3
    move-exception v0

    .line 95
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1f
    :goto_8
    const/4 v5, 0x4

    if-le v4, v5, :cond_77

    .line 96
    :try_start_7
    new-instance v0, Ljava/lang/String;

    add-int/2addr v3, v5

    const-string v4, "UTF-8"

    invoke-direct {v0, v2, v3, v6, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-static {v0}, Lh0/e;->M(Ljava/lang/String;)V

    const-string v2, "BT"

    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "========>> phoneBattery : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_1d

    :catch_4
    move-exception v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1d

    :cond_20
    if-le v4, v6, :cond_77

    .line 100
    new-instance v0, Ljava/lang/String;

    add-int/2addr v3, v6

    sub-int/2addr v4, v6

    invoke-direct {v0, v2, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lh0/e;->R(Ljava/lang/String;)V

    goto/16 :goto_1d

    :cond_21
    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 101
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->p([I)V

    goto/16 :goto_1d

    :cond_22
    const/16 v0, 0x19

    new-array v2, v8, [I

    aput v8, v2, v9

    .line 102
    invoke-static {v0, v2}, Lh0/e;->W(I[I)V

    goto/16 :goto_1d

    :cond_23
    const/16 v0, 0x19

    new-array v2, v8, [I

    aput v9, v2, v9

    .line 103
    invoke-static {v0, v2}, Lh0/e;->W(I[I)V

    goto/16 :goto_1d

    :pswitch_12
    add-int/lit8 v0, v3, 0x1

    .line 104
    aget-byte v0, v2, v0

    const/16 v5, 0x52

    if-eq v0, v5, :cond_24

    goto/16 :goto_1d

    .line 105
    :cond_24
    new-instance v0, Ljava/lang/String;

    add-int/2addr v3, v6

    sub-int/2addr v4, v6

    invoke-direct {v0, v2, v3, v4}, Ljava/lang/String;-><init>([BII)V

    const/4 v2, 0x6

    .line 106
    invoke-virtual {v0, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const-string v5, ""

    .line 107
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v10, 0x12

    if-le v7, v10, :cond_25

    const/16 v4, 0x12

    .line 108
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x12

    .line 109
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    :cond_25
    const-string v0, "BT"

    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PIN_CODE_PAIR_REQUEST PIN: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " MAC: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " NAME: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x45

    new-array v2, v14, [Ljava/lang/String;

    aput-object v3, v2, v9

    aput-object v4, v2, v8

    aput-object v5, v2, v6

    .line 111
    invoke-static {v0, v2}, Lh0/e;->Y(I[Ljava/lang/String;)V

    goto/16 :goto_1d

    :pswitch_13
    add-int/lit8 v0, v3, 0x1

    .line 112
    aget-byte v0, v2, v0

    if-eq v0, v5, :cond_3d

    const/16 v5, 0x42

    if-eq v0, v5, :cond_3c

    const/16 v5, 0x46

    if-eq v0, v5, :cond_3a

    const/16 v5, 0x49

    if-eq v0, v5, :cond_33

    if-eq v0, v13, :cond_31

    const/16 v5, 0x4d

    if-eq v0, v5, :cond_30

    const/16 v5, 0x4e

    if-eq v0, v5, :cond_2f

    const/16 v5, 0x57

    if-eq v0, v5, :cond_2e

    const/16 v5, 0x58

    if-eq v0, v5, :cond_26

    goto/16 :goto_1d

    :cond_26
    const/16 v0, 0xc

    if-gt v4, v0, :cond_27

    goto/16 :goto_1d

    :cond_27
    add-int/lit8 v0, v3, 0x2

    .line 113
    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    if-lt v0, v10, :cond_77

    const/16 v5, 0x39

    if-gt v0, v5, :cond_77

    add-int/lit8 v0, v0, -0x30

    .line 114
    new-instance v5, Ljava/lang/String;

    add-int/lit8 v7, v3, 0x3

    const/16 v10, 0xc

    invoke-direct {v5, v2, v7, v10}, Ljava/lang/String;-><init>([BII)V

    const-string v7, "000000000000"

    .line 115
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v10, ""

    if-nez v7, :cond_28

    .line 116
    new-instance v10, Ljava/lang/String;

    const/16 v12, 0xf

    add-int/2addr v3, v12

    sub-int/2addr v4, v12

    invoke-direct {v10, v2, v3, v4}, Ljava/lang/String;-><init>([BII)V

    :cond_28
    if-nez v0, :cond_2a

    if-eqz v7, :cond_29

    const-string v5, ""

    .line 117
    :cond_29
    invoke-static {v5}, Lh0/e;->N(Ljava/lang/String;)V

    .line 118
    invoke-static {v10}, Lh0/e;->O(Ljava/lang/String;)V

    goto/16 :goto_1d

    :cond_2a
    const/4 v2, -0x1

    add-int/2addr v0, v2

    .line 119
    sget-object v2, Lh0/c;->d0:Landroid/util/SparseArray;

    monitor-enter v2

    .line 120
    :try_start_8
    invoke-virtual {v2, v0, v11}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2b

    .line 121
    new-instance v11, Lh0/b$d;

    invoke-direct {v11}, Lh0/b$d;-><init>()V

    goto :goto_9

    .line 122
    :cond_2b
    instance-of v4, v3, Lh0/b$d;

    if-eqz v4, :cond_2c

    .line 123
    move-object v11, v3

    check-cast v11, Lh0/b$d;

    :cond_2c
    :goto_9
    if-eqz v11, :cond_2d

    .line 124
    iput-object v5, v11, Lh0/b$d;->a:Ljava/lang/String;

    .line 125
    iput-object v10, v11, Lh0/b$d;->b:Ljava/lang/String;

    .line 126
    invoke-virtual {v2, v0, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-array v3, v6, [Ljava/lang/String;

    aput-object v5, v3, v9

    aput-object v10, v3, v8

    const/4 v4, 0x5

    .line 127
    invoke-static {v4, v0, v3}, Lh0/e;->Z(II[Ljava/lang/String;)V

    .line 128
    :cond_2d
    monitor-exit v2

    goto/16 :goto_1d

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v0

    :cond_2e
    if-le v4, v6, :cond_77

    .line 129
    new-instance v0, Ljava/lang/String;

    add-int/2addr v3, v6

    sub-int/2addr v4, v6

    invoke-direct {v0, v2, v3, v4}, Ljava/lang/String;-><init>([BII)V

    .line 130
    invoke-static {v0}, Lh0/e;->v(Ljava/lang/String;)V

    goto/16 :goto_1d

    :cond_2f
    if-le v4, v6, :cond_77

    .line 131
    new-instance v0, Ljava/lang/String;

    add-int/2addr v3, v6

    sub-int/2addr v4, v6

    invoke-direct {v0, v2, v3, v4}, Ljava/lang/String;-><init>([BII)V

    .line 132
    invoke-static {v0}, Lh0/e;->S(Ljava/lang/String;)V

    goto/16 :goto_1d

    :cond_30
    if-le v4, v6, :cond_77

    const-string v5, ""

    .line 133
    :try_start_9
    new-instance v0, Ljava/lang/String;

    add-int/2addr v3, v6

    sub-int/2addr v4, v6

    const-string v6, "UTF-8"

    invoke-direct {v0, v2, v3, v4, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_9} :catch_5

    move-object v5, v0

    goto :goto_a

    :catch_5
    move-exception v0

    .line 134
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 135
    :goto_a
    invoke-static {v5}, Lh0/e;->F(Ljava/lang/String;)V

    goto/16 :goto_1d

    :cond_31
    if-le v4, v6, :cond_77

    .line 136
    :try_start_a
    new-instance v0, Ljava/lang/String;

    add-int/2addr v3, v6

    sub-int/2addr v4, v6

    invoke-direct {v0, v2, v3, v4}, Ljava/lang/String;-><init>([BII)V

    .line 137
    new-instance v2, Ljava/lang/String;

    new-array v3, v8, [B

    const/4 v4, -0x1

    aput-byte v4, v3, v9

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    .line 138
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_77

    .line 139
    array-length v2, v0

    if-lt v2, v14, :cond_77

    .line 140
    aget-object v2, v0, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lh0/e;->o(I)V

    .line 141
    aget-object v2, v0, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lh0/e;->m(I)V

    .line 142
    aget-object v0, v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v8, :cond_32

    move v9, v8

    :cond_32
    invoke-static {v9}, Lh0/e;->l(I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_c

    goto/16 :goto_1d

    .line 143
    :cond_33
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v6

    move v7, v0

    :goto_b
    if-ge v7, v4, :cond_39

    add-int v10, v3, v7

    .line 144
    aget-byte v10, v2, v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_38

    if-eqz v9, :cond_37

    if-eq v9, v8, :cond_36

    if-eq v9, v6, :cond_35

    if-eq v9, v14, :cond_34

    goto :goto_c

    .line 145
    :cond_34
    :try_start_b
    new-instance v10, Ljava/lang/String;

    add-int v12, v3, v0

    sub-int v0, v7, v0

    const-string v13, "UTF-8"

    invoke-direct {v10, v2, v12, v0, v13}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 146
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 147
    invoke-static {v0}, Lh0/e;->n(I)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_c

    :catch_6
    move-exception v0

    .line 148
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c

    .line 149
    :cond_35
    :try_start_c
    new-instance v10, Ljava/lang/String;

    add-int v12, v3, v0

    sub-int v0, v7, v0

    const-string v13, "UTF-8"

    invoke-direct {v10, v2, v12, v0, v13}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 150
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 151
    invoke-static {v0}, Lh0/e;->o(I)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    goto :goto_c

    :catch_7
    move-exception v0

    .line 152
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c

    .line 153
    :cond_36
    :try_start_d
    new-instance v10, Ljava/lang/String;

    add-int v12, v3, v0

    sub-int v0, v7, v0

    const-string v13, "UTF-8"

    invoke-direct {v10, v2, v12, v0, v13}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 154
    invoke-static {v10}, Lh0/e;->j(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8

    goto :goto_c

    :catch_8
    move-exception v0

    .line 155
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c

    .line 156
    :cond_37
    :try_start_e
    new-instance v10, Ljava/lang/String;

    add-int v12, v3, v0

    sub-int v0, v7, v0

    const-string v13, "UTF-8"

    invoke-direct {v10, v2, v12, v0, v13}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 157
    invoke-static {v10}, Lh0/e;->k(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_9

    goto :goto_c

    :catch_9
    move-exception v0

    .line 158
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_c
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v0, v7, 0x1

    :cond_38
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    .line 159
    :cond_39
    :try_start_f
    new-instance v6, Ljava/lang/String;

    add-int/2addr v3, v0

    sub-int v0, v4, v0

    const-string v4, "UTF-8"

    invoke-direct {v6, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 160
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 161
    invoke-static {v0}, Lh0/e;->p(I)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_a

    goto :goto_d

    :catch_a
    move-exception v0

    .line 162
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_d
    const-string v0, "BT"

    .line 163
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d

    :cond_3a
    add-int/lit8 v0, v3, 0x2

    .line 164
    aget-byte v0, v2, v0

    if-ne v0, v15, :cond_3b

    move v9, v8

    .line 165
    :cond_3b
    invoke-static {v9}, Lh0/e;->g(I)V

    goto/16 :goto_1d

    .line 166
    :cond_3c
    invoke-static {v8}, Lh0/e;->l(I)V

    goto/16 :goto_1d

    .line 167
    :cond_3d
    invoke-static {v9}, Lh0/e;->l(I)V

    goto/16 :goto_1d

    :pswitch_14
    const/4 v11, -0x1

    add-int/lit8 v0, v3, 0x1

    .line 168
    aget-byte v0, v2, v0

    const/16 v5, 0x43

    if-eq v0, v5, :cond_4f

    const/16 v5, 0x44

    if-eq v0, v5, :cond_4e

    const/16 v5, 0x52

    if-eq v0, v5, :cond_3e

    goto/16 :goto_1d

    .line 169
    :cond_3e
    new-instance v0, Ljava/lang/String;

    add-int/2addr v3, v6

    sub-int/2addr v4, v6

    invoke-direct {v0, v2, v3, v4}, Ljava/lang/String;-><init>([BII)V

    const-string v2, "BT"

    .line 170
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LR Key : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-static {v0}, Lh0/e;->y(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3f

    goto/16 :goto_1d

    .line 172
    :cond_3f
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_e
    move v6, v11

    goto/16 :goto_f

    :sswitch_0
    const-string v2, "A310"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    goto :goto_e

    :cond_40
    move v6, v12

    goto/16 :goto_f

    :sswitch_1
    const-string v2, "A308"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    goto :goto_e

    :cond_41
    const/16 v6, 0x8

    goto/16 :goto_f

    :sswitch_2
    const-string v2, "A304"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    goto :goto_e

    :cond_42
    const/4 v6, 0x7

    goto :goto_f

    :sswitch_3
    const-string v2, "A302"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    goto :goto_e

    :cond_43
    const/4 v6, 0x6

    goto :goto_f

    :sswitch_4
    const-string v2, "A301"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    goto :goto_e

    :cond_44
    const/4 v6, 0x5

    goto :goto_f

    :sswitch_5
    const-string v2, "A110"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    goto :goto_e

    :cond_45
    const/4 v6, 0x4

    goto :goto_f

    :sswitch_6
    const-string v2, "A108"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    goto :goto_e

    :cond_46
    move v6, v14

    goto :goto_f

    :sswitch_7
    const-string v2, "A104"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    goto :goto_e

    :sswitch_8
    const-string v2, "A102"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    goto :goto_e

    :cond_47
    move v6, v8

    goto :goto_f

    :sswitch_9
    const-string v2, "A101"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    goto :goto_e

    :cond_48
    move v6, v9

    :cond_49
    :goto_f
    packed-switch v6, :pswitch_data_3

    goto/16 :goto_1d

    .line 173
    :pswitch_15
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    sget v2, Lh0/c;->G:I

    if-eq v2, v8, :cond_4b

    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v2

    invoke-virtual {v2}, Lu0/i;->r3()Z

    move-result v2

    if-eqz v2, :cond_4a

    goto :goto_10

    :cond_4a
    const/16 v9, 0x22c

    goto :goto_11

    :cond_4b
    :goto_10
    const/4 v9, 0x6

    :goto_11
    invoke-virtual {v0, v9}, Lc/e;->c(I)Z

    goto/16 :goto_1d

    .line 174
    :pswitch_16
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    sget v2, Lh0/c;->G:I

    if-eq v2, v8, :cond_4d

    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v2

    invoke-virtual {v2}, Lu0/i;->r3()Z

    move-result v2

    if-eqz v2, :cond_4c

    goto :goto_12

    :cond_4c
    const/16 v9, 0x5b

    goto :goto_13

    :cond_4d
    :goto_12
    const/4 v9, 0x5

    :goto_13
    invoke-virtual {v0, v9}, Lc/e;->c(I)Z

    goto/16 :goto_1d

    .line 175
    :pswitch_17
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    const/16 v2, 0x58

    invoke-virtual {v0, v2}, Lc/e;->c(I)Z

    goto/16 :goto_1d

    .line 176
    :pswitch_18
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    const/16 v2, 0x57

    invoke-virtual {v0, v2}, Lc/e;->c(I)Z

    goto/16 :goto_1d

    .line 177
    :pswitch_19
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    const/16 v2, 0x19

    invoke-virtual {v0, v2}, Lc/e;->c(I)Z

    goto/16 :goto_1d

    .line 178
    :pswitch_1a
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    const/16 v2, 0x18

    invoke-virtual {v0, v2}, Lc/e;->c(I)Z

    goto/16 :goto_1d

    .line 179
    :cond_4e
    invoke-static {v9}, Lh0/e;->h(I)V

    goto/16 :goto_1d

    .line 180
    :cond_4f
    invoke-static {v8}, Lh0/e;->h(I)V

    goto/16 :goto_1d

    :pswitch_1b
    add-int/lit8 v0, v3, 0x1

    .line 181
    aget-byte v0, v2, v0

    const/16 v5, 0x48

    if-eq v0, v5, :cond_50

    goto/16 :goto_1d

    .line 182
    :cond_50
    new-instance v0, Ljava/lang/String;

    add-int/2addr v3, v6

    sub-int/2addr v4, v6

    invoke-direct {v0, v2, v3, v4}, Ljava/lang/String;-><init>([BII)V

    .line 183
    invoke-static {v0}, Lh0/e;->N(Ljava/lang/String;)V

    goto/16 :goto_1d

    :pswitch_1c
    add-int/lit8 v0, v3, 0x1

    .line 184
    aget-byte v0, v2, v0

    const/16 v5, 0x3c

    packed-switch v0, :pswitch_data_4

    :pswitch_1d
    goto/16 :goto_1d

    :pswitch_1e
    const/16 v0, 0x13

    .line 185
    invoke-static {v0, v11, v11, v11}, Lh0/e;->X(I[I[F[Ljava/lang/String;)V

    .line 186
    invoke-static {v9}, Lh0/e;->s(I)V

    const/16 v0, 0x18

    .line 187
    invoke-static {v0, v11, v11, v11}, Lh0/e;->X(I[I[F[Ljava/lang/String;)V

    .line 188
    sget-object v0, Lh0/c;->b:Lh0/f;

    const-string v2, ""

    invoke-interface {v0, v2}, Lh0/f;->g(Ljava/lang/String;)V

    .line 189
    sget-object v0, Lh0/c;->b:Lh0/f;

    const-string v2, ""

    invoke-interface {v0, v2}, Lh0/f;->U(Ljava/lang/String;)V

    new-array v0, v6, [I

    .line 190
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->p([I)V

    new-array v0, v6, [I

    .line 191
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->p([I)V

    new-array v0, v6, [I

    .line 192
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->p([I)V

    .line 193
    invoke-static {v8}, Lh0/e;->t(I)V

    .line 194
    sget-object v0, Lh0/c;->b:Lh0/f;

    instance-of v2, v0, Lh0/b;

    if-eqz v2, :cond_77

    .line 195
    check-cast v0, Lh0/b;

    invoke-virtual {v0}, Lh0/b;->Y()V

    goto/16 :goto_1d

    :pswitch_1f
    add-int/lit8 v0, v3, 0x2

    .line 196
    aget-byte v3, v2, v0

    if-ne v3, v10, :cond_51

    .line 197
    invoke-static {}, Lh0/g;->Y2()Lh0/g;

    move-result-object v0

    invoke-virtual {v0, v8}, Lh0/g;->c3(I)V

    goto/16 :goto_1d

    .line 198
    :cond_51
    aget-byte v0, v2, v0

    if-ne v0, v15, :cond_77

    .line 199
    invoke-static {}, Lh0/g;->Y2()Lh0/g;

    move-result-object v0

    invoke-virtual {v0, v9}, Lh0/g;->c3(I)V

    goto/16 :goto_1d

    :pswitch_20
    const/4 v0, 0x7

    .line 200
    invoke-static {v0}, Lh0/e;->s(I)V

    goto/16 :goto_1d

    :pswitch_21
    const/4 v0, 0x5

    .line 201
    invoke-static {v0}, Lh0/e;->s(I)V

    .line 202
    new-instance v0, Ljava/lang/String;

    const/4 v5, 0x4

    add-int/2addr v3, v5

    sub-int/2addr v4, v5

    invoke-direct {v0, v2, v3, v4}, Ljava/lang/String;-><init>([BII)V

    const-string v2, ","

    .line 203
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 204
    array-length v2, v0

    if-le v2, v8, :cond_77

    .line 205
    invoke-static {v0}, Lh0/e;->r([Ljava/lang/String;)V

    goto/16 :goto_1d

    :pswitch_22
    const/4 v0, 0x6

    .line 206
    invoke-static {v0}, Lh0/e;->s(I)V

    goto/16 :goto_1d

    .line 207
    :pswitch_23
    invoke-static {v12}, Lg/f;->f(I)Z

    move-result v0

    if-nez v0, :cond_52

    const/4 v7, 0x4

    if-ne v4, v7, :cond_52

    move v0, v8

    goto :goto_14

    :cond_52
    move v0, v9

    :goto_14
    iput-boolean v0, v1, Lz/e;->f:Z

    .line 208
    new-instance v0, Ljava/lang/String;

    add-int/lit8 v7, v3, 0x2

    add-int/lit8 v10, v4, -0x2

    invoke-direct {v0, v2, v7, v10}, Ljava/lang/String;-><init>([BII)V

    .line 209
    iget-boolean v7, v1, Lz/e;->f:Z

    if-eqz v7, :cond_53

    .line 210
    sput-boolean v8, Lh0/c;->m0:Z

    const/4 v2, 0x5

    .line 211
    invoke-static {v2}, Lh0/e;->s(I)V

    .line 212
    invoke-static {v0}, Lh0/e;->q(Ljava/lang/String;)V

    .line 213
    iput-boolean v8, v1, Lz/e;->g:Z

    .line 214
    invoke-static {}, Ly0/h;->M()V

    goto/16 :goto_16

    :cond_53
    const-string v7, "040000"

    .line 215
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_58

    .line 216
    sget v2, Lh0/c;->U:I

    if-nez v2, :cond_5a

    .line 217
    sput v8, Lh0/c;->U:I

    .line 218
    invoke-static {}, Lplugins/ZLink;->Y()Lplugins/ZLink;

    move-result-object v2

    invoke-virtual {v2}, Lplugins/ZLink;->d0()Z

    move-result v2

    if-nez v2, :cond_54

    invoke-static {}, Lh1/a;->d()Lh1/a;

    move-result-object v2

    invoke-virtual {v2}, Lh1/a;->j()Z

    move-result v2

    if-nez v2, :cond_54

    move v2, v8

    goto :goto_15

    :cond_54
    move v2, v9

    :goto_15
    if-eqz v2, :cond_55

    const-string v3, "com.syu.bt.phone.voice"

    const-string v4, "com.syu.bt"

    .line 219
    invoke-static {v3, v4}, Lo1/u;->C0(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_55
    sget v3, Lu0/b;->D:I

    if-eq v3, v6, :cond_56

    .line 221
    sget-object v3, Lu0/b;->c:Lu0/h;

    invoke-interface {v3, v6}, Lu0/h;->c(I)V

    .line 222
    new-instance v3, Lz/e$a;

    invoke-direct {v3, v1}, Lz/e$a;-><init>(Lz/e;)V

    sput-object v3, Lu0/b;->x3:Ljava/lang/Runnable;

    .line 223
    iput-boolean v8, v1, Lz/e;->h:Z

    :cond_56
    if-eqz v2, :cond_57

    new-array v2, v8, [I

    .line 224
    sget v3, Lh0/c;->U:I

    aput v3, v2, v9

    const/16 v3, 0x2b

    invoke-static {v3, v2}, Lh0/e;->W(I[I)V

    goto :goto_16

    :cond_57
    const/16 v3, 0x2b

    new-array v2, v8, [I

    aput v9, v2, v9

    .line 225
    invoke-static {v3, v2}, Lh0/e;->W(I[I)V

    goto :goto_16

    :cond_58
    const/4 v6, 0x5

    .line 226
    invoke-static {v6}, Lh0/e;->s(I)V

    const/4 v6, 0x4

    if-le v4, v6, :cond_59

    .line 227
    new-instance v7, Ljava/lang/String;

    add-int/2addr v3, v6

    sub-int/2addr v4, v6

    invoke-direct {v7, v2, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v7}, Lh0/e;->q(Ljava/lang/String;)V

    goto :goto_16

    :cond_59
    const-string v2, "UNKNOWN"

    .line 228
    invoke-static {v2}, Lh0/e;->q(Ljava/lang/String;)V

    :cond_5a
    :goto_16
    new-array v2, v8, [Ljava/lang/String;

    .line 229
    invoke-static {v0}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5b

    const-string v0, "000000"

    :cond_5b
    aput-object v0, v2, v9

    invoke-static {v5, v2}, Lh0/e;->Y(I[Ljava/lang/String;)V

    goto/16 :goto_1d

    .line 230
    :pswitch_24
    sget v0, Lh0/c;->E:I

    if-lt v0, v6, :cond_5c

    .line 231
    invoke-static {v6}, Lh0/e;->s(I)V

    .line 232
    :cond_5c
    sget v0, Lh0/c;->M:I

    if-eqz v0, :cond_5d

    .line 233
    invoke-static {v11}, Lh0/e;->q(Ljava/lang/String;)V

    .line 234
    :cond_5d
    iput-boolean v9, v1, Lz/e;->f:Z

    .line 235
    sput-boolean v9, Lh0/c;->m0:Z

    .line 236
    iget-boolean v0, v1, Lz/e;->g:Z

    if-eqz v0, :cond_5e

    .line 237
    iput-boolean v9, v1, Lz/e;->g:Z

    .line 238
    sget-object v0, Lu0/b;->c:Lu0/h;

    sget v2, Lu0/b;->F:I

    invoke-interface {v0, v2}, Lu0/h;->c(I)V

    .line 239
    invoke-static {}, Ly0/h;->M()V

    .line 240
    :cond_5e
    sget v0, Lh0/c;->U:I

    if-ne v0, v8, :cond_77

    .line 241
    sput v9, Lh0/c;->U:I

    .line 242
    invoke-static {}, Lplugins/ZLink;->Y()Lplugins/ZLink;

    move-result-object v0

    invoke-virtual {v0}, Lplugins/ZLink;->d0()Z

    move-result v0

    if-nez v0, :cond_5f

    invoke-static {}, Lh1/a;->d()Lh1/a;

    move-result-object v0

    invoke-virtual {v0}, Lh1/a;->j()Z

    move-result v0

    if-nez v0, :cond_5f

    move v0, v8

    goto :goto_17

    :cond_5f
    move v0, v9

    .line 243
    :goto_17
    iget-boolean v2, v1, Lz/e;->h:Z

    if-eqz v2, :cond_61

    .line 244
    sget-object v2, Lu0/b;->x3:Ljava/lang/Runnable;

    if-eqz v2, :cond_60

    .line 245
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 246
    :cond_60
    sput-object v11, Lu0/b;->x3:Ljava/lang/Runnable;

    .line 247
    iput-boolean v9, v1, Lz/e;->h:Z

    :cond_61
    if-eqz v0, :cond_62

    new-array v0, v8, [I

    .line 248
    sget v2, Lh0/c;->U:I

    aput v2, v0, v9

    const/16 v2, 0x2b

    invoke-static {v2, v0}, Lh0/e;->W(I[I)V

    goto/16 :goto_1d

    :cond_62
    const/16 v2, 0x2b

    new-array v0, v8, [I

    aput v9, v0, v9

    .line 249
    invoke-static {v2, v0}, Lh0/e;->W(I[I)V

    goto/16 :goto_1d

    .line 250
    :pswitch_25
    iput-boolean v9, v1, Lz/e;->f:Z

    const/4 v0, 0x5

    .line 251
    invoke-static {v0}, Lh0/e;->s(I)V

    .line 252
    new-instance v0, Ljava/lang/String;

    const/4 v6, 0x4

    add-int/2addr v3, v6

    add-int/lit8 v7, v4, -0x4

    invoke-direct {v0, v2, v3, v7}, Ljava/lang/String;-><init>([BII)V

    const-string v2, ","

    .line 253
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 254
    array-length v3, v2

    if-le v3, v8, :cond_63

    .line 255
    invoke-static {v2}, Lh0/e;->r([Ljava/lang/String;)V

    .line 256
    invoke-static {v5, v2}, Lh0/e;->Y(I[Ljava/lang/String;)V

    goto/16 :goto_1d

    :cond_63
    if-le v4, v6, :cond_77

    .line 257
    invoke-static {v0}, Lh0/e;->q(Ljava/lang/String;)V

    new-array v2, v8, [Ljava/lang/String;

    aput-object v0, v2, v9

    .line 258
    invoke-static {v5, v2}, Lh0/e;->Y(I[Ljava/lang/String;)V

    goto/16 :goto_1d

    :pswitch_26
    const/4 v6, 0x4

    .line 259
    iput-boolean v9, v1, Lz/e;->f:Z

    .line 260
    invoke-static {v6}, Lh0/e;->s(I)V

    if-le v4, v6, :cond_77

    .line 261
    new-instance v0, Ljava/lang/String;

    add-int/2addr v3, v6

    sub-int/2addr v4, v6

    invoke-direct {v0, v2, v3, v4}, Ljava/lang/String;-><init>([BII)V

    .line 262
    invoke-static {v0}, Lh0/e;->q(Ljava/lang/String;)V

    new-array v2, v8, [Ljava/lang/String;

    aput-object v0, v2, v9

    .line 263
    invoke-static {v5, v2}, Lh0/e;->Y(I[Ljava/lang/String;)V

    goto/16 :goto_1d

    :pswitch_27
    const/4 v6, 0x4

    .line 264
    iput-boolean v9, v1, Lz/e;->f:Z

    .line 265
    invoke-static {v14}, Lh0/e;->s(I)V

    if-le v4, v6, :cond_77

    .line 266
    new-instance v0, Ljava/lang/String;

    add-int/2addr v3, v6

    sub-int/2addr v4, v6

    invoke-direct {v0, v2, v3, v4}, Ljava/lang/String;-><init>([BII)V

    .line 267
    invoke-static {v0}, Lh0/e;->q(Ljava/lang/String;)V

    new-array v2, v8, [Ljava/lang/String;

    aput-object v0, v2, v9

    .line 268
    invoke-static {v5, v2}, Lh0/e;->Y(I[Ljava/lang/String;)V

    goto/16 :goto_1d

    .line 269
    :pswitch_28
    sget v0, Lh0/c;->G:I

    if-nez v0, :cond_77

    .line 270
    invoke-static {v6}, Lh0/e;->s(I)V

    goto/16 :goto_1d

    .line 271
    :pswitch_29
    invoke-static {v9}, Lh0/e;->s(I)V

    .line 272
    invoke-virtual/range {p0 .. p0}, Lz/e;->a()V

    goto/16 :goto_1d

    .line 273
    :pswitch_2a
    sget-boolean v0, Lh0/c;->g:Z

    if-nez v0, :cond_64

    goto/16 :goto_1d

    :cond_64
    add-int/lit8 v0, v3, 0x1

    .line 274
    aget-byte v0, v2, v0

    if-eq v0, v5, :cond_66

    const/16 v2, 0x42

    if-eq v0, v2, :cond_65

    goto/16 :goto_1d

    .line 275
    :cond_65
    invoke-static {v8, v9}, Lh0/e;->J(IZ)V

    goto/16 :goto_1d

    .line 276
    :cond_66
    invoke-static {v8, v8}, Lh0/e;->J(IZ)V

    goto/16 :goto_1d

    :pswitch_2b
    add-int/lit8 v0, v3, 0x1

    .line 277
    aget-byte v0, v2, v0

    const/16 v5, 0x46

    if-eq v0, v5, :cond_6f

    if-eq v0, v13, :cond_6e

    if-eq v0, v7, :cond_69

    const/16 v5, 0x56

    if-eq v0, v5, :cond_68

    const/16 v5, 0x57

    if-eq v0, v5, :cond_67

    goto/16 :goto_1d

    :cond_67
    const-string v0, ""

    .line 278
    sput-object v0, Lh0/c;->y:Ljava/lang/String;

    const/16 v2, 0x33

    new-array v3, v8, [Ljava/lang/String;

    aput-object v0, v3, v9

    .line 279
    invoke-static {v2, v3}, Lh0/e;->Y(I[Ljava/lang/String;)V

    goto/16 :goto_1d

    .line 280
    :cond_68
    new-instance v0, Ljava/lang/String;

    add-int/2addr v3, v6

    sub-int/2addr v4, v6

    invoke-direct {v0, v2, v3, v4}, Ljava/lang/String;-><init>([BII)V

    .line 281
    sput-object v0, Lh0/c;->y:Ljava/lang/String;

    const/16 v2, 0x33

    new-array v3, v8, [Ljava/lang/String;

    aput-object v0, v3, v9

    .line 282
    invoke-static {v2, v3}, Lh0/e;->Y(I[Ljava/lang/String;)V

    goto/16 :goto_1d

    .line 283
    :cond_69
    sget v0, Lh0/c;->U:I

    if-nez v0, :cond_77

    .line 284
    sput v8, Lh0/c;->U:I

    .line 285
    invoke-static {}, Lplugins/ZLink;->Y()Lplugins/ZLink;

    move-result-object v0

    invoke-virtual {v0}, Lplugins/ZLink;->d0()Z

    move-result v0

    if-nez v0, :cond_6a

    invoke-static {}, Lh1/a;->d()Lh1/a;

    move-result-object v0

    invoke-virtual {v0}, Lh1/a;->j()Z

    move-result v0

    if-nez v0, :cond_6a

    move v0, v8

    goto :goto_18

    :cond_6a
    move v0, v9

    :goto_18
    if-eqz v0, :cond_6b

    const-string v2, "com.syu.bt.phone.voice"

    const-string v3, "com.syu.bt"

    .line 286
    invoke-static {v2, v3}, Lo1/u;->C0(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :cond_6b
    sget v2, Lu0/b;->D:I

    if-eq v2, v6, :cond_6c

    .line 288
    sget-object v2, Lu0/b;->c:Lu0/h;

    invoke-interface {v2, v6}, Lu0/h;->c(I)V

    .line 289
    new-instance v2, Lz/e$b;

    invoke-direct {v2, v1}, Lz/e$b;-><init>(Lz/e;)V

    sput-object v2, Lu0/b;->x3:Ljava/lang/Runnable;

    .line 290
    iput-boolean v8, v1, Lz/e;->h:Z

    :cond_6c
    if-eqz v0, :cond_6d

    new-array v0, v8, [I

    .line 291
    sget v2, Lh0/c;->U:I

    aput v2, v0, v9

    const/16 v2, 0x2b

    invoke-static {v2, v0}, Lh0/e;->W(I[I)V

    goto :goto_19

    :cond_6d
    const/16 v2, 0x2b

    new-array v0, v8, [I

    aput v9, v0, v9

    .line 292
    invoke-static {v2, v0}, Lh0/e;->W(I[I)V

    .line 293
    :goto_19
    sget-object v0, Lh0/d;->j:Lo1/y;

    invoke-virtual {v0}, Lo1/y;->c()V

    goto/16 :goto_1d

    .line 294
    :cond_6e
    invoke-static {}, Lh1/a;->d()Lh1/a;

    move-result-object v0

    invoke-virtual {v0}, Lh1/a;->e()I

    move-result v0

    if-eq v0, v6, :cond_77

    sget v0, Lu0/b;->D:I

    if-eq v0, v14, :cond_77

    .line 295
    invoke-static {}, Lo1/u;->q()V

    goto/16 :goto_1d

    .line 296
    :cond_6f
    sget v0, Lh0/c;->U:I

    if-ne v0, v8, :cond_77

    .line 297
    sput v9, Lh0/c;->U:I

    .line 298
    invoke-static {}, Lplugins/ZLink;->Y()Lplugins/ZLink;

    move-result-object v0

    invoke-virtual {v0}, Lplugins/ZLink;->d0()Z

    move-result v0

    if-nez v0, :cond_70

    invoke-static {}, Lh1/a;->d()Lh1/a;

    move-result-object v0

    invoke-virtual {v0}, Lh1/a;->j()Z

    move-result v0

    if-nez v0, :cond_70

    move v0, v8

    goto :goto_1a

    :cond_70
    move v0, v9

    .line 299
    :goto_1a
    iget-boolean v2, v1, Lz/e;->h:Z

    if-eqz v2, :cond_72

    .line 300
    sget-object v2, Lu0/b;->x3:Ljava/lang/Runnable;

    if-eqz v2, :cond_71

    .line 301
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 302
    :cond_71
    sput-object v11, Lu0/b;->x3:Ljava/lang/Runnable;

    .line 303
    iput-boolean v9, v1, Lz/e;->h:Z

    :cond_72
    if-eqz v0, :cond_73

    new-array v0, v8, [I

    .line 304
    sget v2, Lh0/c;->U:I

    aput v2, v0, v9

    const/16 v2, 0x2b

    invoke-static {v2, v0}, Lh0/e;->W(I[I)V

    goto :goto_1b

    :cond_73
    const/16 v2, 0x2b

    new-array v0, v8, [I

    aput v9, v0, v9

    .line 305
    invoke-static {v2, v0}, Lh0/e;->W(I[I)V

    .line 306
    :goto_1b
    sget-object v0, Lh0/d;->j:Lo1/y;

    invoke-virtual {v0}, Lo1/y;->c()V

    goto :goto_1d

    :pswitch_2c
    add-int/lit8 v0, v3, 0x1

    .line 307
    aget-byte v0, v2, v0

    if-eq v0, v7, :cond_74

    goto :goto_1c

    :cond_74
    if-gt v4, v6, :cond_75

    const-string v0, ""

    .line 308
    invoke-static {v0}, Lh0/e;->P(Ljava/lang/String;)V

    const-string v0, "BT"

    const-string v2, "========>> phoneOperator : "

    .line 309
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 310
    :cond_75
    :try_start_10
    new-instance v0, Ljava/lang/String;

    add-int/lit8 v5, v3, 0x2

    add-int/lit8 v7, v4, -0x2

    const-string v8, "UTF-8"

    invoke-direct {v0, v2, v5, v7, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 311
    invoke-static {v0}, Lh0/e;->P(Ljava/lang/String;)V

    const-string v5, "BT"

    .line 312
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "========>> phoneOperator : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_b

    goto :goto_1c

    :catch_b
    move-exception v0

    .line 313
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1c
    :pswitch_2d
    add-int/lit8 v0, v3, 0x1

    .line 314
    aget-byte v0, v2, v0

    const/16 v5, 0x42

    if-eq v0, v5, :cond_76

    goto :goto_1d

    :cond_76
    if-le v4, v6, :cond_77

    .line 315
    new-instance v0, Ljava/lang/String;

    add-int/2addr v3, v6

    sub-int/2addr v4, v6

    invoke-direct {v0, v2, v3, v4}, Ljava/lang/String;-><init>([BII)V

    .line 316
    invoke-static {v0}, Lh0/e;->E(Ljava/lang/String;)V

    :catch_c
    :cond_77
    :goto_1d
    return-void

    :pswitch_data_0
    .packed-switch 0x43
        :pswitch_2c
        :pswitch_2d
        :pswitch_0
        :pswitch_2b
        :pswitch_0
        :pswitch_2a
        :pswitch_1c
        :pswitch_1b
        :pswitch_0
        :pswitch_14
        :pswitch_13
        :pswitch_0
        :pswitch_12
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x31
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x42
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1e4a11 -> :sswitch_9
        0x1e4a12 -> :sswitch_8
        0x1e4a14 -> :sswitch_7
        0x1e4a18 -> :sswitch_6
        0x1e4a2f -> :sswitch_5
        0x1e5193 -> :sswitch_4
        0x1e5194 -> :sswitch_3
        0x1e5196 -> :sswitch_2
        0x1e519a -> :sswitch_1
        0x1e51b1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_15
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x41
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_1d
        :pswitch_22
        :pswitch_29
        :pswitch_21
        :pswitch_1d
        :pswitch_20
        :pswitch_1d
        :pswitch_1f
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1e
    .end packed-switch

    :array_0
    .array-data 4
        0x43
        0x5a
        0x31
    .end array-data

    :array_1
    .array-data 4
        0x50
        0x45
        0x30
        0x2c
        0x30
        0x2c
        0x66
        0x66
    .end array-data

    :array_2
    .array-data 4
        0x43
        0x59
    .end array-data

    :array_3
    .array-data 4
        0x4d
        0x59
    .end array-data

    :array_4
    .array-data 4
        0x56
        0x45
    .end array-data
.end method

.method public e(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lz/e;->h:Z

    return-void
.end method
