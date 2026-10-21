.class public Lk0/qg$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/qg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Landroid/text/format/Time;

.field public final synthetic b:Lk0/qg;


# direct methods
.method public constructor <init>(Lk0/qg;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/qg$b;->b:Lk0/qg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lk0/qg$b;->a:Landroid/text/format/Time;

    .line 2
    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 3
    iget-object v1, v0, Lk0/qg$b;->a:Landroid/text/format/Time;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    .line 4
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    const/4 v5, 0x1

    xor-int/2addr v1, v5

    .line 5
    iget-object v6, v0, Lk0/qg$b;->b:Lk0/qg;

    invoke-static {v6}, Lk0/qg;->b3(Lk0/qg;)J

    move-result-wide v6

    cmp-long v6, v6, v3

    if-nez v6, :cond_0

    iget-object v6, v0, Lk0/qg$b;->b:Lk0/qg;

    invoke-static {v6}, Lk0/qg;->d3(Lk0/qg;)I

    move-result v6

    if-eq v6, v1, :cond_2

    .line 6
    :cond_0
    iget-object v6, v0, Lk0/qg$b;->b:Lk0/qg;

    invoke-static {v6, v3, v4}, Lk0/qg;->c3(Lk0/qg;J)J

    .line 7
    iget-object v3, v0, Lk0/qg$b;->b:Lk0/qg;

    invoke-static {v3, v1}, Lk0/qg;->e3(Lk0/qg;I)I

    .line 8
    iget-object v3, v0, Lk0/qg$b;->a:Landroid/text/format/Time;

    iget v4, v3, Landroid/text/format/Time;->year:I

    add-int/lit16 v4, v4, -0x7d0

    int-to-byte v4, v4

    .line 9
    iget v6, v3, Landroid/text/format/Time;->month:I

    add-int/2addr v6, v5

    int-to-byte v6, v6

    .line 10
    iget v7, v3, Landroid/text/format/Time;->monthDay:I

    int-to-byte v7, v7

    .line 11
    iget v8, v3, Landroid/text/format/Time;->hour:I

    int-to-byte v8, v8

    .line 12
    iget v9, v3, Landroid/text/format/Time;->minute:I

    int-to-byte v9, v9

    .line 13
    iget v3, v3, Landroid/text/format/Time;->second:I

    int-to-byte v3, v3

    const/16 v10, 0xc

    const/16 v12, 0x8

    const/4 v13, 0x5

    const/4 v14, 0x4

    const/4 v15, 0x3

    const/16 v16, 0x2

    const/16 v17, -0x3a

    const/16 v18, 0xe3

    const/16 v11, 0xa

    const/16 v19, 0x6

    const/16 v20, 0x7

    if-lt v8, v10, :cond_1

    new-array v10, v11, [I

    aput v18, v10, v2

    aput v17, v10, v5

    aput v20, v10, v16

    aput v5, v10, v15

    and-int/lit8 v2, v8, 0x7f

    aput v2, v10, v14

    aput v9, v10, v13

    shl-int/lit8 v1, v1, 0x6

    and-int/lit8 v1, v1, 0x40

    and-int/lit8 v2, v3, 0x3f

    or-int/2addr v1, v2

    or-int/lit16 v1, v1, 0x80

    aput v1, v10, v19

    aput v4, v10, v20

    aput v6, v10, v12

    const/16 v1, 0x9

    aput v7, v10, v1

    .line 14
    invoke-static {v10}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array v10, v11, [I

    aput v18, v10, v2

    aput v17, v10, v5

    aput v20, v10, v16

    aput v5, v10, v15

    and-int/lit8 v2, v8, 0x7f

    aput v2, v10, v14

    aput v9, v10, v13

    shl-int/lit8 v1, v1, 0x6

    and-int/lit8 v1, v1, 0x40

    and-int/lit8 v2, v3, 0x3f

    or-int/2addr v1, v2

    and-int/lit8 v1, v1, 0x7f

    aput v1, v10, v19

    aput v4, v10, v20

    aput v6, v10, v12

    const/16 v1, 0x9

    aput v7, v10, v1

    .line 15
    invoke-static {v10}, Lz/k;->s([I)V

    :cond_2
    :goto_0
    return-void
.end method
