.class public Lk0/xl$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/xl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/xl;


# direct methods
.method public constructor <init>(Lk0/xl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/xl$e;->a:Lk0/xl;

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

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    div-long/2addr v2, v4

    .line 4
    iget-object v4, p0, Lk0/xl$e;->a:Lk0/xl;

    invoke-static {v4}, Lk0/xl;->f3(Lk0/xl;)J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-eqz v4, :cond_0

    .line 5
    iget-object v4, p0, Lk0/xl$e;->a:Lk0/xl;

    invoke-static {v4, v2, v3}, Lk0/xl;->g3(Lk0/xl;J)J

    .line 6
    iget v2, v0, Landroid/text/format/Time;->year:I

    add-int/lit16 v2, v2, -0x7d0

    int-to-byte v2, v2

    .line 7
    iget v3, v0, Landroid/text/format/Time;->month:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    int-to-byte v3, v3

    .line 8
    iget v5, v0, Landroid/text/format/Time;->monthDay:I

    int-to-byte v5, v5

    .line 9
    iget v6, v0, Landroid/text/format/Time;->hour:I

    int-to-byte v6, v6

    .line 10
    iget v0, v0, Landroid/text/format/Time;->minute:I

    int-to-byte v0, v0

    const/16 v7, 0x8

    new-array v7, v7, [I

    const/16 v8, 0xe3

    aput v8, v7, v1

    const/16 v1, 0x84

    aput v1, v7, v4

    const/4 v1, 0x2

    const/4 v4, 0x5

    aput v4, v7, v1

    const/4 v1, 0x3

    aput v2, v7, v1

    const/4 v1, 0x4

    aput v3, v7, v1

    aput v5, v7, v4

    const/4 v1, 0x6

    aput v6, v7, v1

    const/4 v1, 0x7

    aput v0, v7, v1

    .line 11
    invoke-static {v7}, Lz/k;->s([I)V

    :cond_0
    return-void
.end method
