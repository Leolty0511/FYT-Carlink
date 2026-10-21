.class public Lk0/we$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/we;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Landroid/text/format/Time;

.field public final synthetic b:Lk0/we;


# direct methods
.method public constructor <init>(Lk0/we;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/we$c;->b:Lk0/we;

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

    iput-object v0, p0, Lk0/we$c;->a:Landroid/text/format/Time;

    .line 2
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 3
    iget-object v0, p0, Lk0/we$c;->a:Landroid/text/format/Time;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    div-long/2addr v2, v4

    .line 4
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    .line 5
    iget-object v4, p0, Lk0/we$c;->b:Lk0/we;

    invoke-static {v4}, Lk0/we;->c3(Lk0/we;)J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-nez v4, :cond_0

    iget-object v4, p0, Lk0/we$c;->b:Lk0/we;

    invoke-static {v4}, Lk0/we;->e3(Lk0/we;)I

    move-result v4

    if-eq v4, v0, :cond_1

    .line 6
    :cond_0
    iget-object v4, p0, Lk0/we$c;->b:Lk0/we;

    invoke-static {v4, v2, v3}, Lk0/we;->d3(Lk0/we;J)J

    .line 7
    iget-object v2, p0, Lk0/we$c;->b:Lk0/we;

    invoke-static {v2, v0}, Lk0/we;->f3(Lk0/we;I)I

    .line 8
    iget-object v2, p0, Lk0/we$c;->a:Landroid/text/format/Time;

    iget v3, v2, Landroid/text/format/Time;->hour:I

    int-to-byte v3, v3

    .line 9
    iget v2, v2, Landroid/text/format/Time;->minute:I

    int-to-byte v2, v2

    const/16 v4, 0xd

    new-array v4, v4, [I

    const/16 v5, 0xe3

    aput v5, v4, v1

    const/4 v5, 0x1

    const/16 v6, 0xa

    aput v6, v4, v5

    const/4 v5, 0x2

    const/16 v7, -0x35

    aput v7, v4, v5

    const/4 v5, 0x3

    aput v1, v4, v5

    const/4 v5, 0x4

    aput v3, v4, v5

    const/4 v3, 0x5

    aput v2, v4, v3

    const/4 v2, 0x6

    aput v1, v4, v2

    const/4 v2, 0x7

    aput v1, v4, v2

    const/16 v2, 0x8

    aput v0, v4, v2

    const/16 v0, 0x9

    aput v1, v4, v0

    aput v1, v4, v6

    const/16 v0, 0xb

    aput v1, v4, v0

    const/16 v0, 0xc

    aput v1, v4, v0

    .line 10
    invoke-static {v4}, Lz/k;->s([I)V

    :cond_1
    return-void
.end method
