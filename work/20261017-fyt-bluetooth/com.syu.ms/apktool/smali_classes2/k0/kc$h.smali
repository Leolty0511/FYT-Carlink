.class public Lk0/kc$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/kc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/kc;


# direct methods
.method public constructor <init>(Lk0/kc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/kc$h;->a:Lk0/kc;

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
    iget-object v6, p0, Lk0/kc$h;->a:Lk0/kc;

    invoke-static {v6}, Lk0/kc;->j3(Lk0/kc;)J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-nez v6, :cond_0

    iget-object v6, p0, Lk0/kc$h;->a:Lk0/kc;

    invoke-static {v6}, Lk0/kc;->l3(Lk0/kc;)I

    move-result v6

    if-eq v6, v4, :cond_3

    .line 6
    :cond_0
    iget-object v6, p0, Lk0/kc$h;->a:Lk0/kc;

    invoke-static {v6, v2, v3}, Lk0/kc;->k3(Lk0/kc;J)J

    .line 7
    iget-object v2, p0, Lk0/kc$h;->a:Lk0/kc;

    invoke-static {v2, v4}, Lk0/kc;->m3(Lk0/kc;I)I

    .line 8
    iget v2, v0, Landroid/text/format/Time;->hour:I

    int-to-byte v2, v2

    .line 9
    iget v3, v0, Landroid/text/format/Time;->minute:I

    int-to-byte v3, v3

    .line 10
    iget v6, v0, Landroid/text/format/Time;->second:I

    int-to-byte v6, v6

    if-eqz v4, :cond_1

    const/16 v7, 0xc

    if-le v2, v7, :cond_1

    add-int/lit8 v2, v2, -0xc

    int-to-byte v2, v2

    .line 11
    :cond_1
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v7

    const/16 v8, 0x9

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-nez v7, :cond_2

    move v7, v1

    goto :goto_0

    :cond_2
    move v7, v5

    :goto_0
    int-to-byte v7, v7

    const/16 v9, 0xb

    new-array v9, v9, [I

    const/16 v10, 0xe3

    aput v10, v9, v1

    const/16 v1, 0xc6

    aput v1, v9, v5

    const/4 v1, 0x2

    const/16 v10, 0x8

    aput v10, v9, v1

    const/4 v1, 0x3

    aput v5, v9, v1

    const/4 v1, 0x4

    .line 12
    iget v11, v0, Landroid/text/format/Time;->year:I

    add-int/lit16 v11, v11, -0x7d0

    int-to-byte v11, v11

    aput v11, v9, v1

    const/4 v1, 0x5

    iget v11, v0, Landroid/text/format/Time;->month:I

    add-int/2addr v11, v5

    int-to-byte v5, v11

    aput v5, v9, v1

    const/4 v1, 0x6

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    int-to-byte v0, v0

    aput v0, v9, v1

    const/4 v0, 0x7

    shl-int/lit8 v1, v4, 0x7

    or-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput v1, v9, v0

    and-int/lit16 v1, v3, 0xff

    int-to-byte v1, v1

    aput v1, v9, v10

    and-int/lit16 v1, v6, 0xff

    int-to-byte v1, v1

    aput v1, v9, v8

    const/16 v1, 0xa

    shl-int/lit8 v0, v7, 0x7

    or-int/lit8 v0, v0, 0x40

    int-to-byte v0, v0

    aput v0, v9, v1

    invoke-static {v9}, Lz/k;->s([I)V

    :cond_3
    return-void
.end method
