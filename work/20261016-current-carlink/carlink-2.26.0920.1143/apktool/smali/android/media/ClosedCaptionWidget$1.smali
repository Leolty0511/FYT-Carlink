.class Landroid/media/ClosedCaptionWidget$1;
.super Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ClosedCaptionWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/ClosedCaptionWidget;


# direct methods
.method public constructor <init>(Landroid/media/ClosedCaptionWidget;)V
    .locals 0

    iput-object p1, p0, Landroid/media/ClosedCaptionWidget$1;->this$0:Landroid/media/ClosedCaptionWidget;

    invoke-direct {p0}, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFontScaleChanged(F)V
    .locals 1

    iget-object v0, p0, Landroid/media/ClosedCaptionWidget$1;->this$0:Landroid/media/ClosedCaptionWidget;

    iget-object v0, v0, Landroid/media/ClosedCaptionWidget;->mClosedCaptionLayout:Landroid/media/ClosedCaptionWidget$ClosedCaptionLayout;

    invoke-interface {v0, p1}, Landroid/media/ClosedCaptionWidget$ClosedCaptionLayout;->setFontScale(F)V

    return-void
.end method

.method public onUserStyleChanged(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/media/ClosedCaptionWidget$1;->this$0:Landroid/media/ClosedCaptionWidget;

    .line 2
    .line 3
    invoke-static {}, Landroid/media/ClosedCaptionWidget;->access$000()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1, p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->applyStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, v0, Landroid/media/ClosedCaptionWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 12
    .line 13
    iget-object p1, p0, Landroid/media/ClosedCaptionWidget$1;->this$0:Landroid/media/ClosedCaptionWidget;

    .line 14
    .line 15
    iget-object v0, p1, Landroid/media/ClosedCaptionWidget;->mClosedCaptionLayout:Landroid/media/ClosedCaptionWidget$ClosedCaptionLayout;

    .line 16
    .line 17
    iget-object p1, p1, Landroid/media/ClosedCaptionWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Landroid/media/ClosedCaptionWidget$ClosedCaptionLayout;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
