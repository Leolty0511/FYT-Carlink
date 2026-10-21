.class public Lk0/ll$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ll;


# direct methods
.method public constructor <init>(Lk0/ll;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ll$l;->a:Lk0/ll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    sget-object v1, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DataSound.sNaviSoundOn =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Ly0/f;->Q0:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lk0/ll$l;->a:Lk0/ll;

    iget v1, v0, Lk0/ll;->q:I

    sget v2, Ly0/f;->Q0:I

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    if-ne v2, v1, :cond_0

    const/16 v1, 0x9

    .line 3
    iput v1, v0, Lk0/ll;->j0:I

    .line 4
    :cond_0
    iput v2, v0, Lk0/ll;->q:I

    .line 5
    iget v1, v0, Lk0/ll;->P:I

    if-nez v1, :cond_2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    sget v1, Lu0/b;->j4:I

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 7
    invoke-static {v0, v1}, Lk0/ll;->e3(Lk0/ll;Z)V

    :cond_2
    :goto_0
    return-void
.end method
