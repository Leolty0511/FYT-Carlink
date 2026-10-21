.class public Lk0/b9$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/b9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/b9;


# direct methods
.method public constructor <init>(Lk0/b9;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/b9$c;->a:Lk0/b9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    new-instance v0, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 3
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 4
    iget v3, v0, Landroid/text/format/Time;->year:I

    add-int/lit16 v3, v3, -0x7d0

    int-to-byte v3, v3

    .line 5
    iget v4, v0, Landroid/text/format/Time;->month:I

    add-int/2addr v4, v2

    int-to-byte v4, v4

    .line 6
    iget v5, v0, Landroid/text/format/Time;->monthDay:I

    int-to-byte v5, v5

    .line 7
    iget v6, v0, Landroid/text/format/Time;->hour:I

    int-to-byte v6, v6

    .line 8
    iget v0, v0, Landroid/text/format/Time;->minute:I

    int-to-byte v0, v0

    const/16 v7, 0x8

    new-array v7, v7, [I

    const/4 v8, 0x0

    const/16 v9, 0xe3

    aput v9, v7, v8

    const/16 v8, -0x5a

    aput v8, v7, v2

    const/4 v2, 0x2

    const/4 v8, 0x5

    aput v8, v7, v2

    const/4 v2, 0x3

    aput v3, v7, v2

    const/4 v2, 0x4

    aput v4, v7, v2

    aput v5, v7, v8

    const/4 v2, 0x6

    const/4 v3, 0x7

    shl-int/2addr v1, v3

    and-int/lit16 v1, v1, 0x80

    or-int/2addr v1, v6

    int-to-byte v1, v1

    aput v1, v7, v2

    aput v0, v7, v3

    .line 9
    invoke-static {v7}, Lz/k;->s([I)V

    .line 10
    sget v0, Lk0/nt;->c:I

    packed-switch v0, :pswitch_data_0

    new-array v0, v8, [I

    .line 11
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_0
    new-array v0, v8, [I

    .line 12
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_1
    new-array v0, v8, [I

    .line 13
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_2
    new-array v0, v8, [I

    .line 14
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_3
    new-array v0, v8, [I

    .line 15
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_4
    new-array v0, v8, [I

    .line 16
    fill-array-data v0, :array_5

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_5
    new-array v0, v8, [I

    .line 17
    fill-array-data v0, :array_6

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_6
    new-array v0, v8, [I

    .line 18
    fill-array-data v0, :array_7

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_7
    new-array v0, v8, [I

    .line 19
    fill-array-data v0, :array_8

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_8
    new-array v0, v8, [I

    .line 20
    fill-array-data v0, :array_9

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_9
    new-array v0, v8, [I

    .line 21
    fill-array-data v0, :array_a

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_a
    new-array v0, v8, [I

    .line 22
    fill-array-data v0, :array_b

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_b
    new-array v0, v8, [I

    .line 23
    fill-array-data v0, :array_c

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_c
    new-array v0, v8, [I

    .line 24
    fill-array-data v0, :array_d

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_d
    new-array v0, v8, [I

    .line 25
    fill-array-data v0, :array_e

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_e
    new-array v0, v8, [I

    .line 26
    fill-array-data v0, :array_f

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_f
    new-array v0, v8, [I

    .line 27
    fill-array-data v0, :array_10

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_10
    new-array v0, v8, [I

    .line 28
    fill-array-data v0, :array_11

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_11
    new-array v0, v8, [I

    .line 29
    fill-array-data v0, :array_12

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_12
    new-array v0, v8, [I

    .line 30
    fill-array-data v0, :array_13

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_13
    new-array v0, v8, [I

    .line 31
    fill-array-data v0, :array_14

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_14
    new-array v0, v8, [I

    .line 32
    fill-array-data v0, :array_15

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_15
    new-array v0, v8, [I

    .line 33
    fill-array-data v0, :array_16

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_16
    new-array v0, v8, [I

    .line 34
    fill-array-data v0, :array_17

    invoke-static {v0}, Lz/k;->s([I)V

    :goto_0
    :pswitch_17
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_17
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_14
        :pswitch_17
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_14
        :pswitch_1
        :pswitch_0
        :pswitch_9
    .end packed-switch

    :array_0
    .array-data 4
        -0x1d
        -0x12
        0x2
        0x51
        0x0
    .end array-data

    :array_1
    .array-data 4
        -0x1d
        -0x12
        0x2
        0x50
        0xc
    .end array-data

    :array_2
    .array-data 4
        -0x1d
        -0x12
        0x2
        0x51
        0xb
    .end array-data

    :array_3
    .array-data 4
        -0x1d
        -0x12
        0x2
        0x50
        0xb
    .end array-data

    :array_4
    .array-data 4
        -0x1d
        -0x12
        0x2
        0x50
        0xa
    .end array-data

    :array_5
    .array-data 4
        -0x1d
        -0x12
        0x2
        0x50
        0x9
    .end array-data

    :array_6
    .array-data 4
        -0x1d
        -0x12
        0x2
        0x51
        0xa
    .end array-data

    :array_7
    .array-data 4
        -0x1d
        -0x12
        0x2
        0x50
        0x7
    .end array-data

    :array_8
    .array-data 4
        -0x1d
        -0x12
        0x2
        0x51
        0x9
    .end array-data

    :array_9
    .array-data 4
        -0x1d
        -0x12
        0x2
        0x51
        0x8
    .end array-data

    :array_a
    .array-data 4
        -0x1d
        -0x12
        0x2
        0x50
        0x6
    .end array-data

    :array_b
    .array-data 4
        -0x1d
        -0x12
        0x2
        0x50
        0x5
    .end array-data

    :array_c
    .array-data 4
        -0x1d
        -0x12
        0x2
        0x51
        0x7
    .end array-data

    :array_d
    .array-data 4
        -0x1d
        -0x12
        0x2
        0x50
        0x4
    .end array-data

    :array_e
    .array-data 4
        -0x1d
        -0x12
        0x2
        0x51
        0x5
    .end array-data

    :array_f
    .array-data 4
        -0x1d
        -0x12
        0x2
        0x51
        0x4
    .end array-data

    :array_10
    .array-data 4
        -0x1d
        -0x12
        0x2
        0x50
        0x2
    .end array-data

    :array_11
    .array-data 4
        -0x1d
        -0x12
        0x2
        0x50
        0x0
    .end array-data

    :array_12
    .array-data 4
        -0x1d
        -0x12
        0x2
        0x51
        0x3
    .end array-data

    :array_13
    .array-data 4
        -0x1d
        -0x12
        0x2
        0x51
        0x2
    .end array-data

    :array_14
    .array-data 4
        -0x1d
        -0x12
        0x2
        0x51
        0x1
    .end array-data

    :array_15
    .array-data 4
        -0x1d
        -0x12
        0x2
        0x51
        0x6
    .end array-data

    :array_16
    .array-data 4
        -0x1d
        -0x12
        0x2
        0x50
        0x3
    .end array-data

    :array_17
    .array-data 4
        -0x1d
        -0x12
        0x2
        0x50
        0x1
    .end array-data
.end method
