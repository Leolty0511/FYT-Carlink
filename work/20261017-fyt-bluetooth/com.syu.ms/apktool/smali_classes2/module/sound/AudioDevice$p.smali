.class public Lmodule/sound/AudioDevice$p;
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
    iput-object p1, p0, Lmodule/sound/AudioDevice$p;->a:Lmodule/sound/AudioDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lmodule/sound/AudioDevice$p;->a:Lmodule/sound/AudioDevice;

    iget-boolean v1, v0, Lmodule/sound/AudioDevice;->e:Z

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget v1, Lk0/nt;->W:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    .line 3
    :goto_0
    invoke-virtual {v0}, Lmodule/sound/AudioDevice;->z0()V

    .line 4
    iget-object v0, p0, Lmodule/sound/AudioDevice$p;->a:Lmodule/sound/AudioDevice;

    iget-object v0, v0, Lmodule/sound/AudioDevice;->m:[I

    sget v4, Ly0/f;->j:I

    aput v4, v0, v3

    .line 5
    sget v4, Ly0/f;->l:I

    aput v4, v0, v2

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " =====>>   balFade   : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lmodule/sound/AudioDevice$p;->a:Lmodule/sound/AudioDevice;

    iget-object v4, v4, Lmodule/sound/AudioDevice;->m:[I

    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " DataCanbus.sDriverOnRight: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lk0/nt;->W:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "c32107"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v0, p0, Lmodule/sound/AudioDevice$p;->a:Lmodule/sound/AudioDevice;

    iget-object v0, v0, Lmodule/sound/AudioDevice;->m:[I

    sget-object v5, Lmodule/sound/AudioDevice;->A0:[I

    invoke-static {v0, v5}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    const/4 v5, -0x1

    if-eqz v0, :cond_2

    move v2, v3

    goto :goto_1

    .line 8
    :cond_2
    iget-object v0, p0, Lmodule/sound/AudioDevice$p;->a:Lmodule/sound/AudioDevice;

    iget-object v0, v0, Lmodule/sound/AudioDevice;->m:[I

    sget-object v3, Lmodule/sound/AudioDevice;->B0:[I

    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move v2, v5

    :goto_1
    const/4 v0, 0x2

    new-array v3, v0, [I

    if-eqz v1, :cond_4

    .line 9
    fill-array-data v3, :array_0

    goto :goto_2

    :cond_4
    fill-array-data v3, :array_1

    :goto_2
    sput-object v3, Lmodule/sound/AudioDevice;->A0:[I

    new-array v0, v0, [I

    if-eqz v1, :cond_5

    .line 10
    fill-array-data v0, :array_2

    goto :goto_3

    :cond_5
    fill-array-data v0, :array_3

    :goto_3
    sput-object v0, Lmodule/sound/AudioDevice;->B0:[I

    if-eq v2, v5, :cond_6

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " =====>>   fieldMode   : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Ly0/f;->L0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  DataSound.sFadeDst : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Ly0/f;->M0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-object v0, p0, Lmodule/sound/AudioDevice$p;->a:Lmodule/sound/AudioDevice;

    invoke-virtual {v0, v2}, Lmodule/sound/AudioDevice;->P(I)V

    :cond_6
    return-void

    nop

    :array_0
    .array-data 4
        0xc
        0x4
    .end array-data

    :array_1
    .array-data 4
        0x4
        0x4
    .end array-data

    :array_2
    .array-data 4
        0x4
        0x4
    .end array-data

    :array_3
    .array-data 4
        0xc
        0x4
    .end array-data
.end method
