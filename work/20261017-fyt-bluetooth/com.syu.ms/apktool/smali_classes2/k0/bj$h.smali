.class public Lk0/bj$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/bj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Landroid/text/format/Time;

.field public final synthetic b:Lk0/bj;


# direct methods
.method public constructor <init>(Lk0/bj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/bj$h;->b:Lk0/bj;

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

    iput-object v0, p0, Lk0/bj$h;->a:Landroid/text/format/Time;

    .line 2
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 3
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 4
    iget-object v2, p0, Lk0/bj$h;->a:Landroid/text/format/Time;

    iget v3, v2, Landroid/text/format/Time;->year:I

    add-int/lit16 v3, v3, -0x7d0

    int-to-byte v3, v3

    .line 5
    iget v4, v2, Landroid/text/format/Time;->month:I

    add-int/2addr v4, v1

    int-to-byte v4, v4

    .line 6
    iget v5, v2, Landroid/text/format/Time;->monthDay:I

    int-to-byte v5, v5

    .line 7
    iget v6, v2, Landroid/text/format/Time;->hour:I

    int-to-byte v6, v6

    .line 8
    iget v7, v2, Landroid/text/format/Time;->minute:I

    int-to-byte v7, v7

    .line 9
    iget v2, v2, Landroid/text/format/Time;->second:I

    int-to-byte v2, v2

    const/16 v8, 0xa

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0xe3

    aput v10, v8, v9

    const/16 v9, -0x5a

    aput v9, v8, v1

    const/4 v9, 0x2

    const/4 v10, 0x7

    aput v10, v8, v9

    const/4 v9, 0x3

    aput v3, v8, v9

    const/4 v3, 0x4

    aput v4, v8, v3

    const/4 v3, 0x5

    aput v5, v8, v3

    const/4 v3, 0x6

    shl-int/2addr v0, v10

    or-int/2addr v0, v6

    aput v0, v8, v3

    aput v7, v8, v10

    const/16 v0, 0x8

    aput v2, v8, v0

    const/16 v0, 0x9

    aput v1, v8, v0

    .line 10
    invoke-static {v8}, Lz/k;->s([I)V

    return-void
.end method
