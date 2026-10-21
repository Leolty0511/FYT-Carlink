.class public Lm0/q$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lm0/q;


# direct methods
.method public constructor <init>(Lm0/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm0/q$a;->a:Lm0/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestCanCnt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lm0/q$a;->a:Lm0/q;

    invoke-static {v1}, Lm0/q;->N2(Lm0/q;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " reSendConut ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lm0/q$a;->a:Lm0/q;

    invoke-static {v1}, Lm0/q;->Q2(Lm0/q;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mUpgradeStep="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lm0/q$a;->a:Lm0/q;

    invoke-static {v1}, Lm0/q;->T2(Lm0/q;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAN"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lm0/q$a;->a:Lm0/q;

    invoke-static {v0}, Lm0/q;->T2(Lm0/q;)I

    move-result v0

    const/16 v2, 0xe3

    const/4 v3, -0x1

    const/4 v4, 0x2

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lm0/q$a;->a:Lm0/q;

    invoke-static {v0}, Lm0/q;->P2(Lm0/q;)I

    .line 4
    iget-object v0, p0, Lm0/q$a;->a:Lm0/q;

    invoke-static {v0}, Lm0/q;->N2(Lm0/q;)I

    move-result v0

    if-ne v0, v6, :cond_9

    .line 5
    iget-object v0, p0, Lm0/q$a;->a:Lm0/q;

    invoke-static {v0}, Lm0/q;->S2(Lm0/q;)I

    .line 6
    iget-object v0, p0, Lm0/q$a;->a:Lm0/q;

    invoke-static {v0}, Lm0/q;->Q2(Lm0/q;)I

    move-result v0

    if-ge v0, v6, :cond_0

    .line 7
    iget-object v0, p0, Lm0/q$a;->a:Lm0/q;

    invoke-static {v0}, Lm0/q;->V2(Lm0/q;)[B

    move-result-object v0

    const/16 v1, 0x801

    iget-object v3, p0, Lm0/q$a;->a:Lm0/q;

    invoke-static {v3}, Lm0/q;->W2(Lm0/q;)[B

    move-result-object v3

    const/16 v4, 0x40

    invoke-static {v0, v1, v3, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget-object v0, p0, Lm0/q$a;->a:Lm0/q;

    invoke-static {v0}, Lm0/q;->W2(Lm0/q;)[B

    move-result-object v1

    invoke-static {v0, v2, v1}, Lm0/q;->X2(Lm0/q;I[B)V

    goto :goto_0

    :cond_0
    new-array v0, v7, [I

    aput v5, v0, v8

    .line 9
    invoke-static {v4, v0}, Lm0/d;->j(I[I)V

    .line 10
    iget-object v0, p0, Lm0/q$a;->a:Lm0/q;

    invoke-static {v0, v8}, Lm0/q;->R2(Lm0/q;I)I

    .line 11
    iget-object v0, p0, Lm0/q$a;->a:Lm0/q;

    invoke-static {v0, v3}, Lm0/q;->U2(Lm0/q;I)I

    new-array v0, v5, [I

    .line 12
    fill-array-data v0, :array_0

    invoke-static {v0}, Lm0/q;->e3([I)V

    .line 13
    invoke-static {p0}, Lm0/d;->i(Ljava/lang/Runnable;)V

    .line 14
    :goto_0
    iget-object v0, p0, Lm0/q$a;->a:Lm0/q;

    invoke-static {v0, v8}, Lm0/q;->O2(Lm0/q;I)I

    goto/16 :goto_5

    .line 15
    :cond_1
    iget-object v0, p0, Lm0/q$a;->a:Lm0/q;

    invoke-static {v0}, Lm0/q;->T2(Lm0/q;)I

    move-result v0

    if-ne v0, v7, :cond_3

    .line 16
    iget-object v0, p0, Lm0/q$a;->a:Lm0/q;

    invoke-static {v0}, Lm0/q;->P2(Lm0/q;)I

    .line 17
    iget-object v0, p0, Lm0/q$a;->a:Lm0/q;

    invoke-static {v0}, Lm0/q;->N2(Lm0/q;)I

    move-result v0

    if-ne v0, v6, :cond_9

    .line 18
    iget-object v0, p0, Lm0/q$a;->a:Lm0/q;

    invoke-static {v0}, Lm0/q;->S2(Lm0/q;)I

    .line 19
    iget-object v0, p0, Lm0/q$a;->a:Lm0/q;

    invoke-static {v0}, Lm0/q;->Q2(Lm0/q;)I

    move-result v0

    if-ge v0, v6, :cond_2

    const-string v0, "resend 0xe4"

    .line 20
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v5, [I

    .line 21
    fill-array-data v0, :array_1

    invoke-static {v0}, Lm0/q;->e3([I)V

    goto :goto_1

    :cond_2
    new-array v0, v7, [I

    aput v5, v0, v8

    .line 22
    invoke-static {v4, v0}, Lm0/d;->j(I[I)V

    .line 23
    iget-object v0, p0, Lm0/q$a;->a:Lm0/q;

    invoke-static {v0, v8}, Lm0/q;->R2(Lm0/q;I)I

    .line 24
    iget-object v0, p0, Lm0/q$a;->a:Lm0/q;

    invoke-static {v0, v3}, Lm0/q;->U2(Lm0/q;I)I

    new-array v0, v5, [I

    .line 25
    fill-array-data v0, :array_2

    invoke-static {v0}, Lm0/q;->e3([I)V

    .line 26
    invoke-static {p0}, Lm0/d;->i(Ljava/lang/Runnable;)V

    .line 27
    :goto_1
    iget-object v0, p0, Lm0/q$a;->a:Lm0/q;

    invoke-static {v0, v8}, Lm0/q;->O2(Lm0/q;I)I

    goto/16 :goto_5

    .line 28
    :cond_3
    iget-object v0, p0, Lm0/q$a;->a:Lm0/q;

    invoke-static {v0}, Lm0/q;->T2(Lm0/q;)I

    move-result v0

    if-ne v0, v4, :cond_5

    .line 29
    iget-object v0, p0, Lm0/q$a;->a:Lm0/q;

    invoke-static {v0}, Lm0/q;->P2(Lm0/q;)I

    .line 30
    iget-object v0, p0, Lm0/q$a;->a:Lm0/q;

    invoke-static {v0}, Lm0/q;->N2(Lm0/q;)I

    move-result v0

    if-ne v0, v6, :cond_9

    .line 31
    iget-object v0, p0, Lm0/q$a;->a:Lm0/q;

    invoke-static {v0}, Lm0/q;->S2(Lm0/q;)I

    .line 32
    iget-object v0, p0, Lm0/q$a;->a:Lm0/q;

    invoke-static {v0}, Lm0/q;->Q2(Lm0/q;)I

    move-result v0

    if-ge v0, v6, :cond_4

    const-string v0, "resend 0xe5"

    .line 33
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x7

    new-array v0, v0, [I

    aput v2, v0, v8

    const/16 v1, 0xe5

    aput v1, v0, v7

    aput v5, v0, v4

    .line 34
    iget-object v1, p0, Lm0/q$a;->a:Lm0/q;

    invoke-static {v1}, Lm0/q;->Y2(Lm0/q;)I

    move-result v1

    sub-int/2addr v1, v7

    shr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, v6

    iget-object v1, p0, Lm0/q$a;->a:Lm0/q;

    invoke-static {v1}, Lm0/q;->Y2(Lm0/q;)I

    move-result v1

    sub-int/2addr v1, v7

    shr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, v5

    const/4 v1, 0x5

    iget-object v2, p0, Lm0/q$a;->a:Lm0/q;

    .line 35
    invoke-static {v2}, Lm0/q;->Y2(Lm0/q;)I

    move-result v2

    sub-int/2addr v2, v7

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    aput v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lm0/q$a;->a:Lm0/q;

    invoke-static {v2}, Lm0/q;->Y2(Lm0/q;)I

    move-result v2

    sub-int/2addr v2, v7

    and-int/lit16 v2, v2, 0xff

    aput v2, v0, v1

    .line 36
    invoke-static {v0}, Lm0/q;->e3([I)V

    goto :goto_2

    :cond_4
    new-array v0, v7, [I

    aput v5, v0, v8

    .line 37
    invoke-static {v4, v0}, Lm0/d;->j(I[I)V

    .line 38
    iget-object v0, p0, Lm0/q$a;->a:Lm0/q;

    invoke-static {v0, v8}, Lm0/q;->R2(Lm0/q;I)I

    .line 39
    iget-object v0, p0, Lm0/q$a;->a:Lm0/q;

    invoke-static {v0, v3}, Lm0/q;->U2(Lm0/q;I)I

    .line 40
    invoke-static {p0}, Lm0/d;->i(Ljava/lang/Runnable;)V

    .line 41
    :goto_2
    iget-object v0, p0, Lm0/q$a;->a:Lm0/q;

    invoke-static {v0, v8}, Lm0/q;->O2(Lm0/q;I)I

    goto/16 :goto_5

    .line 42
    :cond_5
    iget-object v0, p0, Lm0/q$a;->a:Lm0/q;

    invoke-static {v0}, Lm0/q;->T2(Lm0/q;)I

    move-result v0

    const/16 v1, 0xe6

    const/16 v2, 0x80

    if-ne v0, v6, :cond_7

    .line 43
    iget-object v0, p0, Lm0/q$a;->a:Lm0/q;

    invoke-static {v0}, Lm0/q;->P2(Lm0/q;)I

    .line 44
    iget-object v0, p0, Lm0/q$a;->a:Lm0/q;

    invoke-static {v0}, Lm0/q;->N2(Lm0/q;)I

    move-result v0

    if-ne v0, v6, :cond_9

    .line 45
    iget-object v0, p0, Lm0/q$a;->a:Lm0/q;

    invoke-static {v0}, Lm0/q;->S2(Lm0/q;)I

    .line 46
    iget-object v0, p0, Lm0/q$a;->a:Lm0/q;

    invoke-static {v0}, Lm0/q;->Q2(Lm0/q;)I

    move-result v0

    if-ge v0, v6, :cond_6

    .line 47
    iget-object v0, p0, Lm0/q$a;->a:Lm0/q;

    invoke-static {v0}, Lm0/q;->V2(Lm0/q;)[B

    move-result-object v0

    iget-object v3, p0, Lm0/q$a;->a:Lm0/q;

    invoke-static {v3}, Lm0/q;->Z2(Lm0/q;)[B

    move-result-object v3

    invoke-static {v0, v7, v3, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    iget-object v0, p0, Lm0/q$a;->a:Lm0/q;

    invoke-static {v0}, Lm0/q;->Z2(Lm0/q;)[B

    move-result-object v2

    invoke-static {v0, v1, v8, v2}, Lm0/q;->a3(Lm0/q;II[B)V

    goto :goto_3

    :cond_6
    new-array v0, v7, [I

    aput v5, v0, v8

    .line 49
    invoke-static {v4, v0}, Lm0/d;->j(I[I)V

    .line 50
    iget-object v0, p0, Lm0/q$a;->a:Lm0/q;

    invoke-static {v0, v8}, Lm0/q;->R2(Lm0/q;I)I

    .line 51
    iget-object v0, p0, Lm0/q$a;->a:Lm0/q;

    invoke-static {v0, v3}, Lm0/q;->U2(Lm0/q;I)I

    .line 52
    invoke-static {p0}, Lm0/d;->i(Ljava/lang/Runnable;)V

    .line 53
    :goto_3
    iget-object v0, p0, Lm0/q$a;->a:Lm0/q;

    invoke-static {v0, v8}, Lm0/q;->O2(Lm0/q;I)I

    goto :goto_5

    .line 54
    :cond_7
    iget-object v0, p0, Lm0/q$a;->a:Lm0/q;

    invoke-static {v0}, Lm0/q;->T2(Lm0/q;)I

    move-result v0

    if-ne v0, v5, :cond_9

    .line 55
    iget-object v0, p0, Lm0/q$a;->a:Lm0/q;

    invoke-static {v0}, Lm0/q;->P2(Lm0/q;)I

    .line 56
    iget-object v0, p0, Lm0/q$a;->a:Lm0/q;

    invoke-static {v0}, Lm0/q;->N2(Lm0/q;)I

    move-result v0

    if-ne v0, v6, :cond_9

    .line 57
    iget-object v0, p0, Lm0/q$a;->a:Lm0/q;

    invoke-static {v0}, Lm0/q;->S2(Lm0/q;)I

    .line 58
    iget-object v0, p0, Lm0/q$a;->a:Lm0/q;

    invoke-static {v0}, Lm0/q;->Q2(Lm0/q;)I

    move-result v0

    if-ge v0, v6, :cond_8

    .line 59
    iget-object v0, p0, Lm0/q$a;->a:Lm0/q;

    invoke-static {v0}, Lm0/q;->V2(Lm0/q;)[B

    move-result-object v0

    iget-object v3, p0, Lm0/q$a;->a:Lm0/q;

    invoke-static {v3}, Lm0/q;->b3(Lm0/q;)I

    move-result v3

    add-int/2addr v3, v7

    iget-object v4, p0, Lm0/q$a;->a:Lm0/q;

    invoke-static {v4}, Lm0/q;->Z2(Lm0/q;)[B

    move-result-object v4

    invoke-static {v0, v3, v4, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    iget-object v0, p0, Lm0/q$a;->a:Lm0/q;

    invoke-static {v0}, Lm0/q;->b3(Lm0/q;)I

    move-result v2

    iget-object v3, p0, Lm0/q$a;->a:Lm0/q;

    invoke-static {v3}, Lm0/q;->Z2(Lm0/q;)[B

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lm0/q;->a3(Lm0/q;II[B)V

    goto :goto_4

    :cond_8
    new-array v0, v7, [I

    aput v5, v0, v8

    .line 61
    invoke-static {v4, v0}, Lm0/d;->j(I[I)V

    .line 62
    iget-object v0, p0, Lm0/q$a;->a:Lm0/q;

    invoke-static {v0, v8}, Lm0/q;->R2(Lm0/q;I)I

    .line 63
    iget-object v0, p0, Lm0/q$a;->a:Lm0/q;

    invoke-static {v0, v3}, Lm0/q;->U2(Lm0/q;I)I

    .line 64
    invoke-static {p0}, Lm0/d;->i(Ljava/lang/Runnable;)V

    .line 65
    :goto_4
    iget-object v0, p0, Lm0/q$a;->a:Lm0/q;

    invoke-static {v0, v8}, Lm0/q;->O2(Lm0/q;I)I

    :cond_9
    :goto_5
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0xe7
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xe4
        0x1
        0x1
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0xe7
        0x1
        0x1
    .end array-data
.end method
