.class public Lk0/ca$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ca;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ca;


# direct methods
.method public constructor <init>(Lk0/ca;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ca$f;->a:Lk0/ca;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    const-wide/16 v5, 0x1770

    div-long/2addr v3, v5

    .line 4
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v5

    invoke-static {v5}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    const/4 v6, 0x1

    xor-int/2addr v5, v6

    .line 5
    iget-object v7, v0, Lk0/ca$f;->a:Lk0/ca;

    invoke-static {v7}, Lk0/ca;->c3(Lk0/ca;)J

    move-result-wide v7

    cmp-long v7, v7, v3

    if-nez v7, :cond_0

    iget-object v7, v0, Lk0/ca$f;->a:Lk0/ca;

    invoke-static {v7}, Lk0/ca;->e3(Lk0/ca;)I

    move-result v7

    if-eq v7, v5, :cond_3

    .line 6
    :cond_0
    iget-object v7, v0, Lk0/ca$f;->a:Lk0/ca;

    invoke-static {v7, v3, v4}, Lk0/ca;->d3(Lk0/ca;J)J

    .line 7
    iget-object v3, v0, Lk0/ca$f;->a:Lk0/ca;

    invoke-static {v3, v5}, Lk0/ca;->f3(Lk0/ca;I)I

    .line 8
    iget v3, v1, Landroid/text/format/Time;->year:I

    add-int/lit16 v3, v3, -0x7d0

    int-to-byte v3, v3

    .line 9
    iget v4, v1, Landroid/text/format/Time;->month:I

    add-int/2addr v4, v6

    int-to-byte v4, v4

    .line 10
    iget v7, v1, Landroid/text/format/Time;->monthDay:I

    int-to-byte v7, v7

    .line 11
    iget v8, v1, Landroid/text/format/Time;->hour:I

    int-to-byte v9, v8

    .line 12
    iget v10, v1, Landroid/text/format/Time;->minute:I

    int-to-byte v11, v10

    if-eqz v5, :cond_1

    const/16 v12, 0xc

    if-le v8, v12, :cond_1

    sub-int/2addr v8, v12

    .line 13
    iput v8, v1, Landroid/text/format/Time;->hour:I

    move v8, v6

    goto :goto_0

    :cond_1
    move v8, v2

    .line 14
    :goto_0
    iget-object v12, v0, Lk0/ca$f;->a:Lk0/ca;

    iget v12, v12, Lk0/ca;->i:I

    const/4 v14, 0x5

    const/4 v15, 0x4

    const/16 v16, 0x2

    const/16 v17, 0xe3

    const/16 v18, 0x3

    const/4 v13, 0x6

    if-ne v12, v6, :cond_2

    const/16 v5, 0x9

    new-array v5, v5, [I

    aput v17, v5, v2

    const/16 v2, -0x7e

    aput v2, v5, v6

    aput v13, v5, v16

    aput v3, v5, v18

    aput v4, v5, v15

    aput v7, v5, v14

    aput v9, v5, v13

    const/4 v2, 0x7

    aput v11, v5, v2

    const/16 v2, 0x8

    .line 15
    iget v1, v1, Landroid/text/format/Time;->second:I

    aput v1, v5, v2

    invoke-static {v5}, Lz/k;->s([I)V

    goto :goto_1

    :cond_2
    new-array v3, v13, [I

    aput v17, v3, v2

    const/16 v2, -0x38

    aput v2, v3, v6

    aput v18, v3, v16

    .line 16
    iget v1, v1, Landroid/text/format/Time;->hour:I

    aput v1, v3, v18

    aput v10, v3, v15

    const/4 v1, 0x7

    shl-int/lit8 v1, v8, 0x7

    shl-int/lit8 v2, v5, 0x6

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput v1, v3, v14

    invoke-static {v3}, Lz/k;->s([I)V

    :cond_3
    :goto_1
    return-void
.end method
