.class public Lmodule/sound/AudioDevice$i;
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
    iput-object p1, p0, Lmodule/sound/AudioDevice$i;->a:Lmodule/sound/AudioDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    sget v0, Lu0/b;->l1:I

    const/16 v1, 0xb

    const/16 v2, 0xd

    const/16 v3, 0xc

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lmodule/sound/AudioDevice$i;->a:Lmodule/sound/AudioDevice;

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Lmodule/sound/AudioDevice;->V(I)I

    move-result v5

    invoke-virtual {v0, v3, v5}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 3
    iget-object v0, p0, Lmodule/sound/AudioDevice$i;->a:Lmodule/sound/AudioDevice;

    invoke-virtual {v0, v4}, Lmodule/sound/AudioDevice;->V(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 4
    iget-object v0, p0, Lmodule/sound/AudioDevice$i;->a:Lmodule/sound/AudioDevice;

    invoke-virtual {v0, v4}, Lmodule/sound/AudioDevice;->V(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lmodule/sound/AudioDevice;->L0(II)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lmodule/sound/AudioDevice$i;->a:Lmodule/sound/AudioDevice;

    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Lmodule/sound/AudioDevice;->V(I)I

    move-result v5

    invoke-virtual {v0, v3, v5}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 6
    iget-object v0, p0, Lmodule/sound/AudioDevice$i;->a:Lmodule/sound/AudioDevice;

    invoke-virtual {v0, v4}, Lmodule/sound/AudioDevice;->V(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 7
    iget-object v0, p0, Lmodule/sound/AudioDevice$i;->a:Lmodule/sound/AudioDevice;

    invoke-virtual {v0, v4}, Lmodule/sound/AudioDevice;->V(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lmodule/sound/AudioDevice;->L0(II)V

    :goto_0
    return-void
.end method
