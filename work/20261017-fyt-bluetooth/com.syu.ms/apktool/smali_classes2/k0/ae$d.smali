.class public Lk0/ae$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ae;


# direct methods
.method public constructor <init>(Lk0/ae;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ae$d;->a:Lk0/ae;

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

    const-wide/32 v4, 0xea60

    div-long/2addr v2, v4

    .line 4
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v4

    invoke-static {v4}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v4

    .line 5
    iget-object v5, p0, Lk0/ae$d;->a:Lk0/ae;

    invoke-static {v5}, Lk0/ae;->e3(Lk0/ae;)J

    move-result-wide v5

    cmp-long v5, v5, v2

    if-nez v5, :cond_0

    iget-object v5, p0, Lk0/ae$d;->a:Lk0/ae;

    invoke-static {v5}, Lk0/ae;->g3(Lk0/ae;)I

    move-result v5

    if-eq v5, v4, :cond_2

    .line 6
    :cond_0
    iget-object v5, p0, Lk0/ae$d;->a:Lk0/ae;

    invoke-static {v5, v2, v3}, Lk0/ae;->f3(Lk0/ae;J)J

    .line 7
    iget-object v2, p0, Lk0/ae$d;->a:Lk0/ae;

    invoke-static {v2, v4}, Lk0/ae;->h3(Lk0/ae;I)I

    .line 8
    iget v2, v0, Landroid/text/format/Time;->hour:I

    int-to-byte v2, v2

    .line 9
    iget v0, v0, Landroid/text/format/Time;->minute:I

    int-to-byte v0, v0

    .line 10
    sget v3, Lk0/nt;->a:I

    const v4, 0x10199

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/16 v8, 0xe3

    const/4 v9, 0x6

    const/4 v10, 0x3

    const/4 v11, 0x1

    if-ne v3, v4, :cond_1

    const/16 v3, 0xa

    new-array v3, v3, [I

    aput v8, v3, v1

    const/16 v4, 0xa6

    aput v4, v3, v11

    const/4 v4, 0x7

    aput v4, v3, v7

    aput v1, v3, v10

    aput v1, v3, v6

    aput v1, v3, v5

    aput v2, v3, v9

    aput v0, v3, v4

    const/16 v0, 0x8

    aput v1, v3, v0

    const/16 v0, 0x9

    aput v1, v3, v0

    .line 11
    invoke-static {v3}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array v3, v9, [I

    aput v8, v3, v1

    const/16 v1, 0x85

    aput v1, v3, v11

    aput v10, v3, v7

    aput v11, v3, v10

    aput v2, v3, v6

    aput v0, v3, v5

    .line 12
    invoke-static {v3}, Lz/k;->s([I)V

    :cond_2
    :goto_0
    return-void
.end method
