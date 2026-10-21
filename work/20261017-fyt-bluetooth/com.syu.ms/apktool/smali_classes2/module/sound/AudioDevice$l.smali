.class public Lmodule/sound/AudioDevice$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/sound/AudioDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lmodule/sound/AudioDevice;


# direct methods
.method public constructor <init>(Lmodule/sound/AudioDevice;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/sound/AudioDevice$l;->b:Lmodule/sound/AudioDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lmodule/sound/AudioDevice$l;->a:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lmodule/sound/AudioDevice$l;->b:Lmodule/sound/AudioDevice;

    iget-object v0, v0, Lmodule/sound/AudioDevice;->e0:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x3c

    if-ge v0, v2, :cond_0

    .line 2
    iget-object v0, p0, Lmodule/sound/AudioDevice$l;->b:Lmodule/sound/AudioDevice;

    iget-object v0, v0, Lmodule/sound/AudioDevice;->e0:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3
    iput v1, p0, Lmodule/sound/AudioDevice$l;->a:I

    goto :goto_0

    :cond_0
    if-ltz v0, :cond_1

    const/16 v2, 0x82

    if-gt v0, v2, :cond_1

    .line 4
    iget-object v2, p0, Lmodule/sound/AudioDevice$l;->b:Lmodule/sound/AudioDevice;

    iget-object v2, v2, Lmodule/sound/AudioDevice;->e0:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v3, p0, Lmodule/sound/AudioDevice$l;->a:I

    mul-int/lit8 v3, v3, 0x5

    add-int/2addr v0, v3

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    .line 5
    iput v2, p0, Lmodule/sound/AudioDevice$l;->a:I

    .line 6
    iget-object v3, p0, Lmodule/sound/AudioDevice$l;->b:Lmodule/sound/AudioDevice;

    iget-object v3, v3, Lmodule/sound/AudioDevice;->e0:Ljava/util/concurrent/atomic/AtomicInteger;

    mul-int/lit8 v2, v2, 0x5

    add-int/2addr v0, v2

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 7
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=============>>> speed : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmodule/sound/AudioDevice$l;->b:Lmodule/sound/AudioDevice;

    iget-object v2, v2, Lmodule/sound/AudioDevice;->e0:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "sound"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Lmodule/sound/AudioDevice$l;->b:Lmodule/sound/AudioDevice;

    iget v2, v0, Lmodule/sound/AudioDevice;->g:I

    invoke-virtual {v0, v2, v1}, Lmodule/sound/AudioDevice;->A1(IZ)V

    .line 9
    iget-object v0, p0, Lmodule/sound/AudioDevice$l;->b:Lmodule/sound/AudioDevice;

    iget-object v0, v0, Lmodule/sound/AudioDevice;->r:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10
    iget-object v0, p0, Lmodule/sound/AudioDevice$l;->b:Lmodule/sound/AudioDevice;

    iget-object v0, v0, Lmodule/sound/AudioDevice;->r:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
