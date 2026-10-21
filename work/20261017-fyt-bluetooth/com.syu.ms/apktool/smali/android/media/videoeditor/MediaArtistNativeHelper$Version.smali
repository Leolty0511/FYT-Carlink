.class public final Landroid/media/videoeditor/MediaArtistNativeHelper$Version;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/videoeditor/MediaArtistNativeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Version"
.end annotation


# static fields
.field private static final VIDEOEDITOR_MAJOR_VERSION:I = 0x0

.field private static final VIDEOEDITOR_MINOR_VERSION:I = 0x0

.field private static final VIDEOEDITOR_REVISION_VERSION:I = 0x1


# instance fields
.field public major:I

.field public minor:I

.field public revision:I

.field public final synthetic this$0:Landroid/media/videoeditor/MediaArtistNativeHelper;


# direct methods
.method public constructor <init>(Landroid/media/videoeditor/MediaArtistNativeHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper$Version;->this$0:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getVersion()Landroid/media/videoeditor/MediaArtistNativeHelper$Version;
    .locals 2

    .line 1
    new-instance v0, Landroid/media/videoeditor/MediaArtistNativeHelper$Version;

    iget-object v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper$Version;->this$0:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-direct {v0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper$Version;-><init>(Landroid/media/videoeditor/MediaArtistNativeHelper;)V

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$Version;->major:I

    .line 3
    iput v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$Version;->minor:I

    const/4 v1, 0x1

    .line 4
    iput v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$Version;->revision:I

    return-object v0
.end method
