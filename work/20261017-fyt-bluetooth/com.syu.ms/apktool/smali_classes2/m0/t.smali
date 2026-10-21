.class public Lm0/t;
.super Lm0/a;
.source "SourceFile"

# interfaces
.implements Lo1/q;


# static fields
.field public static s:I


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

.field public n:I

.field public o:[B

.field public p:[B

.field public q:I

.field public r:Ljava/lang/Runnable;


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
    iput-boolean v0, p0, Lm0/t;->a:Z

    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 3
    iput-object v1, p0, Lm0/t;->b:[B

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lm0/t;->c:I

    .line 5
    iput v1, p0, Lm0/t;->d:I

    .line 6
    iput v1, p0, Lm0/t;->e:I

    .line 7
    iput v1, p0, Lm0/t;->f:I

    .line 8
    iput v1, p0, Lm0/t;->g:I

    .line 9
    iput v1, p0, Lm0/t;->h:I

    .line 10
    iput v1, p0, Lm0/t;->i:I

    .line 11
    iput v1, p0, Lm0/t;->j:I

    .line 12
    iput v0, p0, Lm0/t;->k:I

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lm0/t;->l:I

    iput v1, p0, Lm0/t;->m:I

    iput v1, p0, Lm0/t;->n:I

    const/16 v0, 0x40

    new-array v0, v0, [B

    .line 14
    iput-object v0, p0, Lm0/t;->o:[B

    .line 15
    new-instance v0, Lm0/t$a;

    invoke-direct {v0, p0}, Lm0/t$a;-><init>(Lm0/t;)V

    iput-object v0, p0, Lm0/t;->r:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic O2(Lm0/t;)I
    .locals 0

    .line 1
    iget p0, p0, Lm0/t;->l:I

    return p0
.end method

.method public static synthetic P2(Lm0/t;)I
    .locals 0

    .line 1
    iget p0, p0, Lm0/t;->n:I

    return p0
.end method

.method public static synthetic Q2(Lm0/t;I)I
    .locals 0

    .line 1
    iput p1, p0, Lm0/t;->n:I

    return p1
.end method

.method public static synthetic R2(Lm0/t;)I
    .locals 2

    .line 1
    iget v0, p0, Lm0/t;->n:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lm0/t;->n:I

    return v0
.end method

.method public static synthetic S2(Lm0/t;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lm0/t;->U2()V

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
    iget v0, p0, Lm0/t;->l:I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lm0/t;->r:Ljava/lang/Runnable;

    invoke-static {v0}, Lm0/d;->i(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lm0/t;->l:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lm0/t;->p:[B

    const/4 v0, 0x0

    .line 5
    sput v0, Lm0/b;->e:I

    return-void
.end method

.method public N2()V
    .locals 5

    .line 1
    iget v0, p0, Lm0/t;->h:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget v0, Lm0/t;->s:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-nez v0, :cond_1

    sput v1, Lm0/t;->s:I

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    .line 3
    sput v3, Lm0/t;->s:I

    goto :goto_0

    :cond_2
    if-ne v0, v3, :cond_3

    .line 4
    sput v2, Lm0/t;->s:I

    goto :goto_0

    :cond_3
    if-ne v0, v2, :cond_4

    .line 5
    sput v1, Lm0/t;->s:I

    .line 6
    :cond_4
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendcheck ="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lm0/t;->s:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "BLOCK ="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lm0/t;->g:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " send_ok="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lm0/t;->h:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " (size/64)="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lm0/t;->f:I

    div-int/lit8 v4, v4, 0x40

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "total_block ="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lm0/t;->j:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "CAN"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget v0, p0, Lm0/t;->h:I

    if-ne v0, v1, :cond_5

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Lm0/t;->W2(I)V

    .line 9
    iput v3, p0, Lm0/t;->h:I

    return-void

    .line 10
    :cond_5
    iget v0, p0, Lm0/t;->g:I

    add-int/lit16 v0, v0, 0x80

    iget v4, p0, Lm0/t;->j:I

    if-lt v0, v4, :cond_6

    .line 11
    invoke-virtual {p0}, Lm0/t;->X2()V

    return-void

    .line 12
    :cond_6
    sget v0, Lm0/t;->s:I

    if-ne v0, v1, :cond_7

    .line 13
    invoke-virtual {p0}, Lm0/t;->Z2()V

    .line 14
    :cond_7
    sget v0, Lm0/t;->s:I

    if-ne v0, v3, :cond_8

    .line 15
    iget v0, p0, Lm0/t;->g:I

    invoke-virtual {p0, v0}, Lm0/t;->W2(I)V

    .line 16
    :cond_8
    sget v0, Lm0/t;->s:I

    if-ne v0, v2, :cond_9

    .line 17
    iget v0, p0, Lm0/t;->g:I

    invoke-virtual {p0, v0}, Lm0/t;->Y2(I)V

    .line 18
    iget v0, p0, Lm0/t;->g:I

    add-int/2addr v0, v1

    iput v0, p0, Lm0/t;->g:I

    :cond_9
    return-void
.end method

.method public T2(B)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ack data ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAN"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x1f

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    const/16 v0, 0x79

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget p1, p0, Lm0/t;->i:I

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p0}, Lm0/t;->N2()V

    goto :goto_0

    .line 4
    :cond_1
    iput v1, p0, Lm0/t;->i:I

    goto :goto_0

    .line 5
    :cond_2
    iget p1, p0, Lm0/t;->i:I

    const/4 v0, 0x2

    if-ne p1, v1, :cond_3

    .line 6
    invoke-virtual {p0}, Lm0/t;->N2()V

    .line 7
    iput v0, p0, Lm0/t;->i:I

    .line 8
    :cond_3
    iput v0, p0, Lm0/t;->l:I

    .line 9
    iget p1, p0, Lm0/t;->i:I

    if-ne p1, v0, :cond_4

    .line 10
    invoke-virtual {p0}, Lm0/t;->Z2()V

    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lm0/t;->g:I

    .line 12
    sput v1, Lm0/t;->s:I

    :cond_4
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
    .locals 5

    mul-int/lit8 v0, p1, 0x40

    const v1, 0x8003000

    add-int/2addr v0, v1

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendBlock block ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CAN"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x6

    new-array p1, p1, [I

    const/16 v1, 0xe9

    const/4 v2, 0x0

    aput v1, p1, v2

    shr-int/lit8 v1, v0, 0x18

    and-int/lit16 v1, v1, 0xff

    const/4 v3, 0x1

    aput v1, p1, v3

    shr-int/lit8 v1, v0, 0x10

    and-int/lit16 v1, v1, 0xff

    const/4 v4, 0x2

    aput v1, p1, v4

    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v1, v1, 0xff

    const/4 v4, 0x3

    aput v1, p1, v4

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x4

    aput v0, p1, v1

    const/4 v0, 0x5

    aput v2, p1, v0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 2
    aget v1, p1, v0

    aget v2, p1, v3

    xor-int/2addr v1, v2

    aput v1, p1, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3
    :cond_0
    aget v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    aput v1, p1, v0

    .line 4
    invoke-virtual {p0, p1}, Lm0/t;->V2([I)V

    return-void
.end method

.method public X2()V
    .locals 4

    const-string v0, "CAN"

    const-string v1, "sendOK"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 2
    fill-array-data v1, :array_0

    const/4 v2, 0x1

    .line 3
    iput v2, p0, Lm0/t;->h:I

    .line 4
    sget-object v3, Ll0/z;->a:Ll0/a;

    invoke-static {v1}, Ll0/a;->d([I)V

    new-array v1, v2, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x2

    .line 5
    invoke-static {v0, v1}, Lm0/d;->j(I[I)V

    return-void

    nop

    :array_0
    .array-data 4
        0xe9
        0x21
        0xde
    .end array-data
.end method

.method public Y2(I)V
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "senddata block ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAN"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget v0, p0, Lm0/t;->f:I

    add-int/lit16 v2, p1, 0x80

    const/16 v3, 0x40

    mul-int/2addr v2, v3

    sub-int v4, v0, v2

    if-lt v4, v3, :cond_0

    const/16 v4, 0x43

    new-array v4, v4, [B

    goto :goto_0

    :cond_0
    sub-int v4, v0, v2

    add-int/lit8 v4, v4, 0x3

    .line 3
    new-array v4, v4, [B

    :goto_0
    const/16 v5, -0x17

    const/4 v6, 0x0

    .line 4
    aput-byte v5, v4, v6

    sub-int v5, v0, v2

    const/4 v7, 0x1

    if-lt v5, v3, :cond_1

    const/16 v5, 0x3f

    .line 5
    aput-byte v5, v4, v7

    goto :goto_1

    :cond_1
    sub-int v5, v0, v2

    sub-int/2addr v5, v7

    int-to-byte v5, v5

    .line 6
    aput-byte v5, v4, v7

    :goto_1
    sub-int v5, v0, v2

    const/4 v8, 0x2

    if-lt v5, v3, :cond_2

    .line 7
    iget-object v0, p0, Lm0/t;->p:[B

    invoke-static {v0, v2, v4, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 8
    :cond_2
    iget-object v5, p0, Lm0/t;->p:[B

    sub-int/2addr v0, v2

    invoke-static {v5, v2, v4, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    :goto_2
    array-length v0, v4

    sub-int/2addr v0, v7

    aput-byte v6, v4, v0

    move v0, v7

    .line 10
    :goto_3
    array-length v2, v4

    sub-int/2addr v2, v7

    if-ge v0, v2, :cond_3

    .line 11
    array-length v2, v4

    sub-int/2addr v2, v7

    aget-byte v5, v4, v2

    aget-byte v8, v4, v0

    xor-int/2addr v5, v8

    int-to-byte v5, v5

    aput-byte v5, v4, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 12
    :cond_3
    array-length v0, v4

    sub-int/2addr v0, v7

    array-length v2, v4

    sub-int/2addr v2, v7

    aget-byte v2, v4, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v4, v0

    .line 13
    invoke-static {v4}, Lo1/s0;->e([B)[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lm0/t;->V2([I)V

    .line 14
    array-length v0, v4

    invoke-static {v4, v6, v0}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v7, [I

    const/16 v1, 0x64

    aput v1, v0, v6

    .line 15
    invoke-static {v7, v0}, Lm0/d;->j(I[I)V

    new-array v0, v7, [I

    add-int/2addr p1, v7

    add-int/lit16 p1, p1, 0x80

    mul-int/2addr p1, v1

    .line 16
    iget v1, p0, Lm0/t;->f:I

    div-int/2addr v1, v3

    div-int/2addr p1, v1

    aput p1, v0, v6

    invoke-static {v6, v0}, Lm0/d;->j(I[I)V

    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 4

    const-string p2, "CAN"

    if-eqz p1, :cond_0

    goto/16 :goto_6

    :cond_0
    if-eqz p4, :cond_5

    .line 1
    array-length p1, p4

    if-lez p1, :cond_5

    const/4 p1, 0x0

    const/4 p3, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    aget-object p4, p4, v1

    invoke-direct {v2, p4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result p1

    iput p1, p0, Lm0/t;->f:I

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "LGsize = "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p0, Lm0/t;->f:I

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "size = "

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lm0/t;->f:I

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ln1/b;->s(Ljava/lang/String;)V

    .line 6
    sput v1, Lm0/t;->s:I

    .line 7
    iput v1, p0, Lm0/t;->h:I

    .line 8
    iput v0, p0, Lm0/t;->k:I

    .line 9
    iput v1, p0, Lm0/t;->g:I

    .line 10
    iget p1, p0, Lm0/t;->f:I

    rem-int/lit8 p4, p1, 0x40

    if-nez p4, :cond_1

    div-int/lit8 p1, p1, 0x40

    iput p1, p0, Lm0/t;->j:I

    goto :goto_0

    .line 11
    :cond_1
    rem-int/lit8 p4, p1, 0x40

    if-eqz p4, :cond_2

    div-int/lit8 p1, p1, 0x40

    add-int/2addr p1, v0

    iput p1, p0, Lm0/t;->j:I

    :cond_2
    :goto_0
    new-array p1, v0, [I

    aput v0, p1, v1

    .line 12
    invoke-static {p3, p1}, Lm0/d;->j(I[I)V

    .line 13
    iget p1, p0, Lm0/t;->f:I

    iput p1, p0, Lm0/t;->q:I

    new-array p1, p1, [B

    iput-object p1, p0, Lm0/t;->p:[B

    new-array p1, v0, [I

    const/16 p4, 0x7f

    aput p4, p1, v1

    .line 14
    invoke-virtual {p0, p1}, Lm0/t;->a3([I)V

    .line 15
    iget-object p1, p0, Lm0/t;->p:[B

    invoke-virtual {v2, p1}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 16
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    const-string p1, "requestUpdateLG"

    .line 18
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    const-string p2, "requestUpdate"

    invoke-virtual {p1, p2}, Ln1/b;->s(Ljava/lang/String;)V

    .line 20
    sput v0, Lm0/b;->e:I

    .line 21
    invoke-virtual {p0}, Lm0/t;->U2()V

    .line 22
    iput v1, p0, Lm0/t;->m:I

    iput v0, p0, Lm0/t;->l:I

    iput v1, p0, Lm0/t;->n:I

    iput v1, p0, Lm0/t;->i:I

    .line 23
    iget-object p1, p0, Lm0/t;->r:Ljava/lang/Runnable;

    invoke-static {p1}, Lm0/d;->a(Ljava/lang/Runnable;)V

    goto :goto_6

    :catch_1
    move-exception p1

    goto :goto_2

    :catchall_0
    move-exception p2

    move-object v2, p1

    move-object p1, p2

    goto :goto_4

    :catch_2
    move-exception p4

    move-object v2, p1

    move-object p1, p4

    .line 24
    :goto_2
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 25
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array p1, v0, [I

    const/4 p2, 0x4

    aput p2, p1, v1

    .line 26
    invoke-static {p3, p1}, Lm0/d;->j(I[I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_3

    .line 27
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 28
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_3
    return-void

    :catchall_1
    move-exception p1

    :goto_4
    if-eqz v2, :cond_4

    .line 29
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    move-exception p2

    .line 30
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 31
    :cond_4
    :goto_5
    throw p1

    :cond_5
    :goto_6
    return-void
.end method

.method public Z2()V
    .locals 2

    const-string v0, "CAN"

    const-string v1, "sendwrite"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    const/4 v1, 0x2

    .line 3
    iput v1, p0, Lm0/t;->k:I

    .line 4
    sget-object v1, Ll0/z;->a:Ll0/a;

    invoke-static {v0}, Ll0/a;->d([I)V

    return-void

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
    invoke-virtual {p0, v2}, Lm0/t;->V2([I)V

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

    invoke-virtual {p0, v2}, Lm0/t;->T2(B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_1
    iget v1, p0, Lm0/t;->c:I

    array-length v2, p1

    add-int/2addr v1, v2

    const/16 v2, 0x400

    if-le v1, v2, :cond_2

    .line 5
    iput v0, p0, Lm0/t;->c:I

    .line 6
    iput v0, p0, Lm0/t;->d:I

    .line 7
    iput v0, p0, Lm0/t;->e:I

    .line 8
    :cond_2
    iget-object v1, p0, Lm0/t;->b:[B

    iget v2, p0, Lm0/t;->c:I

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    iget v1, p0, Lm0/t;->c:I

    array-length p1, p1

    add-int/2addr v1, p1

    iput v1, p0, Lm0/t;->c:I

    .line 10
    iget p1, p0, Lm0/t;->e:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_6

    if-lt p1, v1, :cond_3

    return-void

    .line 11
    :cond_3
    iget-object p1, p0, Lm0/t;->b:[B

    aget-byte p1, p1, v3

    move v1, v2

    .line 12
    :goto_1
    iget v4, p0, Lm0/t;->e:I

    if-ge v1, v4, :cond_4

    .line 13
    iget-object v4, p0, Lm0/t;->b:[B

    aget-byte v4, v4, v1

    add-int/2addr p1, v4

    int-to-byte p1, p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    not-int p1, p1

    int-to-byte p1, p1

    .line 14
    iget-object v1, p0, Lm0/t;->b:[B

    aget-byte v1, v1, v4

    if-ne p1, v1, :cond_5

    add-int/2addr v4, v3

    .line 15
    iput v4, p0, Lm0/t;->d:I

    goto :goto_2

    .line 16
    :cond_5
    iput v3, p0, Lm0/t;->d:I

    .line 17
    :goto_2
    iput v0, p0, Lm0/t;->e:I

    .line 18
    :cond_6
    iget p1, p0, Lm0/t;->c:I

    sub-int/2addr p1, v2

    :goto_3
    iget v1, p0, Lm0/t;->d:I

    if-ge v1, p1, :cond_c

    .line 19
    iget-object v2, p0, Lm0/t;->b:[B

    aget-byte v4, v2, v1

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_b

    add-int/lit8 v4, v1, 0x2

    .line 20
    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    iput v4, p0, Lm0/t;->e:I

    const/16 v5, 0x200

    if-le v4, v5, :cond_7

    .line 21
    iput v0, p0, Lm0/t;->e:I

    goto :goto_6

    :cond_7
    add-int/lit8 v5, v1, 0x3

    add-int/2addr v4, v5

    .line 22
    iput v4, p0, Lm0/t;->e:I

    .line 23
    iget v5, p0, Lm0/t;->c:I

    if-lt v4, v5, :cond_8

    sub-int/2addr v4, v1

    .line 24
    iput v4, p0, Lm0/t;->e:I

    goto :goto_7

    :cond_8
    add-int/lit8 v4, v1, 0x1

    .line 25
    aget-byte v2, v2, v4

    add-int/lit8 v1, v1, 0x2

    .line 26
    :goto_4
    iget v4, p0, Lm0/t;->e:I

    if-ge v1, v4, :cond_9

    .line 27
    iget-object v4, p0, Lm0/t;->b:[B

    aget-byte v4, v4, v1

    add-int/2addr v2, v4

    int-to-byte v2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_9
    not-int v1, v2

    int-to-byte v1, v1

    .line 28
    iget-object v2, p0, Lm0/t;->b:[B

    aget-byte v2, v2, v4

    if-ne v1, v2, :cond_a

    .line 29
    iput v4, p0, Lm0/t;->d:I

    goto :goto_5

    .line 30
    :cond_a
    iget v1, p0, Lm0/t;->d:I

    add-int/2addr v1, v3

    iput v1, p0, Lm0/t;->d:I

    .line 31
    :goto_5
    iput v0, p0, Lm0/t;->e:I

    .line 32
    :cond_b
    :goto_6
    iget v1, p0, Lm0/t;->d:I

    add-int/2addr v1, v3

    iput v1, p0, Lm0/t;->d:I

    goto :goto_3

    :cond_c
    :goto_7
    if-eqz v1, :cond_e

    .line 33
    iget p1, p0, Lm0/t;->c:I

    sub-int/2addr p1, v1

    iput p1, p0, Lm0/t;->c:I

    if-lez p1, :cond_d

    .line 34
    iget-object v2, p0, Lm0/t;->b:[B

    invoke-static {v2, v1, v2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    :cond_d
    iput v0, p0, Lm0/t;->d:I

    :cond_e
    :goto_8
    return-void
.end method
