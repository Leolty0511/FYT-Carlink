.class Landroid/media/videoeditor/MediaArtistNativeHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/videoeditor/MediaItem$GetThumbnailListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/videoeditor/MediaArtistNativeHelper;->getPixels(Ljava/lang/String;IIJI)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/media/videoeditor/MediaArtistNativeHelper;

.field public final synthetic val$result:[Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/media/videoeditor/MediaArtistNativeHelper;[Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper$1;->this$0:Landroid/media/videoeditor/MediaArtistNativeHelper;

    iput-object p2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper$1;->val$result:[Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThumbnail(Landroid/graphics/Bitmap;I)V
    .locals 1

    .line 1
    iget-object p2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper$1;->val$result:[Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    return-void
.end method
