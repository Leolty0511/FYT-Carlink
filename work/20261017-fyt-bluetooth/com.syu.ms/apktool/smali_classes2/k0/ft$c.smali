.class public Lk0/ft$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ft;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Landroid/text/format/Time;

.field public b:B

.field public final synthetic c:Lk0/ft;


# direct methods
.method public constructor <init>(Lk0/ft;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ft$c;->c:Lk0/ft;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Landroid/text/format/Time;

    invoke-direct {p1}, Landroid/text/format/Time;-><init>()V

    iput-object p1, p0, Lk0/ft$c;->a:Landroid/text/format/Time;

    const/4 p1, 0x1

    .line 3
    iput-byte p1, p0, Lk0/ft$c;->b:B

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lk0/ft$c;->a:Landroid/text/format/Time;

    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 2
    iget-object v1, v0, Lk0/ft$c;->a:Landroid/text/format/Time;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    const-wide/32 v5, 0xea60

    div-long/2addr v3, v5

    .line 3
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    .line 4
    iget-object v5, v0, Lk0/ft$c;->a:Landroid/text/format/Time;

    iget v6, v5, Landroid/text/format/Time;->year:I

    add-int/lit16 v6, v6, -0x7d0

    int-to-byte v6, v6

    .line 5
    iget v7, v5, Landroid/text/format/Time;->month:I

    const/4 v8, 0x1

    add-int/2addr v7, v8

    int-to-byte v7, v7

    .line 6
    iget v9, v5, Landroid/text/format/Time;->monthDay:I

    int-to-byte v9, v9

    .line 7
    iget v10, v5, Landroid/text/format/Time;->hour:I

    int-to-byte v10, v10

    .line 8
    iget v11, v5, Landroid/text/format/Time;->minute:I

    int-to-byte v11, v11

    .line 9
    iget v5, v5, Landroid/text/format/Time;->second:I

    int-to-byte v5, v5

    .line 10
    iget-object v12, v0, Lk0/ft$c;->c:Lk0/ft;

    invoke-static {v12}, Lk0/ft;->a3(Lk0/ft;)J

    move-result-wide v12

    cmp-long v12, v12, v3

    const/4 v14, 0x5

    const/4 v15, 0x4

    const/16 v16, 0x2

    const/16 v13, 0x9

    const/16 v17, 0x8

    const/16 v18, 0x3

    const/16 v19, 0x7

    if-nez v12, :cond_0

    iget-object v12, v0, Lk0/ft$c;->c:Lk0/ft;

    invoke-static {v12}, Lk0/ft;->c3(Lk0/ft;)I

    move-result v12

    if-eq v12, v1, :cond_1

    .line 11
    :cond_0
    iget-object v12, v0, Lk0/ft$c;->c:Lk0/ft;

    invoke-static {v12, v3, v4}, Lk0/ft;->b3(Lk0/ft;J)J

    .line 12
    iget-object v3, v0, Lk0/ft$c;->c:Lk0/ft;

    invoke-static {v3, v1}, Lk0/ft;->d3(Lk0/ft;I)I

    new-array v1, v13, [I

    const/16 v3, 0xe3

    aput v3, v1, v2

    aput v19, v1, v8

    const/16 v3, 0x21

    aput v3, v1, v16

    aput v6, v1, v18

    aput v7, v1, v15

    aput v9, v1, v14

    const/4 v3, 0x6

    aput v10, v1, v3

    aput v11, v1, v19

    aput v5, v1, v17

    .line 13
    invoke-static {v1}, Lz/k;->s([I)V

    :cond_1
    const/16 v1, 0xc

    new-array v1, v1, [B

    const/4 v3, -0x1

    aput-byte v3, v1, v2

    const/16 v3, -0x56

    aput-byte v3, v1, v8

    aput-byte v18, v1, v16

    aput-byte v19, v1, v18

    .line 14
    iget-object v3, v0, Lk0/ft$c;->a:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->year:I

    shr-int/lit8 v4, v3, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v15

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v14

    const/4 v3, 0x6

    aput-byte v7, v1, v3

    aput-byte v9, v1, v19

    aput-byte v10, v1, v17

    aput-byte v11, v1, v13

    const/16 v3, 0xa

    aput-byte v5, v1, v3

    const/16 v3, 0xb

    aput-byte v2, v1, v3

    invoke-static {v1}, Lk0/ft;->f3([B)V

    return-void
.end method
