.class public Lk0/jl$r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/jl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/jl;


# direct methods
.method public constructor <init>(Lk0/jl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/jl$r;->a:Lk0/jl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 1
    iget-object v0, p0, Lk0/jl$r;->a:Lk0/jl;

    iget-byte v1, v0, Lk0/jl;->V:B

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Lk0/jl;->V:B

    const/4 v3, 0x7

    if-lez v1, :cond_6

    .line 2
    sget v0, Lu0/b;->a0:I

    if-ne v0, v2, :cond_7

    const-string v0, "persist.lesc.video.ignore"

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "false"

    .line 4
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    sget v0, Lk0/nt;->c:I

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x6

    const/4 v7, 0x5

    if-eq v0, v7, :cond_3

    if-eq v0, v6, :cond_3

    if-eq v0, v3, :cond_3

    const/16 v8, 0x8

    if-eq v0, v8, :cond_3

    const/16 v8, 0xb

    if-eq v0, v8, :cond_3

    const/16 v8, 0x10

    if-eq v0, v8, :cond_3

    const/16 v8, 0xd

    if-eq v0, v8, :cond_2

    const/16 v8, 0xe

    if-eq v0, v8, :cond_1

    packed-switch v0, :pswitch_data_0

    new-array v0, v7, [I

    .line 6
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    .line 7
    iget-object v0, p0, Lk0/jl$r;->a:Lk0/jl;

    invoke-static {v0}, Lk0/jl;->u3(Lk0/jl;)Lo1/g0;

    move-result-object v8

    invoke-virtual {v8, v7, v1}, Lo1/g0;->b(II)I

    move-result v8

    invoke-static {v0, v8}, Lk0/jl;->h3(Lk0/jl;I)V

    .line 8
    iget-object v0, p0, Lk0/jl$r;->a:Lk0/jl;

    invoke-static {v0}, Lk0/jl;->u3(Lk0/jl;)Lo1/g0;

    move-result-object v8

    invoke-virtual {v8, v5, v1}, Lo1/g0;->b(II)I

    move-result v8

    invoke-static {v0, v8}, Lk0/jl;->j3(Lk0/jl;I)V

    .line 9
    iget-object v0, p0, Lk0/jl$r;->a:Lk0/jl;

    invoke-static {v0}, Lk0/jl;->u3(Lk0/jl;)Lo1/g0;

    move-result-object v8

    invoke-virtual {v8, v4, v1}, Lo1/g0;->b(II)I

    move-result v8

    invoke-static {v0, v8}, Lk0/jl;->k3(Lk0/jl;I)V

    .line 10
    iget-object v0, p0, Lk0/jl$r;->a:Lk0/jl;

    invoke-static {v0}, Lk0/jl;->u3(Lk0/jl;)Lo1/g0;

    move-result-object v8

    invoke-virtual {v8, v6, v1}, Lo1/g0;->b(II)I

    move-result v8

    invoke-static {v0, v8}, Lk0/jl;->l3(Lk0/jl;I)V

    .line 11
    iget-object v0, p0, Lk0/jl$r;->a:Lk0/jl;

    invoke-static {v0}, Lk0/jl;->u3(Lk0/jl;)Lo1/g0;

    move-result-object v8

    invoke-virtual {v8, v3, v1}, Lo1/g0;->b(II)I

    move-result v8

    invoke-static {v0, v8}, Lk0/jl;->v3(Lk0/jl;I)V

    .line 12
    iget-object v0, p0, Lk0/jl$r;->a:Lk0/jl;

    invoke-static {v0}, Lk0/jl;->u3(Lk0/jl;)Lo1/g0;

    move-result-object v8

    const/16 v9, 0x17

    invoke-virtual {v8, v9, v1}, Lo1/g0;->b(II)I

    move-result v8

    invoke-static {v0, v8}, Lk0/jl;->m3(Lk0/jl;I)V

    goto :goto_0

    :cond_1
    new-array v0, v7, [I

    .line 13
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v7, [I

    .line 14
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array v0, v7, [I

    .line 15
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v7, [I

    .line 16
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 17
    :cond_3
    :pswitch_0
    iget-object v0, p0, Lk0/jl$r;->a:Lk0/jl;

    invoke-static {v0}, Lk0/jl;->u3(Lk0/jl;)Lo1/g0;

    move-result-object v8

    invoke-virtual {v8, v3, v1}, Lo1/g0;->b(II)I

    move-result v8

    invoke-static {v0, v8}, Lk0/jl;->v3(Lk0/jl;I)V

    .line 18
    :goto_0
    sget v0, Lk0/nt;->a:I

    const/16 v8, -0x56

    const/16 v9, 0x33

    const/4 v10, 0x2

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    new-array v0, v3, [B

    aput-byte v9, v0, v1

    aput-byte v7, v0, v2

    aput-byte v1, v0, v10

    .line 19
    iget-object v11, p0, Lk0/jl$r;->a:Lk0/jl;

    iget-object v12, v11, Lk0/jl;->l0:[I

    iget v11, v11, Lk0/jl;->m0:I

    rem-int/2addr v11, v10

    aget v11, v12, v11

    int-to-byte v11, v11

    aput-byte v11, v0, v5

    aput-byte v1, v0, v4

    const/16 v11, 0x12

    aput-byte v11, v0, v7

    aput-byte v8, v0, v6

    invoke-static {v0}, Lk0/jl;->G3([B)V

    new-array v0, v3, [B

    aput-byte v9, v0, v1

    aput-byte v7, v0, v2

    aput-byte v1, v0, v10

    .line 20
    iget-object v12, p0, Lk0/jl$r;->a:Lk0/jl;

    iget-object v13, v12, Lk0/jl;->l0:[I

    iget v12, v12, Lk0/jl;->m0:I

    rem-int/2addr v12, v10

    aget v12, v13, v12

    int-to-byte v12, v12

    aput-byte v12, v0, v5

    aput-byte v1, v0, v4

    aput-byte v11, v0, v7

    aput-byte v8, v0, v6

    invoke-static {v0}, Lk0/jl;->G3([B)V

    new-array v0, v3, [B

    aput-byte v9, v0, v1

    aput-byte v7, v0, v2

    aput-byte v1, v0, v10

    .line 21
    iget-object v3, p0, Lk0/jl$r;->a:Lk0/jl;

    iget-object v9, v3, Lk0/jl;->l0:[I

    iget v3, v3, Lk0/jl;->m0:I

    rem-int/2addr v3, v10

    aget v3, v9, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v5

    aput-byte v1, v0, v4

    aput-byte v11, v0, v7

    aput-byte v8, v0, v6

    invoke-static {v0}, Lk0/jl;->G3([B)V

    goto :goto_1

    :sswitch_1
    new-array v0, v3, [B

    aput-byte v9, v0, v1

    aput-byte v7, v0, v2

    aput-byte v1, v0, v10

    .line 22
    iget-object v11, p0, Lk0/jl$r;->a:Lk0/jl;

    iget-object v12, v11, Lk0/jl;->l0:[I

    iget v11, v11, Lk0/jl;->m0:I

    rem-int/2addr v11, v10

    aget v11, v12, v11

    int-to-byte v11, v11

    aput-byte v11, v0, v5

    const/16 v11, 0x25

    aput-byte v11, v0, v4

    const/16 v12, 0x11

    aput-byte v12, v0, v7

    aput-byte v8, v0, v6

    invoke-static {v0}, Lk0/jl;->G3([B)V

    new-array v0, v3, [B

    aput-byte v9, v0, v1

    aput-byte v7, v0, v2

    aput-byte v1, v0, v10

    .line 23
    iget-object v13, p0, Lk0/jl$r;->a:Lk0/jl;

    iget-object v14, v13, Lk0/jl;->l0:[I

    iget v13, v13, Lk0/jl;->m0:I

    rem-int/2addr v13, v10

    aget v13, v14, v13

    int-to-byte v13, v13

    aput-byte v13, v0, v5

    aput-byte v11, v0, v4

    aput-byte v12, v0, v7

    aput-byte v8, v0, v6

    invoke-static {v0}, Lk0/jl;->G3([B)V

    new-array v0, v3, [B

    aput-byte v9, v0, v1

    aput-byte v7, v0, v2

    aput-byte v1, v0, v10

    .line 24
    iget-object v3, p0, Lk0/jl$r;->a:Lk0/jl;

    iget-object v9, v3, Lk0/jl;->l0:[I

    iget v3, v3, Lk0/jl;->m0:I

    rem-int/2addr v3, v10

    aget v3, v9, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v5

    aput-byte v11, v0, v4

    aput-byte v12, v0, v7

    aput-byte v8, v0, v6

    invoke-static {v0}, Lk0/jl;->G3([B)V

    .line 25
    :goto_1
    sget v0, Lk0/nt;->c:I

    const/16 v3, 0xf

    if-eq v0, v3, :cond_5

    const/16 v3, 0x38

    if-eq v0, v3, :cond_4

    packed-switch v0, :pswitch_data_1

    goto :goto_2

    .line 26
    :cond_4
    iget-object v0, p0, Lk0/jl$r;->a:Lk0/jl;

    invoke-static {v0, v2}, Lk0/jl;->n3(Lk0/jl;I)V

    goto :goto_2

    .line 27
    :cond_5
    :pswitch_1
    iget-object v0, p0, Lk0/jl$r;->a:Lk0/jl;

    invoke-static {v0}, Lk0/jl;->u3(Lk0/jl;)Lo1/g0;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v2, v3, v1}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/jl;->n3(Lk0/jl;I)V

    goto :goto_2

    .line 28
    :cond_6
    invoke-static {v0}, Lk0/jl;->s3(Lk0/jl;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 29
    iget-object v0, p0, Lk0/jl$r;->a:Lk0/jl;

    iput-byte v3, v0, Lk0/jl;->V:B

    :cond_7
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x26
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1a01c0 -> :sswitch_1
        0x1b01c0 -> :sswitch_0
        0x2401c0 -> :sswitch_1
        0x2501c0 -> :sswitch_0
        0x2d01c0 -> :sswitch_1
        0x2e01c0 -> :sswitch_0
        0x3001c0 -> :sswitch_1
        0x3101c0 -> :sswitch_0
        0x3301c0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x12
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0x0
        0x61
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x0
        0x61
        0x1
        0x1
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x0
        0x97
        0x1
        0x2
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x0
        0x61
        0x1
        0x1
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0x0
        0x97
        0x1
        0x1
    .end array-data
.end method
