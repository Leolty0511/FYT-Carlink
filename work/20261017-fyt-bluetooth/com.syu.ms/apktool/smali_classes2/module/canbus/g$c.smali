.class public Lmodule/canbus/g$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/g;


# direct methods
.method public constructor <init>(Lmodule/canbus/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/g$c;->a:Lmodule/canbus/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

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

    const-wide/32 v5, 0xea60

    div-long/2addr v3, v5

    .line 4
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v5

    invoke-static {v5}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    const/4 v6, 0x1

    xor-int/2addr v5, v6

    .line 5
    iget-object v7, v0, Lmodule/canbus/g$c;->a:Lmodule/canbus/g;

    invoke-static {v7}, Lmodule/canbus/g;->d3(Lmodule/canbus/g;)J

    move-result-wide v7

    cmp-long v7, v7, v3

    if-nez v7, :cond_0

    iget-object v7, v0, Lmodule/canbus/g$c;->a:Lmodule/canbus/g;

    invoke-static {v7}, Lmodule/canbus/g;->s3(Lmodule/canbus/g;)I

    move-result v7

    if-eq v7, v5, :cond_4

    .line 6
    :cond_0
    iget-object v7, v0, Lmodule/canbus/g$c;->a:Lmodule/canbus/g;

    invoke-static {v7, v3, v4}, Lmodule/canbus/g;->f3(Lmodule/canbus/g;J)J

    .line 7
    iget-object v3, v0, Lmodule/canbus/g$c;->a:Lmodule/canbus/g;

    invoke-static {v3, v5}, Lmodule/canbus/g;->u3(Lmodule/canbus/g;I)I

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

    int-to-byte v8, v8

    .line 12
    iget v9, v1, Landroid/text/format/Time;->minute:I

    int-to-byte v9, v9

    .line 13
    iget v1, v1, Landroid/text/format/Time;->second:I

    int-to-byte v1, v1

    .line 14
    sget v10, Lk0/nt;->a:I

    const v11, 0x10075    # 9.2E-41f

    const/4 v13, 0x3

    const/4 v14, 0x2

    const/16 v15, 0xe3

    const/16 v16, 0x4

    const/16 v17, 0x6

    const/4 v12, 0x7

    if-eq v10, v11, :cond_3

    const v11, 0x20075

    if-eq v10, v11, :cond_3

    const v11, 0x30075

    if-ne v10, v11, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v5, :cond_2

    const/16 v3, 0xc

    if-le v8, v3, :cond_2

    add-int/lit8 v8, v8, -0xc

    int-to-byte v8, v8

    :cond_2
    new-array v3, v12, [I

    aput v15, v3, v2

    const/16 v2, -0x3a

    aput v2, v3, v6

    aput v16, v3, v14

    const/16 v2, 0x50

    aput v2, v3, v13

    shl-int/lit8 v2, v5, 0x7

    or-int/2addr v2, v8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput v2, v3, v16

    const/4 v2, 0x5

    aput v9, v3, v2

    aput v1, v3, v17

    .line 15
    invoke-static {v3}, Lz/k;->s([I)V

    goto :goto_1

    :cond_3
    :goto_0
    const/16 v10, 0x9

    new-array v10, v10, [I

    aput v15, v10, v2

    const/16 v2, -0x39

    aput v2, v10, v6

    aput v17, v10, v14

    aput v3, v10, v13

    aput v4, v10, v16

    const/4 v2, 0x5

    aput v7, v10, v2

    shl-int/lit8 v2, v5, 0x7

    or-int/2addr v2, v8

    aput v2, v10, v17

    aput v9, v10, v12

    const/16 v2, 0x8

    aput v1, v10, v2

    .line 16
    invoke-static {v10}, Lz/k;->s([I)V

    :cond_4
    :goto_1
    return-void
.end method
