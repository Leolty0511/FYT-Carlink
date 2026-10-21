.class public Landroid/net/wifi/StateChangeResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public BSSID:Ljava/lang/String;

.field public networkId:I

.field public state:Landroid/net/wifi/SupplicantState;

.field public wifiSsid:Landroid/net/wifi/WifiSsid;


# direct methods
.method public constructor <init>(ILandroid/net/wifi/WifiSsid;Ljava/lang/String;Landroid/net/wifi/SupplicantState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p4, p0, Landroid/net/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    .line 3
    iput-object p2, p0, Landroid/net/wifi/StateChangeResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    .line 4
    iput-object p3, p0, Landroid/net/wifi/StateChangeResult;->BSSID:Ljava/lang/String;

    .line 5
    iput p1, p0, Landroid/net/wifi/StateChangeResult;->networkId:I

    return-void
.end method
