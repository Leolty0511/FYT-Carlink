.class public Lcom/android/fmradio/b$f;
.super Lcom/android/fmradio/b$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fmradio/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public b:I

.field public c:F

.field public d:Z

.field public e:I

.field public final synthetic f:Lcom/android/fmradio/b;


# direct methods
.method public constructor <init>(Lcom/android/fmradio/b;IF)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/fmradio/b$f;->f:Lcom/android/fmradio/b;

    invoke-direct {p0, p1}, Lcom/android/fmradio/b$h;-><init>(Lcom/android/fmradio/b;)V

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lcom/android/fmradio/b$f;->b:I

    .line 3
    iput-boolean p1, p0, Lcom/android/fmradio/b$f;->d:Z

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/android/fmradio/b$f;->e:I

    .line 5
    iput p2, p0, Lcom/android/fmradio/b$f;->b:I

    .line 6
    iput p3, p0, Lcom/android/fmradio/b$f;->c:F

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/fmradio/b$f;->f:Lcom/android/fmradio/b;

    iget v0, v0, Lcom/android/fmradio/b;->a:I

    sget v1, Lcom/android/fmradio/b;->a0:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/fmradio/b$f;->f:Lcom/android/fmradio/b;

    iget-object v0, v0, Lcom/android/fmradio/b;->J:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    iput-boolean v2, p0, Lcom/android/fmradio/b$f;->d:Z

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-------------- remove SearchRunner : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/fmradio/b$f;->f:Lcom/android/fmradio/b;

    iget v1, v1, Lcom/android/fmradio/b;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NativeRadio"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcom/android/fmradio/b$f;->f:Lcom/android/fmradio/b;

    iget v0, v0, Lcom/android/fmradio/b;->a:I

    sget v3, Lcom/android/fmradio/b;->b0:I

    if-eq v0, v3, :cond_1

    .line 6
    iget-object v0, p0, Lcom/android/fmradio/b$f;->f:Lcom/android/fmradio/b;

    iget-object v0, v0, Lcom/android/fmradio/b;->L:Lcom/android/fmradio/FmNative;

    invoke-virtual {v0}, Lcom/android/fmradio/FmNative;->opStopScan()Z

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-------------- opStopScan SearchRunner : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Lcom/android/fmradio/b$f;->f:Lcom/android/fmradio/b;

    sget v1, Lcom/android/fmradio/b;->b0:I

    iput v1, v0, Lcom/android/fmradio/b;->a:I

    .line 9
    invoke-static {v2}, Lw0/f;->A(I)V

    const/4 v0, 0x1

    return v0

    :cond_1
    return v2
.end method

.method public run()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/fmradio/b$f;->d:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/fmradio/b$f;->f:Lcom/android/fmradio/b;

    iget v1, p0, Lcom/android/fmradio/b$f;->b:I

    invoke-virtual {v0, v1}, Lcom/android/fmradio/b;->d0(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/fmradio/b$f;->c:F

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/fmradio/b$f;->c:F

    :goto_0
    float-to-int v0, v0

    const/4 v1, 0x1

    .line 3
    invoke-static {v1}, Lw0/f;->A(I)V

    .line 4
    iget-object v1, p0, Lcom/android/fmradio/b$f;->f:Lcom/android/fmradio/b;

    iget v2, p0, Lcom/android/fmradio/b$f;->b:I

    invoke-virtual {v1, v2, v0}, Lcom/android/fmradio/b;->G(II)Z

    move-result v1

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-------------------->>>>  SearchRunner start: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " result: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NativeRadio"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_3

    .line 6
    iget-object v0, p0, Lcom/android/fmradio/b$f;->f:Lcom/android/fmradio/b;

    iget v1, p0, Lcom/android/fmradio/b$f;->b:I

    invoke-virtual {v0, v1}, Lcom/android/fmradio/b;->d0(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/high16 v1, 0x10000

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/fmradio/b;->z(I)V

    goto :goto_2

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/android/fmradio/b$f;->f:Lcom/android/fmradio/b;

    iget v1, v0, Lcom/android/fmradio/b;->c:I

    invoke-virtual {v0, v1}, Lcom/android/fmradio/b;->A0(I)V

    :goto_2
    return-void
.end method
