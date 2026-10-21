.class Lcom/google/android/projection/sink/GalIntegration$DefaultInputInjector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/protocol/InputSource$InputInjector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/sink/GalIntegration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DefaultInputInjector"
.end annotation


# instance fields
.field private final displayIndex:I

.field final synthetic this$0:Lcom/google/android/projection/sink/GalIntegration;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/GalIntegration;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/projection/sink/GalIntegration$DefaultInputInjector;->this$0:Lcom/google/android/projection/sink/GalIntegration;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Lcom/google/android/projection/sink/GalIntegration$DefaultInputInjector;->displayIndex:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onKeyEvent(Landroid/view/KeyEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/sink/GalIntegration$DefaultInputInjector;->this$0:Lcom/google/android/projection/sink/GalIntegration;

    invoke-static {v0}, Lcom/google/android/projection/sink/GalIntegration;->access$000(Lcom/google/android/projection/sink/GalIntegration;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/sink/GalIntegration$DefaultInputInjector;->this$0:Lcom/google/android/projection/sink/GalIntegration;

    invoke-static {v0}, Lcom/google/android/projection/sink/GalIntegration;->access$000(Lcom/google/android/projection/sink/GalIntegration;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public onRelativeEvent(II)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/sink/GalIntegration$DefaultInputInjector;->this$0:Lcom/google/android/projection/sink/GalIntegration;

    iget-object v0, v0, Lcom/google/android/projection/sink/GalIntegration;->displayIdDisplayMap:Ljava/util/Map;

    iget v1, p0, Lcom/google/android/projection/sink/GalIntegration$DefaultInputInjector;->displayIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/sink/GalIntegration$Display;

    invoke-virtual {v0}, Lcom/google/android/projection/sink/GalIntegration$Display;->getInputSource()Lcom/google/android/projection/protocol/InputSource;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/projection/protocol/InputSource;->sendRelativeEvent(II)Z

    return-void
.end method
