.class Lcom/google/android/projection/sink/video/ProjectionRenderer$PreviewConfigure;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/sink/video/ProjectionRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PreviewConfigure"
.end annotation


# instance fields
.field previewSize:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/google/android/projection/sink/video/ProjectionRenderer;

.field viewport:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/video/ProjectionRenderer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer$PreviewConfigure;->this$0:Lcom/google/android/projection/sink/video/ProjectionRenderer;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer$PreviewConfigure;->previewSize:Landroid/graphics/Rect;

    .line 8
    .line 9
    iput-object p1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer$PreviewConfigure;->viewport:Landroid/graphics/Rect;

    .line 10
    .line 11
    return-void
.end method
