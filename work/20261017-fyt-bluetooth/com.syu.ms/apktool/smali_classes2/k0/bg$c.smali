.class public Lk0/bg$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/bg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/bg;


# direct methods
.method public constructor <init>(Lk0/bg;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/bg$c;->a:Lk0/bg;

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

    .line 5
    iget-object v5, p0, Lk0/bg$c;->a:Lk0/bg;

    invoke-static {v5}, Lk0/bg;->q3(Lk0/bg;)J

    move-result-wide v5

    cmp-long v5, v5, v2

    if-nez v5, :cond_0

    iget-object v5, p0, Lk0/bg$c;->a:Lk0/bg;

    invoke-static {v5}, Lk0/bg;->B3(Lk0/bg;)I

    move-result v5

    if-eq v5, v4, :cond_1

    .line 6
    :cond_0
    iget-object v5, p0, Lk0/bg$c;->a:Lk0/bg;

    invoke-static {v5, v2, v3}, Lk0/bg;->s3(Lk0/bg;J)J

    .line 7
    iget-object v2, p0, Lk0/bg$c;->a:Lk0/bg;

    invoke-static {v2, v4}, Lk0/bg;->C3(Lk0/bg;I)I

    .line 8
    iget v2, v0, Landroid/text/format/Time;->year:I

    add-int/lit16 v2, v2, -0x7d0

    int-to-byte v2, v2

    .line 9
    iget v3, v0, Landroid/text/format/Time;->month:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    int-to-byte v3, v3

    .line 10
    iget v5, v0, Landroid/text/format/Time;->monthDay:I

    int-to-byte v5, v5

    .line 11
    iget v6, v0, Landroid/text/format/Time;->hour:I

    int-to-byte v6, v6

    .line 12
    iget v0, v0, Landroid/text/format/Time;->minute:I

    int-to-byte v0, v0

    const/16 v7, 0x9

    new-array v7, v7, [I

    const/16 v8, 0xe3

    aput v8, v7, v1

    const/16 v8, 0x82

    aput v8, v7, v4

    const/4 v4, 0x2

    const/4 v8, 0x6

    aput v8, v7, v4

    const/4 v4, 0x3

    .line 13
    iget-object v9, p0, Lk0/bg$c;->a:Lk0/bg;

    invoke-static {v9, v2}, Lk0/bg;->D3(Lk0/bg;I)I

    move-result v2

    aput v2, v7, v4

    const/4 v2, 0x4

    iget-object v4, p0, Lk0/bg$c;->a:Lk0/bg;

    invoke-static {v4, v3}, Lk0/bg;->D3(Lk0/bg;I)I

    move-result v3

    aput v3, v7, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lk0/bg$c;->a:Lk0/bg;

    invoke-static {v3, v5}, Lk0/bg;->D3(Lk0/bg;I)I

    move-result v3

    aput v3, v7, v2

    iget-object v2, p0, Lk0/bg$c;->a:Lk0/bg;

    invoke-static {v2, v6}, Lk0/bg;->D3(Lk0/bg;I)I

    move-result v2

    aput v2, v7, v8

    const/4 v2, 0x7

    iget-object v3, p0, Lk0/bg$c;->a:Lk0/bg;

    invoke-static {v3, v0}, Lk0/bg;->D3(Lk0/bg;I)I

    move-result v0

    aput v0, v7, v2

    const/16 v0, 0x8

    aput v1, v7, v0

    invoke-static {v7}, Lz/k;->s([I)V

    :cond_1
    return-void
.end method
