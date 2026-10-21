.class Landroid/media/videoeditor/MediaItem$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/videoeditor/MediaItem$GetThumbnailListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/videoeditor/MediaItem;->getThumbnailList(IIJJI)[Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/media/videoeditor/MediaItem;

.field public final synthetic val$bitmaps:[Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/media/videoeditor/MediaItem;[Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/media/videoeditor/MediaItem$1;->this$0:Landroid/media/videoeditor/MediaItem;

    iput-object p2, p0, Landroid/media/videoeditor/MediaItem$1;->val$bitmaps:[Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThumbnail(Landroid/graphics/Bitmap;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem$1;->val$bitmaps:[Landroid/graphics/Bitmap;

    aput-object p1, v0, p2

    return-void
.end method
