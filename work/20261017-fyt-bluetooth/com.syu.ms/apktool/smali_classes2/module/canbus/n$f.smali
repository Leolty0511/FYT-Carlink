.class public Lmodule/canbus/n$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/n;


# direct methods
.method public constructor <init>(Lmodule/canbus/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/n$f;->a:Lmodule/canbus/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

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
    iget v4, v0, Landroid/text/format/Time;->second:I

    int-to-byte v4, v4

    if-eqz v1, :cond_0

    const/16 v5, 0xc

    if-le v2, v5, :cond_0

    add-int/lit8 v2, v2, -0xc

    int-to-byte v2, v2

    :cond_0
    const/16 v5, 0xa

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0xe3

    aput v7, v5, v6

    const/16 v6, 0x87

    const/4 v7, 0x1

    aput v6, v5, v7

    const/4 v6, 0x2

    const/4 v8, 0x7

    aput v8, v5, v6

    const/4 v6, 0x3

    .line 7
    iget v9, v0, Landroid/text/format/Time;->year:I

    add-int/lit16 v9, v9, -0x7d0

    int-to-byte v9, v9

    aput v9, v5, v6

    const/4 v6, 0x4

    iget v9, v0, Landroid/text/format/Time;->month:I

    add-int/2addr v9, v7

    int-to-byte v7, v9

    aput v7, v5, v6

    const/4 v6, 0x5

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    int-to-byte v0, v0

    aput v0, v5, v6

    const/4 v0, 0x6

    shl-int/lit8 v6, v1, 0x7

    or-int/2addr v2, v6

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput v2, v5, v0

    and-int/lit16 v0, v3, 0xff

    int-to-byte v0, v0

    aput v0, v5, v8

    const/16 v0, 0x8

    and-int/lit16 v2, v4, 0xff

    int-to-byte v2, v2

    aput v2, v5, v0

    const/16 v0, 0x9

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput v1, v5, v0

    invoke-static {v5}, Lz/k;->s([I)V

    return-void
.end method
