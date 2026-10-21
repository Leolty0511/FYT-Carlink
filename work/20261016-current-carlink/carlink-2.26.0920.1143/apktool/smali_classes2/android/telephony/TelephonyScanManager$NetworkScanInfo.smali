.class Landroid/telephony/TelephonyScanManager$NetworkScanInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/TelephonyScanManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkScanInfo"
.end annotation


# instance fields
.field private final mCallback:Landroid/telephony/TelephonyScanManager$NetworkScanCallback;

.field private final mRequest:Landroid/telephony/NetworkScanRequest;


# direct methods
.method public constructor <init>(Landroid/telephony/NetworkScanRequest;Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/telephony/TelephonyScanManager$NetworkScanInfo;->mRequest:Landroid/telephony/NetworkScanRequest;

    .line 5
    .line 6
    iput-object p2, p0, Landroid/telephony/TelephonyScanManager$NetworkScanInfo;->mCallback:Landroid/telephony/TelephonyScanManager$NetworkScanCallback;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic access$100(Landroid/telephony/TelephonyScanManager$NetworkScanInfo;)Landroid/telephony/TelephonyScanManager$NetworkScanCallback;
    .locals 0

    iget-object p0, p0, Landroid/telephony/TelephonyScanManager$NetworkScanInfo;->mCallback:Landroid/telephony/TelephonyScanManager$NetworkScanCallback;

    return-object p0
.end method
