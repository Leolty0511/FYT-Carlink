.class public Lk0/gt$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/gt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Landroid/text/format/Time;

.field public final synthetic b:Lk0/gt;


# direct methods
.method public constructor <init>(Lk0/gt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/gt$a;->b:Lk0/gt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Landroid/text/format/Time;

    invoke-direct {p1}, Landroid/text/format/Time;-><init>()V

    iput-object p1, p0, Lk0/gt$a;->a:Landroid/text/format/Time;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    new-instance v0, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lk0/gt$a;->a:Landroid/text/format/Time;

    .line 2
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 3
    iget-object v0, p0, Lk0/gt$a;->a:Landroid/text/format/Time;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    div-long/2addr v2, v4

    .line 4
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    .line 5
    iget-object v4, p0, Lk0/gt$a;->b:Lk0/gt;

    invoke-static {v4}, Lk0/gt;->a3(Lk0/gt;)J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-nez v4, :cond_0

    iget-object v4, p0, Lk0/gt$a;->b:Lk0/gt;

    invoke-static {v4}, Lk0/gt;->c3(Lk0/gt;)I

    move-result v4

    if-eq v4, v0, :cond_1

    .line 6
    :cond_0
    iget-object v4, p0, Lk0/gt$a;->b:Lk0/gt;

    invoke-static {v4, v2, v3}, Lk0/gt;->b3(Lk0/gt;J)J

    .line 7
    iget-object v2, p0, Lk0/gt$a;->b:Lk0/gt;

    invoke-static {v2, v0}, Lk0/gt;->d3(Lk0/gt;I)I

    .line 8
    iget-object v0, p0, Lk0/gt$a;->a:Landroid/text/format/Time;

    iget v2, v0, Landroid/text/format/Time;->hour:I

    int-to-byte v2, v2

    .line 9
    iget v3, v0, Landroid/text/format/Time;->minute:I

    int-to-byte v3, v3

    .line 10
    iget v0, v0, Landroid/text/format/Time;->second:I

    int-to-byte v0, v0

    const/4 v4, 0x5

    new-array v4, v4, [I

    const/16 v5, 0xe3

    aput v5, v4, v1

    const/4 v1, 0x1

    const/16 v5, 0x23

    aput v5, v4, v1

    const/4 v1, 0x2

    aput v2, v4, v1

    const/4 v1, 0x3

    aput v3, v4, v1

    const/4 v1, 0x4

    aput v0, v4, v1

    .line 11
    invoke-static {v4}, Lz/k;->s([I)V

    :cond_1
    return-void
.end method
