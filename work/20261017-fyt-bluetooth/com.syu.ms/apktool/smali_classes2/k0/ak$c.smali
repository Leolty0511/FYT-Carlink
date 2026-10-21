.class public Lk0/ak$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ak;


# direct methods
.method public constructor <init>(Lk0/ak;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ak$c;->a:Lk0/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

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

    int-to-byte v1, v1

    .line 4
    iget v2, v0, Landroid/text/format/Time;->year:I

    add-int/lit16 v2, v2, -0x7d0

    int-to-byte v2, v2

    .line 5
    iget v3, v0, Landroid/text/format/Time;->month:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    int-to-byte v3, v3

    .line 6
    iget v5, v0, Landroid/text/format/Time;->monthDay:I

    int-to-byte v5, v5

    .line 7
    iget v6, v0, Landroid/text/format/Time;->hour:I

    int-to-byte v6, v6

    .line 8
    iget v7, v0, Landroid/text/format/Time;->minute:I

    int-to-byte v7, v7

    const/16 v8, 0xd

    new-array v8, v8, [I

    const/16 v9, 0xe3

    const/4 v10, 0x0

    aput v9, v8, v10

    const/16 v9, 0xa

    aput v9, v8, v4

    const/4 v4, 0x2

    const/16 v11, -0x35

    aput v11, v8, v4

    const/4 v4, 0x3

    aput v10, v8, v4

    const/4 v4, 0x4

    aput v6, v8, v4

    const/4 v4, 0x5

    aput v7, v8, v4

    const/4 v6, 0x6

    .line 9
    iget v0, v0, Landroid/text/format/Time;->second:I

    aput v0, v8, v6

    const/4 v0, 0x7

    aput v10, v8, v0

    const/16 v0, 0x8

    aput v1, v8, v0

    const/16 v0, 0x9

    aput v2, v8, v0

    aput v3, v8, v9

    const/16 v0, 0xb

    aput v5, v8, v0

    const/16 v0, 0xc

    aput v10, v8, v0

    invoke-static {v8}, Lz/k;->s([I)V

    .line 10
    iget-object v0, p0, Lk0/ak$c;->a:Lk0/ak;

    iget v1, v0, Lk0/ak;->s:I

    if-eq v1, v7, :cond_0

    .line 11
    iput v7, v0, Lk0/ak;->s:I

    .line 12
    sget v0, Lk0/nt;->a:I

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    new-array v0, v4, [I

    .line 13
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_1
    new-array v0, v4, [I

    .line 14
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_2
    new-array v0, v4, [I

    .line 15
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_3
    new-array v0, v4, [I

    .line 16
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_4
    new-array v0, v4, [I

    .line 17
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_5
    new-array v0, v4, [I

    .line 18
    fill-array-data v0, :array_5

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_6
    new-array v0, v4, [I

    .line 19
    fill-array-data v0, :array_6

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_7
    new-array v0, v4, [I

    .line 20
    fill-array-data v0, :array_7

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_8
    new-array v0, v4, [I

    .line 21
    fill-array-data v0, :array_8

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_9
    new-array v0, v4, [I

    .line 22
    fill-array-data v0, :array_9

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_a
    new-array v0, v4, [I

    .line 23
    fill-array-data v0, :array_a

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_b
    new-array v0, v4, [I

    .line 24
    fill-array-data v0, :array_b

    invoke-static {v0}, Lz/k;->s([I)V

    :cond_0
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x301bc -> :sswitch_b
        0x401bc -> :sswitch_a
        0x401be -> :sswitch_9
        0x501be -> :sswitch_8
        0x601be -> :sswitch_7
        0xa01be -> :sswitch_6
        0xb01bc -> :sswitch_b
        0xd01bc -> :sswitch_b
        0xe01bc -> :sswitch_a
        0xe01be -> :sswitch_5
        0xf01bc -> :sswitch_a
        0x1001bc -> :sswitch_a
        0x1101bc -> :sswitch_b
        0x1201bc -> :sswitch_b
        0x1301bc -> :sswitch_7
        0x1401bc -> :sswitch_7
        0x1501be -> :sswitch_4
        0x1a01bb -> :sswitch_4
        0x1a01be -> :sswitch_3
        0x1b01be -> :sswitch_3
        0x1c01bc -> :sswitch_2
        0x1c01be -> :sswitch_3
        0x1d01bc -> :sswitch_b
        0x2a01be -> :sswitch_7
        0x2b01be -> :sswitch_b
        0x2f01bc -> :sswitch_b
        0x3201bc -> :sswitch_b
        0x3401be -> :sswitch_1
        0x3501be -> :sswitch_1
        0x7701bb -> :sswitch_0
    .end sparse-switch

    :array_0
    .array-data 4
        0xe3
        0x2
        0x24
        0xb
        0x26
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x2
        0x24
        0x16
        0x26
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x2
        0x24
        0x11
        0x26
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x2
        0x24
        0x15
        0x26
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0x2
        0x24
        0xa
        0x26
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0x2
        0x24
        0xa
        0x26
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0x2
        0x24
        0x14
        0x26
    .end array-data

    :array_7
    .array-data 4
        0xe3
        0x2
        0x24
        0xc
        0x26
    .end array-data

    :array_8
    .array-data 4
        0xe3
        0x2
        0x24
        0x13
        0x26
    .end array-data

    :array_9
    .array-data 4
        0xe3
        0x2
        0x24
        0x12
        0x26
    .end array-data

    :array_a
    .array-data 4
        0xe3
        0x2
        0x24
        0x10
        0x26
    .end array-data

    :array_b
    .array-data 4
        0xe3
        0x2
        0x24
        0xd
        0x26
    .end array-data
.end method
