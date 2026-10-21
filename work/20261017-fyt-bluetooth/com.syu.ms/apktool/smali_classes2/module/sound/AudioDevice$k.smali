.class public Lmodule/sound/AudioDevice$k;
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
    iput-object p1, p0, Lmodule/sound/AudioDevice$k;->a:Lmodule/sound/AudioDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lmodule/sound/AudioDevice$k;)V
    .locals 0

    invoke-direct {p0}, Lmodule/sound/AudioDevice$k;->b()V

    return-void
.end method

.method private synthetic b()V
    .locals 3

    .line 1
    sget v0, Ly0/f;->i:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lmodule/sound/AudioDevice$k;->a:Lmodule/sound/AudioDevice;

    iget v2, v0, Lmodule/sound/AudioDevice;->g:I

    invoke-virtual {v0, v2, v1}, Lmodule/sound/AudioDevice;->A1(IZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget v0, Lk0/nt;->Z:I

    if-ltz v0, :cond_0

    .line 2
    iget-object v1, p0, Lmodule/sound/AudioDevice$k;->a:Lmodule/sound/AudioDevice;

    iget-object v1, v1, Lmodule/sound/AudioDevice;->e0:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3
    iget-object v0, p0, Lmodule/sound/AudioDevice$k;->a:Lmodule/sound/AudioDevice;

    iget-object v0, v0, Lmodule/sound/AudioDevice;->r:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 4
    new-instance v1, Ly0/a;

    invoke-direct {v1, p0}, Ly0/a;-><init>(Lmodule/sound/AudioDevice$k;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lmodule/sound/AudioDevice$k;->a:Lmodule/sound/AudioDevice;

    iget-object v0, v0, Lmodule/sound/AudioDevice;->e0:Ljava/util/concurrent/atomic/AtomicInteger;

    sget v1, Lu0/b;->X1:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 6
    sget v0, Ly0/f;->i:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 7
    iget-object v0, p0, Lmodule/sound/AudioDevice$k;->a:Lmodule/sound/AudioDevice;

    iget v2, v0, Lmodule/sound/AudioDevice;->g:I

    invoke-virtual {v0, v2, v1}, Lmodule/sound/AudioDevice;->A1(IZ)V

    :cond_1
    :goto_0
    return-void
.end method
