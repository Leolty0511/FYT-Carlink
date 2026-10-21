.class public Lmodule/canbus/t$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/t;


# direct methods
.method public constructor <init>(Lmodule/canbus/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/t$c;->a:Lmodule/canbus/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lmodule/canbus/t$c;->a:Lmodule/canbus/t;

    iget-byte v1, v0, Lmodule/canbus/t;->k:B

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Lmodule/canbus/t;->k:B

    const/4 v3, 0x5

    if-lez v1, :cond_3

    .line 2
    sget v0, Lk0/nt;->c:I

    const/4 v1, 0x2

    const/4 v4, 0x6

    if-eq v0, v1, :cond_1

    if-eq v0, v3, :cond_0

    if-eq v0, v4, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    new-array v0, v3, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_0
    new-array v0, v3, [I

    .line 4
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_1
    new-array v0, v3, [I

    .line 5
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_2
    new-array v0, v3, [I

    .line 6
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_3
    new-array v0, v3, [I

    .line 7
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_4
    new-array v0, v3, [I

    .line 8
    fill-array-data v0, :array_5

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_5
    new-array v0, v3, [I

    .line 9
    fill-array-data v0, :array_6

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_6
    new-array v0, v3, [I

    .line 10
    fill-array-data v0, :array_7

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_7
    new-array v0, v3, [I

    .line 11
    fill-array-data v0, :array_8

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_8
    new-array v0, v3, [I

    .line 12
    fill-array-data v0, :array_9

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_9
    new-array v0, v3, [I

    .line 13
    fill-array-data v0, :array_a

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_a
    new-array v0, v3, [I

    .line 14
    fill-array-data v0, :array_b

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_b
    new-array v0, v3, [I

    .line 15
    fill-array-data v0, :array_c

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_c
    new-array v0, v3, [I

    .line 16
    fill-array-data v0, :array_d

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_d
    new-array v0, v3, [I

    .line 17
    fill-array-data v0, :array_e

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_e
    new-array v0, v3, [I

    .line 18
    fill-array-data v0, :array_f

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_f
    new-array v0, v3, [I

    .line 19
    fill-array-data v0, :array_10

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_10
    new-array v0, v3, [I

    .line 20
    fill-array-data v0, :array_11

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_11
    new-array v0, v3, [I

    .line 21
    fill-array-data v0, :array_12

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_12
    new-array v0, v3, [I

    .line 22
    fill-array-data v0, :array_13

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_13
    new-array v0, v3, [I

    .line 23
    fill-array-data v0, :array_14

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_14
    new-array v0, v3, [I

    .line 24
    fill-array-data v0, :array_15

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_15
    new-array v0, v3, [I

    .line 25
    fill-array-data v0, :array_16

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_0
    new-array v0, v3, [I

    .line 26
    fill-array-data v0, :array_17

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    :pswitch_16
    new-array v0, v3, [I

    .line 27
    fill-array-data v0, :array_18

    invoke-static {v0}, Lz/k;->s([I)V

    .line 28
    :goto_0
    :pswitch_17
    sget v0, Lu0/b;->a0:I

    if-ne v0, v2, :cond_4

    .line 29
    sget v0, Lk0/nt;->a:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    .line 30
    :sswitch_0
    invoke-static {}, Lo1/u;->a0()Z

    move-result v0

    if-eqz v0, :cond_2

    new-array v0, v4, [I

    .line 31
    fill-array-data v0, :array_19

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_2
    new-array v0, v4, [I

    .line 32
    fill-array-data v0, :array_1a

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    .line 33
    :cond_3
    invoke-static {v0}, Lmodule/canbus/t;->l3(Lmodule/canbus/t;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 34
    iget-object v0, p0, Lmodule/canbus/t$c;->a:Lmodule/canbus/t;

    iput-byte v3, v0, Lmodule/canbus/t;->k:B

    :cond_4
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_15
        :pswitch_14
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_12
        :pswitch_16
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x210140 -> :sswitch_0
        0x260140 -> :sswitch_0
        0x2c0140 -> :sswitch_0
        0x2d0140 -> :sswitch_0
        0x2e0140 -> :sswitch_0
        0x2f0140 -> :sswitch_0
    .end sparse-switch

    :array_0
    .array-data 4
        0xe3
        0x2
        0x24
        0x2
        0x11
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x2
        0x24
        0x46
        0x11
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x2
        0x24
        0x45
        0x11
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x2
        0x24
        0x44
        0x11
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0x2
        0x24
        0x43
        0x11
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0x2
        0x24
        0x42
        0x11
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0x2
        0x24
        0x14
        0x11
    .end array-data

    :array_7
    .array-data 4
        0xe3
        0x2
        0x24
        0x16
        0x11
    .end array-data

    :array_8
    .array-data 4
        0xe3
        0x2
        0x24
        0x11
        0x11
    .end array-data

    :array_9
    .array-data 4
        0xe3
        0x2
        0x24
        0x41
        0x11
    .end array-data

    :array_a
    .array-data 4
        0xe3
        0x2
        0x24
        0x13
        0x11
    .end array-data

    :array_b
    .array-data 4
        0xe3
        0x2
        0x24
        0x12
        0x11
    .end array-data

    :array_c
    .array-data 4
        0xe3
        0x2
        0x24
        0x40
        0x11
    .end array-data

    :array_d
    .array-data 4
        0xe3
        0x2
        0x24
        0x10
        0x11
    .end array-data

    :array_e
    .array-data 4
        0xe3
        0x2
        0x24
        0xf
        0x11
    .end array-data

    :array_f
    .array-data 4
        0xe3
        0x2
        0x24
        0x7
        0x11
    .end array-data

    :array_10
    .array-data 4
        0xe3
        0x2
        0x24
        0xc
        0x11
    .end array-data

    :array_11
    .array-data 4
        0xe3
        0x2
        0x24
        0xd
        0x11
    .end array-data

    :array_12
    .array-data 4
        0xe3
        0x2
        0x24
        0x3
        0x11
    .end array-data

    :array_13
    .array-data 4
        0xe3
        0x2
        0x24
        0x1
        0x11
    .end array-data

    :array_14
    .array-data 4
        0xe3
        0x2
        0x24
        0xa
        0x11
    .end array-data

    :array_15
    .array-data 4
        0xe3
        0x2
        0x24
        0x9
        0x11
    .end array-data

    :array_16
    .array-data 4
        0xe3
        0x2
        0x24
        0x8
        0x11
    .end array-data

    :array_17
    .array-data 4
        0xe3
        0x2
        0x24
        0x15
        0x11
    .end array-data

    :array_18
    .array-data 4
        0xe3
        0x2
        0x24
        0x5
        0x11
    .end array-data

    :array_19
    .array-data 4
        0xe3
        0x3
        -0x60
        0x0
        0x1
        0x0
    .end array-data

    :array_1a
    .array-data 4
        0xe3
        0x3
        -0x60
        0x0
        0x0
        0x0
    .end array-data
.end method
