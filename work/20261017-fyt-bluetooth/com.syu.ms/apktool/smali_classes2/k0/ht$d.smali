.class public Lk0/ht$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ht;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Landroid/text/format/Time;

.field public final synthetic b:Lk0/ht;


# direct methods
.method public constructor <init>(Lk0/ht;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ht$d;->b:Lk0/ht;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Landroid/text/format/Time;

    invoke-direct {p1}, Landroid/text/format/Time;-><init>()V

    iput-object p1, p0, Lk0/ht$d;->a:Landroid/text/format/Time;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    new-instance v0, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lk0/ht$d;->a:Landroid/text/format/Time;

    .line 2
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 3
    iget-object v0, p0, Lk0/ht$d;->a:Landroid/text/format/Time;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    div-long/2addr v0, v2

    .line 4
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    .line 5
    iget-object v3, p0, Lk0/ht$d;->b:Lk0/ht;

    invoke-static {v3}, Lk0/ht;->d3(Lk0/ht;)J

    move-result-wide v3

    cmp-long v3, v3, v0

    if-nez v3, :cond_0

    iget-object v3, p0, Lk0/ht$d;->b:Lk0/ht;

    invoke-static {v3}, Lk0/ht;->f3(Lk0/ht;)I

    move-result v3

    if-eq v3, v2, :cond_1

    .line 6
    :cond_0
    iget-object v3, p0, Lk0/ht$d;->b:Lk0/ht;

    invoke-static {v3, v0, v1}, Lk0/ht;->e3(Lk0/ht;J)J

    .line 7
    iget-object v0, p0, Lk0/ht$d;->b:Lk0/ht;

    invoke-static {v0, v2}, Lk0/ht;->g3(Lk0/ht;I)I

    .line 8
    iget-object v0, p0, Lk0/ht$d;->a:Landroid/text/format/Time;

    iget v1, v0, Landroid/text/format/Time;->hour:I

    .line 9
    iget v1, v0, Landroid/text/format/Time;->minute:I

    .line 10
    iget v0, v0, Landroid/text/format/Time;->second:I

    :cond_1
    return-void
.end method
