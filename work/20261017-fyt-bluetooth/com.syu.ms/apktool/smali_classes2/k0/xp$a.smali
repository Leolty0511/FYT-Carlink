.class public Lk0/xp$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/xp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/xp;


# direct methods
.method public constructor <init>(Lk0/xp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/xp$a;->a:Lk0/xp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

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
    iget-object v5, p0, Lk0/xp$a;->a:Lk0/xp;

    invoke-static {v5}, Lk0/xp;->a3(Lk0/xp;)J

    move-result-wide v5

    cmp-long v5, v5, v2

    if-nez v5, :cond_0

    iget-object v5, p0, Lk0/xp$a;->a:Lk0/xp;

    invoke-static {v5}, Lk0/xp;->c3(Lk0/xp;)I

    move-result v5

    if-eq v5, v4, :cond_1

    .line 6
    :cond_0
    iget-object v5, p0, Lk0/xp$a;->a:Lk0/xp;

    invoke-static {v5, v2, v3}, Lk0/xp;->b3(Lk0/xp;J)J

    .line 7
    iget-object v2, p0, Lk0/xp$a;->a:Lk0/xp;

    invoke-static {v2, v4}, Lk0/xp;->d3(Lk0/xp;I)I

    const/16 v2, 0x9

    new-array v2, v2, [I

    const/16 v3, 0xe3

    aput v3, v2, v1

    const/16 v1, -0x37

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x2

    const/4 v4, 0x6

    aput v4, v2, v1

    const/4 v1, 0x3

    .line 8
    iget v5, v0, Landroid/text/format/Time;->year:I

    add-int/lit16 v5, v5, -0x7e2

    aput v5, v2, v1

    const/4 v1, 0x4

    iget v5, v0, Landroid/text/format/Time;->month:I

    add-int/2addr v5, v3

    aput v5, v2, v1

    const/4 v1, 0x5

    iget v3, v0, Landroid/text/format/Time;->weekDay:I

    aput v3, v2, v1

    iget v1, v0, Landroid/text/format/Time;->monthDay:I

    aput v1, v2, v4

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
