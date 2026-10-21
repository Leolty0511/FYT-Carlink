.class public abstract Landroid/nfc/cardemulation/HostApduService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/cardemulation/HostApduService$MsgHandler;
    }
.end annotation


# static fields
.field public static final DEACTIVATION_DESELECTED:I = 0x1

.field public static final DEACTIVATION_LINK_LOSS:I = 0x0

.field public static final KEY_DATA:Ljava/lang/String; = "data"

.field public static final MSG_COMMAND_APDU:I = 0x0

.field public static final MSG_DEACTIVATED:I = 0x2

.field public static final MSG_RESPONSE_APDU:I = 0x1

.field public static final MSG_UNHANDLED:I = 0x3

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.nfc.cardemulation.action.HOST_APDU_SERVICE"

.field public static final SERVICE_META_DATA:Ljava/lang/String; = "android.nfc.cardemulation.host_apdu_service"

.field static final TAG:Ljava/lang/String; = "ApduService"


# instance fields
.field final mMessenger:Landroid/os/Messenger;

.field mNfcService:Landroid/os/Messenger;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroid/nfc/cardemulation/HostApduService;->mNfcService:Landroid/os/Messenger;

    .line 6
    .line 7
    new-instance v0, Landroid/os/Messenger;

    .line 8
    .line 9
    new-instance v1, Landroid/nfc/cardemulation/HostApduService$MsgHandler;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Landroid/nfc/cardemulation/HostApduService$MsgHandler;-><init>(Landroid/nfc/cardemulation/HostApduService;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Landroid/nfc/cardemulation/HostApduService;->mMessenger:Landroid/os/Messenger;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final notifyUnhandled()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x3

    .line 3
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :try_start_0
    iget-object v1, p0, Landroid/nfc/cardemulation/HostApduService;->mMessenger:Landroid/os/Messenger;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    const-string v0, "TAG"

    .line 14
    .line 15
    const-string v1, "Local messenger has died."

    .line 16
    .line 17
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p1, p0, Landroid/nfc/cardemulation/HostApduService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public abstract onDeactivated(I)V
.end method

.method public abstract processCommandApdu([BLandroid/os/Bundle;)[B
.end method

.method public final sendResponseApdu([B)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/os/Bundle;

    .line 8
    .line 9
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "data"

    .line 13
    .line 14
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 18
    .line 19
    .line 20
    :try_start_0
    iget-object p1, p0, Landroid/nfc/cardemulation/HostApduService;->mMessenger:Landroid/os/Messenger;

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    const-string p1, "TAG"

    .line 27
    .line 28
    const-string v0, "Local messenger has died."

    .line 29
    .line 30
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method
