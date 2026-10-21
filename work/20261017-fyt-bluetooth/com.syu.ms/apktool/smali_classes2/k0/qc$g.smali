.class public Lk0/qc$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/qc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/qc;


# direct methods
.method public constructor <init>(Lk0/qc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/qc$g;->a:Lk0/qc;

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
    iget v7, v0, Landroid/text/format/Time;->minute:I

    int-to-byte v7, v7

    .line 9
    iget v0, v0, Landroid/text/format/Time;->second:I

    int-to-byte v0, v0

    const/16 v8, 0xa

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0xe3

    aput v10, v8, v9

    const/16 v9, -0x3a

    aput v9, v8, v2

    const/4 v2, 0x2

    const/4 v9, 0x7

    aput v9, v8, v2

    const/4 v2, 0x3

    const/16 v10, 0x50

    aput v10, v8, v2

    const/4 v2, 0x4

    shl-int/2addr v1, v9

    or-int/2addr v1, v6

    aput v1, v8, v2

    const/4 v1, 0x5

    aput v7, v8, v1

    const/4 v2, 0x6

    aput v0, v8, v2

    aput v3, v8, v9

    const/16 v0, 0x8

    aput v4, v8, v0

    const/16 v0, 0x9

    aput v5, v8, v0

    .line 10
    invoke-static {v8}, Lz/k;->s([I)V

    .line 11
    sget v0, Lk0/nt;->c:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    new-array v0, v1, [I

    .line 12
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_2
    new-array v0, v1, [I

    .line 13
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_3
    new-array v0, v1, [I

    .line 14
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_4
    new-array v0, v1, [I

    .line 15
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_5
    new-array v0, v1, [I

    .line 16
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_6
    new-array v0, v1, [I

    .line 17
    fill-array-data v0, :array_5

    invoke-static {v0}, Lz/k;->s([I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_2
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        -0x12
        0x2
        0x62
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x12
        0x2
        0x61
        0x2
    .end array-data

    :array_2
    .array-data 4
        0xe3
        -0x12
        0x2
        0x61
        0x3
    .end array-data

    :array_3
    .array-data 4
        0xe3
        -0x12
        0x2
        0x61
        0x1
    .end array-data

    :array_4
    .array-data 4
        0xe3
        -0x12
        0x2
        0x60
        0x1
    .end array-data

    :array_5
    .array-data 4
        0xe3
        -0x12
        0x2
        0x60
        0x0
    .end array-data
.end method
