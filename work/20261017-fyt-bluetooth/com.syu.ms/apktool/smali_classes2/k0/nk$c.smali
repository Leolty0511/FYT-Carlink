.class public Lk0/nk$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/nk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/nk;


# direct methods
.method public constructor <init>(Lk0/nk;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/nk$c;->a:Lk0/nk;

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

    int-to-byte v1, v1

    .line 4
    iget v2, v0, Landroid/text/format/Time;->hour:I

    int-to-byte v3, v2

    .line 5
    iget v4, v0, Landroid/text/format/Time;->minute:I

    int-to-byte v4, v4

    const/4 v5, 0x1

    const/16 v6, 0xc

    const/4 v7, 0x0

    if-le v2, v6, :cond_0

    sub-int/2addr v2, v6

    .line 6
    iput v2, v0, Landroid/text/format/Time;->hour:I

    move v0, v5

    goto :goto_0

    :cond_0
    move v0, v7

    :goto_0
    const/16 v2, 0xd

    new-array v2, v2, [I

    const/16 v8, 0xe3

    aput v8, v2, v7

    const/16 v8, 0xa

    aput v8, v2, v5

    const/4 v5, 0x2

    const/16 v9, -0x35

    aput v9, v2, v5

    const/4 v5, 0x3

    aput v7, v2, v5

    const/4 v5, 0x4

    aput v7, v2, v5

    const/4 v5, 0x5

    aput v7, v2, v5

    const/4 v5, 0x6

    aput v3, v2, v5

    const/4 v3, 0x7

    aput v4, v2, v3

    const/16 v3, 0x8

    aput v1, v2, v3

    const/16 v1, 0x9

    aput v0, v2, v1

    aput v7, v2, v8

    const/16 v0, 0xb

    aput v7, v2, v0

    aput v7, v2, v6

    .line 7
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method
