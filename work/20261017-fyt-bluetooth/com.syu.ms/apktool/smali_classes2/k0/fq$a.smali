.class public Lk0/fq$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/fq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/fq;


# direct methods
.method public constructor <init>(Lk0/fq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/fq$a;->a:Lk0/fq;

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

    .line 3
    iget v1, v0, Landroid/text/format/Time;->year:I

    add-int/lit16 v1, v1, -0x7d0

    .line 4
    iget v2, v0, Landroid/text/format/Time;->month:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 5
    iget v4, v0, Landroid/text/format/Time;->monthDay:I

    .line 6
    iget v5, v0, Landroid/text/format/Time;->hour:I

    .line 7
    iget v6, v0, Landroid/text/format/Time;->minute:I

    const/4 v7, 0x0

    .line 8
    invoke-virtual {v0, v7}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    const-wide/32 v10, 0xea60

    div-long/2addr v8, v10

    .line 9
    iget-object v0, p0, Lk0/fq$a;->a:Lk0/fq;

    invoke-static {v0}, Lk0/fq;->b3(Lk0/fq;)J

    move-result-wide v10

    cmp-long v0, v10, v8

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    new-array v0, v0, [I

    const/16 v10, 0xe3

    aput v10, v0, v7

    const/16 v11, 0x85

    aput v11, v0, v3

    const/4 v11, 0x2

    const/4 v12, 0x3

    aput v12, v0, v11

    aput v1, v0, v12

    const/4 v1, 0x4

    aput v2, v0, v1

    const/4 v2, 0x5

    aput v4, v0, v2

    .line 10
    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v2, [I

    aput v10, v0, v7

    const/16 v2, 0x84

    aput v2, v0, v3

    aput v11, v0, v11

    aput v5, v0, v12

    aput v6, v0, v1

    .line 11
    invoke-static {v0}, Lz/k;->s([I)V

    .line 12
    iget-object v0, p0, Lk0/fq$a;->a:Lk0/fq;

    invoke-static {v0, v8, v9}, Lk0/fq;->c3(Lk0/fq;J)J

    :cond_0
    return-void
.end method
