.class public Lmodule/canbus/l$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/l;


# direct methods
.method public constructor <init>(Lmodule/canbus/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/l$c;->a:Lmodule/canbus/l;

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

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 4
    iget v3, v0, Landroid/text/format/Time;->hour:I

    int-to-byte v3, v3

    .line 5
    iget v4, v0, Landroid/text/format/Time;->minute:I

    int-to-byte v4, v4

    .line 6
    iget v5, v0, Landroid/text/format/Time;->second:I

    int-to-byte v5, v5

    if-eqz v1, :cond_0

    const/16 v6, 0xc

    if-le v3, v6, :cond_0

    add-int/lit8 v3, v3, -0xc

    int-to-byte v3, v3

    .line 7
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v6

    const/16 v7, 0x9

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v8, 0x0

    if-nez v6, :cond_1

    move v6, v8

    goto :goto_0

    :cond_1
    move v6, v2

    :goto_0
    int-to-byte v6, v6

    const/16 v9, 0xb

    new-array v9, v9, [I

    const/16 v10, 0xe3

    aput v10, v9, v8

    const/16 v8, 0xc6

    aput v8, v9, v2

    const/4 v8, 0x2

    const/16 v10, 0x8

    aput v10, v9, v8

    const/4 v8, 0x3

    aput v2, v9, v8

    const/4 v8, 0x4

    .line 8
    iget v11, v0, Landroid/text/format/Time;->year:I

    add-int/lit16 v11, v11, -0x7d0

    int-to-byte v11, v11

    aput v11, v9, v8

    const/4 v8, 0x5

    iget v11, v0, Landroid/text/format/Time;->month:I

    add-int/2addr v11, v2

    int-to-byte v2, v11

    aput v2, v9, v8

    const/4 v2, 0x6

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    int-to-byte v0, v0

    aput v0, v9, v2

    const/4 v0, 0x7

    shl-int/2addr v1, v0

    or-int/2addr v1, v3

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput v1, v9, v0

    and-int/lit16 v1, v4, 0xff

    int-to-byte v1, v1

    aput v1, v9, v10

    and-int/lit16 v1, v5, 0xff

    int-to-byte v1, v1

    aput v1, v9, v7

    const/16 v1, 0xa

    shl-int/lit8 v0, v6, 0x7

    or-int/lit8 v0, v0, 0x40

    int-to-byte v0, v0

    aput v0, v9, v1

    invoke-static {v9}, Lz/k;->s([I)V

    return-void
.end method
