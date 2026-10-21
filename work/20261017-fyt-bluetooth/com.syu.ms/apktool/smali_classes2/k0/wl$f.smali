.class public Lk0/wl$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/wl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/wl;


# direct methods
.method public constructor <init>(Lk0/wl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/wl$f;->a:Lk0/wl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1
    sget v0, Lk0/nt;->W:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2
    :goto_0
    sget v3, Lk0/nt;->a:I

    const/16 v4, 0xb4

    const/16 v5, 0xb3

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/16 v8, 0xe2

    const/16 v9, 0xe3

    const/4 v10, 0x5

    const/4 v11, 0x2

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    new-array v3, v10, [I

    aput v9, v3, v1

    aput v8, v3, v2

    aput v11, v3, v11

    aput v4, v3, v7

    aput v0, v3, v6

    .line 3
    invoke-static {v3}, Lz/k;->s([I)V

    goto/16 :goto_1

    :sswitch_1
    new-array v3, v10, [I

    aput v9, v3, v1

    aput v8, v3, v2

    aput v11, v3, v11

    aput v5, v3, v7

    aput v0, v3, v6

    .line 4
    invoke-static {v3}, Lz/k;->s([I)V

    goto/16 :goto_1

    :sswitch_2
    new-array v3, v10, [I

    aput v9, v3, v1

    aput v8, v3, v2

    aput v11, v3, v11

    const/16 v1, 0xb2

    aput v1, v3, v7

    aput v0, v3, v6

    .line 5
    invoke-static {v3}, Lz/k;->s([I)V

    goto/16 :goto_1

    :sswitch_3
    new-array v3, v10, [I

    aput v9, v3, v1

    aput v8, v3, v2

    aput v11, v3, v11

    const/16 v1, 0xb1

    aput v1, v3, v7

    aput v0, v3, v6

    .line 6
    invoke-static {v3}, Lz/k;->s([I)V

    goto/16 :goto_1

    :sswitch_4
    new-array v3, v10, [I

    aput v9, v3, v1

    aput v8, v3, v2

    aput v11, v3, v11

    const/16 v1, 0xb0

    aput v1, v3, v7

    aput v0, v3, v6

    .line 7
    invoke-static {v3}, Lz/k;->s([I)V

    goto/16 :goto_1

    :sswitch_5
    new-array v3, v10, [I

    aput v9, v3, v1

    aput v8, v3, v2

    aput v11, v3, v11

    const/16 v1, 0xa6

    aput v1, v3, v7

    aput v0, v3, v6

    .line 8
    invoke-static {v3}, Lz/k;->s([I)V

    goto/16 :goto_1

    :sswitch_6
    new-array v3, v10, [I

    aput v9, v3, v1

    aput v8, v3, v2

    aput v11, v3, v11

    const/16 v1, 0xa5

    aput v1, v3, v7

    aput v0, v3, v6

    .line 9
    invoke-static {v3}, Lz/k;->s([I)V

    goto/16 :goto_1

    :sswitch_7
    new-array v3, v10, [I

    aput v9, v3, v1

    aput v8, v3, v2

    aput v11, v3, v11

    const/16 v1, 0xa4

    aput v1, v3, v7

    aput v0, v3, v6

    .line 10
    invoke-static {v3}, Lz/k;->s([I)V

    goto/16 :goto_1

    :sswitch_8
    new-array v3, v10, [I

    aput v9, v3, v1

    aput v8, v3, v2

    aput v11, v3, v11

    const/16 v1, 0xa3

    aput v1, v3, v7

    aput v0, v3, v6

    .line 11
    invoke-static {v3}, Lz/k;->s([I)V

    goto/16 :goto_1

    :sswitch_9
    new-array v3, v10, [I

    aput v9, v3, v1

    aput v8, v3, v2

    aput v11, v3, v11

    const/16 v1, 0xa2

    aput v1, v3, v7

    aput v0, v3, v6

    .line 12
    invoke-static {v3}, Lz/k;->s([I)V

    goto/16 :goto_1

    :sswitch_a
    new-array v3, v10, [I

    aput v9, v3, v1

    aput v8, v3, v2

    aput v11, v3, v11

    const/16 v1, 0xa1

    aput v1, v3, v7

    aput v0, v3, v6

    .line 13
    invoke-static {v3}, Lz/k;->s([I)V

    goto/16 :goto_1

    :sswitch_b
    new-array v3, v10, [I

    aput v9, v3, v1

    aput v8, v3, v2

    aput v11, v3, v11

    const/16 v1, 0xa0

    aput v1, v3, v7

    aput v0, v3, v6

    .line 14
    invoke-static {v3}, Lz/k;->s([I)V

    goto/16 :goto_1

    :sswitch_c
    new-array v3, v10, [I

    aput v9, v3, v1

    aput v8, v3, v2

    aput v11, v3, v11

    const/16 v1, 0x93

    aput v1, v3, v7

    aput v0, v3, v6

    .line 15
    invoke-static {v3}, Lz/k;->s([I)V

    goto/16 :goto_1

    :sswitch_d
    new-array v3, v10, [I

    aput v9, v3, v1

    aput v8, v3, v2

    aput v11, v3, v11

    const/16 v1, 0x92

    aput v1, v3, v7

    aput v0, v3, v6

    .line 16
    invoke-static {v3}, Lz/k;->s([I)V

    goto/16 :goto_1

    :sswitch_e
    new-array v3, v10, [I

    aput v9, v3, v1

    aput v8, v3, v2

    aput v11, v3, v11

    const/16 v1, 0x91

    aput v1, v3, v7

    aput v0, v3, v6

    .line 17
    invoke-static {v3}, Lz/k;->s([I)V

    goto/16 :goto_1

    :sswitch_f
    new-array v3, v10, [I

    aput v9, v3, v1

    aput v8, v3, v2

    aput v11, v3, v11

    const/16 v1, 0x90

    aput v1, v3, v7

    aput v0, v3, v6

    .line 18
    invoke-static {v3}, Lz/k;->s([I)V

    goto/16 :goto_1

    :sswitch_10
    new-array v3, v10, [I

    aput v9, v3, v1

    aput v8, v3, v2

    aput v11, v3, v11

    aput v4, v3, v7

    aput v0, v3, v6

    .line 19
    invoke-static {v3}, Lz/k;->s([I)V

    goto/16 :goto_1

    :sswitch_11
    new-array v3, v10, [I

    aput v9, v3, v1

    aput v8, v3, v2

    aput v11, v3, v11

    aput v5, v3, v7

    aput v0, v3, v6

    .line 20
    invoke-static {v3}, Lz/k;->s([I)V

    goto/16 :goto_1

    :sswitch_12
    new-array v3, v10, [I

    aput v9, v3, v1

    aput v8, v3, v2

    aput v11, v3, v11

    const/16 v1, 0x31

    aput v1, v3, v7

    aput v0, v3, v6

    .line 21
    invoke-static {v3}, Lz/k;->s([I)V

    goto/16 :goto_1

    :sswitch_13
    new-array v3, v10, [I

    aput v9, v3, v1

    aput v8, v3, v2

    aput v11, v3, v11

    const/16 v1, 0x30

    aput v1, v3, v7

    aput v0, v3, v6

    .line 22
    invoke-static {v3}, Lz/k;->s([I)V

    goto/16 :goto_1

    :sswitch_14
    new-array v3, v10, [I

    aput v9, v3, v1

    aput v8, v3, v2

    aput v11, v3, v11

    const/16 v1, 0x21

    aput v1, v3, v7

    aput v0, v3, v6

    .line 23
    invoke-static {v3}, Lz/k;->s([I)V

    goto/16 :goto_1

    :sswitch_15
    new-array v3, v10, [I

    aput v9, v3, v1

    aput v8, v3, v2

    aput v11, v3, v11

    const/16 v1, 0x20

    aput v1, v3, v7

    aput v0, v3, v6

    .line 24
    invoke-static {v3}, Lz/k;->s([I)V

    goto :goto_1

    :sswitch_16
    new-array v3, v10, [I

    aput v9, v3, v1

    aput v8, v3, v2

    aput v11, v3, v11

    const/16 v1, 0x11

    aput v1, v3, v7

    aput v0, v3, v6

    .line 25
    invoke-static {v3}, Lz/k;->s([I)V

    goto :goto_1

    :sswitch_17
    new-array v3, v10, [I

    aput v9, v3, v1

    aput v8, v3, v2

    aput v11, v3, v11

    const/16 v1, 0x10

    aput v1, v3, v7

    aput v0, v3, v6

    .line 26
    invoke-static {v3}, Lz/k;->s([I)V

    goto :goto_1

    :sswitch_18
    new-array v3, v10, [I

    aput v9, v3, v1

    aput v8, v3, v2

    aput v11, v3, v11

    aput v2, v3, v7

    aput v0, v3, v6

    .line 27
    invoke-static {v3}, Lz/k;->s([I)V

    goto :goto_1

    :sswitch_19
    new-array v3, v10, [I

    aput v9, v3, v1

    aput v8, v3, v2

    aput v11, v3, v11

    aput v1, v3, v7

    aput v0, v3, v6

    .line 28
    invoke-static {v3}, Lz/k;->s([I)V

    goto :goto_1

    :sswitch_1a
    new-array v3, v10, [I

    aput v9, v3, v1

    aput v8, v3, v2

    aput v11, v3, v11

    const/16 v1, 0xd1

    aput v1, v3, v7

    aput v0, v3, v6

    .line 29
    invoke-static {v3}, Lz/k;->s([I)V

    goto :goto_1

    :sswitch_1b
    new-array v3, v10, [I

    aput v9, v3, v1

    aput v8, v3, v2

    aput v11, v3, v11

    const/16 v1, 0xd0

    aput v1, v3, v7

    aput v0, v3, v6

    .line 30
    invoke-static {v3}, Lz/k;->s([I)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x901c7 -> :sswitch_1b
        0xa01c7 -> :sswitch_1a
        0x1e01c6 -> :sswitch_19
        0x1f01c6 -> :sswitch_18
        0x2001c6 -> :sswitch_17
        0x2101c6 -> :sswitch_16
        0x2201c6 -> :sswitch_15
        0x2301c6 -> :sswitch_14
        0x2401c6 -> :sswitch_13
        0x2501c6 -> :sswitch_12
        0x3901c8 -> :sswitch_11
        0x3a01c8 -> :sswitch_10
        0x6101c5 -> :sswitch_19
        0x6201c5 -> :sswitch_18
        0x6301c5 -> :sswitch_17
        0x6401c5 -> :sswitch_16
        0x6501c5 -> :sswitch_15
        0x6601c5 -> :sswitch_14
        0x6701c5 -> :sswitch_13
        0x6801c5 -> :sswitch_12
        0x6901c5 -> :sswitch_f
        0x6a01c5 -> :sswitch_e
        0x6b01c5 -> :sswitch_d
        0x6c01c5 -> :sswitch_c
        0x6d01c5 -> :sswitch_b
        0x6e01c5 -> :sswitch_a
        0x6f01c5 -> :sswitch_9
        0x7001c5 -> :sswitch_8
        0x7101c5 -> :sswitch_7
        0x7201c5 -> :sswitch_6
        0x7301c5 -> :sswitch_5
        0x7401c5 -> :sswitch_4
        0x7501c5 -> :sswitch_3
        0x7601c5 -> :sswitch_2
        0x7701c5 -> :sswitch_1
        0x7801c5 -> :sswitch_0
    .end sparse-switch
.end method
