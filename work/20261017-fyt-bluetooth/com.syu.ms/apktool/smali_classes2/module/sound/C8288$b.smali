.class public Lmodule/sound/C8288$b;
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
    iput-object p1, p0, Lmodule/sound/C8288$b;->a:Lmodule/sound/C8288;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lmodule/sound/C8288$b;->a:Lmodule/sound/C8288;

    const/4 v1, -0x1

    iput v1, v0, Lmodule/sound/AudioDevice;->l:I

    .line 2
    sget-object v1, Lmodule/sound/AudioDevice;->G0:[I

    if-nez v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_1

    .line 3
    :cond_0
    invoke-virtual {v0, v1}, Lmodule/sound/C8288;->x([I)V

    .line 4
    iget-object v0, p0, Lmodule/sound/C8288$b;->a:Lmodule/sound/C8288;

    iget-object v1, v0, Lmodule/sound/AudioDevice;->r:Landroid/os/Handler;

    iget-object v0, v0, Lmodule/sound/C8288;->c1:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lmodule/sound/C8288$b;->a:Lmodule/sound/C8288;

    iget v1, v0, Lmodule/sound/C8288;->b1:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lmodule/sound/C8288;->b1:I

    const/4 v2, 0x3

    if-gt v1, v2, :cond_1

    iget-object v1, v0, Lmodule/sound/AudioDevice;->r:Landroid/os/Handler;

    iget-object v0, v0, Lmodule/sound/C8288;->c1:Ljava/lang/Runnable;

    const-wide/16 v2, 0x258

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
