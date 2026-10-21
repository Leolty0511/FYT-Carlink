.class public Lk0/jh$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/jh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/jh;


# direct methods
.method public constructor <init>(Lk0/jh;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/jh$a;->a:Lk0/jh;

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
    iget-object v6, p0, Lk0/jh$a;->a:Lk0/jh;

    invoke-static {v6}, Lk0/jh;->a3(Lk0/jh;)J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-nez v6, :cond_0

    iget-object v6, p0, Lk0/jh$a;->a:Lk0/jh;

    invoke-static {v6}, Lk0/jh;->c3(Lk0/jh;)I

    move-result v6

    if-eq v6, v4, :cond_4

    .line 6
    :cond_0
    iget-object v6, p0, Lk0/jh$a;->a:Lk0/jh;

    invoke-static {v6, v2, v3}, Lk0/jh;->b3(Lk0/jh;J)J

    .line 7
    iget-object v2, p0, Lk0/jh$a;->a:Lk0/jh;

    invoke-static {v2, v4}, Lk0/jh;->d3(Lk0/jh;I)I

    .line 8
    sget v2, Lu0/b;->K3:I

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/16 v6, 0x82

    const/16 v7, 0xe3

    const/4 v8, 0x6

    const/4 v9, 0x2

    const/4 v10, 0x3

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v9, :cond_1

    new-array v2, v8, [I

    aput v7, v2, v1

    aput v6, v2, v5

    aput v10, v2, v9

    .line 9
    iget v5, v0, Landroid/text/format/Time;->hour:I

    int-to-byte v5, v5

    aput v5, v2, v10

    iget v0, v0, Landroid/text/format/Time;->minute:I

    int-to-byte v0, v0

    aput v0, v2, v4

    aput v1, v2, v3

    invoke-static {v2}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array v2, v8, [I

    aput v7, v2, v1

    aput v6, v2, v5

    aput v10, v2, v9

    .line 10
    iget v1, v0, Landroid/text/format/Time;->hour:I

    int-to-byte v1, v1

    aput v1, v2, v10

    iget v0, v0, Landroid/text/format/Time;->minute:I

    int-to-byte v0, v0

    aput v0, v2, v4

    aput v5, v2, v3

    invoke-static {v2}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array v2, v8, [I

    aput v7, v2, v1

    aput v6, v2, v5

    aput v10, v2, v9

    .line 11
    iget v5, v0, Landroid/text/format/Time;->hour:I

    int-to-byte v5, v5

    aput v5, v2, v10

    iget v0, v0, Landroid/text/format/Time;->minute:I

    int-to-byte v0, v0

    aput v0, v2, v4

    aput v1, v2, v3

    invoke-static {v2}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    new-array v2, v8, [I

    aput v7, v2, v1

    aput v6, v2, v5

    aput v10, v2, v9

    .line 12
    iget v1, v0, Landroid/text/format/Time;->hour:I

    int-to-byte v1, v1

    aput v1, v2, v10

    iget v0, v0, Landroid/text/format/Time;->minute:I

    int-to-byte v0, v0

    aput v0, v2, v4

    aput v9, v2, v3

    invoke-static {v2}, Lz/k;->s([I)V

    :cond_4
    :goto_0
    return-void
.end method
