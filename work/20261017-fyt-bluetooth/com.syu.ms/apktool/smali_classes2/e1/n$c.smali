.class public Le1/n$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le1/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le1/n;


# direct methods
.method public constructor <init>(Le1/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le1/n$c;->a:Le1/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    sget-boolean v1, Le1/a;->c:Z

    const-string v2, "sys.fyt.video.debug"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_11

    .line 2
    sget-boolean v1, Le1/n;->t:Z

    if-nez v1, :cond_0

    .line 3
    iget-object v1, v0, Le1/n$c;->a:Le1/n;

    sget v2, Le1/n;->s:I

    invoke-virtual {v1, v2}, Le1/n;->c(I)V

    return-void

    .line 4
    :cond_0
    iget-object v1, v0, Le1/n$c;->a:Le1/n;

    invoke-static {v1}, Le1/n;->p(Le1/n;)I

    move-result v1

    const-string v5, "sys.fyt.camera_type"

    const/4 v6, -0x1

    if-eqz v1, :cond_c

    .line 5
    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-wide/16 v7, 0x64

    if-ne v1, v6, :cond_1

    const-wide/16 v9, 0x1f4

    .line 6
    invoke-static {v9, v10}, La/i;->a0(J)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {v7, v8}, La/i;->a0(J)V

    .line 8
    :goto_0
    invoke-static {}, Le1/n;->q()Z

    move-result v1

    if-nez v1, :cond_3

    .line 9
    iget-object v1, v0, Le1/n$c;->a:Le1/n;

    invoke-static {v1}, Le1/n;->s(Le1/n;)I

    move-result v1

    if-ne v1, v6, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    iget-object v9, v0, Le1/n$c;->a:Le1/n;

    invoke-static {v9, v1}, Le1/n;->t(Le1/n;I)V

    goto :goto_1

    :cond_3
    move v1, v6

    .line 11
    :goto_1
    iget-object v9, v0, Le1/n$c;->a:Le1/n;

    invoke-static {v9}, Le1/n;->u(Le1/n;)Z

    move-result v9

    if-eqz v9, :cond_4

    move v7, v6

    move v6, v4

    goto/16 :goto_8

    .line 12
    :cond_4
    iget-object v9, v0, Le1/n$c;->a:Le1/n;

    invoke-static {v9}, Le1/n;->v(Le1/n;)Z

    move-result v9

    if-eqz v9, :cond_b

    iget-object v9, v0, Le1/n$c;->a:Le1/n;

    invoke-static {v9}, Le1/n;->w(Le1/n;)Z

    move-result v9

    if-nez v9, :cond_b

    const-string v9, "%02X "

    const/4 v10, 0x3

    const/4 v11, -0x2

    const/16 v12, 0x31

    if-nez v1, :cond_7

    const/16 v13, 0xbb

    :goto_2
    if-ge v11, v10, :cond_b

    .line 13
    iget-object v14, v0, Le1/n$c;->a:Le1/n;

    sget v15, Le1/n;->r:I

    add-int v6, v13, v11

    invoke-static {v14, v15, v12, v6}, Le1/n;->x(Le1/n;III)I

    .line 14
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "NTSC writeReg0X31 = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v15, v4, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v15, v3

    invoke-static {v9, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lu0/d;->Z3(Ljava/lang/String;)V

    .line 15
    invoke-static {v7, v8}, La/i;->a0(J)V

    .line 16
    iget-object v14, v0, Le1/n$c;->a:Le1/n;

    invoke-static {v14}, Le1/n;->w(Le1/n;)Z

    move-result v14

    if-eqz v14, :cond_6

    move v7, v3

    .line 17
    :goto_3
    iget-object v8, v0, Le1/n$c;->a:Le1/n;

    invoke-static {v8}, Le1/n;->m(Le1/n;)[I

    move-result-object v8

    array-length v8, v8

    if-ge v11, v8, :cond_9

    .line 18
    iget-object v8, v0, Le1/n$c;->a:Le1/n;

    invoke-static {v8}, Le1/n;->m(Le1/n;)[I

    move-result-object v8

    aget v8, v8, v7

    if-ne v8, v12, :cond_5

    .line 19
    iget-object v8, v0, Le1/n$c;->a:Le1/n;

    invoke-static {v8}, Le1/n;->m(Le1/n;)[I

    move-result-object v8

    add-int/2addr v7, v4

    aput v6, v8, v7

    goto :goto_6

    :cond_5
    add-int/lit8 v7, v7, 0x2

    goto :goto_3

    :cond_6
    add-int/lit8 v11, v11, 0x1

    const/4 v6, -0x1

    goto :goto_2

    :cond_7
    if-ne v1, v4, :cond_b

    const/16 v6, 0x4a

    :goto_4
    if-ge v11, v10, :cond_b

    .line 20
    iget-object v13, v0, Le1/n$c;->a:Le1/n;

    sget v14, Le1/n;->r:I

    add-int v15, v6, v11

    invoke-static {v13, v14, v12, v15}, Le1/n;->x(Le1/n;III)I

    .line 21
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "PAL writeReg0X31 = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v14, v4, [Ljava/lang/Object;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v3

    invoke-static {v9, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lu0/d;->Z3(Ljava/lang/String;)V

    .line 22
    invoke-static {v7, v8}, La/i;->a0(J)V

    .line 23
    iget-object v13, v0, Le1/n$c;->a:Le1/n;

    invoke-static {v13}, Le1/n;->w(Le1/n;)Z

    move-result v13

    if-eqz v13, :cond_a

    move v6, v3

    .line 24
    :goto_5
    iget-object v7, v0, Le1/n$c;->a:Le1/n;

    invoke-static {v7}, Le1/n;->n(Le1/n;)[I

    move-result-object v7

    array-length v7, v7

    if-ge v11, v7, :cond_9

    .line 25
    iget-object v7, v0, Le1/n$c;->a:Le1/n;

    invoke-static {v7}, Le1/n;->n(Le1/n;)[I

    move-result-object v7

    aget v7, v7, v6

    if-ne v7, v12, :cond_8

    .line 26
    iget-object v7, v0, Le1/n$c;->a:Le1/n;

    invoke-static {v7}, Le1/n;->n(Le1/n;)[I

    move-result-object v7

    add-int/2addr v6, v4

    aput v15, v7, v6

    goto :goto_6

    :cond_8
    add-int/lit8 v6, v6, 0x2

    goto :goto_5

    :cond_9
    :goto_6
    move v6, v4

    goto :goto_7

    :cond_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_b
    move v6, v3

    goto :goto_7

    :cond_c
    move v6, v3

    const/4 v1, -0x1

    :goto_7
    const/4 v7, -0x1

    :goto_8
    if-eq v1, v7, :cond_e

    if-eqz v1, :cond_e

    if-eq v1, v4, :cond_e

    .line 27
    invoke-static {}, Lg/e;->e()I

    move-result v7

    const/16 v8, 0x1e

    if-eq v7, v8, :cond_d

    .line 28
    invoke-static {}, Lg/e;->e()I

    move-result v7

    const/16 v9, 0x1f

    if-eq v7, v9, :cond_d

    .line 29
    invoke-static {}, Lg/e;->e()I

    move-result v7

    const/16 v9, 0x20

    if-eq v7, v9, :cond_d

    .line 30
    invoke-static {}, Lg/e;->e()I

    move-result v7

    const/16 v9, 0x21

    if-eq v7, v9, :cond_d

    .line 31
    invoke-static {}, Lg/e;->e()I

    move-result v7

    if-eq v7, v8, :cond_d

    .line 32
    invoke-static {}, Lg/e;->e()I

    move-result v7

    const/16 v8, 0x22

    if-eq v7, v8, :cond_d

    .line 33
    invoke-static {}, Lg/e;->e()I

    move-result v7

    const/16 v8, 0x23

    if-eq v7, v8, :cond_d

    .line 34
    invoke-static {}, Lg/e;->e()I

    move-result v7

    const/16 v8, 0x24

    if-eq v7, v8, :cond_d

    .line 35
    invoke-static {}, Lg/e;->e()I

    move-result v7

    const/16 v8, 0x25

    if-ne v7, v8, :cond_e

    :cond_d
    move v6, v3

    :cond_e
    if-ne v6, v4, :cond_f

    .line 36
    sget v7, Le1/n;->s:I

    if-ne v7, v4, :cond_f

    const/4 v7, -0x1

    .line 37
    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v7, :cond_f

    if-eq v1, v7, :cond_f

    .line 38
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    if-ne v6, v4, :cond_10

    move v1, v4

    goto :goto_9

    :cond_10
    move v1, v3

    .line 39
    :goto_9
    invoke-static {v1}, Le1/n;->r(Z)Z

    .line 40
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_12

    .line 41
    invoke-static {v6}, Lu0/d;->o3(I)V

    .line 42
    iget-object v1, v0, Le1/n$c;->a:Le1/n;

    invoke-static {v1, v6}, Le1/n;->o(Le1/n;I)V

    goto :goto_a

    .line 43
    :cond_11
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_12

    .line 44
    invoke-static {v3}, Le1/n;->r(Z)Z

    .line 45
    invoke-static {v3}, Lu0/d;->o3(I)V

    .line 46
    iget-object v1, v0, Le1/n$c;->a:Le1/n;

    invoke-static {v1, v3}, Le1/n;->o(Le1/n;I)V

    .line 47
    :cond_12
    :goto_a
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 48
    invoke-static {v3}, Le1/n;->r(Z)Z

    .line 49
    invoke-static {v4}, Lu0/d;->o3(I)V

    :cond_13
    return-void
.end method
