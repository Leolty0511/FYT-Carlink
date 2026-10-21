.class Landroid/media/MediaScannerConnection$1;
.super Landroid/media/IMediaScannerListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaScannerConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaScannerConnection;


# direct methods
.method public constructor <init>(Landroid/media/MediaScannerConnection;)V
    .locals 0

    iput-object p1, p0, Landroid/media/MediaScannerConnection$1;->this$0:Landroid/media/MediaScannerConnection;

    invoke-direct {p0}, Landroid/media/IMediaScannerListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public scanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/MediaScannerConnection$1;->this$0:Landroid/media/MediaScannerConnection;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/media/MediaScannerConnection;->access$000(Landroid/media/MediaScannerConnection;)Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0, p1, p2}, Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;->onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
