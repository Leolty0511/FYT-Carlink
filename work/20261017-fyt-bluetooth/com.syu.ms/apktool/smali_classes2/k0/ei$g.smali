.class public Lk0/ei$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ei;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ei;


# direct methods
.method public constructor <init>(Lk0/ei;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ei$g;->a:Lk0/ei;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget v0, Lk0/nt;->a:I

    const/4 v1, 0x4

    const/4 v2, 0x5

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    new-array v0, v2, [I

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_1
    new-array v0, v2, [I

    .line 3
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_2
    new-array v0, v2, [I

    .line 4
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_3
    new-array v0, v2, [I

    .line 5
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_4
    new-array v0, v1, [I

    .line 6
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_5
    new-array v0, v2, [I

    .line 7
    fill-array-data v0, :array_5

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_6
    new-array v0, v2, [I

    .line 8
    fill-array-data v0, :array_6

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_7
    new-array v0, v2, [I

    .line 9
    fill-array-data v0, :array_7

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_8
    new-array v0, v2, [I

    .line 10
    fill-array-data v0, :array_8

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_9
    new-array v0, v2, [I

    .line 11
    fill-array-data v0, :array_9

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_a
    new-array v0, v2, [I

    .line 12
    fill-array-data v0, :array_a

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_b
    new-array v0, v2, [I

    .line 13
    fill-array-data v0, :array_b

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_c
    new-array v0, v2, [I

    .line 14
    fill-array-data v0, :array_c

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_d
    new-array v0, v2, [I

    .line 15
    fill-array-data v0, :array_d

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_e
    new-array v0, v2, [I

    .line 16
    fill-array-data v0, :array_e

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_f
    new-array v0, v2, [I

    .line 17
    fill-array-data v0, :array_f

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_10
    new-array v0, v2, [I

    .line 18
    fill-array-data v0, :array_10

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_11
    new-array v0, v2, [I

    .line 19
    fill-array-data v0, :array_11

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_12
    new-array v0, v2, [I

    .line 20
    fill-array-data v0, :array_12

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_13
    new-array v0, v1, [I

    .line 21
    fill-array-data v0, :array_13

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_14
    new-array v0, v1, [I

    .line 22
    fill-array-data v0, :array_14

    invoke-static {v0}, Lz/k;->s([I)V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x201c8 -> :sswitch_14
        0x301c8 -> :sswitch_13
        0x401c4 -> :sswitch_12
        0x401c8 -> :sswitch_11
        0x501c4 -> :sswitch_10
        0x601c4 -> :sswitch_f
        0x1501c4 -> :sswitch_e
        0x3401c5 -> :sswitch_d
        0x3501c5 -> :sswitch_c
        0x3601c5 -> :sswitch_b
        0x4301b7 -> :sswitch_a
        0x4801c4 -> :sswitch_9
        0x4901c4 -> :sswitch_8
        0x7201b7 -> :sswitch_7
        0x7501c7 -> :sswitch_6
        0x7e01b7 -> :sswitch_5
        0x8601c8 -> :sswitch_4
        0x9a01c6 -> :sswitch_3
        0x9b01c6 -> :sswitch_2
        0xa801c4 -> :sswitch_7
        0xaf01b7 -> :sswitch_1
        0xaf01c4 -> :sswitch_0
        0xf501c7 -> :sswitch_11
    .end sparse-switch

    :array_0
    .array-data 4
        0xe3
        -0x12
        0x2
        0x3
        0x4
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x12
        0x2
        0x3
        0x8
    .end array-data

    :array_2
    .array-data 4
        0xe3
        -0x12
        0x2
        0x3
        0x13
    .end array-data

    :array_3
    .array-data 4
        0xe3
        -0x12
        0x2
        0x3
        0x12
    .end array-data

    :array_4
    .array-data 4
        0xe3
        -0x12
        0x1
        0x3
    .end array-data

    :array_5
    .array-data 4
        0xe3
        -0x12
        0x2
        0x3
        0x7
    .end array-data

    :array_6
    .array-data 4
        0xe3
        -0x12
        0x2
        0x3
        0x14
    .end array-data

    :array_7
    .array-data 4
        0xe3
        -0x12
        0x2
        0x3
        0x6
    .end array-data

    :array_8
    .array-data 4
        0xe3
        -0x12
        0x2
        0x3
        0xe
    .end array-data

    :array_9
    .array-data 4
        0xe3
        -0x12
        0x2
        0x3
        0xd
    .end array-data

    :array_a
    .array-data 4
        0xe3
        -0x12
        0x2
        0x3
        0x5
    .end array-data

    :array_b
    .array-data 4
        0xe3
        -0x12
        0x2
        0x3
        0x11
    .end array-data

    :array_c
    .array-data 4
        0xe3
        -0x12
        0x2
        0x3
        0xf
    .end array-data

    :array_d
    .array-data 4
        0xe3
        -0x12
        0x2
        0x3
        0x10
    .end array-data

    :array_e
    .array-data 4
        0xe3
        -0x12
        0x2
        0x3
        0xc
    .end array-data

    :array_f
    .array-data 4
        0xe3
        -0x12
        0x2
        0x3
        0xb
    .end array-data

    :array_10
    .array-data 4
        0xe3
        -0x12
        0x2
        0x3
        0xa
    .end array-data

    :array_11
    .array-data 4
        0xe3
        -0x12
        0x2
        0x3
        0x15
    .end array-data

    :array_12
    .array-data 4
        0xe3
        -0x12
        0x2
        0x3
        0x9
    .end array-data

    :array_13
    .array-data 4
        0xe3
        -0x12
        0x1
        0x1
    .end array-data

    :array_14
    .array-data 4
        0xe3
        -0x12
        0x1
        0x2
    .end array-data
.end method
