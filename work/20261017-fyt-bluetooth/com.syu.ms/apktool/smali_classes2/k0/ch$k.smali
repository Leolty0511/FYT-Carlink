.class public Lk0/ch$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ch;


# direct methods
.method public constructor <init>(Lk0/ch;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ch$k;->a:Lk0/ch;

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

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    div-long/2addr v2, v4

    .line 4
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v4

    invoke-static {v4}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v4

    int-to-byte v4, v4

    .line 5
    iget-object v5, p0, Lk0/ch$k;->a:Lk0/ch;

    invoke-static {v5}, Lk0/ch;->q3(Lk0/ch;)J

    move-result-wide v5

    cmp-long v5, v5, v2

    const/4 v6, 0x4

    const/16 v7, 0x8

    const/4 v8, 0x1

    if-nez v5, :cond_0

    iget-object v5, p0, Lk0/ch$k;->a:Lk0/ch;

    invoke-static {v5}, Lk0/ch;->s3(Lk0/ch;)B

    move-result v5

    if-eq v5, v4, :cond_3

    .line 6
    :cond_0
    iget-object v5, p0, Lk0/ch$k;->a:Lk0/ch;

    invoke-static {v5, v2, v3}, Lk0/ch;->r3(Lk0/ch;J)J

    .line 7
    iget-object v2, p0, Lk0/ch$k;->a:Lk0/ch;

    invoke-static {v2, v4}, Lk0/ch;->t3(Lk0/ch;B)B

    .line 8
    iget v2, v0, Landroid/text/format/Time;->year:I

    add-int/lit16 v2, v2, -0x7d0

    int-to-byte v2, v2

    .line 9
    iget v3, v0, Landroid/text/format/Time;->month:I

    add-int/2addr v3, v8

    int-to-byte v3, v3

    .line 10
    iget v5, v0, Landroid/text/format/Time;->monthDay:I

    int-to-byte v5, v5

    .line 11
    iget v9, v0, Landroid/text/format/Time;->hour:I

    int-to-byte v9, v9

    .line 12
    iget v0, v0, Landroid/text/format/Time;->minute:I

    int-to-byte v0, v0

    const/16 v10, 0x9

    if-ne v4, v8, :cond_1

    new-array v4, v10, [I

    .line 13
    fill-array-data v4, :array_0

    invoke-static {v4}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    if-nez v4, :cond_2

    new-array v4, v10, [I

    .line 14
    fill-array-data v4, :array_1

    invoke-static {v4}, Lz/k;->s([I)V

    :cond_2
    :goto_0
    new-array v4, v10, [I

    const/16 v10, 0xe3

    aput v10, v4, v1

    const/16 v10, 0xc6

    aput v10, v4, v8

    const/4 v10, 0x2

    const/4 v11, 0x6

    aput v11, v4, v10

    const/4 v10, 0x3

    aput v8, v4, v10

    aput v2, v4, v6

    const/4 v2, 0x5

    aput v3, v4, v2

    aput v5, v4, v11

    const/4 v2, 0x7

    aput v9, v4, v2

    aput v0, v4, v7

    .line 15
    invoke-static {v4}, Lz/k;->s([I)V

    .line 16
    :cond_3
    sget v0, Lu0/b;->D:I

    if-eq v0, v7, :cond_4

    const/16 v2, 0xa

    if-eq v0, v2, :cond_4

    .line 17
    iget-object v0, p0, Lk0/ch$k;->a:Lk0/ch;

    iput v1, v0, Lk0/ch;->C:I

    goto :goto_1

    .line 18
    :cond_4
    iget-object v0, p0, Lk0/ch$k;->a:Lk0/ch;

    iget v2, v0, Lk0/ch;->C:I

    add-int/2addr v2, v8

    iput v2, v0, Lk0/ch;->C:I

    if-le v2, v6, :cond_5

    const/16 v2, -0x38

    .line 19
    sget-object v3, Lu0/b;->i3:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lk0/ch;->b3(Lk0/ch;BLjava/lang/String;)V

    .line 20
    iget-object v0, p0, Lk0/ch$k;->a:Lk0/ch;

    iput v1, v0, Lk0/ch;->C:I

    :cond_5
    :goto_1
    return-void

    :array_0
    .array-data 4
        0xe3
        0xc6
        0x6
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xc6
        0x6
        0x0
        0x1
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method
