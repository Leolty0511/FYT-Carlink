.class public Lmodule/sound/C8288$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/sound/C8288;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/sound/C8288;


# direct methods
.method public constructor <init>(Lmodule/sound/C8288;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/sound/C8288$c;->a:Lmodule/sound/C8288;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    sget v0, Lu0/b;->f:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    sget v0, Lu0/b;->a0:I

    if-eq v0, v1, :cond_0

    sget v0, Lu0/b;->h:I

    if-nez v0, :cond_1

    sget v0, Lu0/b;->P3:I

    if-eq v0, v1, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lmodule/sound/C8288$c;->a:Lmodule/sound/C8288;

    const/4 v1, 0x0

    iput v1, v0, Lmodule/sound/C8288;->b1:I

    .line 3
    iget-object v1, v0, Lmodule/sound/AudioDevice;->r:Landroid/os/Handler;

    iget-object v0, v0, Lmodule/sound/C8288;->c1:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lmodule/sound/C8288$c;->a:Lmodule/sound/C8288;

    iget-object v1, v0, Lmodule/sound/AudioDevice;->r:Landroid/os/Handler;

    iget-object v0, v0, Lmodule/sound/C8288;->c1:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
