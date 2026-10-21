.class public Lk0/oo$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/oo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/oo;


# direct methods
.method public constructor <init>(Lk0/oo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/oo$j;->a:Lk0/oo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lk0/oo$j;->a:Lk0/oo;

    iget v1, v0, Lk0/oo;->w:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/oo;->w:I

    if-lez v1, :cond_0

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/16 v3, 0xe3

    const/4 v4, 0x0

    aput v3, v1, v4

    const/16 v3, 0x81

    aput v3, v1, v2

    const/4 v3, 0x2

    aput v2, v1, v3

    const/4 v3, 0x3

    .line 2
    sget v5, Lu0/b;->a0:I

    aput v5, v1, v3

    invoke-static {v1}, Lz/k;->s([I)V

    .line 3
    sget v1, Lu0/b;->a0:I

    if-ne v1, v2, :cond_1

    .line 4
    iget-object v1, p0, Lk0/oo$j;->a:Lk0/oo;

    invoke-static {v1}, Lk0/oo;->f3(Lk0/oo;)Lo1/g0;

    move-result-object v3

    invoke-virtual {v3, v2, v4}, Lo1/g0;->b(II)I

    move-result v2

    invoke-static {v1, v2}, Lk0/oo;->g3(Lk0/oo;I)V

    .line 5
    sget v1, Lk0/nt;->a:I

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    new-array v0, v0, [I

    .line 6
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_1
    new-array v0, v0, [I

    .line 7
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_2
    new-array v0, v0, [I

    .line 8
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_3
    new-array v0, v0, [I

    .line 9
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_4
    new-array v0, v0, [I

    .line 10
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_5
    new-array v0, v0, [I

    .line 11
    fill-array-data v0, :array_5

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_6
    new-array v0, v0, [I

    .line 12
    fill-array-data v0, :array_6

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_7
    new-array v0, v0, [I

    .line 13
    fill-array-data v0, :array_7

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_8
    new-array v0, v0, [I

    .line 14
    fill-array-data v0, :array_8

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_9
    new-array v0, v0, [I

    .line 15
    fill-array-data v0, :array_9

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_a
    new-array v0, v0, [I

    .line 16
    fill-array-data v0, :array_a

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_b
    new-array v0, v0, [I

    .line 17
    fill-array-data v0, :array_b

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_c
    new-array v0, v0, [I

    .line 18
    fill-array-data v0, :array_c

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_d
    new-array v0, v0, [I

    .line 19
    fill-array-data v0, :array_d

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_e
    new-array v0, v0, [I

    .line 20
    fill-array-data v0, :array_e

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_f
    new-array v0, v0, [I

    .line 21
    fill-array-data v0, :array_f

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_10
    new-array v0, v0, [I

    .line 22
    fill-array-data v0, :array_10

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_11
    new-array v0, v0, [I

    .line 23
    fill-array-data v0, :array_11

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_12
    new-array v0, v0, [I

    .line 24
    fill-array-data v0, :array_12

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_13
    new-array v0, v0, [I

    .line 25
    fill-array-data v0, :array_13

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_14
    new-array v0, v0, [I

    .line 26
    fill-array-data v0, :array_14

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_15
    new-array v0, v0, [I

    .line 27
    fill-array-data v0, :array_15

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_16
    new-array v0, v0, [I

    .line 28
    fill-array-data v0, :array_16

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, v0, Lk0/oo;->y:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 30
    iget-object v0, p0, Lk0/oo$j;->a:Lk0/oo;

    const/4 v1, 0x5

    iput v1, v0, Lk0/oo;->w:I

    :cond_1
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1801c4 -> :sswitch_16
        0x1901c4 -> :sswitch_15
        0x1a01c4 -> :sswitch_14
        0x1b01c4 -> :sswitch_13
        0x1c01c4 -> :sswitch_12
        0x1d01c4 -> :sswitch_11
        0x1e01c4 -> :sswitch_10
        0x1f01c4 -> :sswitch_f
        0x3d01c4 -> :sswitch_e
        0x3e01c4 -> :sswitch_d
        0x3f01c4 -> :sswitch_c
        0x4d01c4 -> :sswitch_b
        0x4e01c4 -> :sswitch_a
        0x6801c7 -> :sswitch_9
        0x6901c7 -> :sswitch_8
        0x6a01c7 -> :sswitch_7
        0x6b01c7 -> :sswitch_6
        0x6c01c7 -> :sswitch_5
        0x9e01c7 -> :sswitch_4
        0xb101c7 -> :sswitch_3
        0xb201c7 -> :sswitch_2
        0xb301c7 -> :sswitch_1
        0xb401c7 -> :sswitch_0
    .end sparse-switch

    :array_0
    .array-data 4
        0xe3
        0xe2
        0x1
        0x12
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xe2
        0x1
        0x11
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0xe2
        0x1
        0x10
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0xe2
        0x1
        0xf
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0xe2
        0x1
        0x22
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0xe2
        0x1
        0xe
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0xe2
        0x1
        0x21
    .end array-data

    :array_7
    .array-data 4
        0xe3
        0xe2
        0x1
        0x20
    .end array-data

    :array_8
    .array-data 4
        0xe3
        0xe2
        0x1
        0x16
    .end array-data

    :array_9
    .array-data 4
        0xe3
        0xe2
        0x1
        0x15
    .end array-data

    :array_a
    .array-data 4
        0xe3
        0xe2
        0x1
        0xd
    .end array-data

    :array_b
    .array-data 4
        0xe3
        0xe2
        0x1
        0xc
    .end array-data

    :array_c
    .array-data 4
        0xe3
        0xe2
        0x1
        0xb
    .end array-data

    :array_d
    .array-data 4
        0xe3
        0xe2
        0x1
        0xa
    .end array-data

    :array_e
    .array-data 4
        0xe3
        0xe2
        0x1
        0x9
    .end array-data

    :array_f
    .array-data 4
        0xe3
        0xe2
        0x1
        0x8
    .end array-data

    :array_10
    .array-data 4
        0xe3
        0xe2
        0x1
        0x7
    .end array-data

    :array_11
    .array-data 4
        0xe3
        0xe2
        0x1
        0x6
    .end array-data

    :array_12
    .array-data 4
        0xe3
        0xe2
        0x1
        0x5
    .end array-data

    :array_13
    .array-data 4
        0xe3
        0xe2
        0x1
        0x4
    .end array-data

    :array_14
    .array-data 4
        0xe3
        0xe2
        0x1
        0x3
    .end array-data

    :array_15
    .array-data 4
        0xe3
        0xe2
        0x1
        0x2
    .end array-data

    :array_16
    .array-data 4
        0xe3
        0xe2
        0x1
        0x1
    .end array-data
.end method
