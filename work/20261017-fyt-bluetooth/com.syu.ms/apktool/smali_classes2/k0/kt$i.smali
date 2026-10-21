.class public Lk0/kt$i;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/kt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "i"
.end annotation


# instance fields
.field public final synthetic a:Lk0/kt;


# direct methods
.method public constructor <init>(Lk0/kt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/kt$i;->a:Lk0/kt;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lk0/kt;Lk0/kt$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lk0/kt$i;-><init>(Lk0/kt;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const-string p1, "ICON"

    const-string v0, "KEY_TYPE"

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v2, "AUTONAVI_STANDARD_BROADCAST_SEND"

    .line 3
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-eqz p2, :cond_3

    .line 4
    :try_start_0
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x2723

    const/16 v5, 0x43

    const/4 v6, 0x1

    const/16 v7, 0xe3

    const/4 v8, 0x2

    if-ne v1, v2, :cond_1

    const-string v1, "EXTRA_STATE"

    .line 5
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v8, :cond_0

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    .line 6
    :cond_0
    iget-object v1, p0, Lk0/kt$i;->a:Lk0/kt;

    iput v4, v1, Lk0/kt;->L:I

    new-array v1, v3, [I

    aput v7, v1, v4

    aput v5, v1, v6

    aput v4, v1, v8

    .line 7
    invoke-static {v1}, Lz/k;->s([I)V

    .line 8
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x2711

    if-ne v0, v1, :cond_3

    .line 9
    iget-object v0, p0, Lk0/kt$i;->a:Lk0/kt;

    iget v0, v0, Lk0/kt;->L:I

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 10
    iget-object v0, p0, Lk0/kt$i;->a:Lk0/kt;

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lk0/kt;->L:I

    new-array p1, v3, [I

    aput v7, p1, v4

    aput v5, p1, v6

    .line 11
    invoke-static {}, Lk0/kt;->k3()[I

    move-result-object p2

    iget-object v0, p0, Lk0/kt$i;->a:Lk0/kt;

    iget v0, v0, Lk0/kt;->L:I

    aget p2, p2, v0

    aput p2, p1, v8

    invoke-static {p1}, Lz/k;->s([I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "mxnavi"

    const-string v0, "\u6942\u6a3a\u75c9\u9366\u677f\u6d58\u9359\u621d\u56ad\u9428\u52eb\ue1f1\u9478\ue045\u67df\u935a\u621d\u5f2c\u93c1\u4f34\u654a\u7487\ue224\u7d12\u951b\u4f8a\u7d12"

    .line 12
    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    const-string p1, "com.fyt.systemui.remove"

    .line 14
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "pkg"

    .line 15
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.autonavi.amapauto"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 16
    iget-object p1, p0, Lk0/kt$i;->a:Lk0/kt;

    iput v4, p1, Lk0/kt;->L:I

    new-array p1, v3, [I

    .line 17
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_3
    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe3
        0x43
        0x0
    .end array-data
.end method
