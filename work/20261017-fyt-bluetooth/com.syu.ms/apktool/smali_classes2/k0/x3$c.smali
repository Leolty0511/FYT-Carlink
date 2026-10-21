.class public Lk0/x3$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/x3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/x3;


# direct methods
.method public constructor <init>(Lk0/x3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/x3$c;->a:Lk0/x3;

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

    .line 3
    sget v1, Lk0/nt;->a:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const v4, 0x11008b

    if-eq v1, v4, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    div-long/2addr v4, v6

    .line 5
    sget-object v1, Lk0/nt;->g:[I

    const/16 v6, 0xc3

    aget v1, v1, v6

    const/16 v6, 0xc4

    if-eqz v1, :cond_2

    .line 6
    iget-object v7, p0, Lk0/x3$c;->a:Lk0/x3;

    iget-wide v8, v7, Lk0/x3;->a0:J

    cmp-long v10, v4, v8

    if-eqz v10, :cond_1

    sub-long v8, v4, v8

    mul-int/lit8 v1, v1, 0x1e

    int-to-long v10, v1

    cmp-long v1, v8, v10

    if-ltz v1, :cond_1

    .line 7
    iput-wide v4, v7, Lk0/x3;->a0:J

    new-array v1, v3, [I

    aput v3, v1, v2

    .line 8
    invoke-static {v6, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_1
    new-array v1, v3, [I

    aput v2, v1, v2

    .line 9
    invoke-static {v6, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_2
    new-array v1, v3, [I

    aput v2, v1, v2

    .line 10
    invoke-static {v6, v1}, Lk0/qt;->y0(I[I)V

    .line 11
    :goto_0
    iget v1, v0, Landroid/text/format/Time;->year:I

    add-int/lit16 v1, v1, -0x7d0

    int-to-byte v1, v1

    .line 12
    iget v4, v0, Landroid/text/format/Time;->month:I

    add-int/2addr v4, v3

    int-to-byte v4, v4

    .line 13
    iget v5, v0, Landroid/text/format/Time;->monthDay:I

    int-to-byte v5, v5

    .line 14
    iget v6, v0, Landroid/text/format/Time;->hour:I

    int-to-byte v6, v6

    .line 15
    iget v7, v0, Landroid/text/format/Time;->minute:I

    int-to-byte v7, v7

    .line 16
    invoke-static {}, Lk0/x3;->k3()I

    move-result v8

    if-ne v8, v3, :cond_3

    const/16 v8, 0x9

    new-array v8, v8, [I

    const/16 v9, 0xe3

    aput v9, v8, v2

    const/16 v2, 0xa6

    aput v2, v8, v3

    const/4 v2, 0x2

    const/4 v3, 0x6

    aput v3, v8, v2

    const/4 v2, 0x3

    aput v1, v8, v2

    const/4 v1, 0x4

    aput v4, v8, v1

    const/4 v1, 0x5

    aput v5, v8, v1

    aput v6, v8, v3

    const/4 v1, 0x7

    aput v7, v8, v1

    const/16 v1, 0x8

    .line 17
    iget v0, v0, Landroid/text/format/Time;->second:I

    int-to-byte v0, v0

    aput v0, v8, v1

    invoke-static {v8}, Lz/k;->s([I)V

    :cond_3
    return-void
.end method
