.class public Lk0/hf$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/hf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/hf;


# direct methods
.method public constructor <init>(Lk0/hf;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/hf$c;->a:Lk0/hf;

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

    const-wide/16 v4, 0x2710

    div-long/2addr v2, v4

    .line 4
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v4

    invoke-static {v4}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v4

    int-to-byte v4, v4

    .line 5
    iget-object v5, p0, Lk0/hf$c;->a:Lk0/hf;

    invoke-static {v5}, Lk0/hf;->c3(Lk0/hf;)J

    move-result-wide v5

    cmp-long v5, v5, v2

    if-nez v5, :cond_0

    iget-object v5, p0, Lk0/hf$c;->a:Lk0/hf;

    invoke-static {v5}, Lk0/hf;->e3(Lk0/hf;)I

    move-result v5

    if-eq v5, v4, :cond_1

    .line 6
    :cond_0
    iget-object v5, p0, Lk0/hf$c;->a:Lk0/hf;

    invoke-static {v5, v2, v3}, Lk0/hf;->d3(Lk0/hf;J)J

    .line 7
    iget-object v2, p0, Lk0/hf$c;->a:Lk0/hf;

    invoke-static {v2, v4}, Lk0/hf;->f3(Lk0/hf;I)I

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
    iget v7, v0, Landroid/text/format/Time;->minute:I

    int-to-byte v7, v7

    .line 13
    iget v8, v0, Landroid/text/format/Time;->second:I

    int-to-byte v8, v8

    .line 14
    iget v0, v0, Landroid/text/format/Time;->weekDay:I

    int-to-byte v0, v0

    .line 15
    iget-object v9, p0, Lk0/hf$c;->a:Lk0/hf;

    const/16 v10, 0x76

    const/4 v11, 0x7

    new-array v12, v11, [I

    aput v2, v12, v1

    aput v3, v12, v4

    const/4 v1, 0x2

    aput v5, v12, v1

    const/4 v1, 0x3

    aput v6, v12, v1

    const/4 v1, 0x4

    aput v7, v12, v1

    const/4 v1, 0x5

    aput v8, v12, v1

    const/4 v1, 0x6

    and-int/lit8 v0, v0, 0xf

    or-int/lit16 v0, v0, 0xe0

    aput v0, v12, v1

    invoke-static {v9, v10, v11, v12}, Lk0/hf;->b3(Lk0/hf;II[I)V

    :cond_1
    return-void
.end method
