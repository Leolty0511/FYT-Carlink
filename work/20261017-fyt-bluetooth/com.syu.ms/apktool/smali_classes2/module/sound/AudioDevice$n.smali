.class public Lmodule/sound/AudioDevice$n;
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
    iput-object p1, p0, Lmodule/sound/AudioDevice$n;->a:Lmodule/sound/AudioDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lmodule/sound/AudioDevice$n;->a:Lmodule/sound/AudioDevice;

    iget-boolean v1, v0, Lmodule/sound/AudioDevice;->N:Z

    if-nez v1, :cond_0

    iget v1, v0, Lmodule/sound/AudioDevice;->k:I

    invoke-virtual {v0, v1}, Lmodule/sound/AudioDevice;->l0(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lmodule/sound/AudioDevice$n;->a:Lmodule/sound/AudioDevice;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmodule/sound/AudioDevice;->K0(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lmodule/sound/AudioDevice$n;->a:Lmodule/sound/AudioDevice;

    iget v1, v0, Lmodule/sound/AudioDevice;->k:I

    invoke-virtual {v0, v1}, Lmodule/sound/AudioDevice;->l0(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lmodule/sound/AudioDevice$n;->a:Lmodule/sound/AudioDevice;

    iget-object v0, v0, Lmodule/sound/AudioDevice;->q:[I

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    .line 5
    iget-object v1, p0, Lmodule/sound/AudioDevice$n;->a:Lmodule/sound/AudioDevice;

    iget-object v2, v1, Lmodule/sound/AudioDevice;->b:Landroid/util/SparseArray;

    iget v1, v1, Lmodule/sound/AudioDevice;->k:I

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6
    iget-object v1, p0, Lmodule/sound/AudioDevice$n;->a:Lmodule/sound/AudioDevice;

    iget v2, v1, Lmodule/sound/AudioDevice;->k:I

    invoke-virtual {v1, v2}, Lmodule/sound/AudioDevice;->Q(I)Lmodule/sound/AudioDevice$STORE;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    .line 7
    iget-object v2, p0, Lmodule/sound/AudioDevice$n;->a:Lmodule/sound/AudioDevice;

    iget-object v2, v2, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    invoke-virtual {v2, v1, v0}, Lo1/h0;->r(I[I)V

    .line 8
    iget-object v0, p0, Lmodule/sound/AudioDevice$n;->a:Lmodule/sound/AudioDevice;

    iget-object v0, v0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    invoke-virtual {v0, v1}, Lo1/h0;->e(I)V

    :cond_1
    :goto_0
    return-void
.end method
