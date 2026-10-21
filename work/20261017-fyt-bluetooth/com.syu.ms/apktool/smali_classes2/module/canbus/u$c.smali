.class public Lmodule/canbus/u$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/u;


# direct methods
.method public constructor <init>(Lmodule/canbus/u;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/u$c;->a:Lmodule/canbus/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

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

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 4
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v4

    invoke-static {v4}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v4

    .line 5
    iget-object v5, p0, Lmodule/canbus/u$c;->a:Lmodule/canbus/u;

    invoke-static {v5}, Lmodule/canbus/u;->f3(Lmodule/canbus/u;)J

    move-result-wide v5

    cmp-long v5, v5, v2

    if-nez v5, :cond_0

    iget-object v5, p0, Lmodule/canbus/u$c;->a:Lmodule/canbus/u;

    invoke-static {v5}, Lmodule/canbus/u;->h3(Lmodule/canbus/u;)I

    move-result v5

    if-eq v5, v4, :cond_2

    .line 6
    :cond_0
    iget-object v5, p0, Lmodule/canbus/u$c;->a:Lmodule/canbus/u;

    invoke-static {v5, v2, v3}, Lmodule/canbus/u;->g3(Lmodule/canbus/u;J)J

    .line 7
    iget-object v2, p0, Lmodule/canbus/u$c;->a:Lmodule/canbus/u;

    invoke-static {v2, v4}, Lmodule/canbus/u;->j3(Lmodule/canbus/u;I)I

    .line 8
    iget v2, v0, Landroid/text/format/Time;->year:I

    add-int/lit16 v2, v2, -0x7d0

    int-to-byte v2, v2

    .line 9
    iget v3, v0, Landroid/text/format/Time;->month:I

    const/4 v5, 0x1

    add-int/2addr v3, v5

    int-to-byte v3, v3

    .line 10
    iget v6, v0, Landroid/text/format/Time;->monthDay:I

    int-to-byte v6, v6

    .line 11
    iget v7, v0, Landroid/text/format/Time;->hour:I

    int-to-byte v7, v7

    .line 12
    iget v0, v0, Landroid/text/format/Time;->minute:I

    int-to-byte v0, v0

    .line 13
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v8

    const/16 v9, 0x9

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    if-nez v8, :cond_1

    move v8, v1

    goto :goto_0

    :cond_1
    move v8, v5

    :goto_0
    int-to-byte v8, v8

    const/16 v10, 0xd

    new-array v10, v10, [I

    const/16 v11, 0xe3

    aput v11, v10, v1

    const/16 v11, 0xa

    aput v11, v10, v5

    const/4 v5, 0x2

    const/16 v12, -0x35

    aput v12, v10, v5

    const/4 v5, 0x3

    aput v2, v10, v5

    const/4 v2, 0x4

    aput v3, v10, v2

    const/4 v2, 0x5

    aput v6, v10, v2

    const/4 v2, 0x6

    aput v7, v10, v2

    const/4 v2, 0x7

    aput v0, v10, v2

    const/16 v0, 0x8

    aput v4, v10, v0

    aput v8, v10, v9

    aput v1, v10, v11

    const/16 v0, 0xb

    aput v1, v10, v0

    const/16 v0, 0xc

    aput v1, v10, v0

    .line 14
    invoke-static {v10}, Lz/k;->s([I)V

    :cond_2
    return-void
.end method
