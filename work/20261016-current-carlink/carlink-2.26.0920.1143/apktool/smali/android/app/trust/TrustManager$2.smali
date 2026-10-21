.class Landroid/app/trust/TrustManager$2;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/trust/TrustManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/trust/TrustManager;


# direct methods
.method public constructor <init>(Landroid/app/trust/TrustManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Landroid/app/trust/TrustManager$2;->this$0:Landroid/app/trust/TrustManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq v0, v2, :cond_2

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    if-eq v0, v3, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Landroid/app/trust/TrustManager$TrustListener;

    .line 14
    .line 15
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 16
    .line 17
    if-eqz v3, :cond_1

    .line 18
    .line 19
    move v1, v2

    .line 20
    :cond_1
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 21
    .line 22
    invoke-interface {v0, v1, p1}, Landroid/app/trust/TrustManager$TrustListener;->onTrustManagedChanged(ZI)V

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_2
    invoke-virtual {p1}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string/jumbo v3, "initiatedByUser"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    goto :goto_0

    .line 44
    :cond_3
    move v0, v1

    .line 45
    :goto_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v3, Landroid/app/trust/TrustManager$TrustListener;

    .line 48
    .line 49
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 50
    .line 51
    if-eqz v4, :cond_4

    .line 52
    .line 53
    move v1, v2

    .line 54
    :cond_4
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 55
    .line 56
    invoke-interface {v3, v1, p1, v0}, Landroid/app/trust/TrustManager$TrustListener;->onTrustChanged(ZII)V

    .line 57
    .line 58
    .line 59
    :goto_1
    return-void
.end method
