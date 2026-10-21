.class public Lmodule/canbus/d0$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/d0;


# direct methods
.method public constructor <init>(Lmodule/canbus/d0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/d0$i;->a:Lmodule/canbus/d0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

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

    int-to-byte v4, v4

    .line 5
    iget-object v6, p0, Lmodule/canbus/d0$i;->a:Lmodule/canbus/d0;

    invoke-static {v6}, Lmodule/canbus/d0;->d3(Lmodule/canbus/d0;)J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-nez v6, :cond_0

    iget-object v6, p0, Lmodule/canbus/d0$i;->a:Lmodule/canbus/d0;

    invoke-static {v6}, Lmodule/canbus/d0;->s3(Lmodule/canbus/d0;)I

    move-result v6

    if-eq v6, v4, :cond_2

    .line 6
    :cond_0
    iget-object v6, p0, Lmodule/canbus/d0$i;->a:Lmodule/canbus/d0;

    invoke-static {v6, v2, v3}, Lmodule/canbus/d0;->f3(Lmodule/canbus/d0;J)J

    .line 7
    iget-object v2, p0, Lmodule/canbus/d0$i;->a:Lmodule/canbus/d0;

    invoke-static {v2, v4}, Lmodule/canbus/d0;->u3(Lmodule/canbus/d0;I)I

    .line 8
    iget v2, v0, Landroid/text/format/Time;->hour:I

    if-ne v4, v5, :cond_1

    const/16 v3, 0xc

    if-le v2, v3, :cond_1

    add-int/lit8 v2, v2, -0xc

    .line 9
    :cond_1
    iget v3, v0, Landroid/text/format/Time;->minute:I

    const/16 v6, 0x9

    new-array v6, v6, [I

    const/16 v7, 0xe3

    aput v7, v6, v1

    const/16 v1, 0x9d

    aput v1, v6, v5

    const/4 v1, 0x2

    const/4 v7, 0x6

    aput v7, v6, v1

    const/4 v1, 0x3

    aput v2, v6, v1

    const/4 v1, 0x4

    aput v3, v6, v1

    const/4 v1, 0x5

    const/4 v2, 0x7

    shl-int/lit8 v3, v4, 0x7

    and-int/lit16 v3, v3, 0x80

    aput v3, v6, v1

    .line 10
    iget v1, v0, Landroid/text/format/Time;->monthDay:I

    aput v1, v6, v7

    iget v1, v0, Landroid/text/format/Time;->month:I

    add-int/2addr v1, v5

    aput v1, v6, v2

    const/16 v1, 0x8

    iget v0, v0, Landroid/text/format/Time;->year:I

    add-int/lit16 v0, v0, -0x7d0

    aput v0, v6, v1

    invoke-static {v6}, Lz/k;->s([I)V

    :cond_2
    return-void
.end method
