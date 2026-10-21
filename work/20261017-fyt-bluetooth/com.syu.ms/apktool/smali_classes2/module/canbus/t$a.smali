.class public Lmodule/canbus/t$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/t;


# direct methods
.method public constructor <init>(Lmodule/canbus/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/t$a;->a:Lmodule/canbus/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1
    new-instance v0, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 3
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    .line 4
    iget v2, v0, Landroid/text/format/Time;->hour:I

    int-to-byte v2, v2

    .line 5
    iget v3, v0, Landroid/text/format/Time;->minute:I

    int-to-byte v3, v3

    .line 6
    iget v4, v0, Landroid/text/format/Time;->year:I

    add-int/lit16 v4, v4, -0x7d0

    int-to-byte v4, v4

    .line 7
    iget v5, v0, Landroid/text/format/Time;->month:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    int-to-byte v5, v5

    .line 8
    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    int-to-byte v0, v0

    .line 9
    sget v7, Lk0/nt;->c:I

    const/16 v8, 0x22

    if-eq v7, v8, :cond_0

    const/16 v8, 0x23

    if-eq v7, v8, :cond_0

    const/16 v7, 0xd

    new-array v7, v7, [I

    const/16 v8, 0xe3

    const/4 v9, 0x0

    aput v8, v7, v9

    const/16 v8, 0xa

    aput v8, v7, v6

    const/4 v6, 0x2

    const/16 v10, -0x35

    aput v10, v7, v6

    const/4 v6, 0x3

    aput v9, v7, v6

    const/4 v6, 0x4

    aput v2, v7, v6

    const/4 v2, 0x5

    aput v3, v7, v2

    const/4 v2, 0x6

    aput v9, v7, v2

    const/4 v2, 0x7

    aput v9, v7, v2

    const/16 v2, 0x8

    aput v1, v7, v2

    const/16 v1, 0x9

    aput v4, v7, v1

    aput v5, v7, v8

    const/16 v1, 0xb

    aput v0, v7, v1

    const/16 v0, 0xc

    aput v9, v7, v0

    .line 10
    invoke-static {v7}, Lz/k;->s([I)V

    :cond_0
    return-void
.end method
