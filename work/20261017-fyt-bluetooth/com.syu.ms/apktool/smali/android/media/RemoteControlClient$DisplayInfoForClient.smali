.class Landroid/media/RemoteControlClient$DisplayInfoForClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/RemoteControlClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DisplayInfoForClient"
.end annotation


# instance fields
.field private mArtworkExpectedHeight:I

.field private mArtworkExpectedWidth:I

.field private mEnabled:Z

.field private mRcDisplay:Landroid/media/IRemoteControlDisplay;

.field private mWantsPositionSync:Z

.field public final synthetic this$0:Landroid/media/RemoteControlClient;


# direct methods
.method public constructor <init>(Landroid/media/RemoteControlClient;Landroid/media/IRemoteControlDisplay;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/media/RemoteControlClient$DisplayInfoForClient;->this$0:Landroid/media/RemoteControlClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Landroid/media/RemoteControlClient$DisplayInfoForClient;->mWantsPositionSync:Z

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Landroid/media/RemoteControlClient$DisplayInfoForClient;->mEnabled:Z

    .line 4
    iput-object p2, p0, Landroid/media/RemoteControlClient$DisplayInfoForClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    .line 5
    iput p3, p0, Landroid/media/RemoteControlClient$DisplayInfoForClient;->mArtworkExpectedWidth:I

    .line 6
    iput p4, p0, Landroid/media/RemoteControlClient$DisplayInfoForClient;->mArtworkExpectedHeight:I

    return-void
.end method

.method public static synthetic access$2000(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/media/RemoteControlClient$DisplayInfoForClient;->mEnabled:Z

    return p0
.end method

.method public static synthetic access$2002(Landroid/media/RemoteControlClient$DisplayInfoForClient;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/media/RemoteControlClient$DisplayInfoForClient;->mEnabled:Z

    return p1
.end method

.method public static synthetic access$2100(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Landroid/media/IRemoteControlDisplay;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/media/RemoteControlClient$DisplayInfoForClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    return-object p0
.end method

.method public static synthetic access$2200(Landroid/media/RemoteControlClient$DisplayInfoForClient;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/media/RemoteControlClient$DisplayInfoForClient;->mArtworkExpectedWidth:I

    return p0
.end method

.method public static synthetic access$2202(Landroid/media/RemoteControlClient$DisplayInfoForClient;I)I
    .locals 0

    .line 1
    iput p1, p0, Landroid/media/RemoteControlClient$DisplayInfoForClient;->mArtworkExpectedWidth:I

    return p1
.end method

.method public static synthetic access$2300(Landroid/media/RemoteControlClient$DisplayInfoForClient;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/media/RemoteControlClient$DisplayInfoForClient;->mArtworkExpectedHeight:I

    return p0
.end method

.method public static synthetic access$2302(Landroid/media/RemoteControlClient$DisplayInfoForClient;I)I
    .locals 0

    .line 1
    iput p1, p0, Landroid/media/RemoteControlClient$DisplayInfoForClient;->mArtworkExpectedHeight:I

    return p1
.end method

.method public static synthetic access$2400(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/media/RemoteControlClient$DisplayInfoForClient;->mWantsPositionSync:Z

    return p0
.end method

.method public static synthetic access$2402(Landroid/media/RemoteControlClient$DisplayInfoForClient;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/media/RemoteControlClient$DisplayInfoForClient;->mWantsPositionSync:Z

    return p1
.end method
