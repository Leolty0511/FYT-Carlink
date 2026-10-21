.class public Lk0/wl$h;
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
    iput-object p1, p0, Lk0/wl$h;->a:Lk0/wl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lk0/wl$h;->a:Lk0/wl;

    iget v1, v0, Lk0/wl;->w:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/wl;->w:I

    if-lez v1, :cond_1

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/4 v3, 0x0

    const/16 v4, 0xe3

    aput v4, v1, v3

    const/16 v5, 0x81

    aput v5, v1, v2

    const/4 v5, 0x2

    aput v2, v1, v5

    .line 2
    sget v6, Lu0/b;->a0:I

    const/4 v7, 0x3

    aput v6, v1, v7

    invoke-static {v1}, Lz/k;->s([I)V

    .line 3
    sget v1, Lu0/b;->a0:I

    if-ne v1, v2, :cond_2

    const/4 v1, 0x5

    new-array v6, v1, [I

    .line 4
    fill-array-data v6, :array_0

    invoke-static {v6}, Lz/k;->s([I)V

    .line 5
    iget-object v6, p0, Lk0/wl$h;->a:Lk0/wl;

    invoke-static {v6}, Lk0/wl;->g3(Lk0/wl;)Lo1/g0;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Lo1/g0;->b(II)I

    move-result v8

    invoke-static {v6, v8}, Lk0/wl;->h3(Lk0/wl;I)V

    .line 6
    iget-object v6, p0, Lk0/wl$h;->a:Lk0/wl;

    invoke-static {v6}, Lk0/wl;->g3(Lk0/wl;)Lo1/g0;

    move-result-object v8

    invoke-virtual {v8, v5, v3}, Lo1/g0;->b(II)I

    move-result v8

    invoke-static {v6, v8}, Lk0/wl;->i3(Lk0/wl;I)V

    .line 7
    sget v6, Lk0/nt;->W:I

    if-ne v6, v2, :cond_0

    move v6, v2

    goto :goto_0

    :cond_0
    move v6, v3

    .line 8
    :goto_0
    sget v8, Lk0/nt;->a:I

    sparse-switch v8, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    new-array v8, v1, [I

    .line 9
    fill-array-data v8, :array_1

    invoke-static {v8}, Lz/k;->s([I)V

    .line 10
    :goto_1
    sget v8, Lk0/nt;->a:I

    const/16 v9, 0xb4

    const/16 v10, 0xb3

    const/16 v11, 0xe2

    sparse-switch v8, :sswitch_data_1

    goto/16 :goto_2

    :sswitch_1
    new-array v1, v1, [I

    aput v4, v1, v3

    aput v11, v1, v2

    aput v5, v1, v5

    aput v9, v1, v7

    aput v6, v1, v0

    .line 11
    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_2

    :sswitch_2
    new-array v1, v1, [I

    aput v4, v1, v3

    aput v11, v1, v2

    aput v5, v1, v5

    aput v10, v1, v7

    aput v6, v1, v0

    .line 12
    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_2

    :sswitch_3
    new-array v1, v1, [I

    aput v4, v1, v3

    aput v11, v1, v2

    aput v5, v1, v5

    const/16 v2, 0xb2

    aput v2, v1, v7

    aput v6, v1, v0

    .line 13
    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_2

    :sswitch_4
    new-array v1, v1, [I

    aput v4, v1, v3

    aput v11, v1, v2

    aput v5, v1, v5

    const/16 v2, 0xb1

    aput v2, v1, v7

    aput v6, v1, v0

    .line 14
    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_2

    :sswitch_5
    new-array v1, v1, [I

    aput v4, v1, v3

    aput v11, v1, v2

    aput v5, v1, v5

    const/16 v2, 0xb0

    aput v2, v1, v7

    aput v6, v1, v0

    .line 15
    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_2

    :sswitch_6
    new-array v1, v1, [I

    aput v4, v1, v3

    aput v11, v1, v2

    aput v5, v1, v5

    const/16 v2, 0xa6

    aput v2, v1, v7

    aput v6, v1, v0

    .line 16
    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_2

    :sswitch_7
    new-array v1, v1, [I

    aput v4, v1, v3

    aput v11, v1, v2

    aput v5, v1, v5

    const/16 v2, 0xa5

    aput v2, v1, v7

    aput v6, v1, v0

    .line 17
    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_2

    :sswitch_8
    new-array v1, v1, [I

    aput v4, v1, v3

    aput v11, v1, v2

    aput v5, v1, v5

    const/16 v2, 0xa4

    aput v2, v1, v7

    aput v6, v1, v0

    .line 18
    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_2

    :sswitch_9
    new-array v1, v1, [I

    aput v4, v1, v3

    aput v11, v1, v2

    aput v5, v1, v5

    const/16 v2, 0xa3

    aput v2, v1, v7

    aput v6, v1, v0

    .line 19
    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_2

    :sswitch_a
    new-array v1, v1, [I

    aput v4, v1, v3

    aput v11, v1, v2

    aput v5, v1, v5

    const/16 v2, 0xa2

    aput v2, v1, v7

    aput v6, v1, v0

    .line 20
    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_2

    :sswitch_b
    new-array v1, v1, [I

    aput v4, v1, v3

    aput v11, v1, v2

    aput v5, v1, v5

    const/16 v2, 0xa1

    aput v2, v1, v7

    aput v6, v1, v0

    .line 21
    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_2

    :sswitch_c
    new-array v1, v1, [I

    aput v4, v1, v3

    aput v11, v1, v2

    aput v5, v1, v5

    const/16 v2, 0xa0

    aput v2, v1, v7

    aput v6, v1, v0

    .line 22
    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_2

    :sswitch_d
    new-array v1, v1, [I

    aput v4, v1, v3

    aput v11, v1, v2

    aput v5, v1, v5

    const/16 v2, 0x93

    aput v2, v1, v7

    aput v6, v1, v0

    .line 23
    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_2

    :sswitch_e
    new-array v1, v1, [I

    aput v4, v1, v3

    aput v11, v1, v2

    aput v5, v1, v5

    const/16 v2, 0x92

    aput v2, v1, v7

    aput v6, v1, v0

    .line 24
    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_2

    :sswitch_f
    new-array v1, v1, [I

    aput v4, v1, v3

    aput v11, v1, v2

    aput v5, v1, v5

    const/16 v2, 0x91

    aput v2, v1, v7

    aput v6, v1, v0

    .line 25
    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_2

    :sswitch_10
    new-array v1, v1, [I

    aput v4, v1, v3

    aput v11, v1, v2

    aput v5, v1, v5

    const/16 v2, 0x90

    aput v2, v1, v7

    aput v6, v1, v0

    .line 26
    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_2

    :sswitch_11
    new-array v1, v1, [I

    aput v4, v1, v3

    aput v11, v1, v2

    aput v5, v1, v5

    aput v9, v1, v7

    aput v6, v1, v0

    .line 27
    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_2

    :sswitch_12
    new-array v1, v1, [I

    aput v4, v1, v3

    aput v11, v1, v2

    aput v5, v1, v5

    aput v10, v1, v7

    aput v6, v1, v0

    .line 28
    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_2

    :sswitch_13
    new-array v1, v1, [I

    aput v4, v1, v3

    aput v11, v1, v2

    aput v5, v1, v5

    const/16 v2, 0x31

    aput v2, v1, v7

    aput v6, v1, v0

    .line 29
    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_2

    :sswitch_14
    new-array v1, v1, [I

    aput v4, v1, v3

    aput v11, v1, v2

    aput v5, v1, v5

    const/16 v2, 0x30

    aput v2, v1, v7

    aput v6, v1, v0

    .line 30
    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_2

    :sswitch_15
    new-array v1, v1, [I

    aput v4, v1, v3

    aput v11, v1, v2

    aput v5, v1, v5

    const/16 v2, 0x21

    aput v2, v1, v7

    aput v6, v1, v0

    .line 31
    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_2

    :sswitch_16
    new-array v1, v1, [I

    aput v4, v1, v3

    aput v11, v1, v2

    aput v5, v1, v5

    const/16 v2, 0x20

    aput v2, v1, v7

    aput v6, v1, v0

    .line 32
    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_2

    :sswitch_17
    new-array v1, v1, [I

    aput v4, v1, v3

    aput v11, v1, v2

    aput v5, v1, v5

    const/16 v2, 0x11

    aput v2, v1, v7

    aput v6, v1, v0

    .line 33
    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_2

    :sswitch_18
    new-array v1, v1, [I

    aput v4, v1, v3

    aput v11, v1, v2

    aput v5, v1, v5

    const/16 v2, 0x10

    aput v2, v1, v7

    aput v6, v1, v0

    .line 34
    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_2

    :sswitch_19
    new-array v1, v1, [I

    aput v4, v1, v3

    aput v11, v1, v2

    aput v5, v1, v5

    aput v2, v1, v7

    aput v6, v1, v0

    .line 35
    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_2

    :sswitch_1a
    new-array v1, v1, [I

    aput v4, v1, v3

    aput v11, v1, v2

    aput v5, v1, v5

    aput v3, v1, v7

    aput v6, v1, v0

    .line 36
    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_2

    :sswitch_1b
    new-array v1, v1, [I

    aput v4, v1, v3

    aput v11, v1, v2

    aput v5, v1, v5

    const/16 v2, 0xd1

    aput v2, v1, v7

    aput v6, v1, v0

    .line 37
    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_2

    :sswitch_1c
    new-array v1, v1, [I

    aput v4, v1, v3

    aput v11, v1, v2

    aput v5, v1, v5

    const/16 v2, 0xd0

    aput v2, v1, v7

    aput v6, v1, v0

    .line 38
    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_2

    .line 39
    :cond_1
    iget-object v0, v0, Lk0/wl;->y:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 40
    iget-object v0, p0, Lk0/wl$h;->a:Lk0/wl;

    const/4 v1, 0x6

    iput v1, v0, Lk0/wl;->w:I

    :cond_2
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1e01c6 -> :sswitch_0
        0x1f01c6 -> :sswitch_0
        0x2001c6 -> :sswitch_0
        0x2101c6 -> :sswitch_0
        0x2201c6 -> :sswitch_0
        0x2301c6 -> :sswitch_0
        0x2401c6 -> :sswitch_0
        0x2501c6 -> :sswitch_0
        0x6101c5 -> :sswitch_0
        0x6201c5 -> :sswitch_0
        0x6301c5 -> :sswitch_0
        0x6401c5 -> :sswitch_0
        0x6501c5 -> :sswitch_0
        0x6601c5 -> :sswitch_0
        0x6701c5 -> :sswitch_0
        0x6801c5 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x901c7 -> :sswitch_1c
        0xa01c7 -> :sswitch_1b
        0x1e01c6 -> :sswitch_1a
        0x1f01c6 -> :sswitch_19
        0x2001c6 -> :sswitch_18
        0x2101c6 -> :sswitch_17
        0x2201c6 -> :sswitch_16
        0x2301c6 -> :sswitch_15
        0x2401c6 -> :sswitch_14
        0x2501c6 -> :sswitch_13
        0x3901c8 -> :sswitch_12
        0x3a01c8 -> :sswitch_11
        0x6101c5 -> :sswitch_1a
        0x6201c5 -> :sswitch_19
        0x6301c5 -> :sswitch_18
        0x6401c5 -> :sswitch_17
        0x6501c5 -> :sswitch_16
        0x6601c5 -> :sswitch_15
        0x6701c5 -> :sswitch_14
        0x6801c5 -> :sswitch_13
        0x6901c5 -> :sswitch_10
        0x6a01c5 -> :sswitch_f
        0x6b01c5 -> :sswitch_e
        0x6c01c5 -> :sswitch_d
        0x6d01c5 -> :sswitch_c
        0x6e01c5 -> :sswitch_b
        0x6f01c5 -> :sswitch_a
        0x7001c5 -> :sswitch_9
        0x7101c5 -> :sswitch_8
        0x7201c5 -> :sswitch_7
        0x7301c5 -> :sswitch_6
        0x7401c5 -> :sswitch_5
        0x7501c5 -> :sswitch_4
        0x7601c5 -> :sswitch_3
        0x7701c5 -> :sswitch_2
        0x7801c5 -> :sswitch_1
    .end sparse-switch

    :array_0
    .array-data 4
        0xe3
        0x90
        0x2
        0x32
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x84
        0x2
        0x8
        0x1
    .end array-data
.end method
