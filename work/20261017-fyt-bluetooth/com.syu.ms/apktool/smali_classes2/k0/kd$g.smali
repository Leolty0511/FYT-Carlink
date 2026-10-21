.class public Lk0/kd$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/kd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/kd;


# direct methods
.method public constructor <init>(Lk0/kd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/kd$g;->a:Lk0/kd;

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

    .line 3
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    const/16 v2, 0xd

    new-array v2, v2, [I

    const/16 v3, 0xe3

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    const/16 v5, 0xa

    aput v5, v2, v3

    const/4 v6, 0x2

    const/16 v7, -0x35

    aput v7, v2, v6

    const/4 v6, 0x3

    aput v4, v2, v6

    const/4 v6, 0x4

    .line 4
    iget v7, v0, Landroid/text/format/Time;->hour:I

    aput v7, v2, v6

    const/4 v6, 0x5

    iget v7, v0, Landroid/text/format/Time;->minute:I

    aput v7, v2, v6

    const/4 v6, 0x6

    aput v4, v2, v6

    const/4 v6, 0x7

    aput v4, v2, v6

    const/16 v6, 0x8

    aput v1, v2, v6

    const/16 v1, 0x9

    iget v6, v0, Landroid/text/format/Time;->year:I

    add-int/lit16 v6, v6, -0x7d0

    aput v6, v2, v1

    iget v1, v0, Landroid/text/format/Time;->month:I

    add-int/2addr v1, v3

    aput v1, v2, v5

    const/16 v1, 0xb

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    aput v0, v2, v1

    const/16 v0, 0xc

    aput v4, v2, v0

    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method
