.class public Lmodule/canbus/e0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/e0;


# direct methods
.method public constructor <init>(Lmodule/canbus/e0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/e0$c;->a:Lmodule/canbus/e0;

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
    iget-object v5, p0, Lmodule/canbus/e0$c;->a:Lmodule/canbus/e0;

    invoke-static {v5}, Lmodule/canbus/e0;->w3(Lmodule/canbus/e0;)J

    move-result-wide v5

    cmp-long v5, v5, v2

    if-nez v5, :cond_0

    iget-object v5, p0, Lmodule/canbus/e0$c;->a:Lmodule/canbus/e0;

    invoke-static {v5}, Lmodule/canbus/e0;->y3(Lmodule/canbus/e0;)I

    move-result v5

    if-eq v5, v4, :cond_1

    .line 6
    :cond_0
    iget-object v5, p0, Lmodule/canbus/e0$c;->a:Lmodule/canbus/e0;

    invoke-static {v5, v2, v3}, Lmodule/canbus/e0;->x3(Lmodule/canbus/e0;J)J

    .line 7
    iget-object v2, p0, Lmodule/canbus/e0$c;->a:Lmodule/canbus/e0;

    invoke-static {v2, v4}, Lmodule/canbus/e0;->z3(Lmodule/canbus/e0;I)I

    .line 8
    iget v2, v0, Landroid/text/format/Time;->hour:I

    int-to-byte v2, v2

    .line 9
    iget v0, v0, Landroid/text/format/Time;->minute:I

    int-to-byte v0, v0

    const/16 v3, 0xd

    new-array v3, v3, [I

    const/16 v4, 0xe3

    aput v4, v3, v1

    const/4 v4, 0x1

    const/16 v5, 0xa

    aput v5, v3, v4

    const/4 v4, 0x2

    const/16 v6, -0x35

    aput v6, v3, v4

    const/4 v4, 0x3

    aput v1, v3, v4

    const/4 v4, 0x4

    aput v2, v3, v4

    const/4 v2, 0x5

    aput v0, v3, v2

    const/4 v0, 0x6

    aput v1, v3, v0

    const/4 v0, 0x7

    aput v1, v3, v0

    const/16 v0, 0x8

    aput v1, v3, v0

    const/16 v0, 0x9

    aput v1, v3, v0

    aput v1, v3, v5

    const/16 v0, 0xb

    aput v1, v3, v0

    const/16 v0, 0xc

    aput v1, v3, v0

    .line 10
    invoke-static {v3}, Lz/k;->s([I)V

    :cond_1
    return-void
.end method
