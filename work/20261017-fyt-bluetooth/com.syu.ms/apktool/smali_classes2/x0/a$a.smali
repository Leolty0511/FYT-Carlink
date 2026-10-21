.class public Lx0/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lx0/a;


# direct methods
.method public constructor <init>(Lx0/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lx0/a$a;->a:Lx0/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lx0/a$a;->a:Lx0/a;

    iget-object v0, v0, Lx0/a;->k:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lx0/a$a;->a:Lx0/a;

    iget-object v1, v0, Lx0/a;->k:Landroid/os/Handler;

    iget-object v0, v0, Lx0/a;->Q:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lx0/a$a;->a:Lx0/a;

    iget-object v1, v0, Lx0/a;->R:Landroid/os/Handler;

    iget-object v0, v0, Lx0/a;->S:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lx0/a$a;->a:Lx0/a;

    const/4 v1, 0x0

    iput v1, v0, Lx0/a;->t0:I

    .line 5
    invoke-virtual {v0}, Lx0/a;->n()Z

    move-result v2

    iput-boolean v2, v0, Lx0/a;->i:Z

    .line 6
    iget-object v0, p0, Lx0/a$a;->a:Lx0/a;

    iget-boolean v2, v0, Lx0/a;->i:Z

    if-nez v2, :cond_0

    iget v3, v0, Lx0/a;->H:I

    add-int/lit8 v4, v3, -0x1

    iput v4, v0, Lx0/a;->H:I

    if-lez v3, :cond_0

    .line 7
    iget-object v0, v0, Lx0/a;->k:Landroid/os/Handler;

    const-wide/16 v2, 0x258

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 8
    iget-object v2, v0, Lx0/a;->k:Landroid/os/Handler;

    iget-object v0, v0, Lx0/a;->Q:Ljava/lang/Runnable;

    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 9
    iget-object v0, p0, Lx0/a$a;->a:Lx0/a;

    iget-object v2, v0, Lx0/a;->R:Landroid/os/Handler;

    iget-object v0, v0, Lx0/a;->S:Ljava/lang/Runnable;

    const-wide/16 v3, 0xfa

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 10
    :cond_1
    :goto_0
    sget-object v0, Lo1/h;->b:Lo1/y;

    iget-object v2, p0, Lx0/a$a;->a:Lx0/a;

    invoke-static {v2}, Lx0/a;->k(Lx0/a;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method
