.class public Lk0/nq$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/nq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/nq;


# direct methods
.method public constructor <init>(Lk0/nq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/nq$a;->a:Lk0/nq;

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

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const/16 v3, 0x9

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0xe3

    aput v5, v3, v4

    const/16 v4, 0x98

    aput v4, v3, v2

    const/4 v4, 0x2

    const/4 v5, 0x6

    aput v5, v3, v4

    const/4 v4, 0x3

    .line 4
    iget v6, v0, Landroid/text/format/Time;->year:I

    add-int/lit16 v6, v6, -0x7d0

    aput v6, v3, v4

    const/4 v4, 0x4

    iget v6, v0, Landroid/text/format/Time;->month:I

    add-int/2addr v6, v2

    aput v6, v3, v4

    const/4 v2, 0x5

    iget v4, v0, Landroid/text/format/Time;->monthDay:I

    aput v4, v3, v2

    iget v2, v0, Landroid/text/format/Time;->hour:I

    aput v2, v3, v5

    const/4 v2, 0x7

    iget v0, v0, Landroid/text/format/Time;->minute:I

    aput v0, v3, v2

    const/16 v0, 0x8

    aput v1, v3, v0

    invoke-static {v3}, Lz/k;->s([I)V

    return-void
.end method
