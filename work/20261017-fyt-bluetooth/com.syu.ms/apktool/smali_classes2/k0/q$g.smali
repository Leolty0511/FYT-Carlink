.class public Lk0/q$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/q;


# direct methods
.method public constructor <init>(Lk0/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/q$g;->a:Lk0/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

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

    int-to-byte v8, v7

    .line 9
    iget v9, v0, Landroid/text/format/Time;->minute:I

    int-to-byte v9, v9

    const/16 v10, 0x1c8

    new-array v11, v5, [I

    aput v7, v11, v1

    .line 10
    invoke-static {v10, v11}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x1c9

    new-array v10, v5, [I

    .line 11
    iget v0, v0, Landroid/text/format/Time;->minute:I

    aput v0, v10, v1

    invoke-static {v7, v10}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xd

    new-array v0, v0, [I

    const/16 v7, 0xe3

    aput v7, v0, v1

    const/16 v7, 0xa

    aput v7, v0, v5

    const/16 v5, -0x35

    const/4 v10, 0x2

    aput v5, v0, v10

    const/4 v5, 0x3

    const/16 v11, -0x40

    aput v11, v0, v5

    const/4 v5, 0x4

    aput v8, v0, v5

    const/4 v5, 0x5

    aput v9, v0, v5

    const/4 v5, 0x6

    aput v1, v0, v5

    const/4 v1, 0x7

    const/16 v5, 0x8

    aput v5, v0, v1

    aput v2, v0, v5

    const/16 v1, 0x9

    aput v3, v0, v1

    aput v4, v0, v7

    const/16 v1, 0xb

    aput v6, v0, v1

    const/16 v1, 0xc

    aput v10, v0, v1

    .line 12
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method
