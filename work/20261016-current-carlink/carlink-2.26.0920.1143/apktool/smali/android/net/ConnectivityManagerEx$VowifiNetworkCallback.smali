.class public Landroid/net/ConnectivityManagerEx$VowifiNetworkCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ConnectivityManagerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VowifiNetworkCallback"
.end annotation


# instance fields
.field private networkRequest:Landroid/net/NetworkRequest;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Landroid/net/ConnectivityManagerEx$VowifiNetworkCallback;)Landroid/net/NetworkRequest;
    .locals 0

    iget-object p0, p0, Landroid/net/ConnectivityManagerEx$VowifiNetworkCallback;->networkRequest:Landroid/net/NetworkRequest;

    return-object p0
.end method

.method public static synthetic access$002(Landroid/net/ConnectivityManagerEx$VowifiNetworkCallback;Landroid/net/NetworkRequest;)Landroid/net/NetworkRequest;
    .locals 0

    iput-object p1, p0, Landroid/net/ConnectivityManagerEx$VowifiNetworkCallback;->networkRequest:Landroid/net/NetworkRequest;

    return-object p1
.end method


# virtual methods
.method public onAvailable(Landroid/net/VowifiNetwork;)V
    .locals 0

    return-void
.end method

.method public onLost(Landroid/net/VowifiNetwork;)V
    .locals 0

    return-void
.end method

.method public onUnavailable()V
    .locals 0

    return-void
.end method
