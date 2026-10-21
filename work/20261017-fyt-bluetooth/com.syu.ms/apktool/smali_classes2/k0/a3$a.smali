.class public Lk0/a3$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/a3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/a3;


# direct methods
.method public constructor <init>(Lk0/a3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/a3$a;->a:Lk0/a3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

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

    int-to-byte v5, v5

    .line 5
    iget-object v7, v0, Lk0/a3$a;->a:Lk0/a3;

    invoke-static {v7}, Lk0/a3;->z3(Lk0/a3;)J

    move-result-wide v7

    cmp-long v7, v7, v3

    if-nez v7, :cond_0

    iget-object v7, v0, Lk0/a3$a;->a:Lk0/a3;

    invoke-static {v7}, Lk0/a3;->B3(Lk0/a3;)I

    move-result v7

    if-eq v7, v5, :cond_2

    .line 6
    :cond_0
    iget-object v7, v0, Lk0/a3$a;->a:Lk0/a3;

    invoke-static {v7, v3, v4}, Lk0/a3;->A3(Lk0/a3;J)J

    .line 7
    iget-object v3, v0, Lk0/a3$a;->a:Lk0/a3;

    invoke-static {v3, v5}, Lk0/a3;->C3(Lk0/a3;I)I

    .line 8
    iget v3, v1, Landroid/text/format/Time;->hour:I

    const/16 v4, 0xc

    if-ne v5, v6, :cond_1

    if-le v3, v4, :cond_1

    add-int/lit8 v3, v3, -0xc

    .line 9
    :cond_1
    iget v7, v1, Landroid/text/format/Time;->minute:I

    const/16 v8, 0x9

    new-array v9, v8, [I

    const/16 v10, 0xe3

    aput v10, v9, v2

    const/16 v10, 0x9d

    aput v10, v9, v6

    const/4 v10, 0x2

    const/4 v11, 0x6

    aput v11, v9, v10

    const/4 v12, 0x3

    aput v3, v9, v12

    const/4 v13, 0x4

    aput v7, v9, v13

    shl-int/lit8 v14, v5, 0x7

    and-int/lit16 v14, v14, 0x80

    const/4 v15, 0x5

    aput v14, v9, v15

    .line 10
    iget v14, v1, Landroid/text/format/Time;->monthDay:I

    aput v14, v9, v11

    iget v14, v1, Landroid/text/format/Time;->month:I

    add-int/2addr v14, v6

    const/16 v16, 0x7

    aput v14, v9, v16

    iget v1, v1, Landroid/text/format/Time;->year:I

    add-int/lit16 v1, v1, -0x7d0

    const/16 v14, 0x8

    aput v1, v9, v14

    invoke-static {v9}, Lz/k;->s([I)V

    .line 11
    sget v1, Lk0/nt;->a:I

    const v9, 0x860070

    if-ne v1, v9, :cond_2

    const/16 v1, 0xf

    new-array v1, v1, [B

    const/16 v9, 0x5a

    aput-byte v9, v1, v2

    const/16 v9, -0x5b

    aput-byte v9, v1, v6

    const/16 v6, 0xa

    aput-byte v6, v1, v10

    const/16 v9, -0x35

    aput-byte v9, v1, v12

    aput-byte v2, v1, v13

    int-to-byte v3, v3

    aput-byte v3, v1, v15

    int-to-byte v3, v7

    aput-byte v3, v1, v11

    aput-byte v2, v1, v16

    aput-byte v2, v1, v14

    aput-byte v5, v1, v8

    aput-byte v2, v1, v6

    const/16 v3, 0xb

    aput-byte v2, v1, v3

    aput-byte v2, v1, v4

    const/16 v3, 0xd

    aput-byte v2, v1, v3

    const/16 v3, 0xe

    aput-byte v2, v1, v3

    .line 12
    invoke-static {v1}, Lk0/a3;->Q3([B)V

    :cond_2
    return-void
.end method
