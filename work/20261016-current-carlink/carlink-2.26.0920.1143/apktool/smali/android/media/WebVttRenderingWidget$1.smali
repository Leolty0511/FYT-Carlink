.class Landroid/media/WebVttRenderingWidget$1;
.super Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/WebVttRenderingWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/WebVttRenderingWidget;


# direct methods
.method public constructor <init>(Landroid/media/WebVttRenderingWidget;)V
    .locals 0

    iput-object p1, p0, Landroid/media/WebVttRenderingWidget$1;->this$0:Landroid/media/WebVttRenderingWidget;

    invoke-direct {p0}, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFontScaleChanged(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/media/WebVttRenderingWidget$1;->this$0:Landroid/media/WebVttRenderingWidget;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    int-to-float v0, v0

    .line 8
    mul-float/2addr p1, v0

    .line 9
    const v0, 0x3d5a511a    # 0.0533f

    .line 10
    .line 11
    .line 12
    mul-float/2addr p1, v0

    .line 13
    iget-object v0, p0, Landroid/media/WebVttRenderingWidget$1;->this$0:Landroid/media/WebVttRenderingWidget;

    .line 14
    .line 15
    invoke-static {v0}, Landroid/media/WebVttRenderingWidget;->access$100(Landroid/media/WebVttRenderingWidget;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v0, v1, p1}, Landroid/media/WebVttRenderingWidget;->access$200(Landroid/media/WebVttRenderingWidget;Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onUserStyleChanged(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V
    .locals 2

    iget-object v0, p0, Landroid/media/WebVttRenderingWidget$1;->this$0:Landroid/media/WebVttRenderingWidget;

    invoke-static {v0}, Landroid/media/WebVttRenderingWidget;->access$300(Landroid/media/WebVttRenderingWidget;)F

    move-result v1

    invoke-static {v0, p1, v1}, Landroid/media/WebVttRenderingWidget;->access$200(Landroid/media/WebVttRenderingWidget;Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    return-void
.end method
