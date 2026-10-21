.class public Lm0/n;
.super Lm0/a;
.source "SourceFile"

# interfaces
.implements Lo1/q;


# instance fields
.field public final a:Z

.field public b:I

.field public c:I

.field public d:[B

.field public e:[B

.field public f:I

.field public g:I

.field public final h:[B

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lm0/a;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lm0/n;->a:Z

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lm0/n;->b:I

    const/16 v0, 0x80

    .line 4
    iput v0, p0, Lm0/n;->c:I

    add-int/lit8 v0, v0, 0x2

    .line 5
    new-array v0, v0, [B

    iput-object v0, p0, Lm0/n;->d:[B

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lm0/n;->g:I

    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 7
    iput-object v1, p0, Lm0/n;->h:[B

    .line 8
    iput v0, p0, Lm0/n;->i:I

    .line 9
    iput v0, p0, Lm0/n;->j:I

    .line 10
    iput v0, p0, Lm0/n;->k:I

    .line 11
    iput v0, p0, Lm0/n;->l:I

    .line 12
    iput v0, p0, Lm0/n;->m:I

    .line 13
    iput v0, p0, Lm0/n;->n:I

    .line 14
    new-instance v0, Lm0/n$a;

    invoke-direct {v0, p0}, Lm0/n$a;-><init>(Lm0/n;)V

    iput-object v0, p0, Lm0/n;->o:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic N2(Lm0/n;)I
    .locals 0

    .line 1
    iget p0, p0, Lm0/n;->b:I

    return p0
.end method

.method public static synthetic O2(Lm0/n;)I
    .locals 0

    .line 1
    iget p0, p0, Lm0/n;->g:I

    return p0
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
    iput v0, p0, Lm0/n;->b:I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lm0/n;->e:[B

    const/4 v0, 0x0

    .line 3
    sput v0, Lm0/b;->e:I

    return-void
.end method

.method public final P2()V
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

.method public Q2([BII)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SOUL :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2, p3}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SOUL"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    sget-object v1, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OBD Update Rcv1111--> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2, p3}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 3
    aget-byte v0, p1, p2

    const/16 v1, -0x1e

    if-eq v0, v1, :cond_1

    const/16 v1, -0x1c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lm0/n;->R2([BII)V

    goto :goto_0

    :cond_1
    add-int/lit8 p3, p3, -0x1

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lm0/n;->R2([BII)V

    :goto_0
    return-void
.end method

.method public final R2([BII)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data[start] ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  updateCanUpInfo :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2, p3}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "SOUL"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUpgradeStep 1111==  :"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lm0/n;->b:I

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    aget-byte p3, p1, p2

    const/16 v1, -0x1e

    const/4 v2, 0x3

    const/16 v3, 0x80

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq p3, v1, :cond_2

    const/16 v1, -0x1c

    if-eq p3, v1, :cond_0

    goto/16 :goto_0

    .line 4
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUpgradeStep 222222==  :"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lm0/n;->b:I

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget p3, p0, Lm0/n;->b:I

    if-ne p3, v5, :cond_5

    add-int/lit8 p3, p2, 0x2

    .line 6
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    shl-int/lit8 p3, p3, 0x8

    const v1, 0xff00

    and-int/2addr p3, v1

    add-int/2addr p2, v2

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, p3

    add-int/2addr p1, v5

    iput p1, p0, Lm0/n;->n:I

    .line 7
    iget-object p1, p0, Lm0/n;->e:[B

    if-eqz p1, :cond_5

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "block ===  "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lm0/n;->n:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "-------mBlockConut == "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lm0/n;->g:I

    const v1, 0xffff

    and-int/2addr p3, v1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget p1, p0, Lm0/n;->n:I

    add-int/lit8 p3, p1, 0x1

    and-int/2addr p3, v1

    iget v7, p0, Lm0/n;->g:I

    and-int/2addr v7, v1

    if-le p3, v7, :cond_1

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "11111111 block ===  "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lm0/n;->n:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lm0/n;->g:I

    and-int/2addr p3, v1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array p1, v5, [I

    aput v2, p1, v6

    .line 11
    invoke-static {v4, p1}, Lm0/d;->j(I[I)V

    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "222222222 block ===  "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lm0/n;->n:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lm0/n;->g:I

    and-int/2addr p3, v1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array p1, v5, [I

    .line 13
    iget p3, p0, Lm0/n;->g:I

    mul-int/lit8 v2, p3, 0x64

    div-int/2addr v2, p3

    aput v2, p1, v6

    invoke-static {v6, p1}, Lm0/d;->j(I[I)V

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "33333333 block ===  "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lm0/n;->n:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lm0/n;->g:I

    and-int/2addr p2, v1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 15
    :cond_1
    iget-object p2, p0, Lm0/n;->d:[B

    shr-int/lit8 p3, p1, 0x8

    and-int/lit16 p3, p3, 0xff

    int-to-byte p3, p3

    aput-byte p3, p2, v6

    and-int/lit16 p3, p1, 0xff

    int-to-byte p3, p3

    .line 16
    aput-byte p3, p2, v5

    .line 17
    iget-object p3, p0, Lm0/n;->e:[B

    mul-int/2addr p1, v3

    invoke-static {p3, p1, p2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array p1, v5, [I

    .line 18
    iget p2, p0, Lm0/n;->n:I

    mul-int/lit8 p2, p2, 0x64

    iget p3, p0, Lm0/n;->g:I

    div-int/2addr p2, p3

    aput p2, p1, v6

    invoke-static {v6, p1}, Lm0/d;->j(I[I)V

    .line 19
    iget-object p1, p0, Lm0/n;->d:[B

    invoke-virtual {p0, p1}, Lm0/n;->T2([B)V

    goto :goto_0

    .line 20
    :cond_2
    iput v5, p0, Lm0/n;->b:I

    add-int/2addr p2, v4

    .line 21
    aget-byte p3, p1, p2

    if-nez p3, :cond_3

    new-array p1, v5, [I

    const/4 p2, 0x4

    aput p2, p1, v6

    .line 22
    invoke-static {v4, p1}, Lm0/d;->j(I[I)V

    goto :goto_0

    .line 23
    :cond_3
    aget-byte p3, p1, p2

    if-ne p3, v5, :cond_4

    new-array p1, v5, [I

    aput v5, p1, v6

    .line 24
    invoke-static {v4, p1}, Lm0/d;->j(I[I)V

    new-array p1, v5, [I

    .line 25
    iget p2, p0, Lm0/n;->n:I

    mul-int/lit8 p2, p2, 0x64

    iget p3, p0, Lm0/n;->g:I

    div-int/2addr p2, p3

    aput p2, p1, v6

    invoke-static {v6, p1}, Lm0/d;->j(I[I)V

    .line 26
    iget-object p1, p0, Lm0/n;->d:[B

    aput-byte v6, p1, v6

    .line 27
    aput-byte v6, p1, v5

    .line 28
    iget-object p2, p0, Lm0/n;->e:[B

    if-eqz p2, :cond_5

    .line 29
    iget p3, p0, Lm0/n;->n:I

    mul-int/2addr p3, v3

    invoke-static {p2, p3, p1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array p1, v5, [I

    .line 30
    iget p2, p0, Lm0/n;->n:I

    mul-int/lit8 p2, p2, 0x64

    iget p3, p0, Lm0/n;->g:I

    div-int/2addr p2, p3

    aput p2, p1, v6

    invoke-static {v6, p1}, Lm0/d;->j(I[I)V

    .line 31
    iget-object p1, p0, Lm0/n;->d:[B

    invoke-virtual {p0, p1}, Lm0/n;->T2([B)V

    goto :goto_0

    .line 32
    :cond_4
    aget-byte p1, p1, p2

    if-ne p1, v4, :cond_5

    new-array p1, v5, [I

    aput v2, p1, v6

    .line 33
    invoke-static {v4, p1}, Lm0/d;->j(I[I)V

    new-array p1, v5, [I

    .line 34
    iget p2, p0, Lm0/n;->g:I

    mul-int/lit8 p3, p2, 0x64

    div-int/2addr p3, p2

    aput p3, p1, v6

    invoke-static {v6, p1}, Lm0/d;->j(I[I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public varargs S2([I)V
    .locals 8

    .line 1
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    sget-object v1, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WR OBD Update111 ---->: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    const/4 v4, 0x0

    invoke-static {p1, v4, v3}, Lo1/b0;->e([III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WR OBD Update111 :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-static {p1, v4, v1}, Lo1/b0;->e([III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SOUL"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    array-length v0, p1

    add-int/lit8 v0, v0, 0x2

    .line 4
    new-array v2, v0, [I

    const/16 v3, 0x2e

    .line 5
    aput v3, v2, v4

    const/4 v3, 0x1

    :goto_0
    add-int/lit8 v5, v0, -0x1

    if-ge v3, v5, :cond_0

    add-int/lit8 v5, v3, -0x1

    .line 6
    aget v5, p1, v5

    aput v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_0
    aput v4, v2, v5

    move v3, v4

    .line 8
    :goto_1
    array-length v6, p1

    if-ge v3, v6, :cond_1

    .line 9
    aget v6, v2, v5

    aget v7, p1, v3

    add-int/2addr v6, v7

    aput v6, v2, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 10
    :cond_1
    aget p1, v2, v5

    xor-int/lit16 p1, p1, 0xff

    aput p1, v2, v5

    .line 11
    new-array p1, v0, [B

    move v3, v4

    :goto_2
    if-ge v3, v0, :cond_2

    .line 12
    aget v5, v2, v3

    int-to-byte v5, v5

    aput-byte v5, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 13
    :cond_2
    invoke-static {p1}, Lz/k;->q([B)V

    .line 14
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v2

    sget-object v3, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WR OBD Update222222 ---->: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v4, v0}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WR OBD Update222222 ---->1 :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v4, v0}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final T2([B)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data.length  ==   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SOUL"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    array-length v0, p1

    add-int/lit8 v0, v0, 0x4

    new-array v2, v0, [B

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cmds.length  ==   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x2e

    const/4 v4, 0x0

    .line 4
    aput-byte v3, v2, v4

    const/16 v3, -0x1d

    const/4 v5, 0x1

    .line 5
    aput-byte v3, v2, v5

    const/4 v3, 0x2

    const/16 v6, -0x7e

    .line 6
    aput-byte v6, v2, v3

    const-string v3, "writeData  ==  1111111111 "

    .line 7
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 8
    :goto_0
    array-length v6, p1

    if-ge v3, v6, :cond_0

    const/4 v6, 0x3

    add-int/2addr v6, v3

    .line 9
    aget-byte v7, p1, v3

    aput-byte v7, v2, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "writeData  ==  2222222222 "

    .line 10
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v4

    :goto_1
    add-int/lit8 v3, v0, -0x1

    if-ge v5, v3, :cond_1

    .line 11
    aget-byte v3, v2, v5

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    add-int/2addr p1, v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const-string v5, "writeData  ==  333333333 "

    .line 12
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 13
    aput-byte p1, v2, v3

    const-string p1, "writeData  ==  4444444444 "

    .line 14
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-static {v2}, Lz/k;->q([B)V

    const-string p1, "writeData  ==  5555555 "

    .line 16
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    sget-object v1, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WR OBD Update ---->: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v4, v0}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 8

    const-string p2, "to large"

    const-string p3, "size == 0 or not 136*n"

    const-string v0, " mBlockConut="

    const-string v1, "size = "

    if-eqz p1, :cond_0

    goto/16 :goto_7

    :cond_0
    const-string p1, "SOUL"

    const-string v2, "C_UP_FILE_PATH"

    .line 1
    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lm0/n;->P2()V

    if-eqz p4, :cond_5

    .line 3
    array-length v2, p4

    if-lez v2, :cond_5

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 4
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    aget-object p4, p4, v6

    invoke-direct {v7, p4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    invoke-virtual {v7}, Ljava/io/InputStream;->available()I

    move-result p4

    iput p4, p0, Lm0/n;->l:I

    .line 6
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lm0/n;->l:I

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget p4, p0, Lm0/n;->l:I

    if-nez p4, :cond_1

    .line 8
    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    invoke-virtual {p1, p3}, Ln1/b;->s(Ljava/lang/String;)V

    new-array p1, v5, [I

    const/4 p2, 0x5

    aput p2, p1, v6

    .line 10
    invoke-static {v4, p1}, Lm0/d;->j(I[I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :try_start_2
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    :cond_1
    const/high16 p3, 0x200000

    if-le p4, p3, :cond_2

    .line 13
    :try_start_3
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    invoke-virtual {p1, p2}, Ln1/b;->s(Ljava/lang/String;)V

    new-array p1, v5, [I

    const/4 p2, 0x6

    aput p2, p1, v6

    .line 15
    invoke-static {v4, p1}, Lm0/d;->j(I[I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 16
    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void

    .line 18
    :cond_2
    :try_start_5
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p0, Lm0/n;->l:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ln1/b;->s(Ljava/lang/String;)V

    .line 19
    iget p2, p0, Lm0/n;->l:I

    div-int/lit16 p3, p2, 0x80

    iput p3, p0, Lm0/n;->g:I

    .line 20
    div-int/lit16 p2, p2, 0x80

    mul-int/lit16 p2, p2, 0x80

    iput p2, p0, Lm0/n;->f:I

    .line 21
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lm0/n;->l:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lm0/n;->g:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    iget p2, p0, Lm0/n;->f:I

    new-array p2, p2, [B

    iput-object p2, p0, Lm0/n;->e:[B

    .line 23
    invoke-virtual {v7, p2}, Ljava/io/InputStream;->read([B)I

    .line 24
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "read mBuffer = 11111111 === "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lm0/n;->l:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lm0/n;->g:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array p2, v3, [I

    const/16 p3, 0xe1

    aput p3, p2, v6

    aput v4, p2, v5

    .line 25
    iget p3, p0, Lm0/n;->g:I

    shr-int/lit8 p4, p3, 0x8

    and-int/lit16 p4, p4, 0xff

    aput p4, p2, v4

    const/4 p4, 0x3

    and-int/lit16 p3, p3, 0xff

    aput p3, p2, p4

    invoke-virtual {p0, p2}, Lm0/n;->S2([I)V

    .line 26
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "read mBuffer = 222222222 === "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lm0/n;->l:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lm0/n;->g:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mUpgradeStep = 11111111 === "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lm0/n;->b:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array p1, v5, [I

    const/16 p2, 0x64

    aput p2, p1, v6

    .line 28
    invoke-static {v5, p1}, Lm0/d;->j(I[I)V

    new-array p1, v5, [I

    .line 29
    iget p3, p0, Lm0/n;->g:I

    div-int/2addr p2, p3

    aput p2, p1, v6

    invoke-static {v6, p1}, Lm0/d;->j(I[I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 30
    :try_start_6
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 31
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 32
    :goto_2
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    const-string p2, "requestUpdate"

    invoke-virtual {p1, p2}, Ln1/b;->s(Ljava/lang/String;)V

    .line 33
    sput v6, Lm0/b;->e:I

    .line 34
    iput v6, p0, Lm0/n;->b:I

    .line 35
    iget-object p1, p0, Lm0/n;->o:Ljava/lang/Runnable;

    invoke-static {p1}, Lm0/d;->b(Ljava/lang/Runnable;)V

    goto :goto_7

    :catchall_0
    move-exception p1

    move-object v2, v7

    goto :goto_5

    :catch_3
    move-exception p1

    move-object v2, v7

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_4
    move-exception p1

    .line 36
    :goto_3
    :try_start_7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p2, "CAN"

    .line 37
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    const-string p2, "\u8bfb\u53d6\u6587\u4ef6\u5931\u8d25"

    invoke-virtual {p1, p2}, Ln1/b;->s(Ljava/lang/String;)V

    new-array p1, v5, [I

    aput v3, p1, v6

    .line 39
    invoke-static {v4, p1}, Lm0/d;->j(I[I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v2, :cond_3

    .line 40
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_4

    :catch_5
    move-exception p1

    .line 41
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_4
    return-void

    :goto_5
    if-eqz v2, :cond_4

    .line 42
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_6

    :catch_6
    move-exception p2

    .line 43
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 44
    :cond_4
    :goto_6
    throw p1

    :cond_5
    :goto_7
    return-void
.end method

.method public b([B)V
    .locals 6

    const-string v0, "SOUL"

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OBD Update Rcv--> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    invoke-static {p1, v1, v4}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    sget-object v2, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-static {p1, v1, v3}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v2, "data--> null1111111111111 "

    .line 3
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz p1, :cond_e

    .line 4
    array-length v0, p1

    if-gtz v0, :cond_1

    goto/16 :goto_8

    .line 5
    :cond_1
    iget v0, p0, Lm0/n;->i:I

    array-length v2, p1

    add-int/2addr v0, v2

    const/16 v2, 0x400

    if-le v0, v2, :cond_2

    .line 6
    iput v1, p0, Lm0/n;->i:I

    .line 7
    iput v1, p0, Lm0/n;->j:I

    .line 8
    iput v1, p0, Lm0/n;->k:I

    .line 9
    :cond_2
    iget-object v0, p0, Lm0/n;->h:[B

    iget v2, p0, Lm0/n;->i:I

    array-length v3, p1

    invoke-static {p1, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    iget v0, p0, Lm0/n;->i:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lm0/n;->i:I

    .line 11
    iget p1, p0, Lm0/n;->k:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_6

    if-lt p1, v0, :cond_3

    return-void

    .line 12
    :cond_3
    iget-object p1, p0, Lm0/n;->h:[B

    aget-byte p1, p1, v3

    move v0, v2

    .line 13
    :goto_1
    iget v4, p0, Lm0/n;->k:I

    if-ge v0, v4, :cond_4

    .line 14
    iget-object v4, p0, Lm0/n;->h:[B

    aget-byte v4, v4, v0

    add-int/2addr p1, v4

    int-to-byte p1, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    not-int p1, p1

    int-to-byte p1, p1

    .line 15
    iget-object v0, p0, Lm0/n;->h:[B

    aget-byte v5, v0, v4

    if-ne p1, v5, :cond_5

    sub-int/2addr v4, v3

    .line 16
    invoke-virtual {p0, v0, v3, v4}, Lm0/n;->Q2([BII)V

    .line 17
    iget p1, p0, Lm0/n;->k:I

    add-int/2addr p1, v3

    iput p1, p0, Lm0/n;->j:I

    goto :goto_2

    .line 18
    :cond_5
    iput v3, p0, Lm0/n;->j:I

    .line 19
    :goto_2
    iput v1, p0, Lm0/n;->k:I

    .line 20
    :cond_6
    iget p1, p0, Lm0/n;->i:I

    sub-int/2addr p1, v2

    :goto_3
    iget v0, p0, Lm0/n;->j:I

    if-ge v0, p1, :cond_c

    .line 21
    iget-object v2, p0, Lm0/n;->h:[B

    aget-byte v4, v2, v0

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_b

    add-int/lit8 v4, v0, 0x2

    .line 22
    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    iput v4, p0, Lm0/n;->k:I

    const/16 v5, 0x200

    if-le v4, v5, :cond_7

    .line 23
    iput v1, p0, Lm0/n;->k:I

    goto :goto_6

    :cond_7
    add-int/lit8 v5, v0, 0x3

    add-int/2addr v4, v5

    .line 24
    iput v4, p0, Lm0/n;->k:I

    .line 25
    iget v5, p0, Lm0/n;->i:I

    if-lt v4, v5, :cond_8

    sub-int/2addr v4, v0

    .line 26
    iput v4, p0, Lm0/n;->k:I

    goto :goto_7

    :cond_8
    add-int/lit8 v4, v0, 0x1

    .line 27
    aget-byte v2, v2, v4

    add-int/lit8 v0, v0, 0x2

    .line 28
    :goto_4
    iget v4, p0, Lm0/n;->k:I

    if-ge v0, v4, :cond_9

    .line 29
    iget-object v4, p0, Lm0/n;->h:[B

    aget-byte v4, v4, v0

    add-int/2addr v2, v4

    int-to-byte v2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_9
    not-int v0, v2

    int-to-byte v0, v0

    .line 30
    iget-object v2, p0, Lm0/n;->h:[B

    aget-byte v5, v2, v4

    if-ne v0, v5, :cond_a

    .line 31
    iget v0, p0, Lm0/n;->j:I

    add-int/lit8 v5, v0, 0x1

    sub-int/2addr v4, v0

    sub-int/2addr v4, v3

    invoke-virtual {p0, v2, v5, v4}, Lm0/n;->Q2([BII)V

    .line 32
    iget v0, p0, Lm0/n;->k:I

    iput v0, p0, Lm0/n;->j:I

    goto :goto_5

    .line 33
    :cond_a
    iget v0, p0, Lm0/n;->j:I

    add-int/2addr v0, v3

    iput v0, p0, Lm0/n;->j:I

    .line 34
    :goto_5
    iput v1, p0, Lm0/n;->k:I

    .line 35
    :cond_b
    :goto_6
    iget v0, p0, Lm0/n;->j:I

    add-int/2addr v0, v3

    iput v0, p0, Lm0/n;->j:I

    goto :goto_3

    :cond_c
    :goto_7
    if-eqz v0, :cond_e

    .line 36
    iget p1, p0, Lm0/n;->i:I

    sub-int/2addr p1, v0

    iput p1, p0, Lm0/n;->i:I

    if-lez p1, :cond_d

    .line 37
    iget-object v2, p0, Lm0/n;->h:[B

    invoke-static {v2, v0, v2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    :cond_d
    iput v1, p0, Lm0/n;->j:I

    :cond_e
    :goto_8
    return-void
.end method
