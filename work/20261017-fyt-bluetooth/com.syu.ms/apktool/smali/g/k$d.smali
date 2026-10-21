.class public Lg/k$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lg/k;


# direct methods
.method public constructor <init>(Lg/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/k$d;->a:Lg/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string/jumbo v0, "zj.zsender.focus.video"

    const/4 v1, -0x1

    .line 1
    invoke-static {v0, v1}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v0, p0, Lg/k$d;->a:Lg/k;

    iget-boolean v2, v0, Lg/k;->o0:Z

    if-eq v2, v1, :cond_1

    .line 3
    iput-boolean v1, v0, Lg/k;->o0:Z

    .line 4
    sget-object v0, Ly0/g;->v:Lo1/y;

    invoke-virtual {v0}, Lo1/y;->c()V

    .line 5
    :cond_1
    iget-object v0, p0, Lg/k$d;->a:Lg/k;

    iget-object v0, v0, Lchip/Chip;->s:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7
    iget-object v0, p0, Lg/k$d;->a:Lg/k;

    iget-object v0, v0, Lchip/Chip;->s:Landroid/os/Handler;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method
