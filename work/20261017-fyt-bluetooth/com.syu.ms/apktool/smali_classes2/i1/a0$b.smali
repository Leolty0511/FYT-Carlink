.class public Li1/a0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li1/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Li1/a0;


# direct methods
.method public constructor <init>(Li1/a0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li1/a0$b;->b:Li1/a0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Li1/a0$b;->a:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Li1/a0$b;->b:Li1/a0;

    iget-object v1, v0, Li1/a;->i:Landroid/os/Handler;

    iget-object v0, v0, Li1/a0;->y:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget v0, p0, Li1/a0$b;->a:I

    sget v1, Lu0/b;->a0:I

    if-eq v0, v1, :cond_1

    .line 3
    iput v1, p0, Li1/a0$b;->a:I

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    .line 4
    iget-object v0, p0, Li1/a0$b;->b:Li1/a0;

    iget-object v1, v0, Li1/a;->i:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 5
    iget-object v0, v0, Li1/a0;->y:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Li1/a0$b;->b:Li1/a0;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Li1/a0;->H([I)V

    :cond_1
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x81
        0x1
        0x0
    .end array-data
.end method
