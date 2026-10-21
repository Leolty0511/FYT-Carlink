.class public Lk0/hd$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/hd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/hd;


# direct methods
.method public constructor <init>(Lk0/hd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/hd$g;->a:Lk0/hd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 5
    iget-object v4, p0, Lk0/hd$g;->a:Lk0/hd;

    invoke-static {v4}, Lk0/hd;->k3(Lk0/hd;)J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-eqz v4, :cond_0

    .line 6
    iget-object v4, p0, Lk0/hd$g;->a:Lk0/hd;

    invoke-static {v4, v2, v3}, Lk0/hd;->l3(Lk0/hd;J)J

    const/4 v2, 0x6

    new-array v3, v2, [I

    const/16 v4, 0xe3

    aput v4, v3, v1

    const/4 v1, 0x7

    const/4 v4, 0x1

    aput v1, v3, v4

    const/4 v1, 0x2

    aput v2, v3, v1

    const/4 v1, 0x3

    .line 7
    iget v2, v0, Landroid/text/format/Time;->minute:I

    int-to-byte v2, v2

    aput v2, v3, v1

    const/4 v1, 0x4

    iget v0, v0, Landroid/text/format/Time;->hour:I

    int-to-byte v0, v0

    aput v0, v3, v1

    const/4 v0, 0x5

    aput v4, v3, v0

    invoke-static {v3}, Lz/k;->s([I)V

    :cond_0
    return-void
.end method
