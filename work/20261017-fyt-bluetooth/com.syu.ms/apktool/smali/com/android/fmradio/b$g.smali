.class public Lcom/android/fmradio/b$g;
.super Lcom/android/fmradio/b$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fmradio/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
.end annotation


# instance fields
.field public g:Ljava/lang/Boolean;

.field public final synthetic h:Lcom/android/fmradio/b;


# direct methods
.method public constructor <init>(Lcom/android/fmradio/b;FI)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/fmradio/b$g;-><init>(Lcom/android/fmradio/b;FLjava/lang/Boolean;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/fmradio/b;FLjava/lang/Boolean;I)V
    .locals 1

    .line 3
    iput-object p1, p0, Lcom/android/fmradio/b$g;->h:Lcom/android/fmradio/b;

    .line 4
    iget v0, p1, Lcom/android/fmradio/b;->b:I

    invoke-direct {p0, p1, v0, p2}, Lcom/android/fmradio/b$f;-><init>(Lcom/android/fmradio/b;IF)V

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/android/fmradio/b$g;->g:Ljava/lang/Boolean;

    .line 6
    iput-object p3, p0, Lcom/android/fmradio/b$g;->g:Ljava/lang/Boolean;

    .line 7
    iput p4, p0, Lcom/android/fmradio/b$f;->e:I

    return-void
.end method

.method public constructor <init>(Lcom/android/fmradio/b;FZ)V
    .locals 1

    .line 1
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    const/4 v0, 0x6

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/fmradio/b$g;-><init>(Lcom/android/fmradio/b;FLjava/lang/Boolean;I)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/fmradio/b$g;->h:Lcom/android/fmradio/b;

    iget v0, v0, Lcom/android/fmradio/b;->a:I

    sget v1, Lcom/android/fmradio/b;->a0:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/fmradio/b$g;->h:Lcom/android/fmradio/b;

    iget-object v0, v0, Lcom/android/fmradio/b;->J:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-------------- remove SeekStationRunner : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cmdId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/fmradio/b$f;->e:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mState : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/fmradio/b$g;->h:Lcom/android/fmradio/b;

    iget v3, v3, Lcom/android/fmradio/b;->a:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "NativeRadio"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/android/fmradio/b$g;->h:Lcom/android/fmradio/b;

    iget v0, v0, Lcom/android/fmradio/b;->a:I

    sget v4, Lcom/android/fmradio/b;->b0:I

    if-eq v0, v4, :cond_1

    .line 5
    iget-object v0, p0, Lcom/android/fmradio/b$g;->h:Lcom/android/fmradio/b;

    iget-object v0, v0, Lcom/android/fmradio/b;->L:Lcom/android/fmradio/FmNative;

    invoke-virtual {v0}, Lcom/android/fmradio/FmNative;->opStopScan()Z

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-------------- opStopScan SeekStationRunner : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/fmradio/b$f;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v0, p0, Lcom/android/fmradio/b$g;->h:Lcom/android/fmradio/b;

    sget v1, Lcom/android/fmradio/b;->b0:I

    iput v1, v0, Lcom/android/fmradio/b;->a:I

    const/4 v0, 0x1

    return v0

    :cond_1
    return v2
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/fmradio/b$g;->h:Lcom/android/fmradio/b;

    iget-object v0, v0, Lcom/android/fmradio/b;->J:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x4e20

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/android/fmradio/b$g;->c(J)V

    return-void
.end method

.method public c(J)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "---->> Seek Task:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " id: : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/fmradio/b$f;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isEnable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/fmradio/b$f;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " delay time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NativeRadio"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/fmradio/b$g;->h:Lcom/android/fmradio/b;

    iget-object v0, v0, Lcom/android/fmradio/b;->J:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public run()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/android/fmradio/b$f;->d:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/android/fmradio/b$g;->h:Lcom/android/fmradio/b;

    iget v2, v0, Lcom/android/fmradio/b;->c:I

    const/16 v3, 0x1388

    if-le v2, v3, :cond_2

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    goto :goto_0

    :cond_2
    int-to-float v2, v2

    .line 4
    :goto_0
    iget-object v0, v0, Lcom/android/fmradio/b;->J:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    iget v0, p0, Lcom/android/fmradio/b$f;->e:I

    const/16 v3, 0x1c

    if-ne v0, v3, :cond_3

    iget-object v4, p0, Lcom/android/fmradio/b$g;->h:Lcom/android/fmradio/b;

    iget-boolean v5, v4, Lcom/android/fmradio/b;->y:Z

    if-nez v5, :cond_3

    .line 6
    iget v0, v4, Lcom/android/fmradio/b;->c:I

    invoke-virtual {v4, v0}, Lcom/android/fmradio/b;->A0(I)V

    return-void

    :cond_3
    const/16 v4, 0x1d

    if-ne v0, v4, :cond_4

    .line 7
    iget-object v0, p0, Lcom/android/fmradio/b$g;->h:Lcom/android/fmradio/b;

    iget-boolean v5, v0, Lcom/android/fmradio/b;->z:Z

    if-nez v5, :cond_4

    .line 8
    iget v1, v0, Lcom/android/fmradio/b;->c:I

    invoke-virtual {v0, v1}, Lcom/android/fmradio/b;->A0(I)V

    return-void

    .line 9
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "---->> SeekStationRunner startFreq : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/fmradio/b$f;->c:F

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " cmdid : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/fmradio/b$f;->e:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "  task:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "NativeRadio"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object v0, p0, Lcom/android/fmradio/b$g;->h:Lcom/android/fmradio/b;

    iget v6, v0, Lcom/android/fmradio/b;->b:I

    iget-object v7, p0, Lcom/android/fmradio/b$g;->g:Ljava/lang/Boolean;

    iget v8, p0, Lcom/android/fmradio/b$f;->e:I

    invoke-static {v0, v6, v2, v7, v8}, Lcom/android/fmradio/b;->D(Lcom/android/fmradio/b;IFLjava/lang/Boolean;I)[F

    move-result-object v0

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "---->> findStation stations : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_5

    const-string v6, "NULL"

    goto :goto_1

    :cond_5
    array-length v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_1
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " isEnable: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/fmradio/b$f;->d:Z

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " ptySeekRunner: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/fmradio/b$g;->h:Lcom/android/fmradio/b;

    iget-object v6, v6, Lcom/android/fmradio/b;->G:Lcom/android/fmradio/b$g;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 12
    invoke-static {v0, v2}, Lo1/s0;->g([FI)Z

    move-result v6

    const-wide/16 v7, 0x4e20

    if-eqz v6, :cond_8

    .line 13
    aget v4, v0, v2

    const/high16 v6, 0x44fa0000    # 2000.0f

    cmpg-float v4, v4, v6

    if-gez v4, :cond_6

    aget v0, v0, v2

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v0, v4

    goto :goto_2

    :cond_6
    aget v0, v0, v2

    :goto_2
    float-to-int v0, v0

    .line 14
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "---->> findStation findStation : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    iget-object v4, p0, Lcom/android/fmradio/b$g;->h:Lcom/android/fmradio/b;

    invoke-static {v4, v0, v1}, Lcom/android/fmradio/b;->E(Lcom/android/fmradio/b;IZ)V

    .line 16
    iget v0, p0, Lcom/android/fmradio/b$f;->e:I

    if-eq v0, v3, :cond_10

    iget-object v0, p0, Lcom/android/fmradio/b$g;->h:Lcom/android/fmradio/b;

    iget-boolean v1, v0, Lcom/android/fmradio/b;->y:Z

    if-eqz v1, :cond_10

    .line 17
    iput-boolean v2, p0, Lcom/android/fmradio/b$f;->d:Z

    .line 18
    iget-object v1, v0, Lcom/android/fmradio/b;->F:Lcom/android/fmradio/b$g;

    if-nez v1, :cond_7

    .line 19
    new-instance v1, Lcom/android/fmradio/b$g;

    iget v2, v0, Lcom/android/fmradio/b;->c:I

    int-to-float v2, v2

    invoke-direct {v1, v0, v2, v3}, Lcom/android/fmradio/b$g;-><init>(Lcom/android/fmradio/b;FI)V

    iput-object v1, v0, Lcom/android/fmradio/b;->F:Lcom/android/fmradio/b$g;

    .line 20
    :cond_7
    iget-object v0, p0, Lcom/android/fmradio/b$g;->h:Lcom/android/fmradio/b;

    iget-object v0, v0, Lcom/android/fmradio/b;->F:Lcom/android/fmradio/b$g;

    invoke-virtual {v0, v7, v8}, Lcom/android/fmradio/b$g;->c(J)V

    goto/16 :goto_6

    .line 21
    :cond_8
    iget-boolean v0, p0, Lcom/android/fmradio/b$f;->d:Z

    if-nez v0, :cond_9

    return-void

    .line 22
    :cond_9
    iget v0, p0, Lcom/android/fmradio/b$f;->e:I

    if-ne v0, v4, :cond_a

    iget-object v4, p0, Lcom/android/fmradio/b$g;->h:Lcom/android/fmradio/b;

    iget-object v4, v4, Lcom/android/fmradio/b;->H:Lcom/android/fmradio/b$g;

    if-nez v4, :cond_a

    move v4, v1

    goto :goto_3

    :cond_a
    move v4, v2

    :goto_3
    const/4 v5, 0x6

    if-ne v0, v5, :cond_b

    .line 23
    iget-object v5, p0, Lcom/android/fmradio/b$g;->h:Lcom/android/fmradio/b;

    iget-object v5, v5, Lcom/android/fmradio/b;->G:Lcom/android/fmradio/b$g;

    if-nez v5, :cond_b

    move v5, v1

    goto :goto_4

    :cond_b
    move v5, v2

    :goto_4
    if-ne v0, v3, :cond_c

    .line 24
    iget-object v0, p0, Lcom/android/fmradio/b$g;->h:Lcom/android/fmradio/b;

    iget-object v6, v0, Lcom/android/fmradio/b;->G:Lcom/android/fmradio/b$g;

    if-nez v6, :cond_c

    iget-object v0, v0, Lcom/android/fmradio/b;->H:Lcom/android/fmradio/b$g;

    if-nez v0, :cond_c

    move v0, v1

    goto :goto_5

    :cond_c
    move v0, v2

    :goto_5
    if-nez v4, :cond_d

    if-nez v5, :cond_d

    if-eqz v0, :cond_e

    .line 25
    :cond_d
    iget-object v0, p0, Lcom/android/fmradio/b$g;->h:Lcom/android/fmradio/b;

    iget v4, v0, Lcom/android/fmradio/b;->c:I

    invoke-virtual {v0, v4}, Lcom/android/fmradio/b;->A0(I)V

    .line 26
    :cond_e
    sget v0, Lu0/b;->D:I

    if-ne v0, v1, :cond_10

    .line 27
    iget-object v0, p0, Lcom/android/fmradio/b$g;->h:Lcom/android/fmradio/b;

    iget-boolean v1, v0, Lcom/android/fmradio/b;->y:Z

    if-eqz v1, :cond_10

    iget v1, p0, Lcom/android/fmradio/b$f;->e:I

    if-ne v1, v3, :cond_10

    .line 28
    iget-object v1, v0, Lcom/android/fmradio/b;->F:Lcom/android/fmradio/b$g;

    if-ne v1, p0, :cond_f

    .line 29
    invoke-virtual {p0}, Lcom/android/fmradio/b$g;->b()V

    goto :goto_6

    .line 30
    :cond_f
    iput-boolean v2, p0, Lcom/android/fmradio/b$f;->d:Z

    .line 31
    new-instance v1, Lcom/android/fmradio/b$g;

    iget v2, v0, Lcom/android/fmradio/b;->c:I

    int-to-float v2, v2

    invoke-direct {v1, v0, v2, v3}, Lcom/android/fmradio/b$g;-><init>(Lcom/android/fmradio/b;FI)V

    iput-object v1, v0, Lcom/android/fmradio/b;->F:Lcom/android/fmradio/b$g;

    .line 32
    iget-object v0, p0, Lcom/android/fmradio/b$g;->h:Lcom/android/fmradio/b;

    iget-object v0, v0, Lcom/android/fmradio/b;->F:Lcom/android/fmradio/b$g;

    invoke-virtual {v0, v7, v8}, Lcom/android/fmradio/b$g;->c(J)V

    :cond_10
    :goto_6
    return-void
.end method
