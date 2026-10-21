.class public Li1/c0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li1/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Li1/c0;


# direct methods
.method public constructor <init>(Li1/c0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li1/c0$b;->b:Li1/c0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Li1/c0$b;->a:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Li1/c0$b;->b:Li1/c0;

    iget-object v1, v0, Li1/a;->i:Landroid/os/Handler;

    iget-object v0, v0, Li1/c0;->r:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    sget v0, Lu0/b;->a0:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v1, p0, Li1/c0$b;->a:I

    if-eq v1, v0, :cond_0

    .line 3
    iget-object v0, p0, Li1/c0$b;->b:Li1/c0;

    iget-object v1, v0, Li1/a;->i:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 4
    iget-object v0, v0, Li1/c0;->r:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5
    :cond_0
    sget v0, Lu0/b;->a0:I

    iput v0, p0, Li1/c0$b;->a:I

    return-void
.end method
