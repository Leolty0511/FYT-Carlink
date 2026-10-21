.class Landroid/media/MediaFocusControl$RemotePlaybackState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaFocusControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RemotePlaybackState"
.end annotation


# instance fields
.field public mRccId:I

.field public mVolume:I

.field public mVolumeHandling:I

.field public mVolumeMax:I

.field public final synthetic this$0:Landroid/media/MediaFocusControl;


# direct methods
.method private constructor <init>(Landroid/media/MediaFocusControl;III)V
    .locals 0

    .line 2
    iput-object p1, p0, Landroid/media/MediaFocusControl$RemotePlaybackState;->this$0:Landroid/media/MediaFocusControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p2, p0, Landroid/media/MediaFocusControl$RemotePlaybackState;->mRccId:I

    .line 4
    iput p3, p0, Landroid/media/MediaFocusControl$RemotePlaybackState;->mVolume:I

    .line 5
    iput p4, p0, Landroid/media/MediaFocusControl$RemotePlaybackState;->mVolumeMax:I

    const/4 p1, 0x1

    .line 6
    iput p1, p0, Landroid/media/MediaFocusControl$RemotePlaybackState;->mVolumeHandling:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/media/MediaFocusControl;IIILandroid/media/MediaFocusControl$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/MediaFocusControl$RemotePlaybackState;-><init>(Landroid/media/MediaFocusControl;III)V

    return-void
.end method
