.class public Lm0/v;
.super Lm0/a;
.source "SourceFile"

# interfaces
.implements Lo1/q;


# static fields
.field public static r:I


# instance fields
.field public final a:Z

.field public final b:[B

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:[B

.field public o:[B

.field public p:I

.field public q:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lm0/a;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lm0/v;->a:Z

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 3
    iput-object v0, p0, Lm0/v;->b:[B

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lm0/v;->c:I

    .line 5
    iput v0, p0, Lm0/v;->d:I

    .line 6
    iput v0, p0, Lm0/v;->e:I

    .line 7
    iput v0, p0, Lm0/v;->f:I

    .line 8
    iput v0, p0, Lm0/v;->g:I

    .line 9
    iput v0, p0, Lm0/v;->h:I

    .line 10
    iput v0, p0, Lm0/v;->i:I

    .line 11
    iput v0, p0, Lm0/v;->j:I

    const/4 v1, -0x1

    .line 12
    iput v1, p0, Lm0/v;->k:I

    iput v0, p0, Lm0/v;->l:I

    iput v0, p0, Lm0/v;->m:I

    const/16 v0, 0x40

    new-array v0, v0, [B

    .line 13
    iput-object v0, p0, Lm0/v;->n:[B

    .line 14
    new-instance v0, Lm0/v$a;

    invoke-direct {v0, p0}, Lm0/v$a;-><init>(Lm0/v;)V

    iput-object v0, p0, Lm0/v;->q:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic O2(Lm0/v;)I
    .locals 0

    .line 1
    iget p0, p0, Lm0/v;->k:I

    return p0
.end method

.method public static synthetic P2(Lm0/v;)I
    .locals 0

    .line 1
    iget p0, p0, Lm0/v;->m:I

    return p0
.end method

.method public static synthetic Q2(Lm0/v;I)I
    .locals 0

    .line 1
    iput p1, p0, Lm0/v;->m:I

    return p1
.end method

.method public static synthetic R2(Lm0/v;)I
    .locals 2

    .line 1
    iget v0, p0, Lm0/v;->m:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lm0/v;->m:I

    return v0
.end method

.method public static synthetic S2(Lm0/v;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lm0/v;->U2()V

    return-void
.end method


# virtual methods
.method public K2()V
    .locals 0

    return-void
.end method

.method public L2()V
    .locals 1

    .line 1
    iget v0, p0, Lm0/v;->k:I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lm0/v;->q:Ljava/lang/Runnable;

    invoke-static {v0}, Lm0/d;->i(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lm0/v;->k:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lm0/v;->o:[B

    const/4 v0, 0x0

    .line 5
    sput v0, Lm0/b;->e:I

    return-void
.end method

.method public N2()V
    .locals 5

    .line 1
    iget v0, p0, Lm0/v;->h:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget v2, Lm0/v;->r:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-nez v2, :cond_1

    .line 3
    sput v1, Lm0/v;->r:I

    goto :goto_0

    :cond_1
    if-ne v2, v1, :cond_2

    .line 4
    sput v4, Lm0/v;->r:I

    goto :goto_0

    :cond_2
    if-ne v2, v4, :cond_3

    .line 5
    sput v3, Lm0/v;->r:I

    goto :goto_0

    :cond_3
    if-ne v2, v3, :cond_4

    .line 6
    sput v1, Lm0/v;->r:I

    :cond_4
    :goto_0
    if-ne v0, v1, :cond_5

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Lm0/v;->W2(I)V

    .line 8
    iput v4, p0, Lm0/v;->h:I

    return-void

    .line 9
    :cond_5
    iget v0, p0, Lm0/v;->g:I

    iget v2, p0, Lm0/v;->j:I

    if-lt v0, v2, :cond_6

    .line 10
    invoke-virtual {p0}, Lm0/v;->X2()V

    return-void

    .line 11
    :cond_6
    sget v0, Lm0/v;->r:I

    if-ne v0, v1, :cond_7

    .line 12
    invoke-virtual {p0}, Lm0/v;->Z2()V

    .line 13
    :cond_7
    sget v0, Lm0/v;->r:I

    if-ne v0, v4, :cond_8

    .line 14
    iget v0, p0, Lm0/v;->g:I

    invoke-virtual {p0, v0}, Lm0/v;->W2(I)V

    .line 15
    :cond_8
    sget v0, Lm0/v;->r:I

    if-ne v0, v3, :cond_9

    .line 16
    iget v0, p0, Lm0/v;->g:I

    invoke-virtual {p0, v0}, Lm0/v;->Y2(I)V

    .line 17
    iget v0, p0, Lm0/v;->g:I

    add-int/2addr v0, v1

    iput v0, p0, Lm0/v;->g:I

    :cond_9
    return-void
.end method

.method public T2(B)V
    .locals 4

    .line 1
    sget v0, Lm0/b;->e:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x79

    const/16 v1, 0x1f

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_2

    .line 2
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " send_ok ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lm0/v;->h:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " sendcheck="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lm0/v;->r:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " receiver_1f="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lm0/v;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CAN"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/16 v2, 0x14

    if-eq p1, v1, :cond_4

    if-eq p1, v0, :cond_3

    goto :goto_0

    .line 3
    :cond_3
    iget p1, p0, Lm0/v;->i:I

    if-le p1, v2, :cond_9

    const/4 p1, 0x2

    .line 4
    iput p1, p0, Lm0/v;->k:I

    .line 5
    invoke-virtual {p0}, Lm0/v;->N2()V

    goto :goto_0

    .line 6
    :cond_4
    iget p1, p0, Lm0/v;->h:I

    const/4 v0, 0x1

    if-le p1, v0, :cond_5

    goto :goto_0

    .line 7
    :cond_5
    sget p1, Lm0/v;->r:I

    if-eqz p1, :cond_6

    if-ne p1, v0, :cond_7

    .line 8
    :cond_6
    iget p1, p0, Lm0/v;->i:I

    add-int/2addr p1, v0

    iput p1, p0, Lm0/v;->i:I

    .line 9
    :cond_7
    iget p1, p0, Lm0/v;->i:I

    if-ne p1, v2, :cond_8

    .line 10
    sput v0, Lm0/v;->r:I

    add-int/2addr p1, v0

    .line 11
    iput p1, p0, Lm0/v;->i:I

    .line 12
    :cond_8
    iget p1, p0, Lm0/v;->i:I

    const/16 v1, 0x15

    if-ne p1, v1, :cond_9

    .line 13
    sget p1, Lm0/v;->r:I

    if-ne p1, v0, :cond_9

    .line 14
    invoke-virtual {p0}, Lm0/v;->Z2()V

    :cond_9
    :goto_0
    return-void
.end method

.method public final U2()V
    .locals 0

    .line 1
    invoke-static {}, Lm0/d;->f()V

    return-void
.end method

.method public varargs V2([I)V
    .locals 1

    .line 1
    sget-object v0, Ll0/z;->a:Ll0/a;

    invoke-static {p1}, Ll0/a;->d([I)V

    return-void
.end method

.method public W2(I)V
    .locals 7

    mul-int/lit8 v0, p1, 0x40

    const v1, 0x8003000

    add-int/2addr v0, v1

    const/4 v1, 0x6

    new-array v2, v1, [I

    const/16 v3, 0xe9

    const/4 v4, 0x0

    aput v3, v2, v4

    shr-int/lit8 v3, v0, 0x18

    and-int/lit16 v3, v3, 0xff

    const/4 v5, 0x1

    aput v3, v2, v5

    shr-int/lit8 v3, v0, 0x10

    and-int/lit16 v3, v3, 0xff

    const/4 v6, 0x2

    aput v3, v2, v6

    shr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    const/4 v6, 0x3

    aput v3, v2, v6

    and-int/lit16 v0, v0, 0xff

    const/4 v3, 0x4

    aput v0, v2, v3

    const/4 v0, 0x5

    aput v4, v2, v0

    :goto_0
    if-ge v5, v0, :cond_0

    .line 1
    aget v3, v2, v0

    aget v6, v2, v5

    xor-int/2addr v3, v6

    aput v3, v2, v0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2
    :cond_0
    aget v3, v2, v0

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendBlock block ="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "   "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v4, v1}, Lo1/b0;->e([III)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CAN"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {p0, v2}, Lm0/v;->V2([I)V

    return-void
.end method

.method public X2()V
    .locals 5

    const/16 v0, 0x8

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_0

    const/4 v2, 0x1

    .line 2
    iput v2, p0, Lm0/v;->h:I

    .line 3
    sget-object v3, Ll0/z;->a:Ll0/a;

    invoke-static {v1}, Ll0/a;->d([I)V

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendOK3333 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-static {v1, v4, v0}, Lo1/b0;->e([III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAN"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v2, [I

    const/4 v1, 0x3

    aput v1, v0, v4

    const/4 v1, 0x2

    .line 5
    invoke-static {v1, v0}, Lm0/d;->j(I[I)V

    .line 6
    iput v4, p0, Lm0/v;->i:I

    .line 7
    iput v4, p0, Lm0/v;->k:I

    .line 8
    iget-object v0, p0, Lm0/v;->q:Ljava/lang/Runnable;

    invoke-static {v0}, Lm0/d;->i(Ljava/lang/Runnable;)V

    return-void

    nop

    :array_0
    .array-data 4
        0xe9
        0x21
        0xde
        0x8
        0x0
        0x0
        0x0
        0x8
    .end array-data
.end method

.method public Y2(I)V
    .locals 9

    .line 1
    iget v0, p0, Lm0/v;->f:I

    mul-int/lit8 v1, p1, 0x40

    sub-int v2, v0, v1

    const/16 v3, 0x40

    if-lt v2, v3, :cond_0

    const/16 v2, 0x43

    new-array v2, v2, [B

    goto :goto_0

    :cond_0
    sub-int v2, v0, v1

    add-int/lit8 v2, v2, 0x3

    .line 2
    new-array v2, v2, [B

    :goto_0
    const/16 v4, -0x17

    const/4 v5, 0x0

    .line 3
    aput-byte v4, v2, v5

    sub-int v4, v0, v1

    const/4 v6, 0x1

    if-lt v4, v3, :cond_1

    const/16 v4, 0x3f

    .line 4
    aput-byte v4, v2, v6

    goto :goto_1

    :cond_1
    sub-int v4, v0, v1

    sub-int/2addr v4, v6

    int-to-byte v4, v4

    .line 5
    aput-byte v4, v2, v6

    :goto_1
    sub-int v4, v0, v1

    const/4 v7, 0x2

    if-lt v4, v3, :cond_2

    .line 6
    iget-object v0, p0, Lm0/v;->o:[B

    invoke-static {v0, v1, v2, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 7
    :cond_2
    iget-object v4, p0, Lm0/v;->o:[B

    sub-int/2addr v0, v1

    invoke-static {v4, v1, v2, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    :goto_2
    array-length v0, v2

    sub-int/2addr v0, v6

    aput-byte v5, v2, v0

    move v0, v6

    .line 9
    :goto_3
    array-length v4, v2

    sub-int/2addr v4, v6

    if-ge v0, v4, :cond_3

    .line 10
    array-length v4, v2

    sub-int/2addr v4, v6

    aget-byte v7, v2, v4

    aget-byte v8, v2, v0

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 11
    :cond_3
    array-length v0, v2

    sub-int/2addr v0, v6

    array-length v4, v2

    sub-int/2addr v4, v6

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    .line 12
    invoke-static {v2}, Lo1/s0;->e([B)[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lm0/v;->V2([I)V

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "senddata1111 block =  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lm0/v;->f:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "block ="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAN"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "senddata1111 block = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    array-length v4, v2

    invoke-static {v2, v5, v4}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v6, [I

    const/16 v1, 0x64

    aput v1, v0, v5

    .line 15
    invoke-static {v6, v0}, Lm0/d;->j(I[I)V

    new-array v0, v6, [I

    add-int/2addr p1, v6

    mul-int/2addr p1, v1

    .line 16
    iget v1, p0, Lm0/v;->f:I

    div-int/2addr v1, v3

    div-int/2addr p1, v1

    aput p1, v0, v5

    invoke-static {v5, v0}, Lm0/d;->j(I[I)V

    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v0, p4

    const-string v2, "senddataS ="

    const-string v3, "CAN"

    if-eqz p1, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 v4, 0x1

    .line 1
    sput v4, Lm0/b;->e:I

    .line 2
    invoke-virtual/range {p0 .. p0}, Lm0/v;->U2()V

    const/4 v5, 0x0

    .line 3
    iput v5, v1, Lm0/v;->l:I

    .line 4
    iput v4, v1, Lm0/v;->k:I

    .line 5
    iput v5, v1, Lm0/v;->m:I

    if-eqz v0, :cond_5

    .line 6
    array-length v6, v0

    if-lez v6, :cond_5

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x2

    .line 7
    :try_start_0
    new-instance v9, Ljava/io/FileInputStream;

    aget-object v0, v0, v5

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    invoke-virtual {v9}, Ljava/io/InputStream;->available()I

    move-result v0

    iput v0, v1, Lm0/v;->f:I

    .line 9
    new-array v0, v0, [B

    .line 10
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "LsssGsize = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lm0/v;->f:I

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "size = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lm0/v;->f:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ln1/b;->s(Ljava/lang/String;)V

    .line 12
    sput v5, Lm0/v;->r:I

    .line 13
    iput v5, v1, Lm0/v;->h:I

    .line 14
    iput v5, v1, Lm0/v;->g:I

    .line 15
    iput v5, v1, Lm0/v;->i:I

    .line 16
    iput v5, v1, Lm0/v;->k:I

    .line 17
    iget v6, v1, Lm0/v;->f:I

    const/16 v10, 0x3000

    sub-int/2addr v6, v10

    iput v6, v1, Lm0/v;->f:I

    .line 18
    rem-int/lit8 v11, v6, 0x40

    if-nez v11, :cond_1

    div-int/lit8 v6, v6, 0x40

    iput v6, v1, Lm0/v;->j:I

    goto :goto_0

    .line 19
    :cond_1
    rem-int/lit8 v11, v6, 0x40

    if-eqz v11, :cond_2

    div-int/lit8 v6, v6, 0x40

    add-int/2addr v6, v4

    iput v6, v1, Lm0/v;->j:I

    :cond_2
    :goto_0
    new-array v6, v4, [I

    aput v4, v6, v5

    .line 20
    invoke-static {v8, v6}, Lm0/d;->j(I[I)V

    .line 21
    invoke-virtual {v9, v0}, Ljava/io/InputStream;->read([B)I

    .line 22
    iget v6, v1, Lm0/v;->f:I

    iput v6, v1, Lm0/v;->p:I

    new-array v11, v6, [B

    iput-object v11, v1, Lm0/v;->o:[B

    .line 23
    invoke-static {v0, v10, v11, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lm0/v;->o:[B

    const/16 v11, 0xa

    invoke-static {v6, v5, v11}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lm0/v;->o:[B

    invoke-static {v2, v10, v11}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lm0/v;->f:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mBuffer1="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lm0/v;->o:[B

    iget v6, v1, Lm0/v;->f:I

    const/4 v10, 0x5

    sub-int/2addr v6, v10

    aget-byte v2, v2, v6

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mBuffer2="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lm0/v;->o:[B

    iget v6, v1, Lm0/v;->f:I

    sub-int/2addr v6, v7

    aget-byte v2, v2, v6

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mBuffer3="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lm0/v;->o:[B

    iget v6, v1, Lm0/v;->f:I

    const/4 v12, 0x3

    sub-int/2addr v6, v12

    aget-byte v2, v2, v6

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mBuffer4="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lm0/v;->o:[B

    iget v6, v1, Lm0/v;->f:I

    sub-int/2addr v6, v8

    aget-byte v2, v2, v6

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mBuffer5="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lm0/v;->o:[B

    iget v6, v1, Lm0/v;->f:I

    sub-int/2addr v6, v4

    aget-byte v2, v2, v6

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "senddataE ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lm0/v;->o:[B

    iget v6, v1, Lm0/v;->f:I

    sub-int/2addr v6, v11

    invoke-static {v2, v6, v11}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xf

    new-array v2, v0, [I

    const/16 v6, 0x7f

    aput v6, v2, v5

    aput v6, v2, v4

    aput v6, v2, v8

    aput v6, v2, v12

    aput v6, v2, v7

    aput v6, v2, v10

    const/4 v13, 0x6

    aput v6, v2, v13

    const/4 v14, 0x7

    aput v6, v2, v14

    const/16 v15, 0x8

    aput v6, v2, v15

    const/16 v16, 0x9

    aput v6, v2, v16

    aput v6, v2, v11

    const/16 v17, 0xb

    aput v6, v2, v17

    const/16 v18, 0xc

    aput v6, v2, v18

    const/16 v19, 0xd

    aput v6, v2, v19

    const/16 v20, 0xe

    aput v6, v2, v20

    .line 28
    invoke-virtual {v1, v2}, Lm0/v;->a3([I)V

    const-wide/16 v21, 0x64

    .line 29
    invoke-static/range {v21 .. v22}, La/i;->a0(J)V

    new-array v0, v0, [I

    aput v6, v0, v5

    aput v6, v0, v4

    aput v6, v0, v8

    aput v6, v0, v12

    aput v6, v0, v7

    aput v6, v0, v10

    aput v6, v0, v13

    aput v6, v0, v14

    aput v6, v0, v15

    aput v6, v0, v16

    aput v6, v0, v11

    aput v6, v0, v17

    aput v6, v0, v18

    aput v6, v0, v19

    aput v6, v0, v20

    .line 30
    invoke-virtual {v1, v0}, Lm0/v;->a3([I)V

    .line 31
    invoke-static/range {v21 .. v22}, La/i;->a0(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    :try_start_2
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 33
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    const-string v0, "requestUpdateLG"

    .line 34
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    const-string v2, "requestUpdate"

    invoke-virtual {v0, v2}, Ln1/b;->s(Ljava/lang/String;)V

    .line 36
    iget-object v0, v1, Lm0/v;->q:Ljava/lang/Runnable;

    invoke-static {v0}, Lm0/d;->b(Ljava/lang/Runnable;)V

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v6, v9

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v6, v9

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v2, v0

    goto :goto_4

    :catch_2
    move-exception v0

    .line 37
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 38
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    const-string v2, "\u8bfb\u53d6\u6587\u4ef6\u5931\u8d25"

    invoke-virtual {v0, v2}, Ln1/b;->s(Ljava/lang/String;)V

    new-array v0, v4, [I

    aput v7, v0, v5

    .line 40
    invoke-static {v8, v0}, Lm0/d;->j(I[I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v6, :cond_3

    .line 41
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v2, v0

    .line 42
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_3
    return-void

    :goto_4
    if-eqz v6, :cond_4

    .line 43
    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    move-object v3, v0

    .line 44
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 45
    :cond_4
    :goto_5
    throw v2

    :cond_5
    :goto_6
    return-void
.end method

.method public Z2()V
    .locals 4

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_0

    .line 2
    sget-object v2, Ll0/z;->a:Ll0/a;

    invoke-static {v1}, Ll0/a;->d([I)V

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendwrite222"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-static {v1, v3, v0}, Lo1/b0;->e([III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAN"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :array_0
    .array-data 4
        0xe9
        0x31
        0xce
    .end array-data
.end method

.method public varargs a3([I)V
    .locals 5

    .line 1
    array-length v0, p1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 2
    new-array v2, v0, [I

    const/4 v3, 0x0

    const/16 v4, 0xe9

    .line 3
    aput v4, v2, v3

    :goto_0
    if-ge v1, v0, :cond_0

    add-int/lit8 v3, v1, -0x1

    .line 4
    aget v3, p1, v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, v2}, Lm0/v;->V2([I)V

    return-void
.end method

.method public b([B)V
    .locals 6

    if-eqz p1, :cond_e

    .line 1
    array-length v0, p1

    if-gtz v0, :cond_0

    goto/16 :goto_8

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 2
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 3
    aget-byte v2, p1, v1

    invoke-virtual {p0, v2}, Lm0/v;->T2(B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_1
    iget v1, p0, Lm0/v;->c:I

    array-length v2, p1

    add-int/2addr v1, v2

    const/16 v2, 0x400

    if-le v1, v2, :cond_2

    .line 5
    iput v0, p0, Lm0/v;->c:I

    .line 6
    iput v0, p0, Lm0/v;->d:I

    .line 7
    iput v0, p0, Lm0/v;->e:I

    .line 8
    :cond_2
    iget-object v1, p0, Lm0/v;->b:[B

    iget v2, p0, Lm0/v;->c:I

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    iget v1, p0, Lm0/v;->c:I

    array-length p1, p1

    add-int/2addr v1, p1

    iput v1, p0, Lm0/v;->c:I

    .line 10
    iget p1, p0, Lm0/v;->e:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_6

    if-lt p1, v1, :cond_3

    return-void

    .line 11
    :cond_3
    iget-object p1, p0, Lm0/v;->b:[B

    aget-byte p1, p1, v3

    move v1, v2

    .line 12
    :goto_1
    iget v4, p0, Lm0/v;->e:I

    if-ge v1, v4, :cond_4

    .line 13
    iget-object v4, p0, Lm0/v;->b:[B

    aget-byte v4, v4, v1

    add-int/2addr p1, v4

    int-to-byte p1, p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    not-int p1, p1

    int-to-byte p1, p1

    .line 14
    iget-object v1, p0, Lm0/v;->b:[B

    aget-byte v1, v1, v4

    if-ne p1, v1, :cond_5

    add-int/2addr v4, v3

    .line 15
    iput v4, p0, Lm0/v;->d:I

    goto :goto_2

    .line 16
    :cond_5
    iput v3, p0, Lm0/v;->d:I

    .line 17
    :goto_2
    iput v0, p0, Lm0/v;->e:I

    .line 18
    :cond_6
    iget p1, p0, Lm0/v;->c:I

    sub-int/2addr p1, v2

    :goto_3
    iget v1, p0, Lm0/v;->d:I

    if-ge v1, p1, :cond_c

    .line 19
    iget-object v2, p0, Lm0/v;->b:[B

    aget-byte v4, v2, v1

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_b

    add-int/lit8 v4, v1, 0x2

    .line 20
    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    iput v4, p0, Lm0/v;->e:I

    const/16 v5, 0x200

    if-le v4, v5, :cond_7

    .line 21
    iput v0, p0, Lm0/v;->e:I

    goto :goto_6

    :cond_7
    add-int/lit8 v5, v1, 0x3

    add-int/2addr v4, v5

    .line 22
    iput v4, p0, Lm0/v;->e:I

    .line 23
    iget v5, p0, Lm0/v;->c:I

    if-lt v4, v5, :cond_8

    sub-int/2addr v4, v1

    .line 24
    iput v4, p0, Lm0/v;->e:I

    goto :goto_7

    :cond_8
    add-int/lit8 v4, v1, 0x1

    .line 25
    aget-byte v2, v2, v4

    add-int/lit8 v1, v1, 0x2

    .line 26
    :goto_4
    iget v4, p0, Lm0/v;->e:I

    if-ge v1, v4, :cond_9

    .line 27
    iget-object v4, p0, Lm0/v;->b:[B

    aget-byte v4, v4, v1

    add-int/2addr v2, v4

    int-to-byte v2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_9
    not-int v1, v2

    int-to-byte v1, v1

    .line 28
    iget-object v2, p0, Lm0/v;->b:[B

    aget-byte v2, v2, v4

    if-ne v1, v2, :cond_a

    .line 29
    iput v4, p0, Lm0/v;->d:I

    goto :goto_5

    .line 30
    :cond_a
    iget v1, p0, Lm0/v;->d:I

    add-int/2addr v1, v3

    iput v1, p0, Lm0/v;->d:I

    .line 31
    :goto_5
    iput v0, p0, Lm0/v;->e:I

    .line 32
    :cond_b
    :goto_6
    iget v1, p0, Lm0/v;->d:I

    add-int/2addr v1, v3

    iput v1, p0, Lm0/v;->d:I

    goto :goto_3

    :cond_c
    :goto_7
    if-eqz v1, :cond_e

    .line 33
    iget p1, p0, Lm0/v;->c:I

    sub-int/2addr p1, v1

    iput p1, p0, Lm0/v;->c:I

    if-lez p1, :cond_d

    .line 34
    iget-object v2, p0, Lm0/v;->b:[B

    invoke-static {v2, v1, v2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    :cond_d
    iput v0, p0, Lm0/v;->d:I

    :cond_e
    :goto_8
    return-void
.end method
