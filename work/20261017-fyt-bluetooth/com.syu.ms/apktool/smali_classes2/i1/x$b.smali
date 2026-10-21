.class public Li1/x$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li1/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Li1/x;


# direct methods
.method public constructor <init>(Li1/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li1/x$b;->b:Li1/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Li1/x$b;->a:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Li1/x$b;->b:Li1/x;

    iget-object v1, v0, Li1/a;->i:Landroid/os/Handler;

    iget-object v0, v0, Li1/x;->t:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    sget v0, Lu0/b;->a0:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v1, p0, Li1/x$b;->a:I

    if-eq v1, v0, :cond_0

    .line 3
    iget-object v0, p0, Li1/x$b;->b:Li1/x;

    iget-object v1, v0, Li1/a;->i:Landroid/os/Handler;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 4
    iput-object v2, v0, Li1/x;->s:Ljava/lang/Integer;

    iput-object v2, v0, Li1/x;->r:Ljava/lang/Integer;

    iput-object v2, v0, Li1/x;->q:Ljava/lang/Integer;

    iput-object v2, v0, Li1/x;->p:Ljava/lang/Integer;

    .line 5
    iget-object v0, v0, Li1/x;->t:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6
    :cond_0
    sget v0, Lu0/b;->a0:I

    iput v0, p0, Li1/x$b;->a:I

    return-void
.end method
