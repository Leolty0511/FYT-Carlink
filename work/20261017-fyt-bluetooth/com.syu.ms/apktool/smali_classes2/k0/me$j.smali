.class public Lk0/me$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/me;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/me;


# direct methods
.method public constructor <init>(Lk0/me;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/me$j;->a:Lk0/me;

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

    int-to-byte v2, v2

    .line 5
    iget v3, v0, Landroid/text/format/Time;->year:I

    add-int/lit16 v3, v3, -0x7d0

    int-to-byte v3, v3

    .line 6
    iget v4, v0, Landroid/text/format/Time;->month:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    int-to-byte v4, v4

    .line 7
    iget v6, v0, Landroid/text/format/Time;->monthDay:I

    int-to-byte v6, v6

    .line 8
    iget v7, v0, Landroid/text/format/Time;->hour:I

    int-to-byte v7, v7

    .line 9
    iget v8, v0, Landroid/text/format/Time;->minute:I

    int-to-byte v8, v8

    .line 10
    iget v0, v0, Landroid/text/format/Time;->second:I

    int-to-byte v0, v0

    const/16 v9, 0xa

    new-array v9, v9, [I

    const/16 v10, 0xe3

    aput v10, v9, v1

    const/16 v1, -0x4e

    aput v1, v9, v5

    const/4 v1, 0x2

    const/4 v5, 0x6

    aput v5, v9, v1

    const/4 v1, 0x3

    aput v0, v9, v1

    const/4 v0, 0x4

    aput v8, v9, v0

    const/4 v0, 0x5

    aput v7, v9, v0

    aput v6, v9, v5

    const/4 v0, 0x7

    aput v2, v9, v0

    const/16 v0, 0x8

    aput v4, v9, v0

    const/16 v0, 0x9

    aput v3, v9, v0

    .line 11
    invoke-static {v9}, Lz/k;->s([I)V

    return-void
.end method
