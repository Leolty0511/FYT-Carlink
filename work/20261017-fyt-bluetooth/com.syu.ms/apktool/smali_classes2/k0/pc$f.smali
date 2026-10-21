.class public Lk0/pc$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/pc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/pc;


# direct methods
.method public constructor <init>(Lk0/pc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/pc$f;->a:Lk0/pc;

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
    iget v2, v0, Landroid/text/format/Time;->year:I

    add-int/lit16 v2, v2, -0x7d0

    int-to-byte v2, v2

    .line 5
    iget v3, v0, Landroid/text/format/Time;->month:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    int-to-byte v3, v3

    .line 6
    iget v5, v0, Landroid/text/format/Time;->monthDay:I

    int-to-byte v5, v5

    .line 7
    iget v6, v0, Landroid/text/format/Time;->hour:I

    int-to-byte v6, v6

    .line 8
    iget v0, v0, Landroid/text/format/Time;->minute:I

    int-to-byte v0, v0

    const/16 v7, 0xd

    new-array v7, v7, [I

    const/16 v8, 0xe3

    const/4 v9, 0x0

    aput v8, v7, v9

    const/16 v8, 0xa

    aput v8, v7, v4

    const/16 v4, -0x35

    const/4 v10, 0x2

    aput v4, v7, v10

    const/4 v4, 0x3

    aput v9, v7, v4

    const/4 v4, 0x4

    aput v6, v7, v4

    const/4 v4, 0x5

    aput v0, v7, v4

    const/4 v0, 0x6

    aput v9, v7, v0

    const/4 v0, 0x7

    aput v9, v7, v0

    const/16 v0, 0x8

    aput v1, v7, v0

    const/16 v0, 0x9

    aput v2, v7, v0

    aput v3, v7, v8

    const/16 v0, 0xb

    aput v5, v7, v0

    const/16 v0, 0xc

    aput v10, v7, v0

    .line 9
    invoke-static {v7}, Lz/k;->s([I)V

    return-void
.end method
