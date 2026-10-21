.class public Lf1/n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf1/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf1/n;


# direct methods
.method public constructor <init>(Lf1/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf1/n$a;->a:Lf1/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lf1/n$a;->a:Lf1/n;

    iget-boolean v1, v0, Lf1/q;->r:Z

    if-eqz v1, :cond_0

    sget v1, Lu0/b;->a0:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2
    iget-object v1, v0, Lf1/q;->s:Landroid/os/Handler;

    iget-object v0, v0, Lf1/n;->h0:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lf1/n$a;->a:Lf1/n;

    iget-object v1, v0, Lf1/q;->s:Landroid/os/Handler;

    iget-object v0, v0, Lf1/n;->h0:Ljava/lang/Runnable;

    const-wide/16 v2, 0x320

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
