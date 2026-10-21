.class public Lk0/ml$c;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lk0/ml;


# direct methods
.method public constructor <init>(Lk0/ml;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ml$c;->a:Lk0/ml;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lk0/ml;Lk0/ml$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lk0/ml$c;-><init>(Lk0/ml;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "FOURCAMERA2_BROADCAST_RECV"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    :try_start_0
    const-string p1, "Show"

    .line 4
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 5
    iget-object p1, p0, Lk0/ml$c;->a:Lk0/ml;

    iput-boolean p2, p1, Lk0/ml;->e:Z

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lk0/ml$c;->a:Lk0/ml;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lk0/ml;->e:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
