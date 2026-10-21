.class public Lk0/aa$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/aa;


# direct methods
.method public constructor <init>(Lk0/aa;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/aa$a;->a:Lk0/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

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

    const-wide/16 v4, 0x2ee0

    div-long/2addr v2, v4

    .line 4
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v4

    invoke-static {v4}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    .line 5
    iget-object v6, p0, Lk0/aa$a;->a:Lk0/aa;

    invoke-static {v6}, Lk0/aa;->i3(Lk0/aa;)J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-nez v6, :cond_0

    iget-object v6, p0, Lk0/aa$a;->a:Lk0/aa;

    invoke-static {v6}, Lk0/aa;->k3(Lk0/aa;)I

    move-result v6

    if-eq v6, v4, :cond_1

    .line 6
    :cond_0
    iget-object v6, p0, Lk0/aa$a;->a:Lk0/aa;

    invoke-static {v6, v2, v3}, Lk0/aa;->j3(Lk0/aa;J)J

    .line 7
    iget-object v2, p0, Lk0/aa$a;->a:Lk0/aa;

    invoke-static {v2, v4}, Lk0/aa;->l3(Lk0/aa;I)I

    const/4 v2, 0x6

    new-array v2, v2, [I

    const/16 v3, 0xe3

    aput v3, v2, v1

    const/4 v1, 0x3

    aput v1, v2, v5

    const/4 v3, 0x2

    const/16 v4, -0x4b

    aput v4, v2, v3

    .line 8
    iget v3, v0, Landroid/text/format/Time;->hour:I

    aput v3, v2, v1

    const/4 v1, 0x4

    iget v3, v0, Landroid/text/format/Time;->minute:I

    aput v3, v2, v1

    iget v0, v0, Landroid/text/format/Time;->second:I

    const/4 v1, 0x5

    aput v0, v2, v1

    invoke-static {v2}, Lz/k;->s([I)V

    new-array v0, v1, [I

    .line 9
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x2
        -0xe
        0x7
        0x1
    .end array-data
.end method
