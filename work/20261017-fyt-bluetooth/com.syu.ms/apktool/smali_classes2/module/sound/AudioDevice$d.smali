.class public Lmodule/sound/AudioDevice$d;
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
    iput-object p1, p0, Lmodule/sound/AudioDevice$d;->b:Lmodule/sound/AudioDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lmodule/sound/AudioDevice$d;->a:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "persist.fyt.ui.txz"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lo1/s0;->l(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget v0, Lu0/b;->D:I

    .line 3
    iget-object v1, p0, Lmodule/sound/AudioDevice$d;->b:Lmodule/sound/AudioDevice;

    invoke-virtual {v1, v0}, Lmodule/sound/AudioDevice;->j0(I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 4
    invoke-static {}, La/f;->f()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, La/f;->f()Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x3

    sget v3, Lmodule/sound/AudioDevice;->E0:I

    invoke-virtual {v0, v2, v1, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    :goto_0
    return-void
.end method
