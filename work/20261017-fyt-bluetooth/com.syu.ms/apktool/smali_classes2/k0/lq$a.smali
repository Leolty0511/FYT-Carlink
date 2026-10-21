.class public Lk0/lq$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/lq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/lq;


# direct methods
.method public constructor <init>(Lk0/lq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/lq$a;->a:Lk0/lq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

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

    int-to-byte v4, v4

    .line 5
    iget-object v6, p0, Lk0/lq$a;->a:Lk0/lq;

    invoke-static {v6}, Lk0/lq;->b3(Lk0/lq;)I

    move-result v6

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/16 v9, 0xc6

    const/16 v10, 0xe3

    const/4 v11, 0x5

    const/4 v12, 0x2

    if-eq v6, v4, :cond_0

    .line 6
    iget-object v6, p0, Lk0/lq$a;->a:Lk0/lq;

    invoke-static {v6, v4}, Lk0/lq;->c3(Lk0/lq;I)I

    new-array v6, v11, [I

    aput v10, v6, v1

    aput v9, v6, v5

    aput v12, v6, v12

    aput v1, v6, v8

    aput v4, v6, v7

    .line 7
    invoke-static {v6}, Lz/k;->s([I)V

    .line 8
    :cond_0
    iget-object v4, p0, Lk0/lq$a;->a:Lk0/lq;

    invoke-static {v4}, Lk0/lq;->d3(Lk0/lq;)J

    move-result-wide v13

    cmp-long v4, v13, v2

    if-eqz v4, :cond_1

    .line 9
    iget-object v4, p0, Lk0/lq$a;->a:Lk0/lq;

    invoke-static {v4, v2, v3}, Lk0/lq;->e3(Lk0/lq;J)J

    const/16 v2, 0x9

    new-array v2, v2, [I

    aput v10, v2, v1

    aput v9, v2, v5

    const/4 v1, 0x6

    aput v1, v2, v12

    aput v5, v2, v8

    .line 10
    iget v3, v0, Landroid/text/format/Time;->year:I

    add-int/lit16 v3, v3, -0x7d0

    aput v3, v2, v7

    iget v3, v0, Landroid/text/format/Time;->month:I

    add-int/2addr v3, v5

    aput v3, v2, v11

    iget v3, v0, Landroid/text/format/Time;->monthDay:I

    aput v3, v2, v1

    const/4 v1, 0x7

    iget v3, v0, Landroid/text/format/Time;->hour:I

    aput v3, v2, v1

    const/16 v1, 0x8

    iget v0, v0, Landroid/text/format/Time;->minute:I

    aput v0, v2, v1

    invoke-static {v2}, Lz/k;->s([I)V

    :cond_1
    return-void
.end method
