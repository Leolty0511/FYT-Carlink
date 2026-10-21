.class public Lmodule/sound/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/sound/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/sound/a;


# direct methods
.method public constructor <init>(Lmodule/sound/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/sound/a$b;->a:Lmodule/sound/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "ro.lsec.i2s_event"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 2
    :goto_0
    sget-boolean v0, Lmodule/sound/a;->x1:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "========>>>  akClkRstDelay i2sEvent: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "soundMute1"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v2, :cond_2

    .line 3
    iget-object v0, p0, Lmodule/sound/a$b;->a:Lmodule/sound/a;

    iget-object v2, v0, Lmodule/sound/a;->V0:[I

    aget v1, v2, v1

    and-int/lit16 v1, v1, 0xc0

    const/16 v3, 0x80

    if-ne v1, v3, :cond_2

    const/16 v1, 0xb

    aget v1, v2, v1

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    .line 4
    invoke-virtual {v0}, Lmodule/sound/a;->L1()V

    :cond_2
    return-void
.end method
