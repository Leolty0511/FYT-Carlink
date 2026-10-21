.class Landroid/net/VpnService$Callback;
.super Landroid/os/Binder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/VpnService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Callback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/VpnService;


# direct methods
.method private constructor <init>(Landroid/net/VpnService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/VpnService$Callback;->this$0:Landroid/net/VpnService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/net/VpnService;Landroid/net/VpnService$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/net/VpnService$Callback;-><init>(Landroid/net/VpnService;)V

    return-void
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    const p2, 0xffffff

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Landroid/net/VpnService$Callback;->this$0:Landroid/net/VpnService;

    invoke-virtual {p1}, Landroid/net/VpnService;->onRevoke()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
