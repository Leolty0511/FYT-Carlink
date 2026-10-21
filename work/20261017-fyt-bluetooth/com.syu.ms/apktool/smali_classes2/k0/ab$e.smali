.class public Lk0/ab$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ab;


# direct methods
.method public constructor <init>(Lk0/ab;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ab$e;->a:Lk0/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

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
    iget-object v6, p0, Lk0/ab$e;->a:Lk0/ab;

    invoke-static {v6}, Lk0/ab;->g3(Lk0/ab;)J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-nez v6, :cond_0

    iget-object v6, p0, Lk0/ab$e;->a:Lk0/ab;

    invoke-static {v6}, Lk0/ab;->i3(Lk0/ab;)I

    move-result v6

    if-eq v6, v4, :cond_2

    .line 6
    :cond_0
    iget-object v6, p0, Lk0/ab$e;->a:Lk0/ab;

    invoke-static {v6, v2, v3}, Lk0/ab;->h3(Lk0/ab;J)J

    .line 7
    iget-object v2, p0, Lk0/ab$e;->a:Lk0/ab;

    invoke-static {v2, v4}, Lk0/ab;->j3(Lk0/ab;I)I

    .line 8
    iget v2, v0, Landroid/text/format/Time;->year:I

    add-int/lit16 v2, v2, -0x7d0

    int-to-byte v2, v2

    .line 9
    iget v3, v0, Landroid/text/format/Time;->month:I

    add-int/2addr v3, v5

    int-to-byte v3, v3

    .line 10
    iget v4, v0, Landroid/text/format/Time;->monthDay:I

    int-to-byte v4, v4

    .line 11
    iget-object v6, p0, Lk0/ab$e;->a:Lk0/ab;

    iget v7, v0, Landroid/text/format/Time;->hour:I

    int-to-byte v7, v7

    invoke-static {v6, v7}, Lk0/ab;->l3(Lk0/ab;B)B

    .line 12
    iget-object v6, p0, Lk0/ab$e;->a:Lk0/ab;

    iget v0, v0, Landroid/text/format/Time;->minute:I

    int-to-byte v0, v0

    invoke-static {v6, v0}, Lk0/ab;->n3(Lk0/ab;B)B

    .line 13
    sget v0, Lk0/nt;->a:I

    const v6, 0x40146

    const/4 v7, 0x4

    const/4 v8, 0x2

    const/16 v9, 0xe3

    const/4 v10, 0x6

    const/4 v11, 0x5

    const/4 v12, 0x3

    if-ne v0, v6, :cond_1

    const/16 v0, 0x8

    new-array v0, v0, [I

    aput v9, v0, v1

    const/16 v1, -0x7c

    aput v1, v0, v5

    aput v11, v0, v8

    aput v2, v0, v12

    aput v3, v0, v7

    aput v4, v0, v11

    .line 14
    iget-object v1, p0, Lk0/ab$e;->a:Lk0/ab;

    invoke-static {v1}, Lk0/ab;->k3(Lk0/ab;)B

    move-result v1

    aput v1, v0, v10

    const/4 v1, 0x7

    iget-object v2, p0, Lk0/ab$e;->a:Lk0/ab;

    invoke-static {v2}, Lk0/ab;->m3(Lk0/ab;)B

    move-result v2

    aput v2, v0, v1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array v0, v10, [I

    aput v9, v0, v1

    const/16 v1, -0x7e

    aput v1, v0, v5

    aput v12, v0, v8

    .line 15
    iget-object v1, p0, Lk0/ab$e;->a:Lk0/ab;

    invoke-static {v1}, Lk0/ab;->k3(Lk0/ab;)B

    move-result v1

    aput v1, v0, v12

    iget-object v1, p0, Lk0/ab$e;->a:Lk0/ab;

    invoke-static {v1}, Lk0/ab;->m3(Lk0/ab;)B

    move-result v1

    aput v1, v0, v7

    iget-object v1, p0, Lk0/ab$e;->a:Lk0/ab;

    invoke-static {v1}, Lk0/ab;->o3(Lk0/ab;)I

    move-result v1

    int-to-byte v1, v1

    aput v1, v0, v11

    invoke-static {v0}, Lz/k;->s([I)V

    :cond_2
    :goto_0
    return-void
.end method
