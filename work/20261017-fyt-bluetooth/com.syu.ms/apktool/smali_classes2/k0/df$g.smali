.class public Lk0/df$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/df;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/df;


# direct methods
.method public constructor <init>(Lk0/df;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/df$g;->a:Lk0/df;

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
    iget-object v6, p0, Lk0/df$g;->a:Lk0/df;

    invoke-static {v6}, Lk0/df;->r3(Lk0/df;)J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-nez v6, :cond_0

    iget-object v6, p0, Lk0/df$g;->a:Lk0/df;

    invoke-static {v6}, Lk0/df;->t3(Lk0/df;)I

    move-result v6

    if-eq v6, v4, :cond_1

    .line 6
    :cond_0
    iget-object v6, p0, Lk0/df$g;->a:Lk0/df;

    invoke-static {v6, v2, v3}, Lk0/df;->s3(Lk0/df;J)J

    .line 7
    iget-object v2, p0, Lk0/df$g;->a:Lk0/df;

    invoke-static {v2, v4}, Lk0/df;->u3(Lk0/df;I)I

    const/16 v2, 0xa

    new-array v2, v2, [I

    const/16 v3, 0xe3

    aput v3, v2, v1

    const/16 v1, 0xa6

    aput v1, v2, v5

    const/4 v1, 0x2

    const/4 v3, 0x7

    aput v3, v2, v1

    const/4 v1, 0x3

    .line 8
    iget v6, v0, Landroid/text/format/Time;->year:I

    add-int/lit16 v6, v6, -0x7d0

    int-to-byte v6, v6

    aput v6, v2, v1

    const/4 v1, 0x4

    iget v6, v0, Landroid/text/format/Time;->month:I

    add-int/2addr v6, v5

    int-to-byte v6, v6

    aput v6, v2, v1

    const/4 v1, 0x5

    iget v6, v0, Landroid/text/format/Time;->monthDay:I

    int-to-byte v6, v6

    aput v6, v2, v1

    const/4 v1, 0x6

    shl-int/2addr v4, v3

    iget v6, v0, Landroid/text/format/Time;->hour:I

    or-int/2addr v4, v6

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput v4, v2, v1

    iget v1, v0, Landroid/text/format/Time;->minute:I

    int-to-byte v1, v1

    aput v1, v2, v3

    const/16 v1, 0x8

    iget v0, v0, Landroid/text/format/Time;->second:I

    int-to-byte v0, v0

    aput v0, v2, v1

    const/16 v0, 0x9

    aput v5, v2, v0

    invoke-static {v2}, Lz/k;->s([I)V

    :cond_1
    return-void
.end method
