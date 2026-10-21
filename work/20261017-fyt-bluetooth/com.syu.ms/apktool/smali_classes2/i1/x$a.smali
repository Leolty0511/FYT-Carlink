.class public Li1/x$a;
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
.field public final synthetic a:Li1/x;


# direct methods
.method public constructor <init>(Li1/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li1/x$a;->a:Li1/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Li1/x$a;->a:Li1/x;

    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Li1/x;->y([I)V

    .line 2
    sget v0, Lu0/b;->a0:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Li1/x$a;->a:Li1/x;

    iget-object v1, v0, Li1/a;->i:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, v0, Li1/x;->t:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Li1/x$a;->a:Li1/x;

    iget-object v1, v0, Li1/a;->i:Landroid/os/Handler;

    iget-object v0, v0, Li1/x;->t:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0xc3
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method
