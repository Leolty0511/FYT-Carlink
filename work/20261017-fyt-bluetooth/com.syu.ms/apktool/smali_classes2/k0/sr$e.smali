.class public Lk0/sr$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/sr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/sr;


# direct methods
.method public constructor <init>(Lk0/sr;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/sr$e;->a:Lk0/sr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

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

    const-wide/16 v4, 0x2710

    div-long/2addr v2, v4

    .line 4
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v4

    invoke-static {v4}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    .line 5
    iget-object v6, p0, Lk0/sr$e;->a:Lk0/sr;

    invoke-static {v6}, Lk0/sr;->k3(Lk0/sr;)J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-nez v6, :cond_0

    iget-object v6, p0, Lk0/sr$e;->a:Lk0/sr;

    invoke-static {v6}, Lk0/sr;->m3(Lk0/sr;)I

    move-result v6

    if-eq v6, v4, :cond_2

    .line 6
    :cond_0
    iget-object v6, p0, Lk0/sr$e;->a:Lk0/sr;

    invoke-static {v6, v2, v3}, Lk0/sr;->l3(Lk0/sr;J)J

    .line 7
    iget-object v2, p0, Lk0/sr$e;->a:Lk0/sr;

    invoke-static {v2, v4}, Lk0/sr;->n3(Lk0/sr;I)I

    .line 8
    iget v2, v0, Landroid/text/format/Time;->hour:I

    int-to-byte v2, v2

    .line 9
    iget v0, v0, Landroid/text/format/Time;->minute:I

    int-to-byte v0, v0

    .line 10
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v3

    const/16 v6, 0x9

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_0
    int-to-byte v3, v3

    const/4 v6, 0x7

    new-array v7, v6, [I

    const/16 v8, 0xe3

    aput v8, v7, v1

    const/16 v1, -0x3a

    aput v1, v7, v5

    const/4 v1, 0x2

    const/4 v8, 0x4

    aput v8, v7, v1

    const/4 v1, 0x3

    aput v5, v7, v1

    aput v2, v7, v8

    const/4 v1, 0x5

    aput v0, v7, v1

    shl-int/lit8 v0, v3, 0x7

    const/4 v1, 0x6

    shl-int/lit8 v2, v4, 0x6

    or-int/2addr v0, v2

    int-to-byte v0, v0

    aput v0, v7, v1

    .line 11
    invoke-static {v7}, Lz/k;->s([I)V

    :cond_2
    return-void
.end method
