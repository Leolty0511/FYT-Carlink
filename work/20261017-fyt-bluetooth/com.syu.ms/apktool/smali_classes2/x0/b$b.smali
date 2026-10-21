.class public Lx0/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Lx0/b;


# direct methods
.method public constructor <init>(Lx0/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lx0/b$b;->b:Lx0/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lx0/b$b;->a:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    sget v0, Lu0/b;->a0:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget v0, Lu0/b;->g:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-boolean v0, p0, Lx0/b$b;->a:Z

    if-ne v1, v0, :cond_1

    return-void

    .line 3
    :cond_1
    iput-boolean v1, p0, Lx0/b$b;->a:Z

    if-eqz v1, :cond_2

    .line 4
    iget-object v0, p0, Lx0/b$b;->b:Lx0/b;

    iget-object v1, v0, Lx0/b;->d:Landroid/os/Handler;

    invoke-static {v0}, Lx0/b;->k(Lx0/b;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 5
    :cond_2
    :try_start_0
    iget-object v0, p0, Lx0/b$b;->b:Lx0/b;

    iget-object v1, v0, Lx0/b;->d:Landroid/os/Handler;

    invoke-static {v0}, Lx0/b;->k(Lx0/b;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    iget-object v0, p0, Lx0/b$b;->b:Lx0/b;

    iget-object v1, v0, Lx0/b;->c:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_1
    return-void
.end method
