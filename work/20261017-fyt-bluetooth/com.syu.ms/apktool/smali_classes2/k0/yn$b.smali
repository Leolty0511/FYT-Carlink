.class public Lk0/yn$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/yn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/yn;


# direct methods
.method public constructor <init>(Lk0/yn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/yn$b;->a:Lk0/yn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

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

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 4
    iget v3, v0, Landroid/text/format/Time;->hour:I

    int-to-byte v3, v3

    .line 5
    iget v0, v0, Landroid/text/format/Time;->minute:I

    int-to-byte v0, v0

    .line 6
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v4

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    int-to-byte v4, v4

    const/4 v6, 0x7

    new-array v7, v6, [I

    const/16 v8, 0xe3

    aput v8, v7, v5

    const/16 v5, -0x3a

    aput v5, v7, v2

    const/4 v5, 0x2

    const/4 v8, 0x4

    aput v8, v7, v5

    const/4 v5, 0x3

    aput v2, v7, v5

    aput v3, v7, v8

    const/4 v2, 0x5

    aput v0, v7, v2

    shl-int/lit8 v0, v4, 0x7

    const/4 v2, 0x6

    shl-int/2addr v1, v2

    or-int/2addr v0, v1

    int-to-byte v0, v0

    aput v0, v7, v2

    .line 7
    invoke-static {v7}, Lz/k;->s([I)V

    return-void
.end method
