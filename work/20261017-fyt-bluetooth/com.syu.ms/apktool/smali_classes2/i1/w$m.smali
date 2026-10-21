.class public Li1/w$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li1/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:J

.field public b:I

.field public final synthetic c:Li1/w;


# direct methods
.method public constructor <init>(Li1/w;)V
    .locals 2

    .line 1
    iput-object p1, p0, Li1/w$m;->c:Li1/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Li1/w$m;->a:J

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Li1/w$m;->b:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

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

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 4
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v4

    invoke-static {v4}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v4

    .line 5
    iget-wide v5, p0, Li1/w$m;->a:J

    cmp-long v5, v5, v2

    if-nez v5, :cond_0

    iget v5, p0, Li1/w$m;->b:I

    if-eq v5, v4, :cond_1

    .line 6
    :cond_0
    iput-wide v2, p0, Li1/w$m;->a:J

    .line 7
    iput v4, p0, Li1/w$m;->b:I

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
    iget v8, v0, Landroid/text/format/Time;->minute:I

    int-to-byte v8, v8

    .line 13
    iget v0, v0, Landroid/text/format/Time;->second:I

    int-to-byte v0, v0

    .line 14
    iget-object v9, p0, Li1/w$m;->c:Li1/w;

    const/16 v10, 0x9

    new-array v11, v10, [I

    const/4 v12, 0x4

    aput v12, v11, v1

    const/4 v13, 0x7

    aput v13, v11, v5

    const/4 v14, 0x2

    aput v4, v11, v14

    const/4 v4, 0x3

    aput v2, v11, v4

    aput v3, v11, v12

    const/4 v2, 0x5

    aput v6, v11, v2

    const/4 v3, 0x6

    aput v7, v11, v3

    aput v8, v11, v13

    const/16 v6, 0x8

    aput v0, v11, v6

    invoke-virtual {v9, v11}, Li1/w;->h([I)V

    .line 15
    sget-boolean v0, Li1/w;->G:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Li1/w$m;->c:Li1/w;

    const/16 v7, 0xa

    new-array v7, v7, [I

    aput v4, v7, v1

    aput v6, v7, v5

    iget v1, v0, Li1/w;->g:I

    aput v1, v7, v14

    iget v1, v0, Li1/w;->h:I

    aput v1, v7, v4

    iget v1, v0, Li1/w;->i:I

    aput v1, v7, v12

    iget v1, v0, Li1/w;->j:I

    aput v1, v7, v2

    iget v1, v0, Li1/w;->k:I

    aput v1, v7, v3

    iget v1, v0, Li1/w;->l:I

    aput v1, v7, v13

    iget v1, v0, Li1/w;->n:I

    aput v1, v7, v6

    iget v1, v0, Li1/w;->o:I

    aput v1, v7, v10

    invoke-virtual {v0, v7}, Li1/w;->h([I)V

    :cond_1
    return-void
.end method
