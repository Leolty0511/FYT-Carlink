.class public Lk0/vn$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/vn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/vn;


# direct methods
.method public constructor <init>(Lk0/vn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/vn$a;->a:Lk0/vn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk0/vn$a;->a:Lk0/vn;

    iget v1, v0, Lk0/vn;->e:I

    sget v2, Lu0/b;->o:I

    if-eq v1, v2, :cond_1

    .line 2
    iput v2, v0, Lk0/vn;->e:I

    const/4 v0, 0x1

    if-ne v2, v0, :cond_0

    .line 3
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    sget-object v1, Lutil/log/LogType;->e:Lutil/log/LogType;

    const-string v2, "DataSound.sCmd.appId = APP_ID_AUX"

    invoke-virtual {v0, v1, v2}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 4
    sget-object v0, Ly0/f;->b:Ly0/e;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ly0/e;->a(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    sget-object v1, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DataSound.sCmd.appId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lu0/b;->D:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 6
    sget-object v0, Ly0/f;->b:Ly0/e;

    sget v1, Lu0/b;->D:I

    invoke-virtual {v0, v1}, Ly0/e;->a(I)V

    :cond_1
    :goto_0
    return-void
.end method
