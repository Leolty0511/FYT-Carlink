.class public Lm0/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lm0/i;


# direct methods
.method public constructor <init>(Lm0/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm0/i$a;->a:Lm0/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mRequestUpgradeMode  mUpgradeStep == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lm0/i$a;->a:Lm0/i;

    invoke-static {v2}, Lm0/i;->N2(Lm0/i;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CAN"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lm0/i$a;->a:Lm0/i;

    invoke-static {v1}, Lm0/i;->N2(Lm0/i;)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln1/b;->s(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lm0/i$a;->a:Lm0/i;

    invoke-static {v0}, Lm0/i;->N2(Lm0/i;)I

    move-result v0

    const/4 v1, 0x6

    const/16 v3, 0x2e

    const v4, 0xdb01c7

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x4

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lm0/i$a;->a:Lm0/i;

    invoke-static {v0}, Lm0/i;->R2(Lm0/i;)I

    .line 5
    iget-object v0, p0, Lm0/i$a;->a:Lm0/i;

    invoke-static {v0}, Lm0/i;->P2(Lm0/i;)I

    move-result v0

    if-ne v0, v10, :cond_0

    .line 6
    iget-object v0, p0, Lm0/i$a;->a:Lm0/i;

    invoke-static {v0, v6}, Lm0/i;->Q2(Lm0/i;I)I

    .line 7
    iget-object v0, p0, Lm0/i$a;->a:Lm0/i;

    invoke-static {v0}, Lm0/i;->S2(Lm0/i;)V

    goto/16 :goto_3

    .line 8
    :cond_0
    sget v0, Lk0/nt;->a:I

    if-ne v0, v4, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    sget-object v0, Ll0/z;->a:Ll0/a;

    const/4 v4, 0x7

    new-array v4, v4, [I

    aput v3, v4, v6

    const/16 v3, 0xe1

    aput v3, v4, v7

    aput v10, v4, v9

    iget-object v3, p0, Lm0/i$a;->a:Lm0/i;

    invoke-static {v3}, Lm0/i;->T2(Lm0/i;)[B

    move-result-object v3

    iget-object v6, p0, Lm0/i$a;->a:Lm0/i;

    invoke-static {v6}, Lm0/i;->U2(Lm0/i;)I

    move-result v6

    sub-int/2addr v6, v10

    aget-byte v3, v3, v6

    aput v3, v4, v8

    iget-object v3, p0, Lm0/i$a;->a:Lm0/i;

    invoke-static {v3}, Lm0/i;->T2(Lm0/i;)[B

    move-result-object v3

    iget-object v6, p0, Lm0/i$a;->a:Lm0/i;

    invoke-static {v6}, Lm0/i;->U2(Lm0/i;)I

    move-result v6

    sub-int/2addr v6, v8

    aget-byte v3, v3, v6

    aput v3, v4, v10

    iget-object v3, p0, Lm0/i$a;->a:Lm0/i;

    invoke-static {v3}, Lm0/i;->T2(Lm0/i;)[B

    move-result-object v3

    iget-object v6, p0, Lm0/i$a;->a:Lm0/i;

    invoke-static {v6}, Lm0/i;->U2(Lm0/i;)I

    move-result v6

    sub-int/2addr v6, v9

    aget-byte v3, v3, v6

    aput v3, v4, v5

    iget-object v3, p0, Lm0/i$a;->a:Lm0/i;

    invoke-static {v3}, Lm0/i;->T2(Lm0/i;)[B

    move-result-object v3

    iget-object v5, p0, Lm0/i$a;->a:Lm0/i;

    invoke-static {v5}, Lm0/i;->U2(Lm0/i;)I

    move-result v5

    sub-int/2addr v5, v7

    aget-byte v3, v3, v5

    aput v3, v4, v1

    invoke-virtual {v0, v4}, Ll0/a;->f([I)V

    :goto_0
    const-wide/16 v0, 0x14

    .line 10
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v0, "sleep exception"

    .line 11
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const-string v0, " 11111111111111111111 update mRequestUpgradeMode"

    .line 12
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    const-string v1, "\u8bf7\u6c42\u8fdb\u5165CAN\u76d2\u81ea\u8eab\u7684\u5347\u7ea7\u6a21\u5f0f"

    invoke-virtual {v0, v1}, Ln1/b;->s(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 14
    :cond_2
    iget-object v0, p0, Lm0/i$a;->a:Lm0/i;

    invoke-static {v0}, Lm0/i;->N2(Lm0/i;)I

    move-result v0

    if-ne v0, v7, :cond_4

    .line 15
    iget-object v0, p0, Lm0/i$a;->a:Lm0/i;

    invoke-static {v0}, Lm0/i;->U2(Lm0/i;)I

    move-result v0

    sub-int/2addr v0, v10

    div-int/lit16 v0, v0, 0x80

    new-array v11, v5, [B

    const/16 v12, -0x1d

    aput-byte v12, v11, v6

    const/16 v12, -0x1b

    aput-byte v12, v11, v7

    aput-byte v9, v11, v9

    shr-int/lit8 v13, v0, 0x8

    int-to-byte v13, v13

    aput-byte v13, v11, v8

    and-int/lit16 v13, v0, 0xff

    int-to-byte v13, v13

    aput-byte v13, v11, v10

    .line 16
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "block ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    sget v0, Lk0/nt;->a:I

    if-ne v0, v4, :cond_3

    const-wide/16 v13, 0x1f4

    .line 18
    :try_start_1
    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 19
    :catch_1
    aget-byte v0, v11, v8

    add-int/lit16 v0, v0, 0xe7

    aget-byte v2, v11, v10

    add-int/2addr v0, v2

    and-int/lit16 v0, v0, 0xff

    xor-int/lit16 v0, v0, 0xff

    new-array v1, v1, [B

    aput-byte v3, v1, v6

    aput-byte v12, v1, v7

    aput-byte v9, v1, v9

    .line 20
    aget-byte v2, v11, v8

    aput-byte v2, v1, v8

    aget-byte v2, v11, v10

    aput-byte v2, v1, v10

    int-to-byte v0, v0

    aput-byte v0, v1, v5

    invoke-static {v1}, Lz/k;->q([B)V

    goto :goto_2

    .line 21
    :cond_3
    sget-object v0, Ll0/z;->a:Ll0/a;

    invoke-static {v11}, Lo1/s0;->e([B)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Ll0/a;->f([I)V

    .line 22
    :goto_2
    iget-object v0, p0, Lm0/i$a;->a:Lm0/i;

    invoke-static {v0, v9}, Lm0/i;->O2(Lm0/i;I)I

    goto :goto_3

    .line 23
    :cond_4
    invoke-static {p0}, Lm0/d;->i(Ljava/lang/Runnable;)V

    :goto_3
    return-void
.end method
