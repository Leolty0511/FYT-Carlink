.class public Lmodule/sound/AudioDevice$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmodule/sound/AudioDevice$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/sound/AudioDevice$c;


# direct methods
.method public constructor <init>(Lmodule/sound/AudioDevice$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/sound/AudioDevice$c$a;->a:Lmodule/sound/AudioDevice$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "Audio"

    const-string v1, " load >>>>>>>>>>>>>>>>>>>>>>>>>>> AUDIO SETUP START"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    const-string v1, " load >>>>>>>>>>>>>>>>>>>>>>>>>>>SETUP START  MCUON  ENTER !! "

    invoke-virtual {v0, v1}, Ln1/b;->w(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lmodule/sound/AudioDevice$c$a;->a:Lmodule/sound/AudioDevice$c;

    iget-object v0, v0, Lmodule/sound/AudioDevice$c;->b:Lmodule/sound/AudioDevice;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lmodule/sound/AudioDevice;->e:Z

    .line 4
    invoke-virtual {v0}, Lmodule/sound/AudioDevice;->k()V

    return-void
.end method
