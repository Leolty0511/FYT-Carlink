.class public Lk0/fl$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/fl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/fl;


# direct methods
.method public constructor <init>(Lk0/fl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/fl$c;->a:Lk0/fl;

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

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    .line 5
    iget v3, v0, Landroid/text/format/Time;->hour:I

    int-to-byte v3, v3

    .line 6
    iget v0, v0, Landroid/text/format/Time;->minute:I

    int-to-byte v0, v0

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

    aput v0, v4, v3

    const/4 v0, 0x6

    aput v1, v4, v0

    const/4 v0, 0x7

    aput v1, v4, v0

    const/16 v0, 0x8

    aput v2, v4, v0

    const/16 v0, 0x9

    aput v1, v4, v0

    aput v1, v4, v6

    const/16 v0, 0xb

    aput v1, v4, v0

    const/16 v0, 0xc

    aput v1, v4, v0

    .line 7
    invoke-static {v4}, Lz/k;->s([I)V

    return-void
.end method
