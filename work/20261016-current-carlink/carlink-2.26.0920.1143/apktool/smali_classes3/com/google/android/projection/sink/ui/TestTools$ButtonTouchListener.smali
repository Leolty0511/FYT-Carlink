.class Lcom/google/android/projection/sink/ui/TestTools$ButtonTouchListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/sink/ui/TestTools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ButtonTouchListener"
.end annotation


# instance fields
.field private final mKeyCode:I

.field final synthetic this$0:Lcom/google/android/projection/sink/ui/TestTools;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/ui/TestTools;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/projection/sink/ui/TestTools$ButtonTouchListener;->this$0:Lcom/google/android/projection/sink/ui/TestTools;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Lcom/google/android/projection/sink/ui/TestTools$ButtonTouchListener;->mKeyCode:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p2, 0x1

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    if-eq p1, p2, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    return p1

    .line 12
    :cond_0
    new-instance v0, Landroid/view/KeyEvent;

    .line 13
    .line 14
    iget v1, p0, Lcom/google/android/projection/sink/ui/TestTools$ButtonTouchListener;->mKeyCode:I

    .line 15
    .line 16
    invoke-direct {v0, p1, v1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/google/android/projection/sink/ui/TestTools$ButtonTouchListener;->this$0:Lcom/google/android/projection/sink/ui/TestTools;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/google/android/projection/sink/ui/TestTools;->access$100(Lcom/google/android/projection/sink/ui/TestTools;)Lcom/google/android/projection/sink/GalIntegration;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object p1, p1, Lcom/google/android/projection/sink/GalIntegration;->mainDisplayInputSource:Lcom/google/android/projection/protocol/InputSource;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lcom/google/android/projection/protocol/InputSource;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 28
    .line 29
    .line 30
    return p2
.end method
