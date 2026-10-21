.class public Lk0/qh$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/qh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/qh;


# direct methods
.method public constructor <init>(Lk0/qh;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/qh$a;->a:Lk0/qh;

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

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    div-long/2addr v2, v4

    .line 4
    iget-object v4, p0, Lk0/qh$a;->a:Lk0/qh;

    invoke-static {v4}, Lk0/qh;->a3(Lk0/qh;)J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-eqz v4, :cond_0

    .line 5
    iget-object v4, p0, Lk0/qh$a;->a:Lk0/qh;

    invoke-static {v4, v2, v3}, Lk0/qh;->b3(Lk0/qh;J)J

    .line 6
    iget v2, v0, Landroid/text/format/Time;->hour:I

    .line 7
    iget v3, v0, Landroid/text/format/Time;->minute:I

    const/16 v4, 0x9

    new-array v4, v4, [I

    const/16 v5, 0xe3

    aput v5, v4, v1

    const/16 v5, 0x82

    const/4 v6, 0x1

    aput v5, v4, v6

    const/4 v5, 0x2

    const/4 v7, 0x6

    aput v7, v4, v5

    const/4 v5, 0x3

    .line 8
    iget v8, v0, Landroid/text/format/Time;->year:I

    and-int/lit16 v9, v8, 0xff

    aput v9, v4, v5

    const/16 v5, 0x8

    shr-int/2addr v8, v5

    and-int/lit8 v8, v8, 0xf

    iget v9, v0, Landroid/text/format/Time;->month:I

    add-int/2addr v9, v6

    const/4 v6, 0x4

    shl-int/2addr v9, v6

    and-int/lit16 v9, v9, 0xf0

    or-int/2addr v8, v9

    aput v8, v4, v6

    const/4 v6, 0x5

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    aput v0, v4, v6

    aput v2, v4, v7

    const/4 v0, 0x7

    aput v3, v4, v0

    aput v1, v4, v5

    invoke-static {v4}, Lz/k;->s([I)V

    :cond_0
    return-void
.end method
