.class public Lk0/i9$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/i9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/i9;


# direct methods
.method public constructor <init>(Lk0/i9;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/i9$g;->a:Lk0/i9;

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

    .line 3
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    .line 4
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    int-to-byte v2, v2

    const/4 v5, 0x7

    new-array v5, v5, [I

    const/16 v6, 0xe3

    aput v6, v5, v3

    const/16 v3, 0xc8

    aput v3, v5, v4

    const/4 v3, 0x2

    const/4 v4, 0x4

    aput v4, v5, v3

    const/4 v3, 0x3

    .line 5
    iget v6, v0, Landroid/text/format/Time;->minute:I

    aput v6, v5, v3

    iget v0, v0, Landroid/text/format/Time;->hour:I

    aput v0, v5, v4

    const/4 v0, 0x5

    aput v1, v5, v0

    const/4 v0, 0x6

    aput v2, v5, v0

    invoke-static {v5}, Lz/k;->s([I)V

    return-void
.end method
