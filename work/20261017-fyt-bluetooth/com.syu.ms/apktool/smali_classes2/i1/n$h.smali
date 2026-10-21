.class public Li1/n$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li1/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Li1/n;


# direct methods
.method public constructor <init>(Li1/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li1/n$h;->b:Li1/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Li1/n$h;->a:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget v0, p0, Li1/n$h;->a:I

    sget v1, Lu0/b;->a0:I

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iput v1, p0, Li1/n$h;->a:I

    const/4 v0, 0x1

    if-ne v1, v0, :cond_1

    .line 3
    iget-object v0, p0, Li1/n$h;->b:Li1/n;

    iget-object v1, v0, Li1/n;->D:Landroid/os/Handler;

    iget-object v0, v0, Li1/n;->I:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Li1/n$h;->b:Li1/n;

    iget-object v1, v0, Li1/n;->D:Landroid/os/Handler;

    iget-object v0, v0, Li1/n;->I:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
