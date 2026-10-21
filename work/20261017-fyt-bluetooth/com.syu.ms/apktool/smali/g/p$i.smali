.class public Lg/p$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/p;->d0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Lg/p;


# direct methods
.method public constructor <init>(Lg/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/p$i;->b:Lg/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lg/p$i;->a:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    const-class v0, Landroid/media/AudioManager;

    invoke-static {}, Lh1/a;->d()Lh1/a;

    move-result-object v1

    invoke-virtual {v1}, Lh1/a;->e()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    sget v1, Ly0/f;->T0:I

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 2
    :goto_0
    sget v4, Lu0/b;->D:I

    const/16 v5, 0xf

    const/4 v6, 0x2

    if-ne v4, v5, :cond_2

    .line 3
    invoke-static {}, Lh1/a;->d()Lh1/a;

    move-result-object v4

    invoke-virtual {v4}, Lh1/a;->e()I

    move-result v4

    if-eq v4, v3, :cond_1

    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v4

    invoke-virtual {v4}, Lu0/i;->r3()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_1
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v4

    invoke-virtual {v4}, Lu0/i;->j3()I

    move-result v4

    if-ne v4, v6, :cond_2

    :goto_1
    move v4, v3

    goto :goto_2

    :cond_2
    move v4, v2

    .line 4
    :goto_2
    sget v5, Lh0/c;->E:I

    const/4 v7, 0x5

    if-eq v5, v7, :cond_4

    const/4 v7, 0x4

    if-eq v5, v7, :cond_4

    const/4 v7, 0x3

    if-ne v5, v7, :cond_3

    goto :goto_3

    :cond_3
    move v5, v2

    goto :goto_4

    :cond_4
    :goto_3
    move v5, v3

    .line 5
    :goto_4
    sget v7, Lu0/b;->D:I

    if-ne v7, v6, :cond_5

    sget v7, Lh0/c;->U:I

    if-ne v7, v3, :cond_5

    move v7, v3

    goto :goto_5

    :cond_5
    move v7, v2

    :goto_5
    if-nez v1, :cond_7

    if-nez v4, :cond_7

    if-nez v5, :cond_7

    if-eqz v7, :cond_6

    goto :goto_6

    :cond_6
    move v1, v2

    goto :goto_7

    :cond_7
    :goto_6
    move v1, v3

    .line 6
    :goto_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-------------- DataMain.sAppId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lu0/b;->D:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " isExtraCalling() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v5

    invoke-virtual {v5}, Lu0/i;->r3()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " getCpCallStateOfCarlink(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v5

    invoke-virtual {v5}, Lu0/i;->j3()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " enable : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lg/p$i;->a:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " to : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isHeadsetConnected : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lg/p$i;->b:Lg/p;

    .line 9
    invoke-static {v5}, Lg/p;->b0(Lg/p;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Qin"

    .line 10
    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-boolean v4, p0, Lg/p$i;->a:Z

    if-eq v4, v1, :cond_b

    .line 12
    iput-boolean v1, p0, Lg/p$i;->a:Z

    const-string/jumbo v4, "sprd_voip_start"

    const-string/jumbo v7, "setParameter"

    if-eqz v1, :cond_9

    .line 13
    iget-object v1, p0, Lg/p$i;->b:Lg/p;

    invoke-static {v1}, Lg/p;->b0(Lg/p;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "--------------startBluetoothSco"

    .line 14
    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-static {}, Lh1/a;->d()Lh1/a;

    move-result-object v1

    invoke-virtual {v1}, Lh1/a;->e()I

    move-result v1

    if-eq v1, v3, :cond_8

    .line 16
    invoke-static {v6}, Landroid/media/AudioSystem;->setPhoneState(I)I

    .line 17
    :cond_8
    new-instance v1, Lj1/c;

    invoke-direct {v1, v7}, Lj1/c;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-static {}, La/f;->f()Landroid/media/AudioManager;

    move-result-object v5

    invoke-virtual {v1, v5}, Lj1/c;->g(Ljava/lang/Object;)Lj1/c;

    move-result-object v1

    .line 19
    invoke-virtual {v1, v0}, Lj1/c;->e(Ljava/lang/Class;)Lj1/c;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    aput-object v4, v1, v2

    const-string/jumbo v2, "true"

    aput-object v2, v1, v3

    .line 20
    invoke-virtual {v0, v1}, Lj1/c;->d([Ljava/lang/Object;)Lj1/c;

    move-result-object v0

    invoke-virtual {v0}, Lj1/c;->a()Ljava/lang/Object;

    .line 21
    invoke-static {}, La/f;->f()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->startBluetoothSco()V

    .line 22
    invoke-static {}, Ly0/h;->M()V

    goto :goto_8

    :cond_9
    const-string v1, "--------------stopBluetoothSco"

    .line 23
    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-static {}, Lh1/a;->d()Lh1/a;

    move-result-object v1

    invoke-virtual {v1}, Lh1/a;->e()I

    move-result v1

    if-eq v1, v3, :cond_a

    .line 25
    invoke-static {v2}, Landroid/media/AudioSystem;->setPhoneState(I)I

    .line 26
    :cond_a
    new-instance v1, Lj1/c;

    invoke-direct {v1, v7}, Lj1/c;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-static {}, La/f;->f()Landroid/media/AudioManager;

    move-result-object v5

    invoke-virtual {v1, v5}, Lj1/c;->g(Ljava/lang/Object;)Lj1/c;

    move-result-object v1

    .line 28
    invoke-virtual {v1, v0}, Lj1/c;->e(Ljava/lang/Class;)Lj1/c;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    aput-object v4, v1, v2

    const-string v2, "false"

    aput-object v2, v1, v3

    .line 29
    invoke-virtual {v0, v1}, Lj1/c;->d([Ljava/lang/Object;)Lj1/c;

    move-result-object v0

    invoke-virtual {v0}, Lj1/c;->a()Ljava/lang/Object;

    .line 30
    invoke-static {}, La/f;->f()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    :cond_b
    :goto_8
    return-void
.end method
