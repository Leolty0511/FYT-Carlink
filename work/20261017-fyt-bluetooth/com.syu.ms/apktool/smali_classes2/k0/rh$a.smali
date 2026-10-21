.class public Lk0/rh$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/rh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/rh;


# direct methods
.method public constructor <init>(Lk0/rh;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/rh$a;->a:Lk0/rh;

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

    const-wide/16 v4, 0x2710

    div-long/2addr v2, v4

    .line 4
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v4

    invoke-static {v4}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v4

    int-to-byte v4, v4

    .line 5
    iget-object v5, p0, Lk0/rh$a;->a:Lk0/rh;

    invoke-static {v5}, Lk0/rh;->i3(Lk0/rh;)J

    move-result-wide v5

    cmp-long v5, v5, v2

    if-nez v5, :cond_0

    iget-object v5, p0, Lk0/rh$a;->a:Lk0/rh;

    invoke-static {v5}, Lk0/rh;->k3(Lk0/rh;)B

    move-result v5

    if-eq v5, v4, :cond_3

    .line 6
    :cond_0
    iget-object v5, p0, Lk0/rh$a;->a:Lk0/rh;

    invoke-static {v5, v2, v3}, Lk0/rh;->j3(Lk0/rh;J)J

    .line 7
    iget-object v2, p0, Lk0/rh$a;->a:Lk0/rh;

    invoke-static {v2, v4}, Lk0/rh;->m3(Lk0/rh;B)B

    .line 8
    iget v2, v0, Landroid/text/format/Time;->year:I

    add-int/lit16 v2, v2, -0x7d0

    int-to-byte v2, v2

    .line 9
    iget v3, v0, Landroid/text/format/Time;->month:I

    const/4 v5, 0x1

    add-int/2addr v3, v5

    int-to-byte v3, v3

    .line 10
    iget v6, v0, Landroid/text/format/Time;->monthDay:I

    int-to-byte v6, v6

    .line 11
    iget v7, v0, Landroid/text/format/Time;->hour:I

    int-to-byte v7, v7

    .line 12
    iget v0, v0, Landroid/text/format/Time;->minute:I

    int-to-byte v0, v0

    const/16 v8, 0x9

    if-ne v4, v5, :cond_1

    new-array v4, v8, [I

    .line 13
    fill-array-data v4, :array_0

    invoke-static {v4}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    if-nez v4, :cond_2

    new-array v4, v8, [I

    .line 14
    fill-array-data v4, :array_1

    invoke-static {v4}, Lz/k;->s([I)V

    :cond_2
    :goto_0
    new-array v4, v8, [I

    const/16 v8, 0xe3

    aput v8, v4, v1

    const/16 v1, 0xc6

    aput v1, v4, v5

    const/4 v1, 0x2

    const/4 v8, 0x6

    aput v8, v4, v1

    const/4 v1, 0x3

    aput v5, v4, v1

    const/4 v1, 0x4

    aput v2, v4, v1

    const/4 v1, 0x5

    aput v3, v4, v1

    aput v6, v4, v8

    const/4 v1, 0x7

    aput v7, v4, v1

    const/16 v1, 0x8

    aput v0, v4, v1

    .line 15
    invoke-static {v4}, Lz/k;->s([I)V

    :cond_3
    return-void

    nop

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
