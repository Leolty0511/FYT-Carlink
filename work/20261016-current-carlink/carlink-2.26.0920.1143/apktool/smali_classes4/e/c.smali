.class public final synthetic Le/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/OnNmeaMessageListener;
.implements Landroid/location/GpsStatus$NmeaListener;


# instance fields
.field public final synthetic a:Lcom/syu/carlink/CarLinkService;


# direct methods
.method public synthetic constructor <init>(Lcom/syu/carlink/CarLinkService;)V
    .locals 0

    iput-object p1, p0, Le/c;->a:Lcom/syu/carlink/CarLinkService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNmeaMessage(Ljava/lang/String;J)V
    .locals 3

    .line 1
    sget-object p2, Lcom/syu/carlink/CarLinkService;->n0:Ljava/util/ArrayList;

    .line 2
    .line 3
    const-string p2, "this$0"

    .line 4
    .line 5
    iget-object p3, p0, Le/c;->a:Lcom/syu/carlink/CarLinkService;

    .line 6
    .line 7
    invoke-static {p3, p2}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p2, p3, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    const/4 p3, 0x0

    .line 15
    new-array v0, p3, [I

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    new-array v1, v1, [Ljava/lang/String;

    .line 19
    .line 20
    const-string v2, "msg"

    .line 21
    .line 22
    invoke-static {p1, v2}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    aput-object p1, v1, p3

    .line 26
    .line 27
    const/16 p1, 0xe4

    .line 28
    .line 29
    invoke-virtual {p2, p1, v1, v0}, Lh/c;->n(I[Ljava/lang/String;[I)Z

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public final onNmeaReceived(JLjava/lang/String;)V
    .locals 3

    .line 1
    sget-object p1, Lcom/syu/carlink/CarLinkService;->n0:Ljava/util/ArrayList;

    .line 2
    .line 3
    const-string p1, "this$0"

    .line 4
    .line 5
    iget-object p2, p0, Le/c;->a:Lcom/syu/carlink/CarLinkService;

    .line 6
    .line 7
    invoke-static {p2, p1}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p2, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const/4 p2, 0x0

    .line 15
    new-array v0, p2, [I

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    new-array v1, v1, [Ljava/lang/String;

    .line 19
    .line 20
    const-string v2, "nmea"

    .line 21
    .line 22
    invoke-static {p3, v2}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    aput-object p3, v1, p2

    .line 26
    .line 27
    const/16 p2, 0xe4

    .line 28
    .line 29
    invoke-virtual {p1, p2, v1, v0}, Lh/c;->n(I[Ljava/lang/String;[I)Z

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method
