.class public Lk0/cm$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/cm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/cm;


# direct methods
.method public constructor <init>(Lk0/cm;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/cm$h;->a:Lk0/cm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 1
    iget-object v0, p0, Lk0/cm$h;->a:Lk0/cm;

    iget v1, v0, Lk0/cm;->A:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/cm;->A:I

    const/4 v3, 0x6

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

    const/4 v1, 0x5

    new-array v6, v1, [I

    .line 4
    fill-array-data v6, :array_0

    invoke-static {v6}, Lz/k;->s([I)V

    .line 5
    sget v6, Lk0/nt;->a:I

    const/16 v8, -0x56

    const/16 v9, 0x25

    const/16 v10, 0x33

    const/4 v11, 0x7

    sparse-switch v6, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    new-array v0, v1, [I

    .line 6
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_1
    new-array v0, v1, [I

    .line 7
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_2
    new-array v0, v1, [I

    .line 8
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_3
    new-array v0, v1, [I

    .line 9
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_4
    new-array v0, v1, [I

    .line 10
    fill-array-data v0, :array_5

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_5
    new-array v0, v1, [I

    .line 11
    fill-array-data v0, :array_6

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_6
    new-array v0, v1, [I

    .line 12
    fill-array-data v0, :array_7

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_7
    new-array v6, v11, [B

    aput-byte v10, v6, v5

    aput-byte v1, v6, v2

    aput-byte v5, v6, v4

    .line 13
    iget-object v12, p0, Lk0/cm$h;->a:Lk0/cm;

    iget-object v13, v12, Lk0/cm;->D:[I

    iget v12, v12, Lk0/cm;->E:I

    rem-int/2addr v12, v4

    aget v12, v13, v12

    int-to-byte v12, v12

    aput-byte v12, v6, v7

    aput-byte v9, v6, v0

    const/16 v12, 0x14

    aput-byte v12, v6, v1

    aput-byte v8, v6, v3

    invoke-static {v6}, Lk0/cm;->u3([B)V

    new-array v6, v11, [B

    aput-byte v10, v6, v5

    aput-byte v1, v6, v2

    aput-byte v5, v6, v4

    .line 14
    iget-object v13, p0, Lk0/cm$h;->a:Lk0/cm;

    iget-object v14, v13, Lk0/cm;->D:[I

    iget v13, v13, Lk0/cm;->E:I

    rem-int/2addr v13, v4

    aget v13, v14, v13

    int-to-byte v13, v13

    aput-byte v13, v6, v7

    aput-byte v9, v6, v0

    aput-byte v12, v6, v1

    aput-byte v8, v6, v3

    invoke-static {v6}, Lk0/cm;->u3([B)V

    new-array v6, v11, [B

    aput-byte v10, v6, v5

    aput-byte v1, v6, v2

    aput-byte v5, v6, v4

    .line 15
    iget-object v10, p0, Lk0/cm$h;->a:Lk0/cm;

    iget-object v11, v10, Lk0/cm;->D:[I

    iget v10, v10, Lk0/cm;->E:I

    rem-int/2addr v10, v4

    aget v10, v11, v10

    int-to-byte v10, v10

    aput-byte v10, v6, v7

    aput-byte v9, v6, v0

    aput-byte v12, v6, v1

    aput-byte v8, v6, v3

    invoke-static {v6}, Lk0/cm;->u3([B)V

    goto/16 :goto_0

    :sswitch_8
    new-array v0, v1, [I

    .line 16
    fill-array-data v0, :array_8

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_9
    new-array v6, v11, [B

    aput-byte v10, v6, v5

    aput-byte v1, v6, v2

    aput-byte v5, v6, v4

    .line 17
    iget-object v12, p0, Lk0/cm$h;->a:Lk0/cm;

    iget-object v13, v12, Lk0/cm;->D:[I

    iget v12, v12, Lk0/cm;->E:I

    rem-int/2addr v12, v4

    aget v12, v13, v12

    int-to-byte v12, v12

    aput-byte v12, v6, v7

    aput-byte v9, v6, v0

    const/16 v12, 0x13

    aput-byte v12, v6, v1

    aput-byte v8, v6, v3

    invoke-static {v6}, Lk0/cm;->u3([B)V

    new-array v6, v11, [B

    aput-byte v10, v6, v5

    aput-byte v1, v6, v2

    aput-byte v5, v6, v4

    .line 18
    iget-object v13, p0, Lk0/cm$h;->a:Lk0/cm;

    iget-object v14, v13, Lk0/cm;->D:[I

    iget v13, v13, Lk0/cm;->E:I

    rem-int/2addr v13, v4

    aget v13, v14, v13

    int-to-byte v13, v13

    aput-byte v13, v6, v7

    aput-byte v9, v6, v0

    aput-byte v12, v6, v1

    aput-byte v8, v6, v3

    invoke-static {v6}, Lk0/cm;->u3([B)V

    new-array v6, v11, [B

    aput-byte v10, v6, v5

    aput-byte v1, v6, v2

    aput-byte v5, v6, v4

    .line 19
    iget-object v10, p0, Lk0/cm$h;->a:Lk0/cm;

    iget-object v11, v10, Lk0/cm;->D:[I

    iget v10, v10, Lk0/cm;->E:I

    rem-int/2addr v10, v4

    aget v10, v11, v10

    int-to-byte v10, v10

    aput-byte v10, v6, v7

    aput-byte v9, v6, v0

    aput-byte v12, v6, v1

    aput-byte v8, v6, v3

    invoke-static {v6}, Lk0/cm;->u3([B)V

    goto/16 :goto_0

    :sswitch_a
    new-array v0, v1, [I

    .line 20
    fill-array-data v0, :array_9

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_b
    new-array v6, v11, [B

    aput-byte v10, v6, v5

    aput-byte v1, v6, v2

    aput-byte v5, v6, v4

    .line 21
    iget-object v12, p0, Lk0/cm$h;->a:Lk0/cm;

    iget-object v13, v12, Lk0/cm;->D:[I

    iget v12, v12, Lk0/cm;->E:I

    rem-int/2addr v12, v4

    aget v12, v13, v12

    int-to-byte v12, v12

    aput-byte v12, v6, v7

    aput-byte v9, v6, v0

    const/16 v12, 0x12

    aput-byte v12, v6, v1

    aput-byte v8, v6, v3

    invoke-static {v6}, Lk0/cm;->u3([B)V

    new-array v6, v11, [B

    aput-byte v10, v6, v5

    aput-byte v1, v6, v2

    aput-byte v5, v6, v4

    .line 22
    iget-object v13, p0, Lk0/cm$h;->a:Lk0/cm;

    iget-object v14, v13, Lk0/cm;->D:[I

    iget v13, v13, Lk0/cm;->E:I

    rem-int/2addr v13, v4

    aget v13, v14, v13

    int-to-byte v13, v13

    aput-byte v13, v6, v7

    aput-byte v9, v6, v0

    aput-byte v12, v6, v1

    aput-byte v8, v6, v3

    invoke-static {v6}, Lk0/cm;->u3([B)V

    new-array v6, v11, [B

    aput-byte v10, v6, v5

    aput-byte v1, v6, v2

    aput-byte v5, v6, v4

    .line 23
    iget-object v10, p0, Lk0/cm$h;->a:Lk0/cm;

    iget-object v11, v10, Lk0/cm;->D:[I

    iget v10, v10, Lk0/cm;->E:I

    rem-int/2addr v10, v4

    aget v10, v11, v10

    int-to-byte v10, v10

    aput-byte v10, v6, v7

    aput-byte v9, v6, v0

    aput-byte v12, v6, v1

    aput-byte v8, v6, v3

    invoke-static {v6}, Lk0/cm;->u3([B)V

    goto :goto_0

    :sswitch_c
    new-array v0, v1, [I

    .line 24
    fill-array-data v0, :array_a

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_d
    new-array v6, v11, [B

    aput-byte v10, v6, v5

    aput-byte v1, v6, v2

    aput-byte v5, v6, v4

    .line 25
    iget-object v12, p0, Lk0/cm$h;->a:Lk0/cm;

    iget-object v13, v12, Lk0/cm;->D:[I

    iget v12, v12, Lk0/cm;->E:I

    rem-int/2addr v12, v4

    aget v12, v13, v12

    int-to-byte v12, v12

    aput-byte v12, v6, v7

    aput-byte v9, v6, v0

    const/16 v12, 0x11

    aput-byte v12, v6, v1

    aput-byte v8, v6, v3

    invoke-static {v6}, Lk0/cm;->u3([B)V

    new-array v6, v11, [B

    aput-byte v10, v6, v5

    aput-byte v1, v6, v2

    aput-byte v5, v6, v4

    .line 26
    iget-object v13, p0, Lk0/cm$h;->a:Lk0/cm;

    iget-object v14, v13, Lk0/cm;->D:[I

    iget v13, v13, Lk0/cm;->E:I

    rem-int/2addr v13, v4

    aget v13, v14, v13

    int-to-byte v13, v13

    aput-byte v13, v6, v7

    aput-byte v9, v6, v0

    aput-byte v12, v6, v1

    aput-byte v8, v6, v3

    invoke-static {v6}, Lk0/cm;->u3([B)V

    new-array v6, v11, [B

    aput-byte v10, v6, v5

    aput-byte v1, v6, v2

    aput-byte v5, v6, v4

    .line 27
    iget-object v10, p0, Lk0/cm$h;->a:Lk0/cm;

    iget-object v11, v10, Lk0/cm;->D:[I

    iget v10, v10, Lk0/cm;->E:I

    rem-int/2addr v10, v4

    aget v10, v11, v10

    int-to-byte v10, v10

    aput-byte v10, v6, v7

    aput-byte v9, v6, v0

    aput-byte v12, v6, v1

    aput-byte v8, v6, v3

    invoke-static {v6}, Lk0/cm;->u3([B)V

    .line 28
    :goto_0
    iget-object v0, p0, Lk0/cm$h;->a:Lk0/cm;

    invoke-static {v0}, Lk0/cm;->j3(Lk0/cm;)Lo1/g0;

    move-result-object v1

    invoke-virtual {v1, v2, v5}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/cm;->k3(Lk0/cm;I)V

    .line 29
    iget-object v0, p0, Lk0/cm$h;->a:Lk0/cm;

    invoke-static {v0}, Lk0/cm;->j3(Lk0/cm;)Lo1/g0;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/cm;->l3(Lk0/cm;I)V

    .line 30
    iget-object v0, p0, Lk0/cm$h;->a:Lk0/cm;

    invoke-static {v0}, Lk0/cm;->j3(Lk0/cm;)Lo1/g0;

    move-result-object v1

    invoke-virtual {v1, v7, v2}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/cm;->m3(Lk0/cm;I)V

    goto :goto_1

    .line 31
    :cond_0
    iget-object v0, v0, Lk0/cm;->C:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 32
    iget-object v0, p0, Lk0/cm$h;->a:Lk0/cm;

    iput v3, v0, Lk0/cm;->A:I

    :cond_1
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1301c7 -> :sswitch_d
        0x1401c6 -> :sswitch_c
        0x1401c7 -> :sswitch_b
        0x1501c6 -> :sswitch_a
        0x1501c7 -> :sswitch_9
        0x1601c6 -> :sswitch_8
        0x1601c7 -> :sswitch_7
        0x1701c6 -> :sswitch_6
        0x1801c6 -> :sswitch_5
        0x1901c6 -> :sswitch_4
        0x1a01c6 -> :sswitch_3
        0x1b01c6 -> :sswitch_2
        0x9301c8 -> :sswitch_1
        0x9401c8 -> :sswitch_0
        0xae01c4 -> :sswitch_1
        0xd701c4 -> :sswitch_0
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
        0xc1
        0x2
        0x80
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0xc1
        0x2
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0xc1
        0x2
        0xa0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0xc1
        0x2
        0xe0
        0x0
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0xc1
        0x2
        0x20
        0x0
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0xc1
        0x2
        0x60
        0x0
    .end array-data

    :array_7
    .array-data 4
        0xe3
        0xc1
        0x2
        0x80
        0x0
    .end array-data

    :array_8
    .array-data 4
        0xe3
        0xc1
        0x2
        0xc0
        0x0
    .end array-data

    :array_9
    .array-data 4
        0xe3
        0xc1
        0x2
        0x0
        0x0
    .end array-data

    :array_a
    .array-data 4
        0xe3
        0xc1
        0x2
        0x40
        0x0
    .end array-data
.end method
