.class public Lk0/es$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/es;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/es;


# direct methods
.method public constructor <init>(Lk0/es;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/es$i;->a:Lk0/es;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk0/es$i;->a:Lk0/es;

    sget v1, Ly0/f;->Q0:I

    iput v1, v0, Lk0/es;->t:I

    .line 2
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    sget-object v1, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCarSendNaviSound DataSound.sNaviSoundOn= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Ly0/f;->Q0:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 3
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_2

    .line 4
    sget v0, Ly0/f;->Q0:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lk0/es$i;->a:Lk0/es;

    invoke-static {v0, v1}, Lk0/es;->b3(Lk0/es;Z)V

    goto :goto_0

    .line 6
    :cond_1
    sget v0, Lu0/b;->j4:I

    if-nez v0, :cond_3

    .line 7
    iget-object v0, p0, Lk0/es$i;->a:Lk0/es;

    invoke-static {v0, v1}, Lk0/es;->b3(Lk0/es;Z)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Lk0/es$i;->a:Lk0/es;

    iget-boolean v2, v0, Lk0/es;->x:Z

    if-eqz v2, :cond_3

    .line 9
    invoke-static {v0, v1}, Lk0/es;->b3(Lk0/es;Z)V

    :cond_3
    :goto_0
    return-void
.end method
