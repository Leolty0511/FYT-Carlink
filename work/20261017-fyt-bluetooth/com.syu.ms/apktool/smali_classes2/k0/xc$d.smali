.class public Lk0/xc$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/xc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/xc;


# direct methods
.method public constructor <init>(Lk0/xc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/xc$d;->a:Lk0/xc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

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

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 4
    iget-object v2, p0, Lk0/xc$d;->a:Lk0/xc;

    invoke-static {v2}, Lk0/xc;->a3(Lk0/xc;)J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 5
    iget-object v2, p0, Lk0/xc$d;->a:Lk0/xc;

    invoke-static {v2, v0, v1}, Lk0/xc;->b3(Lk0/xc;J)J

    .line 6
    iget-object v0, p0, Lk0/xc$d;->a:Lk0/xc;

    iget v1, v0, Lk0/xc;->f:I

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 7
    iput v1, v0, Lk0/xc;->f:I

    :cond_0
    return-void
.end method
