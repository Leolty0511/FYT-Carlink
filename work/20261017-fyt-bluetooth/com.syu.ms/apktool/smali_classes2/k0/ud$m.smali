.class public Lk0/ud$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ud;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ud;


# direct methods
.method public constructor <init>(Lk0/ud;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ud$m;->a:Lk0/ud;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1
    new-instance v0, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    const-wide/16 v4, 0x1770

    div-long/2addr v2, v4

    .line 4
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v4

    invoke-static {v4}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    .line 5
    iget-object v6, p0, Lk0/ud$m;->a:Lk0/ud;

    invoke-static {v6}, Lk0/ud;->o3(Lk0/ud;)J

    move-result-wide v6

    cmp-long v6, v6, v2

    const/4 v7, 0x5

    if-nez v6, :cond_0

    iget-object v6, p0, Lk0/ud$m;->a:Lk0/ud;

    invoke-static {v6}, Lk0/ud;->q3(Lk0/ud;)I

    move-result v6

    if-eq v6, v4, :cond_1

    .line 6
    :cond_0
    iget-object v6, p0, Lk0/ud$m;->a:Lk0/ud;

    invoke-static {v6, v2, v3}, Lk0/ud;->p3(Lk0/ud;J)J

    .line 7
    iget-object v2, p0, Lk0/ud$m;->a:Lk0/ud;

    invoke-static {v2, v4}, Lk0/ud;->r3(Lk0/ud;I)I

    .line 8
    iget v2, v0, Landroid/text/format/Time;->hour:I

    int-to-byte v2, v2

    .line 9
    iget v3, v0, Landroid/text/format/Time;->minute:I

    int-to-byte v3, v3

    const/16 v6, 0xa

    new-array v6, v6, [I

    const/16 v8, 0xe3

    aput v8, v6, v1

    const/16 v8, -0x5a

    aput v8, v6, v5

    const/4 v8, 0x2

    const/4 v9, 0x7

    aput v9, v6, v8

    const/4 v8, 0x3

    .line 10
    iget v10, v0, Landroid/text/format/Time;->year:I

    add-int/lit16 v10, v10, -0x7d0

    int-to-byte v10, v10

    aput v10, v6, v8

    const/4 v8, 0x4

    iget v10, v0, Landroid/text/format/Time;->month:I

    add-int/2addr v10, v5

    int-to-byte v5, v10

    aput v5, v6, v8

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    int-to-byte v0, v0

    aput v0, v6, v7

    const/4 v0, 0x6

    shl-int/2addr v4, v9

    and-int/lit16 v4, v4, 0x80

    and-int/lit8 v2, v2, 0x7f

    or-int/2addr v2, v4

    aput v2, v6, v0

    aput v3, v6, v9

    const/16 v0, 0x8

    aput v1, v6, v0

    const/16 v0, 0x9

    aput v1, v6, v0

    invoke-static {v6}, Lz/k;->s([I)V

    .line 11
    sget v0, Lk0/nt;->c:I

    const/16 v1, 0x19

    if-eq v0, v1, :cond_1

    new-array v0, v7, [I

    .line 12
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    .line 13
    :cond_1
    sget v0, Lk0/nt;->c:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    new-array v0, v7, [I

    .line 14
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_2
    new-array v0, v7, [I

    .line 15
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_3
    new-array v0, v7, [I

    .line 16
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_4
    new-array v0, v7, [I

    .line 17
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_5
    new-array v0, v7, [I

    .line 18
    fill-array-data v0, :array_5

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_6
    new-array v0, v7, [I

    .line 19
    fill-array-data v0, :array_6

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_7
    new-array v0, v7, [I

    .line 20
    fill-array-data v0, :array_7

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_8
    new-array v0, v7, [I

    .line 21
    fill-array-data v0, :array_8

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_9
    new-array v0, v7, [I

    .line 22
    fill-array-data v0, :array_9

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_a
    new-array v0, v7, [I

    .line 23
    fill-array-data v0, :array_a

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_b
    new-array v0, v7, [I

    .line 24
    fill-array-data v0, :array_b

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_c
    new-array v0, v7, [I

    .line 25
    fill-array-data v0, :array_c

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_d
    new-array v0, v7, [I

    .line 26
    fill-array-data v0, :array_d

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_e
    new-array v0, v7, [I

    .line 27
    fill-array-data v0, :array_e

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_f
    new-array v0, v7, [I

    .line 28
    fill-array-data v0, :array_f

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_10
    new-array v0, v7, [I

    .line 29
    fill-array-data v0, :array_10

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_11
    new-array v0, v7, [I

    .line 30
    fill-array-data v0, :array_11

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_12
    new-array v0, v7, [I

    .line 31
    fill-array-data v0, :array_12

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_13
    new-array v0, v7, [I

    .line 32
    fill-array-data v0, :array_13

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_14
    new-array v0, v7, [I

    .line 33
    fill-array-data v0, :array_14

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_15
    new-array v0, v7, [I

    .line 34
    fill-array-data v0, :array_15

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_16
    new-array v0, v7, [I

    .line 35
    fill-array-data v0, :array_16

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_17
    new-array v0, v7, [I

    .line 36
    fill-array-data v0, :array_17

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_18
    new-array v0, v7, [I

    .line 37
    fill-array-data v0, :array_18

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_19
    new-array v0, v7, [I

    .line 38
    fill-array-data v0, :array_19

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_1a
    new-array v0, v7, [I

    .line 39
    fill-array-data v0, :array_1a

    invoke-static {v0}, Lz/k;->s([I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1a
        :pswitch_1a
        :pswitch_19
        :pswitch_19
        :pswitch_18
        :pswitch_1a
        :pswitch_1a
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_0
        :pswitch_13
        :pswitch_12
        :pswitch_18
        :pswitch_0
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_16
        :pswitch_e
        :pswitch_d
        :pswitch_18
        :pswitch_0
        :pswitch_10
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_1a
        :pswitch_9
        :pswitch_8
        :pswitch_14
        :pswitch_7
        :pswitch_0
        :pswitch_18
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_16
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        -0x70
        0x2
        0x10
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x12
        0x2
        0x4
        0x20
    .end array-data

    :array_2
    .array-data 4
        0xe3
        -0x12
        0x2
        0x4
        0x16
    .end array-data

    :array_3
    .array-data 4
        0xe3
        -0x12
        0x2
        0x4
        0x11
    .end array-data

    :array_4
    .array-data 4
        0xe3
        -0x12
        0x2
        0x4
        0x4
    .end array-data

    :array_5
    .array-data 4
        0xe3
        -0x12
        0x2
        0x4
        0x2
    .end array-data

    :array_6
    .array-data 4
        0xe3
        -0x12
        0x2
        0x4
        0x1
    .end array-data

    :array_7
    .array-data 4
        0xe3
        -0x12
        0x2
        0x4
        0x15
    .end array-data

    :array_8
    .array-data 4
        0xe3
        -0x12
        0x2
        0x4
        0x14
    .end array-data

    :array_9
    .array-data 4
        0xe3
        -0x12
        0x2
        0x4
        0x13
    .end array-data

    :array_a
    .array-data 4
        0xe3
        -0x12
        0x2
        0x4
        0x12
    .end array-data

    :array_b
    .array-data 4
        0xe3
        -0x12
        0x2
        0x4
        0xf
    .end array-data

    :array_c
    .array-data 4
        0xe3
        -0x12
        0x2
        0x4
        0x10
    .end array-data

    :array_d
    .array-data 4
        0xe3
        -0x12
        0x2
        0x4
        0xe
    .end array-data

    :array_e
    .array-data 4
        0xe3
        -0x12
        0x2
        0x4
        0xd
    .end array-data

    :array_f
    .array-data 4
        0xe3
        -0x12
        0x2
        0x4
        0xc
    .end array-data

    :array_10
    .array-data 4
        0xe3
        -0x12
        0x2
        0x4
        0xb
    .end array-data

    :array_11
    .array-data 4
        0xe3
        -0x12
        0x2
        0x4
        0xa
    .end array-data

    :array_12
    .array-data 4
        0xe3
        -0x12
        0x2
        0x4
        0x9
    .end array-data

    :array_13
    .array-data 4
        0xe3
        -0x12
        0x2
        0x4
        0x8
    .end array-data

    :array_14
    .array-data 4
        0xe3
        -0x12
        0x2
        0x4
        0x7
    .end array-data

    :array_15
    .array-data 4
        0xe3
        -0x12
        0x2
        0x4
        0x6
    .end array-data

    :array_16
    .array-data 4
        0xe3
        -0x12
        0x2
        0x4
        0x5
    .end array-data

    :array_17
    .array-data 4
        0xe3
        -0x12
        0x2
        0x4
        0x4
    .end array-data

    :array_18
    .array-data 4
        0xe3
        -0x12
        0x2
        0x4
        0x3
    .end array-data

    :array_19
    .array-data 4
        0xe3
        -0x12
        0x2
        0x4
        0x2
    .end array-data

    :array_1a
    .array-data 4
        0xe3
        -0x12
        0x2
        0x4
        0x1
    .end array-data
.end method
