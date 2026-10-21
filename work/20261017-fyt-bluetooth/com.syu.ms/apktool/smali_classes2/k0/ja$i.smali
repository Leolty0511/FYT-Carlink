.class public Lk0/ja$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ja;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ja;


# direct methods
.method public constructor <init>(Lk0/ja;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ja$i;->a:Lk0/ja;

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
    iget-object v6, p0, Lk0/ja$i;->a:Lk0/ja;

    invoke-static {v6}, Lk0/ja;->e3(Lk0/ja;)J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-nez v6, :cond_0

    iget-object v6, p0, Lk0/ja$i;->a:Lk0/ja;

    invoke-static {v6}, Lk0/ja;->h3(Lk0/ja;)I

    move-result v6

    if-eq v6, v4, :cond_1

    .line 6
    :cond_0
    iget-object v6, p0, Lk0/ja$i;->a:Lk0/ja;

    invoke-static {v6, v2, v3}, Lk0/ja;->f3(Lk0/ja;J)J

    .line 7
    iget-object v2, p0, Lk0/ja$i;->a:Lk0/ja;

    invoke-static {v2, v4}, Lk0/ja;->i3(Lk0/ja;I)I

    .line 8
    iget v2, v0, Landroid/text/format/Time;->hour:I

    int-to-byte v2, v2

    .line 9
    iget v3, v0, Landroid/text/format/Time;->minute:I

    int-to-byte v3, v3

    .line 10
    iget v6, v0, Landroid/text/format/Time;->year:I

    int-to-byte v6, v6

    .line 11
    iget v7, v0, Landroid/text/format/Time;->month:I

    add-int/2addr v7, v5

    int-to-byte v7, v7

    .line 12
    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    int-to-byte v0, v0

    const/16 v8, 0xa

    new-array v8, v8, [I

    const/16 v9, 0xe3

    aput v9, v8, v1

    const/16 v9, -0x7b

    aput v9, v8, v5

    const/4 v5, 0x2

    const/4 v9, 0x7

    aput v9, v8, v5

    const/4 v5, 0x3

    add-int/lit16 v6, v6, -0x7d0

    aput v6, v8, v5

    const/4 v5, 0x4

    aput v7, v8, v5

    const/4 v5, 0x5

    aput v0, v8, v5

    const/4 v0, 0x6

    aput v2, v8, v0

    aput v3, v8, v9

    const/16 v0, 0x8

    aput v4, v8, v0

    const/16 v0, 0x9

    aput v1, v8, v0

    .line 13
    invoke-static {v8}, Lz/k;->s([I)V

    :cond_1
    return-void
.end method
