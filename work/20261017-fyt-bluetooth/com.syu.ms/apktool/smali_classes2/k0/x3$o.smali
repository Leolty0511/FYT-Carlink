.class public Lk0/x3$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/x3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/x3;


# direct methods
.method public constructor <init>(Lk0/x3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/x3$o;->a:Lk0/x3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lk0/x3$o;->a:Lk0/x3;

    iget-object v0, v0, Lk0/x3;->d0:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/x3$o;->a:Lk0/x3;

    const/4 v1, 0x5

    iput v1, v0, Lk0/x3;->b0:I

    .line 3
    sget v1, Lu0/b;->a0:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Lk0/x3;->V:Z

    .line 5
    iput v1, v0, Lk0/x3;->R:I

    .line 6
    iput v1, v0, Lk0/x3;->S:I

    .line 7
    iput v1, v0, Lk0/x3;->T:I

    .line 8
    iput v1, v0, Lk0/x3;->U:I

    .line 9
    sget v2, Lk0/nt;->a:I

    const v3, 0x11008b

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {v0}, Lk0/x3;->g3(Lk0/x3;)Lo1/g0;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Lo1/g0;->b(II)I

    move-result v2

    invoke-static {v0, v2}, Lk0/x3;->h3(Lk0/x3;I)V

    .line 11
    new-instance v0, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 13
    iget-object v2, p0, Lk0/x3$o;->a:Lk0/x3;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    const-wide/32 v3, 0xea60

    div-long/2addr v0, v3

    iput-wide v0, v2, Lk0/x3;->a0:J

    :cond_1
    :goto_0
    return-void
.end method
