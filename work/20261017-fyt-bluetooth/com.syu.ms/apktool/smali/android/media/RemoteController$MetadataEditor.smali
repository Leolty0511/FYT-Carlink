.class public Landroid/media/RemoteController$MetadataEditor;
.super Landroid/media/MediaMetadataEditor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/RemoteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MetadataEditor"
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/media/RemoteController;


# direct methods
.method public constructor <init>(Landroid/media/RemoteController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/media/RemoteController$MetadataEditor;->this$0:Landroid/media/RemoteController;

    invoke-direct {p0}, Landroid/media/MediaMetadataEditor;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/media/RemoteController;Landroid/os/Bundle;J)V
    .locals 0

    .line 2
    iput-object p1, p0, Landroid/media/RemoteController$MetadataEditor;->this$0:Landroid/media/RemoteController;

    invoke-direct {p0}, Landroid/media/MediaMetadataEditor;-><init>()V

    .line 3
    iput-object p2, p0, Landroid/media/MediaMetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    .line 4
    iput-wide p3, p0, Landroid/media/MediaMetadataEditor;->mEditableKeys:J

    const/16 p1, 0x64

    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    iput-object p2, p0, Landroid/media/MediaMetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_0

    .line 6
    invoke-direct {p0, p1}, Landroid/media/RemoteController$MetadataEditor;->cleanupBitmapFromBundle(I)V

    :cond_0
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Landroid/media/MediaMetadataEditor;->mMetadataChanged:Z

    .line 8
    iput-boolean p1, p0, Landroid/media/MediaMetadataEditor;->mArtworkChanged:Z

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Landroid/media/MediaMetadataEditor;->mApplied:Z

    return-void
.end method

.method public static synthetic access$1200(Landroid/media/RemoteController$MetadataEditor;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/media/RemoteController$MetadataEditor;->cleanupBitmapFromBundle(I)V

    return-void
.end method

.method private cleanupBitmapFromBundle(I)V
    .locals 2

    .line 1
    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Landroid/media/MediaMetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized apply()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Landroid/media/MediaMetadataEditor;->mMetadataChanged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/media/RemoteController;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 4
    :try_start_2
    iget-object v1, p0, Landroid/media/RemoteController$MetadataEditor;->this$0:Landroid/media/RemoteController;

    invoke-static {v1}, Landroid/media/RemoteController;->access$100(Landroid/media/RemoteController;)I

    move-result v1

    .line 5
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6
    :try_start_3
    invoke-static {}, Landroid/media/RemoteController;->access$200()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 7
    :try_start_4
    iget-object v2, p0, Landroid/media/MediaMetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    const v3, 0x10000001

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 8
    invoke-virtual {p0, v3, v2}, Landroid/media/MediaMetadataEditor;->getObject(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/Rating;

    .line 9
    iget-object v4, p0, Landroid/media/RemoteController$MetadataEditor;->this$0:Landroid/media/RemoteController;

    invoke-static {v4}, Landroid/media/RemoteController;->access$300(Landroid/media/RemoteController;)Landroid/media/AudioManager;

    move-result-object v4

    invoke-virtual {v4, v1, v3, v2}, Landroid/media/AudioManager;->updateRemoteControlClientMetadata(IILandroid/media/Rating;)V

    goto :goto_0

    :cond_1
    const-string v1, "RemoteController"

    const-string v2, "no metadata to apply"

    .line 10
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v1, 0x0

    .line 11
    iput-boolean v1, p0, Landroid/media/MediaMetadataEditor;->mApplied:Z

    .line 12
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 13
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    .line 14
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_1
    move-exception v1

    .line 15
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method
