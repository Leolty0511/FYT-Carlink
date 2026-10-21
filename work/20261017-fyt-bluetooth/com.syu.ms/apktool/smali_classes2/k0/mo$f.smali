.class public Lk0/mo$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/mo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/mo;


# direct methods
.method public constructor <init>(Lk0/mo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/mo$f;->a:Lk0/mo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 1
    iget-object v0, p0, Lk0/mo$f;->a:Lk0/mo;

    iget v1, v0, Lk0/mo;->F:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/mo;->F:I

    const/4 v3, 0x5

    if-lez v1, :cond_0

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/16 v4, 0xe3

    const/4 v5, 0x0

    aput v4, v1, v5

    const/16 v4, 0x81

    aput v4, v1, v2

    const/4 v4, 0x2

    aput v2, v1, v4

    .line 2
    sget v6, Lu0/b;->a0:I

    const/4 v7, 0x3

    aput v6, v1, v7

    invoke-static {v1}, Lz/k;->s([I)V

    .line 3
    sget v1, Lu0/b;->a0:I

    if-ne v1, v2, :cond_1

    .line 4
    iget-object v1, p0, Lk0/mo$f;->a:Lk0/mo;

    invoke-static {v1}, Lk0/mo;->g3(Lk0/mo;)Lo1/g0;

    move-result-object v6

    invoke-virtual {v6, v2, v5}, Lo1/g0;->b(II)I

    move-result v6

    invoke-static {v1, v6}, Lk0/mo;->h3(Lk0/mo;I)V

    .line 5
    sget v1, Lk0/nt;->a:I

    sparse-switch v1, :sswitch_data_0

    .line 6
    iget-object v1, p0, Lk0/mo$f;->a:Lk0/mo;

    invoke-static {v1}, Lk0/mo;->g3(Lk0/mo;)Lo1/g0;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Lo1/g0;->b(II)I

    move-result v6

    invoke-static {v1, v6}, Lk0/mo;->i3(Lk0/mo;I)V

    :sswitch_0
    new-array v1, v3, [I

    .line 7
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    .line 8
    sget v1, Lk0/nt;->a:I

    sparse-switch v1, :sswitch_data_1

    goto :goto_0

    :sswitch_1
    new-array v1, v3, [I

    .line 9
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_2
    new-array v1, v3, [I

    .line 10
    fill-array-data v1, :array_2

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_3
    new-array v1, v3, [I

    .line 11
    fill-array-data v1, :array_3

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_4
    new-array v1, v3, [I

    .line 12
    fill-array-data v1, :array_4

    invoke-static {v1}, Lz/k;->s([I)V

    .line 13
    :goto_0
    sget v1, Lk0/nt;->a:I

    const/16 v6, 0x12

    const/16 v8, 0x11

    const/16 v9, 0x25

    const/16 v10, -0x56

    const/4 v11, 0x6

    const/16 v12, 0x33

    const/4 v13, 0x7

    sparse-switch v1, :sswitch_data_2

    goto/16 :goto_1

    :sswitch_5
    new-array v1, v13, [B

    aput-byte v12, v1, v5

    aput-byte v3, v1, v2

    aput-byte v5, v1, v4

    .line 14
    iget-object v8, p0, Lk0/mo$f;->a:Lk0/mo;

    iget-object v9, v8, Lk0/mo;->L:[I

    iget v8, v8, Lk0/mo;->M:I

    rem-int/2addr v8, v4

    aget v8, v9, v8

    int-to-byte v8, v8

    aput-byte v8, v1, v7

    aput-byte v5, v1, v0

    aput-byte v6, v1, v3

    aput-byte v10, v1, v11

    invoke-static {v1}, Lk0/mo;->r3([B)V

    new-array v1, v13, [B

    aput-byte v12, v1, v5

    aput-byte v3, v1, v2

    aput-byte v5, v1, v4

    .line 15
    iget-object v8, p0, Lk0/mo$f;->a:Lk0/mo;

    iget-object v9, v8, Lk0/mo;->L:[I

    iget v8, v8, Lk0/mo;->M:I

    rem-int/2addr v8, v4

    aget v8, v9, v8

    int-to-byte v8, v8

    aput-byte v8, v1, v7

    aput-byte v5, v1, v0

    aput-byte v6, v1, v3

    aput-byte v10, v1, v11

    invoke-static {v1}, Lk0/mo;->r3([B)V

    new-array v1, v13, [B

    aput-byte v12, v1, v5

    aput-byte v3, v1, v2

    aput-byte v5, v1, v4

    .line 16
    iget-object v2, p0, Lk0/mo$f;->a:Lk0/mo;

    iget-object v8, v2, Lk0/mo;->L:[I

    iget v2, v2, Lk0/mo;->M:I

    rem-int/2addr v2, v4

    aget v2, v8, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v7

    aput-byte v5, v1, v0

    aput-byte v6, v1, v3

    aput-byte v10, v1, v11

    invoke-static {v1}, Lk0/mo;->r3([B)V

    goto/16 :goto_1

    :sswitch_6
    new-array v1, v13, [B

    aput-byte v12, v1, v5

    aput-byte v3, v1, v2

    aput-byte v5, v1, v4

    .line 17
    iget-object v6, p0, Lk0/mo$f;->a:Lk0/mo;

    iget-object v9, v6, Lk0/mo;->L:[I

    iget v6, v6, Lk0/mo;->M:I

    rem-int/2addr v6, v4

    aget v6, v9, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v7

    aput-byte v5, v1, v0

    aput-byte v8, v1, v3

    aput-byte v10, v1, v11

    invoke-static {v1}, Lk0/mo;->r3([B)V

    new-array v1, v13, [B

    aput-byte v12, v1, v5

    aput-byte v3, v1, v2

    aput-byte v5, v1, v4

    .line 18
    iget-object v6, p0, Lk0/mo$f;->a:Lk0/mo;

    iget-object v9, v6, Lk0/mo;->L:[I

    iget v6, v6, Lk0/mo;->M:I

    rem-int/2addr v6, v4

    aget v6, v9, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v7

    aput-byte v5, v1, v0

    aput-byte v8, v1, v3

    aput-byte v10, v1, v11

    invoke-static {v1}, Lk0/mo;->r3([B)V

    new-array v1, v13, [B

    aput-byte v12, v1, v5

    aput-byte v3, v1, v2

    aput-byte v5, v1, v4

    .line 19
    iget-object v2, p0, Lk0/mo$f;->a:Lk0/mo;

    iget-object v6, v2, Lk0/mo;->L:[I

    iget v2, v2, Lk0/mo;->M:I

    rem-int/2addr v2, v4

    aget v2, v6, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v7

    aput-byte v5, v1, v0

    aput-byte v8, v1, v3

    aput-byte v10, v1, v11

    invoke-static {v1}, Lk0/mo;->r3([B)V

    goto/16 :goto_1

    :sswitch_7
    new-array v1, v13, [B

    aput-byte v12, v1, v5

    aput-byte v3, v1, v2

    aput-byte v5, v1, v4

    .line 20
    iget-object v6, p0, Lk0/mo$f;->a:Lk0/mo;

    iget-object v8, v6, Lk0/mo;->L:[I

    iget v6, v6, Lk0/mo;->M:I

    rem-int/2addr v6, v4

    aget v6, v8, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v7

    aput-byte v9, v1, v0

    const/16 v6, 0x14

    aput-byte v6, v1, v3

    aput-byte v10, v1, v11

    invoke-static {v1}, Lk0/mo;->r3([B)V

    new-array v1, v13, [B

    aput-byte v12, v1, v5

    aput-byte v3, v1, v2

    aput-byte v5, v1, v4

    .line 21
    iget-object v8, p0, Lk0/mo$f;->a:Lk0/mo;

    iget-object v14, v8, Lk0/mo;->L:[I

    iget v8, v8, Lk0/mo;->M:I

    rem-int/2addr v8, v4

    aget v8, v14, v8

    int-to-byte v8, v8

    aput-byte v8, v1, v7

    aput-byte v9, v1, v0

    aput-byte v6, v1, v3

    aput-byte v10, v1, v11

    invoke-static {v1}, Lk0/mo;->r3([B)V

    new-array v1, v13, [B

    aput-byte v12, v1, v5

    aput-byte v3, v1, v2

    aput-byte v5, v1, v4

    .line 22
    iget-object v2, p0, Lk0/mo$f;->a:Lk0/mo;

    iget-object v5, v2, Lk0/mo;->L:[I

    iget v2, v2, Lk0/mo;->M:I

    rem-int/2addr v2, v4

    aget v2, v5, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v7

    aput-byte v9, v1, v0

    aput-byte v6, v1, v3

    aput-byte v10, v1, v11

    invoke-static {v1}, Lk0/mo;->r3([B)V

    goto/16 :goto_1

    :sswitch_8
    new-array v1, v13, [B

    aput-byte v12, v1, v5

    aput-byte v3, v1, v2

    aput-byte v5, v1, v4

    .line 23
    iget-object v6, p0, Lk0/mo$f;->a:Lk0/mo;

    iget-object v8, v6, Lk0/mo;->L:[I

    iget v6, v6, Lk0/mo;->M:I

    rem-int/2addr v6, v4

    aget v6, v8, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v7

    aput-byte v9, v1, v0

    const/16 v6, 0x13

    aput-byte v6, v1, v3

    aput-byte v10, v1, v11

    invoke-static {v1}, Lk0/mo;->r3([B)V

    new-array v1, v13, [B

    aput-byte v12, v1, v5

    aput-byte v3, v1, v2

    aput-byte v5, v1, v4

    .line 24
    iget-object v8, p0, Lk0/mo$f;->a:Lk0/mo;

    iget-object v14, v8, Lk0/mo;->L:[I

    iget v8, v8, Lk0/mo;->M:I

    rem-int/2addr v8, v4

    aget v8, v14, v8

    int-to-byte v8, v8

    aput-byte v8, v1, v7

    aput-byte v9, v1, v0

    aput-byte v6, v1, v3

    aput-byte v10, v1, v11

    invoke-static {v1}, Lk0/mo;->r3([B)V

    new-array v1, v13, [B

    aput-byte v12, v1, v5

    aput-byte v3, v1, v2

    aput-byte v5, v1, v4

    .line 25
    iget-object v2, p0, Lk0/mo$f;->a:Lk0/mo;

    iget-object v5, v2, Lk0/mo;->L:[I

    iget v2, v2, Lk0/mo;->M:I

    rem-int/2addr v2, v4

    aget v2, v5, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v7

    aput-byte v9, v1, v0

    aput-byte v6, v1, v3

    aput-byte v10, v1, v11

    invoke-static {v1}, Lk0/mo;->r3([B)V

    goto/16 :goto_1

    :sswitch_9
    new-array v1, v13, [B

    aput-byte v12, v1, v5

    aput-byte v3, v1, v2

    aput-byte v5, v1, v4

    .line 26
    iget-object v8, p0, Lk0/mo$f;->a:Lk0/mo;

    iget-object v14, v8, Lk0/mo;->L:[I

    iget v8, v8, Lk0/mo;->M:I

    rem-int/2addr v8, v4

    aget v8, v14, v8

    int-to-byte v8, v8

    aput-byte v8, v1, v7

    aput-byte v9, v1, v0

    aput-byte v6, v1, v3

    aput-byte v10, v1, v11

    invoke-static {v1}, Lk0/mo;->r3([B)V

    new-array v1, v13, [B

    aput-byte v12, v1, v5

    aput-byte v3, v1, v2

    aput-byte v5, v1, v4

    .line 27
    iget-object v8, p0, Lk0/mo$f;->a:Lk0/mo;

    iget-object v14, v8, Lk0/mo;->L:[I

    iget v8, v8, Lk0/mo;->M:I

    rem-int/2addr v8, v4

    aget v8, v14, v8

    int-to-byte v8, v8

    aput-byte v8, v1, v7

    aput-byte v9, v1, v0

    aput-byte v6, v1, v3

    aput-byte v10, v1, v11

    invoke-static {v1}, Lk0/mo;->r3([B)V

    new-array v1, v13, [B

    aput-byte v12, v1, v5

    aput-byte v3, v1, v2

    aput-byte v5, v1, v4

    .line 28
    iget-object v2, p0, Lk0/mo$f;->a:Lk0/mo;

    iget-object v5, v2, Lk0/mo;->L:[I

    iget v2, v2, Lk0/mo;->M:I

    rem-int/2addr v2, v4

    aget v2, v5, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v7

    aput-byte v9, v1, v0

    aput-byte v6, v1, v3

    aput-byte v10, v1, v11

    invoke-static {v1}, Lk0/mo;->r3([B)V

    goto/16 :goto_1

    :sswitch_a
    new-array v1, v13, [B

    aput-byte v12, v1, v5

    aput-byte v3, v1, v2

    aput-byte v5, v1, v4

    .line 29
    iget-object v6, p0, Lk0/mo$f;->a:Lk0/mo;

    iget-object v14, v6, Lk0/mo;->L:[I

    iget v6, v6, Lk0/mo;->M:I

    rem-int/2addr v6, v4

    aget v6, v14, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v7

    aput-byte v9, v1, v0

    aput-byte v8, v1, v3

    aput-byte v10, v1, v11

    invoke-static {v1}, Lk0/mo;->r3([B)V

    new-array v1, v13, [B

    aput-byte v12, v1, v5

    aput-byte v3, v1, v2

    aput-byte v5, v1, v4

    .line 30
    iget-object v6, p0, Lk0/mo$f;->a:Lk0/mo;

    iget-object v14, v6, Lk0/mo;->L:[I

    iget v6, v6, Lk0/mo;->M:I

    rem-int/2addr v6, v4

    aget v6, v14, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v7

    aput-byte v9, v1, v0

    aput-byte v8, v1, v3

    aput-byte v10, v1, v11

    invoke-static {v1}, Lk0/mo;->r3([B)V

    new-array v1, v13, [B

    aput-byte v12, v1, v5

    aput-byte v3, v1, v2

    aput-byte v5, v1, v4

    .line 31
    iget-object v2, p0, Lk0/mo$f;->a:Lk0/mo;

    iget-object v5, v2, Lk0/mo;->L:[I

    iget v2, v2, Lk0/mo;->M:I

    rem-int/2addr v2, v4

    aget v2, v5, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v7

    aput-byte v9, v1, v0

    aput-byte v8, v1, v3

    aput-byte v10, v1, v11

    invoke-static {v1}, Lk0/mo;->r3([B)V

    goto/16 :goto_1

    :sswitch_b
    new-array v1, v13, [B

    aput-byte v12, v1, v5

    aput-byte v3, v1, v2

    aput-byte v5, v1, v4

    .line 32
    iget-object v6, p0, Lk0/mo$f;->a:Lk0/mo;

    iget-object v8, v6, Lk0/mo;->L:[I

    iget v6, v6, Lk0/mo;->M:I

    rem-int/2addr v6, v4

    aget v6, v8, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v7

    aput-byte v5, v1, v0

    aput-byte v4, v1, v3

    aput-byte v10, v1, v11

    invoke-static {v1}, Lk0/mo;->r3([B)V

    new-array v1, v13, [B

    aput-byte v12, v1, v5

    aput-byte v3, v1, v2

    aput-byte v5, v1, v4

    .line 33
    iget-object v6, p0, Lk0/mo$f;->a:Lk0/mo;

    iget-object v8, v6, Lk0/mo;->L:[I

    iget v6, v6, Lk0/mo;->M:I

    rem-int/2addr v6, v4

    aget v6, v8, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v7

    aput-byte v5, v1, v0

    aput-byte v4, v1, v3

    aput-byte v10, v1, v11

    invoke-static {v1}, Lk0/mo;->r3([B)V

    new-array v1, v13, [B

    aput-byte v12, v1, v5

    aput-byte v3, v1, v2

    aput-byte v5, v1, v4

    .line 34
    iget-object v2, p0, Lk0/mo$f;->a:Lk0/mo;

    iget-object v6, v2, Lk0/mo;->L:[I

    iget v2, v2, Lk0/mo;->M:I

    rem-int/2addr v2, v4

    aget v2, v6, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v7

    aput-byte v5, v1, v0

    aput-byte v4, v1, v3

    aput-byte v10, v1, v11

    invoke-static {v1}, Lk0/mo;->r3([B)V

    goto :goto_1

    :sswitch_c
    new-array v1, v13, [B

    aput-byte v12, v1, v5

    aput-byte v3, v1, v2

    aput-byte v5, v1, v4

    .line 35
    iget-object v6, p0, Lk0/mo$f;->a:Lk0/mo;

    iget-object v8, v6, Lk0/mo;->L:[I

    iget v6, v6, Lk0/mo;->M:I

    rem-int/2addr v6, v4

    aget v6, v8, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v7

    aput-byte v9, v1, v0

    aput-byte v2, v1, v3

    aput-byte v10, v1, v11

    invoke-static {v1}, Lk0/mo;->r3([B)V

    new-array v1, v13, [B

    aput-byte v12, v1, v5

    aput-byte v3, v1, v2

    aput-byte v5, v1, v4

    .line 36
    iget-object v6, p0, Lk0/mo$f;->a:Lk0/mo;

    iget-object v8, v6, Lk0/mo;->L:[I

    iget v6, v6, Lk0/mo;->M:I

    rem-int/2addr v6, v4

    aget v6, v8, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v7

    aput-byte v9, v1, v0

    aput-byte v2, v1, v3

    aput-byte v10, v1, v11

    invoke-static {v1}, Lk0/mo;->r3([B)V

    new-array v1, v13, [B

    aput-byte v12, v1, v5

    aput-byte v3, v1, v2

    aput-byte v5, v1, v4

    .line 37
    iget-object v5, p0, Lk0/mo$f;->a:Lk0/mo;

    iget-object v6, v5, Lk0/mo;->L:[I

    iget v5, v5, Lk0/mo;->M:I

    rem-int/2addr v5, v4

    aget v4, v6, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v7

    aput-byte v9, v1, v0

    aput-byte v2, v1, v3

    aput-byte v10, v1, v11

    invoke-static {v1}, Lk0/mo;->r3([B)V

    goto :goto_1

    .line 38
    :cond_0
    iget-object v0, v0, Lk0/mo;->H:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 39
    iget-object v0, p0, Lk0/mo$f;->a:Lk0/mo;

    iput v3, v0, Lk0/mo;->F:I

    :cond_1
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x6e01c8 -> :sswitch_0
        0x6f01c8 -> :sswitch_0
        0x7801c7 -> :sswitch_0
        0x7901c7 -> :sswitch_0
        0x7a01c7 -> :sswitch_0
        0x7b01c7 -> :sswitch_0
        0x7b01c8 -> :sswitch_0
        0x7c01c8 -> :sswitch_0
        0x7d01c8 -> :sswitch_0
        0x7e01c8 -> :sswitch_0
        0x8d01c8 -> :sswitch_0
        0x8e01c8 -> :sswitch_0
        0x8f01c8 -> :sswitch_0
        0x9001c8 -> :sswitch_0
        0x9201c8 -> :sswitch_0
        0xc301c7 -> :sswitch_0
        0xc401c7 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x9101c8 -> :sswitch_4
        0x9601c8 -> :sswitch_4
        0x9701c8 -> :sswitch_4
        0x9c01c8 -> :sswitch_4
        0xc801c5 -> :sswitch_3
        0xc901c5 -> :sswitch_2
        0xca01c5 -> :sswitch_1
        0xcb01c5 -> :sswitch_4
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0xd01c8 -> :sswitch_c
        0xe01c8 -> :sswitch_b
        0x3a01c7 -> :sswitch_a
        0x3b01c7 -> :sswitch_9
        0x3c01c7 -> :sswitch_8
        0x3d01c7 -> :sswitch_7
        0x6e01c8 -> :sswitch_6
        0x6f01c8 -> :sswitch_5
        0x7801c7 -> :sswitch_a
        0x7901c7 -> :sswitch_9
        0x7a01c7 -> :sswitch_8
        0x7b01c7 -> :sswitch_7
        0x7b01c8 -> :sswitch_6
        0x7c01c8 -> :sswitch_9
        0x7d01c8 -> :sswitch_8
        0x7e01c8 -> :sswitch_7
        0x8d01c8 -> :sswitch_a
        0x8e01c8 -> :sswitch_a
        0x8f01c8 -> :sswitch_9
        0x9001c8 -> :sswitch_9
        0x9201c8 -> :sswitch_6
        0xc301c7 -> :sswitch_6
        0xc401c7 -> :sswitch_5
        0xdb01c7 -> :sswitch_a
    .end sparse-switch

    :array_0
    .array-data 4
        0xe3
        0x90
        0x2
        0x30
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xc6
        0x2
        0x80
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0xc6
        0x2
        0x80
        0x3
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0xc6
        0x2
        0x80
        0x1
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0xc6
        0x2
        0x80
        0x2
    .end array-data
.end method
