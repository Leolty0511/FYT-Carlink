.class public Lk0/lr$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/lr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/lr;


# direct methods
.method public constructor <init>(Lk0/lr;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/lr$b;->a:Lk0/lr;

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

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    .line 5
    iget v4, v0, Landroid/text/format/Time;->hour:I

    const/16 v5, 0xc

    if-le v4, v5, :cond_0

    move v6, v3

    goto :goto_0

    :cond_0
    move v6, v1

    :goto_0
    if-ne v2, v3, :cond_1

    if-le v4, v5, :cond_1

    add-int/lit8 v4, v4, -0xc

    .line 6
    :cond_1
    iget v5, v0, Landroid/text/format/Time;->minute:I

    const/16 v7, 0x9

    new-array v7, v7, [I

    const/16 v8, 0xe3

    aput v8, v7, v1

    const/16 v1, 0x7f

    aput v1, v7, v3

    const/4 v1, 0x2

    const/4 v8, 0x6

    aput v8, v7, v1

    const/4 v1, 0x3

    aput v4, v7, v1

    const/4 v1, 0x4

    aput v5, v7, v1

    const/4 v1, 0x5

    const/4 v4, 0x7

    shl-int/lit8 v5, v6, 0x7

    and-int/lit16 v5, v5, 0x80

    shl-int/2addr v2, v8

    and-int/lit8 v2, v2, 0x40

    or-int/2addr v2, v5

    aput v2, v7, v1

    .line 7
    iget v1, v0, Landroid/text/format/Time;->year:I

    add-int/lit16 v1, v1, -0x7d0

    aput v1, v7, v8

    iget v1, v0, Landroid/text/format/Time;->month:I

    add-int/2addr v1, v3

    aput v1, v7, v4

    const/16 v1, 0x8

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    aput v0, v7, v1

    invoke-static {v7}, Lz/k;->s([I)V

    return-void
.end method
