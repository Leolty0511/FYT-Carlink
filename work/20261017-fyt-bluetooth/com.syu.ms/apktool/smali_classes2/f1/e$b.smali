.class public Lf1/e$b;
.super Lf1/s$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf1/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf1/e$b$a;,
        Lf1/e$b$b;
    }
.end annotation


# instance fields
.field public final synthetic A:Lf1/e;

.field public n:I

.field public o:Z

.field public p:I

.field public q:I

.field public r:I

.field public s:Z

.field public t:I

.field public u:I

.field public v:I

.field public w:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lf1/e$b$b;",
            ">;"
        }
    .end annotation
.end field

.field public x:Landroid/util/SparseIntArray;

.field public y:Lf1/e$b$a;

.field public z:Lo1/k0;


# direct methods
.method public constructor <init>(Lf1/e;I)V
    .locals 1

    .line 1
    iput-object p1, p0, Lf1/e$b;->A:Lf1/e;

    invoke-direct {p0, p1}, Lf1/s$a;-><init>(Lf1/s;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lf1/e$b;->n:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lf1/e$b;->o:Z

    .line 4
    iput v0, p0, Lf1/e$b;->p:I

    .line 5
    iput p1, p0, Lf1/e$b;->q:I

    .line 6
    iput v0, p0, Lf1/e$b;->r:I

    .line 7
    iput-boolean v0, p0, Lf1/e$b;->s:Z

    .line 8
    iput v0, p0, Lf1/e$b;->t:I

    .line 9
    iput v0, p0, Lf1/e$b;->u:I

    const/4 p1, 0x3

    .line 10
    iput p1, p0, Lf1/e$b;->v:I

    .line 11
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lf1/e$b;->w:Landroid/util/SparseArray;

    .line 12
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lf1/e$b;->x:Landroid/util/SparseIntArray;

    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lf1/e$b;->y:Lf1/e$b$a;

    .line 14
    new-instance p1, Lo1/k0;

    invoke-direct {p1}, Lo1/k0;-><init>()V

    iput-object p1, p0, Lf1/e$b;->z:Lo1/k0;

    .line 15
    iput p2, p0, Lf1/s$a;->c:I

    .line 16
    iput p2, p0, Lf1/s$a;->b:I

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lf1/s$a;->k(Z)V

    const/4 v1, -0x1

    .line 2
    iput v1, p0, Lf1/s$a;->h:I

    .line 3
    iput-boolean v0, p0, Lf1/s$a;->l:Z

    .line 4
    invoke-virtual {p0}, Lf1/s$a;->o()V

    .line 5
    invoke-virtual {p0}, Lf1/s$a;->n()V

    return-void
.end method

.method public c()Z
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Lf1/s$a;->c:I

    const/4 v2, 0x0

    if-gez v1, :cond_0

    return v2

    .line 2
    :cond_0
    iget v1, v0, Lf1/e$b;->r:I

    const/4 v3, 0x1

    if-nez v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    .line 3
    :goto_0
    iget v4, v0, Lf1/s$a;->h:I

    const/4 v5, 0x2

    if-eqz v4, :cond_d

    if-eq v4, v3, :cond_c

    const-string v6, "AHD"

    const-string v7, "TVI"

    if-eq v4, v5, :cond_9

    const/4 v8, 0x3

    if-eq v4, v8, :cond_6

    const/4 v6, 0x6

    if-eq v4, v6, :cond_4

    const/4 v6, 0x7

    if-eq v4, v6, :cond_2

    const-string v1, "VIDEO_UNKNOW"

    move-object v4, v1

    move v1, v2

    move v6, v1

    move v7, v6

    goto/16 :goto_a

    :cond_2
    if-eqz v1, :cond_3

    const v1, 0x7f030077

    goto :goto_1

    :cond_3
    const v1, 0x7f03007f

    :goto_1
    const-string v4, "VIDEO_NP_R1080P30"

    goto :goto_3

    :cond_4
    if-eqz v1, :cond_5

    const v1, 0x7f030076

    goto :goto_2

    :cond_5
    const v1, 0x7f03007e

    :goto_2
    const-string v4, "VIDEO_NP_R1080P25"

    :goto_3
    move v7, v2

    move v6, v3

    goto :goto_a

    :cond_6
    if-eqz v1, :cond_7

    const v4, 0x7f030079

    goto :goto_4

    :cond_7
    const v4, 0x7f030081

    .line 4
    :goto_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "VIDEO_NP_R720P30_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_8

    goto :goto_5

    :cond_8
    move-object v6, v7

    :goto_5
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_9
    if-eqz v1, :cond_a

    const v4, 0x7f030078

    goto :goto_6

    :cond_a
    const v4, 0x7f030080

    .line 5
    :goto_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "VIDEO_NP_R720P25_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_b

    goto :goto_7

    :cond_b
    move-object v6, v7

    :goto_7
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_8
    move v6, v2

    move v7, v6

    move/from16 v16, v4

    move-object v4, v1

    move/from16 v1, v16

    goto :goto_a

    :cond_c
    const v1, 0x7f03007b

    const-string v4, "VIDEO_NP_PAL"

    goto :goto_9

    :cond_d
    const v1, 0x7f03007a

    const-string v4, "VIDEO_NP_NTSC"

    :goto_9
    move v6, v2

    move v7, v3

    :goto_a
    if-nez v1, :cond_e

    return v2

    .line 6
    :cond_e
    iget-object v8, v0, Lf1/e$b;->A:Lf1/e;

    iget-object v8, v8, Lf1/q;->u:Lp1/a;

    invoke-interface {v8}, Lp1/a;->getPath()Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x1

    .line 7
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v11, v3

    invoke-virtual {v8, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_b

    :catch_0
    move v10, v9

    :goto_b
    const-string v11, "lockhandle"

    if-ltz v10, :cond_f

    const/16 v9, 0xf9

    const-string v12, "i2cindex"

    .line 8
    invoke-static {v9, v12, v10, v11}, Lcom/syu/jni/ToolsJni;->callSystemCtrl(ILjava/lang/String;ILjava/lang/String;)I

    move-result v9

    .line 9
    :cond_f
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "i2cName : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " i2cIndex:"

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " lockRet:"

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v10, "lseccamm"

    invoke-static {v10, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "flush START: vChannel : "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v0, Lf1/s$a;->c:I

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " videoFormat:"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " hasSignal:"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v13, v0, Lf1/s$a;->l:Z

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object v8, v0, Lf1/e$b;->A:Lf1/e;

    new-array v13, v5, [I

    const/16 v14, 0x40

    aput v14, v13, v2

    iget v14, v0, Lf1/s$a;->c:I

    aput v14, v13, v3

    invoke-virtual {v8, v13}, Lf1/s;->Z([I)Z

    move-result v8

    if-eqz v8, :cond_10

    move v8, v3

    goto :goto_c

    :cond_10
    move v8, v2

    :goto_c
    if-eqz v8, :cond_11

    .line 12
    iget-object v8, v0, Lf1/e$b;->A:Lf1/e;

    new-array v13, v5, [I

    fill-array-data v13, :array_0

    invoke-virtual {v8, v13}, Lf1/s;->Z([I)Z

    move-result v8

    if-eqz v8, :cond_11

    move v8, v3

    goto :goto_d

    :cond_11
    move v8, v2

    :goto_d
    const/16 v13, 0x10

    if-eqz v8, :cond_12

    .line 13
    iget-object v8, v0, Lf1/e$b;->A:Lf1/e;

    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v14

    invoke-static {v14, v1, v13}, Lo1/s0;->A(Landroid/content/Context;II)[I

    move-result-object v1

    invoke-virtual {v8, v1}, Lf1/s;->q([I)Z

    move-result v1

    if-eqz v1, :cond_12

    move v1, v3

    goto :goto_e

    :cond_12
    move v1, v2

    :goto_e
    if-eqz v1, :cond_13

    .line 14
    iget-object v1, v0, Lf1/e$b;->A:Lf1/e;

    new-array v8, v5, [I

    fill-array-data v8, :array_1

    invoke-virtual {v1, v8}, Lf1/s;->Z([I)Z

    move-result v1

    if-eqz v1, :cond_13

    move v1, v3

    goto :goto_f

    :cond_13
    move v1, v2

    .line 15
    :goto_f
    iget-object v8, v0, Lf1/e$b;->A:Lf1/e;

    const/16 v14, 0x42

    invoke-virtual {v8, v14}, Lf1/q;->A(I)I

    move-result v8

    and-int/lit8 v15, v8, 0x1

    shr-int/2addr v8, v3

    and-int/2addr v8, v3

    .line 16
    iget v13, v0, Lf1/s$a;->c:I

    sget v2, Lf1/q;->L:I

    if-ne v13, v2, :cond_14

    xor-int/lit8 v15, v6, 0x1

    goto :goto_10

    .line 17
    :cond_14
    sget v2, Lf1/q;->M:I

    if-ne v13, v2, :cond_15

    xor-int/lit8 v8, v6, 0x1

    :cond_15
    :goto_10
    if-eqz v1, :cond_16

    .line 18
    iget-object v1, v0, Lf1/e$b;->A:Lf1/e;

    new-array v2, v5, [I

    const/4 v6, 0x0

    aput v14, v2, v6

    shl-int/lit8 v6, v8, 0x1

    or-int/lit16 v6, v6, 0xf0

    or-int/2addr v6, v15

    aput v6, v2, v3

    invoke-virtual {v1, v2}, Lf1/s;->Z([I)Z

    move-result v1

    if-eqz v1, :cond_16

    move v1, v3

    goto :goto_11

    :cond_16
    const/4 v1, 0x0

    :goto_11
    if-eqz v1, :cond_17

    .line 19
    iget-object v1, v0, Lf1/e$b;->A:Lf1/e;

    new-array v2, v5, [I

    fill-array-data v2, :array_2

    invoke-virtual {v1, v2}, Lf1/s;->Z([I)Z

    move-result v1

    if-eqz v1, :cond_17

    move v1, v3

    goto :goto_12

    :cond_17
    const/4 v1, 0x0

    :goto_12
    if-eqz v1, :cond_18

    .line 20
    iget-object v1, v0, Lf1/e$b;->A:Lf1/e;

    new-array v2, v5, [I

    fill-array-data v2, :array_3

    invoke-virtual {v1, v2}, Lf1/s;->Z([I)Z

    move-result v1

    if-eqz v1, :cond_18

    move v1, v3

    goto :goto_13

    :cond_18
    const/4 v1, 0x0

    .line 21
    :goto_13
    iget-object v2, v0, Lf1/e$b;->A:Lf1/e;

    const/16 v6, 0x22

    invoke-virtual {v2, v6}, Lf1/q;->A(I)I

    move-result v2

    shr-int/lit8 v8, v2, 0x1

    and-int/2addr v8, v3

    and-int/2addr v2, v3

    const/16 v13, 0xe

    .line 22
    invoke-static {v13}, Lg/f;->n(I)Z

    move-result v14

    if-nez v14, :cond_1b

    .line 23
    iget v14, v0, Lf1/s$a;->c:I

    sget v15, Lf1/q;->L:I

    if-ne v14, v15, :cond_19

    move v2, v7

    goto :goto_14

    .line 24
    :cond_19
    sget v15, Lf1/q;->M:I

    if-ne v14, v15, :cond_1a

    goto :goto_15

    :cond_1a
    :goto_14
    move v7, v8

    goto :goto_15

    :cond_1b
    const/4 v2, 0x0

    const/4 v7, 0x0

    :goto_15
    if-eqz v1, :cond_1c

    .line 25
    iget-object v1, v0, Lf1/e$b;->A:Lf1/e;

    new-array v5, v5, [I

    const/4 v8, 0x0

    aput v6, v5, v8

    shl-int/lit8 v6, v7, 0x1

    or-int/lit8 v6, v6, 0x20

    or-int/2addr v2, v6

    aput v2, v5, v3

    invoke-virtual {v1, v5}, Lf1/s;->Z([I)Z

    move-result v1

    if-eqz v1, :cond_1c

    move v6, v3

    goto :goto_16

    :cond_1c
    const/4 v6, 0x0

    :goto_16
    const/16 v1, 0xb

    .line 26
    invoke-static {v1}, Lg/f;->n(I)Z

    move-result v1

    if-nez v1, :cond_1e

    invoke-static {v13}, Lg/f;->n(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_17

    :cond_1d
    const v1, 0x7f03007c

    goto :goto_18

    :cond_1e
    :goto_17
    const v1, 0x7f03007d

    :goto_18
    if-eqz v6, :cond_1f

    .line 27
    iget-object v2, v0, Lf1/e$b;->A:Lf1/e;

    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v1, v6}, Lo1/s0;->A(Landroid/content/Context;II)[I

    move-result-object v1

    invoke-virtual {v2, v1}, Lf1/s;->q([I)Z

    move-result v1

    if-eqz v1, :cond_1f

    goto :goto_19

    :cond_1f
    const/4 v3, 0x0

    :goto_19
    if-ltz v9, :cond_20

    const/16 v1, 0xf8

    .line 28
    invoke-static {v1, v11, v9}, Lcom/syu/jni/ToolsJni;->callSystemCtrl(ILjava/lang/String;I)I

    .line 29
    :cond_20
    iget v1, v0, Lf1/s$a;->d:I

    if-eqz v1, :cond_21

    .line 30
    iget-object v2, v0, Lf1/e$b;->w:Landroid/util/SparseArray;

    new-instance v5, Lf1/e$b$b;

    invoke-direct {v5, v0}, Lf1/e$b$b;-><init>(Lf1/e$b;)V

    invoke-virtual {v2, v1, v5}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf1/e$b$b;

    .line 31
    iget v2, v0, Lf1/s$a;->h:I

    iput v2, v1, Lf1/e$b$b;->a:I

    .line 32
    iget-object v2, v0, Lf1/e$b;->w:Landroid/util/SparseArray;

    iget v5, v0, Lf1/s$a;->d:I

    invoke-virtual {v2, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 33
    :cond_21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flush END:  vChannel : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lf1/s$a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  ret : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 34
    iput-boolean v1, v0, Lf1/s$a;->k:Z

    return v3

    nop

    :array_0
    .array-data 4
        0x2a
        0x38
    .end array-data

    :array_1
    .array-data 4
        0x2a
        0x30
    .end array-data

    :array_2
    .array-data 4
        0x43
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x40
        0x8
    .end array-data
.end method

.method public f()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lf1/e$b;->A:Lf1/e;

    iget-boolean v1, v0, Lf1/q;->r:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 2
    :cond_0
    invoke-virtual {v0}, Lf1/q;->n()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget v0, p0, Lf1/s$a;->d:I

    if-nez v0, :cond_2

    return v2

    .line 4
    :cond_2
    iget-object v0, p0, Lf1/e$b;->A:Lf1/e;

    const/16 v3, 0x40

    iget v4, p0, Lf1/s$a;->c:I

    invoke-virtual {v0, v3, v4}, Lf1/q;->V(II)I

    .line 5
    invoke-virtual {p0}, Lf1/e$b;->t()Z

    .line 6
    invoke-virtual {p0}, Lf1/e$b;->p()Z

    move-result v0

    .line 7
    iget-boolean v3, p0, Lf1/e$b;->s:Z

    const/4 v4, -0x1

    if-eqz v3, :cond_3

    .line 8
    invoke-virtual {p0}, Lf1/e$b;->q()I

    move-result v3

    if-eq v3, v4, :cond_3

    .line 9
    iget v5, p0, Lf1/s$a;->h:I

    if-eq v5, v3, :cond_3

    .line 10
    iput v3, p0, Lf1/s$a;->h:I

    .line 11
    iput-boolean v1, p0, Lf1/s$a;->k:Z

    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "channel : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lf1/s$a;->d:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " hasSignal : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " TO  videoFormat :  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lf1/s$a;->h:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " vTypeOrAhd: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lf1/e$b;->r:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " chipid : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lf1/e$b;->A:Lf1/e;

    iget v5, v5, Lf1/q;->h:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " vChannel: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lf1/s$a;->c:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Chip2863"

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_3
    iget v3, p0, Lf1/e$b;->r:I

    if-eq v3, v4, :cond_4

    iget-boolean v3, p0, Lf1/e$b;->s:Z

    if-eqz v3, :cond_4

    move v3, v1

    goto :goto_0

    :cond_4
    move v3, v2

    :goto_0
    if-eqz v0, :cond_5

    .line 14
    iget-object v0, p0, Lf1/e$b;->A:Lf1/e;

    iget-boolean v0, v0, Lf1/e;->T:Z

    and-int/2addr v0, v3

    if-eqz v0, :cond_5

    move v0, v1

    goto :goto_1

    :cond_5
    move v0, v2

    .line 15
    :goto_1
    iget-boolean v4, p0, Lf1/s$a;->l:Z

    if-eq v4, v0, :cond_6

    move v2, v1

    :cond_6
    if-eqz v2, :cond_7

    .line 16
    iput-boolean v0, p0, Lf1/s$a;->l:Z

    .line 17
    invoke-virtual {p0}, Lf1/s$a;->o()V

    .line 18
    :cond_7
    iget-boolean v0, p0, Lf1/s$a;->k:Z

    if-eqz v0, :cond_8

    .line 19
    invoke-virtual {p0}, Lf1/s$a;->n()V

    :cond_8
    return v3
.end method

.method public g(III)V
    .locals 7

    .line 1
    iget-object v0, p0, Lf1/e$b;->A:Lf1/e;

    iget-object v0, v0, Lf1/s;->S:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lf1/e$b;->A:Lf1/e;

    invoke-virtual {v1}, Lf1/e;->X()V

    .line 3
    iget-object v1, p0, Lf1/e$b;->A:Lf1/e;

    iget v2, p0, Lf1/s$a;->c:I

    const/16 v3, 0x40

    invoke-virtual {v1, v3, v2}, Lf1/q;->V(II)I

    .line 4
    iget-object v1, p0, Lf1/e$b;->A:Lf1/e;

    const/4 v2, 0x2

    new-array v4, v2, [I

    const/16 v5, 0x10

    const/4 v6, 0x0

    aput v5, v4, v6

    and-int/lit16 p1, p1, 0xff

    const/4 v5, 0x1

    aput p1, v4, v5

    invoke-virtual {v1, v4}, Lf1/s;->Z([I)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v5

    goto :goto_0

    :cond_0
    move p1, v6

    .line 5
    :goto_0
    iget-object v1, p0, Lf1/e$b;->A:Lf1/e;

    invoke-virtual {v1}, Lf1/e;->X()V

    .line 6
    iget-object v1, p0, Lf1/e$b;->A:Lf1/e;

    iget v4, p0, Lf1/s$a;->c:I

    invoke-virtual {v1, v3, v4}, Lf1/q;->V(II)I

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lf1/e$b;->A:Lf1/e;

    new-array v1, v2, [I

    const/16 v4, 0x11

    aput v4, v1, v6

    and-int/lit16 p3, p3, 0xff

    aput p3, v1, v5

    invoke-virtual {p1, v1}, Lf1/s;->Z([I)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v5

    goto :goto_1

    :cond_1
    move p1, v6

    .line 8
    :goto_1
    iget-object p3, p0, Lf1/e$b;->A:Lf1/e;

    invoke-virtual {p3}, Lf1/e;->X()V

    .line 9
    iget-object p3, p0, Lf1/e$b;->A:Lf1/e;

    iget v1, p0, Lf1/s$a;->c:I

    invoke-virtual {p3, v3, v1}, Lf1/q;->V(II)I

    if-eqz p1, :cond_2

    .line 10
    iget-object p1, p0, Lf1/e$b;->A:Lf1/e;

    new-array p3, v2, [I

    const/16 v1, 0x12

    aput v1, p3, v6

    and-int/lit16 p2, p2, 0xff

    aput p2, p3, v5

    invoke-virtual {p1, p3}, Lf1/s;->Z([I)Z

    move-result p1

    .line 11
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public m(I)V
    .locals 8

    const-string v0, "Chip2863"

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setVideoId ==>> videoId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " this.videoId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lf1/s$a;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lf1/s$a;->d:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, p1, :cond_1

    .line 3
    iput v1, p0, Lf1/s$a;->h:I

    .line 4
    iput-boolean v2, p0, Lf1/s$a;->l:Z

    .line 5
    invoke-virtual {p0}, Lf1/s$a;->n()V

    .line 6
    invoke-virtual {p0}, Lf1/s$a;->o()V

    .line 7
    :cond_1
    iget-object v0, p0, Lf1/e$b;->x:Landroid/util/SparseIntArray;

    iget v3, p0, Lf1/s$a;->c:I

    sget v4, Lf1/q;->M:I

    if-ne v3, v4, :cond_2

    sget v3, Lf1/e;->W:I

    goto :goto_0

    :cond_2
    const/16 v3, 0x10

    :goto_0
    invoke-virtual {v0, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ne v0, v1, :cond_3

    return-void

    .line 8
    :cond_3
    iget-object v1, p0, Lf1/e$b;->A:Lf1/e;

    iget-object v1, v1, Lf1/s;->S:Ljava/lang/Object;

    monitor-enter v1

    .line 9
    :try_start_0
    iget-object v3, p0, Lf1/e$b;->A:Lf1/e;

    const/16 v4, 0x40

    iget v5, p0, Lf1/s$a;->c:I

    invoke-virtual {v3, v4, v5}, Lf1/q;->V(II)I

    .line 10
    iget-object v3, p0, Lf1/e$b;->A:Lf1/e;

    const/16 v4, 0x50

    invoke-virtual {v3, v4}, Lf1/q;->A(I)I

    move-result v3

    shr-int/lit8 v4, v0, 0x4

    and-int/lit8 v4, v4, 0x5

    and-int/lit8 v0, v0, 0x5

    and-int/lit8 v5, v3, 0xf

    and-int/2addr v4, v5

    const/4 v5, 0x1

    if-eq v4, v0, :cond_4

    move v4, v5

    goto :goto_1

    :cond_4
    move v4, v2

    .line 11
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget-object v1, p0, Lf1/e$b;->y:Lf1/e$b$a;

    if-eqz v1, :cond_6

    .line 13
    iget-boolean v1, v1, Lf1/e$b$a;->c:Z

    if-eqz v1, :cond_5

    if-nez v4, :cond_5

    .line 14
    iget-object v1, p0, Lf1/e$b;->A:Lf1/e;

    invoke-virtual {v1, v5}, Lf1/e;->j0(Z)V

    .line 15
    :cond_5
    iget-object v1, p0, Lf1/e$b;->A:Lf1/e;

    iget-object v1, v1, Lf1/q;->s:Landroid/os/Handler;

    iget-object v6, p0, Lf1/e$b;->y:Lf1/e$b$a;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 16
    iput-object v1, p0, Lf1/e$b;->y:Lf1/e$b$a;

    :cond_6
    const-string v1, "Chip2863"

    .line 17
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "====>>> setVideoId videoId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " last : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lf1/s$a;->d:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " changeChannel : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    iget v1, p0, Lf1/s$a;->d:I

    if-ne v1, p1, :cond_8

    if-eqz v4, :cond_7

    goto :goto_2

    :cond_7
    if-lez p1, :cond_a

    .line 19
    invoke-virtual {p0}, Lf1/s$a;->o()V

    .line 20
    invoke-virtual {p0}, Lf1/s$a;->n()V

    goto :goto_3

    :cond_8
    :goto_2
    const-string v1, "Chip2863"

    const-string v6, "setVideoId 0x50 Reg value : %02X to %02X "

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    and-int/lit16 v3, v3, 0xff

    .line 21
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v5

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_9

    .line 22
    iget-object v0, p0, Lf1/e$b;->A:Lf1/e;

    invoke-virtual {v0, v2}, Lf1/e;->j0(Z)V

    const/16 v2, 0x12c

    .line 23
    :cond_9
    new-instance v0, Lf1/e$b$a;

    iget v1, p0, Lf1/s$a;->d:I

    invoke-direct {v0, p0, v1, p1}, Lf1/e$b$a;-><init>(Lf1/e$b;II)V

    iput-object v0, p0, Lf1/e$b;->y:Lf1/e$b$a;

    .line 24
    iput-boolean v4, v0, Lf1/e$b$a;->c:Z

    .line 25
    iget-object p1, p0, Lf1/e$b;->A:Lf1/e;

    iget-object p1, p1, Lf1/q;->s:Landroid/os/Handler;

    int-to-long v1, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_a
    :goto_3
    return-void

    :catchall_0
    move-exception p1

    .line 26
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public p()Z
    .locals 12

    .line 1
    iget-object v0, p0, Lf1/e$b;->A:Lf1/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lf1/q;->A(I)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit8 v2, v0, 0x70

    const/16 v3, 0x70

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    and-int/lit8 v3, v0, 0x60

    const/16 v5, 0x60

    if-ne v3, v5, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    const-string v5, " chipid : "

    const-string v6, "Chip2863"

    const/4 v7, 0x3

    if-nez v2, :cond_4

    if-eqz v3, :cond_2

    goto :goto_2

    .line 2
    :cond_2
    iget v2, p0, Lf1/e$b;->u:I

    if-lez v2, :cond_b

    .line 3
    iget v3, p0, Lf1/e$b;->v:I

    if-ne v2, v3, :cond_3

    .line 4
    iput v4, p0, Lf1/e$b;->u:I

    goto/16 :goto_5

    :cond_3
    sub-int/2addr v2, v1

    .line 5
    iput v2, p0, Lf1/e$b;->u:I

    goto/16 :goto_5

    .line 6
    :cond_4
    :goto_2
    iget v8, p0, Lf1/e$b;->u:I

    iget v9, p0, Lf1/e$b;->v:I

    if-ge v8, v9, :cond_8

    add-int/2addr v8, v1

    .line 7
    iput v8, p0, Lf1/e$b;->u:I

    .line 8
    iget-boolean v9, p0, Lf1/e$b;->o:Z

    if-eqz v9, :cond_7

    shr-int/lit8 v8, v0, 0x2

    and-int/2addr v8, v1

    .line 9
    invoke-virtual {p0, v8}, Lf1/e$b;->u(I)I

    move-result v8

    .line 10
    iget-object v9, p0, Lf1/e$b;->w:Landroid/util/SparseArray;

    iget v10, p0, Lf1/s$a;->d:I

    new-instance v11, Lf1/e$b$b;

    invoke-direct {v11, p0}, Lf1/e$b$b;-><init>(Lf1/e$b;)V

    invoke-virtual {v9, v10, v11}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lf1/e$b$b;

    .line 11
    iget v10, p0, Lf1/e$b;->r:I

    const-string v11, "  to New AHD: "

    if-eq v10, v8, :cond_5

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " CHECK SIGNAL  SURE old Ahd : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lf1/e$b;->r:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  this.videoId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lf1/s$a;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lf1/e$b;->A:Lf1/e;

    iget v3, v3, Lf1/q;->h:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iput v8, p0, Lf1/e$b;->r:I

    .line 14
    iput v8, v9, Lf1/e$b$b;->b:I

    .line 15
    iget-object v2, p0, Lf1/e$b;->w:Landroid/util/SparseArray;

    iget v3, p0, Lf1/s$a;->d:I

    invoke-virtual {v2, v3, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 16
    iput-boolean v1, p0, Lf1/s$a;->k:Z

    .line 17
    iput v1, p0, Lf1/e$b;->u:I

    .line 18
    iput v7, p0, Lf1/e$b;->v:I

    goto/16 :goto_5

    :cond_5
    if-eqz v2, :cond_6

    .line 19
    iput v7, p0, Lf1/e$b;->v:I

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " 111111  CHECK SIGNAL  SURE old Ahd : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lf1/e$b;->r:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lf1/e$b;->A:Lf1/e;

    iget v3, v3, Lf1/q;->h:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_6
    if-eqz v3, :cond_b

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " 222222  CHECK SIGNAL  SURE old Ahd : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lf1/e$b;->r:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lf1/e$b;->A:Lf1/e;

    iget v3, v3, Lf1/q;->h:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 22
    :cond_7
    iput v7, p0, Lf1/e$b;->v:I

    .line 23
    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lf1/e$b;->u:I

    goto :goto_5

    :cond_8
    if-eqz v3, :cond_b

    if-nez v2, :cond_b

    .line 24
    iget v2, p0, Lf1/s$a;->h:I

    const/16 v8, 0xd

    if-eq v2, v8, :cond_9

    if-eqz v2, :cond_9

    if-eq v2, v1, :cond_9

    move v2, v1

    goto :goto_3

    :cond_9
    move v2, v4

    :goto_3
    iput-boolean v2, p0, Lf1/e$b;->o:Z

    if-eqz v2, :cond_a

    const/4 v2, 0x6

    goto :goto_4

    :cond_a
    move v2, v7

    .line 25
    :goto_4
    iput v2, p0, Lf1/e$b;->v:I

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " CHECK SIGNAL  SURE  is0x60:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " ahd videoFormat : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lf1/s$a;->h:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  needCheckAhd : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lf1/e$b;->o:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :cond_b
    :goto_5
    iget-object v2, p0, Lf1/e$b;->z:Lo1/k0;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lo1/k0;->c(I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 28
    iget-object v2, p0, Lf1/e$b;->z:Lo1/k0;

    invoke-virtual {v2}, Lo1/k0;->b()V

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasSignal() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    iget-object v0, p0, Lf1/e$b;->A:Lf1/e;

    invoke-virtual {v0, v7}, Lf1/q;->A(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    const-string v0, " 0x01: %02X 0x03: %02X"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " isReady: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lf1/e$b;->A:Lf1/e;

    iget-boolean v0, v0, Lf1/e;->T:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lf1/e$b;->A:Lf1/e;

    iget v0, v0, Lf1/q;->h:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_c
    iget v0, p0, Lf1/e$b;->u:I

    iget v2, p0, Lf1/e$b;->v:I

    if-lt v0, v2, :cond_d

    goto :goto_6

    :cond_d
    move v1, v4

    :goto_6
    return v1
.end method

.method public q()I
    .locals 6

    .line 1
    iget-object v0, p0, Lf1/e$b;->A:Lf1/e;

    invoke-virtual {v0}, Lf1/q;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lf1/s$a;->h:I

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lf1/e$b;->A:Lf1/e;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lf1/q;->A(I)I

    move-result v0

    const/4 v2, 0x7

    and-int/2addr v0, v2

    .line 3
    iget-object v3, p0, Lf1/e$b;->A:Lf1/e;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lf1/q;->A(I)I

    const/4 v3, 0x4

    const/4 v5, -0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 4
    :pswitch_0
    iget-object v0, p0, Lf1/e$b;->A:Lf1/e;

    const/16 v1, 0x2f

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Lf1/q;->V(II)I

    const-wide/16 v0, 0x32

    .line 5
    invoke-static {v0, v1}, Lo1/s0;->C(J)V

    .line 6
    iget-object v0, p0, Lf1/e$b;->A:Lf1/e;

    invoke-virtual {v0, v3}, Lf1/q;->A(I)I

    move-result v0

    const/16 v1, 0x93

    if-ne v0, v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/16 v1, 0x94

    if-ne v0, v1, :cond_2

    move v1, v4

    goto :goto_1

    :pswitch_1
    const/4 v1, 0x2

    goto :goto_1

    :pswitch_2
    const/4 v1, 0x6

    goto :goto_1

    :pswitch_3
    move v1, v2

    goto :goto_1

    :pswitch_4
    move v1, v3

    goto :goto_1

    :pswitch_5
    const/4 v1, 0x5

    goto :goto_1

    :cond_2
    :goto_0
    :pswitch_6
    move v1, v5

    .line 7
    :goto_1
    :pswitch_7
    invoke-virtual {p0, v1}, Lf1/e$b;->r(I)I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_7
        :pswitch_1
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public final r(I)I
    .locals 4

    .line 1
    iget v0, p0, Lf1/s$a;->h:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_2

    .line 2
    iget v2, p0, Lf1/e$b;->n:I

    const/4 v3, 0x1

    if-ne p1, v2, :cond_1

    .line 3
    iget v2, p0, Lf1/e$b;->t:I

    add-int/2addr v2, v3

    iput v2, p0, Lf1/e$b;->t:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iput v1, p0, Lf1/e$b;->t:I

    goto :goto_1

    .line 5
    :cond_1
    iput v3, p0, Lf1/e$b;->t:I

    .line 6
    iput p1, p0, Lf1/e$b;->n:I

    :goto_0
    move p1, v0

    goto :goto_1

    .line 7
    :cond_2
    iput v1, p0, Lf1/e$b;->t:I

    :goto_1
    return p1
.end method

.method public s(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf1/e$b;->x:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method

.method public t()Z
    .locals 6

    const-string v0, "sys.fyt.cvbs.iic.busy"

    const/4 v1, -0x1

    .line 1
    invoke-static {v0, v1}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-boolean v0, p0, Lf1/e$b;->s:Z

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lf1/e$b;->A:Lf1/e;

    invoke-virtual {v0}, Lf1/q;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iput-boolean v1, p0, Lf1/e$b;->s:Z

    return v1

    .line 5
    :cond_1
    iget-object v0, p0, Lf1/e$b;->A:Lf1/e;

    invoke-virtual {v0, v1}, Lf1/q;->A(I)I

    move-result v0

    shr-int/lit8 v2, v0, 0x7

    and-int/2addr v2, v1

    const/4 v3, 0x0

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    move v2, v3

    .line 6
    :goto_0
    iget-boolean v4, p0, Lf1/e$b;->s:Z

    if-eq v4, v2, :cond_3

    .line 7
    iput-boolean v2, p0, Lf1/e$b;->s:Z

    .line 8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "vChannel :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lf1/s$a;->c:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " signalOn= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lf1/e$b;->s:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v3

    const-string v0, "    0x01 REG : %02X"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  this.videoId  = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lf1/s$a;->d:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "  videoFormat :  "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lf1/s$a;->h:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "    hasSingnal:  "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " chipid : "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lf1/e$b;->A:Lf1/e;

    iget v0, v0, Lf1/q;->h:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Chip2863"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :cond_3
    iget-boolean v0, p0, Lf1/e$b;->s:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Channel: [ index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf1/s$a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " vChannel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf1/s$a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " videoId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf1/s$a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isReverse:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lf1/s$a;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " videoFormat:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf1/s$a;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " vSignalOn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lf1/e$b;->s:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " vSignalCnt:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf1/e$b;->u:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(I)I
    .locals 4

    .line 1
    iget v0, p0, Lf1/e$b;->r:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_2

    .line 2
    iget v2, p0, Lf1/e$b;->q:I

    const/4 v3, 0x1

    if-ne p1, v2, :cond_1

    .line 3
    iget v2, p0, Lf1/e$b;->p:I

    add-int/2addr v2, v3

    iput v2, p0, Lf1/e$b;->p:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iput v1, p0, Lf1/e$b;->p:I

    goto :goto_1

    .line 5
    :cond_1
    iput v3, p0, Lf1/e$b;->p:I

    .line 6
    iput p1, p0, Lf1/e$b;->q:I

    :goto_0
    move p1, v0

    goto :goto_1

    .line 7
    :cond_2
    iput v1, p0, Lf1/e$b;->q:I

    :goto_1
    return p1
.end method
