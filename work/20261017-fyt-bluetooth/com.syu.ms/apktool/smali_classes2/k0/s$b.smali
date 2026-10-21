.class public Lk0/s$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/s;


# direct methods
.method public constructor <init>(Lk0/s;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/s$b;->a:Lk0/s;

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

    const-wide/32 v4, 0xea60

    div-long/2addr v2, v4

    .line 4
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v4

    invoke-static {v4}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    .line 5
    iget-object v6, p0, Lk0/s$b;->a:Lk0/s;

    invoke-static {v6}, Lk0/s;->b3(Lk0/s;)J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-nez v6, :cond_0

    iget-object v6, p0, Lk0/s$b;->a:Lk0/s;

    invoke-static {v6}, Lk0/s;->d3(Lk0/s;)I

    move-result v6

    if-eq v6, v4, :cond_2

    .line 6
    :cond_0
    iget-object v6, p0, Lk0/s$b;->a:Lk0/s;

    invoke-static {v6, v2, v3}, Lk0/s;->c3(Lk0/s;J)J

    .line 7
    iget-object v2, p0, Lk0/s$b;->a:Lk0/s;

    invoke-static {v2, v4}, Lk0/s;->e3(Lk0/s;I)I

    .line 8
    iget v2, v0, Landroid/text/format/Time;->hour:I

    .line 9
    iget v3, v0, Landroid/text/format/Time;->minute:I

    .line 10
    iget v0, v0, Landroid/text/format/Time;->second:I

    if-eqz v4, :cond_1

    const/16 v6, 0xc

    if-le v2, v6, :cond_1

    add-int/lit8 v2, v2, -0xc

    :cond_1
    const/4 v6, 0x7

    new-array v7, v6, [I

    const/16 v8, 0xe3

    aput v8, v7, v1

    const/16 v1, 0xc6

    aput v1, v7, v5

    const/4 v1, 0x2

    const/4 v5, 0x4

    aput v5, v7, v1

    const/4 v1, 0x3

    const/16 v8, 0x50

    aput v8, v7, v1

    shl-int/lit8 v1, v4, 0x7

    or-int/2addr v1, v2

    aput v1, v7, v5

    const/4 v1, 0x5

    aput v3, v7, v1

    const/4 v1, 0x6

    aput v0, v7, v1

    .line 11
    invoke-static {v7}, Lz/k;->s([I)V

    :cond_2
    return-void
.end method
