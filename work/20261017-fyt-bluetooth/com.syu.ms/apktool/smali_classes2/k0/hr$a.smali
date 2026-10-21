.class public Lk0/hr$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/hr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/hr;


# direct methods
.method public constructor <init>(Lk0/hr;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/hr$a;->a:Lk0/hr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    new-instance v0, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 3
    iget v1, v0, Landroid/text/format/Time;->hour:I

    int-to-byte v1, v1

    .line 4
    iget v2, v0, Landroid/text/format/Time;->minute:I

    int-to-byte v2, v2

    const/16 v3, 0x9

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0xe3

    aput v5, v3, v4

    const/16 v4, 0x84

    const/4 v5, 0x1

    aput v4, v3, v5

    const/4 v4, 0x2

    const/4 v6, 0x6

    aput v6, v3, v4

    .line 5
    iget v4, v0, Landroid/text/format/Time;->year:I

    add-int/lit16 v4, v4, -0x7e4

    const/4 v7, 0x3

    aput v4, v3, v7

    iget v4, v0, Landroid/text/format/Time;->month:I

    add-int/2addr v4, v5

    const/4 v7, 0x4

    aput v4, v3, v7

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    const/4 v4, 0x5

    aput v0, v3, v4

    aput v1, v3, v6

    const/4 v0, 0x7

    aput v2, v3, v0

    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    xor-int/2addr v0, v5

    int-to-byte v0, v0

    const/16 v1, 0x8

    aput v0, v3, v1

    invoke-static {v3}, Lz/k;->s([I)V

    .line 6
    sget v0, Lk0/nt;->a:I

    sparse-switch v0, :sswitch_data_0

    new-array v0, v4, [I

    .line 7
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_0
    new-array v0, v4, [I

    .line 8
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_1
    new-array v0, v4, [I

    .line 9
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_2
    new-array v0, v4, [I

    .line 10
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_3
    new-array v0, v4, [I

    .line 11
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_4
    new-array v0, v4, [I

    .line 12
    fill-array-data v0, :array_5

    invoke-static {v0}, Lz/k;->s([I)V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x4101c6 -> :sswitch_4
        0x4201c6 -> :sswitch_3
        0x4301c6 -> :sswitch_2
        0x6601c8 -> :sswitch_1
        0x6701c8 -> :sswitch_0
    .end sparse-switch

    :array_0
    .array-data 4
        0xe3
        0xee
        0x2
        0x1
        0x6
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xee
        0x2
        0x1
        0x4
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0xee
        0x2
        0x1
        0x2
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0xee
        0x2
        0x1
        0x3
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0xee
        0x2
        0x1
        0x5
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0xee
        0x2
        0x1
        0x1
    .end array-data
.end method
