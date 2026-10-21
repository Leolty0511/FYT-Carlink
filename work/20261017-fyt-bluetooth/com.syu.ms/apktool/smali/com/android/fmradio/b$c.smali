.class public Lcom/android/fmradio/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fmradio/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Z

.field public b:I

.field public final synthetic c:Lcom/android/fmradio/b;


# direct methods
.method public constructor <init>(Lcom/android/fmradio/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/fmradio/b$c;->c:Lcom/android/fmradio/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/android/fmradio/b$c;->a:Z

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lcom/android/fmradio/b$c;->b:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget v0, Lu0/b;->a0:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget v0, Lu0/b;->g:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    iput-boolean v1, p0, Lcom/android/fmradio/b$c;->a:Z

    .line 3
    iget-object v0, p0, Lcom/android/fmradio/b$c;->c:Lcom/android/fmradio/b;

    iget-object v0, v0, Lcom/android/fmradio/b;->J:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    iget-boolean v0, p0, Lcom/android/fmradio/b$c;->a:Z

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/fmradio/b$c;->c:Lcom/android/fmradio/b;

    iget-boolean v2, v1, Lcom/android/fmradio/b;->N:Z

    if-nez v2, :cond_1

    .line 5
    invoke-virtual {v1}, Lcom/android/fmradio/b;->n0()Z

    .line 6
    iget-object v0, p0, Lcom/android/fmradio/b$c;->c:Lcom/android/fmradio/b;

    iget-boolean v1, v0, Lcom/android/fmradio/b;->N:Z

    if-nez v1, :cond_2

    .line 7
    iget-object v0, v0, Lcom/android/fmradio/b;->J:Landroid/os/Handler;

    const-wide/16 v1, 0x320

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/android/fmradio/b$c;->c:Lcom/android/fmradio/b;

    iget-boolean v1, v0, Lcom/android/fmradio/b;->N:Z

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {v0}, Lcom/android/fmradio/b;->R()Z

    :cond_2
    :goto_1
    return-void
.end method
