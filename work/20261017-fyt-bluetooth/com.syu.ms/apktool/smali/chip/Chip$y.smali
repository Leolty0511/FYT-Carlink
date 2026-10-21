.class public Lchip/Chip$y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lchip/Chip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lchip/Chip;


# direct methods
.method public constructor <init>(Lchip/Chip;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lchip/Chip$y;->a:Lchip/Chip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    sget v0, Lw0/d;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_9

    if-eqz v0, :cond_9

    const-string v0, "persist.fyt.externalfm"

    .line 2
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 3
    :goto_0
    iget-object v3, p0, Lchip/Chip$y;->a:Lchip/Chip;

    invoke-virtual {v3, v0}, Lchip/Chip;->S(Z)V

    if-eqz v0, :cond_8

    .line 4
    sget-object v0, Ly0/f;->z0:[I

    const/4 v1, 0x6

    aput v1, v0, v2

    .line 5
    invoke-static {}, Lmodule/sound/AudioDevice;->W()Lmodule/sound/AudioDevice;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 6
    :cond_1
    instance-of v1, v0, Lmodule/sound/C32107;

    if-nez v1, :cond_7

    instance-of v1, v0, Lmodule/sound/C32107S;

    if-eqz v1, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    instance-of v1, v0, Lmodule/sound/a;

    if-eqz v1, :cond_3

    const/16 v1, 0xf

    .line 8
    invoke-virtual {v0, v2, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    goto :goto_2

    .line 9
    :cond_3
    instance-of v1, v0, Lmodule/sound/C3702;

    if-eqz v1, :cond_4

    .line 10
    sget-object v1, Lmodule/sound/C3702$CHANNEL;->g:Lmodule/sound/C3702$CHANNEL;

    iget v1, v1, Lmodule/sound/C3702$CHANNEL;->a:I

    invoke-virtual {v0, v2, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    goto :goto_2

    .line 11
    :cond_4
    instance-of v1, v0, Lmodule/sound/C2313;

    if-eqz v1, :cond_5

    .line 12
    sget-object v1, Lmodule/sound/C2313$CHANNEL;->b:Lmodule/sound/C2313$CHANNEL;

    iget v1, v1, Lmodule/sound/C2313$CHANNEL;->a:I

    invoke-virtual {v0, v2, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    goto :goto_2

    .line 13
    :cond_5
    instance-of v1, v0, Lmodule/sound/C8288;

    if-eqz v1, :cond_6

    .line 14
    sget-object v1, Lmodule/sound/C8288$CHANNLE;->i:Lmodule/sound/C8288$CHANNLE;

    iget v1, v1, Lmodule/sound/C8288$CHANNLE;->a:I

    invoke-virtual {v0, v2, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    goto :goto_2

    .line 15
    :cond_6
    instance-of v1, v0, Lmodule/sound/C7729;

    if-eqz v1, :cond_a

    .line 16
    sget-object v1, Lmodule/sound/C7729$CHANNEL;->g:Lmodule/sound/C7729$CHANNEL;

    iget v1, v1, Lmodule/sound/C7729$CHANNEL;->a:I

    invoke-virtual {v0, v2, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    goto :goto_2

    .line 17
    :cond_7
    :goto_1
    sget-object v1, Lmodule/sound/C32107$CHANNEL;->b:Lmodule/sound/C32107$CHANNEL;

    iget v1, v1, Lmodule/sound/C32107$CHANNEL;->a:I

    invoke-virtual {v0, v2, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    goto :goto_2

    .line 18
    :cond_8
    sget-object v0, Ly0/f;->z0:[I

    aput v1, v0, v2

    goto :goto_2

    .line 19
    :cond_9
    sget-object v0, Ly0/f;->z0:[I

    aput v1, v0, v2

    :cond_a
    :goto_2
    return-void
.end method
