.class Landroid/net/wifi/WifiConfigStore$WpaConfigFileObserver;
.super Landroid/os/FileObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfigStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WpaConfigFileObserver"
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/net/wifi/WifiConfigStore;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiConfigStore;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroid/net/wifi/WifiConfigStore$WpaConfigFileObserver;->this$0:Landroid/net/wifi/WifiConfigStore;

    const-string p1, "/data/misc/wifi/wpa_supplicant.conf"

    const/16 v0, 0x8

    .line 2
    invoke-direct {p0, p1, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 0

    const/16 p2, 0x8

    if-ne p1, p2, :cond_0

    .line 1
    new-instance p1, Ljava/io/File;

    const-string p2, "/data/misc/wifi/wpa_supplicant.conf"

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
