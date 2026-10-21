.class final Lcom/syu/carlink/CarLinkService$handleWireless$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lz/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lz/p;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ll/e;

.field public final synthetic c:Lcom/syu/carlink/CarLinkService;


# direct methods
.method public constructor <init>(Ll/e;Lcom/syu/carlink/CarLinkService;)V
    .locals 0

    iput-object p1, p0, Lcom/syu/carlink/CarLinkService$handleWireless$1$1;->b:Ll/e;

    iput-object p2, p0, Lcom/syu/carlink/CarLinkService$handleWireless$1$1;->c:Lcom/syu/carlink/CarLinkService;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p0, p1, p2}, Lcom/syu/carlink/CarLinkService$handleWireless$1$1;->invoke(ZLandroid/net/wifi/WifiConfiguration;)V

    sget-object p1, Ls/c;->a:Ls/c;

    return-object p1
.end method

.method public final invoke(ZLandroid/net/wifi/WifiConfiguration;)V
    .locals 9

    if-eqz p2, :cond_8

    if-eqz p1, :cond_8

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Config result ssid: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " password: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " band : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/syu/carlink/CarLinkService$handleWireless$1$1;->b:Ll/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Ll/e;->b(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " channel: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "apChannel"

    .line 3
    invoke-static {p2, v0}, Lp/a;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "getField(configuration, \"apChannel\")"

    invoke-static {v1, v2}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 4
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " secu: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-eqz v1, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "HDL"

    invoke-static {v1, p1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p1, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 6
    iget-object v1, p2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 7
    invoke-static {p2}, Ll/e;->b(Landroid/net/wifi/WifiConfiguration;)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v5, v7, :cond_1

    move v5, v7

    goto :goto_1

    :cond_1
    move v5, v6

    .line 8
    :goto_1
    iget-object v8, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v8, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    const/4 v8, 0x2

    if-eqz v4, :cond_2

    move v4, v8

    goto :goto_2

    :cond_2
    move v4, v6

    .line 9
    :goto_2
    invoke-static {p2, v0}, Lp/a;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v2}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    .line 10
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    const-string v2, "me"

    if-eqz v0, :cond_7

    .line 11
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 12
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    if-eqz v0, :cond_6

    .line 13
    invoke-static {}, Lcom/syu/carlink/CarLink;->I()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 14
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    if-eqz v0, :cond_5

    .line 15
    invoke-static {}, Lcom/syu/carlink/CarLink;->H()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 16
    iget-object v0, p0, Lcom/syu/carlink/CarLinkService$handleWireless$1$1;->c:Lcom/syu/carlink/CarLinkService;

    iget-object v2, v0, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    if-eqz v2, :cond_3

    const-string v3, "ssid"

    .line 17
    invoke-static {p1, v3}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "password"

    invoke-static {v1, v3}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x3

    new-array v3, v3, [I

    aput p2, v3, v6

    aput v4, v3, v7

    aput v5, v3, v8

    new-array p2, v8, [Ljava/lang/String;

    aput-object p1, p2, v6

    aput-object v1, p2, v7

    const/16 p1, 0xe1

    .line 18
    invoke-virtual {v2, p1, p2, v3}, Lh/c;->n(I[Ljava/lang/String;[I)Z

    .line 19
    :cond_3
    iget-object p1, v0, Lcom/syu/carlink/CarLinkService;->f:Landroid/os/Handler;

    .line 20
    iget-object p2, v0, Lcom/syu/carlink/CarLinkService;->l0:Lcom/syu/carlink/a;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x320

    .line 21
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 22
    :cond_4
    sget-object p1, Lcom/syu/carlink/base/a;->c:Ls/a;

    invoke-static {}, Le/b;->a()Lcom/syu/carlink/base/a;

    move-result-object p1

    new-instance p2, Lg/a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x18

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lg/a;-><init>(IIILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p1, p2}, Lcom/syu/carlink/base/a;->b(Lg/a;)V

    goto :goto_3

    .line 23
    :cond_5
    invoke-static {v2}, Lt/b;->B(Ljava/lang/String;)V

    throw v3

    .line 24
    :cond_6
    invoke-static {v2}, Lt/b;->B(Ljava/lang/String;)V

    throw v3

    :cond_7
    invoke-static {v2}, Lt/b;->B(Ljava/lang/String;)V

    throw v3

    :cond_8
    :goto_3
    return-void
.end method
