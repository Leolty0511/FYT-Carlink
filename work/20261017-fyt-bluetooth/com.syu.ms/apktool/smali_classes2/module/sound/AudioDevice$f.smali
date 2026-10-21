.class public Lmodule/sound/AudioDevice$f;
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
.field public final synthetic a:Lmodule/sound/AudioDevice;


# direct methods
.method public constructor <init>(Lmodule/sound/AudioDevice;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/sound/AudioDevice$f;->a:Lmodule/sound/AudioDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget v0, Lu0/b;->n4:I

    if-eqz v0, :cond_0

    sget v0, Ly0/f;->U:I

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lmodule/sound/AudioDevice$f;->a:Lmodule/sound/AudioDevice;

    iget-boolean v0, v0, Lmodule/sound/AudioDevice;->J:Z

    if-eqz v0, :cond_2

    .line 2
    :cond_1
    iget-object v0, p0, Lmodule/sound/AudioDevice$f;->a:Lmodule/sound/AudioDevice;

    invoke-virtual {v0}, Lmodule/sound/AudioDevice;->c1()[I

    move-result-object v0

    .line 3
    invoke-static {v0}, Ly0/h;->j0([I)V

    .line 4
    :cond_2
    iget-object v0, p0, Lmodule/sound/AudioDevice$f;->a:Lmodule/sound/AudioDevice;

    iget-object v0, v0, Lmodule/sound/AudioDevice;->r:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    iget-object v0, p0, Lmodule/sound/AudioDevice$f;->a:Lmodule/sound/AudioDevice;

    iget-object v0, v0, Lmodule/sound/AudioDevice;->r:Landroid/os/Handler;

    const-wide/16 v1, 0x50

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method
