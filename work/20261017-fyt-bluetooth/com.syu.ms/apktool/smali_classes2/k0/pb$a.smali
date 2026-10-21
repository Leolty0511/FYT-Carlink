.class public Lk0/pb$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/pb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/pb;


# direct methods
.method public constructor <init>(Lk0/pb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/pb$a;->a:Lk0/pb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

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
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v4

    invoke-static {v4}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    .line 5
    iget-object v6, p0, Lk0/pb$a;->a:Lk0/pb;

    invoke-static {v6}, Lk0/pb;->c3(Lk0/pb;)J

    move-result-wide v6

    cmp-long v6, v6, v2

    const/4 v7, 0x5

    if-nez v6, :cond_0

    iget-object v6, p0, Lk0/pb$a;->a:Lk0/pb;

    invoke-static {v6}, Lk0/pb;->e3(Lk0/pb;)I

    move-result v6

    if-eq v6, v4, :cond_1

    .line 6
    :cond_0
    iget-object v6, p0, Lk0/pb$a;->a:Lk0/pb;

    invoke-static {v6, v2, v3}, Lk0/pb;->d3(Lk0/pb;J)J

    .line 7
    iget-object v2, p0, Lk0/pb$a;->a:Lk0/pb;

    invoke-static {v2, v4}, Lk0/pb;->f3(Lk0/pb;I)I

    .line 8
    iget v2, v0, Landroid/text/format/Time;->year:I

    add-int/lit16 v2, v2, -0x7d0

    int-to-byte v2, v2

    .line 9
    iget v3, v0, Landroid/text/format/Time;->month:I

    add-int/2addr v3, v5

    int-to-byte v3, v3

    .line 10
    iget v6, v0, Landroid/text/format/Time;->monthDay:I

    int-to-byte v6, v6

    .line 11
    iget v8, v0, Landroid/text/format/Time;->hour:I

    int-to-byte v8, v8

    .line 12
    iget v0, v0, Landroid/text/format/Time;->minute:I

    int-to-byte v0, v0

    const/16 v9, 0xa

    new-array v9, v9, [I

    const/16 v10, 0xe3

    aput v10, v9, v1

    const/16 v10, -0x5a

    aput v10, v9, v5

    const/4 v5, 0x2

    const/4 v10, 0x7

    aput v10, v9, v5

    const/4 v5, 0x3

    aput v2, v9, v5

    const/4 v2, 0x4

    aput v3, v9, v2

    aput v6, v9, v7

    const/4 v2, 0x6

    shl-int/lit8 v3, v4, 0x7

    and-int/lit16 v3, v3, 0x80

    or-int/2addr v3, v8

    int-to-byte v3, v3

    aput v3, v9, v2

    aput v0, v9, v10

    const/16 v0, 0x8

    aput v1, v9, v0

    const/16 v0, 0x9

    aput v1, v9, v0

    .line 13
    invoke-static {v9}, Lz/k;->s([I)V

    :cond_1
    new-array v0, v7, [I

    .line 14
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        -0x12
        0x2
        0x51
        0x0
    .end array-data
.end method
