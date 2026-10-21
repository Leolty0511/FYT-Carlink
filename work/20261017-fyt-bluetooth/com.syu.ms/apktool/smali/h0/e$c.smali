.class public Lh0/e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh0/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    sget v0, Lh0/c;->A:I

    if-gtz v0, :cond_1

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lh0/c;->b:Lh0/f;

    invoke-interface {v0}, Lh0/f;->n()V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sget-wide v3, Lh0/c;->f0:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    mul-int/lit16 v0, v0, 0x3e8

    sub-int/2addr v0, v1

    const/16 v1, 0x15

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    .line 4
    invoke-static {v1, v2}, Lh0/e;->W(I[I)V

    if-lez v0, :cond_2

    .line 5
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 6
    :cond_2
    sget-object v0, Lh0/c;->b:Lh0/f;

    invoke-interface {v0}, Lh0/f;->n()V

    :goto_0
    return-void
.end method
