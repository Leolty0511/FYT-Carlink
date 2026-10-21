.class public Lcom/android/fmradio/b$e;
.super Lcom/android/fmradio/b$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fmradio/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public b:I

.field public c:Z

.field public final synthetic d:Lcom/android/fmradio/b;


# direct methods
.method public constructor <init>(Lcom/android/fmradio/b;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/fmradio/b$e;->d:Lcom/android/fmradio/b;

    invoke-direct {p0, p1}, Lcom/android/fmradio/b$h;-><init>(Lcom/android/fmradio/b;)V

    .line 2
    iget v0, p1, Lcom/android/fmradio/b;->e:I

    iput v0, p0, Lcom/android/fmradio/b$e;->b:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/android/fmradio/b$e;->c:Z

    .line 4
    iget v0, p1, Lcom/android/fmradio/b;->b:I

    invoke-virtual {p1, v0}, Lcom/android/fmradio/b;->d0(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/fmradio/b$e;->c:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scan Channel stop!! mState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/fmradio/b$e;->d:Lcom/android/fmradio/b;

    iget v1, v1, Lcom/android/fmradio/b;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NativeRadio"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/fmradio/b$e;->d:Lcom/android/fmradio/b;

    iget-object v0, v0, Lcom/android/fmradio/b;->J:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lcom/android/fmradio/b$e;->d:Lcom/android/fmradio/b;

    iget v0, v0, Lcom/android/fmradio/b;->a:I

    sget v1, Lcom/android/fmradio/b;->a0:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 4
    :cond_0
    invoke-static {v2}, Lw0/f;->z(I)V

    .line 5
    iget-object v0, p0, Lcom/android/fmradio/b$e;->d:Lcom/android/fmradio/b;

    iget v0, v0, Lcom/android/fmradio/b;->a:I

    sget v1, Lcom/android/fmradio/b;->b0:I

    if-eq v0, v1, :cond_1

    .line 6
    iget-object v0, p0, Lcom/android/fmradio/b$e;->d:Lcom/android/fmradio/b;

    iget v1, p0, Lcom/android/fmradio/b$e;->b:I

    invoke-static {v0, v1}, Lcom/android/fmradio/b;->F(Lcom/android/fmradio/b;I)V

    .line 7
    iget-object v0, p0, Lcom/android/fmradio/b$e;->d:Lcom/android/fmradio/b;

    sget v1, Lcom/android/fmradio/b;->b0:I

    iput v1, v0, Lcom/android/fmradio/b;->a:I

    const/4 v0, 0x1

    return v0

    :cond_1
    return v2
.end method

.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/fmradio/b$e;->d:Lcom/android/fmradio/b;

    iget v0, v0, Lcom/android/fmradio/b;->a:I

    sget v1, Lcom/android/fmradio/b;->c0:I

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/fmradio/b$e;->d:Lcom/android/fmradio/b;

    iput v1, v0, Lcom/android/fmradio/b;->a:I

    :cond_0
    const/4 v0, 0x1

    .line 3
    invoke-static {v0}, Lw0/f;->z(I)V

    .line 4
    iget-object v1, p0, Lcom/android/fmradio/b$e;->d:Lcom/android/fmradio/b;

    iget-object v1, v1, Lcom/android/fmradio/b;->J:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    iget-boolean v1, p0, Lcom/android/fmradio/b$e;->c:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 6
    iget v1, p0, Lcom/android/fmradio/b$e;->b:I

    const/high16 v3, 0x10000

    if-lt v1, v3, :cond_2

    iget-object v4, p0, Lcom/android/fmradio/b$e;->d:Lcom/android/fmradio/b;

    iget v4, v4, Lcom/android/fmradio/b;->o:I

    add-int/2addr v4, v3

    sub-int/2addr v4, v0

    if-lt v1, v4, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v1, 0x1

    .line 7
    :cond_2
    :goto_0
    iput v3, p0, Lcom/android/fmradio/b$e;->b:I

    goto :goto_3

    .line 8
    :cond_3
    iget v1, p0, Lcom/android/fmradio/b$e;->b:I

    if-ltz v1, :cond_5

    iget-object v3, p0, Lcom/android/fmradio/b$e;->d:Lcom/android/fmradio/b;

    iget v3, v3, Lcom/android/fmradio/b;->p:I

    add-int/2addr v3, v2

    sub-int/2addr v3, v0

    if-lt v1, v3, :cond_4

    goto :goto_1

    :cond_4
    add-int/2addr v1, v0

    goto :goto_2

    :cond_5
    :goto_1
    move v1, v2

    .line 9
    :goto_2
    iput v1, p0, Lcom/android/fmradio/b$e;->b:I

    .line 10
    :goto_3
    iget-object v1, p0, Lcom/android/fmradio/b$e;->d:Lcom/android/fmradio/b;

    iget-object v1, v1, Lcom/android/fmradio/b;->m:Landroid/util/SparseArray;

    iget v3, p0, Lcom/android/fmradio/b$e;->b:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh/a;

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scan Channel nextId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/fmradio/b$e;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " station: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NativeRadio"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_7

    .line 12
    iget-object v3, p0, Lcom/android/fmradio/b$e;->d:Lcom/android/fmradio/b;

    iget v4, v1, Lh/a;->c:I

    iget v5, v3, Lcom/android/fmradio/b;->a:I

    sget v6, Lcom/android/fmradio/b;->c0:I

    if-ne v5, v6, :cond_6

    move v5, v0

    goto :goto_4

    :cond_6
    move v5, v2

    :goto_4
    invoke-virtual {v3, v4, v2, v5, v0}, Lcom/android/fmradio/b;->D0(IZZZ)V

    .line 13
    iget v0, v1, Lh/a;->b:I

    invoke-static {v0}, Lw0/f;->f(I)V

    .line 14
    :cond_7
    iget v0, p0, Lcom/android/fmradio/b$e;->b:I

    iget-object v1, p0, Lcom/android/fmradio/b$e;->d:Lcom/android/fmradio/b;

    iget v2, v1, Lcom/android/fmradio/b;->e:I

    if-ne v0, v2, :cond_8

    .line 15
    invoke-virtual {p0}, Lcom/android/fmradio/b$e;->a()Z

    return-void

    .line 16
    :cond_8
    iget v0, v1, Lcom/android/fmradio/b;->a:I

    sget v1, Lcom/android/fmradio/b;->c0:I

    if-ne v0, v1, :cond_9

    .line 17
    iget-object v0, p0, Lcom/android/fmradio/b$e;->d:Lcom/android/fmradio/b;

    iget-object v0, v0, Lcom/android/fmradio/b;->J:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_9
    return-void
.end method
